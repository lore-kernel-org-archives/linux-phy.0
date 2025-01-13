Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53D06E7719E
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jan 2025 07:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Subject:Cc:To:From:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IRCOTt+qpNZuNJ7XIXnHnnf9rNN42jUVfDorbOcHZ3Q=; b=fSdqlLMXI0hRB7
	sl9LpR9JUi0uqEuRa9AuDbnJy6dxFwgRuNcsTB1zQC+kF1tsEiwX+x0eiCiLXrGcd/A/fwn5l+QRN
	HGYpbBs1FREs75/W3Uar2DiV8NRuz5QMDQP86zU0WEoxNFR+1+rpSCanHvhQ7eN8g6fkNlceXtfkb
	XAg8CwgIkjOnMJ3laJEX/fUphMV2xBBHQCL+TUvmQRgZdE8l+gWFfkDxV2mTcaXvYMwEHRxQgN87v
	nU8pHPLXZfdAwgHU2KqUSt66zb4taqnDMSsTHCqd6csrWQI3Mgc/jr+AKYU1sRjO3PjWYw9t78eKG
	pgRvJWS6pZO31D5DULTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXEZS-00000004CRf-0QMy;
	Mon, 13 Jan 2025 07:09:10 +0000
Received: from out162-62-57-137.mail.qq.com ([162.62.57.137])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXEZN-00000004CPU-302Q
	for linux-phy@lists.infradead.org;
	Mon, 13 Jan 2025 07:09:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
	s=s201512; t=1736752138;
	bh=k3QRSjcnKk6Udfjid7rHbFoa3RL2T6VjHRZLWm2/r3w=;
	h=From:To:Cc:Subject:Date;
	b=K6wIvR8WZuxU8UEHKHMaJVlCLNblBlfl4ieGo1ZVPj0ndjuZep6GyRIg0dtZ7/w+v
	 41e5zhoOO9DyGA575th+1NFgd9/Mw1GgLAYeTc66T4BG5k+k51OXalRU1ebx5RnW22
	 w9p6+ISMfqbHQeoEERZgqnb3tm87yaxbS1HP68Ug=
Received: from localhost.localdomain ([116.128.244.169])
	by newxmesmtplogicsvrszc16-0.qq.com (NewEsmtp) with SMTP
	id 22514A3B; Mon, 13 Jan 2025 15:08:37 +0800
X-QQ-mid: xmsmtpt1736752117tzsp8lkgd
Message-ID: <tencent_B5D4CEE5B9DE468871AF5159433E785D9D0A@qq.com>
X-QQ-XMAILINFO: NMGzQWUSIfvT3QL66qYKb6PiCAeRC2eKNKnIJGJzEeF3FxGYBFLugxgWvltEBq
	 BDiyECwy2SZ1voUrnOGT01sWU34MnmxyWRSmcs/oewOF43e0KWiX+lQM3rsqMhlKU0AUODjhauRB
	 GGFVyB8JKSTAizeUoqtFgACZCk4+7vtfP+6ablVCO8xZL4kh9PcM5SJ7AXocu0tJmEgjcrJ5ODnh
	 6Mb/sGnjp1wE+ZplpFaOwR9bGc1EPcnsUAGM7K7lEgo6fxmOhWMjIamIHw7yKq8lMV74n+liYo0U
	 /tTUotUWsJKxq0rBG2wbHEfc1aGaiKHBI+bwAMb62LsmY+cZJ4PP6cemjsZ0EIdw75q3HncTxQSv
	 xMoYTQQJ4bpC/biXbUXx/sM6qBbrXGwfxIoF2UvuZpERoW0P7+HEstENuAxUR1J29y/mg0GiV21b
	 Tkl5zveddvHMYW8k3V0DNiL/aXn1W0ws2to8JVvIS1KI8ZMlGzj8PMZnmVLk9d9btx35MYQ3QNwe
	 Oq0zZJFpCR2SZNQNVfJqUHWKf9EaVI6BdH/lMO4a+U3FNmAT7JwrXkD54FF8al7IVK1jhIW/OeF3
	 gpfVutIxozsfQWCgnNOaRl3mbfp9DVGBGL/Sh240+Ily6KUNZkxUps1uiaQ04fJz5iFIbb6f+V4C
	 UF6Azv8QVzm0D6fvriiXNbmUtvGIxuZjelhF2JJdqNzPUcgb9D6US1cq4v3P8YclXWrMm92zNmeP
	 K1ShxVw2ANYKAybNdkXQDm42Byj8zn7Ngls+930cd2rDSEjGp4W4rJDG6WBmgHgUZzqwMZhUpiDi
	 lD+LnvmSjJQtj0TqbKZMXxj/cT3Q3gAGAx8rkckjtwul+wbIdK8Xc/dFZwK06S3R3fM8JixGoDnv
	 1/KXs5eIBOx+SvlSdUDhQvulFPFpGvI0GqRPtVI1BvUdegFSsVl24LdAvfhwLyVpmY4ymt40luJI
	 zP6M5NrK4=
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
From: xiaopeitux@foxmail.com
To: vkoul@kernel.org,
	aford173@gmail.com,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Pei Xiao <xiaopei01@kylinos.cn>
Subject: [RFC] phy: freescale: fsl-samsung-hdmi: Use helper function devm_clk_get_enabled()
Date: Mon, 13 Jan 2025 15:08:33 +0800
X-OQ-MSGID: <e0458be8001ad83fe194cc47a4a08f584ec1418d.1736751985.git.xiaopei01@kylinos.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_230906_385898_F4C98CB4 
X-CRM114-Status: UNSURE (   9.56  )
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

From: Pei Xiao <xiaopei01@kylinos.cn>

Since commit 7ef9651e9792 ("clk: Provide new devm_clk helpers for prepared
and enabled clocks"), devm_clk_get() and clk_prepare_enable() can now be
replaced by devm_clk_get_enabled() when driver enables the clocks for the
whole lifetime of the device. Moreover, it is no longer necessary to
unprepare and disable the clocks explicitly.

Fixes: 6ad082bee902 ("phy: freescale: add Samsung HDMI PHY")
Signed-off-by: Pei Xiao <xiaopei01@kylinos.cn>
---
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 17 ++---------------
 1 file changed, 2 insertions(+), 15 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index 1a079075de67..170eac317b16 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -667,7 +667,7 @@ static int fsl_samsung_hdmi_phy_probe(struct platform_device *pdev)
 	if (IS_ERR(phy->regs))
 		return PTR_ERR(phy->regs);
 
-	phy->apbclk = devm_clk_get(phy->dev, "apb");
+	phy->apbclk = devm_clk_get_enabled(phy->dev, "apb");
 	if (IS_ERR(phy->apbclk))
 		return dev_err_probe(phy->dev, PTR_ERR(phy->apbclk),
 				     "failed to get apb clk\n");
@@ -677,29 +677,16 @@ static int fsl_samsung_hdmi_phy_probe(struct platform_device *pdev)
 		return dev_err_probe(phy->dev, PTR_ERR(phy->refclk),
 				     "failed to get ref clk\n");
 
-	ret = clk_prepare_enable(phy->apbclk);
-	if (ret) {
-		dev_err(phy->dev, "failed to enable apbclk\n");
-		return ret;
-	}
-
 	pm_runtime_get_noresume(phy->dev);
 	pm_runtime_set_active(phy->dev);
 	pm_runtime_enable(phy->dev);
 
 	ret = phy_clk_register(phy);
-	if (ret) {
+	if (ret)
 		dev_err(&pdev->dev, "register clk failed\n");
-		goto register_clk_failed;
-	}
 
 	pm_runtime_put(phy->dev);
 
-	return 0;
-
-register_clk_failed:
-	clk_disable_unprepare(phy->apbclk);
-
 	return ret;
 }
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
