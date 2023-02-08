Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73A96C64ED6
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 18:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z5wsRIlfNgQ/X8NtD+BtSXALzAZPumWa6uPdPv+HJjM=; b=4mbFTaXj0P7bbK
	jczGQyauiddgDTgKlTyekcvcQYsh//icvLt8UEY32i63uuliYj9ifK1PgpJStpph+Nk30C9xwmFYx
	VHInhgHbV6A9FEv6jrGI1aDWrkeK6vHLKEnsml06jXdjFVXNAL7A6uB41BXIKl4FzRK46uVdjMrRh
	06musKuDoSFwYl6PMeAtxJYv5PvGlq8pLF646vbj8thKL+weCFebKn0ne3OSzdVof1sxvd1PvFT0w
	eVinnSafdFOM70sJcBktXBedgFkXR6IfN/Pfc6+UmOAxJN/8t6O6AOCHTEhCdFPyvVOESOxZuqPCr
	/+ZgDhm/mPx5m8Ko4NRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPpHP-00GchX-Sb; Wed, 08 Feb 2023 18:34:51 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPpHL-00Gccw-ON
	for linux-phy@lists.infradead.org; Wed, 08 Feb 2023 18:34:49 +0000
Received: by mail-wr1-x430.google.com with SMTP id bu23so1859852wrb.8
        for <linux-phy@lists.infradead.org>; Wed, 08 Feb 2023 10:34:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Ya6wdfqtEwU0trS7Ttm8mWl2QOJ16AufZUZRNQaQ5E=;
        b=ICJjhpv9vRi6MWiA6QmpoRou9iu+cytUd/oMxDevVHEgF8r66eeHKJC5nhmeViZ5zi
         lwwDs3j466OXvWTHH0+HJQzzjrVqTO/sEkE77Ty1v3KxwTvJ5DegNaL8s2NcocX6heU4
         HSQTPjEdJLN7jIVcHlTQlODRLTRLRU+jwiYcezSbnopThyK4X33btWxfjuMvuZmZHh+R
         /souAUTqSjq2cveQr5hxFw3vq4CLcqezbFIwrliQ/bA+mkZDF1MQBloclAaEwAxgNN0y
         820stxAkYoTbG4IJHVjR1mhOHxWKLJ+FohouXI6LE1iwLW3GMCq5JkMX7mNFOdho+ImF
         /02w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1Ya6wdfqtEwU0trS7Ttm8mWl2QOJ16AufZUZRNQaQ5E=;
        b=WYfUUTzbpO+7eFZ/XFLti2u8lrgLQ2Eu2XxhksiRtez5h9nKDKFXvGGcYbpe5/GBde
         PRNxe2vDL7O6D+ImUdrRWyIsxiDxCj0/O08EKF5SNcBvBbNHjardwc/gKb/JEPKQJsq7
         TNJbXC/RvEzM/hID84tA25OsUlYeHVboGVZS5PmGxZS8pJ0bKUmuKvIREdRwYsE299mI
         voDElk6rCkiEXBoenxHPUlbj8mysAn3/NXl+F4Rhpvd56qhLJ4Mr++N2QHWNBSaaB/r3
         5owu+9kDz9EIMtUxIDKXQnpBt9ly6eG/gbBbvlm9ENVACbPJBf8W0OPczHkGs27Pvsw3
         J/DQ==
X-Gm-Message-State: AO0yUKXAwOxj7LjMLXxmJ4oqABjEkbkygANN66be4Ja1B5Mk2FRmtl/h
	+z7rvxaai1p8k3uE4wNk6J50rw==
X-Google-Smtp-Source: AK7set+Zu22sADB+ygZqU33idv6apRiqPIxafLFySyrGm+MEfZh42BzQ/CpNwhVofHlmGbEDVvp7aA==
X-Received: by 2002:a5d:6950:0:b0:2c3:f7f1:e703 with SMTP id r16-20020a5d6950000000b002c3f7f1e703mr8659183wrw.67.1675881279891;
        Wed, 08 Feb 2023 10:34:39 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id v1-20020adf8b41000000b002be505ab59asm14591304wra.97.2023.02.08.10.34.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 10:34:39 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org
Subject: [PATCH v6 4/6] phy: qcom-qmp: pcs-usb: Add v6 register offsets
Date: Wed,  8 Feb 2023 20:34:19 +0200
Message-Id: <20230208183421.2874423-5-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230208183421.2874423-1-abel.vesa@linaro.org>
References: <20230208183421.2874423-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_103447_809384_724275C5 
X-CRM114-Status: GOOD (  14.42  )
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

The v5 version of this patch was here:
https://lore.kernel.org/all/20230207114024.944314-5-abel.vesa@linaro.org/

Changes since v5:
 * none

Changes since v4:
 * none

Changes since v3:
 * none

Changes since v2:
 * none

Changes since v1:
 * split all the offsets into separate patches, like Vinod suggested


 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     |  1 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h    | 31 +++++++++++++++++++
 2 files changed, 32 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 82b46f4c6df0..1cf643cb0218 100644
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
