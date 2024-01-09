Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4202C4707C
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jan 2024 03:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZDOPFxjp33aebA8uMBEs9MD5XNOMvu699K2r2D/ofDY=; b=ot3olG55+a+L2n
	+FyPiph2zhlLm033CEMMQl842XoZylCT7bbO3rUotgRLnse/1mznhKD3vzNngbgHlb0oHZvADAmtw
	eN0brEB2b5RqOaNyE7m0n7GqiCTeENdGdFRLg6fmtFCIO5UOdpVoQ/chGhcl2kEVMT9CBb5Gs9MXq
	S4vobKJq0mzgbftXHn02YHraKVhrFa4F63nfuNhAMGrgTMhpQdLXibyy8VdbHUHqrAwjUaF2joyo3
	UHKs39GbvJvzCiWX8A4Vv65t9umBijFERj9J/COm8uiSDNoF4z/MP47s+11GQxg0QmXPbTvLDcXmf
	bpwDDnL9DH8QbxvEeXfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rN2PX-006ks1-1h;
	Tue, 09 Jan 2024 03:04:15 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rN2PS-006knf-29
	for linux-phy@lists.infradead.org;
	Tue, 09 Jan 2024 03:04:12 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2cd0db24e03so26641571fa.3
        for <linux-phy@lists.infradead.org>; Mon, 08 Jan 2024 19:04:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704769446; x=1705374246; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ts6Z+3/anOzjCG9PyaOIXFjQsNRQWH5IXZQw/Pohzek=;
        b=ctUzPC9RtNAl5oc1tcGYnAyD5meQTAgTpNLGuaA/vCiyxvpWbAdZ4h+eEnkRSsBSwM
         6n7KDbGE0Rbm67zSdGvttN9jy2eD60OvJNg1SsVW7l/89us/1bNZ/2saX4W0i6KOzmia
         jlGXbRKRrBLkYochGvjh3fhItU2Bi2Qsp/STz54e3HJgo78QdWUE0/QvQoZSO3gbEvjn
         p1g2Zo6h+LT+CwnDhdKhM+U1Nl+NHnhIfdNri1JrZCxIS6r9ifRSNjlepXYQ65XKta8f
         j5NLyRUig0n3vKkI58hmKJ2x5nS6YPKmYa1GDHH8/MZkhdGeinkDCJ3OvgJ4B+WtiQkn
         FyeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704769446; x=1705374246;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ts6Z+3/anOzjCG9PyaOIXFjQsNRQWH5IXZQw/Pohzek=;
        b=HGJQLEElvzFbTPoyuxjytCUEGIZfgATrsNRbNCAv+vLA/t1MyGYsAbjdx0WRKxl7qQ
         5C0KpgZ9AXU9V55LtND0laOqDeaOM7LSFVc5HCHr6+/MPZAfe0PjmcFtBoXRUcEbVlwP
         gWlRjp5rP8jYQDw91oZ+h7vZckN8wo48mTylpbYsF7dVsER8GVwJQIjKkSHeeCzJSoQr
         3fObNBioBpCQfLkaG5LHVDUfcx2bIjDy0RcUiTGcQbr1c+korqQCEyxrrXnUj0Z3NtJg
         De1LSsqlzZ99mOI4WyD5vWq+mRKkff3ZqtfjTdXbPpeIZyTU+Wr7xV7QRT2pqfNd22+x
         zXhg==
X-Gm-Message-State: AOJu0Ywes9Quz5wAhMJ2Y8utJWhKoKyT9AwXfWJFexbWzSVQDdEUM+zm
	0UCJJPECSW+3CjuHeX/r7tckxmNYIZf6qw==
X-Google-Smtp-Source: AGHT+IHwzdxEDQHcajDjP2jPl1fHFSpqKxdFEUaA64y/qW/AB+FcITHPl/MhLc7uHccdP7FgiP0HUw==
X-Received: by 2002:a2e:6a19:0:b0:2cc:f5fa:28ae with SMTP id f25-20020a2e6a19000000b002ccf5fa28aemr867981ljc.149.1704769446065;
        Mon, 08 Jan 2024 19:04:06 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id g30-20020a2e391e000000b002cd1ad3b11csm176920lja.42.2024.01.08.19.04.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jan 2024 19:04:05 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 09 Jan 2024 05:04:03 +0200
Subject: [PATCH 5/8] phy: qcom: qmp: move common bits definitions to common
 header
MIME-Version: 1.0
Message-Id: <20240109-phy-qmp-merge-common-v1-5-572899a14318@linaro.org>
References: <20240109-phy-qmp-merge-common-v1-0-572899a14318@linaro.org>
In-Reply-To: <20240109-phy-qmp-merge-common-v1-0-572899a14318@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=8056;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=aetwf3k9aWU9Ah80lPBuYFgoijUVfo0Q8ZkqKmb/pCI=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlnLehKr7kPsCDRE35WQGOEyOR3phJlzPXtT2oW
 ZLIoffXXsCJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZZy3oQAKCRCLPIo+Aiko
 1cVeB/4pZ1t0oUVHuaZjCVJUweIOVLwGO84bnwklZsBS7wygnSJFpqh9Kga/WF57utPIlK0Iyql
 +GCMr9VVHIVbf7UhBsTSg9O979+5ZF0RjTWz5qL82jrnMXoLitNwPYkY4szhdlrewchZBFqo6Eo
 W5J7/c+9Duwz6QeGifRY2Cl3Y/dGAd6zkDKBG+MDtBjIvHlxvxjy6zjJ5lOY/FHwSbVZMXAa1Qv
 kY6l1aZx7jl+ns1avifyJavWwK1zPvwSQmab556ajF25gdYNWzd/sdcSbJdbIIWyfIUA7tfhdE6
 LE0ZYrv8lFxVIIx/N0bcDyCfatOWFQmHLL47V9xk+RoFD1Ce
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_190410_705111_109A08E4 
X-CRM114-Status: GOOD (  10.64  )
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

Move bit definitions for the common headers to the common phy-qcom-qmp.h
header.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c        | 21 --------------
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 10 +------
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c         | 12 --------
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c          |  7 -----
 drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c   | 21 --------------
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c          | 35 ------------------------
 drivers/phy/qualcomm/phy-qcom-qmp.h              | 25 +++++++++++++++++
 7 files changed, 26 insertions(+), 105 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 1dae93640479..4555c7af08c6 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -41,16 +41,6 @@
 #include "phy-qcom-qmp-dp-phy-v5.h"
 #include "phy-qcom-qmp-dp-phy-v6.h"
 
-/* QPHY_SW_RESET bit */
-#define SW_RESET				BIT(0)
-/* QPHY_POWER_DOWN_CONTROL */
-#define SW_PWRDN				BIT(0)
-/* QPHY_START_CONTROL bits */
-#define SERDES_START				BIT(0)
-#define PCS_START				BIT(1)
-/* QPHY_PCS_STATUS bit */
-#define PHYSTATUS				BIT(6)
-
 /* QPHY_V3_DP_COM_RESET_OVRD_CTRL register bits */
 /* DP PHY soft reset */
 #define SW_DPPHY_RESET				BIT(0)
@@ -65,17 +55,6 @@
 #define USB3_MODE				BIT(0) /* enables USB3 mode */
 #define DP_MODE					BIT(1) /* enables DP mode */
 
-/* QPHY_PCS_AUTONOMOUS_MODE_CTRL register bits */
-#define ARCVR_DTCT_EN				BIT(0)
-#define ALFPS_DTCT_EN				BIT(1)
-#define ARCVR_DTCT_EVENT_SEL			BIT(4)
-
-/* QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR register bits */
-#define IRQ_CLEAR				BIT(0)
-
-/* QPHY_V3_PCS_MISC_CLAMP_ENABLE register bits */
-#define CLAMP_EN				BIT(0) /* enables i/o clamp_n */
-
 /* QPHY_V3_DP_COM_TYPEC_CTRL register bits */
 #define SW_PORTSELECT_VAL			BIT(0)
 #define SW_PORTSELECT_MUX			BIT(1)
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 07c6f20a49d4..0442b3120563 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -23,17 +23,9 @@
 
 #include "phy-qcom-qmp.h"
 
-/* QPHY_SW_RESET bit */
-#define SW_RESET				BIT(0)
-/* QPHY_POWER_DOWN_CONTROL */
-#define SW_PWRDN				BIT(0)
-#define REFCLK_DRV_DSBL				BIT(1)
 /* QPHY_START_CONTROL bits */
-#define SERDES_START				BIT(0)
-#define PCS_START				BIT(1)
 #define PLL_READY_GATE_EN			BIT(3)
-/* QPHY_PCS_STATUS bit */
-#define PHYSTATUS				BIT(6)
+
 /* QPHY_COM_PCS_READY_STATUS bit */
 #define PCS_READY				BIT(0)
 
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 6be6c554e0b3..ebd6262fac96 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -34,18 +34,6 @@
 #include "phy-qcom-qmp-pcs-pcie-v6_20.h"
 #include "phy-qcom-qmp-pcie-qhp.h"
 
-/* QPHY_SW_RESET bit */
-#define SW_RESET				BIT(0)
-/* QPHY_POWER_DOWN_CONTROL */
-#define SW_PWRDN				BIT(0)
-#define REFCLK_DRV_DSBL				BIT(1)
-/* QPHY_START_CONTROL bits */
-#define SERDES_START				BIT(0)
-#define PCS_START				BIT(1)
-/* QPHY_PCS_STATUS bit */
-#define PHYSTATUS				BIT(6)
-#define PHYSTATUS_4_20				BIT(7)
-
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
 
 /* set of registers with offsets different per-PHY */
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index ce9c55f7d5f5..d33b7691b71c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -32,13 +32,6 @@
 
 #include "phy-qcom-qmp-qserdes-txrx-ufs-v6.h"
 
-/* QPHY_SW_RESET bit */
-#define SW_RESET				BIT(0)
-/* QPHY_POWER_DOWN_CONTROL */
-#define SW_PWRDN				BIT(0)
-/* QPHY_START_CONTROL bits */
-#define SERDES_START				BIT(0)
-#define PCS_START				BIT(1)
 /* QPHY_PCS_READY_STATUS bit */
 #define PCS_READY				BIT(0)
 
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
index ca220878c630..6d0ba39c1943 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
@@ -27,16 +27,6 @@
 
 #include "phy-qcom-qmp-dp-com-v3.h"
 
-/* QPHY_SW_RESET bit */
-#define SW_RESET				BIT(0)
-/* QPHY_POWER_DOWN_CONTROL */
-#define SW_PWRDN				BIT(0)
-/* QPHY_START_CONTROL bits */
-#define SERDES_START				BIT(0)
-#define PCS_START				BIT(1)
-/* QPHY_PCS_STATUS bit */
-#define PHYSTATUS				BIT(6)
-
 /* QPHY_V3_DP_COM_RESET_OVRD_CTRL register bits */
 /* DP PHY soft reset */
 #define SW_DPPHY_RESET				BIT(0)
@@ -51,17 +41,6 @@
 #define USB3_MODE				BIT(0) /* enables USB3 mode */
 #define DP_MODE					BIT(1) /* enables DP mode */
 
-/* QPHY_PCS_AUTONOMOUS_MODE_CTRL register bits */
-#define ARCVR_DTCT_EN				BIT(0)
-#define ALFPS_DTCT_EN				BIT(1)
-#define ARCVR_DTCT_EVENT_SEL			BIT(4)
-
-/* QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR register bits */
-#define IRQ_CLEAR				BIT(0)
-
-/* QPHY_V3_PCS_MISC_CLAMP_ENABLE register bits */
-#define CLAMP_EN				BIT(0) /* enables i/o clamp_n */
-
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
 
 struct qmp_phy_init_tbl {
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index e481f76b8ed8..5bce580dcd71 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -29,41 +29,6 @@
 #include "phy-qcom-qmp-pcs-usb-v6.h"
 #include "phy-qcom-qmp-pcs-usb-v7.h"
 
-/* QPHY_SW_RESET bit */
-#define SW_RESET				BIT(0)
-/* QPHY_POWER_DOWN_CONTROL */
-#define SW_PWRDN				BIT(0)
-/* QPHY_START_CONTROL bits */
-#define SERDES_START				BIT(0)
-#define PCS_START				BIT(1)
-/* QPHY_PCS_STATUS bit */
-#define PHYSTATUS				BIT(6)
-
-/* QPHY_V3_DP_COM_RESET_OVRD_CTRL register bits */
-/* DP PHY soft reset */
-#define SW_DPPHY_RESET				BIT(0)
-/* mux to select DP PHY reset control, 0:HW control, 1: software reset */
-#define SW_DPPHY_RESET_MUX			BIT(1)
-/* USB3 PHY soft reset */
-#define SW_USB3PHY_RESET			BIT(2)
-/* mux to select USB3 PHY reset control, 0:HW control, 1: software reset */
-#define SW_USB3PHY_RESET_MUX			BIT(3)
-
-/* QPHY_V3_DP_COM_PHY_MODE_CTRL register bits */
-#define USB3_MODE				BIT(0) /* enables USB3 mode */
-#define DP_MODE					BIT(1) /* enables DP mode */
-
-/* QPHY_PCS_AUTONOMOUS_MODE_CTRL register bits */
-#define ARCVR_DTCT_EN				BIT(0)
-#define ALFPS_DTCT_EN				BIT(1)
-#define ARCVR_DTCT_EVENT_SEL			BIT(4)
-
-/* QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR register bits */
-#define IRQ_CLEAR				BIT(0)
-
-/* QPHY_V3_PCS_MISC_CLAMP_ENABLE register bits */
-#define CLAMP_EN				BIT(0) /* enables i/o clamp_n */
-
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
 
 /* set of registers with offsets different per-PHY */
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index d6a9c9b5ea12..d10b8f653c4b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -50,4 +50,29 @@
 
 #include "phy-qcom-qmp-pcs-v7.h"
 
+/* QPHY_SW_RESET bit */
+#define SW_RESET				BIT(0)
+/* QPHY_POWER_DOWN_CONTROL */
+#define SW_PWRDN				BIT(0)
+#define REFCLK_DRV_DSBL				BIT(1) /* PCIe */
+
+/* QPHY_START_CONTROL bits */
+#define SERDES_START				BIT(0)
+#define PCS_START				BIT(1)
+
+/* QPHY_PCS_STATUS bit */
+#define PHYSTATUS				BIT(6)
+#define PHYSTATUS_4_20				BIT(7)
+
+/* QPHY_PCS_AUTONOMOUS_MODE_CTRL register bits */
+#define ARCVR_DTCT_EN				BIT(0)
+#define ALFPS_DTCT_EN				BIT(1)
+#define ARCVR_DTCT_EVENT_SEL			BIT(4)
+
+/* QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR register bits */
+#define IRQ_CLEAR				BIT(0)
+
+/* QPHY_PCS_MISC_CLAMP_ENABLE register bits */
+#define CLAMP_EN				BIT(0) /* enables i/o clamp_n */
+
 #endif

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
