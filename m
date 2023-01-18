Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03240C678DB
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 00:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FcNUupjE0t94BGWayHXU91fDtJyWfNc4UzBMZkt1VHI=; b=zDwKAKSMtjWJAK
	Bh0gsdKT/hlK7QBFPsngvnKVCl/tV/eMcNo30crkQnXqL37ar+Jr5peIPFCu3HF6P9H5EvnpjEMzy
	Crb8P15iVtdw3+THQy/j1Mw2+FVixHSEefnbf/e8QQ5rLQqb8NLIu527ux0TdYumXL1Bd58X5DQ3o
	/kDLq1XKfyzB1gwj4+SyojwgwqhpAkKafNNFfGd9+j9CXT2z6biTZo8Y7z2bueNvShcBDMtI9tQ/Q
	WAeZ+WNiyLzRuw+L2V2OLs2xh3zzfeZQmEzkDtpKLBO873zmBQCTcZ2fiUAD2fiVOTgEe6buHtbnt
	qOLKJLMPGNw0g62wbYKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHwhw-00GMtB-Db; Wed, 18 Jan 2023 00:53:40 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHwht-00GMrO-Ql
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 00:53:39 +0000
Received: by mail-wr1-x430.google.com with SMTP id bk16so32376828wrb.11
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 16:53:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cUb/S2D/vEg5DXQcpUFp2Jq273wdmh34OP7UkZOQF4I=;
        b=WAw2UYmIL1MIUwpp3rXrGRQxX8TeObQ/yufp6z7YIRCncnrxozhX/YZ2BaRZpTA+9U
         WA8rHMp27ax1kyQKFCRS+Bz6qwaBhC43zLpj2kIDRnmMpGeiXVUizcmVAOGhV5+dw788
         WWeLIlrmRU62RJE0OkZJp5jiNK5NMgDTN4S01QsKUWuaLL2L4LbMQYkpkfoYpjIySrp2
         ov36tHDKZVqa2z9ydUfCu59UpdcG4yOHs+TzL+Ni794jXeY/G21PyBwaoNG0RGy5ZQo5
         jUzjfh4Q7YLAx6mpyEZW5jrzctXt556i3KL3U02622PGCsYRZPeGsqTfphO1OVhq/Xds
         2t2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cUb/S2D/vEg5DXQcpUFp2Jq273wdmh34OP7UkZOQF4I=;
        b=F+hokbkvK/r9CEkDVzhc+S0BVbbUbzoBL6a4l6JKTvVIquI4s/I1+6CD2OYCL8ZDEe
         4FlnJ98RB2c9B7z+Vetjwt61LwbCr6NFlC9+GaE2Pe3LQcTTE1lOOuwe0aJpSWYynPTy
         xz9zdaJy8GB6ta3sAgA3FwM24VfxX4FS+EqM8RP2O88aBlYW0exEMicYripZjPLIfAXn
         2pJovBOaVfNTmD8G4Ih63Zsr/POBjcKlUnoHRNxiUF4nAmkv2Q89xCPPVDdflWuS99eX
         5qZh0Xm/09nBDbCodtwiSkXgV2urmWDu4Kbme4dR0kUlS+rdFYOrVIdqJ5uhFNfzkfEa
         Hg+Q==
X-Gm-Message-State: AFqh2kruA+O6ZM6mjD3Tx7UHHap7sfRWcTUCtHv3OiH/iys866KmD9lr
	R4w49QZwpyvqd9UOM+D0rufxpw==
X-Google-Smtp-Source: AMrXdXs6eO4upOc4t3YFzQrIHBD5yGscLwqXSnFaTyIXfNyJausZ4dNPogvCSkUFAPbYqrj6tGepaA==
X-Received: by 2002:adf:f406:0:b0:26c:aa9d:93f1 with SMTP id g6-20020adff406000000b0026caa9d93f1mr3786548wro.25.1674003216683;
        Tue, 17 Jan 2023 16:53:36 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id t17-20020a05600001d100b00241d21d4652sm29609705wrx.21.2023.01.17.16.53.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 16:53:36 -0800 (PST)
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
Subject: [PATCH v3 4/8] phy: qcom-qmp: pcs-pcie: Add v6 register offsets
Date: Wed, 18 Jan 2023 02:53:24 +0200
Message-Id: <20230118005328.2378792-5-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230118005328.2378792-1-abel.vesa@linaro.org>
References: <20230118005328.2378792-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_165337_883906_0FD48361 
X-CRM114-Status: GOOD (  13.40  )
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
---
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
