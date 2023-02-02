Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB04EC636D6
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 13:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D3SYN0tzLL3JtvRrxA3tGNpfn0sVoo1ImA4Da4COcr0=; b=p68pKZHo17uJub
	FTfDqJv2qeifsodemHhraYSFEz4I7iEbppC3ctjQxHjSflUAtJbUOvdL8Fydr7JpYKKqvUNBbhiGc
	F+JCP3m1HtYlLHFWd/5NCOSmudcgQGoZFovWkHw+Wq5lrJQB8lFpVnRzTXJ4ATHdti3HirNl8S59N
	V0I89+uPG8trcn5GPOh2rtxxJs7hphIMI/aZlQzcYMQ7Q5tsmOprUitH8MKo457zDp8BiGHW9QO/d
	koj0c7HZCK3hkvX+X9RLo+RBgY+RW+qBfDJZTCaQpqdC1Hx+T4SxM63vAE2UP3Ov8WfpHxfSl0UcO
	sX70fMyQAYeH852cubvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZad-00G0Az-6a; Thu, 02 Feb 2023 13:25:23 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZaa-00G08j-JC
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 13:25:22 +0000
Received: by mail-wm1-x331.google.com with SMTP id hn2-20020a05600ca38200b003dc5cb96d46so3708849wmb.4
        for <linux-phy@lists.infradead.org>; Thu, 02 Feb 2023 05:25:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tb+uQ1fZqisHHMUBNxWvs6KlZ6qnv4FSYAwJJCTeq5s=;
        b=HLzz8sa3Po2Rde4X0EH1yOs05YR2uo2iR9kbWJ+lv+204CsMZ3cP/+5nXIU6jInhWw
         jAliYgV7XOtfeIXCpQuN3gLe6savMlCOUq061pmG6nMzXbfit1aKmw/IBnEDtrsmLMJx
         H8c+lMxCanst6PrbRjhnJrASpt1g3CqqlbYP80tY26JCzsCL3ZwyRozRo3KKn0EMHCBb
         AefEn5FcWg+XWTn4FGptsmPCDH9L8yn/8nfendtkCy/nXtgoXto6Ur4hUc7CZu+zrof/
         1uEEfYwTtdqNyN3QFTmSlHM7zeY+aYWHjm/PN0wPcTFCBkGSxAsSMRBPnW4a6ix+jvai
         QY+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tb+uQ1fZqisHHMUBNxWvs6KlZ6qnv4FSYAwJJCTeq5s=;
        b=oWAioX0w5ZiWxzMBZkaSiEmqNu1ixhSpS1LLoHA797P3qA1vK+9CaitmStyZMqjTkI
         wqLvFCX4EZBNq4ENHMVUBgRShERyCA1Q3NCYtTOH6+9kBTAycUfkDNAGeCB1YyqiQSXt
         g5cXoMAtLnXFrp7Yng+fBYVVtjnkcrDlYqaLSSHXMDdSvs2DLLrOhtZDKdeG6RmRyjEy
         76Y327HdF1q0jjCkraHcK5JUR4hIFIpaOt3o7ht8aukhKgtkWOq1F9CAoa4DFqLTWpFA
         i4fc8b8YZuE6q3CmE26ZFcPwZkMq9+IC2eCwHWfgRVgxKGIarMxXH2a03Sm/WmGMyhQG
         UHcA==
X-Gm-Message-State: AO0yUKVfTaBYX/pX8pAxnVKOkglKM+kMRNGw+yX5Iv0pEAa2+LjkMidh
	0o1ESjr1AJ/hGC1HjWtEJX1/mA==
X-Google-Smtp-Source: AK7set86zMUUjhx5Hz80ZQX9tFVy8zG3rGPP0Ul3ebUGDmLjbUoESVxdKDT6nX7nIklsT0tEyF/WbQ==
X-Received: by 2002:a7b:c042:0:b0:3dc:4042:5c21 with SMTP id u2-20020a7bc042000000b003dc40425c21mr6175321wmc.6.1675344319417;
        Thu, 02 Feb 2023 05:25:19 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id e22-20020a05600c449600b003db06224953sm4690943wmo.41.2023.02.02.05.25.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 05:25:18 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 4/8] phy: qcom-qmp: pcs-usb: Add v6 register offsets
Date: Thu,  2 Feb 2023 15:25:07 +0200
Message-Id: <20230202132511.3983095-5-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230202132511.3983095-1-abel.vesa@linaro.org>
References: <20230202132511.3983095-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_052520_647711_A09F9E99 
X-CRM114-Status: GOOD (  14.23  )
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

The v3 version of this patch was here:
https://lore.kernel.org/all/20230126131415.1453741-5-abel.vesa@linaro.org/

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
index 1f022e580407..86032dc4e24e 100644
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
