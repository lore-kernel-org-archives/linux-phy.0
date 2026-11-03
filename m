Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E15B06082286
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 10:42:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=vzdTrfPY
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=Tay0WxA2Pm88VGFN2NQN7Ss+Z56cNghs8QFJODusiIY=; b=vzdTrfPYw1lRUE3eVk4XdtM7LV
	KcOMiR2R2ypuaXuyskNA/4WmeqA+Hc8HobGd1gkBgon0+Be0MOkmj6S0aT2UCp7E12Cr7cSDOBSrJ
	8R6AJFW8fcVQ/hgqlBxAHUZ5J9ioaL5vGKzmIK6BhmvE6QEgkPYPgULR5RuiV1kdSyKd/YZqHNm2t
	+yeZyJgrra/fJ5lwXkvdd1rLjwu9qsZyhqr68n4CxoEkBiUf+KSD6JFDfsTzWEbrPcqZdK78iiRJC
	d+A6BgX5S1/CfUG6bjr5Xc13UNeGotzWJxsPIWZuPd+kUDci19NoZqk836BuJiEPdG5KNK/POkHnJ
	6lEscwyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOByS-000000023Fl-2ioB;
	Tue, 03 Nov 2026 10:42:40 +0000
Received: from smtp81.cstnet.cn ([159.226.251.81] helo=cstnet.cn)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOByP-000000023CW-14F6
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 10:42:38 +0000
Received: from dfae2b116770.home.arpa (unknown [36.110.52.2])
	by APP-03 (Coremail) with SMTP id rQCowAAHFpeXuulqpcg7AA--.2830S2;
	Tue, 03 Nov 2026 18:42:32 +0800 (CST)
From: Wentao Liang <vulab@iscas.ac.cn>
To: Justin Chen <justin.chen@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Wentao Liang <vulab@iscas.ac.cn>,
	stable@vger.kernel.org
Subject: [PATCH] phy: broadcom: use devm_clk_get() in brcm_usb_phy_dvr_init()
Date: Tue,  3 Nov 2026 10:42:40 +0000
Message-Id: <20261103104240.1373792-1-vulab@iscas.ac.cn>
X-Mailer: git-send-email 2.34.1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CM-TRANSID: rQCowAAHFpeXuulqpcg7AA--.2830S2
X-Coremail-Antispam: 1UD129KBjvJXoWxAF4DtFy5KF4rKr1Duw4fAFb_yoW5XFW5pa
	yxJFWYkr4DCFW7Ka12qw1DZF1Fyw1IgayYkry8t3WS93W3Z348J3W0gr1FvF4ayrWkCws5
	Jry7Ka4xJ3WDCFUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUBEb7Iv0xC_Kw4lb4IE77IF4wAFF20E14v26r4j6ryUM7CY07I2
	0VC2zVCF04k26cxKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rw
	A2F7IY1VAKz4vEj48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Ar0_tr1l84ACjcxK6xII
	jxv20xvEc7CjxVAFwI0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIE14v26rxl6s0DM28EF7xvwV
	C2z280aVCY1x0267AKxVW0oVCq3wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC
	0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWrXVW3AwAv7VC2z280aVAFwI0_Cr1j6r
	xdMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x0EwIxGrwACjI8F5VAI37AI020EjII2
	zVCS5cI20VAGYxC7M4IIrI8v6xkF7I0E8cxan2IY04v7MxkF7I0En4kS14v26r1q6r43Mx
	AIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_
	Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwI
	xGrwCI42IY6xIIjxv20xvE14v26ryj6F1UMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8Jr0_
	Cr1UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVW8Jr0_Cr1UMI
	IF0xvEx4A2jsIEc7CjxVAFwI0_Cr1j6rxdYxBIdaVFxhVjvjDU0xZFpf9x07bOAw3UUUUU
	=
X-CM-SenderInfo: pyxotu46lvutnvoduhdfq/1tbiCRIAA2rpnIB7pQAAsZ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_024237_667749_0F2DC19D 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -0.9 (/)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

brcm_usb_phy_dvr_init() obtains the USB 2.0, USB 3.0 and suspend
clocks with of_clk_get_by_name() and clk_get().  Both take a reference
on the clock that the driver never releases: the error paths after the
lookups return without clk_put(), and brcm_usb_phy_remove() only
unregisters the sysfs group and the PM notifier.  clk_prepare_enable()
and clk_disable_unprepare() only change the prepare/enable counts and
do not drop the reference.

Use devm_clk_get() so that the references are dropped automatically on
probe failure and driver detach, and drop the now unused device node
argument.

Fixes: 49859e55e364 ("phy: usb: phy-brcm-usb: Add Broadcom STB USB phy driver")
Cc: stable@vger.kernel.org
Assisted-by: DeepSeek-V4.1-Flash and OpenAI Codex
Signed-off-by: Wentao Liang <vulab@iscas.ac.cn>
---
 drivers/phy/broadcom/phy-brcm-usb.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index e606db489698..c0cb701e419a 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -401,14 +401,13 @@ static int brcm_usb_get_regs(struct platform_device *pdev,
 }
 
 static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
-				 struct brcm_usb_phy_data *priv,
-				 struct device_node *dn)
+				 struct brcm_usb_phy_data *priv)
 {
 	struct device *dev = &pdev->dev;
 	struct phy *gphy = NULL;
 	int err;
 
-	priv->usb_20_clk = of_clk_get_by_name(dn, "sw_usb");
+	priv->usb_20_clk = devm_clk_get(dev, "sw_usb");
 	if (IS_ERR(priv->usb_20_clk)) {
 		if (PTR_ERR(priv->usb_20_clk) == -EPROBE_DEFER)
 			return -EPROBE_DEFER;
@@ -440,7 +439,7 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 		priv->phys[BRCM_USB_PHY_3_0].id = BRCM_USB_PHY_3_0;
 		phy_set_drvdata(gphy, &priv->phys[BRCM_USB_PHY_3_0]);
 
-		priv->usb_30_clk = of_clk_get_by_name(dn, "sw_usb3");
+		priv->usb_30_clk = devm_clk_get(dev, "sw_usb3");
 		if (IS_ERR(priv->usb_30_clk)) {
 			if (PTR_ERR(priv->usb_30_clk) == -EPROBE_DEFER)
 				return -EPROBE_DEFER;
@@ -453,7 +452,7 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 			return err;
 	}
 
-	priv->suspend_clk = clk_get(dev, "usb0_freerun");
+	priv->suspend_clk = devm_clk_get(dev, "usb0_freerun");
 	if (IS_ERR(priv->suspend_clk)) {
 		if (PTR_ERR(priv->suspend_clk) == -EPROBE_DEFER)
 			return -EPROBE_DEFER;
@@ -542,7 +541,7 @@ static int brcm_usb_phy_probe(struct platform_device *pdev)
 			return -EINVAL;
 	}
 
-	err = brcm_usb_phy_dvr_init(pdev, priv, dn);
+	err = brcm_usb_phy_dvr_init(pdev, priv);
 	if (err)
 		return err;
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
