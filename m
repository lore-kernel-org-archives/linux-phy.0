Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB965CCA464
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 08:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bl+I5/L3bCetFahLTe1r3CLNDAxLywD0VT1f8mw0iXE=; b=QTyeLleM15Khvh
	dQ6qAYp8D8dYB8j9vb8gmvdvphe5Y4HUMSN/kAWgeLyecR5rycQR1u9PbMP4qt4krkTTztM3TWjRr
	M4qsT6WQ1p323PmsSqIbmo16Pq7I1eMOFr2yK/J5G5dHa0SdADZNF+P3sqdq4RWuiiD9bJHDZqEF1
	Uh2iyXOJDnmmxpa83bkaY9NsR/lxUk2O3hyLGJozgtn2ENxjkllDM3lFjcckFVHHFbDJnnVZ9GdAN
	MuptoaWlBbgVFcnYjMc8N4FTF3cSfn5jqFdybFwGXcFNbRizvJXc03r55AzDCHV8XcwFeJuKV5MUE
	JTTUPgISIvK7aLYHLWrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdkc-00000002OYF-1azp;
	Fri, 16 Oct 2026 08:57:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdkY-00000002OR1-088C
	for linux-phy@bombadil.infradead.org;
	Fri, 16 Oct 2026 08:57:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=xv/fzgEaLHwSOTuuR0+7ucwKNcEXz6nX6gNKEqp1/5w=; b=VkOvjFw/y7JABw3GKtrzzmt9/V
	s/z+ahfIrvhh9lCL1vED/OApdaP+6S9yssRjzm9UycPsvyQJxN2bBUMsMsw5/kGCH1juX4KEMBeae
	KJMzJm+1RUXGqbiCHNmC9GmPtNQi+dbp72d673OVISZfwkpVYtYFfBzrZvQGaVLlOBZl+p+snVLYi
	IfMJVpluzwLfns7gw9tjE/l/Hq5nM1yuqBuTf1BsySTuPyw0SW5gE8vXEdsZu1orCGYXmpeTP5Hly
	D859NoLpdsqMFYzr4pDWcuHKuXUnCPRqrtmp79AIFlIo9H3xz7c1R3MJkdxgyClHZPAEdQIurp885
	RjTWoFug==;
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHdkU-00000001HuZ-2bL6
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 08:57:12 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-2dd4b3c311fso5486085ad.1
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 01:57:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792141028; x=1792745828; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=xv/fzgEaLHwSOTuuR0+7ucwKNcEXz6nX6gNKEqp1/5w=;
        b=nR3BpdEwqMVvOBCHttY+LT0M6zmiNrmPle0AvrVha2L6szM03B9ZUMReNyhUv8FAzA
         di2SeKzwRzXILJQ1Lhe0ppuKtPomHAuUod5QZa0SocshzXOLAofpamgonr3P/ADMgv+/
         yUlYG+sur/PLGNwJCxXfjNuJDY2FYbso2unjgS0HeHM7sKtfHU0pIZ3aCckkFpsL1EPt
         3z0neRUl/+1ssxnH6s4RomsBZSbSCBHcZyP2GezDFpGGP9GeokUruSz3tdaPTEVmfofZ
         idLOZhxYow+S+s3gOFlX0w67HuVEl+sA4ygeioSlUu3ZNIcz9cQu5VpQMaAs7RCdCqU6
         SIEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792141028; x=1792745828;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=xv/fzgEaLHwSOTuuR0+7ucwKNcEXz6nX6gNKEqp1/5w=;
        b=oXeoc4ecHOHTv40h6EinLe81ajsWjj2r0bcRhaDkQn1yTAu6Rhs3aBPmTXnXfDIsSt
         EhuMv2kbVbqDR+NCN8YBsTvTUmCE1fVmMvBzhfCRRadr6Dfppl504rhWgL1zbX5WBctV
         6u/5dVE9ai6G3c8PNIch1crkWxapfq5UYHUiX6s/hZP0any5JxUXINuXYwTjgSmGh8LG
         spwvmHsE564kDM8GIU3nl96AfB2b2qEaltPPBvytOIyJHmOuY+3IIIlBX69NrjWVpO3F
         NLBjQU9lp3I+2LiVTBm1E3yRljjtskQoSqDQvpmNGE5VTgg6frzzBtQW8iVekR3UPACB
         LKEg==
X-Forwarded-Encrypted: i=1; AKwUvBy4vfiZtNvhpskWgXxE923QzySdWOaL4Io4GXsalTQs51RfT2LFoAI5zJ7rPDbSXy6Tozo48NpU2DA=@lists.infradead.org
X-Gm-Message-State: AFq9FYIte7pw5u0v/2IlsaHCEx8RUEBpeCxvqr1tMV+6IEZZAlOMB8cP
	CP6Hf9RLKua0RVTc3+DfinP28oTSqrohm0q10X2cxTHrJA43HsqEQ5Pj
X-Gm-Gg: AYBFou0ZSa8i9QX4oSVkMEnjEPVpOanEUxYzezVjAu+aMAkRktpSEmTUGF0vNRpjdMP
	sIVSnIFK3Xep8e/BtcgQP6kHxFmzMNcfrP2AGHRJy31aAOjta48wEXDjRr7nxsACe3NSUyMH4Gn
	jpAL3l6+bmg+mTeGO0amfnm4IWbN6N3rJN7nMySC5ZhwYiS06IvfqxSxi0Ttm4A3Yq13mluUre2
	JZN+VAYs3ve8oNMH2bdaX9Q3qmy/gKQW79i2JwjAakclrO+Gr6CydjJESDICJPRWoO/7XInJK2G
	QuKCvvHR2qSroXEimav/LVRUR3c0b+qvalGyGF3GF2k+UVl62zbgQ1DnBXUA8oCqUJO3wHTgH4c
	xxZhsfRtOR3CNMz59mxVJEU5h8S4MlNs+PNILJUAPBxSMMcdDP86yOh86MVLr/HGWmLfCpy+Jrz
	6RDiG/eNgB3y0o3dCSs4Wd1XT21z52pJCMtUsAEzsQCQ0hWg7CqAJR9M2Zj9DQRtA70xe5V50U8
	ql5YZgg7XXQCKtkv3WU8ZXhX0QQ0g==
X-Received: by 2002:a17:903:1251:b0:2e9:9263:a58 with SMTP id d9443c01a7336-2e992644a1cmr12846855ad.1.1792141027903;
        Fri, 16 Oct 2026 01:57:07 -0700 (PDT)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e97e882a20sm6971025ad.62.2026.10.16.01.57.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 01:57:07 -0700 (PDT)
From: Jason Yang <jason98166@gmail.com>
Date: Fri, 16 Oct 2026 16:56:39 +0800
Subject: [PATCH v5 5/8] phy: rockchip-samsung-dcphy: Add a second PHY for
 the receiver
MIME-Version: 1.0
Message-Id: <20261016-dcphy-rx-v1-v5-5-e63b49eabe2d@gmail.com>
References: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
In-Reply-To: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
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
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Jason Yang <jason98166@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792141002; l=4721;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=lmQQQHnNl4r4tGiXOJbghuVbF8/OCluaIwoRthxoOuk=;
 b=o82DbajtlVgj9pfMdMky1HoLutaNEmktGT4Z3sgMNNpl0U5mLIk7MSo2mxqacAFMg1/7Dl30+
 eBrXn2uM4oFB7ck+YG5jMlU87B42qioRn0lkyuEEZnrShidfaV6uW3A
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_095711_024197_01073B84 
X-CRM114-Status: GOOD (  17.87  )
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

Give the receiver a struct phy of its own, with its own phy_ops and its
own samsung_mipi_phy for the state the two do not share.

of_xlate() takes the direction from the second cell and falls back to
the transmitter for a single-cell provider, so existing device trees
keep working. It now rejects an unknown value in either cell, and a mix
of D-PHY and C-PHY consumers, which the TRM does not support [1].

The receiver's callbacks return -EOPNOTSUPP until its bring-up is added
in the next change.

[1] RK3588 TRM: section 22.1 (overview)

Assisted-by: LLM
Signed-off-by: Jason Yang <jason98166@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c | 69 +++++++++++++++++++++--
 1 file changed, 63 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
index e4293c8d2b29..316d4c4d49c1 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
@@ -296,6 +296,8 @@ struct samsung_mipi_dcphy {
 	struct reset_control *apb_rst;
 	struct reset_control *grf_apb_rst;
 	struct samsung_mipi_phy tx;
+	struct samsung_mipi_phy rx;
+	/* PHY mode, PHY_TYPE_DPHY or PHY_TYPE_CPHY. */
 	u8 type;
 
 	const struct samsung_mipi_dcphy_plat_data *pdata;
@@ -1511,6 +1513,22 @@ static int samsung_mipi_dcphy_exit(struct phy *phy)
 	return 0;
 }
 
+static int samsung_mipi_dcphy_rx_configure(struct phy *phy,
+					   union phy_configure_opts *opts)
+{
+	return -EOPNOTSUPP;
+}
+
+static int samsung_mipi_dcphy_rx_power_on(struct phy *phy)
+{
+	return -EOPNOTSUPP;
+}
+
+static int samsung_mipi_dcphy_rx_power_off(struct phy *phy)
+{
+	return -EOPNOTSUPP;
+}
+
 static const struct phy_ops samsung_mipi_dcphy_tx_ops = {
 	.configure = samsung_mipi_dcphy_tx_configure,
 	.power_on  = samsung_mipi_dcphy_tx_power_on,
@@ -1520,6 +1538,15 @@ static const struct phy_ops samsung_mipi_dcphy_tx_ops = {
 	.owner	   = THIS_MODULE,
 };
 
+static const struct phy_ops samsung_mipi_dcphy_rx_ops = {
+	.configure = samsung_mipi_dcphy_rx_configure,
+	.power_on  = samsung_mipi_dcphy_rx_power_on,
+	.power_off = samsung_mipi_dcphy_rx_power_off,
+	.init = samsung_mipi_dcphy_init,
+	.exit = samsung_mipi_dcphy_exit,
+	.owner	   = THIS_MODULE,
+};
+
 static const struct regmap_config samsung_mipi_dcphy_regmap_config = {
 	.name = "dcphy",
 	.reg_bits = 32,
@@ -1532,19 +1559,42 @@ static struct phy *samsung_mipi_dcphy_xlate(struct device *dev,
 					    const struct of_phandle_args *args)
 {
 	struct samsung_mipi_dcphy *samsung = dev_get_drvdata(dev);
+	/* Device trees without the second cell describe the transmitter. */
+	u32 direction = PHY_DIRECTION_TX;
+	u32 type;
 
-	if (args->args_count != 1) {
+	if (args->args_count < 1 || args->args_count > 2) {
 		dev_err(dev, "invalid number of arguments\n");
 		return ERR_PTR(-EINVAL);
 	}
 
-	if (samsung->type != PHY_NONE && samsung->type != args->args[0])
-		dev_warn(dev, "phy type select %d overwriting type %d\n",
-			 args->args[0], samsung->type);
+	type = args->args[0];
+	if (type != PHY_TYPE_DPHY && type != PHY_TYPE_CPHY) {
+		dev_err(dev, "invalid phy type %u\n", type);
+		return ERR_PTR(-EINVAL);
+	}
 
-	samsung->type = args->args[0];
+	if (args->args_count == 2)
+		direction = args->args[1];
 
-	return samsung->tx.phy;
+	if (direction != PHY_DIRECTION_TX && direction != PHY_DIRECTION_RX) {
+		dev_err(dev, "invalid direction %u\n", direction);
+		return ERR_PTR(-EINVAL);
+	}
+
+	/*
+	 * The TRM (section 22.1) does not support the transmitter and the
+	 * receiver running in different modes, so the mode belongs to the
+	 * block.
+	 */
+	if (samsung->type != PHY_NONE && samsung->type != type) {
+		dev_err(dev, "phy type %u conflicts with type %u already selected\n",
+			type, samsung->type);
+		return ERR_PTR(-EINVAL);
+	}
+	samsung->type = type;
+
+	return direction == PHY_DIRECTION_RX ? samsung->rx.phy : samsung->tx.phy;
 }
 
 static int samsung_mipi_dcphy_probe(struct platform_device *pdev)
@@ -1620,6 +1670,13 @@ static int samsung_mipi_dcphy_probe(struct platform_device *pdev)
 
 	phy_set_drvdata(samsung->tx.phy, samsung);
 
+	samsung->rx.phy = devm_phy_create(dev, NULL, &samsung_mipi_dcphy_rx_ops);
+	if (IS_ERR(samsung->rx.phy))
+		return dev_err_probe(dev, PTR_ERR(samsung->rx.phy),
+				     "Failed to create MIPI DC-PHY receiver\n");
+
+	phy_set_drvdata(samsung->rx.phy, samsung);
+
 	phy_provider = devm_of_phy_provider_register(dev, samsung_mipi_dcphy_xlate);
 	if (IS_ERR(phy_provider))
 		return dev_err_probe(dev, PTR_ERR(phy_provider),

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
