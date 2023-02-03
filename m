Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA55BC64EC4
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 08:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oOKeZncfKPkY3KmUIdsZx1v2UC1EV0TNRVKxWOECcHs=; b=EW1P7NWrq8YzF5
	TeMXdPQAJS6iqIGze1R1pVo9GtOzwvfvd0tizJUpv6pfCxB1qFjb3b4e+psfKgXxUYuKNgvPi1wiG
	exlwzdH2Dswk9EshJcN4u1qHYgtxNkFHcvURGRxGnTVXMKb/iqqRweuoE5cTNHlsKHZ+fkVT+r7LC
	72ocmF1tlilfIiQsX/HG6Q41X/ktZJRj91mzZa1tL71NZeMkhvAKwVOy/PtdX9gmQ9eiisl5dkxzW
	XnziKoDPxuz+wE9yzty38PM95oOSp2sRW1kVE/iOQHz2eN7SVf6bMSCcW+Jwpf3UMQokSD0XVWAC5
	HCeCAiPRO3gjKgi0v3Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNrH4-000yy1-CS; Fri, 03 Feb 2023 08:18:22 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNrH1-000ytC-3F
	for linux-phy@lists.infradead.org; Fri, 03 Feb 2023 08:18:20 +0000
Received: by mail-wm1-x331.google.com with SMTP id n13so3233743wmr.4
        for <linux-phy@lists.infradead.org>; Fri, 03 Feb 2023 00:18:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zNtzL2PidiHeTO8PSCaciTRS6LMZPNwWvdMtS6uNAYc=;
        b=cS0hH6VYYC3sHt99NaWopWGg8GGD7JG6ovgnCdmem75myJRxLbW70C3SQyJAfJtAss
         MtKb5/zta0HUvNQsAWNF5KmgmKvqQs4EtgscWExDHa/LQN2AKgt2JtTLKYq/CnurdBb+
         7A3conLnnSld2T/RwmJaYhcpnlB2RWBATQM3QexnSVsXgkog6VN1Qp1HV0jgC/jyXSrn
         8I9O48YjsctOrBCiJcHCJXZlLp5E/AlKCRAUapVgcyyBkfzQAEeSeV6+i0pPGljwJMnT
         kh4rpTNo2eGykRswFcXHSo9sQm7AU1wRgi91XcH70yQT4rbUa6AsdJNFX8NDY9Y887Av
         ipyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zNtzL2PidiHeTO8PSCaciTRS6LMZPNwWvdMtS6uNAYc=;
        b=dQ3kqegZsAdDCOzkNFuecGJXmJgYXPR4szuaRaTyDK3xFdUTlxE6aU0+/bxzZirPo0
         mgvl08ZZedUVM89pF8CRAhmwVX7U9AYahuBVqCRgG6zZU3rCEjiRTlfbAFR5gHHc4SX8
         uPUOiH+ZDA4QMlPb47W2iX6nagSkpwG24HVkC15QsMP7XsAD6En67/MVLWLGuR+sIvPU
         o5PwrwfS9S5j/TkPSSENg3LC/Wf5Wt4EgQ6TFYZO51YBNJa1Sp8rbUgJf+mzdajBOvA+
         JbBTDKTyR/5DHprzZqcXVNtk32128WWBOWkFB6QVxKR8dEIqT4C3wvx9rv1lIzUmFjq8
         /GsQ==
X-Gm-Message-State: AO0yUKVJlmpW7BxiScGORM1yN2OzipFvMPnCEXYZ5DZCVUyP9rPjB9Mj
	ptUtiL9Eg0JFjAezkj2yZDjs0w==
X-Google-Smtp-Source: AK7set+Zd8hJT4TmwMNZpfeHn3P8yzeFI3fjRF3TyurezaG18C6o9a91DPDy4f8j7tXVXSkMmBefbA==
X-Received: by 2002:a05:600c:3d8d:b0:3df:9858:c035 with SMTP id bi13-20020a05600c3d8d00b003df9858c035mr3637545wmb.10.1675412298631;
        Fri, 03 Feb 2023 00:18:18 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id az24-20020a05600c601800b003dc4baaedd3sm7316591wmb.37.2023.02.03.00.18.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Feb 2023 00:18:18 -0800 (PST)
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
Subject: [PATCH v7 04/12] phy: qcom-qmp: pcs-pcie: Add v6 register offsets
Date: Fri,  3 Feb 2023 10:17:59 +0200
Message-Id: <20230203081807.2248625-5-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230203081807.2248625-1-abel.vesa@linaro.org>
References: <20230203081807.2248625-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_001819_169120_6AA55922 
X-CRM114-Status: GOOD (  13.13  )
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

The v6 of this patch is:
https://lore.kernel.org/all/20230202123902.3831491-5-abel.vesa@linaro.org/

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
