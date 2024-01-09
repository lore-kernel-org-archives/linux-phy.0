Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A37AC4707B
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jan 2024 03:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8LZu8Uw6lOfT7NInT6kRzXnLYFpxnMJWfEcVwLv9giI=; b=U1vPFJIxAp/ecG
	W3qWyKTzMThsXFtJ+XP6F8exrs5SWQx7aXRsPRm6D2sp9VGiXb3tDpkFzZA3aGVa0J7+yXTWdSbHb
	B8U6xlcDogthclqVez7JYB1U3xUWtVGa/OVCPKZ8yOWbt0Xk7Ni5CBnafDZSq3TarJnpiNgcQPgkP
	TYJOnAhbzaxugCrF/+p9wz0bgzEcAIzdsRyS2wnF4+0XFDJOmn4IGkSR6gcj7vHl7xJel989B6fNs
	OE9SwUYZ/oMo6Up0GuXMzu3X8eOqI939lr6ZALG2EFgFW8e5Z/mK3N8/6nTPUeaEBQE3BFHkZzNw4
	oV1+EglmJsgipKwxBT/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rN2PX-006kro-0i;
	Tue, 09 Jan 2024 03:04:15 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rN2PS-006knN-0n
	for linux-phy@lists.infradead.org;
	Tue, 09 Jan 2024 03:04:12 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2cd0db24e03so26641261fa.3
        for <linux-phy@lists.infradead.org>; Mon, 08 Jan 2024 19:04:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704769443; x=1705374243; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SGy40y+DJhjEMN+AjL1FrBUXPhOZC7PWKk4E9TredW0=;
        b=y/8Y9AHrJP1NX8v6ZPiajFlXZOGy1dczoh87B6Rk/J550wDn5BTdXUV6WCreLDJ+U8
         nZ+YgxCcectBI145eDFVIYLxQz4rP1HdR1RGoC/CCBGjJ3OqvuXSyr9ad5zIV7S+Fxm4
         rUDkNRnxOwRKN8ykm04fqkFGb+pZrTaM/0oc+wClEitD22zvztO8gvIWBquScbwFSOrW
         LHkgUIWvnkR42peQw+dD370xARK++owEiFRBCSvuO9B+gl/ejCQD3faIEb20AF/epYK/
         WyovmsA+9udL/KOIB2efPggRcBiqgCSp7rE35RVZrw8wBBG1lm9UAzKfp0MEGmKFqNR8
         CiLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704769443; x=1705374243;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SGy40y+DJhjEMN+AjL1FrBUXPhOZC7PWKk4E9TredW0=;
        b=E7KW51WPIUxdDsNL/g6J0PNBYC6yXDPo7mNrOCV4KEuXgJqO5pi8AEukRkwG2mHABm
         xDnoaeFk6WMqBClTWTnHbWpMLACovyYTeiNZgAa7BOcdARMaU+QKxFmUgZBxbswLwnns
         dHHWXJVeyuPkrYL48ZLViPFBs/aWG6wMO25XH/YnVXXAgh8wtsFOq/MV1ifPyIrbNM6x
         KthCLqjf1Wymtp9NiW2z3haDG2qFzkiesZJbjkMcfUk/a6YwaJ9kXxfFZexHqbAN6FNe
         JJGrpPm5mKFnU2HGQiZY1bxYZzpeiGjlR72UuQw8f8DxfDC1H+9+LeZGjYWq3Zfrl5i/
         0RlA==
X-Gm-Message-State: AOJu0Yw5QK0bPI0gr2FxGQMiryQtiB3EYlsg0ZfsdrYDaIBrbKlZw4Hs
	VFCnG9vDXyj9ss/WVfqwivPz/+fpJDV10g==
X-Google-Smtp-Source: AGHT+IGqo535kQT18Z6ElJJhpTvAsLtX7Pi/Cy/n+Rddw5q20dSNefDAlZkXMUDG+zNCkjOQ9U+zkA==
X-Received: by 2002:a2e:7c03:0:b0:2cd:c2c:1c5 with SMTP id x3-20020a2e7c03000000b002cd0c2c01c5mr892727ljc.158.1704769443329;
        Mon, 08 Jan 2024 19:04:03 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id g30-20020a2e391e000000b002cd1ad3b11csm176920lja.42.2024.01.08.19.04.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jan 2024 19:04:02 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 09 Jan 2024 05:03:59 +0200
Subject: [PATCH 1/8] phy: qcom: qmp-usb-legacy: drop single-lane support
MIME-Version: 1.0
Message-Id: <20240109-phy-qmp-merge-common-v1-1-572899a14318@linaro.org>
References: <20240109-phy-qmp-merge-common-v1-0-572899a14318@linaro.org>
In-Reply-To: <20240109-phy-qmp-merge-common-v1-0-572899a14318@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3864;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=SZKxdwmgRDVGE2QNU9L/DH0vzSTWk666yp6Yx5cCxbg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlnLegjj+E2M6XrnsswGGZ8Gvs4QQHOLUtxrPwO
 6rblChhb4yJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZZy3oAAKCRCLPIo+Aiko
 1QTJCACzkxaoZ5f3DnbMPEQP9iSx4/mQ8yi5L4ZfUvEFBNnAggu5/ArXZNTPqZP5PfiXhag8O4p
 q2VMhgFsbtzOCvPl6Fb4jfvKHS8NdnemCMlVIADOePvpwyV6CcVlFFRr1ax4N6yCXpflsIeW1De
 z2YmkjQk7rsjm250Oz9ln500RRzKPw+KciCe//fooKcfbO1h4UM90Oyaus6Hqoi/cZfQCJmqUh1
 78jMpwz1m6N2Fj72Qrhb6P3RZJ28va4EI1txy/cgMKH9A0VSoTSUaHzdfW7u5dIW9BQKIG6Nvkt
 IVS4XluKr0Lpk+Kukrk/jUeICXqIGkW+sR2hWDpOnk6CJYQi
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_190410_287763_07CD76DB 
X-CRM114-Status: GOOD (  11.59  )
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
