Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E56BC6FD1D
	for <linux-phy@archiver.kernel.org>; Thu, 23 Mar 2023 07:43:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Mime-Version:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=upvC7dZ6+XAuknWUL48gzKY3554ITwobhS8cmjbv5Qo=; b=tkh
	iMgROALdLqUepf1aEdO9Gsf47n2yDnoHwQChQxc5eHzb2MJQufvjCSG6LA47EeLVTaBnpV8i7/NhJ
	6nK0m7iCc2X3SFaHqCR0AbMU2KyFhysnOapd3vYpouyJe8s/DdHnMbVUacJx6z+wcr3bPo/XWPw1b
	2AVN1UaBXHcu80zBWlT+SNOx4opb3SkFEDoQrxbXacW7hPrUtdJket5uBsbVAF9p2I9J9U1ztp5mE
	OJ8IPjDX4Ce0BlqSz4CubJBNKch0nK6qMy9R7qOlVHyQBkry7N9LynZ9mMG7b0X4IXVRDl8hS6DY2
	IoOLKpzipNPTtuUymBIdVXP4u7/tcLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfFbs-0018MQ-0b;
	Thu, 23 Mar 2023 07:43:44 +0000
Received: from mxhk.zte.com.cn ([63.216.63.35])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfFbo-0018LJ-1K
	for linux-phy@lists.infradead.org;
	Thu, 23 Mar 2023 07:43:42 +0000
Received: from mse-fl2.zte.com.cn (unknown [10.5.228.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxhk.zte.com.cn (FangMail) with ESMTPS id 4Phy570GVKz4xVnD;
	Thu, 23 Mar 2023 15:43:39 +0800 (CST)
Received: from xaxapp03.zte.com.cn ([10.88.97.17])
	by mse-fl2.zte.com.cn with SMTP id 32N7hLEI082092;
	Thu, 23 Mar 2023 15:43:21 +0800 (+08)
	(envelope-from ye.xingchen@zte.com.cn)
Received: from mapi (xaxapp02[null])
	by mapi (Zmail) with MAPI id mid31;
	Thu, 23 Mar 2023 15:43:23 +0800 (CST)
Date: Thu, 23 Mar 2023 15:43:23 +0800 (CST)
X-Zmail-TransId: 2afa641c031b641-7e839
X-Mailer: Zmail v1.0
Message-ID: <202303231543235642161@zte.com.cn>
Mime-Version: 1.0
From: <ye.xingchen@zte.com.cn>
To: <vkoul@kernel.org>
Cc: <kishon@kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
Subject: =?UTF-8?B?W1BBVENIXSBwaHk6IGJjbTYzeHgtdXNiaDogVXNlIGRldl9lcnJfcHJvYmUoKQ==?=
X-MAIL: mse-fl2.zte.com.cn 32N7hLEI082092
X-Fangmail-Gw-Spam-Type: 0
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 641C032B.000/4Phy570GVKz4xVnD
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_004340_993127_33BF1B61 
X-CRM114-Status: UNSURE (   9.24  )
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

From: Ye Xingchen <ye.xingchen@zte.com.cn>

Replace the open-code with dev_err_probe() to simplify the code.

Signed-off-by: Ye Xingchen <ye.xingchen@zte.com.cn>
---
 drivers/phy/broadcom/phy-bcm63xx-usbh.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/broadcom/phy-bcm63xx-usbh.c b/drivers/phy/broadcom/phy-bcm63xx-usbh.c
index 6c05ba8b08be..16e23bef2498 100644
--- a/drivers/phy/broadcom/phy-bcm63xx-usbh.c
+++ b/drivers/phy/broadcom/phy-bcm63xx-usbh.c
@@ -396,11 +396,8 @@ static int __init bcm63xx_usbh_phy_probe(struct platform_device *pdev)
 		return PTR_ERR(usbh->base);

 	usbh->reset = devm_reset_control_get_exclusive(dev, NULL);
-	if (IS_ERR(usbh->reset)) {
-		if (PTR_ERR(usbh->reset) != -EPROBE_DEFER)
-			dev_err(dev, "failed to get reset\n");
-		return PTR_ERR(usbh->reset);
-	}
+	if (IS_ERR(usbh->reset))
+		return dev_err_probe(dev, PTR_ERR(usbh->reset), "failed to get reset\n");

 	usbh->usbh_clk = devm_clk_get_optional(dev, "usbh");
 	if (IS_ERR(usbh->usbh_clk))
-- 
2.25.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
