const ingressoModel = require("../models/ingressoModel");

const getAllIngressos = async (req, res) => {
    try {
        const ingressos = await ingressoModel.getIngressos();
        res.json(ingressos);
    } catch (error) {
        res.status(404).json({ message: "Erro ao buscar ingressos." });
    }
};

const getIngressoById = async (req, res) => {
    try {
        const ingressos = await ingressoModel.getIngressoById(req.params.id);
        if (!ingressos) {
            res.status(404).json({ message: "Ingresso não encontrado." });
        }
        res.json(ingressos);
    } catch (error) {
        res.status(404).json({ message: "Erro ao buscar ingresso." });
    }
}

const addIngresso = async (req, res) => {
    try {
        const { evento, local_evento, data_evento, categoria, preco_ingresso, quantidade_disponivel } = req.body;
        const newIngresso = await ingressoModel.addIngresso(evento, local_evento, data_evento, categoria, preco_ingresso, quantidade_disponivel);
        res.status(201).json(newIngresso);
    } catch (error) {
        if (error.code === "23505") {
            return res.status(400).json({ message: "Ingresso já cadastrado." });
        }
        res.status(404).json({ message: "Erro ao adicionar ingresso." });
    }
}

const updateIngresso = async (req, res) => {
    try {
        const { quantidade_disponivel } = req.body;
        const updatedIngresso = await ingressoModel.updateIngresso(req.params.id, quantidade_disponivel); 
        if (!updatedIngresso) {
            res.status(404).json({ message: "Ingresso não encontrado." });
        } else {
            res.json(updatedIngresso);
        }
    } catch (error) {
        res.status(404).json({ message: "Erro ao atualizar ingresso." });
    }
};


const deleteIngresso = async (req, res) => {
    try {
        const mensagem = await ingressoModel.deleteIngresso(req.params.id);
        res.json(mensagem);
    } catch (error) {
        res.status(404).json({ message: "Erro ao deletar ingresso" });
    }
}

module.exports = { getAllIngressos, getIngressoById, addIngresso, updateIngresso, deleteIngresso };