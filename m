Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA98BC00A5A
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 00:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4RYgyQxQz6rHdRY8NdilMdOawrpj0k7QXuNdOtNOooc=; b=bX2MDqIYNG9/ds
	yyOU5jxu5x/5HbXuUFcuJJUkaBGQsD3H5CW/JuhigMqq/hP//HxiX9nO8+N+//bg04Iy/tU7v9K5s
	fSCCsti35tGoN+jHISgk6V/zljmiQP6xZUVQJ+67+0w8ryV3zqG27V/OrIBDOtymaPCrdDxrQ2z8z
	aDHvu7yYI2mPjUNC7qi6o3WS+jUcIvvNDEes0Mekd5dWHDBbA6CXkxnQNQXuQBgQeNGld/l8roJNO
	UQs4yaqZPh1+HouFouQ2Nz0D6ypLNzQiSx/xlQsIf/qDstfKWe1auBAUmtov37ypr/VlbJTnVovBf
	kWYrgEfQ0jvpz5nkmTmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHwTi-00GLkb-33; Wed, 18 Jan 2023 00:38:58 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHwTd-00GLgr-L2
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 00:38:56 +0000
Received: by mail-wm1-x333.google.com with SMTP id j17so5049029wms.0
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 16:38:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NgXna0bBgsjljycY2CPxK95hatbPatnCou/f0zztZCA=;
        b=eXx1UWUwuze6bSOEDvlkV/+TXnNOq0s49tppPUb11JdwObd+zCTyulb0ZBo1z1HUjx
         yJlQhSqzuBCLyUYb6EimwSyXCLUpE/p3d1SGSAAD+IVjrAiWDf98KVfs6+24cJMCP4GI
         aTBhzLuENvvJOkJUNXU+psc1d6YPDMfH15PdexRtYcXbmK+n06Bx5HdaNpOJgcFAYqQD
         ezcuV55qhlQD8RMbzymamp7qTeaKek0B/y200isAD4CDekEA3Z+X85C/wKCbhXw+PR31
         /6+uwPMnAxi46+Yv3tlmiPEqbfrcRxsKkDRy1lv1hJiC2uHFMv+zf25VEsD96JuuiLkM
         EFjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NgXna0bBgsjljycY2CPxK95hatbPatnCou/f0zztZCA=;
        b=jcv2JWO1msa5wKoud4iA9QIgREPF98fx+UkabRaDtTvN3fvjLEPtVSgpCCVmIksSNA
         T3/IPrpTNfM2faSCReQd4H38N0hcZykELTRqm/SDpLjQwuAt7iQ04mOzUCuOnsIY1HX+
         vb22Kwygec428zGdZGnCByDYtNwLSRVLOFE0YUfblDOcvT/yb6rzDrEhNwA+oZQ+PyCT
         9k9xmmwv7S8PZgLY++dnCTjtZsHYplkVMYKi2Bv+RMmnetANjq9gvgS2qqqpvu7Bvg43
         Y/wFbHepWlgdK6UU42SWy8J1JXhJXKUR5OlD6ED1O5aVVZ1cYsKpIaOkZVMig6kpef7R
         G8ug==
X-Gm-Message-State: AFqh2krojd/fJkSepIf/90/0e+mbn2luYqV/lRvMNN0K2C52DDaeca++
	o77RefGl6pWsOSElKvskn/Xei4gFmnG/j9Z1
X-Google-Smtp-Source: AMrXdXs9M0cfkXfNQq4Q11WIHuYQZQKS1JMIX5g4ekWQ1K8fA93nheLplaJNt946VzLs5617588T6w==
X-Received: by 2002:a05:600c:4f12:b0:3d0:7415:c5a9 with SMTP id l18-20020a05600c4f1200b003d07415c5a9mr640133wmq.21.1674002328369;
        Tue, 17 Jan 2023 16:38:48 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id m9-20020a7bca49000000b003d98f92692fsm365199wml.17.2023.01.17.16.38.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 16:38:47 -0800 (PST)
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
Subject: [PATCH v2 4/7] phy: qcom-qmp: pcs-pcie: Add v6.20 register offsets
Date: Wed, 18 Jan 2023 02:38:31 +0200
Message-Id: <20230118003834.2330028-5-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230118003834.2330028-1-abel.vesa@linaro.org>
References: <20230118003834.2330028-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_163853_745145_EBFA57CE 
X-CRM114-Status: GOOD (  13.67  )
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
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      |  1 +
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h    | 23 +++++++++++++++++++
 2 files changed, 24 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index d4ca38f31e3f..bffb9e138715 100644
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
