Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CC27C6379F
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 00:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z2T5NpRXs2cEcGwee/vrHzE80gxA6wQ3nLmrJyKYGXk=; b=lVDXcsW1+UWTG6
	jImJP1Q6EuptpDRNSqL1rP8a/R89X+NvXlYvn9DoBzy/jilbbD3Yhm+YY8J7KDEt0oE7OKEQ7BO9A
	8mV1Z05HKll2IKyXM35b2nQZ9FPnUjOcOBEoycsrRWKdNic0B4W4fX0LKKuCFbJm6+PjEuEf+T/Um
	kww9JvLDoBb3/vSvfGOW6JZ9x4KiItQ2pTWhjhw9Jpuksp1Iehdz9rkuxD42U3+MIAlcUa1WueeG8
	n0iBlBA//2kFFsjY+VbicPtUycvH2dABNqLRmEA5vx+yOBoHS9kqorLpwCaT5KoyX1uwDLBmqGLGv
	2CoC6FwJvNCkE8gVXm7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHwTh-00GLkS-Vt; Wed, 18 Jan 2023 00:38:57 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHwTd-00GLgu-Kg
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 00:38:55 +0000
Received: by mail-wm1-x332.google.com with SMTP id q8so11776123wmo.5
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 16:38:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iDRnB/Z4jSJBt/qZSOzeyTcHByoxHG9CkcxLpEDk5ZU=;
        b=Lqa/03669MMo5WCjdrfA0rUwlv4PUM2i3GszsYUpesxinLXd49rIPMtQ3ndsehaRzz
         d9DXrPSPqWfvHHKy0fvzf+4rz2GH8Ap99MuxxGNwceDamUr7Gtno5ESL0i2OLNAqQkkH
         N+O3KJyD2AtWAxdU5HRjKagmpMzsxlC5Y/rPU/YhiXS98lGXhRcWBZn+6qSRsF1t6bpx
         mcvq69QEEVHf9P7kQ0HOw/Ikuk3hm+I/bvRxHYFTjK+Lhf3HxiVcORx03kfwAgmqsDa5
         vPqe4UxKS/rQ3ZGdrH6+weKQQnPGClJHCElSlRFIu5PNXkxzKCy1Tmzh9oGxtkp+4Hc4
         XFvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iDRnB/Z4jSJBt/qZSOzeyTcHByoxHG9CkcxLpEDk5ZU=;
        b=71cjo5RPS4BXum49KTRO8Pl2DMANSQq/LLB2kW42QphtcOA+i35L/lhJ1ADEwDBp4e
         zuWVUNmHYSJA7au69zZRzGQLQ4mucd/w7arRKUb/u4jxg744FPZEt7BGUELfPOXNtLvk
         xG6hsp9lJbhQFY5ncyXYqqsIR5n3E/EzphMmglajgU7tKov9aE7/dMhRoq1fmoVAHAV7
         UtSizQQIoTMTpLKXHUQwzG0UITtE9KH6epyjrsyQz9920DPRO3XzCu6yioTDa+jmDb2Y
         3GhYg2RA34FnaEvCShOJ20WyNLAG98Ym7ru5575zgh2JYLURDqx/gGZsqP+6uOo9I0Je
         NOQg==
X-Gm-Message-State: AFqh2kqJHZdnCOtpQf+8qBQPgX571+WqgseGa96tHg+8VsF652K0ZEyG
	4tgG9HPhKGjs5uWowuQLayxaKA==
X-Google-Smtp-Source: AMrXdXsiZWald5TpPPcZI8dGcgXWrN+wkMKn2NHNs5bosJjwVKG9YuN0WcwD2HpBmjrUvroJ3YmaXg==
X-Received: by 2002:a05:600c:3d16:b0:3cf:8b22:76b3 with SMTP id bh22-20020a05600c3d1600b003cf8b2276b3mr4717900wmb.0.1674002329685;
        Tue, 17 Jan 2023 16:38:49 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id m9-20020a7bca49000000b003d98f92692fsm365199wml.17.2023.01.17.16.38.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 16:38:49 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH v2 5/7] phy: qcom-qmp: qserdes-txrx: Add v6.20 register offsets
Date: Wed, 18 Jan 2023 02:38:32 +0200
Message-Id: <20230118003834.2330028-6-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230118003834.2330028-1-abel.vesa@linaro.org>
References: <20230118003834.2330028-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_163853_734744_22BAD5D3 
X-CRM114-Status: GOOD (  13.24  )
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

The new SM8550 SoC bumps up the HW version of QMP phy to v6.20 for
PCIE g4x2. Add the new qserdes TX RX PCIE specific offsets in a
dedicated header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../phy-qcom-qmp-qserdes-txrx-v6_20.h         | 45 +++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |  1 +
 2 files changed, 46 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h
new file mode 100644
index 000000000000..5385a8b60970
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h
@@ -0,0 +1,45 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_TXRX_PCIE_V6_20_H_
+#define QCOM_PHY_QMP_QSERDES_TXRX_PCIE_V6_20_H_
+
+#define QSERDES_V6_20_TX_RES_CODE_LANE_OFFSET_TX		0x30
+#define QSERDES_V6_20_TX_RES_CODE_LANE_OFFSET_RX		0x34
+#define QSERDES_V6_20_TX_TRAN_DRVR_EMP_EN			0xac
+#define QSERDES_V6_20_TX_LANE_MODE_1				0x78
+#define QSERDES_V6_20_TX_LANE_MODE_2				0x7c
+#define QSERDES_V6_20_TX_LANE_MODE_3				0x80
+
+#define QSERDES_V6_20_RX_UCDR_FO_GAIN_RATE_2			0x08
+#define QSERDES_V6_20_RX_UCDR_FO_GAIN_RATE_3			0x0c
+#define QSERDES_V6_20_RX_UCDR_PI_CONTROLS			0x20
+#define QSERDES_V6_20_RX_UCDR_SO_ACC_DEFAULT_VAL_RATE3		0x34
+#define QSERDES_V6_20_RX_IVCM_CAL_CTRL2				0x9c
+#define QSERDES_V6_20_RX_IVCM_POSTCAL_OFFSET			0xa0
+#define QSERDES_V6_20_RX_DFE_3					0xb4
+#define QSERDES_V6_20_RX_VGA_CAL_MAN_VAL			0xe8
+#define QSERDES_V6_20_RX_GM_CAL					0x10c
+#define QSERDES_V6_20_RX_EQU_ADAPTOR_CNTRL4			0x120
+#define QSERDES_V6_20_RX_SIGDET_ENABLES				0x148
+#define QSERDES_V6_20_RX_PHPRE_CTRL				0x188
+#define QSERDES_V6_20_RX_DFE_CTLE_POST_CAL_OFFSET		0x194
+#define QSERDES_V6_20_RX_Q_PI_INTRINSIC_BIAS_RATE32		0x1dc
+#define QSERDES_V6_20_RX_MODE_RATE2_B0				0x1f4
+#define QSERDES_V6_20_RX_MODE_RATE2_B1				0x1f8
+#define QSERDES_V6_20_RX_MODE_RATE2_B2				0x1fc
+#define QSERDES_V6_20_RX_MODE_RATE2_B3				0x200
+#define QSERDES_V6_20_RX_MODE_RATE2_B4				0x204
+#define QSERDES_V6_20_RX_MODE_RATE2_B5				0x208
+#define QSERDES_V6_20_RX_MODE_RATE2_B6				0x20c
+#define QSERDES_V6_20_RX_MODE_RATE3_B0				0x210
+#define QSERDES_V6_20_RX_MODE_RATE3_B1				0x214
+#define QSERDES_V6_20_RX_MODE_RATE3_B2				0x218
+#define QSERDES_V6_20_RX_MODE_RATE3_B3				0x21c
+#define QSERDES_V6_20_RX_MODE_RATE3_B4				0x220
+#define QSERDES_V6_20_RX_MODE_RATE3_B5				0x224
+#define QSERDES_V6_20_RX_MODE_RATE3_B6				0x228
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 760de4c76e5b..e5974e6caf51 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -23,6 +23,7 @@
 
 #include "phy-qcom-qmp-qserdes-com-v6.h"
 #include "phy-qcom-qmp-qserdes-txrx-v6.h"
+#include "phy-qcom-qmp-qserdes-txrx-v6_20.h"
 
 #include "phy-qcom-qmp-qserdes-pll.h"
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
