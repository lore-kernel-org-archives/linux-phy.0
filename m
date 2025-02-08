Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DE27C02198
	for <linux-phy@archiver.kernel.org>; Sat,  8 Feb 2025 03:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Subject:Cc:To:From:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JOa+O/6zundFhrLE1YyEYbzkb3ctChISgDPMd1gFH3E=; b=fOnp7jrJDXtnql
	2iLmfMiJfInqtUaZhP0R+BcuKmcN1+SLmxmVmbptJmaho7OkbpTgpg89XJTa1Xg967KE6VfzzbAmi
	8kNncoezCbwEcBO/J4OJFzJPUJ6BRkgBzwaeTXfnVsjqUAgqty6fGFE/tXvxDV9zIEt4uuvh/V+YO
	eVB43o3Gc5vgb2RK9w06VwCZ1rXsI3LztBGCb9aIkVt9ejbOro1hS5IyDoMIj2lGTYRxhIdDl3vYQ
	dOxgUw40iWo3ROdcsCRXEiSiB0kfGFTRiOpuZplvG2hiLjXODHyId7Jxn3hC7i03xiNcs690LU0T0
	qjMVyqXS3lzBztoahr1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgbli-0000000C2GC-3rPd;
	Sat, 08 Feb 2025 03:44:34 +0000
Received: from out162-62-57-64.mail.qq.com ([162.62.57.64])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgble-0000000C2Fb-3H7Q
	for linux-phy@lists.infradead.org;
	Sat, 08 Feb 2025 03:44:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
	s=s201512; t=1738986245;
	bh=e4n88+gDSsJKY+HVB64NCGgLJNMxgKvFLU8UcTTqY1w=;
	h=From:To:Cc:Subject:Date;
	b=D/WaaYIl6Ke1JsOnXy+kc9LTRnt9Xemj4+gRoxz9iiHKOFnTELu0yxlhTC0Eo5L2w
	 DNgCJVydTPZaUEvDYE0w7uSNBCUGG7O8ukfwGfEOAiChqZe1eHTTT9hKj3bTEK1zhX
	 0A+Bldm+ieZpY75uz0/fSSDqq2oUnLNN/JCVWhB8=
Received: from localhost.localdomain ([116.128.244.169])
	by newxmesmtplogicsvrszb16-1.qq.com (NewEsmtp) with SMTP
	id B03A02E2; Sat, 08 Feb 2025 11:44:03 +0800
X-QQ-mid: xmsmtpt1738986243t4i6dngw2
Message-ID: <tencent_9087BCE04E38E6AA5C4B2252B82FA99C2009@qq.com>
X-QQ-XMAILINFO: MyIXMys/8kCtpCEsaE87BPfzxLKbNV7vBnnW2fDzpCzz68dTVclMNlgG33e1hw
	 pts5h3vuLulekaFIbmi5eNmOe/fcFw0tP8C19AX5wQbmTkJsqIkm21ZIy/IeRlL0yX9MlcMj3nhO
	 Auh+17CGxuaQpNPkrX4GOk+UfyjWn8lqiJiISvEjgQe9og5X4QCT7vSeO1uuwSeR+djeCEwOsf5K
	 UaAhqo+xYbkC6rcGig8DS4v5Xow1HWEUVnIAyVWvYLkSb+YtKw0OcpTGI5f9NBbzfp7kLvVC9+zU
	 6nOYFNsoLlPwl4gA5qXrl/6PdU1nW7ix5Lcwv1dnv6xcZCDofsOmfGCr5pImmbMffo7vgU9zEm8s
	 iCMmaiKZxZPF+GFxCraPlvwBgDHBQGcAIH9s/6t4vQWJKHWezjtb1+SiEipoZvyMuikTxJha9o12
	 0gWiy78RfP3U3MCllnD7+w6AxWFrTzSoAW84rAXEsOl0+RJGZF8PDbauUd9XJkwRtp5a7AkgiWQJ
	 FVkn7N3a1CLxKfg7JIgbqAdsEFVRBifTXeHO0nfdTrFvZOTiFt1f2GQAv8viH1OL+dKghWfOLkun
	 EhnJMxuDcdk9yRBeBwu5VV6+MHxAteWo9Hjgnvf7HsMwSDzziRZ4Kwd6q4Pnz8IhOYEX+B52xybH
	 oXiy4hzc6s1PR1fOVKvEglzU504nFDFs4tGX2TVWTKPuAMCeWRZvYFRaRZClCNpCnO7IIolU2EGg
	 0x+0MJ2cUaCdiJk3p3sMmx1iIB6BAvp+eywFYIEyfuk6j1UvvuduM0+H0HDEBPtFrZgtkONRUULA
	 XzsX5U7EMBMCzhrjmDYwEspBOg7KgR4xIvN7HEeCrqcep6nsVcHmxhUr8Rxm8yYcMmZwruvub+CV
	 4Re7tvtOxpBlAi9HtV00sGH7HOLF6MJurKX+SFWaudrkeECwQHDxiUr27Y1pgCzmiAT0Mj8OMs26
	 snE220GUY=
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
From: xiaopeitux@foxmail.com
To: aford173@gmail.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Pei Xiao <xiaopei01@kylinos.cn>
Subject: [PATCH] phy: freescale: fsl-samsung-hdmi: Use helper function devm_clk_get_enabled()
Date: Sat,  8 Feb 2025 11:44:01 +0800
X-OQ-MSGID: <b903e9dd5befb6295b2a251c65d1be7b0502cfb6.1738986050.git.xiaopei01@kylinos.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_194431_627705_863AD8C6 
X-CRM114-Status: UNSURE (   8.76  )
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

Signed-off-by: Pei Xiao <xiaopei01@kylinos.cn>
---
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index 6817ceabaab4..7be625a25f9a 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -669,7 +669,7 @@ static int fsl_samsung_hdmi_phy_probe(struct platform_device *pdev)
 	if (IS_ERR(phy->regs))
 		return PTR_ERR(phy->regs);
 
-	phy->apbclk = devm_clk_get(phy->dev, "apb");
+	phy->apbclk = devm_clk_get_enabled(phy->dev, "apb");
 	if (IS_ERR(phy->apbclk))
 		return dev_err_probe(phy->dev, PTR_ERR(phy->apbclk),
 				     "failed to get apb clk\n");
@@ -679,12 +679,6 @@ static int fsl_samsung_hdmi_phy_probe(struct platform_device *pdev)
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
@@ -700,8 +694,6 @@ static int fsl_samsung_hdmi_phy_probe(struct platform_device *pdev)
 	return 0;
 
 register_clk_failed:
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
