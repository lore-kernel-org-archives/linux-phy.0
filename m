Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04573CD6E79
	for <linux-phy@archiver.kernel.org>; Fri,  5 Jun 2026 11:57:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tij8F8YoOeLm3pwgUnCKPILxrXoQj2KUjhyKKxpwRXI=; b=udpVOQHjTF5tQv
	HPteRXX1+6ceVMqO8l1EMRUnIe4Dzc7YBvtP5KeAlqAKSd64Vuzk+4WEDK/M8ESlejL8m7gTbpPgA
	2F4j2BUyaLlwEytG/2NYNp3KPdA+U1broSFdgtim8236QBmYtYWtCYIhvTJFORwa71QsMlnrVsz4+
	aXIteUHnx3cDS56f2cPoEYZ0l4QeDCqHdwxq/U5GgeZx9wt9aD0tjdYKmiNVGT5EmqRnKCf+gQOB3
	BXeFeZEo1Yn5+SsIPcO6ZbCn2IImA1rjvxkQmCpf1QZBJXTcXXVMofH2p8x4bxg+GT3UMxIaZR3P+
	Vx8HQO3aMyIzfzHr6YbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVTB3-00000000aEt-05Cf;
	Fri, 05 Jun 2026 11:57:29 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVTB0-00000000aE4-2sk3
	for linux-phy@lists.infradead.org;
	Fri, 05 Jun 2026 11:57:28 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-2bf2e8ccca1so13407435ad.0
        for <linux-phy@lists.infradead.org>; Fri, 05 Jun 2026 04:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780660646; x=1781265446; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eF8yh/ZhaXDNZn8doXue2BXI/ROFqbRF9hALOIAEVU4=;
        b=WAHItKJFd5/DmLzgf+iz5pmHzbNBCUDSL0xK4afI90/xq1FpPryfBnnqaM/rLamaxt
         pLNheWW6NOoeck/IlDjbzqnJcBLNV0eZ7ID5kgTXrUUMenNEsVNz9MOkr4t02NFSowJ+
         bo6TxuJwYlulIPCGskShvGfnFVvaJyKyzm1FtpDMJLqPQbyetsltMwoC0KOgF2tqOGYL
         gCBqSTY4MDBZ2GzvDi1pZYBmnYxkW40lJ46WHRVj1DdEvgkeswmUsHMYpPVinVR/0IzW
         PdrL+6uc4LOoioHZhX3P+h1mTSTweikDf3LQtF+CUNBa9PSN6ysvmrlqPCWOJDC+o3UN
         oi7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780660646; x=1781265446;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eF8yh/ZhaXDNZn8doXue2BXI/ROFqbRF9hALOIAEVU4=;
        b=DhtnNspDXFWHijKEPFrXvl+BNQOQoZlST1+LFOy0yNWda/WHeiufAyvPfVZu/kFwyN
         MugdmtlvCWaYMVK9ZszoT64Mp5I7ydlf8SAI/xPGxj9rlBaLofBR9sUzNsiiUUUbE0Wm
         TLWibnQrAOyfuEEoZETKNCmq9uOmRAoYs5e/AUTHufwNoNmWGEqSXOXJlSZDgXc4EDNa
         VMi4nSD5+lQ3Drf1c9wLvSyLcPlVjDh+D36tDF57/IcWYVW0Ox48rkN5UbNpcvbN3nly
         V5pSeqczg+vsolOJG/EnKh202W3u5StdD2885JK8AdcRDRyXPaDWzn4DCttiX/qOjjcx
         QcFA==
X-Gm-Message-State: AOJu0YwC5N/YM/rZIhwc4/JpIzxndUSKS3XI3/Hu9RSoD2NHv38CU6yE
	TkZISEVAkkSob0gQVTW6AhbE6aUoVfInlHaMqffWpCxmow/AHTYYTCUl
X-Gm-Gg: Acq92OFPChwguGRb+bN9aAX4TOj4EfkQeA3QcYLRtVCBapfRroPjkSqeo9YEgTIiEC+
	cd2tHdH1Bd9SucVTaUR+RK87p/cDGxob5ZsoVqJ8xAmCRPnerYifHGLdPY9eUBHrVUFD/OjW2kA
	NpnWDn+locFmumndQbo76fG28r+EzJsz+u8OQ2gsgo29DPvpRpvYTvjX4b4HxVP01Oc/9Lgrw23
	Q2uYPs093SuU1dPpW89c8sbEKiVhdgK7W0vffdAoRygXjiCjte3J/Rp1s24+Dx7riteQMF+8BrB
	RCr6CMJvwQ2m2QoIkBVBnMtaMqu4gf4QT2hjVQDBBqLOfHoDWb68EfbvpLFW2DvT64PtjSaycCp
	WeSwPG7jryffbItUAixs+l6V8aKZNtAs4SSR66rHnnDWIO/Ty61mbCRvAb7Zmu+ms4/3Rx36hOK
	l/Sz2LGKtVM03j0JSBbTXWcPHb6/5R/YsxcHjMjHwTlKeTmzYMkUEUHQZZdPvDkLzv02BUlY7mv
	h5WF/RZD22k4mFfqhC1B4F1HiraEwQRCdBXFes=
X-Received: by 2002:a17:903:2d0:b0:2c0:bcff:e18c with SMTP id d9443c01a7336-2c1e833c99dmr35270255ad.37.1780660645598;
        Fri, 05 Jun 2026 04:57:25 -0700 (PDT)
Received: from junjungu-PC.localdomain ([223.166.246.74])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164f6d45csm127241615ad.14.2026.06.05.04.57.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jun 2026 04:57:25 -0700 (PDT)
From: Felix Gu <ustc.gu@gmail.com>
Date: Fri, 05 Jun 2026 19:57:20 +0800
Subject: [PATCH v2] phy: freescale: phy-fsl-imx8qm-lvds-phy: Fix missing
 pm_runtime_disable() on probe error path
MIME-Version: 1.0
Message-Id: <20260605-lvds-v2-1-3ce7539d1104@gmail.com>
X-B4-Tracking: v=1; b=H4sIAJ+5ImoC/12Nyw6CMBBFf4XM2hqmMUVd+R+GBW2nMIaH6WCjI
 f13AXcuT3LuuQsIRSaBa7FApMTC07iCPhTgumZsSbFfGXSpTWnKk+qTF+VN5azBiw9Ywao+IwV
 +75l7/WN52Qe5edtuRscyT/Gz/yTcvL9kQoXKnglDQOuJqls7NNwf3TRAnXP+AsrHQS+qAAAA
X-Change-ID: 20260604-lvds-d67cb619df17
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Frank Li <Frank.Li@nxp.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Liu Ying <victor.liu@nxp.com>
Cc: linux-phy@lists.infradead.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Felix Gu <ustc.gu@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780660643; l=3323;
 i=ustc.gu@gmail.com; h=from:subject:message-id;
 bh=1jnluH9nXmYHy1Syp5EUFcWQBdyNd19PmSpPNf0WAEY=;
 b=7iDgxZg0jOVAtl0CfL5XzlraW/8xEH/XzKMKF01We1Z9PtFrPxoWEZ7Gws4uWlANtj/DvKuXF
 kE/kdaqfFtiAU//wXVWMgQLI/oqzCJ0IIZknDig3s4ZhBATn21hx99I
X-Developer-Key: i=ustc.gu@gmail.com; a=ed25519;
 pk=fjUXwmjchVN7Ja6KGP55IXOzFeCl9edaHoQIEUA+/hw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260605_045726_726329_CA2F9056 
X-CRM114-Status: GOOD (  15.77  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

If mixel_lvds_phy_reset() fails in probe after pm_runtime_enable(),
the function returns directly without calling pm_runtime_disable(),
leaving runtime PM permanently enabled for the device.

Fix this by using devm_pm_runtime_enable() so that cleanup is
automatic on any probe failure or driver unbind. This also allows
removing the manual err label and the .remove callback.

Fixes: 06ff622d61d2 ("phy: freescale: Add i.MX8qm Mixel LVDS PHY support")
Acked-by: Liu Ying <victor.liu@nxp.com>
Signed-off-by: Felix Gu <ustc.gu@gmail.com>
---
Changes in v2:
- Change the patch's subject prefix requested by Liu Ying.
- Add Liu Ying's Acked-by.
- Link to v1: https://patch.msgid.link/20260604-lvds-v1-1-b8e1ff1bdee7@gmail.com

To: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
To: Frank Li <Frank.Li@nxp.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
To: Pengutronix Kernel Team <kernel@pengutronix.de>
To: Fabio Estevam <festevam@gmail.com>
To: Liu Ying <victor.liu@nxp.com>
Cc: linux-phy@lists.infradead.org
Cc: imx@lists.linux.dev
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/phy/freescale/phy-fsl-imx8qm-lvds-phy.c | 24 +++++++-----------------
 1 file changed, 7 insertions(+), 17 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-imx8qm-lvds-phy.c b/drivers/phy/freescale/phy-fsl-imx8qm-lvds-phy.c
index ece357443521..c662f91e598c 100644
--- a/drivers/phy/freescale/phy-fsl-imx8qm-lvds-phy.c
+++ b/drivers/phy/freescale/phy-fsl-imx8qm-lvds-phy.c
@@ -345,7 +345,9 @@ static int mixel_lvds_phy_probe(struct platform_device *pdev)
 
 	dev_set_drvdata(dev, priv);
 
-	pm_runtime_enable(dev);
+	ret = devm_pm_runtime_enable(dev);
+	if (ret)
+		return ret;
 
 	ret = mixel_lvds_phy_reset(dev);
 	if (ret) {
@@ -355,17 +357,15 @@ static int mixel_lvds_phy_probe(struct platform_device *pdev)
 
 	for (i = 0; i < PHY_NUM; i++) {
 		lvds_phy = devm_kzalloc(dev, sizeof(*lvds_phy), GFP_KERNEL);
-		if (!lvds_phy) {
-			ret = -ENOMEM;
-			goto err;
-		}
+		if (!lvds_phy)
+			return -ENOMEM;
 
 		phy = devm_phy_create(dev, NULL, &mixel_lvds_phy_ops);
 		if (IS_ERR(phy)) {
 			ret = PTR_ERR(phy);
 			dev_err(dev, "failed to create PHY for channel%d: %d\n",
 				i, ret);
-			goto err;
+			return ret;
 		}
 
 		lvds_phy->phy = phy;
@@ -379,19 +379,10 @@ static int mixel_lvds_phy_probe(struct platform_device *pdev)
 	if (IS_ERR(phy_provider)) {
 		ret = PTR_ERR(phy_provider);
 		dev_err(dev, "failed to register PHY provider: %d\n", ret);
-		goto err;
+		return ret;
 	}
 
 	return 0;
-err:
-	pm_runtime_disable(dev);
-
-	return ret;
-}
-
-static void mixel_lvds_phy_remove(struct platform_device *pdev)
-{
-	pm_runtime_disable(&pdev->dev);
 }
 
 static int __maybe_unused mixel_lvds_phy_runtime_suspend(struct device *dev)
@@ -432,7 +423,6 @@ MODULE_DEVICE_TABLE(of, mixel_lvds_phy_of_match);
 
 static struct platform_driver mixel_lvds_phy_driver = {
 	.probe = mixel_lvds_phy_probe,
-	.remove = mixel_lvds_phy_remove,
 	.driver = {
 		.pm = &mixel_lvds_phy_pm_ops,
 		.name = "mixel-lvds-phy",

---
base-commit: a225caacc36546a09586e3ece36c0313146e7da9
change-id: 20260604-lvds-d67cb619df17

Best regards,
--  
Felix Gu <ustc.gu@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
