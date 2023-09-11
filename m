Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BBDFC71153
	for <linux-phy@archiver.kernel.org>; Mon, 11 Sep 2023 19:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y81R/yCfjDZKNvCA7eWhzpy3H+5s679CT4kyGRC1ovo=; b=V5kMOiSoxU3ENW
	3JaeurpAVIrjopZb3bnPahURam+ZdrMUaYyTuwpb4f80jjvUW/8k+ICqAxWVPvxCIHhUapTVNH8VU
	HiqSUkb3EH8y9z/5mreBuQjkCpJ2WgT0KNlLXfGzwUPCowPyy7HengnU2/ouQwZQRwe8dzQ9qtIMo
	RbB+JO6NQa26IY3cNQtag5BCnvrF2WgNQlf+Wwob+FtSSwa3dDVkRnxi/4nUqCvPdHegiyyIcVjOL
	Oglm8fDrvPIJH1V0byApubF943PYH2qE+xfo8FsC5b50ECW6sK0Uf9dDznCuHOcdixN3QiQSi3VZL
	3Fvy01vPuSkR+8N1ug+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfmea-001Cn4-2a;
	Mon, 11 Sep 2023 19:33:00 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfmeX-001Cle-17
	for linux-phy@lists.infradead.org;
	Mon, 11 Sep 2023 19:32:58 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-51e28cac164so12696930a12.1
        for <linux-phy@lists.infradead.org>; Mon, 11 Sep 2023 12:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694460775; x=1695065575; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qv0VFA8AXkB7cRCKN58lE+5+SoQOFu8EkIMD+Q2nh5A=;
        b=ywcSTFeJkxPtHQckhqWF6P/hk62JmNTCpuNTJBe++ty41fp0YUyTn9/D8Qci6R+tFd
         so2Gdwum4CRsfKvitARh4Xwk0Kh8euwZHEb4BVEaO2ey4X/DiZRrzEgw9/9HY9AcHhnV
         lP34sqfZ8EKTXm2I4Sj3DFE972oCuOkG8L2IkgMycDAkgsoc1s6aRTtoZxgUg60OHpc4
         kRMmS395DfOGdYKE56pyrapN6dP/XW1MI4otKNqTm+wMK1w8/8sEUSw6ZrSK/eM3rb9F
         w93hHAANhsWD2zHojpCq2yuctVTx/PzipQMUroPVq028qPmlnB+hMc4TEvddG/XVS7n3
         F47g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694460775; x=1695065575;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qv0VFA8AXkB7cRCKN58lE+5+SoQOFu8EkIMD+Q2nh5A=;
        b=hmKxLSuQRVzOlJHRYt9KYeukL1eXorSbhSow219365H6zAszgt4DnWIdFqsaRYuFRf
         33u6MSoiLEHkK7HfiW0tsRQlsX6cdGfUPs68QsW34inJIJGLbLLtjHIqYloQfBT7KB9t
         UiG0bXtIKWVyx2FRr6NYw2iCDknUwptVxyH0jrIQurEnbaDLO0a+ADHaBmsUg9M4Mz5O
         /KP0cqOPZM7rCEz8VQUjYEq5GTaWuVdNZVVfsY/0QkkMLV0D4Tq8edgDgg2y+lZKiMrs
         QTBoUxxj6yRE4zlZMml6hc8+kKUVjbqQjIQ6huRwg+3XsSrpzzMlbsquHYQtw5LGj09G
         Ch7g==
X-Gm-Message-State: AOJu0YyWJSAIZ7WiXxxUaMj7XZlG1/pYn0ZgOq7yUZqBZZT5eh1kx80a
	Bc99eZuQ2naAJOJz3HsOGys67g==
X-Google-Smtp-Source: AGHT+IHp58GrysheyZ4KaZCssvpY0d5GCuHIUswb9q3RrsUP6gg75lzNfzitawynvFr6tipo8V2Kxw==
X-Received: by 2002:a17:907:d17:b0:9a9:e3d2:ae4d with SMTP id gn23-20020a1709070d1700b009a9e3d2ae4dmr854344ejc.25.1694460774861;
        Mon, 11 Sep 2023 12:32:54 -0700 (PDT)
Received: from [10.167.154.1] (178235177248.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.248])
        by smtp.gmail.com with ESMTPSA id j4-20020a170906410400b0099cc402d3ddsm5698607ejk.202.2023.09.11.12.32.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Sep 2023 12:32:54 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Mon, 11 Sep 2023 21:32:48 +0200
Subject: [PATCH v2 1/2] phy: qcom-qmp-combo: Square out 8550
 POWER_STATE_CONFIG1
MIME-Version: 1.0
Message-Id: <20230829-topic-8550_usbphy-v2-1-a72f43311d19@linaro.org>
References: <20230829-topic-8550_usbphy-v2-0-a72f43311d19@linaro.org>
In-Reply-To: <20230829-topic-8550_usbphy-v2-0-a72f43311d19@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan+linaro@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694460770; l=2669;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=JKFDScve4WE4FPTA0n+7atBY834sQWAUXpq8axVVF1o=;
 b=rmZ8TapO3mCnxCvhfMXw7fR47i9OFTqH0Ifon7ChEI1D6VCZ43FRyhfsPWPu+Bb/cwWFXWpKq
 mF1HQnuUQp6Cp33Y0y+iUN3D7zHvYp6gKu/wDUZx7yZ5R8Yc5pYIoIY
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_123257_382773_AEBE5C0B 
X-CRM114-Status: GOOD (  11.48  )
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

There are two instances of the POWER_STATE_CONFIG1 register: one in
the PCS space and another one in PCS_USB.

The downstream init sequence pokes the latter one while we've been poking
the former one (and misnamed it as the latter one, impostor!). Fix that
up to avoid UB.

Fixes: 49742e9edab3 ("phy: qcom-qmp-combo: Add support for SM8550")
Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c      | 2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index cbb28afce135..843099d314bf 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -859,10 +859,10 @@ static const struct qmp_phy_init_tbl sm8550_usb3_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_PCS_TX_RX_CONFIG, 0x0c),
 	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_EQ_CONFIG1, 0x4b),
 	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_EQ_CONFIG5, 0x10),
-	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_POWER_STATE_CONFIG1, 0x68),
 };
 
 static const struct qmp_phy_init_tbl sm8550_usb3_pcs_usb_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_USB_Q6_PCS_USB3_POWER_STATE_CONFIG1, 0x68),
 	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
 	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
 	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L, 0x40),
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
index 9510e63ba9d8..c38530d6776b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
@@ -12,7 +12,7 @@
 #define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG3		0xcc
 #define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG6		0xd8
 #define QPHY_USB_V6_PCS_REFGEN_REQ_CONFIG1		0xdc
-#define QPHY_USB_V6_PCS_USB3_POWER_STATE_CONFIG1	0x90
+#define QPHY_USB_V6_PCS_POWER_STATE_CONFIG1		0x90
 #define QPHY_USB_V6_PCS_RX_SIGDET_LVL			0x188
 #define QPHY_USB_V6_PCS_RCVR_DTCT_DLY_P1U2_L		0x190
 #define QPHY_USB_V6_PCS_RCVR_DTCT_DLY_P1U2_H		0x194
@@ -23,6 +23,7 @@
 #define QPHY_USB_V6_PCS_EQ_CONFIG1			0x1dc
 #define QPHY_USB_V6_PCS_EQ_CONFIG5			0x1ec
 
+#define QPHY_USB_V6_PCS_USB3_POWER_STATE_CONFIG1	0x00
 #define QPHY_USB_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL	0x18
 #define QPHY_USB_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2	0x3c
 #define QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L		0x40

-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
