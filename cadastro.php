<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nossas Receitas - Cadastro</title>
    <link rel="stylesheet" href="./css/styles.css">
</head>
<body>
    <div class="container">
        <h1>Nossas Receitas</h1>
        <div class="form-container">
            <h2>Cadastro</h2>
            <form>
                <label for="email">e-mail</label>
                <input type="email" id="email" required>

                <label for="senha">senha</label>
                <input type="password" id="senha" required>

                <label for="confirma-senha">confirma senha</label>
                <input type="password" id="confirma-senha" required>

                <label>
                    <input type="checkbox" id="administrador"> Administrador
                </label>

                <label for="cargo">Cargo</label>
                <select id="cargo">
                    <option value="chefe-cozinha" selected>Chefe de Cozinha</option>
                    <option value="ajudante">Ajudante</option>
                </select>
                
                <button type="submit">Cadastrar</button>
            </form>
        </div>
    </div>
</body>
</html>
