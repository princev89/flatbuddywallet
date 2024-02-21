import { asyncHandler } from "../utils/asyncHandler.js";
import { ApiError } from "../utils/ApiError.js"
import { Group } from "../models/group.model.js"

import { ApiResponse } from "../utils/ApiResponse.js";




const createGroup = asyncHandler(async (req, res) => {
    const { group_name } = req.body
    if (!group_name) {
        throw new ApiError(400, "group_name is required")
    }

    try {
        const group = await Group.create({
            name: group_name,
            createdBy: req.user._id,
            members: [req.user._id]
            
        })
        await group.save()

        return res.status(200).json(new ApiResponse(200, group, "Group created"))
    }
    catch (error) {
        throw new ApiError(400, error?.message || "Error while creating group")
    }
})


const joinGroup = asyncHandler(async (req, res) => {
    const { group_id } = req.body
    if (!group_id) {
        throw new ApiError(400, "group_id is required")
    }

    try {
        // Retrieve the group from the database
        const group = await Group.findById(group_id);
        if (!group) {
            throw new ApiError(404, "Group not found");
        }

        // Check if the user is already a member of the group
        if (group.members.includes(req.user._id)) {
            throw new ApiError(400, "User is already a member of this group");
        }

        // Add the current user to the members array
        group.members.push(req.user._id);

        // Save the updated group object
        await group.save();

        return res.status(200).json(new ApiResponse(200, group, "User joined the group successfully"));
    } catch (error) {
        throw new ApiError(400, error?.message || "Error while joining group");
    }
})

export {
    createGroup,
    joinGroup
}