-- AlterTable
ALTER TABLE `Content` ADD COLUMN `logoImgUrl` VARCHAR(191) NOT NULL DEFAULT 'default-logo.png',
    ADD COLUMN `logoName` VARCHAR(191) NOT NULL DEFAULT 'MicoPage';
