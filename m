Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 994EBD11708
	for <linux-phy@archiver.kernel.org>; Fri, 25 Oct 2024 06:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+EU/pE/3b56dKJcUPPBp0T0aJ/+awOnVWzZwcWzWR+g=; b=d/8jPOqxb4VVGl
	rK8IOvCi8uT4hirvs78wMOngwpLgqQXbnKmstNxob61uR+xSv2m37/ZINktJV6x05qPpMtYhq/3U3
	J83UjVbxHVjAeAdY0uYbovseyVOPfqPXg5T0FKynKA8nGG/DsgXor+5gdPFbWJ9I/980+u4V5L2AP
	RjFZoE9KT//RINnPHKf5Oibni/SYsFrJn16RgzMPEunXH+hWr1uZy+ZKW+r9TXfzHRUXXD4XvVbOc
	RFknP3VknxR63LWN5E/AqpWqC3aK0IElM5P3yjnE3Smhm+93J/R53fvSoDKUYdxfK/5auIWu2pbqd
	6SnCIt6kPxywIxwvS6ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4EIP-00000002kR7-1EbV;
	Fri, 25 Oct 2024 06:59:41 +0000
Received: from unicom145.biz-email.net ([210.51.26.145])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4EIM-00000002kPS-01ZO
	for linux-phy@lists.infradead.org;
	Fri, 25 Oct 2024 06:59:40 +0000
Received: from unicom145.biz-email.net
        by unicom145.biz-email.net ((D)) with ASMTP (SSL) id VGG00015;
        Fri, 25 Oct 2024 14:59:15 +0800
Received: from jtjnmail201607.home.langchao.com (10.100.2.7) by
 jtjnmail201623.home.langchao.com (10.100.2.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 25 Oct 2024 14:59:15 +0800
Received: from localhost.localdomain (10.94.19.204) by
 jtjnmail201607.home.langchao.com (10.100.2.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 25 Oct 2024 14:59:14 +0800
From: Charles Han <hanchunchao@inspur.com>
To: <stanley_chang@realtek.com>, <vkoul@kernel.org>, <kishon@kernel.org>,
	<gregkh@linuxfoundation.org>
CC: <u.kleine-koenig@baylibre.com>, <linux-phy@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Charles Han <hanchunchao@inspur.com>
Subject: [PATCH] phy: realtek: usb: fix NULL deref in rtk_usb2phy_probe
Date: Fri, 25 Oct 2024 14:59:12 +0800
Message-ID: <20241025065912.143692-1-hanchunchao@inspur.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Originating-IP: [10.94.19.204]
X-ClientProxiedBy: Jtjnmail201614.home.langchao.com (10.100.2.14) To
 jtjnmail201607.home.langchao.com (10.100.2.7)
tUid: 20241025145915850c3bc1032dc40d09b9ab1aae06b497
X-Abuse-Reports-To: service@corp-email.com
Abuse-Reports-To: service@corp-email.com
X-Complaints-To: service@corp-email.com
X-Report-Abuse-To: service@corp-email.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_235938_363296_784A86F5 
X-CRM114-Status: UNSURE (   7.13  )
X-CRM114-Notice: Please train this message.
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

In rtk_usb2phy_probe() devm_kzalloc() may return NULL
but this returned value is not checked.

Fixes: 134e6d25f6bd ("phy: realtek: usb: Add driver for the Realtek SoC USB 2.0 PHY")
Signed-off-by: Charles Han <hanchunchao@inspur.com>
---
 drivers/phy/realtek/phy-rtk-usb2.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
index c3e131a64131..248550ef98ca 100644
--- a/drivers/phy/realtek/phy-rtk-usb2.c
+++ b/drivers/phy/realtek/phy-rtk-usb2.c
@@ -1023,6 +1023,8 @@ static int rtk_usb2phy_probe(struct platform_device *pdev)
 
 	rtk_phy->dev			= &pdev->dev;
 	rtk_phy->phy_cfg = devm_kzalloc(dev, sizeof(*phy_cfg), GFP_KERNEL);
+	if (!rtk_phy->phy_cfg)
+		return -ENOMEM;
 
 	memcpy(rtk_phy->phy_cfg, phy_cfg, sizeof(*phy_cfg));
 
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
