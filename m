Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E7F3CE7B19
	for <linux-phy@archiver.kernel.org>; Thu, 28 Sep 2023 10:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oHGyYbBQTVhxuFLqyCeNXUD4w62y+YvQfUS03tJgZ88=; b=iADQJG8hRXi9Y/
	IK5k2VeTxZQq6L3eO6lnj6h5gTkt53gSVc+QZRhzIzoYF9SpVSGmqS8rfQeDguCLdK4JIPrrqfnEK
	JZljJwGiUqOI2Ny4WtrqmzLg2ONGiVfTsNsP25t3YD2cGN0rFy9/I5TgE/n6ubzN6eJl/OqswHDs0
	7u+PIkD5MiTte4AHiT+Rx51zKFF4pDXaE/Wdg3BxMwW6l5NfJILvGGn50iFS6XLQcAUyto2tsx3YW
	8VMo6EqRzZiM5xduQKBg4cppDHVLN0+5c/aE6JYUYnZu3yOm4Rb9tEiJZzRBjryzlEyD2HpLe+OpF
	AlVbTYqod/Ng/7rtizqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlofW-002yk2-21;
	Thu, 28 Sep 2023 10:54:54 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlofT-002ygM-1T
	for linux-phy@lists.infradead.org;
	Thu, 28 Sep 2023 10:54:53 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2c022ce8114so207305241fa.1
        for <linux-phy@lists.infradead.org>; Thu, 28 Sep 2023 03:54:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695898487; x=1696503287; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RquiWTKnMLa3BWnVMnvof5ZnWR6qWtXMTkrlacLzVqE=;
        b=TcqWM4fey7BdNeYz1xd4lYrGIxBe6Z3+WHC0uDNi6IMk6uZTyduU8gLPV3R5j4ne1m
         AWTaBwXrbdBj70P25323VI17JqYT1HwwEYhXyxh8eDMz280FM0IVV0l+x3+AzoxkjmgK
         lpqacO1ov95m2j1kYjSIcoNEvrUyug4VG29ChpS1PshF6rr5WGq7RtDrc4AozL4ypDSa
         PZ7qGJeI/tl+RX70b3Wz7A/xGE2IIzBX2/plSvQ5pK84ofWyMM2ufB+F9/mqyDUByJW6
         3l7fwi+hV6ZVWa8CfqEQmqR66TTiD7VUL11Gbh3eV8xl5hijn+cqm29T38FnDgkqzaqa
         OrcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695898487; x=1696503287;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RquiWTKnMLa3BWnVMnvof5ZnWR6qWtXMTkrlacLzVqE=;
        b=uUOng6sjk6PjgThU9b+pbUuKxzgvDpVChnlo7XrJFfxpHRoNuzXtzrAqnuibfshjkS
         22YhnZYpmPWCvdzoaKyZ/Yy4lyWH1/ZjEmFz/CLLbcjBdIVCIq5bZuMKoei/Twgajc8p
         Aqp6SSX7ex30oqGcFg59yR8aKoX3Z6v3wtp5bLKomM5MJinL4SSB+Mc0yjKBXlFEp7jx
         B9mOhn0ep8vDeHqrZZHTdr6f9K40nAqrxNWA3AXfQOiHXA8rY+bkMNowcHCMCYcAHbDy
         cvDVLXzJWXxbmYFy6PSTlNTbwsuh+ypjsrfX1jLxjmR2dNWkr6FvI4dy7zYFa8cbH2xC
         uUJQ==
X-Gm-Message-State: AOJu0YwaxAQdhF4IS13g8gE5UKmoeK2LNhM2MN9d6TgsMpP6Pd/s/Wiw
	5wTZW2hFSNBnAD+8uk/VqZNDtQ==
X-Google-Smtp-Source: AGHT+IFMDpY5v/KqeeNNyc5nMT93mzbLz/kU+bXDL7wG6zC49l1GBkyZScfcQwZbw+Wgc2rOty0SiQ==
X-Received: by 2002:a2e:86d3:0:b0:2c0:2e25:5730 with SMTP id n19-20020a2e86d3000000b002c02e255730mr906808ljj.5.1695898487484;
        Thu, 28 Sep 2023 03:54:47 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y24-20020a2e9d58000000b002b47a15a2eesm3551455ljj.45.2023.09.28.03.54.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 03:54:46 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 1/3] phy: qcom-qmp-combo: fix the prefix for the PCS_USB v6 registers
Date: Thu, 28 Sep 2023 13:54:43 +0300
Message-Id: <20230928105445.1210861-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230928105445.1210861-1-dmitry.baryshkov@linaro.org>
References: <20230928105445.1210861-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_035451_545888_17C8E8D3 
X-CRM114-Status: GOOD (  10.73  )
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

For all other generations, we have been using just the QPHY prefix for
the PCS registers. Remove the _USB part of the QPHY_USB prefix.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 38 +++++++++---------
 .../phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h    | 40 +++++++++----------
 2 files changed, 39 insertions(+), 39 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 5e6fc8103e9d..02d22595f747 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -845,28 +845,28 @@ static const struct qmp_phy_init_tbl sm8550_usb3_rx_tbl[] = {
 };
 
 static const struct qmp_phy_init_tbl sm8550_usb3_pcs_tbl[] = {
-	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG1, 0xc4),
-	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG2, 0x89),
-	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG3, 0x20),
-	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG6, 0x13),
-	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_REFGEN_REQ_CONFIG1, 0x21),
-	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_RX_SIGDET_LVL, 0x99),
-	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_RCVR_DTCT_DLY_P1U2_L, 0xe7),
-	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_RCVR_DTCT_DLY_P1U2_H, 0x03),
-	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_CDR_RESET_TIME, 0x0a),
-	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_ALIGN_DETECT_CONFIG1, 0x88),
-	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_ALIGN_DETECT_CONFIG2, 0x13),
-	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_PCS_TX_RX_CONFIG, 0x0c),
-	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_EQ_CONFIG1, 0x4b),
-	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_EQ_CONFIG5, 0x10),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_LOCK_DETECT_CONFIG1, 0xc4),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_LOCK_DETECT_CONFIG2, 0x89),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_LOCK_DETECT_CONFIG3, 0x20),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_LOCK_DETECT_CONFIG6, 0x13),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_REFGEN_REQ_CONFIG1, 0x21),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_RX_SIGDET_LVL, 0x99),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_RCVR_DTCT_DLY_P1U2_L, 0xe7),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_RCVR_DTCT_DLY_P1U2_H, 0x03),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_CDR_RESET_TIME, 0x0a),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_ALIGN_DETECT_CONFIG1, 0x88),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_ALIGN_DETECT_CONFIG2, 0x13),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_PCS_TX_RX_CONFIG, 0x0c),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_EQ_CONFIG1, 0x4b),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_EQ_CONFIG5, 0x10),
 };
 
 static const struct qmp_phy_init_tbl sm8550_usb3_pcs_usb_tbl[] = {
-	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_POWER_STATE_CONFIG1, 0x68),
-	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
-	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
-	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L, 0x40),
-	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_H, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L, 0x40),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_USB3_RCVR_DTCT_DLY_U3_H, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_USB3_POWER_STATE_CONFIG1, 0x68),
 };
 
 static const struct qmp_phy_init_tbl qmp_v4_dp_serdes_tbl[] = {
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
index c38530d6776b..cf4464849006 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
@@ -7,26 +7,26 @@
 #define QCOM_PHY_QMP_PCS_USB_V6_H_
 
 /* Only for QMP V6 PHY - USB3 have different offsets than V5 */
-#define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG1		0xc4
-#define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG2		0xc8
-#define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG3		0xcc
-#define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG6		0xd8
-#define QPHY_USB_V6_PCS_REFGEN_REQ_CONFIG1		0xdc
-#define QPHY_USB_V6_PCS_POWER_STATE_CONFIG1		0x90
-#define QPHY_USB_V6_PCS_RX_SIGDET_LVL			0x188
-#define QPHY_USB_V6_PCS_RCVR_DTCT_DLY_P1U2_L		0x190
-#define QPHY_USB_V6_PCS_RCVR_DTCT_DLY_P1U2_H		0x194
-#define QPHY_USB_V6_PCS_CDR_RESET_TIME			0x1b0
-#define QPHY_USB_V6_PCS_ALIGN_DETECT_CONFIG1		0x1c0
-#define QPHY_USB_V6_PCS_ALIGN_DETECT_CONFIG2		0x1c4
-#define QPHY_USB_V6_PCS_PCS_TX_RX_CONFIG		0x1d0
-#define QPHY_USB_V6_PCS_EQ_CONFIG1			0x1dc
-#define QPHY_USB_V6_PCS_EQ_CONFIG5			0x1ec
+#define QPHY_V6_PCS_LOCK_DETECT_CONFIG1		0xc4
+#define QPHY_V6_PCS_LOCK_DETECT_CONFIG2		0xc8
+#define QPHY_V6_PCS_LOCK_DETECT_CONFIG3		0xcc
+#define QPHY_V6_PCS_LOCK_DETECT_CONFIG6		0xd8
+#define QPHY_V6_PCS_REFGEN_REQ_CONFIG1		0xdc
+#define QPHY_V6_PCS_POWER_STATE_CONFIG1		0x90
+#define QPHY_V6_PCS_RX_SIGDET_LVL			0x188
+#define QPHY_V6_PCS_RCVR_DTCT_DLY_P1U2_L		0x190
+#define QPHY_V6_PCS_RCVR_DTCT_DLY_P1U2_H		0x194
+#define QPHY_V6_PCS_CDR_RESET_TIME			0x1b0
+#define QPHY_V6_PCS_ALIGN_DETECT_CONFIG1		0x1c0
+#define QPHY_V6_PCS_ALIGN_DETECT_CONFIG2		0x1c4
+#define QPHY_V6_PCS_PCS_TX_RX_CONFIG		0x1d0
+#define QPHY_V6_PCS_EQ_CONFIG1			0x1dc
+#define QPHY_V6_PCS_EQ_CONFIG5			0x1ec
 
-#define QPHY_USB_V6_PCS_USB3_POWER_STATE_CONFIG1	0x00
-#define QPHY_USB_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL	0x18
-#define QPHY_USB_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2	0x3c
-#define QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L		0x40
-#define QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_H		0x44
+#define QPHY_V6_PCS_USB3_POWER_STATE_CONFIG1		0x00
+#define QPHY_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL	0x18
+#define QPHY_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2	0x3c
+#define QPHY_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L		0x40
+#define QPHY_V6_PCS_USB3_RCVR_DTCT_DLY_U3_H		0x44
 
 #endif
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
