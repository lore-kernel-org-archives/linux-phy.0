Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7EC7606A328
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 01:43:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=A5pxuGgK;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=aUkuRERx
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=Wii/anshncfPu2fJsAtWqkcNBk9r4yUoqZkqDib8xLQ=; b=A5pxuGgK/wo+FTU+sinvSDFYJx
	ConfYNAHLeEup+zlLwuNigzyrDdi1kQB/RmlYc0q+vM8fJ1n+5kXjjSo5u4O+n+KQk2Uxwd29rqYn
	XXWJpS2BlkoPl/ha2DZMHa9Ecwhjw9EcHa3wPcNbfOMHv/RnjsedtwmhD0LQ+Ian9AltTXSDFUFZQ
	nRdOZGTixLr43m+mbj4dQvx9PjAQWc8qDanVaC/ldyQ4F9FTbVcpZCuIFbybPFhdUvZE5t1P7WylL
	zASUVYpCtO6DRjsqMapcplKaMvaYSVbG4OdWDNe1VJKFhLfeeia1MNDnWoUDooXjhWwDFmSiLECCF
	HRuIeN5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP8yq-0000000B0KN-1cVt;
	Fri, 06 Nov 2026 01:43:00 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP8yo-0000000B0Jd-0yhK
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 01:42:59 +0000
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-3ac77270fbfso68551a91.2
        for <linux-phy@lists.infradead.org>; Thu, 05 Nov 2026 17:42:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793929377; x=1794534177; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=n++rx2vPRlANelrrltmpXRwH4hFgG58r1hhbvby3m58=;
        b=aUkuRERxhRlQO1H6M4n/Vh/4dZBaozV69U4gc1JR100/MLovef4RDwwaXD92A8Xjwe
         ojEsb9Ds7kLKPIXw5dzGUKYK/wgZjaW21QUbu8b2xrGOyEcBN4o4PiAE9FQ+kNIGkwso
         Vv1iKXP+IqDuKjKlnFYxCVr7HFilE2WbuApIZG+xlpmR0geKakId0TKDgzShgKarnuVU
         pKEPd0KBIe20S8LUnZgHzMYaMjH2Y/XvSSLiwnmgKJ/ArSnp6thcbEcI3SigbDTniWnh
         8sUpM9nT8UrTQZMadifsx2VywcxNz1wdRfE8X98fH99DDRI2zdeQBV2hlBKNfqpZRv7S
         oo/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793929377; x=1794534177;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=n++rx2vPRlANelrrltmpXRwH4hFgG58r1hhbvby3m58=;
        b=qcYgRCFTKhIt0TsCyXVVP2ZPOR9m+1Q0QI6qYB0h+2tJ9zVBL6uhsDLFp0mP5wMBQf
         Q+Q+TfvMdqJmM82SMXTVa5HUGMh1dytSUPQYYkhiYtP4jUVQQyEV6Ma7yeqf9JjHN+W0
         Ey3PEosaRl9Mwv2vcLZfheWMyrqOrEtVGQLvMJZJGMk6Xo36GCzn+3NUjOjYZvzcc/Nb
         u77vPRV7ej4rMquHFyhW1TgJ677jhz3oDpUhymxdShFXb76ga+uozzxW1xBoZw2iXUi5
         znUu4b2vwVd8x1JkNdoyQQ96H80XvzJPOn4K8poBrTwJvg/4R3aujBIQ/PIRJTJ/Fhzx
         hnwg==
X-Gm-Message-State: APuU4Z9ID6cgiDYWiVHlihWPsiSF/8hX1Z5BLK+1pIbLBkOG7hm/paX2
	NqW9HSPfaBtQxsfiGirmcqwhZWz4mRgzSe73xNY2LAlbuwLbtcRA1GxC0CKhYg==
X-Gm-Gg: AYBFou0dy1g3SGJEMCM55ziCnrpPv4VLd3MmqBuei0pn9cVNG4yaCW6RbN7xSVwgVlA
	+jbY1vYGCjmJFIrskLA2X9S0eApE4RKvXWva+uq3blAeJVIIH+t7i+JRrW72UBkVBM57frr1eUg
	Noluzt/PKX5eykZhMzVKu8OP+C/z6iz5lNj7ouMtmkCmYxBkjf41xH752WY/HjBnrqywXGxmoX/
	+6Z2ozEWr7jE9l7cnNJw2CBXkob69NrlREfUxQwKtBXqhQUHIFyonvFz1znuNiozZwUuvBUXFHg
	8sjPT6/doO9IJTtjws2epxej2wAB3uvfKwBpEfOKZFN1ov49yx09etY1imwfkna3YkDZY1YX5TE
	EtMn5Cz2fhreO9C7KdGZzBZ8bgo3n4bTQTVjyJrW/XpDeQFlZvv6ArCwjCEVpCWu1kXPtNQT2e1
	PRidDZXvBI5QmHINVVyEk9CnveAaRbcZnXuamNccPeYpI2aOoFd4BwABxwoRo3cqjU4fN5czdg1
	GR3sR1U/bnvXIBLVmwtdkEe2J6bZmM+7/gM6EQfkf77afAHJ7doXh4aUob8l5Wpo6pjr38Vpt3u
	WDf508dzBAs4+aMX0GehKFHm3TAejcEV1I02kL4MlbEFjR8Utvf+T2pEq8mWo55u1suNwIyJ8VN
	kWpuDw7z7aL1uow419SLZH36v62ndylGwS4VvacRz3EQCJ9dKXOHr5K+T+kfLvCGzPnkIMbWY/r
	YYbg==
X-Received: by 2002:a17:90b:3b8f:b0:3b0:ad42:dcb3 with SMTP id 98e67ed59e1d1-3b0db6e4166mr802421a91.14.1793929377014;
        Thu, 05 Nov 2026 17:42:57 -0800 (PST)
Received: from ryzen.lan ([2601:644:8000:37f::e34])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b0b3265a52sm5407994a91.10.2026.11.05.17.42.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2026 17:42:56 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: linux-phy@lists.infradead.org
Cc: Alban Bedel <albeu@free.fr>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org (open list:ARM/QUALCOMM MAILING LIST),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] phy: ath79-usb: support the analog reset
Date: Thu,  5 Nov 2026 17:42:54 -0800
Message-ID: <20261106014254.544923-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.56.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_174258_308486_CBFF48A1 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From AR934x on, the analog part of the USB PHY has its own reset. The
old platform code released it after the PHY reset on AR934x, and left
it to the bootloader on QCA955x.

Take it as an optional "phy-analog" reset, release it after the PHY one
when powering on, and assert it first when powering off. This is the
reset handling OpenWrt has used on its AR934x, QCA955x and QCA956x
boards.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/phy/qualcomm/phy-ath79-usb.c | 33 +++++++++++++++++++++++++---
 1 file changed, 30 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-ath79-usb.c b/drivers/phy/qualcomm/phy-ath79-usb.c
index 8e9565846b2f..1e7868fc0b5f 100644
--- a/drivers/phy/qualcomm/phy-ath79-usb.c
+++ b/drivers/phy/qualcomm/phy-ath79-usb.c
@@ -12,6 +12,7 @@
 
 struct ath79_usb_phy {
 	struct reset_control *reset;
+	struct reset_control *analog_reset;
 	/* The suspend override logic is inverted, hence the no prefix
 	 * to make the code a bit easier to understand.
 	 */
@@ -30,7 +31,19 @@ static int ath79_usb_phy_power_on(struct phy *phy)
 	}
 
 	err = reset_control_deassert(priv->reset);
-	if (err && priv->no_suspend_override)
+	if (err)
+		goto err_suspend_override;
+
+	err = reset_control_deassert(priv->analog_reset);
+	if (err) {
+		reset_control_assert(priv->reset);
+		goto err_suspend_override;
+	}
+
+	return 0;
+
+err_suspend_override:
+	if (priv->no_suspend_override)
 		reset_control_deassert(priv->no_suspend_override);
 
 	return err;
@@ -41,14 +54,22 @@ static int ath79_usb_phy_power_off(struct phy *phy)
 	struct ath79_usb_phy *priv = phy_get_drvdata(phy);
 	int err = 0;
 
-	err = reset_control_assert(priv->reset);
+	err = reset_control_assert(priv->analog_reset);
 	if (err)
 		return err;
 
+	err = reset_control_assert(priv->reset);
+	if (err) {
+		reset_control_deassert(priv->analog_reset);
+		return err;
+	}
+
 	if (priv->no_suspend_override) {
 		err = reset_control_deassert(priv->no_suspend_override);
-		if (err)
+		if (err) {
 			reset_control_deassert(priv->reset);
+			reset_control_deassert(priv->analog_reset);
+		}
 	}
 
 	return err;
@@ -78,6 +99,12 @@ static int ath79_usb_phy_probe(struct platform_device *pdev)
 	if (IS_ERR(priv->no_suspend_override))
 		return PTR_ERR(priv->no_suspend_override);
 
+	/* AR934x and later also hold the analog part in reset */
+	priv->analog_reset = devm_reset_control_get_optional(&pdev->dev,
+							     "phy-analog");
+	if (IS_ERR(priv->analog_reset))
+		return PTR_ERR(priv->analog_reset);
+
 	phy = devm_phy_create(&pdev->dev, NULL, &ath79_usb_phy_ops);
 	if (IS_ERR(phy))
 		return PTR_ERR(phy);
-- 
2.56.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
