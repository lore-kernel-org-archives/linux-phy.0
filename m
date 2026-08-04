Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14B74C55184
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 15:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mHJgAGK5sWHcuTozWbEGBtrmG9kV7goDvAjUo2S1tSU=; b=YK8ZnXUYRMoYm+
	fd5UvMwVfgpWuk+heC9shVNLI+bAFFKMHncNNYoXiTWGTVv8vuj3FDDqAvFqID9mQ5SGSukiFrw/l
	nGsiOrNrSpsTQseWmlM4yQrbFEyOjHo1rDhcyxpAzTu9Ow+DCRfBhWTuPS9VS6dLjtoWdh/lZUPut
	XiKM4n074ykqXHvabqpOWkXZlvtoaQt26p/VmbXpM5deB+dFiWw7b8X3Rt8N1kPhrk0cQqkypBDTh
	coqkL8oLMEFp8j63hDSQqkcMsH9CF6zdzfPlX6mt/+3pHAQpKjPlScqYWtlPqy1f1tXOdo9xtJL5K
	12IA10dQxKk7RdwHP3nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrH0T-00000002Cxh-3IBW;
	Tue, 04 Aug 2026 15:24:41 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrH0Q-00000002CwT-40m7
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 15:24:40 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-848643382fcso4153981b3a.1
        for <linux-phy@lists.infradead.org>; Tue, 04 Aug 2026 08:24:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785857078; x=1786461878; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=sbVRLeDoCCW2STTQ73SaS5bPQTwsTGlS1LT09DSg3jg=;
        b=OJXtSH61e3XGu1hcj7ZJ7ggwHJ6pZq0dPSaAkJao/wsursKXPYG0PItSlvOyaaDr1E
         vjDvbkfIGGYsgfHWh+kh1r3A+EOLRRlf39RIW1Mvp7PyywZ6zHPdgpi7lre44XFQPuL1
         OU6tuAg5mSVV9vKRzMxmjyf1X9r1ck3mte+45oXiBwUtM5WozhTpbNGToCH1FWsxTAKN
         HdygWo4IF6NooWzNmiNIYs37mbObL5M6YDAjqzZvht67aKTLzWkL2goaKbv1twToHjKM
         C5QPg21RkcNAc7OCONr+/eftt/3lnNde+L5D4Ty7urWeHSuMjXbNszM/O7KYaiK7qOxw
         BCHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785857078; x=1786461878;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=sbVRLeDoCCW2STTQ73SaS5bPQTwsTGlS1LT09DSg3jg=;
        b=YvlpaSGCvq6ABtoWN6RJ0EQlWfOcTkXXalOlCOz8z2HCRztCjQBIOy+0NkSo791AIw
         QpbKXD6fX+k3TO8RzFDcvE8AjU56KMOEn4bg+Kf68JuRCc4xXJw/FeCSUjvcCcu/PfjC
         p525R9esUwQU5AWIo9QDDeJ74f+kIRbp6c/p+mQWxfquhrl8eEYWbYGpiyxaXppIFcw9
         uRmEfNtGadgQY5nn3It1qpPOx2oNzNQ8LYPlEVfBaBbDbxLmXcBwHLTay61aNctXgvky
         4UHnnO4h8yyRlZX3+SRl4xi9RGI+qKCGNpsr3/4HUet3NH0mAJcJSqgmVF3LeI/VOPfL
         veWQ==
X-Gm-Message-State: AOJu0Yytu7z/8FF3F9zIF57c0QCMmqVMItLOLL3HfM6VgdLRve4AgP/1
	KMDlzSI7XB/pTgbitmkheCVtHBY6unTXA5/VF0H+jSSaz0xx22/lW6p/
X-Gm-Gg: AR+sD11j2V2NWWwN+ILTnZqLDE6njQdPrZsqPaFH1Miof1z8+mUPKiofbia9YTcR7Fc
	ZQay5iHUaUUGrB7w1yoidM10+i8quPa8Gmhsgt6R4kMNM7g8gGB2nX2xscOxMrVfbDdGlCw/exY
	L5jThY+zJCtgUnpoAgHkSH3DH62GMGUSGLL/OXyP1x/EJpX9JH6XoFLzvmD3Th9q1Q0E2sMd5n6
	FTcp6nTblqkmJxiS1X+1uxUSlya3n6ItQdZc1uL7On7/IUwBqsRu8LNLJRhB6xa66QRUTHMtlK9
	+ivV5+90KmZNBrPIvawiP3DzxmaEst8X4e5ewZbrheR8x+VJmA50xwxfbURldi53QQ3ZgL6BFjj
	ksl1r+E5pacVgVYOc0RBOTZMbNi0cTDdU5dQV3kK05I8J6osTcupdgLTO/8BIrXiuZ1FIPjovkU
	itjVfdSCrswgOwYOrIRkgeYgN7Ox6K43SiTqSEUYCNJDxP4s1fgil19PkdKzPXb5eVgzfX2WZL8
	E49NsoEcmLPjeTkBkzi177Vj7Nf2794w6aDpw==
X-Received: by 2002:a05:6a00:cc6:b0:848:5f4f:2899 with SMTP id d2e1a72fcca58-84ee478fd67mr14141258b3a.16.1785857077965;
        Tue, 04 Aug 2026 08:24:37 -0700 (PDT)
Received: from [127.0.0.1] ([103.17.98.26])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84edbe564b3sm5586778b3a.14.2026.08.04.08.24.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Aug 2026 08:24:37 -0700 (PDT)
From: Felix Gu <ustc.gu@gmail.com>
Date: Tue, 04 Aug 2026 23:24:19 +0800
Subject: [PATCH v2 3/3] phy: renesas: rcar-gen2: Use dev_err_probe() in
 probe
MIME-Version: 1.0
Message-Id: <20260804-rcar-gen2-v2-3-829cb84112ca@gmail.com>
References: <20260804-rcar-gen2-v2-0-829cb84112ca@gmail.com>
In-Reply-To: <20260804-rcar-gen2-v2-0-829cb84112ca@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Cc: linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Felix Gu <ustc.gu@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785857060; l=2645;
 i=ustc.gu@gmail.com; h=from:subject:message-id;
 bh=8N1KfRu3c/EnqBJdu7xl5UdInSkm8t3S/TsB4emkZQ4=;
 b=Rve/4xIJsDxKCs7TWRvKkUJiFC7y7Q8VnWFhUj6ehAGQibpGsY4JLqD9UGNLM96kyh7Z8XXPi
 OsJjqtds8o+B9P0N4r4GburlQvqrsUW3aaYQaJ/7fjSfZoHw1IAGVI6
X-Developer-Key: i=ustc.gu@gmail.com; a=ed25519;
 pk=fjUXwmjchVN7Ja6KGP55IXOzFeCl9edaHoQIEUA+/hw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_082439_005522_1CE6B352 
X-CRM114-Status: GOOD (  11.46  )
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

Convert the error paths in rcar_gen2_phy_probe() to dev_err_probe().

Signed-off-by: Felix Gu <ustc.gu@gmail.com>
---
 drivers/phy/renesas/phy-rcar-gen2.c | 35 ++++++++++++++---------------------
 1 file changed, 14 insertions(+), 21 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen2.c b/drivers/phy/renesas/phy-rcar-gen2.c
index b18727ed41a1..581f6768e2bb 100644
--- a/drivers/phy/renesas/phy-rcar-gen2.c
+++ b/drivers/phy/renesas/phy-rcar-gen2.c
@@ -342,17 +342,13 @@ static int rcar_gen2_phy_probe(struct platform_device *pdev)
 	const struct rcar_gen2_phy_data *data;
 	int i = 0;
 
-	if (!dev->of_node) {
-		dev_err(dev,
-			"This driver is required to be instantiated from device tree\n");
-		return -EINVAL;
-	}
+	if (!dev->of_node)
+		return dev_err_probe(dev, -EINVAL,
+				     "This driver is required to be instantiated from device tree\n");
 
 	clk = devm_clk_get(dev, "usbhs");
-	if (IS_ERR(clk)) {
-		dev_err(dev, "Can't get USBHS clock\n");
-		return PTR_ERR(clk);
-	}
+	if (IS_ERR(clk))
+		return dev_err_probe(dev, PTR_ERR(clk), "Can't get USBHS clock\n");
 
 	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base))
@@ -388,10 +384,9 @@ static int rcar_gen2_phy_probe(struct platform_device *pdev)
 		channel->selected_phy = -1;
 
 		error = of_property_read_u32(np, "reg", &channel_num);
-		if (error || channel_num >= data->num_channels) {
-			dev_err(dev, "Invalid \"reg\" property\n");
-			return error ?: -EINVAL;
-		}
+		if (error || channel_num >= data->num_channels)
+			return dev_err_probe(dev, error ?: -EINVAL,
+					     "Invalid \"reg\" property\n");
 		channel->select_mask = select_mask[channel_num];
 
 		for (n = 0; n < PHYS_PER_CHANNEL; n++) {
@@ -403,10 +398,9 @@ static int rcar_gen2_phy_probe(struct platform_device *pdev)
 
 			phy->phy = devm_phy_create(dev, NULL,
 						   data->gen2_phy_ops);
-			if (IS_ERR(phy->phy)) {
-				dev_err(dev, "Failed to create PHY\n");
-				return PTR_ERR(phy->phy);
-			}
+			if (IS_ERR(phy->phy))
+				return dev_err_probe(dev, PTR_ERR(phy->phy),
+						     "Failed to create PHY\n");
 			phy_set_drvdata(phy->phy, phy);
 		}
 
@@ -414,10 +408,9 @@ static int rcar_gen2_phy_probe(struct platform_device *pdev)
 	}
 
 	provider = devm_of_phy_provider_register(dev, rcar_gen2_phy_xlate);
-	if (IS_ERR(provider)) {
-		dev_err(dev, "Failed to register PHY provider\n");
-		return PTR_ERR(provider);
-	}
+	if (IS_ERR(provider))
+		return dev_err_probe(dev, PTR_ERR(provider),
+				     "Failed to register PHY provider\n");
 
 	dev_set_drvdata(dev, drv);
 

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
