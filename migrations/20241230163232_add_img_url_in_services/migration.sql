-- AlterTable
ALTER TABLE `ContentService` ADD COLUMN `imgUrl` VARCHAR(191) NOT NULL DEFAULT '/media/icons/default.png';

-- AlterTable
ALTER TABLE `ContentWork` MODIFY `imgUrl` VARCHAR(191) NOT NULL DEFAULT '/media/icons/default.png';
