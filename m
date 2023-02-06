Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80679C636D3
	for <linux-phy@archiver.kernel.org>; Mon,  6 Feb 2023 21:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OWPS0Cz/E9v5tBrt//oKm7urxOi40uLUvL1KCCePgz0=; b=NQQBnnZBmPEQbT
	iKGcqNLjKa+yUFVpX59DH4TJjlDu8kpkGR2m2VdCUcjKUVMMzWDny+k1v3ppPwynY7KDMLTv2qo4m
	wok+imQHJ2qBpU6FW1tNdovybBU17sJQbKuXEsNaDtsWMmq+TtEJjDngRnHtCKtU6+SY5bF6zPL5u
	/C/JeigD2Ujn+g53j3MnF+n+/jZTAE8vuCg0juin3I/x93xb48CTEBaRn+BTaMix3AkMKs0vNXqfn
	8vECsS0V12IhtJvXXLndoVGNlYRtCvnO/e0BhEa255hCtLDT/HfPKVUYhmAwmzrJpDVrm3WA3IvKP
	8rYmau8L1ckIBMgPSH/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP90W-009zLD-Vg; Mon, 06 Feb 2023 21:26:36 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP90T-009zFg-2V
	for linux-phy@lists.infradead.org; Mon, 06 Feb 2023 21:26:34 +0000
Received: by mail-wr1-x432.google.com with SMTP id j25so8208741wrc.4
        for <linux-phy@lists.infradead.org>; Mon, 06 Feb 2023 13:26:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AUq/Mgp1nazpI35D4KET133wslbHGuvnLSSg4b0SKK4=;
        b=gAWZ/IMKMdFEyF5JQTlly91fv3p4xkOVyD4o3+UNciqY2AZS/gdDNz+LL0u+iGhAwH
         FwIzGb5oRxzAIUGsHQBztLnzrsq86Zd1AOf3lJ82e5OxDK9pyh+5Gl4Mv5s3xukZT2gZ
         bXEK7Y7weN0dngk5+dHZYCf/qDFCKPAfKaHAlYg7jq3fUcyn7ugrHEagJYA0nP7mzkY0
         GB2JQl3/znuOJ/tUrCZA26kG+7PQuqC04/jRKbhV4UNUKDl396VeNGwQtfjIq4A5R3lX
         N34OmvDJ2bddh6BPYerk30UbDmJ5L8ypBAYseJHexWM9xoUyqSu5NmZvrMg3nMbHvVmh
         SxQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AUq/Mgp1nazpI35D4KET133wslbHGuvnLSSg4b0SKK4=;
        b=YckWZ/M+31ORU/yJ24twEGbQBzR287gKzCTBl7/Ivp8GxL9rdQtSSADdlVhhD40yGd
         tjyVoUWJVDM11GX9JAI2vSG/wTJuJi/X4pmJUAF46/hNzGNrnzzQyk3SKPy2UZUTXp7g
         DGftgDhEun6JuFAYm/7SmpNIIjswumrcDTOaJASCxpXI1r3bnjiqvoywmTNyuuUbWXr0
         CAgrAKPlF0Zs6vD+7BzVYwmXW6JiKWosNhno3h1oALlnliyCBc6BPjW5uawLQcfkP6UE
         E7ZbJkdN0q+dHwPkcdJY4a0miPR9ISYCuElX245lMFk/jKIvHsyer/K00VnB4//69X9o
         UmyA==
X-Gm-Message-State: AO0yUKUWHEOfmMKh6TQ+/X8OkHk5Fv8hP+a9XsTTqC2Q5A/ZMpmJ7gwn
	pu7CeHHLlKfoZS1NiKc4NFBbNA==
X-Google-Smtp-Source: AK7set+xsS0QFCyQplZ6ZvXIodCRuCLQYATyLZ+sjAQoifNre2Sr4/DQFfgYgdrSNOnTY61pXo7Vww==
X-Received: by 2002:a5d:6a08:0:b0:2bf:95cc:744c with SMTP id m8-20020a5d6a08000000b002bf95cc744cmr409055wru.0.1675718789374;
        Mon, 06 Feb 2023 13:26:29 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id j11-20020a5d604b000000b002b57bae7174sm9783341wrt.5.2023.02.06.13.26.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 13:26:28 -0800 (PST)
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
Subject: [PATCH v8 04/11] phy: qcom-qmp: pcs-pcie: Add v6 register offsets
Date: Mon,  6 Feb 2023 23:26:12 +0200
Message-Id: <20230206212619.3218741-5-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230206212619.3218741-1-abel.vesa@linaro.org>
References: <20230206212619.3218741-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230206_132633_131591_BBD1741B 
X-CRM114-Status: GOOD (  12.92  )
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

The v7 of this patch is:
https://lore.kernel.org/all/20230203081807.2248625-5-abel.vesa@linaro.org/

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

 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c        |  1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h | 15 +++++++++++++++
 2 files changed, 16 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 0e7aaff2ecfd..05b59f261999 100644
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
