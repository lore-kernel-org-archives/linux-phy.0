Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E151CC36013
	for <linux-phy@archiver.kernel.org>; Fri, 28 Mar 2025 09:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Mime-Version:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8k/olf4qtRP/Rcbef1p6+J17JShIDPbjMVZh8kdxl20=; b=G7t
	Jen/gbF4Ghsn5FNDl0RQ0UXFH26QjxCooxwDcFm4ZKfPgxuDXDQ7HxWpmGnIxCXzjByb0TGgFddok
	RPP5n+oMfJzUDgCo4GtJw2oFZ2s4EJMhdZ5sKqXWBEqn2501pkn7b1Ds+N9bO2nqOa168+fi/kzoI
	g0uIhNucsD6ZhEJgKUKHk3hQwMm1pxDdmexFAcVpK+r3FA97H80OI4AUe+cENA4VZvMXhxdl6iF3/
	nrG3KdV9d3qO5WMwCd03l7SjYy4ZtYTDwtnzc8BfeA3GqD7k4r16y2ISvqpMA8XhM9uJLsrLQtrUx
	xqh5wdiDZGJzsqrdbfsOJRpoW3gPHjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty5ds-0000000CzcY-2MEm;
	Fri, 28 Mar 2025 09:04:44 +0000
Received: from mxhk.zte.com.cn ([63.216.63.40])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty5dI-0000000CzWX-1owh
	for linux-phy@lists.infradead.org;
	Fri, 28 Mar 2025 09:04:09 +0000
Received: from mse-fl2.zte.com.cn (unknown [10.5.228.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxhk.zte.com.cn (FangMail) with ESMTPS id 4ZPF2C57y8z8RV7M;
	Fri, 28 Mar 2025 17:04:03 +0800 (CST)
Received: from xaxapp05.zte.com.cn ([10.99.98.109])
	by mse-fl2.zte.com.cn with SMTP id 52S93oNj005838;
	Fri, 28 Mar 2025 17:03:50 +0800 (+08)
	(envelope-from shao.mingyin@zte.com.cn)
Received: from mapi (xaxapp02[null])
	by mapi (Zmail) with MAPI id mid32;
	Fri, 28 Mar 2025 17:03:52 +0800 (CST)
Date: Fri, 28 Mar 2025 17:03:52 +0800 (CST)
X-Zmail-TransId: 2afa67e665f8ffffffffd47-c09a8
X-Mailer: Zmail v1.0
Message-ID: <20250328170352642YrhVMCjGoyA6Y4yYNH-jg@zte.com.cn>
Mime-Version: 1.0
From: <shao.mingyin@zte.com.cn>
To: <vkoul@kernel.org>
Cc: <kishon@kernel.org>, <zhang.enpei@zte.com.cn>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <yang.yang29@zte.com.cn>, <xu.xin16@zte.com.cn>,
        <ye.xingchen@zte.com.cn>
Subject: =?UTF-8?B?W1BBVENIXSBwaHkvYnJvYWRjb206IHBoeS1iY202M3h4LXVzYmg6IFVzZSBkZXZfZXJyX3Byb2JlKCk=?=
X-MAIL: mse-fl2.zte.com.cn 52S93oNj005838
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 67E66603.004/4ZPF2C57y8z8RV7M
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250328_020408_625271_46A75242 
X-CRM114-Status: UNSURE (   9.05  )
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

From: Zhang Enpei <zhang.enpei@zte.com.cn>

Replace the open-code with dev_err_probe() to simplify the code.

Signed-off-by: Zhang Enpei <zhang.enpei@zte.com.cn>
Signed-off-by: Shao Mingyin <shao.mingyin@zte.com.cn>
---
 drivers/phy/broadcom/phy-bcm63xx-usbh.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/broadcom/phy-bcm63xx-usbh.c b/drivers/phy/broadcom/phy-bcm63xx-usbh.c
index 647644de041b..b9e7f750567c 100644
--- a/drivers/phy/broadcom/phy-bcm63xx-usbh.c
+++ b/drivers/phy/broadcom/phy-bcm63xx-usbh.c
@@ -397,11 +397,9 @@ static int __init bcm63xx_usbh_phy_probe(struct platform_device *pdev)
 		return PTR_ERR(usbh->base);

 	usbh->reset = devm_reset_control_get_exclusive(dev, NULL);
-	if (IS_ERR(usbh->reset)) {
-		if (PTR_ERR(usbh->reset) != -EPROBE_DEFER)
-			dev_err(dev, "failed to get reset\n");
-		return PTR_ERR(usbh->reset);
-	}
+	if (IS_ERR(usbh->reset))
+		return dev_err_probe(dev, PTR_ERR(usbh->reset),
+				     "failed to get reset\n");

 	usbh->usbh_clk = devm_clk_get_optional(dev, "usbh");
 	if (IS_ERR(usbh->usbh_clk))
-- 
2.25.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
