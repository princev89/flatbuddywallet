import { asyncHandler } from "../utils/asyncHandler.js";
import { ApiError } from "../utils/ApiError.js"
import { Expense } from "../models/expense.model.js"

import { ApiResponse } from "../utils/ApiResponse.js";




const addExpense = asyncHandler(async (req, res) => {
    const { group, amount, date, description, type, excluded_user } = req.body
    if (!group || !amount) {
        throw new ApiError(400, "group and amount is required")
    }

    const excluded_users_id = excluded_user.split(',')

    try {
        const expense = await Expense.create({
            amount,
            date,
            description,
            type,
            excludedUsers: excluded_users_id,
            createdBy: req.user._id,
            group
        })
        await expense.save()

        return res.status(200).json(new ApiResponse(200, expense, "Group created"))
    }
    catch (error) {
        throw new ApiError(400, error?.message || "Error while adding expense")
    }
})


const removeExpense = asyncHandler(async (req, res) => {
    const { id } = req.body
    if (!id) {
        throw new ApiError(400, "id is required")
    }

    try {

        const expense = await Expense.findByIdAndDelete(id);
        if (!expense) {
            throw new ApiError(404, "Expense not found");
        }

        return res.status(200).json(new ApiResponse(200, expense, "Expense delete successfully"));
    } catch (error) {
        throw new ApiError(400, error?.message || "Error while deleting expense");
    }
})

const updateExpense = asyncHandler(async (req, res) => {

})

export {
    addExpense,
    removeExpense,
    updateExpense
}