Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCACECD5BD1
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jun 2026 14:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bfTPthuJhDj4nFWmnebpHP2z7qoSX9vFbMhu8ZMKFD0=; b=i2Kioxj82u3sQP
	RmIIoxZHCI2zAKRlQ56kyuCNrF91XKqKrGxAabqf+wHGZ9D9ZQM33MoywVX89YjepPYGfEdmrK1Zn
	7eqfi6OK4cuoTCjWsBr/uIHVMb7AfhN+muzWPo4gyV1zzZGV3x+KDFCOIzK4kT+LL1AaCW7TSu2Mi
	ruhrtUj7epkw5CrCXv1mW3SMbzRy3vlEvKyNtWGohWRnb93iwveDLAHSmssJYtDruD+AxBukFK60A
	QVPjsVJ34I6S50Egb6Yi0AK81hDqOge+m/liGB63NzzpZxjZPl2u6cgQVGx6HoG0T1en2BjNPpiRn
	ZD6FJxeLnA5p59iiUrrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUPrP-0000000D9mS-0iUJ;
	Tue, 02 Jun 2026 14:12:51 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUPrM-0000000D9lR-25wn
	for linux-phy@lists.infradead.org;
	Tue, 02 Jun 2026 14:12:49 +0000
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-36dac5d5d05so1093245a91.2
        for <linux-phy@lists.infradead.org>; Tue, 02 Jun 2026 07:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780409567; x=1781014367; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7XCowtVnjKXnbcRNuimTNpT8EiRYTBtdlRiIVINQJ3g=;
        b=IqBte+L5oSUbEQhTvCI0AHl624cYwwrf+c6orztNF+6FxMUV85ugkhal6gGbKXKXe4
         nuFrY2GGV69Xvj/aurgUF7iy7dzZKuO/56nWbFHs6Hy9c79A1Beuuu9rH9mZlLBuIrCj
         iB6HlaLwMo91HuuojJM7WwYfNVwHpemDHv++WHh7V1YK2Y4/dCLwHe+MZgrl5/Q7dSN+
         NJvyP6H3AoMQGZdcDhQGk7/YDVk5NK871grBEeTyFfcRyiJHKPMXBf48PblI19OlPKBq
         Eowbha7GnWA6yn8MmMJFvPTqHLxxIcUAhEqbMxbijzYQVSq8kmOcN0Hf6jQy0167TXKK
         BtrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780409567; x=1781014367;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7XCowtVnjKXnbcRNuimTNpT8EiRYTBtdlRiIVINQJ3g=;
        b=OqtM5GZhzWU4OY9ljTZKPStmwnwT8sLyz0dNKox4r2CBL8Vf3loBPcbhGpGFgB/qIf
         eifPqOS0eYcB4Ygsu3E8EsR0JcjftyI/5h4tF1JccjcHUf0cuF6lnIZUjN/H2BFUpvp8
         jOfNvpNzl+evH7y/ggWtt8Dt8cZCachiVT4jYK2Ps/fxl7uyYFDl5/1wKjNnfCWAiD1B
         Auu0mQzFXJ2hSPa44G18ljRCD6JmTZTLkGH5QCBy+iLcquY0zHwr/12Tona6cr1yc21G
         ddKULZPfa8YYbh3mx2WEEhw+XUylcnHtAoKRURJ6PDw1YVA1h+w3znYepALtocJ1hp5q
         3xzw==
X-Gm-Message-State: AOJu0YzsJSfRtIeaf5efSc8nP+I/gyteQJT8RqMfWc1jN7hHrdnw+wp/
	QaT76riNiI4KagMqJL6jYdddQl3lMLe4u1vsfXWZNS5NC5po7ZOdqQea
X-Gm-Gg: Acq92OGEwDRSY9RA0RVpSfm8VUbXe4PuQ2cwEikJaBolyZmgx7IAr0ey9S+JQGn7qKg
	etQr8/1nAULAJJ73K/p9a0f4jQxU+BpnkH/VkSjLosZXXsxmmJmP9HcvZmFJnqUPcmJ4Z4FZa61
	HMwrW5t7XdQRJcI/9VIjlxGDaNbbDUaTFu+tDzUCbHtxlLAVQNtwCDDoikIWkTBNOofoG5gjY3E
	XsMdHV0EztLHL+q32+Yz/85ve+4AZWxAEFJb2nB8GD24TeliM13V++Tp/Xu9DutNIiXsUDNIg26
	CZWG0R4bVupwj7FyZtcthWlf2EdrJOn+4Z6FbBTIEbvkh0fheQAYkX1nLMGNOX5uG8AByaJ1Zd/
	iDg6cmXaUk0o76//V6oFXvcRiQD0/qHebexgTZi7sqD/tR6EqnPRO+x6yzzrKtBjwDmWDKeUqtw
	l1LVUw+6OQyWTj6TkuiMc/mnPwFd79Te+WAEr//x+NeM1qisyM4o/YkNg8NzaEBZVT7oN4tyyQ+
	XTZ8mQu0pVPwzd4Bub0Lp+yPru2
X-Received: by 2002:a17:90b:3442:b0:36c:e254:4d5 with SMTP id 98e67ed59e1d1-36ce25410d6mr9832117a91.4.1780409567301;
        Tue, 02 Jun 2026 07:12:47 -0700 (PDT)
Received: from junjungu-PC.localdomain ([223.166.246.30])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36dd90415besm3601775a91.0.2026.06.02.07.12.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2026 07:12:46 -0700 (PDT)
From: Felix Gu <ustc.gu@gmail.com>
Date: Tue, 02 Jun 2026 22:12:41 +0800
Subject: [PATCH] phy: fsl-imx8mq-usb: fix typec switch leak on probe error
 path
MIME-Version: 1.0
Message-Id: <20260602-imx8mq-typec-v1-1-3debe9bc77d9@gmail.com>
X-B4-Tracking: v=1; b=H4sIANjkHmoC/yXMTQ5AMBBA4avIrDWZdtHgKmJBTRmJvxapiLsrl
 t/ivQs8OSYPRXKBo4M9z1OETBMwfT11JLiNBoVKo0YleAzZuIrtXMgIhbW2spU5ooWYLI4sh29
 XVr/93gxktvcB9/0A33aWg3AAAAA=
X-Change-ID: 20260602-imx8mq-typec-20a6f1d1900f
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Frank Li <Frank.Li@nxp.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Xu Yang <xu.yang_2@nxp.com>, 
 Jun Li <jun.li@nxp.com>
Cc: linux-phy@lists.infradead.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Felix Gu <ustc.gu@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780409563; l=2735;
 i=ustc.gu@gmail.com; h=from:subject:message-id;
 bh=kpmGkkU11ecTwdVdTxlaGp+lNBsMTsb/Nj9af5UXA/A=;
 b=4YSIt8pCDNOFocdXGuAudSQFQldGYnUBr8V6MOtFtbIGLD00AcsWNSa6+B/Ptk3ul3742sf1P
 htOMmlEyovCCgKwh7yZxmffvwspM7qwRIj/dbKpNJgLdmX5jcRHNlr2
X-Developer-Key: i=ustc.gu@gmail.com; a=ed25519;
 pk=fjUXwmjchVN7Ja6KGP55IXOzFeCl9edaHoQIEUA+/hw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_071248_550028_33056152 
X-CRM114-Status: GOOD (  14.90  )
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

If probe fails after imx95_usb_phy_get_tca() succeeds, the typec
switch leaks because the only cleanup path was in .remove, which
never runs on probe failure.

Use devm_add_action_or_reset() so the switch is cleaned up on both
probe failure and driver removal.  The .remove callback and
imx95_usb_phy_put_tca() are no longer needed.

Fixes: b58f0f86fd61 ("phy: fsl-imx8mq-usb: add tca function driver for imx95")
Signed-off-by: Felix Gu <ustc.gu@gmail.com>
---
 drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 27 ++++++++-------------------
 1 file changed, 8 insertions(+), 19 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
index b05d80e849a1..8af5a4f85698 100644
--- a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
+++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
@@ -173,8 +173,10 @@ static struct typec_switch_dev *tca_blk_get_typec_switch(struct platform_device
 	return sw;
 }
 
-static void tca_blk_put_typec_switch(struct typec_switch_dev *sw)
+static void tca_blk_put_typec_switch(void *data)
 {
+	struct typec_switch_dev *sw = data;
+
 	typec_switch_unregister(sw);
 }
 
@@ -248,6 +250,7 @@ static struct tca_blk *imx95_usb_phy_get_tca(struct platform_device *pdev,
 	struct device *dev = &pdev->dev;
 	struct resource *res;
 	struct tca_blk *tca;
+	int ret;
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 	if (!res)
@@ -266,17 +269,11 @@ static struct tca_blk *imx95_usb_phy_get_tca(struct platform_device *pdev,
 	tca->orientation = TYPEC_ORIENTATION_NORMAL;
 	tca->sw = tca_blk_get_typec_switch(pdev, imx_phy);
 
-	return tca;
-}
-
-static void imx95_usb_phy_put_tca(struct imx8mq_usb_phy *imx_phy)
-{
-	struct tca_blk *tca = imx_phy->tca;
-
-	if (!tca)
-		return;
+	ret = devm_add_action_or_reset(&pdev->dev, tca_blk_put_typec_switch, tca->sw);
+	if (ret)
+		return ERR_PTR(ret);
 
-	tca_blk_put_typec_switch(tca->sw);
+	return tca;
 }
 
 static u32 phy_tx_vref_tune_from_property(u32 percent)
@@ -739,16 +736,8 @@ static int imx8mq_usb_phy_probe(struct platform_device *pdev)
 	return PTR_ERR_OR_ZERO(phy_provider);
 }
 
-static void imx8mq_usb_phy_remove(struct platform_device *pdev)
-{
-	struct imx8mq_usb_phy *imx_phy = platform_get_drvdata(pdev);
-
-	imx95_usb_phy_put_tca(imx_phy);
-}
-
 static struct platform_driver imx8mq_usb_phy_driver = {
 	.probe	= imx8mq_usb_phy_probe,
-	.remove = imx8mq_usb_phy_remove,
 	.driver = {
 		.name	= "imx8mq-usb-phy",
 		.of_match_table	= imx8mq_usb_phy_of_match,

---
base-commit: 08484c504b55a98bd100527fbe10a3caf55ff3ff
change-id: 20260602-imx8mq-typec-20a6f1d1900f

Best regards,
--  
Felix Gu <ustc.gu@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
