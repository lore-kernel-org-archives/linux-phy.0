Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A677FC6FD20
	for <linux-phy@archiver.kernel.org>; Wed, 22 Mar 2023 02:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Mime-Version:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=lD8NU4NAfNck5U5gl4g4iboqGhffzTydCq1UARHCOiI=; b=4hK
	0XxDI7ZdX37ieYqXCjgrdGdLoSg4wt7oJ8GZ17RnZMeYeUx7TuSzBgOoKroQb4Gyucfm8zit/JlIx
	adfWR9dd82cWz8GKvfXeflhjgR2eohiQn4A3sDwGP3dGlklOyqmVlh6Kw7BfF+M5MiZGc2Y5dmFEc
	f9HSBWGTsgqvYZsDQI6Gy7TQasNzWy+3g3699SqODvgadxZaUZoakSW5p8cJt6vbv8FtIx7iUsTQG
	yO/fbuSiapwoGy0UGBwofB/4khxpkdk+NTSFpZaszbtmNq2NYAXdOwsYzE1q+f/XMYmegr0fEhqAU
	tddOwnNBDra6q03iI8+3aIuNQqq5ojg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peobs-00ENcf-0H;
	Wed, 22 Mar 2023 02:53:56 +0000
Received: from mxhk.zte.com.cn ([63.216.63.40])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peobg-00ENb4-2b
	for linux-phy@lists.infradead.org;
	Wed, 22 Mar 2023 02:53:52 +0000
Received: from mse-fl1.zte.com.cn (unknown [10.5.228.132])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxhk.zte.com.cn (FangMail) with ESMTPS id 4PhCj01Pqwz8QrkZ;
	Wed, 22 Mar 2023 10:53:40 +0800 (CST)
Received: from xaxapp03.zte.com.cn ([10.88.97.17])
	by mse-fl1.zte.com.cn with SMTP id 32M2rU6v070870;
	Wed, 22 Mar 2023 10:53:30 +0800 (+08)
	(envelope-from ye.xingchen@zte.com.cn)
Received: from mapi (xaxapp02[null])
	by mapi (Zmail) with MAPI id mid31;
	Wed, 22 Mar 2023 10:53:32 +0800 (CST)
Date: Wed, 22 Mar 2023 10:53:32 +0800 (CST)
X-Zmail-TransId: 2afa641a6dacffffffffb99-65b9d
X-Mailer: Zmail v1.0
Message-ID: <202303221053321808222@zte.com.cn>
Mime-Version: 1.0
From: <ye.xingchen@zte.com.cn>
To: <vkoul@kernel.org>
Cc: <vincent.sunplus@gmail.com>, <kishon@kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
Subject: =?UTF-8?B?W1BBVENIXSBwaHk6IHVzYjogc3VucGx1czogdXNlwqBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVzb3VyY2VfYnluYW1lKCk=?=
X-MAIL: mse-fl1.zte.com.cn 32M2rU6v070870
X-Fangmail-Gw-Spam-Type: 0
X-FangMail-Miltered: at cgslv5.04-192.168.250.137.novalocal with ID 641A6DB4.000 by FangMail milter!
X-FangMail-Envelope: 1679453620/4PhCj01Pqwz8QrkZ/641A6DB4.000/10.5.228.132/[10.5.228.132]/mse-fl1.zte.com.cn/<ye.xingchen@zte.com.cn>
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 641A6DB4.000/4PhCj01Pqwz8QrkZ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_195351_732335_38E0D7D5 
X-CRM114-Status: UNSURE (   9.12  )
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

Convert platform_get_resource_byname(),devm_ioremap_resource() to a single
call to devm_platform_ioremap_resource_byname(), as this is exactly what
this function does.

Signed-off-by: Ye Xingchen <ye.xingchen@zte.com.cn>
---
 drivers/phy/sunplus/phy-sunplus-usb2.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/phy/sunplus/phy-sunplus-usb2.c b/drivers/phy/sunplus/phy-sunplus-usb2.c
index 56de41091d63..a5d6a33b821e 100644
--- a/drivers/phy/sunplus/phy-sunplus-usb2.c
+++ b/drivers/phy/sunplus/phy-sunplus-usb2.c
@@ -248,8 +248,7 @@ static int sp_usb_phy_probe(struct platform_device *pdev)

 	usbphy->dev = &pdev->dev;

-	usbphy->phy_res_mem = platform_get_resource_byname(pdev, IORESOURCE_MEM, "phy");
-	usbphy->phy_regs = devm_ioremap_resource(&pdev->dev, usbphy->phy_res_mem);
+	usbphy->phy_regs = devm_platform_ioremap_resource_byname(pdev, "phy");
 	if (IS_ERR(usbphy->phy_regs))
 		return PTR_ERR(usbphy->phy_regs);

-- 
2.25.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
