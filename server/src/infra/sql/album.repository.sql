-- NOTE: This file is auto generated by ./sql-generator

-- AlbumRepository.getById
SELECT DISTINCT
  "distinctAlias"."AlbumEntity_id" AS "ids_AlbumEntity_id"
FROM
  (
    SELECT
      "AlbumEntity"."id" AS "AlbumEntity_id",
      "AlbumEntity"."ownerId" AS "AlbumEntity_ownerId",
      "AlbumEntity"."albumName" AS "AlbumEntity_albumName",
      "AlbumEntity"."description" AS "AlbumEntity_description",
      "AlbumEntity"."createdAt" AS "AlbumEntity_createdAt",
      "AlbumEntity"."updatedAt" AS "AlbumEntity_updatedAt",
      "AlbumEntity"."deletedAt" AS "AlbumEntity_deletedAt",
      "AlbumEntity"."albumThumbnailAssetId" AS "AlbumEntity_albumThumbnailAssetId",
      "AlbumEntity"."isActivityEnabled" AS "AlbumEntity_isActivityEnabled",
      "AlbumEntity__AlbumEntity_owner"."id" AS "AlbumEntity__AlbumEntity_owner_id",
      "AlbumEntity__AlbumEntity_owner"."name" AS "AlbumEntity__AlbumEntity_owner_name",
      "AlbumEntity__AlbumEntity_owner"."avatarColor" AS "AlbumEntity__AlbumEntity_owner_avatarColor",
      "AlbumEntity__AlbumEntity_owner"."isAdmin" AS "AlbumEntity__AlbumEntity_owner_isAdmin",
      "AlbumEntity__AlbumEntity_owner"."email" AS "AlbumEntity__AlbumEntity_owner_email",
      "AlbumEntity__AlbumEntity_owner"."storageLabel" AS "AlbumEntity__AlbumEntity_owner_storageLabel",
      "AlbumEntity__AlbumEntity_owner"."externalPath" AS "AlbumEntity__AlbumEntity_owner_externalPath",
      "AlbumEntity__AlbumEntity_owner"."oauthId" AS "AlbumEntity__AlbumEntity_owner_oauthId",
      "AlbumEntity__AlbumEntity_owner"."profileImagePath" AS "AlbumEntity__AlbumEntity_owner_profileImagePath",
      "AlbumEntity__AlbumEntity_owner"."shouldChangePassword" AS "AlbumEntity__AlbumEntity_owner_shouldChangePassword",
      "AlbumEntity__AlbumEntity_owner"."createdAt" AS "AlbumEntity__AlbumEntity_owner_createdAt",
      "AlbumEntity__AlbumEntity_owner"."deletedAt" AS "AlbumEntity__AlbumEntity_owner_deletedAt",
      "AlbumEntity__AlbumEntity_owner"."updatedAt" AS "AlbumEntity__AlbumEntity_owner_updatedAt",
      "AlbumEntity__AlbumEntity_owner"."memoriesEnabled" AS "AlbumEntity__AlbumEntity_owner_memoriesEnabled",
      "AlbumEntity__AlbumEntity_sharedUsers"."id" AS "AlbumEntity__AlbumEntity_sharedUsers_id",
      "AlbumEntity__AlbumEntity_sharedUsers"."name" AS "AlbumEntity__AlbumEntity_sharedUsers_name",
      "AlbumEntity__AlbumEntity_sharedUsers"."avatarColor" AS "AlbumEntity__AlbumEntity_sharedUsers_avatarColor",
      "AlbumEntity__AlbumEntity_sharedUsers"."isAdmin" AS "AlbumEntity__AlbumEntity_sharedUsers_isAdmin",
      "AlbumEntity__AlbumEntity_sharedUsers"."email" AS "AlbumEntity__AlbumEntity_sharedUsers_email",
      "AlbumEntity__AlbumEntity_sharedUsers"."storageLabel" AS "AlbumEntity__AlbumEntity_sharedUsers_storageLabel",
      "AlbumEntity__AlbumEntity_sharedUsers"."externalPath" AS "AlbumEntity__AlbumEntity_sharedUsers_externalPath",
      "AlbumEntity__AlbumEntity_sharedUsers"."oauthId" AS "AlbumEntity__AlbumEntity_sharedUsers_oauthId",
      "AlbumEntity__AlbumEntity_sharedUsers"."profileImagePath" AS "AlbumEntity__AlbumEntity_sharedUsers_profileImagePath",
      "AlbumEntity__AlbumEntity_sharedUsers"."shouldChangePassword" AS "AlbumEntity__AlbumEntity_sharedUsers_shouldChangePassword",
      "AlbumEntity__AlbumEntity_sharedUsers"."createdAt" AS "AlbumEntity__AlbumEntity_sharedUsers_createdAt",
      "AlbumEntity__AlbumEntity_sharedUsers"."deletedAt" AS "AlbumEntity__AlbumEntity_sharedUsers_deletedAt",
      "AlbumEntity__AlbumEntity_sharedUsers"."updatedAt" AS "AlbumEntity__AlbumEntity_sharedUsers_updatedAt",
      "AlbumEntity__AlbumEntity_sharedUsers"."memoriesEnabled" AS "AlbumEntity__AlbumEntity_sharedUsers_memoriesEnabled",
      "AlbumEntity__AlbumEntity_sharedLinks"."id" AS "AlbumEntity__AlbumEntity_sharedLinks_id",
      "AlbumEntity__AlbumEntity_sharedLinks"."description" AS "AlbumEntity__AlbumEntity_sharedLinks_description",
      "AlbumEntity__AlbumEntity_sharedLinks"."password" AS "AlbumEntity__AlbumEntity_sharedLinks_password",
      "AlbumEntity__AlbumEntity_sharedLinks"."userId" AS "AlbumEntity__AlbumEntity_sharedLinks_userId",
      "AlbumEntity__AlbumEntity_sharedLinks"."key" AS "AlbumEntity__AlbumEntity_sharedLinks_key",
      "AlbumEntity__AlbumEntity_sharedLinks"."type" AS "AlbumEntity__AlbumEntity_sharedLinks_type",
      "AlbumEntity__AlbumEntity_sharedLinks"."createdAt" AS "AlbumEntity__AlbumEntity_sharedLinks_createdAt",
      "AlbumEntity__AlbumEntity_sharedLinks"."expiresAt" AS "AlbumEntity__AlbumEntity_sharedLinks_expiresAt",
      "AlbumEntity__AlbumEntity_sharedLinks"."allowUpload" AS "AlbumEntity__AlbumEntity_sharedLinks_allowUpload",
      "AlbumEntity__AlbumEntity_sharedLinks"."allowDownload" AS "AlbumEntity__AlbumEntity_sharedLinks_allowDownload",
      "AlbumEntity__AlbumEntity_sharedLinks"."showExif" AS "AlbumEntity__AlbumEntity_sharedLinks_showExif",
      "AlbumEntity__AlbumEntity_sharedLinks"."albumId" AS "AlbumEntity__AlbumEntity_sharedLinks_albumId"
    FROM
      "albums" "AlbumEntity"
      LEFT JOIN "users" "AlbumEntity__AlbumEntity_owner" ON "AlbumEntity__AlbumEntity_owner"."id" = "AlbumEntity"."ownerId"
      AND (
        "AlbumEntity__AlbumEntity_owner"."deletedAt" IS NULL
      )
      LEFT JOIN "albums_shared_users_users" "AlbumEntity_AlbumEntity__AlbumEntity_sharedUsers" ON "AlbumEntity_AlbumEntity__AlbumEntity_sharedUsers"."albumsId" = "AlbumEntity"."id"
      LEFT JOIN "users" "AlbumEntity__AlbumEntity_sharedUsers" ON "AlbumEntity__AlbumEntity_sharedUsers"."id" = "AlbumEntity_AlbumEntity__AlbumEntity_sharedUsers"."usersId"
      AND (
        "AlbumEntity__AlbumEntity_sharedUsers"."deletedAt" IS NULL
      )
      LEFT JOIN "shared_links" "AlbumEntity__AlbumEntity_sharedLinks" ON "AlbumEntity__AlbumEntity_sharedLinks"."albumId" = "AlbumEntity"."id"
    WHERE
      (("AlbumEntity"."id" = $1))
      AND ("AlbumEntity"."deletedAt" IS NULL)
  ) "distinctAlias"
ORDER BY
  "AlbumEntity_id" ASC
LIMIT
  1

-- AlbumRepository.getByIds
SELECT
  "AlbumEntity"."id" AS "AlbumEntity_id",
  "AlbumEntity"."ownerId" AS "AlbumEntity_ownerId",
  "AlbumEntity"."albumName" AS "AlbumEntity_albumName",
  "AlbumEntity"."description" AS "AlbumEntity_description",
  "AlbumEntity"."createdAt" AS "AlbumEntity_createdAt",
  "AlbumEntity"."updatedAt" AS "AlbumEntity_updatedAt",
  "AlbumEntity"."deletedAt" AS "AlbumEntity_deletedAt",
  "AlbumEntity"."albumThumbnailAssetId" AS "AlbumEntity_albumThumbnailAssetId",
  "AlbumEntity"."isActivityEnabled" AS "AlbumEntity_isActivityEnabled",
  "AlbumEntity__AlbumEntity_owner"."id" AS "AlbumEntity__AlbumEntity_owner_id",
  "AlbumEntity__AlbumEntity_owner"."name" AS "AlbumEntity__AlbumEntity_owner_name",
  "AlbumEntity__AlbumEntity_owner"."avatarColor" AS "AlbumEntity__AlbumEntity_owner_avatarColor",
  "AlbumEntity__AlbumEntity_owner"."isAdmin" AS "AlbumEntity__AlbumEntity_owner_isAdmin",
  "AlbumEntity__AlbumEntity_owner"."email" AS "AlbumEntity__AlbumEntity_owner_email",
  "AlbumEntity__AlbumEntity_owner"."storageLabel" AS "AlbumEntity__AlbumEntity_owner_storageLabel",
  "AlbumEntity__AlbumEntity_owner"."externalPath" AS "AlbumEntity__AlbumEntity_owner_externalPath",
  "AlbumEntity__AlbumEntity_owner"."oauthId" AS "AlbumEntity__AlbumEntity_owner_oauthId",
  "AlbumEntity__AlbumEntity_owner"."profileImagePath" AS "AlbumEntity__AlbumEntity_owner_profileImagePath",
  "AlbumEntity__AlbumEntity_owner"."shouldChangePassword" AS "AlbumEntity__AlbumEntity_owner_shouldChangePassword",
  "AlbumEntity__AlbumEntity_owner"."createdAt" AS "AlbumEntity__AlbumEntity_owner_createdAt",
  "AlbumEntity__AlbumEntity_owner"."deletedAt" AS "AlbumEntity__AlbumEntity_owner_deletedAt",
  "AlbumEntity__AlbumEntity_owner"."updatedAt" AS "AlbumEntity__AlbumEntity_owner_updatedAt",
  "AlbumEntity__AlbumEntity_owner"."memoriesEnabled" AS "AlbumEntity__AlbumEntity_owner_memoriesEnabled",
  "AlbumEntity__AlbumEntity_sharedUsers"."id" AS "AlbumEntity__AlbumEntity_sharedUsers_id",
  "AlbumEntity__AlbumEntity_sharedUsers"."name" AS "AlbumEntity__AlbumEntity_sharedUsers_name",
  "AlbumEntity__AlbumEntity_sharedUsers"."avatarColor" AS "AlbumEntity__AlbumEntity_sharedUsers_avatarColor",
  "AlbumEntity__AlbumEntity_sharedUsers"."isAdmin" AS "AlbumEntity__AlbumEntity_sharedUsers_isAdmin",
  "AlbumEntity__AlbumEntity_sharedUsers"."email" AS "AlbumEntity__AlbumEntity_sharedUsers_email",
  "AlbumEntity__AlbumEntity_sharedUsers"."storageLabel" AS "AlbumEntity__AlbumEntity_sharedUsers_storageLabel",
  "AlbumEntity__AlbumEntity_sharedUsers"."externalPath" AS "AlbumEntity__AlbumEntity_sharedUsers_externalPath",
  "AlbumEntity__AlbumEntity_sharedUsers"."oauthId" AS "AlbumEntity__AlbumEntity_sharedUsers_oauthId",
  "AlbumEntity__AlbumEntity_sharedUsers"."profileImagePath" AS "AlbumEntity__AlbumEntity_sharedUsers_profileImagePath",
  "AlbumEntity__AlbumEntity_sharedUsers"."shouldChangePassword" AS "AlbumEntity__AlbumEntity_sharedUsers_shouldChangePassword",
  "AlbumEntity__AlbumEntity_sharedUsers"."createdAt" AS "AlbumEntity__AlbumEntity_sharedUsers_createdAt",
  "AlbumEntity__AlbumEntity_sharedUsers"."deletedAt" AS "AlbumEntity__AlbumEntity_sharedUsers_deletedAt",
  "AlbumEntity__AlbumEntity_sharedUsers"."updatedAt" AS "AlbumEntity__AlbumEntity_sharedUsers_updatedAt",
  "AlbumEntity__AlbumEntity_sharedUsers"."memoriesEnabled" AS "AlbumEntity__AlbumEntity_sharedUsers_memoriesEnabled"
FROM
  "albums" "AlbumEntity"
  LEFT JOIN "users" "AlbumEntity__AlbumEntity_owner" ON "AlbumEntity__AlbumEntity_owner"."id" = "AlbumEntity"."ownerId"
  AND (
    "AlbumEntity__AlbumEntity_owner"."deletedAt" IS NULL
  )
  LEFT JOIN "albums_shared_users_users" "AlbumEntity_AlbumEntity__AlbumEntity_sharedUsers" ON "AlbumEntity_AlbumEntity__AlbumEntity_sharedUsers"."albumsId" = "AlbumEntity"."id"
  LEFT JOIN "users" "AlbumEntity__AlbumEntity_sharedUsers" ON "AlbumEntity__AlbumEntity_sharedUsers"."id" = "AlbumEntity_AlbumEntity__AlbumEntity_sharedUsers"."usersId"
  AND (
    "AlbumEntity__AlbumEntity_sharedUsers"."deletedAt" IS NULL
  )
WHERE
  (("AlbumEntity"."id" IN ($1)))
  AND ("AlbumEntity"."deletedAt" IS NULL)

-- AlbumRepository.getByAssetId
SELECT
  "AlbumEntity"."id" AS "AlbumEntity_id",
  "AlbumEntity"."ownerId" AS "AlbumEntity_ownerId",
  "AlbumEntity"."albumName" AS "AlbumEntity_albumName",
  "AlbumEntity"."description" AS "AlbumEntity_description",
  "AlbumEntity"."createdAt" AS "AlbumEntity_createdAt",
  "AlbumEntity"."updatedAt" AS "AlbumEntity_updatedAt",
  "AlbumEntity"."deletedAt" AS "AlbumEntity_deletedAt",
  "AlbumEntity"."albumThumbnailAssetId" AS "AlbumEntity_albumThumbnailAssetId",
  "AlbumEntity"."isActivityEnabled" AS "AlbumEntity_isActivityEnabled",
  "AlbumEntity__AlbumEntity_owner"."id" AS "AlbumEntity__AlbumEntity_owner_id",
  "AlbumEntity__AlbumEntity_owner"."name" AS "AlbumEntity__AlbumEntity_owner_name",
  "AlbumEntity__AlbumEntity_owner"."avatarColor" AS "AlbumEntity__AlbumEntity_owner_avatarColor",
  "AlbumEntity__AlbumEntity_owner"."isAdmin" AS "AlbumEntity__AlbumEntity_owner_isAdmin",
  "AlbumEntity__AlbumEntity_owner"."email" AS "AlbumEntity__AlbumEntity_owner_email",
  "AlbumEntity__AlbumEntity_owner"."storageLabel" AS "AlbumEntity__AlbumEntity_owner_storageLabel",
  "AlbumEntity__AlbumEntity_owner"."externalPath" AS "AlbumEntity__AlbumEntity_owner_externalPath",
  "AlbumEntity__AlbumEntity_owner"."oauthId" AS "AlbumEntity__AlbumEntity_owner_oauthId",
  "AlbumEntity__AlbumEntity_owner"."profileImagePath" AS "AlbumEntity__AlbumEntity_owner_profileImagePath",
  "AlbumEntity__AlbumEntity_owner"."shouldChangePassword" AS "AlbumEntity__AlbumEntity_owner_shouldChangePassword",
  "AlbumEntity__AlbumEntity_owner"."createdAt" AS "AlbumEntity__AlbumEntity_owner_createdAt",
  "AlbumEntity__AlbumEntity_owner"."deletedAt" AS "AlbumEntity__AlbumEntity_owner_deletedAt",
  "AlbumEntity__AlbumEntity_owner"."updatedAt" AS "AlbumEntity__AlbumEntity_owner_updatedAt",
  "AlbumEntity__AlbumEntity_owner"."memoriesEnabled" AS "AlbumEntity__AlbumEntity_owner_memoriesEnabled",
  "AlbumEntity__AlbumEntity_sharedUsers"."id" AS "AlbumEntity__AlbumEntity_sharedUsers_id",
  "AlbumEntity__AlbumEntity_sharedUsers"."name" AS "AlbumEntity__AlbumEntity_sharedUsers_name",
  "AlbumEntity__AlbumEntity_sharedUsers"."avatarColor" AS "AlbumEntity__AlbumEntity_sharedUsers_avatarColor",
  "AlbumEntity__AlbumEntity_sharedUsers"."isAdmin" AS "AlbumEntity__AlbumEntity_sharedUsers_isAdmin",
  "AlbumEntity__AlbumEntity_sharedUsers"."email" AS "AlbumEntity__AlbumEntity_sharedUsers_email",
  "AlbumEntity__AlbumEntity_sharedUsers"."storageLabel" AS "AlbumEntity__AlbumEntity_sharedUsers_storageLabel",
  "AlbumEntity__AlbumEntity_sharedUsers"."externalPath" AS "AlbumEntity__AlbumEntity_sharedUsers_externalPath",
  "AlbumEntity__AlbumEntity_sharedUsers"."oauthId" AS "AlbumEntity__AlbumEntity_sharedUsers_oauthId",
  "AlbumEntity__AlbumEntity_sharedUsers"."profileImagePath" AS "AlbumEntity__AlbumEntity_sharedUsers_profileImagePath",
  "AlbumEntity__AlbumEntity_sharedUsers"."shouldChangePassword" AS "AlbumEntity__AlbumEntity_sharedUsers_shouldChangePassword",
  "AlbumEntity__AlbumEntity_sharedUsers"."createdAt" AS "AlbumEntity__AlbumEntity_sharedUsers_createdAt",
  "AlbumEntity__AlbumEntity_sharedUsers"."deletedAt" AS "AlbumEntity__AlbumEntity_sharedUsers_deletedAt",
  "AlbumEntity__AlbumEntity_sharedUsers"."updatedAt" AS "AlbumEntity__AlbumEntity_sharedUsers_updatedAt",
  "AlbumEntity__AlbumEntity_sharedUsers"."memoriesEnabled" AS "AlbumEntity__AlbumEntity_sharedUsers_memoriesEnabled"
FROM
  "albums" "AlbumEntity"
  LEFT JOIN "users" "AlbumEntity__AlbumEntity_owner" ON "AlbumEntity__AlbumEntity_owner"."id" = "AlbumEntity"."ownerId"
  AND (
    "AlbumEntity__AlbumEntity_owner"."deletedAt" IS NULL
  )
  LEFT JOIN "albums_shared_users_users" "AlbumEntity_AlbumEntity__AlbumEntity_sharedUsers" ON "AlbumEntity_AlbumEntity__AlbumEntity_sharedUsers"."albumsId" = "AlbumEntity"."id"
  LEFT JOIN "users" "AlbumEntity__AlbumEntity_sharedUsers" ON "AlbumEntity__AlbumEntity_sharedUsers"."id" = "AlbumEntity_AlbumEntity__AlbumEntity_sharedUsers"."usersId"
  AND (
    "AlbumEntity__AlbumEntity_sharedUsers"."deletedAt" IS NULL
  )
  LEFT JOIN "albums_assets_assets" "AlbumEntity_AlbumEntity__AlbumEntity_assets" ON "AlbumEntity_AlbumEntity__AlbumEntity_assets"."albumsId" = "AlbumEntity"."id"
  LEFT JOIN "assets" "AlbumEntity__AlbumEntity_assets" ON "AlbumEntity__AlbumEntity_assets"."id" = "AlbumEntity_AlbumEntity__AlbumEntity_assets"."assetsId"
  AND (
    "AlbumEntity__AlbumEntity_assets"."deletedAt" IS NULL
  )
WHERE
  (
    (
      (
        "AlbumEntity"."ownerId" = $1
        AND "AlbumEntity__AlbumEntity_assets"."id" = $2
      )
      OR (
        "AlbumEntity__AlbumEntity_sharedUsers"."id" = $3
        AND "AlbumEntity__AlbumEntity_assets"."id" = $4
      )
    )
  )
  AND ("AlbumEntity"."deletedAt" IS NULL)
ORDER BY
  "AlbumEntity"."createdAt" DESC

-- AlbumRepository.getMetadataForIds
SELECT
  "album"."id" AS "album_id",
  MIN("assets"."fileCreatedAt") AS "start_date",
  MAX("assets"."fileCreatedAt") AS "end_date",
  COUNT("album_assets"."assetsId") AS "asset_count"
FROM
  "albums" "album"
  LEFT JOIN "albums_assets_assets" "album_assets" ON "album_assets"."albumsId" = "album"."id"
  LEFT JOIN "assets" "assets" ON "assets"."id" = "album_assets"."assetsId"
  AND "assets"."deletedAt" IS NULL
WHERE
  ("album"."id" IN ($1))
  AND ("album"."deletedAt" IS NULL)
GROUP BY
  "album"."id"

-- AlbumRepository.getInvalidThumbnail
SELECT
  "albums"."id" AS "albums_id"
FROM
  "albums" "albums"
WHERE
  (
    "albums"."albumThumbnailAssetId" IS NULL
    AND EXISTS (
      SELECT
        1
      FROM
        "albums_assets_assets" "albums_assets"
      WHERE
        "albums"."id" = "albums_assets"."albumsId"
    )
    OR "albums"."albumThumbnailAssetId" IS NOT NULL
    AND NOT EXISTS (
      SELECT
        1
      FROM
        "albums_assets_assets" "albums_assets"
      WHERE
        "albums"."id" = "albums_assets"."albumsId"
        AND "albums"."albumThumbnailAssetId" = "albums_assets"."assetsId"
    )
  )
  AND ("albums"."deletedAt" IS NULL)

-- AlbumRepository.getOwned
SELECT
  "AlbumEntity"."id" AS "AlbumEntity_id",
  "AlbumEntity"."ownerId" AS "AlbumEntity_ownerId",
  "AlbumEntity"."albumName" AS "AlbumEntity_albumName",
  "AlbumEntity"."description" AS "AlbumEntity_description",
  "AlbumEntity"."createdAt" AS "AlbumEntity_createdAt",
  "AlbumEntity"."updatedAt" AS "AlbumEntity_updatedAt",
  "AlbumEntity"."deletedAt" AS "AlbumEntity_deletedAt",
  "AlbumEntity"."albumThumbnailAssetId" AS "AlbumEntity_albumThumbnailAssetId",
  "AlbumEntity"."isActivityEnabled" AS "AlbumEntity_isActivityEnabled",
  "AlbumEntity__AlbumEntity_sharedUsers"."id" AS "AlbumEntity__AlbumEntity_sharedUsers_id",
  "AlbumEntity__AlbumEntity_sharedUsers"."name" AS "AlbumEntity__AlbumEntity_sharedUsers_name",
  "AlbumEntity__AlbumEntity_sharedUsers"."avatarColor" AS "AlbumEntity__AlbumEntity_sharedUsers_avatarColor",
  "AlbumEntity__AlbumEntity_sharedUsers"."isAdmin" AS "AlbumEntity__AlbumEntity_sharedUsers_isAdmin",
  "AlbumEntity__AlbumEntity_sharedUsers"."email" AS "AlbumEntity__AlbumEntity_sharedUsers_email",
  "AlbumEntity__AlbumEntity_sharedUsers"."storageLabel" AS "AlbumEntity__AlbumEntity_sharedUsers_storageLabel",
  "AlbumEntity__AlbumEntity_sharedUsers"."externalPath" AS "AlbumEntity__AlbumEntity_sharedUsers_externalPath",
  "AlbumEntity__AlbumEntity_sharedUsers"."oauthId" AS "AlbumEntity__AlbumEntity_sharedUsers_oauthId",
  "AlbumEntity__AlbumEntity_sharedUsers"."profileImagePath" AS "AlbumEntity__AlbumEntity_sharedUsers_profileImagePath",
  "AlbumEntity__AlbumEntity_sharedUsers"."shouldChangePassword" AS "AlbumEntity__AlbumEntity_sharedUsers_shouldChangePassword",
  "AlbumEntity__AlbumEntity_sharedUsers"."createdAt" AS "AlbumEntity__AlbumEntity_sharedUsers_createdAt",
  "AlbumEntity__AlbumEntity_sharedUsers"."deletedAt" AS "AlbumEntity__AlbumEntity_sharedUsers_deletedAt",
  "AlbumEntity__AlbumEntity_sharedUsers"."updatedAt" AS "AlbumEntity__AlbumEntity_sharedUsers_updatedAt",
  "AlbumEntity__AlbumEntity_sharedUsers"."memoriesEnabled" AS "AlbumEntity__AlbumEntity_sharedUsers_memoriesEnabled",
  "AlbumEntity__AlbumEntity_sharedLinks"."id" AS "AlbumEntity__AlbumEntity_sharedLinks_id",
  "AlbumEntity__AlbumEntity_sharedLinks"."description" AS "AlbumEntity__AlbumEntity_sharedLinks_description",
  "AlbumEntity__AlbumEntity_sharedLinks"."password" AS "AlbumEntity__AlbumEntity_sharedLinks_password",
  "AlbumEntity__AlbumEntity_sharedLinks"."userId" AS "AlbumEntity__AlbumEntity_sharedLinks_userId",
  "AlbumEntity__AlbumEntity_sharedLinks"."key" AS "AlbumEntity__AlbumEntity_sharedLinks_key",
  "AlbumEntity__AlbumEntity_sharedLinks"."type" AS "AlbumEntity__AlbumEntity_sharedLinks_type",
  "AlbumEntity__AlbumEntity_sharedLinks"."createdAt" AS "AlbumEntity__AlbumEntity_sharedLinks_createdAt",
  "AlbumEntity__AlbumEntity_sharedLinks"."expiresAt" AS "AlbumEntity__AlbumEntity_sharedLinks_expiresAt",
  "AlbumEntity__AlbumEntity_sharedLinks"."allowUpload" AS "AlbumEntity__AlbumEntity_sharedLinks_allowUpload",
  "AlbumEntity__AlbumEntity_sharedLinks"."allowDownload" AS "AlbumEntity__AlbumEntity_sharedLinks_allowDownload",
  "AlbumEntity__AlbumEntity_sharedLinks"."showExif" AS "AlbumEntity__AlbumEntity_sharedLinks_showExif",
  "AlbumEntity__AlbumEntity_sharedLinks"."albumId" AS "AlbumEntity__AlbumEntity_sharedLinks_albumId",
  "AlbumEntity__AlbumEntity_owner"."id" AS "AlbumEntity__AlbumEntity_owner_id",
  "AlbumEntity__AlbumEntity_owner"."name" AS "AlbumEntity__AlbumEntity_owner_name",
  "AlbumEntity__AlbumEntity_owner"."avatarColor" AS "AlbumEntity__AlbumEntity_owner_avatarColor",
  "AlbumEntity__AlbumEntity_owner"."isAdmin" AS "AlbumEntity__AlbumEntity_owner_isAdmin",
  "AlbumEntity__AlbumEntity_owner"."email" AS "AlbumEntity__AlbumEntity_owner_email",
  "AlbumEntity__AlbumEntity_owner"."storageLabel" AS "AlbumEntity__AlbumEntity_owner_storageLabel",
  "AlbumEntity__AlbumEntity_owner"."externalPath" AS "AlbumEntity__AlbumEntity_owner_externalPath",
  "AlbumEntity__AlbumEntity_owner"."oauthId" AS "AlbumEntity__AlbumEntity_owner_oauthId",
  "AlbumEntity__AlbumEntity_owner"."profileImagePath" AS "AlbumEntity__AlbumEntity_owner_profileImagePath",
  "AlbumEntity__AlbumEntity_owner"."shouldChangePassword" AS "AlbumEntity__AlbumEntity_owner_shouldChangePassword",
  "AlbumEntity__AlbumEntity_owner"."createdAt" AS "AlbumEntity__AlbumEntity_owner_createdAt",
  "AlbumEntity__AlbumEntity_owner"."deletedAt" AS "AlbumEntity__AlbumEntity_owner_deletedAt",
  "AlbumEntity__AlbumEntity_owner"."updatedAt" AS "AlbumEntity__AlbumEntity_owner_updatedAt",
  "AlbumEntity__AlbumEntity_owner"."memoriesEnabled" AS "AlbumEntity__AlbumEntity_owner_memoriesEnabled"
FROM
  "albums" "AlbumEntity"
  LEFT JOIN "albums_shared_users_users" "AlbumEntity_AlbumEntity__AlbumEntity_sharedUsers" ON "AlbumEntity_AlbumEntity__AlbumEntity_sharedUsers"."albumsId" = "AlbumEntity"."id"
  LEFT JOIN "users" "AlbumEntity__AlbumEntity_sharedUsers" ON "AlbumEntity__AlbumEntity_sharedUsers"."id" = "AlbumEntity_AlbumEntity__AlbumEntity_sharedUsers"."usersId"
  AND (
    "AlbumEntity__AlbumEntity_sharedUsers"."deletedAt" IS NULL
  )
  LEFT JOIN "shared_links" "AlbumEntity__AlbumEntity_sharedLinks" ON "AlbumEntity__AlbumEntity_sharedLinks"."albumId" = "AlbumEntity"."id"
  LEFT JOIN "users" "AlbumEntity__AlbumEntity_owner" ON "AlbumEntity__AlbumEntity_owner"."id" = "AlbumEntity"."ownerId"
  AND (
    "AlbumEntity__AlbumEntity_owner"."deletedAt" IS NULL
  )
WHERE
  (("AlbumEntity"."ownerId" = $1))
  AND ("AlbumEntity"."deletedAt" IS NULL)
ORDER BY
  "AlbumEntity"."createdAt" DESC

-- AlbumRepository.getShared
SELECT
  "AlbumEntity"."id" AS "AlbumEntity_id",
  "AlbumEntity"."ownerId" AS "AlbumEntity_ownerId",
  "AlbumEntity"."albumName" AS "AlbumEntity_albumName",
  "AlbumEntity"."description" AS "AlbumEntity_description",
  "AlbumEntity"."createdAt" AS "AlbumEntity_createdAt",
  "AlbumEntity"."updatedAt" AS "AlbumEntity_updatedAt",
  "AlbumEntity"."deletedAt" AS "AlbumEntity_deletedAt",
  "AlbumEntity"."albumThumbnailAssetId" AS "AlbumEntity_albumThumbnailAssetId",
  "AlbumEntity"."isActivityEnabled" AS "AlbumEntity_isActivityEnabled",
  "AlbumEntity__AlbumEntity_sharedUsers"."id" AS "AlbumEntity__AlbumEntity_sharedUsers_id",
  "AlbumEntity__AlbumEntity_sharedUsers"."name" AS "AlbumEntity__AlbumEntity_sharedUsers_name",
  "AlbumEntity__AlbumEntity_sharedUsers"."avatarColor" AS "AlbumEntity__AlbumEntity_sharedUsers_avatarColor",
  "AlbumEntity__AlbumEntity_sharedUsers"."isAdmin" AS "AlbumEntity__AlbumEntity_sharedUsers_isAdmin",
  "AlbumEntity__AlbumEntity_sharedUsers"."email" AS "AlbumEntity__AlbumEntity_sharedUsers_email",
  "AlbumEntity__AlbumEntity_sharedUsers"."storageLabel" AS "AlbumEntity__AlbumEntity_sharedUsers_storageLabel",
  "AlbumEntity__AlbumEntity_sharedUsers"."externalPath" AS "AlbumEntity__AlbumEntity_sharedUsers_externalPath",
  "AlbumEntity__AlbumEntity_sharedUsers"."oauthId" AS "AlbumEntity__AlbumEntity_sharedUsers_oauthId",
  "AlbumEntity__AlbumEntity_sharedUsers"."profileImagePath" AS "AlbumEntity__AlbumEntity_sharedUsers_profileImagePath",
  "AlbumEntity__AlbumEntity_sharedUsers"."shouldChangePassword" AS "AlbumEntity__AlbumEntity_sharedUsers_shouldChangePassword",
  "AlbumEntity__AlbumEntity_sharedUsers"."createdAt" AS "AlbumEntity__AlbumEntity_sharedUsers_createdAt",
  "AlbumEntity__AlbumEntity_sharedUsers"."deletedAt" AS "AlbumEntity__AlbumEntity_sharedUsers_deletedAt",
  "AlbumEntity__AlbumEntity_sharedUsers"."updatedAt" AS "AlbumEntity__AlbumEntity_sharedUsers_updatedAt",
  "AlbumEntity__AlbumEntity_sharedUsers"."memoriesEnabled" AS "AlbumEntity__AlbumEntity_sharedUsers_memoriesEnabled",
  "AlbumEntity__AlbumEntity_sharedLinks"."id" AS "AlbumEntity__AlbumEntity_sharedLinks_id",
  "AlbumEntity__AlbumEntity_sharedLinks"."description" AS "AlbumEntity__AlbumEntity_sharedLinks_description",
  "AlbumEntity__AlbumEntity_sharedLinks"."password" AS "AlbumEntity__AlbumEntity_sharedLinks_password",
  "AlbumEntity__AlbumEntity_sharedLinks"."userId" AS "AlbumEntity__AlbumEntity_sharedLinks_userId",
  "AlbumEntity__AlbumEntity_sharedLinks"."key" AS "AlbumEntity__AlbumEntity_sharedLinks_key",
  "AlbumEntity__AlbumEntity_sharedLinks"."type" AS "AlbumEntity__AlbumEntity_sharedLinks_type",
  "AlbumEntity__AlbumEntity_sharedLinks"."createdAt" AS "AlbumEntity__AlbumEntity_sharedLinks_createdAt",
  "AlbumEntity__AlbumEntity_sharedLinks"."expiresAt" AS "AlbumEntity__AlbumEntity_sharedLinks_expiresAt",
  "AlbumEntity__AlbumEntity_sharedLinks"."allowUpload" AS "AlbumEntity__AlbumEntity_sharedLinks_allowUpload",
  "AlbumEntity__AlbumEntity_sharedLinks"."allowDownload" AS "AlbumEntity__AlbumEntity_sharedLinks_allowDownload",
  "AlbumEntity__AlbumEntity_sharedLinks"."showExif" AS "AlbumEntity__AlbumEntity_sharedLinks_showExif",
  "AlbumEntity__AlbumEntity_sharedLinks"."albumId" AS "AlbumEntity__AlbumEntity_sharedLinks_albumId",
  "AlbumEntity__AlbumEntity_owner"."id" AS "AlbumEntity__AlbumEntity_owner_id",
  "AlbumEntity__AlbumEntity_owner"."name" AS "AlbumEntity__AlbumEntity_owner_name",
  "AlbumEntity__AlbumEntity_owner"."avatarColor" AS "AlbumEntity__AlbumEntity_owner_avatarColor",
  "AlbumEntity__AlbumEntity_owner"."isAdmin" AS "AlbumEntity__AlbumEntity_owner_isAdmin",
  "AlbumEntity__AlbumEntity_owner"."email" AS "AlbumEntity__AlbumEntity_owner_email",
  "AlbumEntity__AlbumEntity_owner"."storageLabel" AS "AlbumEntity__AlbumEntity_owner_storageLabel",
  "AlbumEntity__AlbumEntity_owner"."externalPath" AS "AlbumEntity__AlbumEntity_owner_externalPath",
  "AlbumEntity__AlbumEntity_owner"."oauthId" AS "AlbumEntity__AlbumEntity_owner_oauthId",
  "AlbumEntity__AlbumEntity_owner"."profileImagePath" AS "AlbumEntity__AlbumEntity_owner_profileImagePath",
  "AlbumEntity__AlbumEntity_owner"."shouldChangePassword" AS "AlbumEntity__AlbumEntity_owner_shouldChangePassword",
  "AlbumEntity__AlbumEntity_owner"."createdAt" AS "AlbumEntity__AlbumEntity_owner_createdAt",
  "AlbumEntity__AlbumEntity_owner"."deletedAt" AS "AlbumEntity__AlbumEntity_owner_deletedAt",
  "AlbumEntity__AlbumEntity_owner"."updatedAt" AS "AlbumEntity__AlbumEntity_owner_updatedAt",
  "AlbumEntity__AlbumEntity_owner"."memoriesEnabled" AS "AlbumEntity__AlbumEntity_owner_memoriesEnabled"
FROM
  "albums" "AlbumEntity"
  LEFT JOIN "albums_shared_users_users" "AlbumEntity_AlbumEntity__AlbumEntity_sharedUsers" ON "AlbumEntity_AlbumEntity__AlbumEntity_sharedUsers"."albumsId" = "AlbumEntity"."id"
  LEFT JOIN "users" "AlbumEntity__AlbumEntity_sharedUsers" ON "AlbumEntity__AlbumEntity_sharedUsers"."id" = "AlbumEntity_AlbumEntity__AlbumEntity_sharedUsers"."usersId"
  AND (
    "AlbumEntity__AlbumEntity_sharedUsers"."deletedAt" IS NULL
  )
  LEFT JOIN "shared_links" "AlbumEntity__AlbumEntity_sharedLinks" ON "AlbumEntity__AlbumEntity_sharedLinks"."albumId" = "AlbumEntity"."id"
  LEFT JOIN "users" "AlbumEntity__AlbumEntity_owner" ON "AlbumEntity__AlbumEntity_owner"."id" = "AlbumEntity"."ownerId"
  AND (
    "AlbumEntity__AlbumEntity_owner"."deletedAt" IS NULL
  )
WHERE
  (
    (
      ("AlbumEntity__AlbumEntity_sharedUsers"."id" = $1)
      OR (
        "AlbumEntity__AlbumEntity_sharedLinks"."userId" = $2
      )
      OR (
        "AlbumEntity"."ownerId" = $3
        AND NOT (
          "AlbumEntity__AlbumEntity_sharedUsers"."id" IS NULL
        )
      )
    )
  )
  AND ("AlbumEntity"."deletedAt" IS NULL)
ORDER BY
  "AlbumEntity"."createdAt" DESC

-- AlbumRepository.getNotShared
SELECT
  "AlbumEntity"."id" AS "AlbumEntity_id",
  "AlbumEntity"."ownerId" AS "AlbumEntity_ownerId",
  "AlbumEntity"."albumName" AS "AlbumEntity_albumName",
  "AlbumEntity"."description" AS "AlbumEntity_description",
  "AlbumEntity"."createdAt" AS "AlbumEntity_createdAt",
  "AlbumEntity"."updatedAt" AS "AlbumEntity_updatedAt",
  "AlbumEntity"."deletedAt" AS "AlbumEntity_deletedAt",
  "AlbumEntity"."albumThumbnailAssetId" AS "AlbumEntity_albumThumbnailAssetId",
  "AlbumEntity"."isActivityEnabled" AS "AlbumEntity_isActivityEnabled",
  "AlbumEntity__AlbumEntity_sharedUsers"."id" AS "AlbumEntity__AlbumEntity_sharedUsers_id",
  "AlbumEntity__AlbumEntity_sharedUsers"."name" AS "AlbumEntity__AlbumEntity_sharedUsers_name",
  "AlbumEntity__AlbumEntity_sharedUsers"."avatarColor" AS "AlbumEntity__AlbumEntity_sharedUsers_avatarColor",
  "AlbumEntity__AlbumEntity_sharedUsers"."isAdmin" AS "AlbumEntity__AlbumEntity_sharedUsers_isAdmin",
  "AlbumEntity__AlbumEntity_sharedUsers"."email" AS "AlbumEntity__AlbumEntity_sharedUsers_email",
  "AlbumEntity__AlbumEntity_sharedUsers"."storageLabel" AS "AlbumEntity__AlbumEntity_sharedUsers_storageLabel",
  "AlbumEntity__AlbumEntity_sharedUsers"."externalPath" AS "AlbumEntity__AlbumEntity_sharedUsers_externalPath",
  "AlbumEntity__AlbumEntity_sharedUsers"."oauthId" AS "AlbumEntity__AlbumEntity_sharedUsers_oauthId",
  "AlbumEntity__AlbumEntity_sharedUsers"."profileImagePath" AS "AlbumEntity__AlbumEntity_sharedUsers_profileImagePath",
  "AlbumEntity__AlbumEntity_sharedUsers"."shouldChangePassword" AS "AlbumEntity__AlbumEntity_sharedUsers_shouldChangePassword",
  "AlbumEntity__AlbumEntity_sharedUsers"."createdAt" AS "AlbumEntity__AlbumEntity_sharedUsers_createdAt",
  "AlbumEntity__AlbumEntity_sharedUsers"."deletedAt" AS "AlbumEntity__AlbumEntity_sharedUsers_deletedAt",
  "AlbumEntity__AlbumEntity_sharedUsers"."updatedAt" AS "AlbumEntity__AlbumEntity_sharedUsers_updatedAt",
  "AlbumEntity__AlbumEntity_sharedUsers"."memoriesEnabled" AS "AlbumEntity__AlbumEntity_sharedUsers_memoriesEnabled",
  "AlbumEntity__AlbumEntity_sharedLinks"."id" AS "AlbumEntity__AlbumEntity_sharedLinks_id",
  "AlbumEntity__AlbumEntity_sharedLinks"."description" AS "AlbumEntity__AlbumEntity_sharedLinks_description",
  "AlbumEntity__AlbumEntity_sharedLinks"."password" AS "AlbumEntity__AlbumEntity_sharedLinks_password",
  "AlbumEntity__AlbumEntity_sharedLinks"."userId" AS "AlbumEntity__AlbumEntity_sharedLinks_userId",
  "AlbumEntity__AlbumEntity_sharedLinks"."key" AS "AlbumEntity__AlbumEntity_sharedLinks_key",
  "AlbumEntity__AlbumEntity_sharedLinks"."type" AS "AlbumEntity__AlbumEntity_sharedLinks_type",
  "AlbumEntity__AlbumEntity_sharedLinks"."createdAt" AS "AlbumEntity__AlbumEntity_sharedLinks_createdAt",
  "AlbumEntity__AlbumEntity_sharedLinks"."expiresAt" AS "AlbumEntity__AlbumEntity_sharedLinks_expiresAt",
  "AlbumEntity__AlbumEntity_sharedLinks"."allowUpload" AS "AlbumEntity__AlbumEntity_sharedLinks_allowUpload",
  "AlbumEntity__AlbumEntity_sharedLinks"."allowDownload" AS "AlbumEntity__AlbumEntity_sharedLinks_allowDownload",
  "AlbumEntity__AlbumEntity_sharedLinks"."showExif" AS "AlbumEntity__AlbumEntity_sharedLinks_showExif",
  "AlbumEntity__AlbumEntity_sharedLinks"."albumId" AS "AlbumEntity__AlbumEntity_sharedLinks_albumId",
  "AlbumEntity__AlbumEntity_owner"."id" AS "AlbumEntity__AlbumEntity_owner_id",
  "AlbumEntity__AlbumEntity_owner"."name" AS "AlbumEntity__AlbumEntity_owner_name",
  "AlbumEntity__AlbumEntity_owner"."avatarColor" AS "AlbumEntity__AlbumEntity_owner_avatarColor",
  "AlbumEntity__AlbumEntity_owner"."isAdmin" AS "AlbumEntity__AlbumEntity_owner_isAdmin",
  "AlbumEntity__AlbumEntity_owner"."email" AS "AlbumEntity__AlbumEntity_owner_email",
  "AlbumEntity__AlbumEntity_owner"."storageLabel" AS "AlbumEntity__AlbumEntity_owner_storageLabel",
  "AlbumEntity__AlbumEntity_owner"."externalPath" AS "AlbumEntity__AlbumEntity_owner_externalPath",
  "AlbumEntity__AlbumEntity_owner"."oauthId" AS "AlbumEntity__AlbumEntity_owner_oauthId",
  "AlbumEntity__AlbumEntity_owner"."profileImagePath" AS "AlbumEntity__AlbumEntity_owner_profileImagePath",
  "AlbumEntity__AlbumEntity_owner"."shouldChangePassword" AS "AlbumEntity__AlbumEntity_owner_shouldChangePassword",
  "AlbumEntity__AlbumEntity_owner"."createdAt" AS "AlbumEntity__AlbumEntity_owner_createdAt",
  "AlbumEntity__AlbumEntity_owner"."deletedAt" AS "AlbumEntity__AlbumEntity_owner_deletedAt",
  "AlbumEntity__AlbumEntity_owner"."updatedAt" AS "AlbumEntity__AlbumEntity_owner_updatedAt",
  "AlbumEntity__AlbumEntity_owner"."memoriesEnabled" AS "AlbumEntity__AlbumEntity_owner_memoriesEnabled"
FROM
  "albums" "AlbumEntity"
  LEFT JOIN "albums_shared_users_users" "AlbumEntity_AlbumEntity__AlbumEntity_sharedUsers" ON "AlbumEntity_AlbumEntity__AlbumEntity_sharedUsers"."albumsId" = "AlbumEntity"."id"
  LEFT JOIN "users" "AlbumEntity__AlbumEntity_sharedUsers" ON "AlbumEntity__AlbumEntity_sharedUsers"."id" = "AlbumEntity_AlbumEntity__AlbumEntity_sharedUsers"."usersId"
  AND (
    "AlbumEntity__AlbumEntity_sharedUsers"."deletedAt" IS NULL
  )
  LEFT JOIN "shared_links" "AlbumEntity__AlbumEntity_sharedLinks" ON "AlbumEntity__AlbumEntity_sharedLinks"."albumId" = "AlbumEntity"."id"
  LEFT JOIN "users" "AlbumEntity__AlbumEntity_owner" ON "AlbumEntity__AlbumEntity_owner"."id" = "AlbumEntity"."ownerId"
  AND (
    "AlbumEntity__AlbumEntity_owner"."deletedAt" IS NULL
  )
WHERE
  (
    (
      "AlbumEntity"."ownerId" = $1
      AND "AlbumEntity__AlbumEntity_sharedUsers"."id" IS NULL
      AND "AlbumEntity__AlbumEntity_sharedLinks"."id" IS NULL
    )
  )
  AND ("AlbumEntity"."deletedAt" IS NULL)
ORDER BY
  "AlbumEntity"."createdAt" DESC

-- AlbumRepository.getAll
SELECT
  "AlbumEntity"."id" AS "AlbumEntity_id",
  "AlbumEntity"."ownerId" AS "AlbumEntity_ownerId",
  "AlbumEntity"."albumName" AS "AlbumEntity_albumName",
  "AlbumEntity"."description" AS "AlbumEntity_description",
  "AlbumEntity"."createdAt" AS "AlbumEntity_createdAt",
  "AlbumEntity"."updatedAt" AS "AlbumEntity_updatedAt",
  "AlbumEntity"."deletedAt" AS "AlbumEntity_deletedAt",
  "AlbumEntity"."albumThumbnailAssetId" AS "AlbumEntity_albumThumbnailAssetId",
  "AlbumEntity"."isActivityEnabled" AS "AlbumEntity_isActivityEnabled",
  "AlbumEntity__AlbumEntity_owner"."id" AS "AlbumEntity__AlbumEntity_owner_id",
  "AlbumEntity__AlbumEntity_owner"."name" AS "AlbumEntity__AlbumEntity_owner_name",
  "AlbumEntity__AlbumEntity_owner"."avatarColor" AS "AlbumEntity__AlbumEntity_owner_avatarColor",
  "AlbumEntity__AlbumEntity_owner"."isAdmin" AS "AlbumEntity__AlbumEntity_owner_isAdmin",
  "AlbumEntity__AlbumEntity_owner"."email" AS "AlbumEntity__AlbumEntity_owner_email",
  "AlbumEntity__AlbumEntity_owner"."storageLabel" AS "AlbumEntity__AlbumEntity_owner_storageLabel",
  "AlbumEntity__AlbumEntity_owner"."externalPath" AS "AlbumEntity__AlbumEntity_owner_externalPath",
  "AlbumEntity__AlbumEntity_owner"."oauthId" AS "AlbumEntity__AlbumEntity_owner_oauthId",
  "AlbumEntity__AlbumEntity_owner"."profileImagePath" AS "AlbumEntity__AlbumEntity_owner_profileImagePath",
  "AlbumEntity__AlbumEntity_owner"."shouldChangePassword" AS "AlbumEntity__AlbumEntity_owner_shouldChangePassword",
  "AlbumEntity__AlbumEntity_owner"."createdAt" AS "AlbumEntity__AlbumEntity_owner_createdAt",
  "AlbumEntity__AlbumEntity_owner"."deletedAt" AS "AlbumEntity__AlbumEntity_owner_deletedAt",
  "AlbumEntity__AlbumEntity_owner"."updatedAt" AS "AlbumEntity__AlbumEntity_owner_updatedAt",
  "AlbumEntity__AlbumEntity_owner"."memoriesEnabled" AS "AlbumEntity__AlbumEntity_owner_memoriesEnabled"
FROM
  "albums" "AlbumEntity"
  LEFT JOIN "users" "AlbumEntity__AlbumEntity_owner" ON "AlbumEntity__AlbumEntity_owner"."id" = "AlbumEntity"."ownerId"
  AND (
    "AlbumEntity__AlbumEntity_owner"."deletedAt" IS NULL
  )
WHERE
  "AlbumEntity"."deletedAt" IS NULL

-- AlbumRepository.removeAssets
DELETE FROM "albums_assets_assets"
WHERE
  (
    "albumsId" = $1
    AND "assetsId" IN ($2)
  )

-- AlbumRepository.getAssetIds
SELECT
  "albums_assets"."assetsId" AS "assetId"
FROM
  "albums_assets_assets" "albums_assets"
WHERE
  "albums_assets"."albumsId" = $1
  AND "albums_assets"."assetsId" IN ($2)

-- AlbumRepository.getAssetIds (no assets)
SELECT
  "albums_assets"."assetsId" AS "assetId"
FROM
  "albums_assets_assets" "albums_assets"
WHERE
  "albums_assets"."albumsId" = $1

-- AlbumRepository.hasAsset
SELECT
  1 AS "row_exists"
FROM
  (
    SELECT
      1 AS dummy_column
  ) "dummy_table"
WHERE
  EXISTS (
    SELECT
      1
    FROM
      "albums" "AlbumEntity"
      LEFT JOIN "albums_assets_assets" "AlbumEntity_AlbumEntity__AlbumEntity_assets" ON "AlbumEntity_AlbumEntity__AlbumEntity_assets"."albumsId" = "AlbumEntity"."id"
      LEFT JOIN "assets" "AlbumEntity__AlbumEntity_assets" ON "AlbumEntity__AlbumEntity_assets"."id" = "AlbumEntity_AlbumEntity__AlbumEntity_assets"."assetsId"
      AND (
        "AlbumEntity__AlbumEntity_assets"."deletedAt" IS NULL
      )
    WHERE
      (
        (
          "AlbumEntity"."id" = $1
          AND "AlbumEntity__AlbumEntity_assets"."id" = $2
        )
      )
      AND ("AlbumEntity"."deletedAt" IS NULL)
  )
LIMIT
  1

-- AlbumRepository.addAssets
INSERT INTO
  "albums_assets_assets" ("albumsId", "assetsId")
VALUES
  ($1, $2)

-- AlbumRepository.updateThumbnails
UPDATE "albums"
SET
  "albumThumbnailAssetId" = (
    SELECT
      "albums_assets2"."assetsId"
    FROM
      "assets" "assets",
      "albums_assets_assets" "albums_assets2"
    WHERE
      (
        "albums_assets2"."assetsId" = "assets"."id"
        AND "albums_assets2"."albumsId" = "albums"."id"
      )
      AND ("assets"."deletedAt" IS NULL)
    ORDER BY
      "assets"."fileCreatedAt" DESC
    LIMIT
      1
  ),
  "updatedAt" = CURRENT_TIMESTAMP
WHERE
  "albums"."albumThumbnailAssetId" IS NULL
  AND EXISTS (
    SELECT
      1
    FROM
      "albums_assets_assets" "albums_assets"
    WHERE
      "albums"."id" = "albums_assets"."albumsId"
  )
  OR "albums"."albumThumbnailAssetId" IS NOT NULL
  AND NOT EXISTS (
    SELECT
      1
    FROM
      "albums_assets_assets" "albums_assets"
    WHERE
      "albums"."id" = "albums_assets"."albumsId"
      AND "albums"."albumThumbnailAssetId" = "albums_assets"."assetsId"
  )
