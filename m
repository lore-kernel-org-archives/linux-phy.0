Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E512C87FDA
	for <linux-phy@archiver.kernel.org>; Tue,  5 Aug 2025 12:42:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wc0jX5rGsFlVhJ66BOpdQumjkta2B7ky8SXIDD3Hu/E=; b=WPuUFfBeFwPgZf
	dmlLUQrNUfKmddrRYymuv5EXgP/FqpsaUaQvtCAkoiHcLMdloclt2f1uy0xYIp2X0XPG+Vp+WxuzN
	4PLcW1JMARO3jX7q3W+ThWrMmpVqfPxrR0PVzv5Paf6G3IejxhDbmGLCGjlraCaN33fyCiaK1JRg0
	JVpXntzbicUS8qsx05LIvRL8RU8U/yckfgZeEmYP+/GXIYW+DzPDEpFHjctl/wiu6AWQC3PX/iyjz
	OiLNPnC7XW2LAoEQNj5orakFPZxDLX3AlucCYiTuGTi5ldx4TQp7LYrWAcZ6J3VDzaAK5iOpOfDak
	FIsjQAXEGNvLTO7+vwMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujH01-0000000Ck5R-40Ru;
	Tue, 05 Aug 2025 12:42:37 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujGja-0000000ChXw-3T3A
	for linux-phy@lists.infradead.org;
	Tue, 05 Aug 2025 12:25:39 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-3b78d13bf10so5000459f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 05 Aug 2025 05:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754396737; x=1755001537; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gPoAix/bRF53Va2EIT5HaYLDIWPycCrapatLpJoZNqQ=;
        b=HKMcOLGBXR5nevAsVi2IcfynQ+yS+VYpWZhnOwlRhwMiPOR+HT74ir1zr3AMnjAccH
         GLd4yTXQTVey7lDp4uowD0XkOxx1icMfYF/aHnq1i9PD6VpA1o5lO6FU8eHCAE+zYXXR
         AuoeWQ5NX1yb9q+ss7VH26ZScsBaTPxvp61CUgj41xbQnfaP6V86CDwvwvmsu7yTYIfj
         8TNUv+78ZN1BpRh1HDWezGU7MNG5wzZpazvn33pUuLNLR1V92E5+uyLSmw0Im64Wb484
         UVehzVxUPm3ukfKXy+4Iew6Q88Fu8W8biPwIgJwR8NIFMUg6kopKF4JUhELoKYDnxux3
         3Xkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754396737; x=1755001537;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gPoAix/bRF53Va2EIT5HaYLDIWPycCrapatLpJoZNqQ=;
        b=cfP+hv8Uhs0QjY1MTzeb0zEaiqO1F4RF3gVR7gaCyqUSCM/ywricWKelcjaPDCqEM+
         C5a0SeqBcnhCsgmHfKggwJXLOcBPeLU0GJqnEMcLH5UGCV9CHhF49LhKdRu3S6QQRPw1
         ueY2B2K/jV+Zd9tLgmWq1blq/HOz7jAa6QMcXEQy8TLD8RuPGrEt0cH1ytbHaKMI9mIa
         tezkfhh9Nu/I2Vp3xB1WsJROdYw6TjKvil9qxDFr7rGImHx6Ji9HA37dBWGSOej0q+gI
         tF5gj+cm+WafOw68PZnE9bQ3tvUHeRo1TyEZht+TIMZxQwrYjh0O6njlPQqcBgs/ScWB
         3uKA==
X-Gm-Message-State: AOJu0YxmGBZ0IcYwtLZL/w+qS7ugpXaMTXiCDmKEa+hqUNW4JEraJscm
	piOgOwUqcewRENwMwE9ucXwtWuf6b3hD+NQuhpSu6POb36tE1RX1k+kd
X-Gm-Gg: ASbGncvHiECZ8rNGHv0VkYoxRuyOhTrC6kukqnBzH8jwyuBvstBuxwFBDHdj4t0+map
	0c2yE5heXIRQ3v/alDa65iu4xvqp4YzCLDvHUvf0KZuEVjJdzrOuGMaiY12qB0gc3xSw0UaaYb2
	vLAOviF+RkDFF4afuiksv3nQcB9dhiB21j4wkTj8kUf/S38mqRKLMLZ40T+gugYM6EBhbr03rbs
	t64rVCusX5MXxmUKMcy1qSYTqZDr4zzYEOS+RCcGknF67xdke/xZkyihj+Ew4zsO4nM+vobJAha
	MZQ0vnddshufSFrrtSWVcmgmB8AErDChsKhISdwj91A/SUjgNLvoSNGGkCuB4QYUn5x4Xn9dO4U
	KYVfv7FDhofK70EStev8EC778V/0fRqG4OuolOwhJKNXzfTOtzp+h1COfckinrBtmF8FtZc9EEp
	QWvZI260hF
X-Google-Smtp-Source: AGHT+IFSdsPuCN/qny8RYo8+ZZ+mjH0Fd3pV2IufyMr8jv2+EhjfpeBL35jepSfukzO4fESmn28k9Q==
X-Received: by 2002:a05:6000:2508:b0:3b7:8412:4540 with SMTP id ffacd0b85a97d-3b8d94bb098mr8756244f8f.27.1754396737154;
        Tue, 05 Aug 2025 05:25:37 -0700 (PDT)
Received: from iku.Home (97e54365.skybroadband.com. [151.229.67.101])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c48a05bsm19153986f8f.69.2025.08.05.05.25.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Aug 2025 05:25:36 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 2/5] phy: renesas: rcar-gen3-usb2: Store drvdata pointer in channel
Date: Tue,  5 Aug 2025 13:25:26 +0100
Message-ID: <20250805122529.2566580-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250805122529.2566580-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20250805122529.2566580-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_052538_869557_0B81BBAB 
X-CRM114-Status: GOOD (  15.50  )
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

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Store the SoC-specific driver data pointer (struct rcar_gen3_phy_drv_data)
directly in struct rcar_gen3_chan instead of copying individual flags
into separate fields. Update all references to use channel->drvdata->flags,
removing the redundant soc_no_adp_ctrl and utmi_ctrl members from the
channel structure.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 47beb94cd424..cfa9667c7680 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -122,6 +122,7 @@ struct rcar_gen3_phy {
 struct rcar_gen3_chan {
 	void __iomem *base;
 	struct device *dev;	/* platform_device's device */
+	const struct rcar_gen3_phy_drv_data *drvdata;
 	struct extcon_dev *extcon;
 	struct rcar_gen3_phy rphys[NUM_OF_PHYS];
 	struct regulator *vbus;
@@ -133,8 +134,6 @@ struct rcar_gen3_chan {
 	bool extcon_host;
 	bool is_otg_channel;
 	bool uses_otg_pins;
-	bool soc_no_adp_ctrl;
-	bool utmi_ctrl;
 };
 
 struct rcar_gen3_phy_drv_data {
@@ -204,7 +203,7 @@ static void rcar_gen3_enable_vbus_ctrl(struct rcar_gen3_chan *ch, int vbus)
 	u32 val;
 
 	dev_vdbg(ch->dev, "%s: %08x, %d\n", __func__, val, vbus);
-	if (ch->soc_no_adp_ctrl) {
+	if (ch->drvdata->no_adp_ctrl) {
 		if (ch->vbus)
 			regulator_hardware_enable(ch->vbus, vbus);
 
@@ -290,7 +289,7 @@ static bool rcar_gen3_check_id(struct rcar_gen3_chan *ch)
 	if (!ch->uses_otg_pins)
 		return (ch->dr_mode == USB_DR_MODE_HOST) ? false : true;
 
-	if (ch->soc_no_adp_ctrl)
+	if (ch->drvdata->no_adp_ctrl)
 		return !!(readl(ch->base + USB2_LINECTRL1) & USB2_LINECTRL1_USB2_IDMON);
 
 	return !!(readl(ch->base + USB2_ADPCTRL) & USB2_ADPCTRL_IDDIG);
@@ -421,7 +420,7 @@ static void rcar_gen3_init_otg(struct rcar_gen3_chan *ch)
 	      USB2_LINECTRL1_DMRPD_EN | USB2_LINECTRL1_DM_RPD;
 	writel(val, usb2_base + USB2_LINECTRL1);
 
-	if (!ch->soc_no_adp_ctrl) {
+	if (!ch->drvdata->no_adp_ctrl) {
 		val = readl(usb2_base + USB2_VBCTRL);
 		val &= ~USB2_VBCTRL_OCCLREN;
 		writel(val | USB2_VBCTRL_DRVVBUSSEL, usb2_base + USB2_VBCTRL);
@@ -487,7 +486,7 @@ static int rcar_gen3_phy_usb2_init(struct phy *p)
 	if (rphy->int_enable_bits)
 		rcar_gen3_init_otg(channel);
 
-	if (channel->utmi_ctrl) {
+	if (channel->drvdata->utmi_ctrl) {
 		val = readl(usb2_base + USB2_REGEN_CG_CTRL) | USB2_REGEN_CG_CTRL_UPHY_WEN;
 		writel(val, usb2_base + USB2_REGEN_CG_CTRL);
 
@@ -778,6 +777,7 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 		ret = -EINVAL;
 		goto error;
 	}
+	channel->drvdata = phy_data;
 
 	platform_set_drvdata(pdev, channel);
 	channel->dev = dev;
@@ -788,12 +788,9 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 			goto error;
 	}
 
-	channel->soc_no_adp_ctrl = phy_data->no_adp_ctrl;
 	if (phy_data->no_adp_ctrl)
 		channel->obint_enable_bits = USB2_OBINT_IDCHG_EN;
 
-	channel->utmi_ctrl = phy_data->utmi_ctrl;
-
 	spin_lock_init(&channel->lock);
 	for (i = 0; i < NUM_OF_PHYS; i++) {
 		channel->rphys[i].phy = devm_phy_create(dev, NULL,
@@ -808,7 +805,7 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 		phy_set_drvdata(channel->rphys[i].phy, &channel->rphys[i]);
 	}
 
-	if (channel->soc_no_adp_ctrl && channel->is_otg_channel)
+	if (channel->drvdata->no_adp_ctrl && channel->is_otg_channel)
 		channel->vbus = devm_regulator_get_exclusive(dev, "vbus");
 	else
 		channel->vbus = devm_regulator_get_optional(dev, "vbus");
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
