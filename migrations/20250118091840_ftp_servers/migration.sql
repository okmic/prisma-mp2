-- AlterTable
ALTER TABLE `Content` MODIFY `mainBlockTitle` VARCHAR(191) NOT NULL DEFAULT 'Mico Page 👋';

-- CreateTable
CREATE TABLE `FtpServers` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `ftpHost` VARCHAR(191) NOT NULL,
    `ftpUser` VARCHAR(191) NOT NULL,
    `ftpPassword` VARCHAR(191) NOT NULL,
    `isSecureFtp` BOOLEAN NOT NULL DEFAULT false,
    `userId` INTEGER NOT NULL,
    `contentId` INTEGER NOT NULL,

    UNIQUE INDEX `FtpServers_id_key`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `FtpServers` ADD CONSTRAINT `FtpServers_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
