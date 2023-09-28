Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7205CE7B1F
	for <linux-phy@archiver.kernel.org>; Thu, 28 Sep 2023 10:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yRXsS8VnCCbCDEx5bRXKUsA/iMy4c5sgkxxMJkARs3I=; b=drCnhf1UcCG6cr
	7qgbpJQDlVNL6pFlr3nFQGDM5vIOuap0Mr4+h8/GWekKDqekOEE/gZAkod6aV4txRXqNLj9QUA4Qn
	GUaAPLGVTT/o1jSK99UrQ/K9ZWlbSXpKEjSzQb4HjgbpcihfM2ERFhnKMT+7b1jNl532G7INtvk4a
	iMTR9zjmDoNcpFQ+CJ47J2RS9vSAGWmVtlV4uRe1ek+f+pHdbNfMceKmTA9vcbRYHlfqdQp7f/Fu1
	Ksi1zixmMRyaNWoCe0vICUMGmPHTWikbEVdlZnyIRSN6q45eLxj0Ocx0KRd6Yw2HmnAfjHPK+alLS
	49uLN9UZS+JCtwG6SWDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlofZ-002ylT-08;
	Thu, 28 Sep 2023 10:54:57 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlofV-002ygt-04
	for linux-phy@lists.infradead.org;
	Thu, 28 Sep 2023 10:54:55 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2b9c907bc68so212716001fa.2
        for <linux-phy@lists.infradead.org>; Thu, 28 Sep 2023 03:54:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695898489; x=1696503289; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yl70rxw6j+gH7QmFj4s1C1nJkm733ZrDJmrxt04NnVU=;
        b=mjSCzipj20Wopq4QCatLmbRDmvqDYRckHlACaNrNE4ggpwZIJCAWu+ZWp75NJGKoNK
         siDECjB2M+GQEYbaZzYPFiAuDqXvz44C1A/43/utW3YlFuQnYLfc8hj2RVq0WfPbEU1H
         lC4QAYumDfn7jjaA1uBjxZPLPa5nvV640LGgsT/J/8qTyQbsNCWaBt6jwAjl1gky1OQL
         rGdRVtYSb7UbV0LJIRhiotn4X2UZsWCQ/nMhFGSKssUOc3jA9LZavJy8fz2CAqrwd2vR
         9j0gBXA3W3oHR+NOw0Y6ltkLyHt54LHtUQw/icjK5UXCpQSrSLQ0rVpyL9A+O1S9FMD0
         5zqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695898489; x=1696503289;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yl70rxw6j+gH7QmFj4s1C1nJkm733ZrDJmrxt04NnVU=;
        b=UNHLuS6ApZnAou2usHZ7TOGRBTNNtbPK6/Zv1kIPYSBDOYCu1f9C4IpmRb5bM1akMC
         NVyc8gol58EGP+54mGkskVdXm7u7i4DkZwEcLdoFbzOr2/3XuQh7a8mV9Pdo2ugfUw5S
         cMSqq31d/6p8Czd/jsp930Gm0vF4mSljAWrpc4oArOPiodM/jMjtPtxhZm0V07JYDnpr
         oTw6JHLnBE4rnIQAIfERQ6ANgCawgeDjLBlB29EX1q3IjRUjZ/iQNrwIyxGXCO8rg2i8
         G7Jf/81aamdZGAUiy5bByrC8Oy0X+/tWxfzEQJqmoKl+JaOxgacmz9NwsOSEmGRF4tj4
         KjxQ==
X-Gm-Message-State: AOJu0YyRfH11BcJ8wCN4wvoVzInMj1A7KZiQFW7Hatx+b2VEkjd+k06c
	iVbwiKv+mXN/LxlZ/UGSu3GKBg==
X-Google-Smtp-Source: AGHT+IEe3OpvGijOc8+MNS8f/nUTPwRNbTZVVVZGpeIkTR6E4ETUdgnxYtGQFi2GRBcwpCWVtoD3uA==
X-Received: by 2002:a2e:3a05:0:b0:2bc:b815:d64d with SMTP id h5-20020a2e3a05000000b002bcb815d64dmr948022lja.30.1695898488952;
        Thu, 28 Sep 2023 03:54:48 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y24-20020a2e9d58000000b002b47a15a2eesm3551455ljj.45.2023.09.28.03.54.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 03:54:48 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 3/3] phy: qcom-qmp-combo: use v6 registers in v6 regs layout
Date: Thu, 28 Sep 2023 13:54:45 +0300
Message-Id: <20230928105445.1210861-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230928105445.1210861-1-dmitry.baryshkov@linaro.org>
References: <20230928105445.1210861-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_035453_101648_D2CF81CF 
X-CRM114-Status: GOOD (  11.30  )
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

Make sure that we use only v6 registers in qmp_v6_usb3phy_regs_layout.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c      | 12 ++++++------
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h |  3 ++-
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h     |  4 ++++
 3 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 02d22595f747..9c87845c78ec 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -194,14 +194,14 @@ static const unsigned int qmp_v5_5nm_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 };
 
 static const unsigned int qmp_v6_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_SW_RESET]			= QPHY_V5_PCS_SW_RESET,
-	[QPHY_START_CTRL]		= QPHY_V5_PCS_START_CONTROL,
-	[QPHY_PCS_STATUS]		= QPHY_V5_PCS_PCS_STATUS1,
-	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V5_PCS_POWER_DOWN_CONTROL,
+	[QPHY_SW_RESET]			= QPHY_V6_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V6_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V6_PCS_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V6_PCS_POWER_DOWN_CONTROL,
 
 	/* In PCS_USB */
-	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V5_PCS_USB3_AUTONOMOUS_MODE_CTRL,
-	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V5_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
+	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V6_PCS_USB3_AUTONOMOUS_MODE_CTRL,
+	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V6_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
 
 	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V6_COM_RESETSM_CNTRL,
 	[QPHY_COM_C_READY_STATUS]	= QSERDES_V6_COM_C_READY_STATUS,
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
index 7c16af0b1cc3..df670143feb1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
@@ -6,8 +6,9 @@
 #ifndef QCOM_PHY_QMP_PCS_USB_V6_H_
 #define QCOM_PHY_QMP_PCS_USB_V6_H_
 
-/* Only for QMP V6 PHY - USB3 have different offsets than V5 */
 #define QPHY_V6_PCS_USB3_POWER_STATE_CONFIG1		0x00
+#define QPHY_V6_PCS_USB3_AUTONOMOUS_MODE_CTRL		0x08
+#define QPHY_V6_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR		0x14
 #define QPHY_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL	0x18
 #define QPHY_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2	0x3c
 #define QPHY_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L		0x40
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
index 47cedb860fef..08299d2b78f0 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
@@ -7,6 +7,10 @@
 #define QCOM_PHY_QMP_PCS_V6_H_
 
 /* Only for QMP V6 PHY - USB/PCIe PCS registers */
+#define QPHY_V6_PCS_SW_RESET			0x000
+#define QPHY_V6_PCS_PCS_STATUS1			0x014
+#define QPHY_V6_PCS_POWER_DOWN_CONTROL		0x040
+#define QPHY_V6_PCS_START_CONTROL		0x044
 #define QPHY_V6_PCS_POWER_STATE_CONFIG1		0x090
 #define QPHY_V6_PCS_LOCK_DETECT_CONFIG1		0x0c4
 #define QPHY_V6_PCS_LOCK_DETECT_CONFIG2		0x0c8
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
