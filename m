Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 611A3C64EC5
	for <linux-phy@archiver.kernel.org>; Mon,  6 Feb 2023 21:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IEYBHWuFB6CHWKcEpxKfbj3sxy4UauRyME+U3F981Lc=; b=spGWHSG8Kyt/1u
	/aZeKUvShw9sHp5mISFACN+jOqPRvJSt2NLalIVlImF/F91ZPJhZqy8cILnin3HQR3893EZNuxCmA
	mG8XIFc5DZwO47YM0tBvH4PW7kd/qlxGmef5ITKNvASH/gLlSdVOhExBKbj2IBN08DiJXW9dTggds
	XA7C46CY+QoAM+Epg3WMhEpbCXjxRVvFBpG99LJ704o0YXiEx0mWfFqxoxLWH+8wHPm9lXGetnoPG
	6h3mk5I3rWc4b5DuRrE2Y3SIBae55+x5ebBd1BbuwOxtAifh7W+Tr0axUrJmVLk3ulewsjX74cI6N
	ZI/3V9a7v+nFFx4gjsfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP90U-009zJi-OP; Mon, 06 Feb 2023 21:26:34 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP90S-009zGs-3Q
	for linux-phy@lists.infradead.org; Mon, 06 Feb 2023 21:26:33 +0000
Received: by mail-wr1-x436.google.com with SMTP id h3so3908053wrp.10
        for <linux-phy@lists.infradead.org>; Mon, 06 Feb 2023 13:26:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YMHYSZY5yr6WJXzgdfqkly/OyevTb2bnXVt/gz3eRFM=;
        b=MsZ8JkPs5eVvQswJTnLchlAbu12udviEsdo4ZP+lL7Zv0B/lHeyPzSpkAtoPwViyN0
         bgfyuHztJtde0y1Bnq6M84UftsSX+yqhq05Wmi3vNVPiMjBHFM1rsQc3vrM+3GyJ5Nih
         IGIeWFHJezisxIVaMGAWk9y6pFHOijIvJDWS8d+ndEL5nAKx0Rij50+Vgajw8oMkby9z
         xyStj4vgdlGnl5scsEoxkYIp9A0eKKrMRNZFYHDjFL8WIjmVjc7CNUu9tatJLfLoFj/L
         MRedcmJJfoAhye8zNuk90DAuipp5JMczO48Bks9nlwFJ8RDHxFAlop0fhouc+B9snwHo
         SG9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YMHYSZY5yr6WJXzgdfqkly/OyevTb2bnXVt/gz3eRFM=;
        b=Iksklp76inZxKkTaHnOFF+Pi54507XW3gxSrausXTIXtufkNVnK4bsMTXdCQsObh7J
         bRKsopfIm5hnzLSGVx//gGbT+gyhCdeRnx0enaGYd8x6MC3jLd2NR7Vxu3Pr1k1hI7rC
         mhTvcdvVuk3F1QrpdzLXfIx31SiPDvpH9K0Dah0fjCwK/hOBNDN6yc03VxlNsKqbNGoe
         Ylxpd6sCPuouarWbPZlHGmkWQTscMCQd4b0pzh9VZOo8TBFfjcKA6WSdLiZy70sEA50d
         zXA5VDsHHOf+Q4qs/ecq6MHiEQpB4xt6dRhSN8O1LSW/8ecnot0LbkEyC8nQCP8grU5M
         /XnQ==
X-Gm-Message-State: AO0yUKXcXRO2zOXxmS9Rw7L6LxmaU9/9bqjsGyrqAFRu5CZo2gkqmKC9
	2O43Gzpo9meiutLTph1ONah+mw==
X-Google-Smtp-Source: AK7set/DKvfsz5pRDGq06xNJlM0WynrXe2RNjIsV4ZKhzkTx8cPmEhGCSyOMwOFsEhXiONOjkd7SVw==
X-Received: by 2002:adf:f4cf:0:b0:2bf:c066:dd7e with SMTP id h15-20020adff4cf000000b002bfc066dd7emr283641wrp.40.1675718790936;
        Mon, 06 Feb 2023 13:26:30 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id j11-20020a5d604b000000b002b57bae7174sm9783341wrt.5.2023.02.06.13.26.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 13:26:30 -0800 (PST)
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
Subject: [PATCH v8 05/11] phy: qcom-qmp: pcs-pcie: Add v6.20 register offsets
Date: Mon,  6 Feb 2023 23:26:13 +0200
Message-Id: <20230206212619.3218741-6-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230206212619.3218741-1-abel.vesa@linaro.org>
References: <20230206212619.3218741-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230206_132632_161609_B4D62731 
X-CRM114-Status: GOOD (  12.90  )
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

The v7 of this patch is:
https://lore.kernel.org/all/20230203081807.2248625-6-abel.vesa@linaro.org/

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
