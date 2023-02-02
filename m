Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C294C64EC6
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 12:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G3waFCef71whPqfEtuBJb6w87ih+NIVYkcYN1Szbdx0=; b=hGdfu75ms23R9e
	Pl/RXlR4H5nDPSdbwtEWISrAGru/gsfw8pRGhNSnDNxngSj5QmLkqHd5mB440ieqgqvxRyLuqPcJf
	qSmhnTLL6KIe5UqivN7gGCM2D1svQWkL7yAjbkttx/7HKIxz67nUH4euX39HU3HBK5D24QGbA9/e+
	bnMwLuU98DDb1bPIhokpzabNd+UXUXrKDLa+MFLmFcfE8TVZtoJO3dwFWDIU1achnl39oKt3ZDZ5L
	wJdeFYtWdbjaqVQPPW+W6ZZjIPnhMW/JPQz/bjwqwyv5gdyMYwo7E40f00GaNwItGwqthaPLRPjU4
	7RrOxzcZTqS3gpsqHIjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNYs7-00FpHP-M9; Thu, 02 Feb 2023 12:39:23 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNYs5-00FpCg-1s
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 12:39:22 +0000
Received: by mail-wr1-x433.google.com with SMTP id m7so1568872wru.8
        for <linux-phy@lists.infradead.org>; Thu, 02 Feb 2023 04:39:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XKRUB3ekcFn44JBsuKcc+Tgmo4eTYUFf+kIzIFVRtKs=;
        b=TARE+r4iLlFwkrXNeLEKVc94OAzu3INuD+B/XXVVM9liRBwU4IJ3aSFug4x9pKreIp
         srY8U9ibmJ1TPXpiua5v+kv/jcywcPSB8b34D6SNwUpLe924dydG0ggpLlHnAP4VHZrF
         n2jICPAEQez9ZVcIjMOIdWstArSGjIaf5owP0zXstj8kcGdSxpGfKU+m0aZJRSD+Y1+m
         Vu9voOOG7WY2/m5RBGjqVdtOVjpqhoBwbCR7tPR8vUybIVxsyrdEaPU8llEgeroxeOl1
         t3o+KQDBx3aDhCB1MNhzWMOILRJ6LwIkhdCDb+YmYBOjdQwd4EPyevZ/56kvVlULYeaY
         spiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XKRUB3ekcFn44JBsuKcc+Tgmo4eTYUFf+kIzIFVRtKs=;
        b=gpOKU458zxcREzOhnUPBnZ57j4hwK89lBMnjSr84e+H3IJQ6SiY5PyPoLpzioY97sD
         TpcyXSdZiyH6Z9NyMvh6uQ3plpJYObF3byYbJt58qgELIDmtMFMKefPMBR9O8WcfGKRG
         OHTiZ+5jNKjhFu9O/wZUiQCa8ZcfFMKf/+I/DYUinZjClT5OrIx8T+3635DNd+fQvJRB
         we+gu3Dffvb7AtGk+zX7BqinHld/VNvLqiaIVP4EJsWfBO9T5QdY5z+dpvrhnujdBQF1
         m9QVC4oo30MH/1YNX+gNfhtvvO60CiW1e3be0EM/xpyR5ztiq57mOqpxGYsVGH1S+fdv
         /nAQ==
X-Gm-Message-State: AO0yUKVi63l7n7K3HzqV49xyuZBcdGh7dpkWP7UaqWc/PA4KgHyYQwxw
	od4/aYpn1Ug3E/6McMr1vaRVCQ==
X-Google-Smtp-Source: AK7set9mnIBbitTZjM2AnfrOdg982R9dvwA9i4G2GywEWZ+CpAu3VeexaaaUT8kSP2AyuZgByPxNkg==
X-Received: by 2002:adf:c753:0:b0:2bf:ae51:807c with SMTP id b19-20020adfc753000000b002bfae51807cmr5380145wrh.22.1675341554027;
        Thu, 02 Feb 2023 04:39:14 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id j5-20020adff005000000b002bddd75a83fsm19525644wro.8.2023.02.02.04.39.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 04:39:13 -0800 (PST)
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
Subject: [PATCH v6 02/12] phy: qcom-qmp: pcs: Add v6 register offsets
Date: Thu,  2 Feb 2023 14:38:52 +0200
Message-Id: <20230202123902.3831491-3-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230202123902.3831491-1-abel.vesa@linaro.org>
References: <20230202123902.3831491-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_043921_111343_949A8263 
X-CRM114-Status: GOOD (  13.57  )
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
UFS and PCIE g3x2. Add the new PCS offsets in a dedicated header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---

This patchset relies on the following patchset:
https://lore.kernel.org/all/20230117224148.1914627-1-abel.vesa@linaro.org/

The v5 of this patch is:
https://lore.kernel.org/all/20230124124714.3087948-3-abel.vesa@linaro.org/

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


 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h | 16 ++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h        |  2 ++
 2 files changed, 18 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
new file mode 100644
index 000000000000..18c4a3abe590
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_V6_H_
+#define QCOM_PHY_QMP_PCS_V6_H_
+
+/* Only for QMP V6 PHY - USB/PCIe PCS registers */
+#define QPHY_V6_PCS_REFGEN_REQ_CONFIG1		0xdc
+#define QPHY_V6_PCS_RX_SIGDET_LVL		0x188
+#define QPHY_V6_PCS_RATE_SLEW_CNTRL1		0x198
+#define QPHY_V6_PCS_EQ_CONFIG2			0x1e0
+#define QPHY_V6_PCS_PCS_TX_RX_CONFIG		0x1d0
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index a63a691b8372..80e3b5c860b6 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -38,6 +38,8 @@
 
 #include "phy-qcom-qmp-pcs-v5_20.h"
 
+#include "phy-qcom-qmp-pcs-v6.h"
+
 /* Only for QMP V3 & V4 PHY - DP COM registers */
 #define QPHY_V3_DP_COM_PHY_MODE_CTRL			0x00
 #define QPHY_V3_DP_COM_SW_RESET				0x04
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
