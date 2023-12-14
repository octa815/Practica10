<?php
    include('./controller/sesion.php');
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Álbumnes de fotos Sunegami</title>
    <meta name="description" content="Crea tus propios albumnes de fotos"/>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="./imagenes/sunegamilogo.png">
    <link rel="stylesheet" href="estilo.css"media="screen" title="Modo principal">
    
   <!--Letra accesible-->
   <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link href="https://fonts.googleapis.com/css2?family=Atkinson+Hyperlegible&display=swap" rel="stylesheet">
   
   <!-- Modos de la página -->
   <link rel="alternate stylesheet" href="estilo-oscuro.css" title="Modo oscuro">
   <link rel="alternate stylesheet" href="estilo-grande.css" title="Modo grande">
   <link rel="alternate stylesheet" href="estilo-accesible.css" title="Modo accesible">
   <link rel="alternate stylesheet" href="alto-contraste.css" title="Modo alto contraste">
   <link rel="alternate stylesheet" href="estilo-grande+vision.css" title="Modo grande+vision">
    <link rel="stylesheet" href ="impresion.css" media="print">
    <link rel="stylesheet" href ="fontello/css/fontello.css">
    <?php
    $estiloCookie = isset($_COOKIE['estilo']) ? $_COOKIE['estilo'] : '';
    if (!empty($estiloCookie)) {
        echo '<link rel="stylesheet" type="text/css" href="' . $estiloCookie . '" title="Modo principal">';
    } else {
        echo '<link rel="stylesheet" type="text/css" href="estilo.css" title="Modo principal">';
    }
    ?>
<?php
    include('./model/conexion.php');
    include('./model/index.php');
?>
    <script src="javas.js"></script>
    <title>Página Inicio-SUNEGAMI</title>
</head>
<body>
    <header>
        <a href="./"><img src="./imagenes/sunegamilogo.png" alt="logo"></a>
        <form id="botbus" action="resultado" method="get">
            <button type="submit" class="icon-search" >
            </button>
            <input type="search" class="busqueda" name="consulta">  
        </form>
        <aside>
        <?php
        include('./model/usuario.php');
        if($row = mysqli_fetch_assoc($usua)){
        echo <<<hereDOC
            <figure>
                <button class="mipanel" onclick=openNav()><img src="{$row['Foto']}" alt="user" id="user"></button>
            </figure> 
            <aside id="panel" class="lateral">
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
                <figure>
                    <img src="{$row['Foto']}" alt="usu" id="usuario">
hereDOC;
}
?>
                    <figcaption class="icon-user-circle-o">Usuario: <?=$_COOKIE["usuario"];?></figcaption>
                
<!--************************************************************************************-->                 
<?php
    if (isset($_SESSION['primer_acceso'])) {
        echo <<<hereDOC
            <li><p>$mensaje</p></li>
        hereDOC;
    }
    echo "<p>$saludo $usu</p>"
?>
<!--************************************************************************************-->
                </figure>

        <a href="datos?nomUsuario='<?=$_COOKIE['usuario'];?>'" class="icon-doc-text">Mis datos</a>

        <a href="albumes" class="icon-folder-open-empty-1">Mis álbumes</a>
        <a href="crear_album" class="icon-folder-add">Crear álbum</a>
        <a href="anyadirFoto" class="icon-picture">Añadir foto</a>
        <a href="solicitar_album" class="icon-edit">Solicitar álbum</a>
        <a href="configurar" class="icon-feather">Configurar</a>
        <a href="?borrar" class="icon-trash-empty">Darme de baja</a>
        <a href="?logout" class="icon-logout">Cerrar sesión</a>

<?php

    if (isset($_GET['borrar'])) {
        // Verifica si el usuario está autenticado
        if (isset($_COOKIE['usuario'])) {
            // Realiza la eliminación del usuario en la base de datos
            $usuario_a_eliminar = $_COOKIE['usuario'];

            // Añade tu código para eliminar al usuario de la base de datos
            $borra = mysqli_query($connect, "DELETE FROM usuarios WHERE NomUsuario = '$usuario_a_eliminar'");
            
            if (!$borra) {
                die("Error al ejecutar la consulta: " . mysqli_error($connect));
            }

            // Cierra la sesión después de eliminar el usuario
            session_destroy();
            setcookie("usuario", "", time() - 3600);
            setcookie("psw", "", time() - 3600);
            setcookie("ultima_visita", "", time() - 3600);
            setcookie("estilo", "", time() - 3600);

            // Redirige a una página de confirmación o a donde desees
            header('Location: ./');
            exit();
        }
    }
?>


<?php
    // Verificar si se ha hecho clic en el enlace de cerrar sesión
    if (isset($_GET['logout'])) {
        session_destroy();
        // Eliminar las cookies
        setcookie("usuario", "", time() - 3600);
        setcookie("psw", "", time() - 3600);
        setcookie("ultima_visita", "", time() - 3600);
        setcookie("estilo", "", time() - 3600);


        // Redirigir a la página de inicio o a donde desees después de cerrar sesión
        header('Location: ./');
        exit();
    }
?>
        <aside class="botoncillo">
            <a class="icon-moon">Claro/oscuro</a>
                <aside class="darkbot">
                <label class="switch">
                    <input type="checkbox" onclick="oscuro()">
                    <span class="slider round"></span>
                </label> 
            </aside> 
        </aside>
        <aside class="botoncillo">
            <a class="icon-fontsize">Tamaño</a>
            <aside class="darkbot">
                <label class="switch">
                    <input type="checkbox" onclick="grande()">
                    <span class="slider round"></span>
                </label> 
            </aside> 
        </aside>
    </aside>             
</aside> 
<nav id="menu"> 
    <label for="chkMenu">&equiv;</label>
    <input type="checkbox" id="chkMenu">
    <ul>
        <li><a href="./" class="icon-home"><span>Inicio</span></a></li>
        <li><a href="buscar" class="icon-search"><span>Buscar</span></a></li>
        <li><a href="solicitar_album" class="icon-doc-add"><span>Solictar álbum</span></a></li>
        <li><a href="?logout" class="icon-logout"><span>Cerrar sesión</span></a></li>
<!--************************************************************************************-->
<?php
    if (!isset($_SESSION['primer'])) {
        echo <<<hereDOC
        <li><p>$mensaje</p></li>
        hereDOC;
        $_SESSION['primer'] = false;
    }
?>  
<!--************************************************************************************-->
        </ul>   
    </nav>   
</header>