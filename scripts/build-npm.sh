rm -rf lib

echo "1"
npx babel -d lib ./modules
echo "2"
npx sass css/:lib/css/ --no-source-map --style=expanded
echo "3"
cp css/antd.less lib/css/antd.less

cp modules/index.d.ts lib/index.d.ts
cp modules/config/antd/index.d.ts lib/config/antd/index.d.ts
cp modules/config/material/index.d.ts lib/config/material/index.d.ts
cp modules/config/mui/index.d.ts lib/config/mui/index.d.ts
cp modules/config/bootstrap/index.d.ts lib/config/bootstrap/index.d.ts
cp modules/components/widgets/antd/index.d.ts lib/components/widgets/antd/index.d.ts

# find lib -type d -name __tests__ | xargs rm -rf
