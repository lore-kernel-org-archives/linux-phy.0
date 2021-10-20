Return-Path: <SRS0=T9my=PI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36590C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 06:37:38 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E83B161038
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 06:37:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E83B161038
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=quicinc.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FekbAPqk4Ybyz5dyV41pxytCVjcqZW7bm3TJ5j/LXJo=; b=mojLw+JAr4KcGV
	4ajEqYmmB2CLBKNkrXiOhTbXgfTw6cMTk0JOIzhRf6neET5ALlF6MgRkjJsfAI5EWuwKRcU4bPx4e
	rL4R6WT0Al1A1RCYQfmV2/8okaZMgMsIlTQsLP99dpftIucdQvWNyQKp2fAPlzSO78jKBdQnUg5pr
	iLzfi2zvrlI+KoarCx9hdfqRPAKjeNClS2kNVo9TokroqRgbv+2zN7IrZtjysTo8We58MhmuvrdqS
	4N64gs2QtSzPhNOWOUXddzJ+RrLlt93DWBliO/x0dDV6CldOhDzoVRozEe7itOyUxIH7pRgPVDs7H
	q4EduMcgr8qKoFgvKufg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1md5EH-003U6i-EO; Wed, 20 Oct 2021 06:37:37 +0000
Received: from alexa-out.qualcomm.com ([129.46.98.28])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1md5EE-003U5m-Rc
 for linux-phy@lists.infradead.org; Wed, 20 Oct 2021 06:37:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1634711855; x=1666247855;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=r15w9F6DRx510ziNvsmmm1g8c0esESPNSy71ZWfyaYs=;
 b=X/8XF03mnFUcXV9hjoRJggc5FRPaADW2T0C3V7A3EgFfzwND46++feis
 B8u1sS2GksDH5TKfDkTGhbXDis2loyiliYX5lB1Un8O8nU/1iSa6o1rFi
 +czRpKzJxp5IL+1iDAHOXUTSklOc/JPO6c0T5bWPcvXsUo0ReaBxsDY8h s=;
Received: from ironmsg-lv-alpha.qualcomm.com ([10.47.202.13])
 by alexa-out.qualcomm.com with ESMTP; 19 Oct 2021 23:37:33 -0700
X-QCInternal: smtphost
Received: from nalasex01a.na.qualcomm.com ([10.47.209.196])
 by ironmsg-lv-alpha.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 23:37:32 -0700
Received: from c-sanm-linux.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.922.7; 
 Tue, 19 Oct 2021 23:37:27 -0700
From: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>, "Vinod
 Koul" <vkoul@kernel.org>, Wesley Cheng <wcheng@codeaurora.org>, Stephen Boyd
 <swboyd@chromium.org>, Doug Anderson <dianders@chromium.org>, "Matthias
 Kaehlcke" <mka@chromium.org>
CC: <linux-arm-msm@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <quic_pkondeti@quicinc.com>,
 <quic_ppratap@quicinc.com>, Sandeep Maheswaram <quic_c_sanm@quicinc.com>
Subject: [PATCH] phy: qcom-snps: Correct the FSEL_MASK
Date: Wed, 20 Oct 2021 12:06:25 +0530
Message-ID: <1634711785-25351-1-git-send-email-quic_c_sanm@quicinc.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211019_233735_001781_52DF0B1E 
X-CRM114-Status: GOOD (  10.42  )
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

The FSEL_MASK which selects the refclock is defined incorrectly.
It should be [4:6] not [5:7]. Due to this incorrect definition, the BIT(7)
in USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1 is reset which keeps PHY analog
blocks ON during suspend.
Fix this issue by correctly defining the FSEL_MASK.

Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index ae4bac0..28459a1 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (c) 2020, The Linux Foundation. All rights reserved.
+ * Copyright (c) 2021, Qualcomm Innovation Center, Inc. All rights reserved.
  */
 
 #include <linux/clk.h>
@@ -33,7 +34,7 @@
 
 #define USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0	(0x54)
 #define RETENABLEN				BIT(3)
-#define FSEL_MASK				GENMASK(7, 5)
+#define FSEL_MASK				GENMASK(6, 4)
 #define FSEL_DEFAULT				(0x3 << 4)
 
 #define USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1	(0x58)
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
