const express = require("express");
const router = express.Router();
const ingressoController = require("../controllers/ingressoController");

router.get("/ingressos", ingressoController.getAllIngressos);
router.post("/ingressos", ingressoController.addIngresso);
router.put("/ingressos/:id", ingressoController.updateIngresso);
router.get("/ingressos/:id", ingressoController.getIngressoById);
router.delete("/ingressos/:id", ingressoController.deleteIngresso);

module.exports = router;