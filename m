Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1B2EEB8FA5
	for <linux-phy@archiver.kernel.org>; Wed,  6 Sep 2023 07:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1mZD4+6i2e4bbv2aAkoTozwvclVdNzVH0fBZC1TTym4=; b=4NN0FeMefq2a7Y
	ktzVW/EagZtj3yuTXotvsCm6yMVRL7TM/Hrf2NM6mDCTLWFUdGt6ZEnMVTDIWHhJGOd5jZWKotBww
	fYD/oZ24Kxwhcb6icaHvxnJu+xlVIFJqIhiq37UtyFlFLWmi61fCR9x6KYZltikk+DAeFqYbKjn8P
	uvD4A6dJz64IZEjlC545JMoeoAoqittDkNiRdxmPczN8AC0Uc8QzpEEu71akU6A76FhiSNGvYHoTz
	pyZFYAHobu2vX1pTiWiRFQpkl73EnA8k889BS2cw2LBY8VmUO5rOOEI+zexox9NoL4NcQOwrMAmw9
	yrX2grL3Rdr+2dDeYe/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdnQp-007bUI-1p;
	Wed, 06 Sep 2023 07:58:35 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdnQl-007bQl-1G
	for linux-phy@lists.infradead.org;
	Wed, 06 Sep 2023 07:58:34 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2bcbfb3705dso52897411fa.1
        for <linux-phy@lists.infradead.org>; Wed, 06 Sep 2023 00:58:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693987106; x=1694591906; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IzIS+aoME72+Wjjebc1SQM60j6lmwV2sHjpkBvCUB3k=;
        b=d5QebIJzXaWPxYWz/zFrZOVwj6kIKko7m5UAxtrKI+07tOCSeFbOG8zAVlJw1Dea/l
         b7aaf5tzQzOcR/opRg8hm0GI2VjoR1uzpFc+cSayexLu8fIZw6Rm4StMdw4JO+rPcJZa
         i4Sozh7Aw7GQjdEn+I+FB6GjR1ScFgbPjx4hVNmf32VnGge9p0xaHwVVMAi/hhGdJA1X
         q/PC3S/4f3Jvb4m+0ifQelEbqAM/0wjb/CkhbqNK4Sa6Bx7AxMM+UfBrw9pKH40z3Sx4
         lyQGmQO2gLjeY+N4u+oDjcaAjcViiGd4OVKMDgy8InGBqSNTkExV7rj1CaNrCMQOPDZ7
         xbag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693987106; x=1694591906;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IzIS+aoME72+Wjjebc1SQM60j6lmwV2sHjpkBvCUB3k=;
        b=anmMbN96QoM8Acl0gRj3WlCd8dIx3UzrLM33Ynxnx3JhiMciNzUiFsogLl+f4G1Gan
         6Efykzi6EKid6tXmHeEi9J9pydrmXPqU0dq79+sLoEcW1r2UNL6Dye3rHGjCh0ujw2y2
         p+8SP2siz44DnWwwsouDHZQJRXnH3AEmXzKBB3xH+hlIFK8AJRFE9oCVLmLygFmTxWIq
         1YQfxRS8SSGgeLevPT+Dnx5+AGZ0YXCs/7o63kYUCiIad1oqZSKDj64Rxk/uvzXVHSh7
         GSl9A/hFPsdE07n9acFB5Mh83aJUoG1Fio7FJwLi4XggM8YQODn8RIwOX1XCLB21Fs/g
         rXcw==
X-Gm-Message-State: AOJu0YxYCkcyjVtwoUO+cn0KkpfqYmQMy+B3+g6vlE4tAZlev7mDkoJa
	VRSmoMHPK4RehpCcdds9iGkhVg==
X-Google-Smtp-Source: AGHT+IH25xMcUshS1gJxSCvddB9y6235LL/Rur3+WkiGMpOCsdTqFO05aqAX4f4+Wa5uo+1GKx4lNQ==
X-Received: by 2002:a2e:3a0f:0:b0:2bc:fac8:309c with SMTP id h15-20020a2e3a0f000000b002bcfac8309cmr1174784lja.16.1693987106360;
        Wed, 06 Sep 2023 00:58:26 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id z10-20020a2e7e0a000000b002b9ec22d9fasm3268324ljc.29.2023.09.06.00.58.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Sep 2023 00:58:25 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 2/4] phy: qcom-qmp-combo: fix the prefix for the PCS_USB v6 registers
Date: Wed,  6 Sep 2023 10:58:21 +0300
Message-Id: <20230906075823.7957-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230906075823.7957-1-dmitry.baryshkov@linaro.org>
References: <20230906075823.7957-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230906_005831_435709_CBAE7197 
X-CRM114-Status: GOOD (  10.49  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 38 +++++++++----------
 .../phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h    | 38 +++++++++----------
 2 files changed, 38 insertions(+), 38 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 41b9be56eead..bff6231d7de3 100644
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
-	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
-	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
-	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L, 0x40),
-	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_H, 0x00),
-	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_POWER_STATE_CONFIG1, 0x68),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L, 0x40),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_USB3_RCVR_DTCT_DLY_U3_H, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_USB3_POWER_STATE_CONFIG1, 0x68),
 };
 
 static const struct qmp_phy_init_tbl qmp_v4_dp_serdes_tbl[] = {
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
index 5409ddcd3eb5..4fbef4eea7b5 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
@@ -7,25 +7,25 @@
 #define QCOM_PHY_QMP_PCS_USB_V6_H_
 
 /* Only for QMP V6 PHY - USB3 have different offsets than V5 */
-#define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG1		0xc4
-#define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG2		0xc8
-#define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG3		0xcc
-#define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG6		0xd8
-#define QPHY_USB_V6_PCS_REFGEN_REQ_CONFIG1		0xdc
-#define QPHY_USB_V6_PCS_RX_SIGDET_LVL			0x188
-#define QPHY_USB_V6_PCS_RCVR_DTCT_DLY_P1U2_L		0x190
-#define QPHY_USB_V6_PCS_RCVR_DTCT_DLY_P1U2_H		0x194
-#define QPHY_USB_V6_PCS_CDR_RESET_TIME			0x1b0
-#define QPHY_USB_V6_PCS_ALIGN_DETECT_CONFIG1		0x1c0
-#define QPHY_USB_V6_PCS_ALIGN_DETECT_CONFIG2		0x1c4
-#define QPHY_USB_V6_PCS_PCS_TX_RX_CONFIG		0x1d0
-#define QPHY_USB_V6_PCS_EQ_CONFIG1			0x1dc
-#define QPHY_USB_V6_PCS_EQ_CONFIG5			0x1ec
+#define QPHY_V6_PCS_LOCK_DETECT_CONFIG1			0xc4
+#define QPHY_V6_PCS_LOCK_DETECT_CONFIG2			0xc8
+#define QPHY_V6_PCS_LOCK_DETECT_CONFIG3			0xcc
+#define QPHY_V6_PCS_LOCK_DETECT_CONFIG6			0xd8
+#define QPHY_V6_PCS_REFGEN_REQ_CONFIG1			0xdc
+#define QPHY_V6_PCS_RX_SIGDET_LVL			0x188
+#define QPHY_V6_PCS_RCVR_DTCT_DLY_P1U2_L		0x190
+#define QPHY_V6_PCS_RCVR_DTCT_DLY_P1U2_H		0x194
+#define QPHY_V6_PCS_CDR_RESET_TIME			0x1b0
+#define QPHY_V6_PCS_ALIGN_DETECT_CONFIG1		0x1c0
+#define QPHY_V6_PCS_ALIGN_DETECT_CONFIG2		0x1c4
+#define QPHY_V6_PCS_PCS_TX_RX_CONFIG			0x1d0
+#define QPHY_V6_PCS_EQ_CONFIG1				0x1dc
+#define QPHY_V6_PCS_EQ_CONFIG5				0x1ec
 
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
