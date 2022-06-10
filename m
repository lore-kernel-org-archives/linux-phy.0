Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1379C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jun 2022 19:09:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WcusuYQ6K5T5fhWZRgPZEC8NDc+rndYiy2HHtJnHLOM=; b=z6arzOjSkW/x1C
	s6RrJAlm/7+1eSssrxv8E54M1nsnXBEy0rDO6nNzHH6s6PPjUV/lIKmjV0glPtcBMhUydk7Cgxvm9
	3Rn2ZZ8rD+7cd1HOfwIlFFR1HpeP88JymEHBVRyZj7p5zjZOTgcPQABCq00ha7WQRwYOwk0YvPqP6
	rfJNr88pYpw4b0qkcUE2cmJQre2mcHhLOfwIAY5icZm2XJlwGcMtoZqQuDCW4WAd/4t3WTt7KMUi4
	ytEzaIvonbqBVcjLieQx+THeGcARuyRVn4afL1jGeLNBNJY7QltvzT+6mLSzaTXqMn7mYfmepDvQQ
	unZHGrSbFSjjggQ+Licw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk0o-009Umx-3v; Fri, 10 Jun 2022 19:09:38 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk0l-009Ukn-Fh
	for linux-phy@lists.infradead.org; Fri, 10 Jun 2022 19:09:37 +0000
Received: by mail-lj1-x229.google.com with SMTP id y29so123401ljd.7
        for <linux-phy@lists.infradead.org>; Fri, 10 Jun 2022 12:09:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=K8nNOMO0byBaUScXWiPH0ZuAT2sDaut3qghL3G2LDM4=;
        b=XWcORMykmO9MpJln/AClQi4eX7X4uPAxoclWltDE4dOC5LJdoYkpd+iwWg6qTz8KO5
         lQWsjhonIrssOeKjgcPgbXzLd/K2CTP9LPIgbSz2zNE7RTJS9KlHGo4z6my2ES1gcqle
         Xo13B31Prwz7gJqfjj3fiFHxFD6l0YtY7in4bWZ5oUKFvwuf+p0tFVp06i0tX5ZpRjpe
         G5CMvLS6jMrGPbgAN40JTFVfqISI0Ql9ABkjsA5QuWwnbYI/c7Zk4naIK/iAkwYq2WVZ
         cw3CgEIWx4ZQkUng+tjmnavBhmFX4QsCM1DifWXsOJzdTIaHHHRPGAd8GZ86VwNv+70r
         gAig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=K8nNOMO0byBaUScXWiPH0ZuAT2sDaut3qghL3G2LDM4=;
        b=JHBFJODhS41+J9E0ii2QZ6/j5/h63C+hensSJKsAhxHsAOHUZENq/ao+yt7AnwUPc6
         F7GWlaZ9mBKPQB277LBd4PIFNvIsmndCK0aLC4L9Nm2OFrUaHfBfUycrRdVlkRxcglGE
         MTw2Gwc71jNS4i6gek50aB5NU7HDvFknH8ez1TrAIOsDjyHBm4DjMFX1hoR3xmHpyiNJ
         7o2a7xN323Af3TNrvD5UlUh0rYclEve7W1bWHXk+IHF5ciP0iwkXFJl5/fIuSkbER6Ef
         kSGfmYAUVb+qbuCCXWYQtqJeF2yTdqZENKUxHtlWBNh7mdv7DWUrChU55ORBtRGTcxX6
         gUeA==
X-Gm-Message-State: AOAM532ivtE+R+Le9JSqXV6Hi5zFRp4wUBUBfoXngNRjElbgrdTmh+Sk
	epRHbC7HVD6eWdwOIJhjH0VcddgWe93MQJn8
X-Google-Smtp-Source: ABdhPJzkHSbsOqnTczJiqKQbWV2C9i0OEVM+NnsCEiG4NdvbzboXbmRI10o85ewtUQNPkwgkBT4yNg==
X-Received: by 2002:a2e:b0e6:0:b0:255:6cf9:ea90 with SMTP id h6-20020a2eb0e6000000b002556cf9ea90mr26786189ljl.425.1654888173064;
        Fri, 10 Jun 2022 12:09:33 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h2-20020a2e9002000000b00253e1833e8bsm26614ljg.117.2022.06.10.12.09.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 12:09:32 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [RFC PATCH 04/28] phy: qcom-qmp-pcie: split pcs_misc region for ipq6018 pcie gen3
Date: Fri, 10 Jun 2022 22:09:01 +0300
Message-Id: <20220610190925.3670081-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
References: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_120935_569823_A5F3F38C 
X-CRM114-Status: UNSURE (   9.98  )
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

Follow the example of other PCIe PHYs and use separate pcs_misc region
to access PCS_PCIE_* resources.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c |  9 +++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h      | 32 ++++++++++++------------
 2 files changed, 25 insertions(+), 16 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index b2cd0cf965d8..987f0b1d023c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -361,6 +361,9 @@ static const struct qmp_phy_init_tbl ipq6018_pcie_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(PCS_COM_P2U3_WAKEUP_DLY_TIME_AUXCLK_L, 0x01),
 	QMP_PHY_INIT_CFG(PCS_COM_RX_DCC_CAL_CONFIG, 0x01),
 	QMP_PHY_INIT_CFG(PCS_COM_EQ_CONFIG5, 0x01),
+};
+
+static const struct qmp_phy_init_tbl ipq6018_pcie_pcs_misc_tbl[] = {
 	QMP_PHY_INIT_CFG(PCS_PCIE_POWER_STATE_CONFIG2, 0x0d),
 	QMP_PHY_INIT_CFG(PCS_PCIE_POWER_STATE_CONFIG4, 0x07),
 	QMP_PHY_INIT_CFG(PCS_PCIE_ENDPOINT_REFCLK_DRIVE, 0xc1),
@@ -1433,6 +1436,8 @@ static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(ipq6018_pcie_rx_tbl),
 	.pcs_tbl		= ipq6018_pcie_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(ipq6018_pcie_pcs_tbl),
+	.pcs_misc_tbl		= ipq6018_pcie_pcs_misc_tbl,
+	.pcs_misc_tbl_num	= ARRAY_SIZE(ipq6018_pcie_pcs_misc_tbl),
 	.clk_list		= ipq8074_pciephy_clk_l,
 	.num_clks		= ARRAY_SIZE(ipq8074_pciephy_clk_l),
 	.reset_list		= ipq8074_pciephy_reset_l,
@@ -2207,6 +2212,10 @@ int qcom_qmp_phy_pcie_create(struct device *dev, struct device_node *np, int id,
 		qphy->pcs_misc = of_iomap(np, 3);
 	}
 
+	if (!qphy->pcs_misc &&
+	    of_device_is_compatible(dev->of_node, "qcom,ipq6018-qmp-pcie-phy"))
+		qphy->pcs_misc = qphy->pcs + 0x400;
+
 	if (!qphy->pcs_misc)
 		dev_vdbg(dev, "PHY pcs_misc-reg not used\n");
 
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index c07227f352b3..adb155a45923 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -121,22 +121,22 @@
 
 /* QMP V2 PHY for PCIE gen3 ports - PCS Misc registers */
 
-#define PCS_PCIE_POWER_STATE_CONFIG2			0x40c
-#define PCS_PCIE_POWER_STATE_CONFIG4			0x414
-#define PCS_PCIE_ENDPOINT_REFCLK_DRIVE			0x41c
-#define PCS_PCIE_L1P1_WAKEUP_DLY_TIME_AUXCLK_L		0x440
-#define PCS_PCIE_L1P1_WAKEUP_DLY_TIME_AUXCLK_H		0x444
-#define PCS_PCIE_L1P2_WAKEUP_DLY_TIME_AUXCLK_L		0x448
-#define PCS_PCIE_L1P2_WAKEUP_DLY_TIME_AUXCLK_H		0x44c
-#define PCS_PCIE_OSC_DTCT_CONFIG2			0x45c
-#define PCS_PCIE_OSC_DTCT_MODE2_CONFIG2			0x478
-#define PCS_PCIE_OSC_DTCT_MODE2_CONFIG4			0x480
-#define PCS_PCIE_OSC_DTCT_MODE2_CONFIG5			0x484
-#define PCS_PCIE_OSC_DTCT_ACTIONS			0x490
-#define PCS_PCIE_EQ_CONFIG1				0x4a0
-#define PCS_PCIE_EQ_CONFIG2				0x4a4
-#define PCS_PCIE_PRESET_P10_PRE				0x4bc
-#define PCS_PCIE_PRESET_P10_POST			0x4e0
+#define PCS_PCIE_POWER_STATE_CONFIG2			0x00c
+#define PCS_PCIE_POWER_STATE_CONFIG4			0x014
+#define PCS_PCIE_ENDPOINT_REFCLK_DRIVE			0x01c
+#define PCS_PCIE_L1P1_WAKEUP_DLY_TIME_AUXCLK_L		0x040
+#define PCS_PCIE_L1P1_WAKEUP_DLY_TIME_AUXCLK_H		0x044
+#define PCS_PCIE_L1P2_WAKEUP_DLY_TIME_AUXCLK_L		0x048
+#define PCS_PCIE_L1P2_WAKEUP_DLY_TIME_AUXCLK_H		0x04c
+#define PCS_PCIE_OSC_DTCT_CONFIG2			0x05c
+#define PCS_PCIE_OSC_DTCT_MODE2_CONFIG2			0x078
+#define PCS_PCIE_OSC_DTCT_MODE2_CONFIG4			0x080
+#define PCS_PCIE_OSC_DTCT_MODE2_CONFIG5			0x084
+#define PCS_PCIE_OSC_DTCT_ACTIONS			0x090
+#define PCS_PCIE_EQ_CONFIG1				0x0a0
+#define PCS_PCIE_EQ_CONFIG2				0x0a4
+#define PCS_PCIE_PRESET_P10_PRE				0x0bc
+#define PCS_PCIE_PRESET_P10_POST			0x0e0
 
 /* Only for QMP V2 PHY - QSERDES COM registers */
 #define QSERDES_COM_BG_TIMER				0x00c
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
