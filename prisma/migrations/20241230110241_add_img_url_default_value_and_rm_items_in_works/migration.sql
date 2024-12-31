/*
  Warnings:

  - You are about to drop the column `workId` on the `ContentItem` table. All the data in the column will be lost.
  - Made the column `imgUrl` on table `ContentWork` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE `ContentItem` DROP FOREIGN KEY `ContentItem_workId_fkey`;

-- DropIndex
DROP INDEX `ContentItem_workId_fkey` ON `ContentItem`;

-- AlterTable
ALTER TABLE `ContentItem` DROP COLUMN `workId`;

-- AlterTable
ALTER TABLE `ContentWork` MODIFY `imgUrl` VARCHAR(191) NOT NULL DEFAULT '/media/icons/default-work.png';
