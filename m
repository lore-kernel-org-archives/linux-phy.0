Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D9ADC38142
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 00:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FcNUupjE0t94BGWayHXU91fDtJyWfNc4UzBMZkt1VHI=; b=v/eAMsu7ueSBv+
	JaSoNf8g1N8UiawUwZXy5guUA/wi2vujg6TNoZec4ndhxrCgwDSa4VzkjVhTFVHTC39bjc4jq1n7V
	UcM4+C8aAt5VdA51jZjv/AhzPkenHHZByQ1QVZlS354MB3BCXe4AQS9hD0JmrRYDe5okLOr5I0OFR
	sCPIJtON+n/ps3TRI7TMSqIqrnWKSuwA+PYNWIiEloWqWyqm1RZJXtw9iIc2fM7K039VIkRUSJMuf
	mQH5NIuE9IvZxpJlqmsh3f2RpxjPENHAKj80wufwc8zaFQM33NlBkK+0cv8Nkr6HF5o/1PRrH5p6j
	xKT6Q2hS+z4XLWTxpu0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHwTh-00GLjy-I6; Wed, 18 Jan 2023 00:38:57 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHwTd-00GLgo-BH
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 00:38:54 +0000
Received: by mail-wm1-x32c.google.com with SMTP id iv8-20020a05600c548800b003db04a0a46bso587711wmb.0
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 16:38:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cUb/S2D/vEg5DXQcpUFp2Jq273wdmh34OP7UkZOQF4I=;
        b=R2mEcqok6JYrd6hI+uMJg2GlORMxPbzmaRt0kLhbLTe1VfpahOcBvzhPysf+MvOpW4
         mH471MTdxiVaVO2fGRe4Pa23QVezlnQpifp4fk6vugs20pbF7BJ0szLJ0lw6MESQwyLB
         xFbfxB9F0zvifo2yUI99hfZJtzyfeM3pTwFoXsW1GAV6ndSfz83LpPMgyVJJS5tZfuth
         YJQ/6hklo3miyMprK5hxs8Af9ek7y7tvgS1LVnYCgZhq9ObaMtWCZGnQF1rWOckoFPeV
         YwbweSqDAVj190D+ie2oGA4xsSFb8p9q3DiBxFIcPEpuy1WaIVu/CW4iR/dPtuUQa8Ai
         yCPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cUb/S2D/vEg5DXQcpUFp2Jq273wdmh34OP7UkZOQF4I=;
        b=6lNiwBiJZ/RhB7WlHSEzjFfM5z/8xH/VGH7vZMgoB62NSGAupZEZHJlqKJngm72Vyq
         KTbKEbcWy1CVQ77uFkeothNeHiK1OvnoMjHWrHLVH8tcVK0SSHS1wlYjyUBDmClWegkt
         gN+r2gPjLjNBOfX6aa2JbBF2sNq5WmWxwFwYA0N3+EVV+sS4snLdidRW8Xpe2kcS959l
         0Lbm90NZFghmH50wkzgXck8+SUtsGJEIUTIHvmLvGJrOs8TtX9RwV0D8YpUjJ9sNwH6L
         RWVLwlB+nZBP/8UYy7G73DDzYQiDf0rCNasK6L7XaassDg+qtJhtGeXZiekc7vDUzLy3
         cgfQ==
X-Gm-Message-State: AFqh2kofgP9eyI2sj/hdfVhfFuiXEwNVxkNN7HU2S2eNJONun7wU8sMK
	p6eTW3JsBcwkV3W9au8h0qHggg==
X-Google-Smtp-Source: AMrXdXuOy9ruiudQyEeh1GFJ0qSSteo2YtC/fdafCMAhj+OHLtvU/u7CunUrNz87zK0JYvnds/J34A==
X-Received: by 2002:a05:600c:510d:b0:3da:f6ae:faa9 with SMTP id o13-20020a05600c510d00b003daf6aefaa9mr10134566wms.29.1674002327050;
        Tue, 17 Jan 2023 16:38:47 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id m9-20020a7bca49000000b003d98f92692fsm365199wml.17.2023.01.17.16.38.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 16:38:46 -0800 (PST)
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
Subject: [PATCH v2 3/7] phy: qcom-qmp: pcs-pcie: Add v6 register offsets
Date: Wed, 18 Jan 2023 02:38:30 +0200
Message-Id: <20230118003834.2330028-4-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230118003834.2330028-1-abel.vesa@linaro.org>
References: <20230118003834.2330028-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_163853_448091_2B38F994 
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
