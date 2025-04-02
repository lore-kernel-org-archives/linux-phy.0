Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC61DC3ABD2
	for <linux-phy@archiver.kernel.org>; Mon, 12 May 2025 11:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Mime-Version:
	References:In-Reply-To:Message-ID:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8k/olf4qtRP/Rcbef1p6+J17JShIDPbjMVZh8kdxl20=; b=HBvGJOgrymnlPzphUvC+fwadsy
	zqW6uqt/LFIu6/Ugjvv7yTBNG2duLVRwg7M2EgybbfM06G/PquCp+EXxcQM/M1hbqTFfcaq+rgwSW
	2jkgzlEDcUuD3f0pfwcNtVysdnAK/hitxRIV7lJs4eNShNE/CZxdCEy5EPxdpMFZ22I9OuTa63D/+
	PCKMxjvQt0H9VhRjhoY1ZL1iCaTXHc7v1VGnDbXtirWt1sB0/olWvGdfe5uEkW4fIcmO4MD8x7GnK
	/6I0p/SWP057dzd0qC2Q8VJ4rfhr6YuZVuKtua4BFZCbEoS72ceKQwVbqOT6lUDXFMY6pue75+8ww
	qZzS9btA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uER9e-00000009E7i-27fj;
	Mon, 12 May 2025 11:17:06 +0000
Received: from mxhk.zte.com.cn ([63.216.63.40])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzwVD-00000005wxO-1aKG;
	Wed, 02 Apr 2025 11:43:28 +0000
Received: from mse-fl1.zte.com.cn (unknown [10.5.228.132])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxhk.zte.com.cn (FangMail) with ESMTPS id 4ZSNKh4Gvnz8R044;
	Wed,  2 Apr 2025 19:43:20 +0800 (CST)
Received: from xaxapp02.zte.com.cn ([10.88.97.241])
	by mse-fl1.zte.com.cn with SMTP id 532Bh1AM068443;
	Wed, 2 Apr 2025 19:43:01 +0800 (+08)
	(envelope-from shao.mingyin@zte.com.cn)
Received: from mapi (xaxapp04[null])
	by mapi (Zmail) with MAPI id mid32;
	Wed, 2 Apr 2025 19:43:03 +0800 (CST)
Date: Wed, 2 Apr 2025 19:43:03 +0800 (CST)
X-Zmail-TransId: 2afb67ed22c75b0-20ea5
X-Mailer: Zmail v1.0
Message-ID: <20250402194303339EE86jtSNtWFpLPkS6WiQh@zte.com.cn>
In-Reply-To: <20250402194100610qY6KQ4JPISk-4v214Qs36@zte.com.cn>
References: 20250402194100610qY6KQ4JPISk-4v214Qs36@zte.com.cn
Mime-Version: 1.0
From: <shao.mingyin@zte.com.cn>
To: <vkoul@kernel.org>, <robert.marko@sartura.hr>
Cc: <kishon@kernel.org>, <wens@csie.org>, <jernej.skrabec@gmail.com>,
        <samuel@sholland.org>, <zhang.enpei@zte.com.cn>,
        <linux-phy@lists.infradead.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-sunxi@lists.linux.dev>,
        <linux-kernel@vger.kernel.org>, <luka.perkov@sartura.hr>,
        <linux-arm-msm@vger.kernel.org>, <heiko@sntech.de>,
        <linux-rockchip@lists.infradead.org>, <yang.yang29@zte.com.cn>,
        <xu.xin16@zte.com.cn>, <ye.xingchen@zte.com.cn>
Subject: =?UTF-8?B?W1BBVENIIGxpbnV4LW5leHQgMi81XSBwaHk6IGJyb2FkY29tOiBwaHktYmNtNjN4eC11c2JoOiBVc2XCoGRldl9lcnJfcHJvYmUoKQ==?=
X-MAIL: mse-fl1.zte.com.cn 532Bh1AM068443
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 67ED22D8.003/4ZSNKh4Gvnz8R044
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_044327_594821_1A3EB66A 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Mon, 12 May 2025 03:59:00 -0700
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
