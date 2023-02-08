Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA2FFC64EC7
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 18:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=auGnjHEiUg1Jyb9LQqn1I3p4gqADVLyC/WoiRvsaMM4=; b=4NcgibP4vfUNlI
	E54WRf53fSGvtGl1p/xf7PjxQyPA1rqxNGArmeNUGvHUawjYTyLo00GDf30N3E1y76GcbOJ8c1b2L
	S0VUovXyxvPq3GhG5cP/ol71Fi9WiOtNJjc21tyWUia15ZmD5S8wS2JVGA3JS4tc6vOu3rUSd/BoX
	FAbJc0hZDUKb5Bp2tD0a2n+2DnWjmEX8y8xSYgXrCau2ZP6a3lMGHoa/Et+IXw+OH/IF3IYP5d8Mn
	TtOnXA/MYNbozyTXkVhsmwBckRWxRT00iUF/vUQPlm1AKB+UJ2s6uwqTQNFs/nHWk2gRqmxiUI73s
	dpBJKKcY8mx9jbfPeUug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPokf-00GXW6-5g; Wed, 08 Feb 2023 18:01:01 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPoka-00GXSJ-CH
	for linux-phy@lists.infradead.org; Wed, 08 Feb 2023 18:00:58 +0000
Received: by mail-wm1-x333.google.com with SMTP id j29-20020a05600c1c1d00b003dc52fed235so2117702wms.1
        for <linux-phy@lists.infradead.org>; Wed, 08 Feb 2023 10:00:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cig8x+DASIoHgM0lhJw7c8nOcZnMIzVBIm4rhxwpdQI=;
        b=CFD/xtGvafnWR1KJaRW8segO0sG7bJ5FIA728XF3pLAoWhWoR6LZRuCHW9zCIMzkve
         4Fu4+g/n8aHdItfBkLytj3damxBVW/ydd8KN3ZonBQ8Nl9LZ8mPcFQz+O5ygcPqQv/Ch
         qGl7hSXTKYV8IyKkZHzM1ZOWlpeZlcKGsVzw4jN7w6I8bKZsZIk/TYTMIHtaty0Rprtv
         4HgfvGr4s7NjPQeCmZdGeki3qqaFgPEs2uRTQNfzQ2wBograY43MB8ikihGAiyEpvh6P
         MKFH9/Y/CkXW3Gqy2qhnjJwuHS5A87EV6r5Urb0djsKwPxXxnBY6eIT45QlqD7DNOMqF
         1bdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cig8x+DASIoHgM0lhJw7c8nOcZnMIzVBIm4rhxwpdQI=;
        b=bT7/FdO/PeDosWLJe75NZrE30acMQ97xVoASc3EiTnBlZ0iPFS1Q2QZzJuB1O46Rux
         /0Qh1jFu1cpF38VNmfhyNSOMuG13fwcwqa33VxjHokIdPIaWFGzTilM+9Qs6N7lEQOiH
         uXcpVyiblnhxDOt+EJNXepl7x2JdAO9NyQX3EQxveLQhvzbhUlaFGv4Wf7wKQ7lc0K2v
         0DPWAHQv5PJ+C3XUrsEBsXOFO/i0n/1dTzlvakBj9ENFTP1dBm+Spd9e/fz01KFDc6Op
         nO76RaU/vRJXifQ84Hwi+ugd0P8Sc9QvZHAV/e3z2OKkl6eNPkRoy9448JVyPHt7EIk0
         GLKw==
X-Gm-Message-State: AO0yUKVzY6l3JcowEr1DFJpba575j2yF3r9w7cOAfjs7N3+dCkATHTFJ
	pTkhAYuh2n0GVKqaoXZUYH3MEw==
X-Google-Smtp-Source: AK7set+uevGCDjXBaJSX7rfNlRHkcHw4RM/U9dJZVW5UCbgj8UF1zockXk7XELN2l+TE9mZ5nN41Kw==
X-Received: by 2002:a05:600c:502b:b0:3db:2e6e:7826 with SMTP id n43-20020a05600c502b00b003db2e6e7826mr9884278wmr.5.1675879255176;
        Wed, 08 Feb 2023 10:00:55 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id k20-20020a05600c169400b003dc54eef495sm2370286wmn.24.2023.02.08.10.00.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 10:00:54 -0800 (PST)
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
Subject: [PATCH v9 05/11] phy: qcom-qmp: pcs-pcie: Add v6.20 register offsets
Date: Wed,  8 Feb 2023 20:00:14 +0200
Message-Id: <20230208180020.2761766-6-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230208180020.2761766-1-abel.vesa@linaro.org>
References: <20230208180020.2761766-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_100056_435377_16A1945E 
X-CRM114-Status: GOOD (  13.03  )
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
PCIE g4x2. Add the new PCS PCIE specific offsets in a dedicated
header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---

The v8 of this patch is:
https://lore.kernel.org/all/20230206212619.3218741-6-abel.vesa@linaro.org/

Changes since v8:
 * none

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


 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      |  1 +
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h    | 23 +++++++++++++++++++
 2 files changed, 24 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 05b59f261999..907f3f236f05 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -30,6 +30,7 @@
 #include "phy-qcom-qmp-pcs-pcie-v5.h"
 #include "phy-qcom-qmp-pcs-pcie-v5_20.h"
 #include "phy-qcom-qmp-pcs-pcie-v6.h"
+#include "phy-qcom-qmp-pcs-pcie-v6_20.h"
 #include "phy-qcom-qmp-pcie-qhp.h"
 
 /* QPHY_SW_RESET bit */
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h
new file mode 100644
index 000000000000..e3eb08776339
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_PCIE_V6_20_H_
+#define QCOM_PHY_QMP_PCS_PCIE_V6_20_H_
+
+/* Only for QMP V6_20 PHY - PCIE have different offsets than V5 */
+#define QPHY_PCIE_V6_20_PCS_POWER_STATE_CONFIG2		0x00c
+#define QPHY_PCIE_V6_20_PCS_TX_RX_CONFIG		0x018
+#define QPHY_PCIE_V6_20_PCS_ENDPOINT_REFCLK_DRIVE	0x01c
+#define QPHY_PCIE_V6_20_PCS_OSC_DTCT_ATCIONS		0x090
+#define QPHY_PCIE_V6_20_PCS_EQ_CONFIG1			0x0a0
+#define QPHY_PCIE_V6_20_PCS_EQ_CONFIG5			0x108
+#define QPHY_PCIE_V6_20_PCS_G4_PRE_GAIN			0x15c
+#define QPHY_PCIE_V6_20_PCS_RX_MARGINING_CONFIG1	0x17c
+#define QPHY_PCIE_V6_20_PCS_RX_MARGINING_CONFIG3	0x184
+#define QPHY_PCIE_V6_20_PCS_RX_MARGINING_CONFIG5	0x18c
+#define QPHY_PCIE_V6_20_PCS_G3_FOM_EQ_CONFIG5		0x1ac
+#define QPHY_PCIE_V6_20_PCS_G4_FOM_EQ_CONFIG5		0x1c0
+
+#endif
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
