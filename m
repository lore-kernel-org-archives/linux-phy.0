Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDAC3C6379F
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 00:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dcbEFuTSSOK+F8GWdU1t57XYRTDoLESxHagBiNVvoCY=; b=ymjVwpTF0y0Adx
	s0Eap9wKLIV3iIjKaDJJAG4DKXt4I0tMQy+WJyfRF+uxamA55OHg5pNkIoEeBNHftW/DdFPaignge
	PO48PHgeoaqF59Gg2aDa6frpt8+4vY2KeG5uZjHzO+ke+cd6OAuYDulul7sodECKiiHxCDNNc8VM+
	Zdx+1tfXi70Rt9Pp6qz3Q+1yuuiqjOJHYxyq5EHpbfDV5apU7RVaKr6aMb9AaJsWLjVHmVpoNcAu/
	2YlQsEw+E+rBGRevOqxu5GOX02+4u4Ag/N2kWxBRIYED/hoLYP83892p/5CT+TYrGAkiX99TrMf/P
	cK4iMYSeFfrHivx2fqGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHwhw-00GMt0-9z; Wed, 18 Jan 2023 00:53:40 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHwht-00GMr4-Nc
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 00:53:39 +0000
Received: by mail-wr1-x430.google.com with SMTP id k8so17907257wrc.9
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 16:53:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0aJbCLNImI9LXSbsqFxABvt6t5tPg6gbPY4B/5o0nEw=;
        b=UKW/FXTK17zDNGn+DzXGd4yiGDuy4FHt5DUPwVTCtH5eu+Oug8aZ9yJI0yRBboiEQ9
         O+eoa5ldD9M8AfeZXb0hlKCCEfNVvXU5xRO5Maf3nVRw0hkRFDUwLntiuYYovmUn561G
         U1VGsdLvxyw5vQKazaTh+RyJmj/06W4dmR5DhSCPQYEhNkDu7w7G1AojErfRWdFpQNIH
         CuuhjmF2r6Y9xgFFC/c8UnPrchVe/6Pf4RX+GgPuU7YRXwcpWggIp/XQnJWL0MPoltoF
         /fMtxlVNX7SAFpoyWieioQ0TxN+9Eu9KL9KIRElXRlMqAblJBw8FOE7V3CCnvF6/RIW2
         zu/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0aJbCLNImI9LXSbsqFxABvt6t5tPg6gbPY4B/5o0nEw=;
        b=V/O7aNbM4AUkoS8hAEwFl+v4vb9ssV5EmKO/pmEGXN93VEJalI2pRQG1M3vmXj/GZp
         LCorEfpLHC+LGFrfyT7FBxvMKGCTg1y2t/e2lTAEz9rKrec7B3HZRqkmtq/LbDlBX6rI
         ajpJyC7Fl0joLdUTV8QRrRSPeufeuBR34EXW96qN/s05Q1Bo+YWzlE9AhxktL2PXggAY
         OZHBZ1pzX6ha2b3GgKdiItAdwv4mS9CbqcdGwv/n7f9q4DUtlRz6CCBMmi8E3+I/MSFg
         mxjtEuyHh2ZInFLBrf0TkUDZ1GlTnkv+sBjsBmsZP0aqqTlBHPCrzKosu9PZvkl7x5/V
         hBhg==
X-Gm-Message-State: AFqh2krl0QuVPWJ8PUCI7upe4EupecEbioPxxDzVhvDDfopKoBisB7tJ
	fH0cYWtvZt6CntpvyESXyGx8PA==
X-Google-Smtp-Source: AMrXdXtc3am9HAqbZU461KF8cylAvXEv9uDAqM4771WYxxFWj4kJpZCVoWZ+xPG8+mhhKHTy0VZvZg==
X-Received: by 2002:adf:e385:0:b0:2bd:d136:9eac with SMTP id e5-20020adfe385000000b002bdd1369eacmr4160407wrm.9.1674003215434;
        Tue, 17 Jan 2023 16:53:35 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id t17-20020a05600001d100b00241d21d4652sm29609705wrx.21.2023.01.17.16.53.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 16:53:34 -0800 (PST)
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
Subject: [PATCH v3 3/8] phy: qcom-qmp: pcs: Add v6.20 register offsets
Date: Wed, 18 Jan 2023 02:53:23 +0200
Message-Id: <20230118005328.2378792-4-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230118005328.2378792-1-abel.vesa@linaro.org>
References: <20230118005328.2378792-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_165337_774799_571D4280 
X-CRM114-Status: GOOD (  12.91  )
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
---
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
