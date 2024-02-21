import mongoose, { Schema } from "mongoose";


const expenseSchema = new Schema({
  amount: {
    type: Number,
    required: true
  },
  date: {
    type: Date,
    default: Date.now
  },
  description: {
    type: String,
    required: true
  },
  type: {
    type: String,
    required: true
  },
  excludedUsers: [{
    type: Schema.Types.ObjectId,
    ref: 'User'
  }],
  createdBy: {
    type: Schema.Types.ObjectId,
    ref: 'User',
    required: true
  },
  group: {
    type: Schema.Types.ObjectId,
    ref: 'Group'
  }
}, 

{
    timestamps: true
}
);

export const Expense = mongoose.model("Expense", expenseSchema)