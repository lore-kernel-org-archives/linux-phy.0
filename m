Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C340C982CF
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 13:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ayavmq5E8KEspHkxa2BnXFlagagiObEaBIR2nSG5bqI=; b=GbG7c+7H4Fmvzp
	H9rUGmH4kHOAcBGvcOmv7h5BFopi2HrzxG0uJBN8AlA7HuAiQ7nNLOCfrWLykDepO4fZGkD96/KE4
	d/hcY8UqdqrK41WulrFlmELRLaovEu5ByfCJnDyAzfQISv2d3gK6kebuYZ1nQqK9OrcM6fdT9iIs8
	7MQ4BqCkLHjTepeyEWPgJMf7oWKQuk+3yK05yQbhiOfwAfegIUXb+jpE0/WAaQkbdL42AZipTTy9V
	t6EUxM1+brkLaw7XBzFFSDbaATsNuQAsUUg/dmnaXB3DNd9HUETKD7YEtVWFgKSD3sa2W7hQEXS0Q
	X+WJw1u2w6qGSH1kNMgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7CIN-0000000BPe9-0jiz;
	Thu, 17 Sep 2026 13:36:59 +0000
Received: from smtp25.cstnet.cn ([159.226.251.25] helo=cstnet.cn)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7CIL-0000000BPdn-0vfG
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 13:36:58 +0000
Received: from dfae2b116770.home.arpa (unknown [36.110.52.2])
	by APP-05 (Coremail) with SMTP id zQCowACXAj3z7KtqxZmBCA--.3798S2;
	Thu, 17 Sep 2026 21:36:51 +0800 (CST)
From: Wentao Liang <vulab@iscas.ac.cn>
To: alcooperx@gmail.com
Cc: bcm-kernel-feedback-list@broadcom.com,
	justin.chen@broadcom.com,
	kishon@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	neil.armstrong@linaro.org,
	vkoul@kernel.org,
	Wentao Liang <vulab@iscas.ac.cn>,
	stable@vger.kernel.org
Subject: [PATCH] phy: usb: Fix USB 3.0 clock reference leak in brcm_usb_phy_dvr_init()
Date: Thu, 17 Sep 2026 13:36:51 +0000
Message-Id: <20260917133651.2153617-1-vulab@iscas.ac.cn>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: zQCowACXAj3z7KtqxZmBCA--.3798S2
X-Coremail-Antispam: 1UD129KBjvJXoW7KFW3XF17uFyxCFy3GFW7urg_yoW8XFyxpa
	nrKF4jyrn7C3y0kw4rXw1UZF1Yyw1IkasxKrW8Kw1F93W3Z347Z3WFvr1Svr1UCrW8Wws5
	JrZ3Aas7GF1DCrJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUPqb7Iv0xC_Kw4lb4IE77IF4wAFc2x0x2IEx4CE42xK8VAvwI8I
	cIk0rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2
	AK021l84ACjcxK6xIIjxv20xvE14v26ryj6F1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v2
	6F4j6r4UJwA2z4x0Y4vEx4A2jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x0267AKxV
	W0oVCq3wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv
	7VC0I7IYx2IY67AKxVWUtVWrXwAv7VC2z280aVAFwI0_Cr1j6rxdMcvjeVCFs4IE7xkEbV
	WUJVW8JwACjcxG0xvY0x0EwIxGrwACjI8F5VAI37AI020EjII2zVCS5cI20VAGYxC7M4II
	rI8v6xkF7I0E8cxan2IY04v7MxkF7I0En4kS14v26r1q6r43MxAIw28IcxkI7VAKI48JMx
	AIw28IcVCjz48v1sIEY20_Gr43Wr1UJr1l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAq
	x4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r
	43MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_JFI_Gr1lIxAIcVC0I7IYx2IY6xkF
	7I0E14v26F4j6r4UJwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI
	0_Gr1j6F4UJwCI42IY6I8E87Iv6xkF7I0E14v26rxl6s0DYxBIdaVFxhVjvjDU0xZFpf9x
	07bbXocUUUUU=
X-Originating-IP: [36.110.52.2]
X-CM-SenderInfo: pyxotu46lvutnvoduhdfq/1tbiBgENA2qrq3bL7AABsz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_063657_618827_38DD207F 
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

brcm_usb_phy_dvr_init() obtains usb_30_clk with of_clk_get_by_name(),
which takes a reference on the clock, but returns without calling
clk_put() when clk_prepare_enable() fails, when the suspend clock
request is deferred, or when devm_request_irq() fails.  The clock is
only handed to the driver on the success path, so nothing releases the
reference on these paths.

Drop it from the err_put_clks label, and clear usb_30_clk on the
-EPROBE_DEFER path where it holds an error pointer rather than a
reference.

Fixes: 49859e55e364 ("phy: usb: phy-brcm-usb: Add Broadcom STB USB phy driver")
Cc: stable@vger.kernel.org
Signed-off-by: Wentao Liang <vulab@iscas.ac.cn>
---
 drivers/phy/broadcom/phy-brcm-usb.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index 8ef8aa025789..d411512b1036 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -443,6 +443,7 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 		priv->usb_30_clk = of_clk_get_by_name(dn, "sw_usb3");
 		if (IS_ERR(priv->usb_30_clk)) {
 			if (PTR_ERR(priv->usb_30_clk) == -EPROBE_DEFER) {
+				priv->usb_30_clk = NULL;
 				err = -EPROBE_DEFER;
 				goto err_put_clks;
 			}
@@ -483,6 +484,7 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 	return 0;
 
 err_put_clks:
+	clk_put(priv->usb_30_clk);
 	clk_put(priv->usb_20_clk);
 	return err;
 }
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
