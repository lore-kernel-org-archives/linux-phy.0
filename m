Return-Path: <SRS0=PcV7=KP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D58ABC43460
	for <linux-phy@archiver.kernel.org>; Thu, 20 May 2021 13:52:07 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7F2B961057
	for <linux-phy@archiver.kernel.org>; Thu, 20 May 2021 13:52:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7F2B961057
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EcbTjfBkzh9syAkxf9LW5jAIng7lCe6hfK2ac2/8/Kw=; b=EMfsX5Rer78077Ie/UVLdaIAQP
	nA7/leFuzmaqa7sgXDTV75WCgeS1N4bkxDvVkYL7ngxzbcgVckzZXNMQX6/9s3oz5No8lLzbrsc+A
	HlsUCzLN9cbUJINtdBCR4pmSSIfsTRBFMwFHizRocmCZYVMS6TJCyLs+yOVQKMISke+lR/PdZBjoQ
	u4p3JBlq8bXXeEatbPOfw/nn1KPdg5PMZ2FOH4xIpsTzN20ubcEsma0ba0ruDIwjPrFPqmREB4lJh
	jKFQ7CdvMFQrOr7RPEb6frz62ZoOY1VPZSdEQYzYTI0KhbME+gRLK0CU4XVf86iuiGdZjkMhXkKTv
	+DGQsUaw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ljj5p-001I8o-Rk; Thu, 20 May 2021 13:52:05 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ljj5l-001I8A-Kr
 for linux-phy@desiato.infradead.org; Thu, 20 May 2021 13:52:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:MIME-Version:Message-ID:
 Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=xlN3GWFfkJWEzf4YtU9O9h269bWWhABA4YjY9d163xo=; b=u87t1qq+I9lpZVpf7EWXaTNT5h
 qMcxFKs/mOx6uanjp/vdbdGTwASR7KgEW0XZw0SPfv1GiCIyQll7ZnNOuV7R19Z6N7HH2IpKCvRxs
 OPpw86XWbdZPEnDRrxozohZkmW0tPI39LfEkBdlhs5N94rLdAdB809v3uQBCAuGvlW7dD6jSfmkpu
 yNeTV/JHexgdPTbKu4rjAGXDWW3zoe7UCYvbWoPx7vlzFG2bL+AT0ujrM8V/K3mfXovAeMaKWVivd
 SVMGt1cBtNnpVxpD1GN72fiYGB33WQXtWuTqXTKYuq+7pss3yQZIBx/Ks2kiew3oAOwssLM9i0gr7
 iKFvGV1Q==;
Received: from szxga04-in.huawei.com ([45.249.212.190])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljj5i-00GO8L-Op
 for linux-phy@lists.infradead.org; Thu, 20 May 2021 13:52:00 +0000
Received: from dggems702-chm.china.huawei.com (unknown [172.30.72.60])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4FmB011ZLFzqTdb;
 Thu, 20 May 2021 21:48:17 +0800 (CST)
Received: from dggema769-chm.china.huawei.com (10.1.198.211) by
 dggems702-chm.china.huawei.com (10.3.19.179) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.1.2176.2; Thu, 20 May 2021 21:51:48 +0800
Received: from localhost (10.174.179.215) by dggema769-chm.china.huawei.com
 (10.1.198.211) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 20
 May 2021 21:51:47 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <kishon@ti.com>, <vkoul@kernel.org>, <yuehaibing@huawei.com>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH -next] phy: phy-twl4030-usb: use DEVICE_ATTR_RO macro
Date: Thu, 20 May 2021 21:51:32 +0800
Message-ID: <20210520135132.37628-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.174.179.215]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 dggema769-chm.china.huawei.com (10.1.198.211)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210520_065158_984683_B35CBAD7 
X-CRM114-Status: UNSURE (   9.17  )
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

Use DEVICE_ATTR_RO helper instead of plain DEVICE_ATTR,
which makes the code a bit shorter and easier to read.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/phy/ti/phy-twl4030-usb.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/ti/phy-twl4030-usb.c b/drivers/phy/ti/phy-twl4030-usb.c
index 812e5409d359..5771e2486a3b 100644
--- a/drivers/phy/ti/phy-twl4030-usb.c
+++ b/drivers/phy/ti/phy-twl4030-usb.c
@@ -544,8 +544,8 @@ static int twl4030_usb_ldo_init(struct twl4030_usb *twl)
 	return 0;
 }
 
-static ssize_t twl4030_usb_vbus_show(struct device *dev,
-		struct device_attribute *attr, char *buf)
+static ssize_t vbus_show(struct device *dev,
+			 struct device_attribute *attr, char *buf)
 {
 	struct twl4030_usb *twl = dev_get_drvdata(dev);
 	int ret = -EINVAL;
@@ -557,7 +557,7 @@ static ssize_t twl4030_usb_vbus_show(struct device *dev,
 
 	return ret;
 }
-static DEVICE_ATTR(vbus, 0444, twl4030_usb_vbus_show, NULL);
+static DEVICE_ATTR_RO(vbus);
 
 static irqreturn_t twl4030_usb_irq(int irq, void *_twl)
 {
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
