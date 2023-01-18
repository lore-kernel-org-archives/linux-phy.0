Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E42CC678D4
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 00:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4RYgyQxQz6rHdRY8NdilMdOawrpj0k7QXuNdOtNOooc=; b=tdc+lI3t3xVevH
	X01HO6LKyg8+xHGzsVl2B7yaZgu4JSRbovLU38fOB+vB9IoGzM7GRicnDNzj+bfJIErbdoxRG1nd1
	jsw7/s22Ko9Ycn7c/EXBHAyOecS0j1UtCtAiU7nYPd6ZG3fOxP/DkVn4ESdX2A2VEC+50Rr+XY1U8
	el9JA/+QF/Yz0P5M7ra2SM5y/1bm/e0IBzytPV1Vnndqt/jqTYgEwS3whgSoBj1H4dHxVy61ulVBN
	3PTgzEipTQ18QpCsUhd1/ecHPeTV46GjQuPIQG/rSWdFJk7xez7OKYswPiqmOD+CMs4ONeqq6kbhQ
	93D3qwNC0WcLVjsSohBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHwhz-00GMvR-LY; Wed, 18 Jan 2023 00:53:43 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHwhw-00GMs7-73
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 00:53:41 +0000
Received: by mail-wr1-x434.google.com with SMTP id r9so9616197wrw.4
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 16:53:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NgXna0bBgsjljycY2CPxK95hatbPatnCou/f0zztZCA=;
        b=wUBxCjtlt4ukuMe/tt2TXIf2JHa4uGMbSukplOXoVRDRgF1fK65/8bZB1poBs85Qzr
         cW30k9BfMjEEB1/MQE7quZU+piPAzNrQ6XqTJFJNzeHqaYUCeZQ93jeUeb40Uaghcg2D
         RV500btQYaXNGvMgO1s/bycAwYlBa2/xK02xyYzc+OTXFLpsjEu3TaWlca0vuwOCDxkA
         5jRQ9UTWcVjm93teLGvULcjQ6OWQP5Ayn+iD3lmqFLCTlPliBiO/v9o3iuduVcn3tlE7
         +BgRUmIAhMEynDrqisOL48wvZhRWN9eBB3J1FC9U6r+LSNZC2FZrTOPyNyedR0RXkFcO
         a/ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NgXna0bBgsjljycY2CPxK95hatbPatnCou/f0zztZCA=;
        b=pXenBIZTjaHc+UV3Sq8hMyINqGmROdwXVwDIxFF6uyRJmMj6VIlzjVas0+UqOrcalW
         73s4ah3wbbKZ7TyVSh3QUmQ8gCQlsMS0FQjmNJEvCmpojXn7V6FfsXx5kz93+FnbHPN2
         j97/SyBuCKF9ahHuHpt2+wKQjxhhsq0UOZOCsGkEwBPoTbkkFZB+Q/5/9RJfw6QLn6g4
         YgGvm+zJFP4MO47WkvvAlRpmF8B+nBDTA4Bocc1tr7xPSclNqv4bWnMvn0i8qtxCIZPm
         15APN7bW2Nr79UNciiFK6QVasWyFIGNu4t92KdrL+mQc8VMa9XX7fbZPSSPkyCvvNjIm
         ZI0Q==
X-Gm-Message-State: AFqh2kozsR2bAId+lLt7AGun34iot6xtQkxjxcGa3BE564hys8xGqPA/
	BxhS8vOfWKNQPYBxVPy/OpcwwA==
X-Google-Smtp-Source: AMrXdXstzkZJavEtuQkz5iiSkPIdHzaFAUQE1rOywD6/eAYKthKXzToRG/7qME4figGCySBS0eb3OA==
X-Received: by 2002:adf:f606:0:b0:24b:b74d:8012 with SMTP id t6-20020adff606000000b0024bb74d8012mr4176350wrp.18.1674003217914;
        Tue, 17 Jan 2023 16:53:37 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id t17-20020a05600001d100b00241d21d4652sm29609705wrx.21.2023.01.17.16.53.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 16:53:37 -0800 (PST)
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
Subject: [PATCH v3 5/8] phy: qcom-qmp: pcs-pcie: Add v6.20 register offsets
Date: Wed, 18 Jan 2023 02:53:25 +0200
Message-Id: <20230118005328.2378792-6-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230118005328.2378792-1-abel.vesa@linaro.org>
References: <20230118005328.2378792-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_165340_287785_2F5BD0A1 
X-CRM114-Status: GOOD (  13.38  )
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
