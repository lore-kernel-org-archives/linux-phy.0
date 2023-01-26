Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5C68C61DA2
	for <linux-phy@archiver.kernel.org>; Thu, 26 Jan 2023 13:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fsZnxIdgLHKFt3guHVta+r4wIPhIzai7Uk163GYtUwU=; b=B8sJqnQ1cCG5Y2
	wJVW4+d/y4USF5fG1IbC27KI6B517b5QjZ0LRB5MTIzoZHpfsqWnp4o79K4QrRkiuXxMauksKhi9v
	QNx5gHw4mj5xu2izN1u2ORd8PGEwfEy/T5QDFfJ9SpViWLOUImZaE6IHh25Wjte52RN9RS49eE0tR
	CZXeA/UL8D7SR+cgVyI4VgEzx+pxICoScZWnNbOrHrWqx2Jf8BrvjDtIv0AVr8rGgcSDfXo5Xtozp
	rSpnd14KHdKoWgwhaA2QZnM2e1LIB8UBqWslG6eRE34Ydz/bFENm53G4mXe2jreBXmweBxstmmX2z
	QWP9pHCM/G3LMoL7VSWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL25G-00Auiq-3m; Thu, 26 Jan 2023 13:14:30 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL25B-00Augq-LT
	for linux-phy@lists.infradead.org; Thu, 26 Jan 2023 13:14:27 +0000
Received: by mail-wm1-x336.google.com with SMTP id m15so1085376wms.4
        for <linux-phy@lists.infradead.org>; Thu, 26 Jan 2023 05:14:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kURYlYVInYs10ttpQnifCsWvtgqKTN58XyXAiFJVJmk=;
        b=vs1slFZNTRGkGwY5ZeFOhINvWnSjW1vc40xeezY992M/0jOmZt7nXHI2tE5L7o0Qrz
         oM+FtRVXkUgBpaGuhnQ2R0rHBXR8lNHUs6wP/vwZJC90mKkhDn0fdXYMZoufztAyavnX
         wmeb06hMn7M3k90MzldwrkM8Hjom1768vdwUI0FgujKowzncPZ29KVmm8hC/p55B6iY+
         JHJRpHwMFrAC0Ma44EbWtzTNzDuRtm0uYjMGZt3FpB2pMTIX2PkY568oBdhfFq7lz9e8
         zy2/9sJReS+EX1SukT3nPJw6ynSKZe4YeQOln/WQ2aisN0rw7qV2fSRZTpj8UZz+QCza
         RjFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kURYlYVInYs10ttpQnifCsWvtgqKTN58XyXAiFJVJmk=;
        b=VM+tgYgMWM+bdFo79dfVPwgXZElePPx7sc91se3Acgd56MrPt24J/Cg7Z9MFgTGVY2
         kwN2yAL0vz2k7dtrKBSeZ+FP3aSCIQEcoRpSLl6sKQ1V8PXHYBNxarMStTa1skTBZKYr
         A0ogAybn1nSmDuSbrJ2YbXe1VMKyeD0KPFuwJAHSjWB3elbHDz5jb5ojx6bXsRl3XSYs
         0/7IIUQRyzFOfDG85zgXGSZHy8f5l0SNFPlejVVkdqVEtG7LnErj3JGYkpJslDtTNyrm
         JPJQttzki5oQPulHaslB4/96ADvxoIuRJaWAsqoRD/8Cj/0MHTPuL/EwQntnARJWaej9
         nsIw==
X-Gm-Message-State: AFqh2koYfdepxB2smZMKoWEx0aA60Wwf+B/TonLOPJGTPbmg1NQQxYbw
	xUQxqx7bjk874WJ/x6jZpMyrKA==
X-Google-Smtp-Source: AMrXdXv+ghquWRGE3xNz4KO4cOKPUTQqObA+pw5nBQgCK3ILLX6+jVZ3nO09LURQ+7dULPfTOg1wQA==
X-Received: by 2002:a05:600c:35c1:b0:3db:1424:e781 with SMTP id r1-20020a05600c35c100b003db1424e781mr29987079wmq.23.1674738864516;
        Thu, 26 Jan 2023 05:14:24 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id 18-20020a05600c26d200b003da28dfdedcsm1719804wmv.5.2023.01.26.05.14.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 05:14:24 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 4/8] phy: qcom-qmp: pcs-usb: Add v6 register offsets
Date: Thu, 26 Jan 2023 15:14:11 +0200
Message-Id: <20230126131415.1453741-5-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230126131415.1453741-1-abel.vesa@linaro.org>
References: <20230126131415.1453741-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_051425_739477_6C3165B4 
X-CRM114-Status: GOOD (  14.54  )
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

The new SM8550 SoC bumps up the HW version of QMP phy to v6 for USB.
Add the new PCS USB specific offsets in a dedicated header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---

The v2 version of this patch was here:
https://lore.kernel.org/all/20230126124651.1362533-5-abel.vesa@linaro.org/

Changes since v2:
 * none

Changes since v1:
 * split all the offsets into separate patches, like Vinod suggested

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     |  1 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h    | 31 +++++++++++++++++++
 2 files changed, 32 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 521ea3ce6b83..14d12d198d87 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -26,6 +26,7 @@
 #include "phy-qcom-qmp-pcs-misc-v3.h"
 #include "phy-qcom-qmp-pcs-usb-v4.h"
 #include "phy-qcom-qmp-pcs-usb-v5.h"
+#include "phy-qcom-qmp-pcs-usb-v6.h"
 
 /* QPHY_SW_RESET bit */
 #define SW_RESET				BIT(0)
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
new file mode 100644
index 000000000000..9510e63ba9d8
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2022, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_USB_V6_H_
+#define QCOM_PHY_QMP_PCS_USB_V6_H_
+
+/* Only for QMP V6 PHY - USB3 have different offsets than V5 */
+#define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG1		0xc4
+#define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG2		0xc8
+#define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG3		0xcc
+#define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG6		0xd8
+#define QPHY_USB_V6_PCS_REFGEN_REQ_CONFIG1		0xdc
+#define QPHY_USB_V6_PCS_USB3_POWER_STATE_CONFIG1	0x90
+#define QPHY_USB_V6_PCS_RX_SIGDET_LVL			0x188
+#define QPHY_USB_V6_PCS_RCVR_DTCT_DLY_P1U2_L		0x190
+#define QPHY_USB_V6_PCS_RCVR_DTCT_DLY_P1U2_H		0x194
+#define QPHY_USB_V6_PCS_CDR_RESET_TIME			0x1b0
+#define QPHY_USB_V6_PCS_ALIGN_DETECT_CONFIG1		0x1c0
+#define QPHY_USB_V6_PCS_ALIGN_DETECT_CONFIG2		0x1c4
+#define QPHY_USB_V6_PCS_PCS_TX_RX_CONFIG		0x1d0
+#define QPHY_USB_V6_PCS_EQ_CONFIG1			0x1dc
+#define QPHY_USB_V6_PCS_EQ_CONFIG5			0x1ec
+
+#define QPHY_USB_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL	0x18
+#define QPHY_USB_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2	0x3c
+#define QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L		0x40
+#define QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_H		0x44
+
+#endif
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
