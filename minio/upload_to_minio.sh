set -e

# ---- Config ----
MINIO_ALIAS=minio
MINIO_ENDPOINT=http://localhost:32001
MINIO_ADMIN_ACCESS_KEY=admin
MINIO_ADMIN_SECRET_KEY=password123

BUCKET_NAME=my-bucket
#LOCAL_PATH=~/Downloads/deepseek-llm-7b.tar.gz
LOCAL_PATH=~/Downloads/deepseek-r1-distill-qwen-1b.tar.gz
# ----------------

# 1. Login to MinIO as admin
mc alias set "$MINIO_ALIAS" "$MINIO_ENDPOINT" \
  "$MINIO_ADMIN_ACCESS_KEY" \
  "$MINIO_ADMIN_SECRET_KEY"

# 2. Create bucket
mc mb "$MINIO_ALIAS/$BUCKET_NAME"

# Enable versioning on the bucket
mc version enable "$MINIO_ALIAS/$BUCKET_NAME"

# 3. Upload files to the bucket
mc cp "$LOCAL_PATH" "$MINIO_ALIAS/$BUCKET_NAME"