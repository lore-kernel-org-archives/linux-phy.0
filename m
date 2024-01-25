Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 667F2C48285
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jan 2024 23:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zMYUL85loM9dVWalto8fnGkB8CrV+bj8jN/NN44h1oA=; b=Nw4hu+D0HaMw74
	7ey1rAAY3MNqAkKys4KAiyCWkOYd0L0BGKXVQV6ZdZd4H9KhfsL4mAgueBaQcFWkqlVLtZpQ5LuMU
	jJEViieewiVo0CVTtcApOmE036aUXvty/TyoMqVn4PRwmhZhaZtGCOxHuizPL5osK6MuzWNml7tF0
	lpyWdJhL0YwMVcENt4o5JFjQx/mIIHzLUfUO0rZUDfjwGSGu+IqlKQT0RnLWBIqxzE2Sax0F8Nl9Y
	vtiAKuMoQRjDYOoP31eVMXH+4MNgU5Ws24iWiV8hQDHq7vLjoJRRvAuAAwrxsDU/LEYtPBhAROKeG
	ITIb+a0vNVqfpyhWjrsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT93r-00000002RSo-3iR2;
	Thu, 25 Jan 2024 23:23:07 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT93n-00000002RNa-2AlW
	for linux-phy@lists.infradead.org;
	Thu, 25 Jan 2024 23:23:05 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-51020e061b5so985478e87.1
        for <linux-phy@lists.infradead.org>; Thu, 25 Jan 2024 15:23:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706224981; x=1706829781; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rv0q5k3NRshGB6WXnPMvW65Ufa6bV3x6w2h5kW9SRqs=;
        b=NWnTElAesMWafdg+0aABCt2cIFX70YNJ9gAW10rnSyMOYFuuz0ImRw49peDLJS5WlF
         +Y6GcCi8f5iMPbscw22TYQI4mmpRlICQ2mqHUU8YrGaAtF0k3kRyeaHgEyQQWYzp2/8w
         Vn1ZylPZCWfidNEheStPBiojvauhUwn3mRCxnwfBorG3NVVwB4QLHG6ey0FRV98teN6h
         5z0N+ulse/Q0/C0Oy/+SdmrE+uSlwmbWbBzS68GIohf4kjj1yb3pJ6GUUNGLaGOXLqGr
         ImXBBaFWtsR/bWE2AYhYK+lj7V/NGBSy3jW3DszW6eY/l+7sQZWululM3GQArFgo51gU
         3itw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706224981; x=1706829781;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rv0q5k3NRshGB6WXnPMvW65Ufa6bV3x6w2h5kW9SRqs=;
        b=hvDUm0Alx+W0uWJfnAxp18VwvwKF/OwjzHcv/ZY0HydO/cudI6MXTI04G2W/eDHAa5
         QF7N603sAloAzSD51VMO5I1vt/zhuNvFLDAwzSVzxAwrZdSrD1nTjJgkBAYV7fiVcxeZ
         /bwcb1aGCTfqUbrWjP5ZhgSdk/6be97LdQYwWvsKgnSyjWGUFDqq0ZEcBQfCt7Jw0ctd
         7jDca0JH2LmrB3VnSKj3PArjckvf+OS6mrMcfxQg6WtVKLM6C9oI2Nfyi7MRYLl78FSp
         7VckDayy6FCjwActmXcKeDm7GYxIvnZ6Ww2dVkVSqHwpHM9jH1ERMemgY+pQf0l5Nion
         WomA==
X-Gm-Message-State: AOJu0YyjI8Y7a6WdKHqH1r1K2h8vrmsxhzsqhwGXXQlsgsZOWbxcZScw
	dOTQKS6Y9A13tFxieOsllwWIIHB9XsgWukeCNn7xPt6FesYRMrhiKAChywX8zNc=
X-Google-Smtp-Source: AGHT+IG3kOrudBbF+VGJ1GLM5SD+5/5GLoEux1XiZW52SKchndgwbEzti2cRK3j/+v3HNHwEsTrWXA==
X-Received: by 2002:a05:6512:370b:b0:50e:93fa:336 with SMTP id z11-20020a056512370b00b0050e93fa0336mr232707lfr.95.1706224980770;
        Thu, 25 Jan 2024 15:23:00 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id k3-20020a05651210c300b0050e6df07728sm3920lfg.180.2024.01.25.15.23.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 15:23:00 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 26 Jan 2024 01:22:39 +0200
Subject: [PATCH v2 5/8] phy: qcom: qmp: move common bits definitions to
 common header
MIME-Version: 1.0
Message-Id: <20240126-phy-qmp-merge-common-v2-5-a463d0b57836@linaro.org>
References: <20240126-phy-qmp-merge-common-v2-0-a463d0b57836@linaro.org>
In-Reply-To: <20240126-phy-qmp-merge-common-v2-0-a463d0b57836@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=9656;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=wzZm1Snfn+S6vji4L2JQdN0+CBVcVBvtUE7gaG12uiY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlsu1Qy5GdMJvZB0kHAKuGe3tl7KsVMd94Elmp/
 KIKkCQoWACJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZbLtUAAKCRCLPIo+Aiko
 1WW1B/sFpiL6n+OO50TBfApS1gFuJqOG+cKiFn+VuWlEQ1Wb1R9q2R/9E5uvbXCFwxH3SN2TPLz
 Q6iRqAeA97mE0zib94YSnRFg7nKsVkrgGVjK8Mmn/QU2Wc2CJ2Biogh0sLx7FPBie3EjRXbO/u2
 YOCHvkRKr7OAyPewchTy4zaSAR0AMAF2+jKeCfPRv5qE4JHnjppnOU0oUo+DrteossfcABDjoHk
 bQuqktXObQa7MdJ+qaUXVvl53opbp9cYrVNhQ/RC7bWjGRS/Hsfm9igArwKNvaPOeVFdJ25E//X
 Z5/ToMilJ6tQkZojAUaLMt+1Rx4U4gPqIUWX4MYCJocNpukE
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_152303_772185_3FBD3EF6 
X-CRM114-Status: GOOD (  10.62  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c         | 32 ----------------------
 drivers/phy/qualcomm/phy-qcom-qmp.h              | 25 +++++++++++++++++
 8 files changed, 26 insertions(+), 137 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index bb961094e41a..b6908a03da58 100644
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
index 6119950e455e..5985d019252c 100644
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
index 01a96c60c913..38c4a4cc670a 100644
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
index 02d90850baf2..80071f688671 100644
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
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 2de440f0bf02..d316a541f628 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -28,38 +28,6 @@
 #include "phy-qcom-qmp.h"
 #include "phy-qcom-qmp-pcs-misc-v3.h"
 
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
