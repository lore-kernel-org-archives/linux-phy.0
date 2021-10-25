Return-Path: <SRS0=BRk1=PN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15CD1C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 25 Oct 2021 04:20:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D55CF60F9C
	for <linux-phy@archiver.kernel.org>; Mon, 25 Oct 2021 04:20:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D55CF60F9C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=quicinc.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bkkyISl34Nx3dy1cYInzXE9xgZUNo2WsWkJzxAqMnVA=; b=XwQ4EZZh5cfspt
	pY8w16dvxY3JgXJ8fteuEcR5lZynOYi9FxBN/fP93d7cvbME7YXCobKjgWADODQnr0RzT8Y2ixyS0
	tp+ydX30qPT43KzWTR0yhP3U73o4+iL0lAJtrtFK6C1QXbBF0oG4a3dJBJ35YxP1gg2yXJbdbQLsJ
	rk9Y8qbipqSDEBKOqDW/6wMGjXSJG4/PSXvt8Okd2V8whYqSrc7QWswoPwQFQk8RjD523PQOWHAWp
	kwqoVGGmTBVqXA/wjR7zrcTbcwPkeVx0RaPyAqhU9dLmAZmQQSlBc2UryZmw8az6OBWygr6NQaSdt
	5G5Z3jZ8kuhERMfMzTFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1merTL-00FFcA-9n; Mon, 25 Oct 2021 04:20:31 +0000
Received: from alexa-out.qualcomm.com ([129.46.98.28])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1merTI-00FFbH-4q
 for linux-phy@lists.infradead.org; Mon, 25 Oct 2021 04:20:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1635135628; x=1666671628;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=X7bAkQfz6aT4/715bzVhw0pglrEtN8FLQnyZrTVFNdU=;
 b=JHpg9XtuTohGbdA/+KDbWspcORzgrYKTNZQrlCHfeUgJEig9VSLQu2Uh
 vVF65AwxTh6Q6ZAknwWKkGLN9/qnVScqGSZ8Z9RUBGaXKRmIprDV0VKH1
 6h75tHZ4hNEIbR+vwS9gtl7ZPuUEG8hfiYBKIp0n4vWC2vcrAOrrV1LOn Q=;
Received: from ironmsg-lv-alpha.qualcomm.com ([10.47.202.13])
 by alexa-out.qualcomm.com with ESMTP; 24 Oct 2021 21:20:23 -0700
X-QCInternal: smtphost
Received: from nalasex01a.na.qualcomm.com ([10.47.209.196])
 by ironmsg-lv-alpha.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2021 21:20:22 -0700
Received: from c-sanm-linux.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.922.7; 
 Sun, 24 Oct 2021 21:20:17 -0700
From: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>, "Vinod
 Koul" <vkoul@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <wcheng@codeaurora.org>, Stephen Boyd <swboyd@chromium.org>,
 Doug Anderson <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>
CC: <linux-arm-msm@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-usb@vger.kernel.org>,
 <quic_pkondeti@quicinc.com>, <quic_ppratap@quicinc.com>, Sandeep Maheswaram
 <quic_c_sanm@quicinc.com>
Subject: [PATCH v2] phy: qcom-snps: Correct the FSEL_MASK
Date: Mon, 25 Oct 2021 09:49:35 +0530
Message-ID: <1635135575-5668-1-git-send-email-quic_c_sanm@quicinc.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211024_212028_295676_7C9857F7 
X-CRM114-Status: GOOD (  10.95  )
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
in USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0 is reset which keeps PHY analog
blocks ON during suspend.
Fix this issue by correctly defining the FSEL_MASK.

Fixes: 51e8114f80d0 (phy: qcom-snps: Add SNPS USB PHY driver for
QCOM based SOCs)
Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
---
v2:
Corrected the register name COMMON1 > COMMMON0 in commit description.
Added Fixes tag.
Dropped copyright line.

 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index ae4bac0..7e61202 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -33,7 +33,7 @@
 
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
