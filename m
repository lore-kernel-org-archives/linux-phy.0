Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D28CC64EC4
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 18:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IhQ2OTCaDI1JgPaEOPU/XFgGzhAMej0FIkarFmuMH9E=; b=QW79tIQE5V7dhs
	IOEX504CB6rUg2nDTU4CD3gFCeMPxa9pXrZGx4dtali0RGYilz2aIaM/ADYpaGLkUrMWJEJPfZe6D
	DmB/F4xuUv5MGdP7Bt7hEnRagd14uMA+5hvZEeF46egLpi4dPJVMcCnP3Nl7c9CWq1Pz+l+j6QjyW
	yHmOQ1e3rGr60oYPxCEmA7CvsQMOwj55v/ebsP7Ni5MSZ9gv/YSl064nBf2cQVewhsCdPHbU8i8YF
	NFWW9l49llX1QNkj2lrgKHQM/P8lLzfSJCVKfvhH+Bnf/3D+zpb6t/5p3nZoF/l46qACoWEi/jPaY
	SsG+1u+hDx382B3YZ4nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPokc-00GXTs-02; Wed, 08 Feb 2023 18:00:58 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPokZ-00GXPt-E2
	for linux-phy@lists.infradead.org; Wed, 08 Feb 2023 18:00:57 +0000
Received: by mail-wm1-x333.google.com with SMTP id hn2-20020a05600ca38200b003dc5cb96d46so2057483wmb.4
        for <linux-phy@lists.infradead.org>; Wed, 08 Feb 2023 10:00:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7gTT5bg0iGIcpLt+9nQPxIsECFQzZ9BnIPzrlzqrtLU=;
        b=oAZez1TiY3+C7oBQca34iVruW9XnF2yZIG2ImGhlGFGsLjoxtEclnnPv6B+ge/EzBY
         py1z5UE6qT++OM6uWQ9ZXV+ZSjBl6vRpAmEBNDEZiYdfvnSsriq7z9Obtw+30BiIcuG1
         aIyH6/XP/xRYoO420h+6UJIqRLFqGI+E8I3PvYDe8O87ADYKDh3YF2i7mn+ZIxVyJWdv
         2W0H3BGSLuCYUAWihdA5/REcLYXM4Y0ecy8+wP9j9QinC2XBOXf/ufprh74b6dV3088b
         cUQvLjrhorvljFRn00N3XqJKIzPMMyhqA328QrEdwHibGBBIImAzsnHcNVzHkZh2BIWF
         K0hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7gTT5bg0iGIcpLt+9nQPxIsECFQzZ9BnIPzrlzqrtLU=;
        b=39ypLyyb2y5RSnOjZXd+iTGAuCy2o4tAfYLoQ8nEIncIsTaI727hmvO8rNAEC/CI7F
         t3QHZfvRDH25cRoQp+6/bPrvIZbeLnNHuEJBuyUUkqEvtHt0WcL1gGhJJ/8NQrpk9mrM
         1VvAf/kBK/XNPYOhVXHTpxFY6RYK5DwSlEOtKnL3rP9LJ+sqidZr/6pZ+sEgdDgmqI3A
         +oxHmuq0aqH9FA80jHfdyudtpe37L/srIceHbYg2hzi/mgYamLzb9AI8rmwudX6NNdsR
         n4bgUj6GmSwPlNKnbmSAdRB85mv29U+sg5IvgU4f27cH5fZYoptg0W+nFLnCYcE0/Cwj
         UY1Q==
X-Gm-Message-State: AO0yUKUN+ZNXOolIGmgDPZ1o64d6OE3yaoZ1wlMU9J5sxsb5UXZQcFDV
	y8qES2oM6exQ8SiubW76jf+KJQ==
X-Google-Smtp-Source: AK7set9TyMNW6XrApbBVX7ErLeRqUc5VGG/YjmRWwXnN7V6M4SWIqLsb1FmVolqL1QEvgHpKkExZPQ==
X-Received: by 2002:a05:600c:331c:b0:3dc:9ecc:22a with SMTP id q28-20020a05600c331c00b003dc9ecc022amr7434239wmp.8.1675879251669;
        Wed, 08 Feb 2023 10:00:51 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id k20-20020a05600c169400b003dc54eef495sm2370286wmn.24.2023.02.08.10.00.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 10:00:51 -0800 (PST)
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
Subject: [PATCH v9 03/11] phy: qcom-qmp: pcs: Add v6.20 register offsets
Date: Wed,  8 Feb 2023 20:00:12 +0200
Message-Id: <20230208180020.2761766-4-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230208180020.2761766-1-abel.vesa@linaro.org>
References: <20230208180020.2761766-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_100055_493095_48E16B7A 
X-CRM114-Status: GOOD (  12.56  )
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

The v8 of this patch is:
https://lore.kernel.org/all/20230206212619.3218741-4-abel.vesa@linaro.org/

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
