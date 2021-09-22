Return-Path: <SRS0=p6f2=OM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD0CC433EF
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 13:06:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 77F1E60F6D
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 13:06:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 77F1E60F6D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baidu.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MG9f4OeWJYn/0RQozIpXIdcgElfIUN/+DggR+UmQvQ8=; b=fEnF/bbKWKjGXC
	Mu9qLKzK6MYw/rf1/CwfRPORhDHU0VbA+6BLWKjSDDMROtkPFT2t8YhiV9n55KXX8e1L7R1IxVc6z
	AAeeD2G87lso+SykvHT5PN1Np88c+3mFofD3oTBAedYcHng3TJlvlV2U383xxXUGv8IaSf61GJaph
	WXFv0KixaLRZ+iXm80EpAVgpyCPHCDUW2JmU1DaIJq24Fq9eb2Fkh9202Dp8OI2+vo5enJ9BolF4D
	fEaX3k8Qpli6DtTrlOiIa75DhrvhxqMvbki0ntPtyBDolPG9jw3aNXvMfTMzXCL1eNoA4tNJMpkHq
	iBZyyve+nq0D8Z6KyhgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mT1xd-008X2a-TE; Wed, 22 Sep 2021 13:06:53 +0000
Received: from mx24.baidu.com ([111.206.215.185] helo=baidu.com)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mT1rU-008UU3-Ij; Wed, 22 Sep 2021 13:00:34 +0000
Received: from BJHW-Mail-Ex05.internal.baidu.com (unknown [10.127.64.15])
 by Forcepoint Email with ESMTPS id 720D3FAF1D7B11E54F0B;
 Wed, 22 Sep 2021 21:00:31 +0800 (CST)
Received: from BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42) by
 BJHW-Mail-Ex05.internal.baidu.com (10.127.64.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2308.14; Wed, 22 Sep 2021 21:00:31 +0800
Received: from LAPTOP-UKSR4ENP.internal.baidu.com (172.31.63.8) by
 BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2308.14; Wed, 22 Sep 2021 21:00:30 +0800
From: Cai Huoqing <caihuoqing@baidu.com>
To: <caihuoqing@baidu.com>
CC: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, <linux-phy@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-rockchip@lists.infradead.org>, 
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] phy: rockchip-inno-usb2: Make use of the helper function
 devm_add_action_or_reset()
Date: Wed, 22 Sep 2021 21:00:23 +0800
Message-ID: <20210922130024.745-1-caihuoqing@baidu.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [172.31.63.8]
X-ClientProxiedBy: BJHW-Mail-Ex09.internal.baidu.com (10.127.64.32) To
 BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42)
X-Baidu-BdMsfe-DateCheck: 1_BJHW-Mail-Ex05_2021-09-22 21:00:31:487
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_060032_858655_410C272F 
X-CRM114-Status: GOOD (  10.23  )
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

The helper function devm_add_action_or_reset() will internally
call devm_add_action(), and gif devm_add_action() fails then it will
execute the action mentioned and return the error code. So
use devm_add_action_or_reset() instead of devm_add_action()
to simplify the error handling, reduce the code.

Signed-off-by: Cai Huoqing <caihuoqing@baidu.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 4f569d9307b9..1938365abbb3 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -321,7 +321,7 @@ rockchip_usb2phy_clk480m_register(struct rockchip_usb2phy *rphy)
 	struct device_node *node = rphy->dev->of_node;
 	struct clk_init_data init;
 	const char *clk_name;
-	int ret;
+	int ret = 0;
 
 	init.flags = 0;
 	init.name = "clk_usbphy_480m";
@@ -352,15 +352,8 @@ rockchip_usb2phy_clk480m_register(struct rockchip_usb2phy *rphy)
 	if (ret < 0)
 		goto err_clk_provider;
 
-	ret = devm_add_action(rphy->dev, rockchip_usb2phy_clk480m_unregister,
-			      rphy);
-	if (ret < 0)
-		goto err_unreg_action;
-
-	return 0;
+	return devm_add_action_or_reset(rphy->dev, rockchip_usb2phy_clk480m_unregister, rphy);
 
-err_unreg_action:
-	of_clk_del_provider(node);
 err_clk_provider:
 	clk_unregister(rphy->clk480m);
 err_ret:
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
