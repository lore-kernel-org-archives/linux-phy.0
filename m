Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1776CD4F52
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 10:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o6qzZNMU4drvLXy/YcCD1bUhFybdBDtemVu16oSX1kE=; b=RyGemfXFGAY6W2
	inqlWYFv4V2YpbUXQr+n0lgCjBb+XRO++9krLfIOU5NRZuFUifvikYOqe5pno1EH40gcEOhfTbNB2
	kTV/3/Aca03oomCbHwbN2XhusyuYmOj4NdpbGrLhJPO3CFcnpeS6Lgqbq7zSfNk9aaK3Zq9rBoCKq
	tjug21E988THNhuQL+4iDbzDH3Usm0siXHmaVFhBQNI0ekkNZ0EqRPuCEDOqmHJrOxR3+aMAawPJN
	/yAOvtqqc/D3tJhG+HYin882oOnBCqAojhAOXhfDvqEzhWcq8mhBgykjHQIPKeU1QtozgIT9zH2B0
	ec/D9lvzoOixzRwMa+Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOvHS-0000000FFsR-1kk6;
	Mon, 18 May 2026 10:33:02 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOvHR-0000000FFrT-1oYX
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 10:33:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id DE378601E4;
	Mon, 18 May 2026 10:33:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2286C2BCC6;
	Mon, 18 May 2026 10:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779100380;
	bh=u4mlMQuiRSVOJoZk0W9VqXiNcwQBWqJwQpwyGvpon/w=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ZJPqUXk9C7D6Skr2TewVA109U1nl6rojJkb3hOnerw8JaFH01t7Jp0RxNIwADMh+L
	 gcyI0My5UXZFeWnFGu9DEwpbDtJy8ySc2xY5Zs6glEeeibD0WalAaLP7qQhMBRi6QG
	 LLt0CdJpCx45pk+mFaSIzyee30qnNghStmR1a20KYwoH9oDfGpjjaq1E6PoTR1RLoU
	 DO3l6ohZZQMfs6+0ndlpYSjD9J5RwJQ+XpKN7qGuUWpWPsYM4LZWCipo3KB7nwgrom
	 Fr0pbXNUau8GHVDBC57KvT1e+tSeK8BweVTh+PxpWlvYTMTv4TIXKkcwP9QEvBx+N6
	 gWM/EwdAAqu+g==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Mon, 18 May 2026 12:29:49 +0200
Subject: [PATCH 2/5] phy: core: Define TBT phy_mode
MIME-Version: 1.0
Message-Id: <20260518-topic-usb4phy-v1-2-71d827c49dca@oss.qualcomm.com>
References: <20260518-topic-usb4phy-v1-0-71d827c49dca@oss.qualcomm.com>
In-Reply-To: <20260518-topic-usb4phy-v1-0-71d827c49dca@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 usb4-upstream@oss.qualcomm.com, 
 Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>, 
 Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779100365; l=1765;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=RMwhfzMTBEbqo12DI9ixrBoeEOqCH1NR2RKBf/hbieM=;
 b=AlyKt6pSJ+eYUl4BNy94aQsgcx84VvCq8TLQuBoxvud08RayFKVzo9wrDoixbllXq8g/RVP2d
 DdYg++MadnIDHHLqs0yjHVPDGwobA/FTD3UPon58ucRoFN5ESPsdOX/
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

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 include/linux/phy/phy-tbt.h | 14 ++++++++++++++
 include/linux/phy/phy.h     |  2 ++
 2 files changed, 16 insertions(+)

diff --git a/include/linux/phy/phy-tbt.h b/include/linux/phy/phy-tbt.h
new file mode 100644
index 000000000000..5f48059814e1
--- /dev/null
+++ b/include/linux/phy/phy-tbt.h
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
index ea47975e288a..26a91c070f8c 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -20,6 +20,7 @@
 #include <linux/phy/phy-hdmi.h>
 #include <linux/phy/phy-lvds.h>
 #include <linux/phy/phy-mipi-dphy.h>
+#include <linux/phy/phy-tbt.h>
 
 struct phy;
 
@@ -45,6 +46,7 @@ enum phy_mode {
 	PHY_MODE_LVDS,
 	PHY_MODE_DP,
 	PHY_MODE_HDMI,
+	PHY_MODE_TBT,
 };
 
 enum phy_media {

-- 
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
