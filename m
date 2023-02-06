Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15049C64ED6
	for <linux-phy@archiver.kernel.org>; Mon,  6 Feb 2023 21:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=inLOAqCmTJnHZcV0xkbg4nndhHf82xaD+mFO4FGF2Nc=; b=Zsx6/dmdAyZeEY
	jLBWB53SAwKu/LS3LyHEQzx8XwWspdDbHcaL+8mcPP/1MijXC4AyrdImoFqYtwD05lzwu+3YYJDdy
	O33zWRMI7mP30BMTx81tOTqiAjzQIbNnzbOYHqCvONErjT5g+8xCoEuLUIzhA2kxdBLFnskoi2sJK
	uel1g9I71Qfg+lc5XSJHj2N1W0U8TFpM15WhfDC3senu1tialmhPLFXcIXKHjexJZgURA299IalGN
	NwZstUm1w1epQfKpWjGaBKxFXTtIXxXyLzGzU7PlXd6tqsUdSoL4Xm2iefqUTxR9CMyteumysnt2p
	yT96rb6ltBatn2RVfGtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP90S-009zHu-G3; Mon, 06 Feb 2023 21:26:32 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP90Q-009zF1-4W
	for linux-phy@lists.infradead.org; Mon, 06 Feb 2023 21:26:31 +0000
Received: by mail-wr1-x436.google.com with SMTP id o18so11754484wrj.3
        for <linux-phy@lists.infradead.org>; Mon, 06 Feb 2023 13:26:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3CdmZAvSDf3YUddspjlpEUpILIeMtabhNAIwhnaltBU=;
        b=xkeb1YIqT9oz9L3dgqAR2zf28izb/lIwSM6sy7voQ+vg5sYYiOJjcn/g91BTJSdjs2
         GLFUadNMoyG9Z4yidu4FjVVNGuKzUHf39ypWNyh5nbunACeXI47PKeTHEdZu841yR5Bz
         xrZ2eB0jXTpXeQ2aJSYD94t5MVf/py0iiJwUrzY+1C9udpX6fDPdnWRhPMIwGxugcKeR
         pu+4aMej+nyJ+XYAtfHoXfYMid57xqgQWzID7YZz0j9V0hX1kphZIOy6OJSMHSYyVKZ0
         FsDfTddOtFkshD1Dz5Y3x6xd5fEcFhk3g3k+0QUt3vD7vYk0ulU4BtzTJNLruC10xmSK
         vEog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3CdmZAvSDf3YUddspjlpEUpILIeMtabhNAIwhnaltBU=;
        b=yge2XVIqJk12GyehmGUoH66TWULzZacfXqu2GWtiy7opryeiJFAOV7ua3HJrRHQMqj
         XosgH1lPV1xgzlbm2eOVXVUIUz4kXWI42/o4Btsl6SBch3MWFsIeJu9i7ACzxZnvNIFW
         Z9I3xEBxP7ObNqjUvwWbVUAlWNfRRO0nfJzU565WA2BPmDLy4MHfnWAAPn0cwlW+DWMk
         0121i6xQOYe6idSWiBDIv4GJVOwG6npbdlEBe3b6d4jIS416kvdD0ODxa/Newn/4OcRM
         Nq0vGFNx1tbOv4o5sVaxw/90DQZeP59iaOZNfrtivHamV2A4/4qo9O6d5OVC12e5X3u3
         1HwA==
X-Gm-Message-State: AO0yUKVUHUjTOFLZx/wiuTnRKwFPc9rsJ88DJQ/1doXh9CzvsWzsyqX5
	5k67yL2z4ZinnSSfLesoWgCZJQ==
X-Google-Smtp-Source: AK7set8qwzmP/ZkyJr2uk+dl990xJNi3UxBhYjoQOqCzBx9mn4iqNs0qDgRvos9OiqTYQ7L+qtr3VQ==
X-Received: by 2002:a05:6000:cd:b0:2c3:dc42:524e with SMTP id q13-20020a05600000cd00b002c3dc42524emr356754wrx.10.1675718786483;
        Mon, 06 Feb 2023 13:26:26 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id j11-20020a5d604b000000b002b57bae7174sm9783341wrt.5.2023.02.06.13.26.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 13:26:26 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v8 02/11] phy: qcom-qmp: pcs: Add v6 register offsets
Date: Mon,  6 Feb 2023 23:26:10 +0200
Message-Id: <20230206212619.3218741-3-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230206212619.3218741-1-abel.vesa@linaro.org>
References: <20230206212619.3218741-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230206_132630_195152_1023C186 
X-CRM114-Status: GOOD (  12.87  )
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

The new SM8550 SoC bumps up the HW version of QMP phy to v6 for USB,
UFS and PCIE g3x2. Add the new PCS offsets in a dedicated header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---

The v7 of this patch is:
https://lore.kernel.org/all/20230203081807.2248625-3-abel.vesa@linaro.org/

Changes since v7:
 * none

Changes since v6:
 * none

Changes since v5:
 * none

Changes since v4:
 * none

Changes since v3:
 * added Dmitry's R-b tag

Changes since v2:
 * none

Changes since v1:
 * split all the offsets into separate patches, like Vinod suggested


 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h | 16 ++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h        |  2 ++
 2 files changed, 18 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
new file mode 100644
index 000000000000..18c4a3abe590
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_V6_H_
+#define QCOM_PHY_QMP_PCS_V6_H_
+
+/* Only for QMP V6 PHY - USB/PCIe PCS registers */
+#define QPHY_V6_PCS_REFGEN_REQ_CONFIG1		0xdc
+#define QPHY_V6_PCS_RX_SIGDET_LVL		0x188
+#define QPHY_V6_PCS_RATE_SLEW_CNTRL1		0x198
+#define QPHY_V6_PCS_EQ_CONFIG2			0x1e0
+#define QPHY_V6_PCS_PCS_TX_RX_CONFIG		0x1d0
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index a63a691b8372..80e3b5c860b6 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -38,6 +38,8 @@
 
 #include "phy-qcom-qmp-pcs-v5_20.h"
 
+#include "phy-qcom-qmp-pcs-v6.h"
+
 /* Only for QMP V3 & V4 PHY - DP COM registers */
 #define QPHY_V3_DP_COM_PHY_MODE_CTRL			0x00
 #define QPHY_V3_DP_COM_SW_RESET				0x04
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
