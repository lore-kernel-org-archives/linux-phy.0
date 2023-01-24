Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEEC5C38142
	for <linux-phy@archiver.kernel.org>; Tue, 24 Jan 2023 12:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xADwERSqZmDKk/TNh5ujS2KPXRRxfRfEzsn40e9gCYg=; b=FvejoPiauLVkRC
	9Ufp2ytRBTwvKtRmOvLDfiu/vnQ2BZ49kLuVbq04BLxPgB7IauttpgzsCXp1UTTSihTkswWP7GZ/R
	m7Oq/xKBMbwNWDTqRs/RSYneSzT/k7A7OebW7H/1LkPlhv5WmkbmqR5ImZchmXzRiAldsh/EpxZtF
	/kglUNuLEsxgMKtST1uEiAxQOEhQuBRh1FHifTFsEEG6CJYrv16EMjS07ZI1azxMQD1Q253EBJnHG
	W41DtOm7D44Q/bGzZD3R+374Gc3XXDk8Y4+dBKipHXX6eKYx5L9vPDxNSF35yk/TmJxfXTmlmOrfm
	t6DMO2U4Eq67sEqrNm+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKIi4-003n2C-Bu; Tue, 24 Jan 2023 12:47:32 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKIi1-003myO-H6
	for linux-phy@lists.infradead.org; Tue, 24 Jan 2023 12:47:31 +0000
Received: by mail-wr1-x433.google.com with SMTP id r9so13757652wrw.4
        for <linux-phy@lists.infradead.org>; Tue, 24 Jan 2023 04:47:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XXqaaiu8XcOEh/w0m5+ujekCyu2XVsl5TF8KZfGBrR0=;
        b=LYPF1xCatea+0wPnKT60w1baAG84QCdLtvjg9sX+tdToX4hVr+m3XlJqlNYvMdjS1b
         1KAZvzY4E9nTDQpE8OzcLOHKxkUIsoH+lAQnJ0cAPPPti9U2cFCsUJ1LExUcggX+yYKt
         0PhZKWOs81uLsYaRekOLndnsoVfFygdwIkk8otLBoP0kVLX43PB0hBgCfZQM0qOO0J6P
         l8J0rAqcooOYRtKXfZusS4tjmizcUpof+O0vAI1Gq8iVoUS+598WUJE8PHxIy3K0GeTL
         pTcqYqENrkd9C7T01ZlK2mrRRGnev4KJI1xum0kSaaeXtgfZnh0nFTlFOd5Oi3f1I25T
         oz/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XXqaaiu8XcOEh/w0m5+ujekCyu2XVsl5TF8KZfGBrR0=;
        b=r1EsDnWItcEfHVgeObHmAnlYEJe5kIzLrz/QhrJJiQQdXLfaHtvgL82nIcK7QdFlmN
         JM41lBdcjEz3/vmNflGc07yARh0W3IMXpr/ZaH82G3xkjq/ttcWcJBiHwR25Nle3YUvr
         ifU5cr8NDB+pkenTsfdKkgXVODXEUucAnUSwZJrgd63ChsY/nQXUUfFmsJqChpaOV7y8
         E8OGytqfkiUp/EmMSJ7E+AwK6OmyWOeB/oIzc8wIBF6bgrP8r/yu0cs4UC3XGEjMHh4A
         /B1rmOQCFc+7sXQ+nEELlRsJqt4Xhc5OsbegJd71fj95f8YmqsHLSyDui0r3HROq+ouM
         SNsg==
X-Gm-Message-State: AFqh2kqOGi2U4VeNWc85isa7tB48TjtS2QDPXwCPFwaG/jfX4hgbKcD0
	vLxrirH78nfFfjooTC842sS8Ww==
X-Google-Smtp-Source: AMrXdXuhx5GwrYDDdFGgX1pXhJBJ9MEQAVy0Yi+kChQnWQd1wGb8EH5AP+N3bmVQdBHyQiES+HIl7w==
X-Received: by 2002:a05:6000:1006:b0:24f:5890:616b with SMTP id a6-20020a056000100600b0024f5890616bmr32418689wrx.56.1674564445728;
        Tue, 24 Jan 2023 04:47:25 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id a5-20020a5d5705000000b002bdbde1d3absm1766840wrv.78.2023.01.24.04.47.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jan 2023 04:47:25 -0800 (PST)
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
Subject: [PATCH v5 03/12] phy: qcom-qmp: pcs: Add v6.20 register offsets
Date: Tue, 24 Jan 2023 14:47:05 +0200
Message-Id: <20230124124714.3087948-4-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230124124714.3087948-1-abel.vesa@linaro.org>
References: <20230124124714.3087948-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_044729_590250_74FFF8A4 
X-CRM114-Status: GOOD (  13.26  )
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
PCIE g4x2. Add the new PCS offsets in a dedicated header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---

This patchset relies on the following patchset:
https://lore.kernel.org/all/20230117224148.1914627-1-abel.vesa@linaro.org/

The v4 of this patch is:
https://lore.kernel.org/all/20230119140453.3942340-4-abel.vesa@linaro.org/

Changes since v4:
 * none

Changes since v3:
 * added Dmitry's R-b tag

Changes since v2:
 * none

Changes since v1:
 * split all the offsets into separate patches, like Vinod suggested


 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h | 18 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |  2 ++
 2 files changed, 20 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h
new file mode 100644
index 000000000000..9c3f1e4950e6
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_V6_20_H_
+#define QCOM_PHY_QMP_PCS_V6_20_H_
+
+/* Only for QMP V6_20 PHY - USB/PCIe PCS registers */
+#define QPHY_V6_20_PCS_G3S2_PRE_GAIN			0x178
+#define QPHY_V6_20_PCS_RX_SIGDET_LVL			0x190
+#define QPHY_V6_20_PCS_COM_ELECIDLE_DLY_SEL		0x1b8
+#define QPHY_V6_20_PCS_TX_RX_CONFIG1			0x1dc
+#define QPHY_V6_20_PCS_TX_RX_CONFIG2			0x1e0
+#define QPHY_V6_20_PCS_EQ_CONFIG4			0x1f8
+#define QPHY_V6_20_PCS_EQ_CONFIG5			0x1fc
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 80e3b5c860b6..760de4c76e5b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -40,6 +40,8 @@
 
 #include "phy-qcom-qmp-pcs-v6.h"
 
+#include "phy-qcom-qmp-pcs-v6_20.h"
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
