Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19A5EC982D1
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 13:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w03S0yJrJWFCGXKp0cAA0TEcB0jYgpBJWTnHqK+CjWg=; b=FTlgb29r/GM4Zl
	nHN4U7nTpmtaIUgVvliMCTBA8XNi2ur2DeRfz6LS1VQl3an1YvhuFKKcIg6PyM9lvuYwLtufURqak
	FlHI427bje84LNdqsIie5FHtPpHDR+Sn0hUMfZU4pLZIxF8EgsDWR2NAkp2FumDsLGJdeCB9vX1Je
	CYXLdChu/mFPswFog7V5+sQMiL5QOhWEfHBuranPTcTEzflvWy1gc1YuxbaTs7AbAjZmF9JugKwBx
	XUrWiL+uAkQ06TgOk8zDa5oLX5qpXqLqa/NEoX4Cgm6fS+CsKsBNLQMPOE/SM/l7OBmsXoDXjLxYi
	YqLHXpu8W3luv9Bbrl4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7CGk-0000000BPPA-2wI1;
	Thu, 17 Sep 2026 13:35:18 +0000
Received: from smtp25.cstnet.cn ([159.226.251.25] helo=cstnet.cn)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7CGh-0000000BPO3-3utW
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 13:35:17 +0000
Received: from dfae2b116770.home.arpa (unknown [36.110.52.2])
	by APP-05 (Coremail) with SMTP id zQCowADnVD+O7KtqlpKBCA--.3872S2;
	Thu, 17 Sep 2026 21:35:10 +0800 (CST)
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
Subject: [PATCH] phy: usb: Fix USB 2.0 clock reference leak in brcm_usb_phy_dvr_init()
Date: Thu, 17 Sep 2026 13:35:10 +0000
Message-Id: <20260917133510.2153560-1-vulab@iscas.ac.cn>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: zQCowADnVD+O7KtqlpKBCA--.3872S2
X-Coremail-Antispam: 1UD129KBjvJXoWxurWxXw4kJryxKrWrZr1DKFg_yoW5uF43pa
	yxKF4Fqr1DArZ7Kw43Gr1DZ3WFyw1xKa1UK34xGa4093Wavw1DA3W09r1SvF4Fk3ykuws8
	JrWUCa4UCa4Uur7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUPqb7Iv0xC_Kw4lb4IE77IF4wAFc2x0x2IEx4CE42xK8VAvwI8I
	cIk0rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2
	AK021l84ACjcxK6xIIjxv20xvE14v26ryj6F1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v2
	6F4j6r4UJwA2z4x0Y4vEx4A2jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x0267AKxV
	W0oVCq3wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv
	7VC0I7IYx2IY67AKxVWUAVWUtwAv7VC2z280aVAFwI0_Cr1j6rxdMcvjeVCFs4IE7xkEbV
	WUJVW8JwACjcxG0xvY0x0EwIxGrwACjI8F5VAI37AI020EjII2zVCS5cI20VAGYxC7M4II
	rI8v6xkF7I0E8cxan2IY04v7MxkF7I0En4kS14v26r1q6r43MxAIw28IcxkI7VAKI48JMx
	AIw28IcVCjz48v1sIEY20_Gr43Wr1UJr1l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAq
	x4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r
	43MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_JFI_Gr1lIxAIcVC0I7IYx2IY6xkF
	7I0E14v26F4j6r4UJwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI
	0_Gr1j6F4UJwCI42IY6I8E87Iv6xkF7I0E14v26rxl6s0DYxBIdaVFxhVjvjDU0xZFpf9x
	07bb5rxUUUUU=
X-Originating-IP: [36.110.52.2]
X-CM-SenderInfo: pyxotu46lvutnvoduhdfq/1tbiBwMNA2qrrRnBMQAAsP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_063516_346780_D5FF1F90 
X-CRM114-Status: GOOD (  11.85  )
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

brcm_usb_phy_dvr_init() obtains usb_20_clk with of_clk_get_by_name(),
which takes a reference on the clock, but several later error returns
-- a failed clk_prepare_enable(), a failed devm_phy_create(), the
-EPROBE_DEFER paths of usb_30_clk and suspend_clk, and a failed
devm_request_irq() -- return without calling clk_put().  No other code
in the driver releases it either.

Add an err_put_clks label that drops the reference before returning.

Fixes: 49859e55e364 ("phy: usb: phy-brcm-usb: Add Broadcom STB USB phy driver")
Cc: stable@vger.kernel.org
Signed-off-by: Wentao Liang <vulab@iscas.ac.cn>
---
 drivers/phy/broadcom/phy-brcm-usb.c | 28 +++++++++++++++++++---------
 1 file changed, 19 insertions(+), 9 deletions(-)

diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index 59d756a10d6c..8ef8aa025789 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -415,13 +415,14 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 	}
 	err = clk_prepare_enable(priv->usb_20_clk);
 	if (err)
-		return err;
+		goto err_put_clks;
 
 	if (priv->has_eohci) {
 		gphy = devm_phy_create(dev, NULL, &brcm_usb_phy_ops);
 		if (IS_ERR(gphy)) {
 			dev_err(dev, "failed to create EHCI/OHCI PHY\n");
-			return PTR_ERR(gphy);
+			err = PTR_ERR(gphy);
+			goto err_put_clks;
 		}
 		priv->phys[BRCM_USB_PHY_2_0].phy = gphy;
 		priv->phys[BRCM_USB_PHY_2_0].id = BRCM_USB_PHY_2_0;
@@ -432,7 +433,8 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 		gphy = devm_phy_create(dev, NULL, &brcm_usb_phy_ops);
 		if (IS_ERR(gphy)) {
 			dev_err(dev, "failed to create XHCI PHY\n");
-			return PTR_ERR(gphy);
+			err = PTR_ERR(gphy);
+			goto err_put_clks;
 		}
 		priv->phys[BRCM_USB_PHY_3_0].phy = gphy;
 		priv->phys[BRCM_USB_PHY_3_0].id = BRCM_USB_PHY_3_0;
@@ -440,21 +442,25 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 
 		priv->usb_30_clk = of_clk_get_by_name(dn, "sw_usb3");
 		if (IS_ERR(priv->usb_30_clk)) {
-			if (PTR_ERR(priv->usb_30_clk) == -EPROBE_DEFER)
-				return -EPROBE_DEFER;
+			if (PTR_ERR(priv->usb_30_clk) == -EPROBE_DEFER) {
+				err = -EPROBE_DEFER;
+				goto err_put_clks;
+			}
 			dev_info(dev,
 				 "USB3.0 clock not found in Device Tree\n");
 			priv->usb_30_clk = NULL;
 		}
 		err = clk_prepare_enable(priv->usb_30_clk);
 		if (err)
-			return err;
+			goto err_put_clks;
 	}
 
 	priv->suspend_clk = clk_get(dev, "usb0_freerun");
 	if (IS_ERR(priv->suspend_clk)) {
-		if (PTR_ERR(priv->suspend_clk) == -EPROBE_DEFER)
-			return -EPROBE_DEFER;
+		if (PTR_ERR(priv->suspend_clk) == -EPROBE_DEFER) {
+			err = -EPROBE_DEFER;
+			goto err_put_clks;
+		}
 		dev_err(dev, "Suspend Clock not found in Device Tree\n");
 		priv->suspend_clk = NULL;
 	}
@@ -467,7 +473,7 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 				       brcm_usb_phy_wake_isr, 0,
 				       dev_name(dev), dev);
 		if (err < 0)
-			return err;
+			goto err_put_clks;
 		device_set_wakeup_capable(dev, 1);
 	} else {
 		dev_info(dev,
@@ -475,6 +481,10 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 	}
 
 	return 0;
+
+err_put_clks:
+	clk_put(priv->usb_20_clk);
+	return err;
 }
 
 static int brcm_usb_phy_probe(struct platform_device *pdev)
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
