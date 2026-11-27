Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE28E606A31C
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 07:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=wYg03ZYS;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=IPDeXXYu
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=GuGsk3zlm5gpNhTzJSzWJ7Gjd69SiXrG9sW0Zvu74hs=; b=wYg03ZYSroEESAGzGF3GnatMfG
	6vqPg9Em9bvkAbzFE9dQBnwGYiQ16yprEWK856X05/xQbkGfTt5+iCNjTCW1bZ3TyQZeYHYN14bNN
	9jEMZSkFhb6G1p4UOVnJJxXYibeY+jyljkMsL10M72eOGRZuzXx/eKPFq5YKnnQGhhMn2vy7XntyC
	fizHwEB2uEcHEI/Fd2Cs5EZKqI3GL1w8Fvh3Dj8/DB3Ufwmna0SzuU9j7BnG/WjEWAeHPbaLjp4Dy
	yRv8Qg1A1JdlGoe2hneYPaPastubo/80Z0i6gWhhMTcYTMvkC2rXKa2CgFxP4aSSXUCVlWbJneY9c
	sZE9Q8og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqhJ-0000000FCQD-2Zou;
	Fri, 27 Nov 2026 07:48:45 +0000
Received: from mail-dy1-x1334.google.com ([2607:f8b0:4864:20::1334])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqgq-0000000FBux-44Kj
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 07:48:18 +0000
Received: by mail-dy1-x1334.google.com with SMTP id 5a478bee46e88-386a2dc17adso688360eec.0
        for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 23:48:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795765696; x=1796370496; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=btRAcHUeA6n57bmtR6kPYkSdBmN+obmF05HBvyePiOY=;
        b=IPDeXXYu9JNigjdOZzQEeeahJr1zoN8hrgFmi23AZB5P2bENcStdHyR9AlCBFKl5/D
         se/+g+LzUCrSl790kQldS4Gwkj7LOZAYTtVNkSXojBWaE59YV3GuV6OYfDk2U1sE1UNF
         PgFFt6I33Clp+2bDsDTHkPxzKMaEKMadk7nEa8IETxszKNuqDPKoQaY2BiTuVNgxzzeV
         wzHperDblQZNEe59xttQJWSC1QnJMd31ngnJRbPKk71o4Yzj2JKqexw0iLLLDtZONC55
         AhzlHwqGNujVNHbkuo6DQSWXqTVLLPN+VZpDLn+F4g3U3uqOTS5eyUtcmqFgaMw/K0Px
         M37g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795765696; x=1796370496;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=btRAcHUeA6n57bmtR6kPYkSdBmN+obmF05HBvyePiOY=;
        b=Bgm706bQB7AHl8iYxrlVP6pwmtTjVuaRkBN63iIsMwPqE3VCRWFIXOnVCSFlGVuaBK
         xT09Ec+jRXO3jLrpSk4MA2ndz2YW+EHc13EIGkczcroQBgYvg8lAdUfXZEpdkSMbs9MN
         SDbtZthEYF1M2V/GM38ZiPWdNHUQyLV2XW9LJLEt769AzGl0H/R5z2ecGWZu7h32mpL0
         bZ5jrI3IlMjoYUFX6ThSbqaJHPrhOaI9DHr6+R1aAYFyO7R8d/qnZqS/ukyITtbi7n4J
         kOOT39Pc9I9QfnWHPFbz4p3OzZCsFZU6Dyi5j6gD4LUKpDlnxjiNbzOX72haEF2WazMj
         E6SQ==
X-Forwarded-Encrypted: i=1; AL+hErH+pu0oFowcAqZbx4oLCtF/evwYAUmWCBemb9TimRJfMD4H+QeuHm9MbaJVvbbqxvF6hJCbyGanobQ=@lists.infradead.org
X-Gm-Message-State: APuU4Z85OZVhU0SOiiAQeKdF4IUSgqykhD0pWC6eH5X/4d9L/kY+6hxg
	qm2wR3jzPe4bc4b+g08HLHba0y6PuzPphSdU4UBD+BTCLCgUX5dqLNDC
X-Gm-Gg: AZFdTZcc3Bz6DZYe0vknM8rTskvl4RwGqTkc2hQS1iCpMkIZEjHf5ci083ZBxZbt71C
	FkznPwLNf9Xo5Xjbuo/OOZHmjwifBHs6wzlpoAft01IO6lJqE7jeWWrWH0AnN+d0tmUOyJYNFiz
	mKxOQ+JdYVMUmKaFposWBlFv0hWfW/vK1ZNrmw2Tri09yq2yPXCVSz+fD6Vmd8sWCMLPUcpkDK6
	TjiIMuQXSs/6vi64/LUqAzIsHEP4xjL8X15VIJmkqPVoekOGsXliLVw/SBm5nV98nGx6EKNjOMr
	+7ef2OyX422/edF/d6kRI99mvSzSaLMoBj0AUufpGmSF5+QK7I953Rt5bE6dbE/f08MXqZbMxVH
	jSmSk6HuvYLVw45QoduY2ssy0K2GXGwAlt0GPGC6uqZoTA+Vb8QAVweuwn2XwqS5cj1AsWJQSZM
	md/QxM6Ek6GTnIam02vDNrdvDo3O373HteEN10Z2u6JCmEAD4pKdddW73qnvsa1etuBg5nWD5Ga
	tc2Nxkpyu3x0wK/ZiKRoQmh/DJHbwfv0rUjOR6DZ5ys4eD6YviGYQlEXkHXwKry6sOKpsvvDfnb
	waohGRSu4DA84yKlMuS2oelK8an4MQElpdyVdeVGsvj7sIFcbnM8ZuC/zKotgB71yIVO/0NnIiE
	gzq6JOAXSjj7wyAugTlyL
X-Received: by 2002:a05:7300:1c24:b0:384:a0cb:a6d0 with SMTP id 5a478bee46e88-3856de58f7fmr38385259eec.1.1795765695496;
        Thu, 26 Nov 2026 23:48:15 -0800 (PST)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-385672c6f31sm68098252eec.15.2026.11.26.23.48.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2026 23:48:15 -0800 (PST)
From: Jason Yang <jason98166@gmail.com>
Date: Fri, 27 Nov 2026 15:47:43 +0800
Subject: [PATCH v8 7/9] phy: rockchip-samsung-dcphy: Support the new
 phy-type and direction binding
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-dcphy-rx-v1-v8-7-9ddfef99221d@gmail.com>
References: <20261127-dcphy-rx-v1-v8-0-9ddfef99221d@gmail.com>
In-Reply-To: <20261127-dcphy-rx-v1-v8-0-9ddfef99221d@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Guochun Huang <hero.huang@rock-chips.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Quentin Schulz <quentin.schulz@cherry.de>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jason Yang <jason98166@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795765664; l=3409;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=v0EnQCVIVEgPp9E4a7EtrkAw5gnRZVFlWGkYOQI4nos=;
 b=XiX5z22zG63/plqtYdcSm4E2TGg/Wou7ui0q1v7PAXRCBGrd6wMD6SQdncjXk67WIz/1fFgAc
 GUjFYosi5NGAUuUppRZIHdIe39iOkjV7zHhyzD5BQKdlCRokfAjYp6v
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_234817_030828_A045B1FE 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -1.9 (-)
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

The binding now selects the PHY with the cell and the mode of the block
with the phy-type property of the provider. Read phy-type in probe,
D-PHY by default.

of_xlate() returns the transmitter for PHY_DIRECTION_TX. The deprecated
PHY_TYPE_DPHY and PHY_TYPE_CPHY select the transmitter as today, so
existing DTs are unaffected.

A phy-type other than D-PHY or C-PHY fails probe. A deprecated cell
value that does not match phy-type gets a warning, and the transmitter
then refuses to power on, as in C-PHY mode today.

Signed-off-by: Jason Yang <jason98166@gmail.com>
Reviewed-by: Michael Riesch <michael.riesch@collabora.com>
Tested-by: Quentin Schulz <quentin.schulz@cherry.de> # RK3588 Tiger CSI1 2-lane IMX219, CSI0 2-lane OV5675+DSI
---
 drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c | 32 ++++++++++++++++++-----
 1 file changed, 25 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
index 7a62db810d4b..1228bd794759 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
@@ -309,6 +309,7 @@ struct samsung_mipi_dcphy {
 	struct reset_control *grf_apb_rst;
 	struct samsung_mipi_phy tx;
 	u8 type;
+	bool legacy_mismatch;
 
 	const struct samsung_mipi_dcphy_plat_data *pdata;
 };
@@ -1384,6 +1385,9 @@ static int samsung_mipi_dcphy_tx_power_on(struct phy *phy)
 {
 	struct samsung_mipi_dcphy *samsung = phy_get_drvdata(phy);
 
+	if (samsung->legacy_mismatch)
+		return -EOPNOTSUPP;
+
 	switch (samsung->type) {
 	case PHY_TYPE_DPHY:
 		return samsung_mipi_dphy_tx_power_on(samsung);
@@ -1557,13 +1561,21 @@ static struct phy *samsung_mipi_dcphy_xlate(struct device *dev,
 		return ERR_PTR(-EINVAL);
 	}
 
-	if (samsung->type != PHY_NONE && samsung->type != args->args[0])
-		dev_warn(dev, "phy type select %d overwriting type %d\n",
-			 args->args[0], samsung->type);
-
-	samsung->type = args->args[0];
-
-	return samsung->tx.phy;
+	switch (args->args[0]) {
+	case PHY_DIRECTION_TX:
+		return samsung->tx.phy;
+	case PHY_TYPE_DPHY:
+	case PHY_TYPE_CPHY:
+		if (args->args[0] != samsung->type) {
+			dev_warn(dev, "unsupported phy cell %u with phy-type %u\n",
+				 args->args[0], samsung->type);
+			samsung->legacy_mismatch = true;
+		}
+		return samsung->tx.phy;
+	default:
+		dev_err(dev, "invalid phy cell %u\n", args->args[0]);
+		return ERR_PTR(-EINVAL);
+	}
 }
 
 static int samsung_mipi_dcphy_probe(struct platform_device *pdev)
@@ -1574,6 +1586,7 @@ static int samsung_mipi_dcphy_probe(struct platform_device *pdev)
 	struct phy_provider *phy_provider;
 	struct resource *res;
 	void __iomem *regs;
+	u32 type = PHY_TYPE_DPHY;
 	int ret;
 
 	samsung = devm_kzalloc(dev, sizeof(*samsung), GFP_KERNEL);
@@ -1628,6 +1641,11 @@ static int samsung_mipi_dcphy_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, PTR_ERR(samsung->grf_apb_rst),
 				     "Failed to get system grf_apb_rst control\n");
 
+	of_property_read_u32(np, "phy-type", &type);
+	if (type != PHY_TYPE_DPHY && type != PHY_TYPE_CPHY)
+		return dev_err_probe(dev, -EINVAL, "unsupported phy-type %u\n", type);
+	samsung->type = type;
+
 	ret = devm_pm_runtime_enable(dev);
 	if (ret)
 		return dev_err_probe(dev, ret, "Failed to enable runtime PM\n");

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
