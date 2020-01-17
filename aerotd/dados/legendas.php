<?php

echo '<div id="fechar" align=right><a href="javascript:fechar();">FECHAR</a></div> ';

require('../controler/banco.php');

echo '<table>
	<tbody>';

$ID = $_POST['id'];
$sql = mysqli_query($conexao,"SELECT B.lingua FROM dvds_legendas as A join legendas as B on (A.legendas_id = B.id_legenda) WHERE A.dvds_id = '".$ID."' ") or die("Erro");
while($dados=mysqli_fetch_array($sql)){
		echo '
			<tr>
				<td>Idioma:</td>
				<td>'.$dados['lingua'].'</td>
			</tr>';
}

echo '
		</tbody>
	</table>';
?>