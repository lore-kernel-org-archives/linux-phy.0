Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27515C64EC5
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 12:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ohpzBj0i11RmpoiyKFFZG9g15egc+7QemdF9NGCasH0=; b=udbo00zaQCz06X
	VThM2HQRlEdguhC6TSbAFu275zYiS3w+CEBsl5GIzqnGGv42CV9vlNWfwpxOMeOYQ15Qb93IbTyfs
	tU/nejT4495LUOn7sa8sGAHz89w0l4PD4C/aBzviV5YP+xIB5zVQ1QuCJTkmx9zYC/p5l0olwHKac
	rC0Y/IICSx8RMrkCl2NR/cmLqHpCzICfcMK3ro2XYXv60q3P08ZOMkjiK7LtspFV82QKZttDaNkbN
	SbWvY8m9rQHfgAlkUfCyCSvDPiwKAyQMQTm5PP9oxvIfdIxjKBzZInzgz7E+tdKla3ofEwOurc+Hi
	HBTmtqMudttdMf8NqQbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNYs7-00FpGv-Hh; Thu, 02 Feb 2023 12:39:23 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNYs4-00FpE8-EQ
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 12:39:21 +0000
Received: by mail-wr1-x430.google.com with SMTP id y1so1592795wru.2
        for <linux-phy@lists.infradead.org>; Thu, 02 Feb 2023 04:39:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9mGLj5xguoE6RrOwo1RSDNcCNpxgV7w5pav0XGnKq0U=;
        b=ymahsYbxdjN6kVaYC/klylxQGhfpSXPAu/bQHo4p5pgyqoS1i0IUPaxWo/69ehRy7Q
         0qU4NBzCYG48rA9kieVpWewyTpCvfxAYJWDY+KHYMZpWcIzEJA/T4tVxvP85WgIxEzIT
         zpIT4QuWxFs78i7xvO77nfXXVcdwedncGKWtkSz6W8pdFjU4hwRtNBTS4oM5zkGOhPBO
         tlfA9qXIGE9rkCH/9ePnRnIAbXvIyQMllPtzYd5dWdR4h/73I3ppUYddADWua7+vPxxk
         f4n9UDIQaUhu3gQl/HiB4cV7xGE+bmcgeLNvCgQSGogJFsBY3d5GWimPAW19cbZG13Gk
         qO0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9mGLj5xguoE6RrOwo1RSDNcCNpxgV7w5pav0XGnKq0U=;
        b=hFwtuzqNJBjW4QeoiLBis7foULpJu2vBimlDbb70wqd9FD9Rv4OM2bpKfnJ/F+SxVL
         fYV22u9J8nXgFUFdvNPhUCR1KT81ImPYGR3U5ux6e6A+uDBYXzl9N/G+I8JBmcQSYeCF
         XnalDlNRCyGM2TE3GGHEi/hDRgM4ltThE7yVWtDpL978KsGtD9ea4AIwg/ui5VHrah4A
         ymob6WanH6Ctv/BaJsQUNOgxReaskaeNqqamSl7/MMQ4Cq+2vLm9fo59xQ4QwfvMNupD
         KGgycNi4ZSkTph9zdN3iSTrd0lNIE7QliLvVDFIXE+gVuf/nxYU43W/7/Cn+b2hFmj4S
         V7Og==
X-Gm-Message-State: AO0yUKUWgj4SWxYWrEkcfcLIPwr37kt676MUPn2EnLNbLz9z5ADdB38o
	4emITx7Ch4H7zdVGZjL/2ezB2A==
X-Google-Smtp-Source: AK7set+zllAgMFi3gHo1Y2Se5M9ntPh7hvp5bsppe+JBBuLo4aPC80LidugD31TqG69Ab+vF17iYvw==
X-Received: by 2002:a5d:624b:0:b0:2bd:e8c2:c9bc with SMTP id m11-20020a5d624b000000b002bde8c2c9bcmr4653251wrv.42.1675341558724;
        Thu, 02 Feb 2023 04:39:18 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id j5-20020adff005000000b002bddd75a83fsm19525644wro.8.2023.02.02.04.39.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 04:39:18 -0800 (PST)
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
	Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v6 05/12] phy: qcom-qmp: pcs-pcie: Add v6.20 register offsets
Date: Thu,  2 Feb 2023 14:38:55 +0200
Message-Id: <20230202123902.3831491-6-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230202123902.3831491-1-abel.vesa@linaro.org>
References: <20230202123902.3831491-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_043920_501183_EDD03881 
X-CRM114-Status: GOOD (  13.60  )
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

This patchset relies on the following patchset:
https://lore.kernel.org/all/20230117224148.1914627-1-abel.vesa@linaro.org/

The v5 of this patch is:
https://lore.kernel.org/all/20230124124714.3087948-6-abel.vesa@linaro.org/

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
