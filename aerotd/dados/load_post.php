<?php 
//ini_set('display_errors', 0 );
//error_reporting(0);

require('../controler/banco.php');


echo '<table class="table">
					<thead>
						<tr>
							<th scope="col">Titulo</th>
							<th scope="col">Ano</th>
							<th scope="col">Produtora</th>
							<th scope="col">Legendas</th>
						</tr>
					</thead>
					<tbody id="corpo_tabela">';
					
$sql = mysqli_query($conexao,"select A.id_dvd, A.titulo, A.ano, B.nome from dvds as A join produtoras as B order by A.titulo asc") or die("Erro");
while($dados=mysqli_fetch_array($sql)){
	echo '<tr>
		<td scope="row">'.$dados['titulo'].'</td>
		<td scope="row">'.$dados['ano'].'</td>
		<td scope="row">'.$dados['nome'].'</td>
		<td scope="row"><a href="#" onclick="printer(\''.$dados['id_dvd'].'\');">Legendas</a></td>
	</tr>';
}
					
echo '</tbody>
</table>';
?>