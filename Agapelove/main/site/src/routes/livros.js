var express = require("express");
var router = express.Router();

var livroController = require("../controllers/livroController");

router.get("/", function (req, res) {
    livroController.testar(req, res);
});

router.get("/listar", function (req, res) {
    livroController.listar(req, res);
});

router.get("/pesquisar/:descricao", function (req, res) {
    livroController.pesquisarDescricao(req, res);
});

router.post("/publicar/:idUsuario", function (req, res) {
    livroController.publicar(req, res);
});

router.put("/editar/:idAviso", function (req, res) {
    livroController.editar(req, res);
});

router.delete("/deletar/:idAviso", function (req, res) {
    livroController.deletar(req, res);
});

module.exports = router;