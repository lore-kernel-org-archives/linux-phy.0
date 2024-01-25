Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1C08C47258
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jan 2024 23:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8LZu8Uw6lOfT7NInT6kRzXnLYFpxnMJWfEcVwLv9giI=; b=nBZkMASNJfEnwJ
	XLOD9X01pYnIJLHCjaph2kkvLEIAjir033FrjE0YD7ET7SD06ky/ERe6xmuERla8c/CJ5vUDDun6S
	d9WX/Z96h+UZycaOiNXqONJYDn57x4RnivCMonw47CRpxP9sBG/RcXugU1dgcHpDyGkTUUvGwxS24
	Eh28dy1ndHlMBNmcIWVEMnn4dZh3kfDZ9WXbocZGEf2LdOJtlvxV8zp+/cCslqPMCAHtWYW9iYYrO
	7WycVvNvaeUKFX/bQG81uBmnIm38RiD6Ax+znZIvafkLBTWNCBnFTBTMpyH4C3kIvsgqEYgxR4csk
	q+CmcAOx041st6G5hlrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT93o-00000002RQc-28vh;
	Thu, 25 Jan 2024 23:23:04 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT93k-00000002RLr-3hVB
	for linux-phy@lists.infradead.org;
	Thu, 25 Jan 2024 23:23:02 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-510218ab26fso1191025e87.2
        for <linux-phy@lists.infradead.org>; Thu, 25 Jan 2024 15:22:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706224978; x=1706829778; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SGy40y+DJhjEMN+AjL1FrBUXPhOZC7PWKk4E9TredW0=;
        b=yncZADQ0Fbha/WpQ6RzKF3BDSg3nPaMDqJad+MmzVUiBK+O+HeZOPDO2U8UXnUU9A7
         DXPhMDzKSvqM64b38MdpAAIBVKbLTgHbH0ms8vdu22LJE0fsJfqeeQHVXjmUR7Qwf3Up
         IvEQt0xanNhqUDNYPoCTe791r9HfwhvohJ5RpZyod0Un2p5HxMWGha9A/FjurvcqmiVO
         e5hAkR7TksHbrZv90NrFy8MB3E1gSslzUC9WS2sZdu6IkR8jei+G0AVl+5CE0dXTVwRL
         KqSLgPidPRIQU9ahTRa7TLbo5Tbkt9ctHS8gHjhKAMHAIdU4a05LO5l2G1rw4dHmnCgu
         HQvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706224978; x=1706829778;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SGy40y+DJhjEMN+AjL1FrBUXPhOZC7PWKk4E9TredW0=;
        b=sZC6aoT3fCWCdcxkAHb9a7i3j02ZsWQRUIej4mtbz6GNq3HgV1p8ZT1AxMpMLbCnfx
         JorXnf35lO6gDTgp/1OEmZVHVw+ks6l1mpqq/MLM/LqLGGq4mOziDVoWKCzntOX7UmRb
         8CLQj/vdhcYLbB3c2CRov9djHLigQNNLq4RHrA6XfNv2HYr+wntJxLiDTnRfBHplCEmo
         d2Z7UKgVrFNS8t+Hd17KX3gQr2ZxvqdI57rjFzoNcyL1ZZ0ccJN4LjoWU5GfSIGe61G+
         xaJ99CCgL2QxNicIqx7YosBbJPV1TonF6S97R0b4OCwNNhP9DhjLg7n5JE6FOQYd2GaB
         eeDw==
X-Gm-Message-State: AOJu0YzGCaB4xP26Kl+eWd53Y1QK4Cu3VB0YDwxyf+dk/KYP4OWDgcch
	kwYoUxLeOj1HNzqzV5NiOFH8qqvf4os+6I44wVyCtLgOw+qfVQGVgsx8VEt5SrY=
X-Google-Smtp-Source: AGHT+IE4iGHS9KrnFDCMQyNMoiXmqSv4z76PvJ9VwuHCiM/KROdPzwno+0RBx5vYxu/xHJRuNMlQwQ==
X-Received: by 2002:a05:6512:ba1:b0:50e:76ac:180b with SMTP id b33-20020a0565120ba100b0050e76ac180bmr702849lfv.53.1706224977937;
        Thu, 25 Jan 2024 15:22:57 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id k3-20020a05651210c300b0050e6df07728sm3920lfg.180.2024.01.25.15.22.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 15:22:57 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 26 Jan 2024 01:22:35 +0200
Subject: [PATCH v2 1/8] phy: qcom: qmp-usb-legacy: drop single-lane support
MIME-Version: 1.0
Message-Id: <20240126-phy-qmp-merge-common-v2-1-a463d0b57836@linaro.org>
References: <20240126-phy-qmp-merge-common-v2-0-a463d0b57836@linaro.org>
In-Reply-To: <20240126-phy-qmp-merge-common-v2-0-a463d0b57836@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3864;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=SZKxdwmgRDVGE2QNU9L/DH0vzSTWk666yp6Yx5cCxbg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlsu1PWfGjiC6cUWEl6nWgeyD9F3APUjr7JF7om
 5gBs391HM+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZbLtTwAKCRCLPIo+Aiko
 1Xp/B/9sRMgxlws4Ls1xVYECXrUiBrHSoDDlztt/vPPyDz/GWSpgnBY0eGPUR+5bNINiXqhY56K
 nRxJV80Zoa13ELWGI1YWt8wYxh40OquT4/HDRTkaMSQwGocUvwm3Z/epiAcbt8DLb9psWZwD+oK
 3EStiAJGfbCgXdbqS5BiVX3lnKukRXk8stto8B/edyX/86mThNhJzz9hqC8WIvGtbxPifRDmrmE
 JdVQF4NNcaShsweEKlbU/nuPikEZCBsOtOQuSgynPtLgQqgqjHV5rrOPu/mzc8opkZsrJYwDvUZ
 l2udoHC20QhNBUhah9fkGuG7ok/7oJ3PekP/wGtamGMntA1F
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_152300_984503_528C53B6 
X-CRM114-Status: GOOD (  11.69  )
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

All PHYs supported by usb-legacy have two lanes. Drop support for
single-lane configuration.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c | 37 +++++++-------------------
 1 file changed, 9 insertions(+), 28 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
index cf466f6df94d..2f8891bc3da8 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
@@ -507,8 +507,6 @@ struct qmp_usb_legacy_offsets {
 
 /* struct qmp_phy_cfg - per-PHY initialization config */
 struct qmp_phy_cfg {
-	int lanes;
-
 	const struct qmp_usb_legacy_offsets *offsets;
 
 	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
@@ -621,8 +619,6 @@ static const char * const qmp_phy_vreg_l[] = {
 };
 
 static const struct qmp_phy_cfg qmp_v3_usb3phy_cfg = {
-	.lanes			= 2,
-
 	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_serdes_tbl),
 	.tx_tbl			= qmp_v3_usb3_tx_tbl,
@@ -641,8 +637,6 @@ static const struct qmp_phy_cfg qmp_v3_usb3phy_cfg = {
 };
 
 static const struct qmp_phy_cfg sc7180_usb3phy_cfg = {
-	.lanes			= 2,
-
 	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_serdes_tbl),
 	.tx_tbl			= qmp_v3_usb3_tx_tbl,
@@ -661,8 +655,6 @@ static const struct qmp_phy_cfg sc7180_usb3phy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
-	.lanes			= 2,
-
 	.serdes_tbl		= sm8150_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_serdes_tbl),
 	.tx_tbl			= sm8150_usb3_tx_tbl,
@@ -684,8 +676,6 @@ static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
-	.lanes			= 2,
-
 	.serdes_tbl		= sm8150_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_serdes_tbl),
 	.tx_tbl			= sm8250_usb3_tx_tbl,
@@ -707,8 +697,6 @@ static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8350_usb3phy_cfg = {
-	.lanes			= 2,
-
 	.serdes_tbl		= sm8150_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_serdes_tbl),
 	.tx_tbl			= sm8350_usb3_tx_tbl,
@@ -874,10 +862,8 @@ static int qmp_usb_legacy_power_on(struct phy *phy)
 	qmp_usb_legacy_configure_lane(tx, cfg->tx_tbl, cfg->tx_tbl_num, 1);
 	qmp_usb_legacy_configure_lane(rx, cfg->rx_tbl, cfg->rx_tbl_num, 1);
 
-	if (cfg->lanes >= 2) {
-		qmp_usb_legacy_configure_lane(qmp->tx2, cfg->tx_tbl, cfg->tx_tbl_num, 2);
-		qmp_usb_legacy_configure_lane(qmp->rx2, cfg->rx_tbl, cfg->rx_tbl_num, 2);
-	}
+	qmp_usb_legacy_configure_lane(qmp->tx2, cfg->tx_tbl, cfg->tx_tbl_num, 2);
+	qmp_usb_legacy_configure_lane(qmp->rx2, cfg->rx_tbl, cfg->rx_tbl_num, 2);
 
 	qmp_usb_legacy_configure(pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
 
@@ -1231,20 +1217,15 @@ static int qmp_usb_legacy_parse_dt_legacy(struct qmp_usb *qmp, struct device_nod
 	if (cfg->pcs_usb_offset)
 		qmp->pcs_usb = qmp->pcs + cfg->pcs_usb_offset;
 
-	if (cfg->lanes >= 2) {
-		qmp->tx2 = devm_of_iomap(dev, np, 3, NULL);
-		if (IS_ERR(qmp->tx2))
-			return PTR_ERR(qmp->tx2);
-
-		qmp->rx2 = devm_of_iomap(dev, np, 4, NULL);
-		if (IS_ERR(qmp->rx2))
-			return PTR_ERR(qmp->rx2);
+	qmp->tx2 = devm_of_iomap(dev, np, 3, NULL);
+	if (IS_ERR(qmp->tx2))
+		return PTR_ERR(qmp->tx2);
 
-		qmp->pcs_misc = devm_of_iomap(dev, np, 5, NULL);
-	} else {
-		qmp->pcs_misc = devm_of_iomap(dev, np, 3, NULL);
-	}
+	qmp->rx2 = devm_of_iomap(dev, np, 4, NULL);
+	if (IS_ERR(qmp->rx2))
+		return PTR_ERR(qmp->rx2);
 
+	qmp->pcs_misc = devm_of_iomap(dev, np, 5, NULL);
 	if (IS_ERR(qmp->pcs_misc)) {
 		dev_vdbg(dev, "PHY pcs_misc-reg not used\n");
 		qmp->pcs_misc = NULL;

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
