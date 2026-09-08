Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C125C79FA0
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 07:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=69TC3o4ikCW7A2vPIo2a+sN7OJ0+w37WOEv4/YX+CcU=; b=3jvJKs9ewUz/2o
	RmYBS22g0h3R9TtBwGB49NS6QYOpbeKsYXBUKVwUQIXVQ3TajWBRGh3tlj8Z/Cj9ao8CT4qbYhZyX
	uAv4wSfVlqDBLVi72RrUMh6pnkoAGuzb459OMRWqd2+oU77bbKYwpco7utd1XJ4sLNxwhXj0vLH/N
	NxG92bFd0cb+l2NUh/y5UZEGweKei1cDysB3G8merlkeEEAr/KO7e1ozPQsaP6UksCrVEl5ZlgjbQ
	LYana4q7paBPnURDapcZZoWZgGTUgXFn/HfXXdH41OH7J6kRLQWRFqi5MrqbsF/Q991HrVzFpeLs6
	7llbOi3gfk5bUbKKAiLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3qf2-00000008Jsg-02V9;
	Tue, 08 Sep 2026 07:54:32 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3qf1-00000008JsW-0TQ0
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 07:54:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id DB79D40216;
	Tue,  8 Sep 2026 07:54:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A4371F00A3A;
	Tue,  8 Sep 2026 07:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788854070;
	bh=aHh8YnkpdvGLGzXjrKPt+ZqsL8ZCEOOEbyoUUXuCA0o=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=atj82x0J6FZcnPOO9V2QBFrZVMLnXV6+L7gRTrxJCDFWwGLuKskR9FYkcO99T2tY6
	 Av39A1LR01EvQY6lk96zHGh+3Awo+RF4RqzElWvJVzqL8s/rBmSOwWBQWj24LpJNjg
	 9x34/qhMzybjs8ltW2tOYha6//AYSZz8ng8zklI+29JfT26RaiBgl/QfORB5CrDEbL
	 GgCxniKm4TEH3nwgNsDYY6nbHGbHFcyqCUWEYk3shIfdHDUUE1xtnq9y/qJq96zpIJ
	 lMR6+G4+uUO29CZ2XnPI5GkxIq/sdttn+p98b0t6DPRSLUUqPnM1vyYqZie9kgFRtX
	 R0nWdh2xvy21A==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Tue, 08 Sep 2026 09:54:06 +0200
Subject: [PATCH v5 2/5] phy: core: Define TBT phy_mode
MIME-Version: 1.0
Message-Id: <20260908-topic-usb4phy-v5-2-73aac69578ef@oss.qualcomm.com>
References: <20260908-topic-usb4phy-v5-0-73aac69578ef@oss.qualcomm.com>
In-Reply-To: <20260908-topic-usb4phy-v5-0-73aac69578ef@oss.qualcomm.com>
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
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788854054; l=1957;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=DA0DJZNhVBAei58r6kWRym01jHw8XXps7yp+Nt6anW4=;
 b=pqWCXETOl9wgh85URVM7rBQfJCqCz7QdX+LklhlehiaqCPqzN6B36KQi9M8BnAZiMwmqNKez7
 ZeZ9szP9WUYAEjhCVP1fxLL/zzhdeuhvnNtkVENBVcvlTncN0Cb6zxH
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
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
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
