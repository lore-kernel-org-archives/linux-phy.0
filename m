Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37431C25B4E
	for <linux-phy@archiver.kernel.org>; Tue, 24 Jan 2023 12:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V1oPdarVTVgSm3pMdXZSNxIiC+ERtEfAQqudBhtHSyQ=; b=JoTn2sw702cxjW
	lvAKhvi+H5/54OmdzKn1pTyWrDZi+E/fg1NprJ1V6TDOAw4pINLED9JuUGm0BEVL+oVx+plWca6E3
	Cts4xUY90lZXJMbJbxAk47ShXwFiNb2ItmmaIEsF6F2RkOt5arlkneW4Pwx4XtbnwnvqiwL6aR5ox
	3OsDFpsD+scy2nlVF29UOF3qSrDLfqY+NQ+ItTFMM7X/qFHN/Rg5NiCd1LGv+RQwg7P/7nQriwrI9
	CB8++oFFLMwSHepIy4mHaHDB6pOeGq+4rzDVoV1XcdbGdys6YQSMnVEBOo+3ZreN/fQPrJjcNrHK5
	hLHFU9D/02ubiZUXn8RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKIi7-003n4o-Jq; Tue, 24 Jan 2023 12:47:35 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKIi2-003mz8-LJ
	for linux-phy@lists.infradead.org; Tue, 24 Jan 2023 12:47:32 +0000
Received: by mail-wr1-x42f.google.com with SMTP id h16so13739839wrz.12
        for <linux-phy@lists.infradead.org>; Tue, 24 Jan 2023 04:47:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bW3g+f1jFOh6Xbc2Yz4xv9Ez8/6bfoPw3+sQ1Y19h5s=;
        b=wsx4tRRgJsOsVyc/1uDPeFYJ3RlNVqKMmmbgSwkZjgZnIG/PXThjD50MSy53JwLmmZ
         PKliezxSrBfNlF7XkOdI/NIDyYh9Usbhk+C6ZlNKIzey9mFQFMQgyLmW/EG6jBCPWQKo
         p5hKklnOndxf1Zh+A2MqPb4maVUnL2Y6Y4VeqhOxHd7y/jdTSU+IeJ42RRzOShdyzaax
         AvWRxrzB9/WWWyrS27XdqiOM0xj/iJV8rAsxD2rD8ASIeK9EIcZhf+sjXUdUFcazJe4z
         Zq/r8f9tk8t/VMHDuss9JjkX3fB8JPC7h3D/sooA4HQYUBE8derChO8FlpmhgzPIpwEk
         f7tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bW3g+f1jFOh6Xbc2Yz4xv9Ez8/6bfoPw3+sQ1Y19h5s=;
        b=JX5Aw4JkZ48/7Wpl29ulDmAY0gqfufoaa/nRb/jLqYxE59m3xw/RWisAKhcOgCn9vx
         mPDyRDn7Z/PLGFx97+/1gyDe46AfDW8YZolWbukNwgcDWc9nHUfPJ2GbfQn6LPeOi7S0
         J5H4P8qSL99tM2ktk/uUNZqxTsHba29CXArpEht6D3atGAxBND+P/CqkICSFMZIO1vma
         tXcIBAR7bqqgMmCgkuratICowsYchUSRrqrD9PuSZpEzskRVyZqGgQ/keVaEgwmuHI2x
         E5ktU9fxZ2c7E8iTeg0DAlLgiKF4IF8QR7XbMNb9rOuQgeodVaNIfmtTM+aiKgZaBW3+
         22qw==
X-Gm-Message-State: AFqh2ko48R2bTZGmPfV+do1FVsbFksxtDfpZH3VL/Qfxo+CvTSQ1wWLa
	3GaYvL18+duVspSs8qaXlmbvhA==
X-Google-Smtp-Source: AMrXdXtiEzdiF5TNoUEQ0vtlT1+QUG6yOByUtltYok26sIp2wVLnX3FJA8BG+9hShKQu9FG9zjoPkQ==
X-Received: by 2002:a5d:6b01:0:b0:2bd:fd81:b503 with SMTP id v1-20020a5d6b01000000b002bdfd81b503mr25784430wrw.1.1674564447469;
        Tue, 24 Jan 2023 04:47:27 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id a5-20020a5d5705000000b002bdbde1d3absm1766840wrv.78.2023.01.24.04.47.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jan 2023 04:47:26 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v5 04/12] phy: qcom-qmp: pcs-pcie: Add v6 register offsets
Date: Tue, 24 Jan 2023 14:47:06 +0200
Message-Id: <20230124124714.3087948-5-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230124124714.3087948-1-abel.vesa@linaro.org>
References: <20230124124714.3087948-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_044730_716615_51A0D742 
X-CRM114-Status: GOOD (  13.65  )
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
UFS and PCIE g3x2. Add the new PCS PCIE specific offsets in a dedicated
header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---

This patchset relies on the following patchset:
https://lore.kernel.org/all/20230117224148.1914627-1-abel.vesa@linaro.org/

The v4 of this patch is:
https://lore.kernel.org/all/20230119140453.3942340-5-abel.vesa@linaro.org/

Changes since v4:
 * none

Changes since v3:
 * added Dmitry's R-b tag

Changes since v2:
 * none

Changes since v1:
 * split all the offsets into separate patches, like Vinod suggested


 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c        |  1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h | 15 +++++++++++++++
 2 files changed, 16 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 21727e90fad1..d4ca38f31e3f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -29,6 +29,7 @@
 #include "phy-qcom-qmp-pcs-pcie-v4_20.h"
 #include "phy-qcom-qmp-pcs-pcie-v5.h"
 #include "phy-qcom-qmp-pcs-pcie-v5_20.h"
+#include "phy-qcom-qmp-pcs-pcie-v6.h"
 #include "phy-qcom-qmp-pcie-qhp.h"
 
 /* QPHY_SW_RESET bit */
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h
new file mode 100644
index 000000000000..91e70002eb47
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_PCIE_V6_H_
+#define QCOM_PHY_QMP_PCS_PCIE_V6_H_
+
+/* Only for QMP V6 PHY - PCIE have different offsets than V5 */
+#define QPHY_PCIE_V6_PCS_PCIE_POWER_STATE_CONFIG2	0x0c
+#define QPHY_PCIE_V6_PCS_PCIE_POWER_STATE_CONFIG4	0x14
+#define QPHY_PCIE_V6_PCS_PCIE_ENDPOINT_REFCLK_DRIVE	0x20
+#define QPHY_PCIE_V6_PCS_PCIE_OSC_DTCT_ACTIONS		0x94
+
+#endif
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
