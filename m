Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 489C4C61D97
	for <linux-phy@archiver.kernel.org>; Thu, 26 Jan 2023 12:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ofxc/j1H8Hd0c56OX6RwX6Pk8jykvyaj0Y1ZwBf/tok=; b=wyPlzine2pG0w7
	9kXRwU+x0IB730enuEF1ETYCeHV48mEL/M6kluIzTz8LDpt2Uti9lzBE6cWz1hdXlL+MgKY63ySWB
	TPBlxIEEO6dwUvBOiEzLwL5e3QPhown2zDUYk5m0SmvQv9cR1+unZCF5PQNhQQ0Sd57BafC7SKgwW
	M6IKkojpisJuTrXqgz1SmTx6fLtzlanZsW3hucWV9CI01KcfZhc6KjoJ1kN0ZOY49uqQ6+4fTCjad
	mvqJZvPX98jI3gD+IRfcQWV0wHcb+s++QzzmVRY5t037l6gtAlEPE14A4uMIqLW77VNfwB4ELhle9
	MuVWjaAmaML4r6AgXLhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL1eq-00AsDd-JQ; Thu, 26 Jan 2023 12:47:12 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL1em-00As6N-5S
	for linux-phy@lists.infradead.org; Thu, 26 Jan 2023 12:47:10 +0000
Received: by mail-wr1-x429.google.com with SMTP id q10so1661600wrm.4
        for <linux-phy@lists.infradead.org>; Thu, 26 Jan 2023 04:47:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YWuG/tl6av7N7lYBvnhsaaFb5xBOZ+IkswLQCDJkdys=;
        b=ZgnwOUaCO4Tghs3bB2vuMB9BxMyxnM4d95K4MqatxIZtj4xgq6gkyKY11jxe03czyV
         479+hgzYbkIHVlvxw6NA6OTSt/Ps1pt1zIYBFJCFOM4rpu4cjnR7hv2l/iVOSrGSMZus
         TyO3sXnL2NeetV4DCMMprm1yLD4t1b3zjDuV7u3yeRlez6P3pViXIXIFpjot1TL4zi2w
         rulVuLhNJZj+XaCwCcdvCakflytONAsFFhc1+qXISIEUjnduO5+EzErtRKY7h8gaX6OJ
         3l3aJmb/nBL7vnWk+7ACyM45p7Uuxtv0VHw+ea9rC88+ED6OZgdi8amJfUWpuvIQsaQ7
         62EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YWuG/tl6av7N7lYBvnhsaaFb5xBOZ+IkswLQCDJkdys=;
        b=Vyrqf4HQk5zGcM1SAN2/iPMSgHpQ4q5QFs7jWCq0TNc30Ej+ci4WDFH11+FfJVO65x
         kTRG6fLInxXLCBYn4eE8+7C4Z2ZziKpIaIc06Ta42eS+sH+OmwysdTEf2YCJE+dHsF2m
         YnsPNOSKbD+KTkYbx+WlMN6MrgU1mM6qxKYJ8dLGfjgn604YuqYOjwBNB5OKzdrZVsG5
         4RwGFqzrfq62CdGDNKGcrAuAFNuF6Pht7AdRlLaR/I7Xh2hlLIk86JHnYQ6rYlqXesur
         gjlF+B21MR0SAbzb0bifvk9OMVBXRuVm898QnIVPa+4CD/Ip0dmw8FAXYYRPNCAu/AbZ
         +tGA==
X-Gm-Message-State: AO0yUKWKAfxRKd6CndWh3qE/cGTiSN/MaV985SOGPygryXTqfKk1FBTO
	wzN96ZE847gZiSev2dpDQBElXQ==
X-Google-Smtp-Source: AK7set/LbAa/qM28lU2dAIdWN2QzSLwCUWuX/8s6Nq4LfA6eCCGcFk7v+PtxwxSIEERQX2XH15/onw==
X-Received: by 2002:a5d:658f:0:b0:2bf:bac7:30d4 with SMTP id q15-20020a5d658f000000b002bfbac730d4mr4941977wru.53.1674737222674;
        Thu, 26 Jan 2023 04:47:02 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id v11-20020adff68b000000b002bfb8f829eesm1198681wrp.71.2023.01.26.04.47.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 04:47:02 -0800 (PST)
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
Subject: [PATCH v2 4/8] phy: qcom-qmp: pcs-usb: Add v6 register offsets
Date: Thu, 26 Jan 2023 14:46:47 +0200
Message-Id: <20230126124651.1362533-5-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230126124651.1362533-1-abel.vesa@linaro.org>
References: <20230126124651.1362533-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_044708_297796_79E5C26A 
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

The v1 version of this patch was here:
https://lore.kernel.org/all/20221116120157.2706810-2-abel.vesa@linaro.org/

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
