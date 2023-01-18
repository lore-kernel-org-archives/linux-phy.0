Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2501C00A5A
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 00:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Ydt5oVpl72AfajQ6xRB0Jbl88b5XgWvL/idKA5rAQE=; b=Kl12RyOAgfMceN
	7Pj2tXZ2QEM7Ie/cu67VpI6ZG6dL/nKIttlDkzz0UiHbggSGhn1K5pKHwEu+Dt64gNZYydtCm+gii
	loGgsHZxGslYNAbH2lXJK+A8luaEXsa/biVriz9VAPGXKWM2ekhhkusZWcfG2UdkNtSc5WkUCDtgd
	VVgu1KY7YOQ69dWCQ+txIiwpXrE7QYZbJvUSSi4SkuLF1IO7gkXK08Rb/x9zSws1iOv3yd24m8f7D
	fNKJQ6RsUWVyrxepBJkQ2qMfH83+tQLWTLyo20YmGQaz0UG7K8NsOi2BW0Ty5ydDh1Us1SU6F0p4B
	W2jMhiFg5m5zTpGOnw9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHwTe-00GLim-6n; Wed, 18 Jan 2023 00:38:54 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHwTc-00GLgm-2l
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 00:38:53 +0000
Received: by mail-wm1-x336.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so375842wmb.2
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 16:38:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=if8KkFAbX4tKZerzemH1jyXjHQrdZV5HL6+sFppcaEE=;
        b=UCq03fh/I2M2014lZiVw7N56SgAAUOgQG9T2v1I87qpCXLvvtyQitQfhweWYorbHis
         Kqdz4ljUkdnE0LTMUZ8qWsC791hX8aX20UikKzZf3b1S/5NutFpOMfuksBkWNGlbjm5t
         c3wlLhKCFeHtjwKNrP3SZSRJb/kRn/lMRZP7hllUZoynZfSaCDHPSgptQnQ20kMMV0wf
         XabEra27se/cNBbQ+kabLnXbsgpHRzWgcqIXUSS91bN714AhJUQYVgr3fDeps9L6G8d9
         DxJf2KTALWLiJpRhgx73Nv2UfSglTi8VxGHPyeaA2D+EfxJDJe6+QMLsgUV2id37wMOV
         hfnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=if8KkFAbX4tKZerzemH1jyXjHQrdZV5HL6+sFppcaEE=;
        b=WiddgDPBH+cA5bQkwnYV/zuNzp9/Sstt8nxIXB5NiiPaT0g9extipWzmugXkLwXQBB
         H9ZIuZVuheTNIuOumb2vzd6/jGSbLJxh19Vr6gaHdBFToCKMD516PXYkWSVh9VnHkIa2
         Bg0sHy9BQgruV2DDLOCCtIziiVXhYxBXU4kVXkII/AoYvUHGKcwofVWvbcLwO1xVSPZR
         frooJvAZs/zKD54cl4djr7GztyNlJjoMW3V/Jn/NplYuk225nlX1RZy3Vw4JnASyQodW
         ELZNlpGcacZ+oK3nlvgzp/scpv9/MZwQAZn4OaPkLcJW/1Tn+vRwR6VTYCQDe54j24B/
         fI8g==
X-Gm-Message-State: AFqh2kpY/8axNJZLseuiEZtNc/jpROtXlTr0adiO0Fpk6HDxdECkSH09
	O0M6155gY7I0Qa471Rr8cGMv5PIw66J+R8na
X-Google-Smtp-Source: AMrXdXsmWikHKtq+yaeNbFF6+IEq32uJ19G0dYzDbgWfrtAp2920UH1oqOF6G0FKjuY0SeqFI76alA==
X-Received: by 2002:a1c:7414:0:b0:3d9:779e:9788 with SMTP id p20-20020a1c7414000000b003d9779e9788mr616408wmc.37.1674002324362;
        Tue, 17 Jan 2023 16:38:44 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id m9-20020a7bca49000000b003d98f92692fsm365199wml.17.2023.01.17.16.38.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 16:38:43 -0800 (PST)
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
Subject: [PATCH v2 1/7] phy: qcom-qmp: pcs: Add v6 register offsets
Date: Wed, 18 Jan 2023 02:38:28 +0200
Message-Id: <20230118003834.2330028-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230118003834.2330028-1-abel.vesa@linaro.org>
References: <20230118003834.2330028-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_163852_141121_39C80F5C 
X-CRM114-Status: GOOD (  13.24  )
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
---
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
