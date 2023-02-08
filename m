Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B747C636D7
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 18:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H8D4tDL9K+CShmufOEjju/IuqYl/6FQjBI0Y8v3b5UU=; b=jUo8L8xbOIJrCK
	6bubzw578MJSDVfAiDirefXGNbkninrejwP0fkMLErl5rswUgFwMYN1r2wqV2OBBK9XMB2ysj607C
	W8u2iOAiE6At9T+zJMhmUht34LDTXRJ7vwDo2EfokQrl8LiPxKJ14HrcVi7kbRikdOKT3EPA2hhYT
	el+XYa0BMIl8Ltc70nc9TmdEvv6cm7XT1zqdxmr83JIoFe1WFIWUs5ZTSvkoVBlgLIvX38RvJePuL
	cupSewME5mBj9ZdhO8w/WtyTKzzkjl9hy0Rtfb7tJsTGsFzsQwo3TP9Tlf/sX7YKeKuiMI7gp1gIV
	jvUmeRaLGqerK9jKiM2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPoki-00GXYp-DU; Wed, 08 Feb 2023 18:01:04 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPoke-00GXUm-3w
	for linux-phy@lists.infradead.org; Wed, 08 Feb 2023 18:01:01 +0000
Received: by mail-wm1-x329.google.com with SMTP id l21-20020a05600c1d1500b003dfe462b7e4so2950087wms.0
        for <linux-phy@lists.infradead.org>; Wed, 08 Feb 2023 10:00:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hOfyfk7Q5d8ZuEReqcuZAbA5feFof3LHf7PR/qaCNGw=;
        b=snxiqbD2t0eIQqzcB/zOrs8/m7MUstDCuKWn56QYMLhnYrPORnUhAZCJCQeuazcDd8
         h6er5kso1tORG85oyMm9J+/fcKJZXXO+gtOz6EKuf3iydFTAmi2IBVUnqvcXNLFNHcUc
         G3j/GEt8ozBuozH+RUUzekKcKSL0mArGlHhu86b+eccP0sOwZb2TrEzGPb//HHpYN26I
         xNJI9JuC45dntIlh3xs+Iatcpdt0Eb9Anhc9eZGbFzps5ICWuLn/ZV06BxyWwHKg/o/r
         t4M/CTnQbLoFtuXUPYpfF9KXdUkQYjKhULsCwJCtKPaGNAV5zlM6vdnB+jAzz/UdIvyi
         KK/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hOfyfk7Q5d8ZuEReqcuZAbA5feFof3LHf7PR/qaCNGw=;
        b=VA+SIPnjO9qqQxcosvnApCVdK5bSzl8+6dW2Dx+q9njouG1lfa2zIkqKshO2FEQEOq
         LPA4WygrDHMNBUHrata2PCt58QxY1yXtdimwtkYrC2pgrRWS6t/K4gK+LjZ3fciVRD8K
         DkG4RzFHPG8RUqed73ckoeRyuz1LRwHi5NBjIxCvGGl34uWWDVsO2zRdizXI6/GxwbiA
         kn9dwImHhiYsMVOv9ldlT0mLSjA894CtJZyGGbA2LdLbkYfl23IERUIl8HdyBrGs5b8e
         Qlxo/uxXsc1tari5I3RZalbA37AOxWV6tOEhUipN2OH9vSHiw00N1vgZzp9RKu4dNGVa
         CBww==
X-Gm-Message-State: AO0yUKXUF2CV/ImiNRc/HDiLLfhOP/SHhkJlwAImzakZPV6oKkr1B64Z
	Lxw41MYivKrPLdxhuiCUQD/gPQ==
X-Google-Smtp-Source: AK7set/hcDLTQlcyzvVtt++cAAZnC7FIrcoMBPsXzzIJhtny3cZPsVg4IerdSaXXrgRq2/qQdCRMgg==
X-Received: by 2002:a05:600c:a68f:b0:3da:db4:6105 with SMTP id ip15-20020a05600ca68f00b003da0db46105mr7353259wmb.37.1675879258579;
        Wed, 08 Feb 2023 10:00:58 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id k20-20020a05600c169400b003dc54eef495sm2370286wmn.24.2023.02.08.10.00.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 10:00:58 -0800 (PST)
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
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v9 07/11] phy: qcom-qmp: qserdes-lane-shared: Add v6 register offsets
Date: Wed,  8 Feb 2023 20:00:16 +0200
Message-Id: <20230208180020.2761766-8-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230208180020.2761766-1-abel.vesa@linaro.org>
References: <20230208180020.2761766-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_100100_176310_7125E711 
X-CRM114-Status: GOOD (  12.74  )
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
PCIE g4x2. Add the new lane shared PCIE specific offsets in a dedicated
header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---

The v8 of this patch is:
https://lore.kernel.org/all/20230206212619.3218741-8-abel.vesa@linaro.org/

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
 * none

Changes since v2:
 * none

Changes since v1:
 * split all the offsets into separate patches, like Vinod suggested


 .../phy-qcom-qmp-qserdes-ln-shrd-v6.h         | 32 +++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |  1 +
 2 files changed, 33 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v6.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v6.h
new file mode 100644
index 000000000000..86d7d796d5d7
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v6.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_LN_SHRD_V6_H_
+#define QCOM_PHY_QMP_QSERDES_LN_SHRD_V6_H_
+
+#define QSERDES_V6_LN_SHRD_RXCLK_DIV2_CTRL			0xa0
+#define QSERDES_V6_LN_SHRD_RX_Q_EN_RATES			0xb0
+#define QSERDES_V6_LN_SHRD_DFE_DAC_ENABLE1			0xb4
+#define QSERDES_V6_LN_SHRD_TX_ADAPT_POST_THRESH1		0xc4
+#define QSERDES_V6_LN_SHRD_TX_ADAPT_POST_THRESH2		0xc8
+#define QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B0			0xd4
+#define QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B1			0xd8
+#define QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B2			0xdc
+#define QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B3			0xe0
+#define QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B4			0xe4
+#define QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B5			0xe8
+#define QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B6			0xec
+#define QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH1_RATE210	0xf0
+#define QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH1_RATE3		0xf4
+#define QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH2_RATE210	0xf8
+#define QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH2_RATE3		0xfc
+#define QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH3_RATE210	0x100
+#define QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH3_RATE3		0x104
+#define QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH4_RATE3		0x10c
+#define QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH5_RATE3		0x114
+#define QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH6_RATE3		0x11c
+#define QSERDES_V6_LN_SHRD_RX_SUMMER_CAL_SPD_MODE		0x128
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index e5974e6caf51..148663ee713a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -24,6 +24,7 @@
 #include "phy-qcom-qmp-qserdes-com-v6.h"
 #include "phy-qcom-qmp-qserdes-txrx-v6.h"
 #include "phy-qcom-qmp-qserdes-txrx-v6_20.h"
+#include "phy-qcom-qmp-qserdes-ln-shrd-v6.h"
 
 #include "phy-qcom-qmp-qserdes-pll.h"
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
