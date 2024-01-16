Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F740C47DA6
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jan 2024 01:11:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7XVDmtjL/nqQjcyujmEY+cWyNnpvKk7wc7AtTrtERBM=; b=0+fJCps4VKzajd
	ZBlTdOFo88hOmfy3Pj6YgtfHmJTfWNM3KwiWYA9CAK7iaKt7whN3vlD+JfTMUtQBYmhiFSXZ0BSut
	F/EzWRfj0+voDrPu6D8gUmeo2awnzsg9K0/gwmnM58sB0GU+Gf7nFoVaZBK19vErA03rkF+QHumI2
	vRYhF70bNEURxbrf4Ycr6szROz4bPwEQ5J4epLbgLkMQLEKcFV0+PAhFS+pJBmf2eBMkKB0TVobOZ
	1RMWHd43xwcP26g0LWMxGbVTptmLT3WFYr4iCkGhrM+Ui5DG6vsdHv+lZ7sm6g7SPHyi8Z8P9nKiU
	ZqYiRcJUWYZVLwkadRrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPXz9-00AeDJ-0I;
	Tue, 16 Jan 2024 01:11:23 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPXz5-00AeAH-2Z
	for linux-phy@lists.infradead.org;
	Tue, 16 Jan 2024 01:11:21 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2cd1ca52f31so107421551fa.3
        for <linux-phy@lists.infradead.org>; Mon, 15 Jan 2024 17:11:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705367476; x=1705972276; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J5SAl7h8gFScgWdY2BB7MUIpGVN5ls88lp1PxJmfDXY=;
        b=asalbV5WyEe6rZakhTzEoo1V9iqEMLoQI3rObxJROpEVRMQHvoa5GnngH70w9xTBCN
         Xs78+cvXgJ8j3Ml34m/p4R0WPA0bv1hTJSV9WeeAdNJT9/OA4yNjNE7mtCdaAG5TkZBL
         0BDp/4o8Hqieicr1lqYOam++DIQgKo8R01pnlrPbNOP0iJnAXMvxI6p329jhun5EIyav
         3XLJjapBypgxCcL/0WSWel04pHmICdp5qcXR1c9c+0kQ2bocTdCXVGET5GF1OcBAbBpJ
         Db3UO983D2fzZISkNU/UAgA9u4Jssa7IL/cwrVUZJDWVSnEukJjnf8+sbjDBvjPPrmYf
         /wvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705367476; x=1705972276;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J5SAl7h8gFScgWdY2BB7MUIpGVN5ls88lp1PxJmfDXY=;
        b=jLW85TsFiQxCjhTj8G0AkqS7M6vNqJ/pVPj9VvSfU2dfFuwZpghpH1wgMkVM1TZf7l
         4p+YWPh97VBv3vsDImyQhXYzz5vnUmdAS7v8vrwjb+T0aOvgIkrh8XCd2VZ9Ev5nqtOp
         a2QQdRLujvJZdN6uUxFCoUQ6bwx1ao7mZjWi+OuGmvN2DVzf6fDQbMSsgVKzhV3YetFF
         8EGOd3YQO74hmpthy+q34wQjZctEMUzypXK85it43zXQwnisICSVY2/YxPgbOqKpBTIA
         +GdsBFa7S9R+blrokw1m8N39ZH68TTFiCMZX5jKUeB1z/0oksKvsnWoMBA2+CETUSXgY
         LZJA==
X-Gm-Message-State: AOJu0YxyEKRRQbWL8NmLIMnnw7cz//DIPMOLicIxQJpfTlKAe8/hk/Ba
	qRZrLdhnSh9jKI+Kd6dRtOJut+i2izkVpw==
X-Google-Smtp-Source: AGHT+IGnFSgrxxhuxucsFygBud7v8OlWJ2Srm7pGmOeI++Y3FYvteXWehObGvCiESvrq7GXczc+w1Q==
X-Received: by 2002:a2e:8193:0:b0:2cd:217:4605 with SMTP id e19-20020a2e8193000000b002cd02174605mr2838078ljg.50.1705367476226;
        Mon, 15 Jan 2024 17:11:16 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id q15-20020a2e84cf000000b002cc7a2f7a9asm1513414ljh.98.2024.01.15.17.11.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 17:11:15 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 16 Jan 2024 03:10:56 +0200
Subject: [PATCH 2/4] phy: qcom: qmp-usbc: enable SDM630 support
MIME-Version: 1.0
Message-Id: <20240116-sdm660-usb3-support-v1-2-2fbd683aea77@linaro.org>
References: <20240116-sdm660-usb3-support-v1-0-2fbd683aea77@linaro.org>
In-Reply-To: <20240116-sdm660-usb3-support-v1-0-2fbd683aea77@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3233;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=LV1qhUDjS69E+vkNbGfcoPcd1GenuQZvkFoXfpH+sl4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlpdexwWXnEsw4+1OBDC1CllDE0TkIbp3x5YUxM
 pKToQtVOEeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaXXsQAKCRCLPIo+Aiko
 1ZACB/oDojuk1Tw5dooz8yXhndcO4Yq7KT2xCIo+40pOTgx2m54SJy67qrEzjXBExPn8dttYzvN
 h6TmOcjwKJ55G/Xth39mkbI4ZAtpJ9KUubM2loksZKl6nsfwlueBNdG4sxRbqXY8HgUpShjmT8X
 QG88AS3hv6xl7nWswzPE8xl3BPuSjOgO4y//7lQq7TL4Jai/15EXbY8G9Bg/T5zV7Ykl33T/d9b
 mf+VsG9VSZAouAoqrXEVwP0IDydyDySq+HeQA7Ob9AKt0QvhERarAoDWsG0aFhnMUBTkLhWQijd
 bAqTiWSa7MwdJ6ByeAAFv/T9addNbpXoG8pBDCcm5cXobB84
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_171119_835157_CDEDB5E8 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
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

Provide PHY configuration for the USB QMP PHY for the SDM630 / SDM660
platforms.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 40 ++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 3a4b4849db0f..02babec76881 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -293,6 +293,27 @@ static const struct qmp_phy_init_tbl qcm2290_usb3_rx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_MODE_00, 0x00),
 };
 
+/* the only difference is QSERDES_V3_RX_UCDR_PI_CONTROLS */
+static const struct qmp_phy_init_tbl sdm660_usb3_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FASTLOCK_FO_GAIN, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_PI_CONTROLS, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FASTLOCK_COUNT_LOW, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FASTLOCK_COUNT_HIGH, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FO_GAIN, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_SO_GAIN, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x75),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL2, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4e),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL4, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x77),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_VGA_CAL_CNTRL2, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_SIGDET_CNTRL, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_SIGDET_DEGLITCH_CNTRL, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_SIGDET_ENABLES, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_MODE_00, 0x00),
+};
+
 static const struct qmp_phy_init_tbl qcm2290_usb3_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXMGN_V0, 0x9f),
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M6DB_V0, 0x17),
@@ -474,6 +495,22 @@ static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
 };
 
+static const struct qmp_phy_cfg sdm660_usb3phy_cfg = {
+	.offsets		= &qmp_usbc_offsets_v3_qcm2290,
+
+	.serdes_tbl		= qcm2290_usb3_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(qcm2290_usb3_serdes_tbl),
+	.tx_tbl			= qcm2290_usb3_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_tx_tbl),
+	.rx_tbl			= sdm660_usb3_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(sdm660_usb3_rx_tbl),
+	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
+};
+
 static void qmp_usbc_configure_lane(void __iomem *base,
 					const struct qmp_phy_init_tbl tbl[],
 					int num,
@@ -1171,6 +1208,9 @@ static const struct of_device_id qmp_usbc_of_match_table[] = {
 	}, {
 		.compatible = "qcom,qcm2290-qmp-usb3-phy",
 		.data = &qcm2290_usb3phy_cfg,
+	}, {
+		.compatible = "qcom,sdm660-qmp-usb3-phy",
+		.data = &sdm660_usb3phy_cfg,
 	}, {
 		.compatible = "qcom,sm6115-qmp-usb3-phy",
 		.data = &qcm2290_usb3phy_cfg,

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
