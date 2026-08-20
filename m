Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B2BCC5DF85
	for <linux-phy@archiver.kernel.org>; Thu, 20 Aug 2026 14:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7TqFGUhU07WxuGxTTV5DjVDauycdGLbdWLnsc9Qge3g=; b=zIyYhP+SeIcx3D
	Ok7lhnfX1EtCxlRxrZNaPo0vR6kuwAYmq3d1PD0G+U1sHCnlYPhAEGweL+xjg8+k92ZsnREOL1L+D
	onGaIgbhTuTOynVfjo4EpESwJPNGmUTTUHD+gpKRKn/pF4hEtutT/Ek9EfYa/Xxgug9xUY8dHDUCt
	UvQ35m9BJ4wmlBHCex+p6yX1ilT/Lbs736xrTRs8VYST+gRipZmfP89tNxAz7qM6Ay2HCQ9lav0Sf
	i8yIAneCVf/QS83RVSsMN/p4I8IKJhFus0si/1eR7EOdsndCXqHfGsC1FCDtLSloCTNuFfXiMfXlG
	7C3wuPHC6s7RxLEYzghA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3h3-0000000Bh6b-3HkV;
	Thu, 20 Aug 2026 14:24:33 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3h2-0000000Bh6C-2hEv
	for linux-phy@lists.infradead.org;
	Thu, 20 Aug 2026 14:24:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D1AE160A69;
	Thu, 20 Aug 2026 14:24:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C34371F000E9;
	Thu, 20 Aug 2026 14:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787235871;
	bh=Dj1r/wWB/aOZdgGoUdJw65LeZetntGEUGM/wi7bHYTA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=J9hHG35vG5WC49HR7pSe9aEKjIxS6X9QEtH6wuwyqspHCnVQ6MYjAY6lzIiTVsmUC
	 TInEIv082U/t+1N5gQVs7w5zwE29qdOZSGjxpps2Gb/Vj3r7N24fd4aU38dSXGQPY4
	 aHmE5rProDNTZhZN0g0EaGVCYpAWv+JWq47FFHffMTACOeK6ixBNwWYnBz0GqIPfAc
	 eLwbMgem++wOEnD+l13duPhqAbAjv6TczdxPg8uDaw1rWf2q7DlokBr0lZxwA+Y0V5
	 vn0I6XspxI7bxCxoh3er2CSv/+vzeQ8dG9Ls/UU0zcZFkWt686ryo6g7JuK9TyOaN8
	 X/0nf7aQqEowQ==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Thu, 20 Aug 2026 16:24:11 +0200
Subject: [PATCH v4 2/5] phy: core: Define TBT phy_mode
MIME-Version: 1.0
Message-Id: <20260820-topic-usb4phy-v4-2-aec9d2cb31f6@oss.qualcomm.com>
References: <20260820-topic-usb4phy-v4-0-aec9d2cb31f6@oss.qualcomm.com>
In-Reply-To: <20260820-topic-usb4phy-v4-0-aec9d2cb31f6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 usb4-upstream@oss.qualcomm.com, 
 Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>, 
 Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787235854; l=1880;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=yWJCXvkxQGVASlmRT/ShbWiojv2uvFf9iNjzF84+L7k=;
 b=+CRDiHMP9fTgIfTxD7aVLbZ+7YmvEMmfozVp/PghXDxEX/IEjqiW5F4pbvppIpMMBDtWyRRNs
 ZIkZNUV7l9LDh4OFeni0mlrVY6Qvqz6FU3bciaK77xprW22h/aS4jEc
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
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

From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

There exist OS-accessible USB4 and Thunderbolt PHYs that need specific
configuration. Define a new phy_mode for them.

Currently, USB4 and TBT3 are defined as submodes, because they're quite
distinct, most visibly in the electrical/analog aspects (slightly
different frequencies, timings, etc.). This results in a need to make
the PHY aware of the actual mode needed (at least in the Qualcomm
implementation, but I believe that'll be a general need).

Newer versions of TBT are basically supersets of USB4 with higher
host-side requirements, so these are not defined. This can always be
changed as necessary.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 include/linux/phy/phy-thunderbolt.h | 14 ++++++++++++++
 include/linux/phy/phy.h             |  2 ++
 2 files changed, 16 insertions(+)

diff --git a/include/linux/phy/phy-thunderbolt.h b/include/linux/phy/phy-thunderbolt.h
new file mode 100644
index 000000000000..5f48059814e1
--- /dev/null
+++ b/include/linux/phy/phy-thunderbolt.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef __PHY_TBT_H_
+#define __PHY_TBT_H_
+
+enum tbt_phy_submode {
+	PHY_SUBMODE_TBT3,
+	PHY_SUBMODE_USB4,
+};
+
+#endif
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index ea47975e288a..3a2ace2cadff 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -20,6 +20,7 @@
 #include <linux/phy/phy-hdmi.h>
 #include <linux/phy/phy-lvds.h>
 #include <linux/phy/phy-mipi-dphy.h>
+#include <linux/phy/phy-thunderbolt.h>
 
 struct phy;
 
@@ -45,6 +46,7 @@ enum phy_mode {
 	PHY_MODE_LVDS,
 	PHY_MODE_DP,
 	PHY_MODE_HDMI,
+	PHY_MODE_TBT,
 };
 
 enum phy_media {

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
