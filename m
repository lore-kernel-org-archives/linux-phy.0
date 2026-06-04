Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFFCCCD6E6D
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 14:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IKhNckjwi5YBIFIiFFO7966jJRtZYFOI5LTzxGGRG+w=; b=HoQzzWekzegKZG
	7CuE0Y2B9MKz0ck1mAumkXc/MHZlqbbp/zkQUUrJpt5SEAS11FRKBBq/M01LLgNr1U6f95FBoowBU
	Sl0pWg+2l7KellIVbHunvvUMQsJwjK6SJR8IdPEQimilVZIrNAbz/woswcylUi6kib8CXBooZ85Ua
	flA+n8vkPnMCNQE3GajROT9P/R9S+d54BaKumnC/WbKFV27AOa0veZIdUx9rqiolS4n2lrL9yF1tq
	Zer8OhZJu26dn17RVgSYI3rkN8S/r6f/ytLJJ7gO9QxZC+fch4EWth8ZsSMFreG4yTYNheCZjEuEs
	zPIZ45KeWlthYzhlvSjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV9E5-0000000GueJ-0ubU;
	Thu, 04 Jun 2026 14:39:17 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV9E2-0000000GudD-2ba4
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 14:39:16 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-36b9033d230so450395a91.1
        for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 07:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780583953; x=1781188753; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DOMV3x2yG7P0NW9CHIRVjoVTM78K6MUr+RoZlGHPHew=;
        b=UzwT9riIeM56+6Vb25vz/60o3Vrg7wiJzxHQkQbUHDpZixiDlE0wtUId3MibjKL7Sb
         25fQByEJAXBEqsXmIqD9pL1XODXfaOr6z1+mvF8swYDSV75RAdXSD5XokdNQ8tBSI05v
         5yLgkTupNohlDdM2RnTk1Hh8nO8my5W13Zp6BCapehALeIBA4vUK5i/xTyelE9aFWJ6c
         AS93dhWsSsUeDGgP2qUYKIoRMkSTDcldS3T5lM2j0DYMJFMRXezn3BkRdHmTCP3GfY+9
         jUSkByEPOi1tBGAwLqLq27g57WVP+kkFLyq17E1v+s9k2Sy+mdjbbybdFwWILNF8otwo
         W3Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780583953; x=1781188753;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DOMV3x2yG7P0NW9CHIRVjoVTM78K6MUr+RoZlGHPHew=;
        b=MLyOe9ofb33g4c+bQxxILm4u+t0A4OPLHy/QCl6oAm6Gq7NdPFr640KtpUbyoG6DAp
         Bgs5g7RBtqUATZox4lQNhjVU36mcB2zAShHCxMjTSaY9YPQBchmpDli+O3smcpX0FVDh
         uOi6d84QyHqq6AxEnVYhExYnh8M79NtVLkBeUwzFQg3adO78ULJu06S0j3ytkkZhqsna
         lZUypJ6QxftCvYEjshBsqTOqiCTQjgB8amm7Cr0Mfz0U/C0T11C/rw41UHp3ZrazzdGm
         yQToH1mby82LW4tQ3oWyYFbpvm8S8NuXnfXhSBzawmPVm5hVm9WL4jqrQ2pS3lGG/WS1
         Vxvg==
X-Gm-Message-State: AOJu0YwB7jD2kbKt9F5utoefPgEMHbMK4bQXUw0OBP4Z1hviwKulEoSV
	NRpyjcao9pp7wZBDrIEeIQiosUpFOPXuN2F8Qr9clg3Z9HS1GtDsY2Tr
X-Gm-Gg: Acq92OHcJNdbLCyP3WD9m+jT6UifRTjBy8RrikBZ4aYO8VMLQpDHOJvqChE0x4gv5CA
	zJUepQhVAUMmZs0QKBdhS86U7LqiBcOARTeW8LSnJKb8iRqyA3s0PnnI0cFlRftlBCN/cfMj6wz
	D1zFV0xKFfEO2M39bn6tzcPn1gPU7I1GDvr0TxfvG3lo/0RdNzGjvLepjtlMSvJY8N++GxEPIRF
	3PC+T2VH26k3gs2jgM2fjsktVLnJcohlcZJjvm0a3PoAL8bsnXYNcFi/PexM8H4QUXKAtDlMqSK
	CgRdG0JAGT24/CGBD+4AwOeCiYsaBpBudGfsP0h5AB0B9ATh/yFbrF4MZ3BYIuwWyxVJZgpw3jU
	u/wTcW3CJRWoaD4R+rUkmzSU32WZ5mS4jhD0BFiT7OPfE2hCl3++byYRNMQQhfWnxPKeU0EPg4+
	MeGTNsfbPC09dvfWQU/3H426sg7Dqid0lb4xAqO984q5Z7bqEbjN61K3pli/HrK1rcOOVBP3Mh8
	/o7n/ZdtYYTMMcnRqzJNEjd9nIwkU2xXaB2q+c=
X-Received: by 2002:a17:90b:58d0:b0:36b:769c:c037 with SMTP id 98e67ed59e1d1-36f76d559d7mr2969085a91.5.1780583953117;
        Thu, 04 Jun 2026 07:39:13 -0700 (PDT)
Received: from junjungu-PC.localdomain ([223.166.246.30])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36f6bf830b2sm3118696a91.4.2026.06.04.07.39.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 07:39:12 -0700 (PDT)
From: Felix Gu <ustc.gu@gmail.com>
Date: Thu, 04 Jun 2026 22:39:07 +0800
Subject: [PATCH] phy: freescale: imx8qm-lvds-phy: Fix missing
 pm_runtime_disable() on probe error path
MIME-Version: 1.0
Message-Id: <20260604-lvds-v1-1-b8e1ff1bdee7@gmail.com>
X-B4-Tracking: v=1; b=H4sIAAqOIWoC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDMwMT3ZyylGLdFDPz5CQzQ8uUNENzJaDSgqLUtMwKsDHRsRB+cWlSVmp
 yCUivUm0tALOMGkpoAAAA
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780583949; l=2666;
 i=ustc.gu@gmail.com; h=from:subject:message-id;
 bh=k21HcNtRfGOfdGEdLFtlrPAUJg8uMPRTOaO8fu5/tX0=;
 b=jhHig4d+JEEW8lyIX24qIbqNx+rDwN/vC6NWkW86ZaeYwEzeYggjta+nO9Lfo878+ax0rH+ol
 7jOKNHUbE0iDMCul78SSZxFsmrifomdo6iadGIx5pvJmozsEMf3g6HN
X-Developer-Key: i=ustc.gu@gmail.com; a=ed25519;
 pk=fjUXwmjchVN7Ja6KGP55IXOzFeCl9edaHoQIEUA+/hw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_073914_670696_58FEF616 
X-CRM114-Status: GOOD (  13.53  )
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
Signed-off-by: Felix Gu <ustc.gu@gmail.com>
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
