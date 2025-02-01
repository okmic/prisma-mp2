-- AlterTable
ALTER TABLE `Content` MODIFY `logoImgUrl` VARCHAR(191) NOT NULL DEFAULT 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQHPxTQOIal5YuQgMVMiS3GLf-NkkJitBRjQ&s',
    MODIFY `mainBlockImgUrl` VARCHAR(191) NOT NULL DEFAULT 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQHPxTQOIal5YuQgMVMiS3GLf-NkkJitBRjQ&s',
    MODIFY `mainBlockTitle` VARCHAR(191) NOT NULL DEFAULT 'Mico Page 👋';

-- AlterTable
ALTER TABLE `ContentService` MODIFY `imgUrl` VARCHAR(191) NOT NULL DEFAULT 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQHPxTQOIal5YuQgMVMiS3GLf-NkkJitBRjQ&s';

-- AlterTable
ALTER TABLE `ContentWork` MODIFY `imgUrl` VARCHAR(191) NOT NULL DEFAULT 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQHPxTQOIal5YuQgMVMiS3GLf-NkkJitBRjQ&s';

-- AlterTable
ALTER TABLE `SiteProducts` MODIFY `imgUrl` VARCHAR(191) NOT NULL DEFAULT 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQHPxTQOIal5YuQgMVMiS3GLf-NkkJitBRjQ&s';
