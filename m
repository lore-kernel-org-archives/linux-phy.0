Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C86BC43458
	for <linux-phy@archiver.kernel.org>; Sun,  5 Jul 2026 10:11:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uhC6IF6M1nTm2LBGB5ncURmGsIKQuE/qxzQCAj1bTlM=; b=ChtzdKaP3GyRSU
	jkNoR61MdmS62BsuqKsXDOhAZqH5nWkPcufHD1Jb6fVolbpz0lqLXLaC1XmnQZBGiCZvEk+0nF3Fs
	Z7Ura+8WQPw6HnROZSkyAUwMcaCTwz9oKLBTM+5yTLlKAGEB2fCTt04DhXGN8En00/ZiL6lgMlb6g
	6jSb3AI5LnJNfBdUa3aJ3vEltdPuxOL4Plf/gE+OnZQbUXYM7+Ijh0XMZ/1QeCDpvpFKxcG0aa5HO
	H1AqiB6tCes2IPnygtB9KUwVQ2PyJh6qlM3aGKxWCOeWWjJ0m0G+2r5YRP6svy5JvNsRGPrA+iI94
	nNb5stBaiN6vWXmIQ0dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgJow-00000009E5G-3OS9;
	Sun, 05 Jul 2026 10:11:30 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgJou-00000009E3P-3g7J
	for linux-phy@lists.infradead.org;
	Sun, 05 Jul 2026 10:11:30 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-493b691cb44so12891885e9.0
        for <linux-phy@lists.infradead.org>; Sun, 05 Jul 2026 03:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783246287; x=1783851087; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u8uaQW6+/JgA7WIaJUKENODODPd1YofJcWQi3/LKlyg=;
        b=csNJ6QUEknNc8ruGQa9KRW2g1XthT943D0q7rIgXoR9tyhfYyOoaJVUCb8B5PIECQX
         ZYIh7/BkFclxBZ7yixLZHEiqTSiYCjF0sZqLpnkwAFnf5s/yU/XYW8vdGaLQ37k9DTYb
         4j9pkTh2nP6EKCv4m+0wy6OaOrm12EDhje/2r3NqjmFIB7qFHVkKSyBX4aRxIuKhxmyF
         ZDdIzey+A6vrPiiwt4WCUq5sFb0uzY8178U9MfYMTV1KLW6ABVvXfnssU84WwYfqPVaO
         buDID1m4Q/gZ+gBm7XUA4k5YVD5YCfVu69E8Hc1I8tPQESGnL23/x0gTQwfWNdysadeu
         u8rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783246287; x=1783851087;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=u8uaQW6+/JgA7WIaJUKENODODPd1YofJcWQi3/LKlyg=;
        b=O+ZuUwIlrQxa9TyX0PvtYEEGzrES3AKoWCtZYNallz5Ehpfzss/A6vyDs+0GqRL1qf
         +XRTdPJC2rdgzIlKTO2qYZ8dGMfxwU8+s1qeF5t2B/ZireKTbyBSxkqg3IuvcquZSbgr
         i1f4sboVTzCD/aQ7rxGuWVwRJH0clINBlSD8Kjr6T4VMmCYk6aZCKHR1oQexaknkCIFs
         hfk8Hug0yRdp3xi9NjfopT6q2NbaWCdFPykoFqm5SPBWwY8m6XYNeiKWmKRuxecv2+O7
         EruKFMMHmmva+fIy9StRIJn7AyhXi72zD4lK+xej2/jbbV+4iL5KfG7twiJMPQSCxRZa
         lGcw==
X-Gm-Message-State: AOJu0YzB0nMxG5eQBVDzOL9JeUB5RQEszIok/lKBYkrZD3YDX0AJc/W2
	TTLkQP4Xev2tsSQkevZ1mdTfdjJGSsMMsKXk7WYk+USELQtuskW3c4gE
X-Gm-Gg: AfdE7cmUVL2Zd3m5BP2Z+6m3dfQtuSyxxxFa3ES7Nn62mz01Qzh2PkXBgTI2uWIgAyn
	I9jNSYuzVeN1B5CTQqzhDsjs+QLlZ5ttNjQzJBWdhOtdlZU3kauZn8hE51iMGz5ksZY/Q0W+uzF
	AFaagnSU9sgSiux0lpnIftbwnY95AR3nN6Z8FkGGzAdeXITeVGyK+IH6GxNGhF0hA5rmIBiviKn
	WaExqnL10g9hWqTouOHUNj33hEKbE12s99XGkIjq4fH5rRJBRuswpsMaXo2sOwv1Rmx6uFqHXPt
	ik5kQ+xH6UbaNRdQ9/6PnOW+neJtXMthGQzJCheHPuRbKVPGLGw+F/XfZe4Ojlk5t69vXZCN3jg
	lbWxWl+diVxTV7deeTlC8CHcWy1X9VzSBt0Z2hGEm1gp/ol7MlocWftz4IKJm7iDuH93fquSjNj
	jU4CahR9JdhSIwLish/20eWbVnGkD4xWxiPg==
X-Received: by 2002:a05:600c:528c:b0:492:454c:347c with SMTP id 5b1f17b1804b1-493d11d3bc2mr73993375e9.7.1783246286882;
        Sun, 05 Jul 2026 03:11:26 -0700 (PDT)
Received: from localhost.localdomain ([95.43.220.235])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493c637bbcfsm261382715e9.6.2026.07.05.03.11.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jul 2026 03:11:25 -0700 (PDT)
From: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
Subject: [PATCH v3 3/4] phy: cpcap-usb: add DCP detection and make UART idle mode optional
Date: Sun,  5 Jul 2026 13:11:04 +0300
Message-Id: <20260705101105.1798069-4-ivo.g.dimitrov.75@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260705101105.1798069-1-ivo.g.dimitrov.75@gmail.com>
References: <20260705101105.1798069-1-ivo.g.dimitrov.75@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260705_031129_008141_F57C0294 
X-CRM114-Status: GOOD (  24.34  )
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

Handle DCP separately from USB host connections based on CPCAP charger
detection status.

Make the existing idle UART mode optional via the "enable_uart" module
parameter. When disabled, the PHY remains in its USB/charger detection
configuration while idle. This reduces power usage in idle by 25mW.

Also initialize the PHY into the baseline configuration required for
reliable charger detection during probe.

Fix possible race where HW setup in cpcap_usb_phy_remove() can be run
in parallel with cpcap_usb_detect().

Note: Enabling UART idle mode increases idle power consumption.

Signed-off-by: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
---
 drivers/phy/motorola/phy-cpcap-usb.c | 251 +++++++++++++++++++++------
 1 file changed, 202 insertions(+), 49 deletions(-)

diff --git a/drivers/phy/motorola/phy-cpcap-usb.c b/drivers/phy/motorola/phy-cpcap-usb.c
index 7cb020dd3423..78bb1773e537 100644
--- a/drivers/phy/motorola/phy-cpcap-usb.c
+++ b/drivers/phy/motorola/phy-cpcap-usb.c
@@ -110,6 +110,15 @@ enum cpcap_gpio_mode {
 	CPCAP_OTG_DM_DP,
 };
 
+enum cpcap_mode {
+	CPCAP_UNKNOWN,
+	CPCAP_IDLE,
+	CPCAP_CHARGER,
+	CPCAP_USB,
+	CPCAP_USB_HOST,
+	CPCAP_DOCK,
+};
+
 struct cpcap_phy_ddata {
 	struct regmap *reg;
 	struct device *dev;
@@ -124,10 +133,13 @@ struct cpcap_phy_ddata {
 	struct iio_channel *id;
 	struct regulator *vusb;
 	atomic_t active;
-	unsigned int vbus_provider:1;
-	unsigned int docked:1;
+	enum cpcap_mode mode;
 };
 
+static bool cpcap_enable_uart;
+module_param_named(enable_uart, cpcap_enable_uart, bool, 0644);
+MODULE_PARM_DESC(enable_uart,
+		 "Enable UART on the USB connector while idle (increases power consumption)");
 static bool cpcap_usb_vbus_valid(struct cpcap_phy_ddata *ddata)
 {
 	int error, value = 0;
@@ -175,6 +187,7 @@ static int cpcap_phy_get_ints_state(struct cpcap_phy_ddata *ddata,
 
 	s->id_ground = val & BIT(15);
 	s->id_float = val & BIT(14);
+	s->chrg_det = val & BIT(13);
 	s->vbusov = val & BIT(11);
 
 	error = regmap_read(ddata->reg, CPCAP_REG_INTS2, &val);
@@ -196,8 +209,9 @@ static int cpcap_phy_get_ints_state(struct cpcap_phy_ddata *ddata,
 	return 0;
 }
 
-static int cpcap_usb_set_uart_mode(struct cpcap_phy_ddata *ddata);
+static int cpcap_usb_set_idle_mode(struct cpcap_phy_ddata *ddata);
 static int cpcap_usb_set_usb_mode(struct cpcap_phy_ddata *ddata);
+static int cpcap_usb_set_dcp_mode(struct cpcap_phy_ddata *ddata);
 
 static void cpcap_usb_try_musb_mailbox(struct cpcap_phy_ddata *ddata,
 				       enum musb_vbus_id_status status)
@@ -228,7 +242,7 @@ static void cpcap_usb_detect(struct work_struct *work)
 	vbus = cpcap_usb_vbus_valid(ddata);
 
 	/* We need to kick the VBUS as USB A-host */
-	if (s.id_ground && ddata->vbus_provider) {
+	if (s.id_ground && ddata->mode == CPCAP_USB_HOST) {
 		dev_dbg(ddata->dev, "still in USB A-host mode, kicking VBUS\n");
 
 		cpcap_usb_try_musb_mailbox(ddata, MUSB_ID_GROUND);
@@ -243,7 +257,7 @@ static void cpcap_usb_detect(struct work_struct *work)
 		return;
 	}
 
-	if (vbus && s.id_ground && ddata->docked) {
+	if (vbus && s.id_ground && ddata->mode == CPCAP_DOCK) {
 		dev_dbg(ddata->dev, "still docked as A-host, signal ID down\n");
 
 		cpcap_usb_try_musb_mailbox(ddata, MUSB_ID_GROUND);
@@ -252,15 +266,14 @@ static void cpcap_usb_detect(struct work_struct *work)
 	}
 
 	/* No VBUS needed with docks */
-	if (vbus && s.id_ground && !ddata->vbus_provider) {
+	if (vbus && s.id_ground && ddata->mode != CPCAP_USB_HOST) {
 		dev_dbg(ddata->dev, "connected to a dock\n");
 
-		ddata->docked = true;
-
 		error = cpcap_usb_set_usb_mode(ddata);
 		if (error)
 			goto out_err;
 
+		ddata->mode = CPCAP_DOCK;
 		cpcap_usb_try_musb_mailbox(ddata, MUSB_ID_GROUND);
 
 		/*
@@ -274,17 +287,13 @@ static void cpcap_usb_detect(struct work_struct *work)
 		return;
 	}
 
-	if (s.id_ground && !ddata->docked) {
+	if (s.id_ground && ddata->mode != CPCAP_DOCK) {
 		dev_dbg(ddata->dev, "id ground, USB host mode\n");
 
-		ddata->vbus_provider = true;
-
 		error = cpcap_usb_set_usb_mode(ddata);
 		if (error)
 			goto out_err;
 
-		cpcap_usb_try_musb_mailbox(ddata, MUSB_ID_GROUND);
-
 		error = regmap_update_bits(ddata->reg, CPCAP_REG_USBC3,
 					   CPCAP_BIT_VBUSSTBY_EN |
 					   CPCAP_BIT_VBUSEN_SPI,
@@ -292,38 +301,63 @@ static void cpcap_usb_detect(struct work_struct *work)
 		if (error)
 			goto out_err;
 
+		ddata->mode = CPCAP_USB_HOST;
+		cpcap_usb_try_musb_mailbox(ddata, MUSB_ID_GROUND);
+
 		return;
 	}
 
-	error = regmap_update_bits(ddata->reg, CPCAP_REG_USBC3,
-				   CPCAP_BIT_VBUSSTBY_EN |
-				   CPCAP_BIT_VBUSEN_SPI, 0);
-	if (error)
-		goto out_err;
-
 	vbus = cpcap_usb_vbus_valid(ddata);
 
-	/* Otherwise assume we're connected to a USB host */
-	if (vbus) {
-		dev_dbg(ddata->dev, "connected to USB host\n");
-		error = cpcap_usb_set_usb_mode(ddata);
+	/* Check if we're connected to a USB host */
+	if (vbus && ddata->mode != CPCAP_USB_HOST) {
+		enum cpcap_mode new_mode;
+
+		if (!s.chrg_det || !s.sessvld ||
+		    !(ddata->mode == CPCAP_IDLE ||
+		      ddata->mode == CPCAP_UNKNOWN))
+			return;
+
+		if (s.se1)
+			new_mode = CPCAP_CHARGER;
+		else if (!s.dm && !s.dp)
+			new_mode = CPCAP_USB;
+		else
+			return;
+
+		dev_dbg(ddata->dev, "connected to %s\n",
+			s.se1 ? "DCP" : "USB host");
+
+		error = regmap_update_bits(ddata->reg, CPCAP_REG_USBC3,
+					   CPCAP_BIT_VBUSSTBY_EN |
+					   CPCAP_BIT_VBUSEN_SPI, 0);
 		if (error)
 			goto out_err;
-		cpcap_usb_try_musb_mailbox(ddata, MUSB_VBUS_VALID);
+
+		if (new_mode == CPCAP_CHARGER)
+			error = cpcap_usb_set_dcp_mode(ddata);
+		else
+			error = cpcap_usb_set_usb_mode(ddata);
+
+		if (error)
+			goto out_err;
+
+		ddata->mode = new_mode;
+		if (ddata->mode == CPCAP_USB)
+			cpcap_usb_try_musb_mailbox(ddata, MUSB_VBUS_VALID);
 
 		return;
 	}
 
-	ddata->vbus_provider = false;
-	ddata->docked = false;
-	cpcap_usb_try_musb_mailbox(ddata, MUSB_VBUS_OFF);
+	if (ddata->mode == CPCAP_IDLE)
+		return;
 
-	/* Default to debug UART mode */
-	error = cpcap_usb_set_uart_mode(ddata);
+	error = cpcap_usb_set_idle_mode(ddata);
 	if (error)
 		goto out_err;
 
-	dev_dbg(ddata->dev, "set UART mode\n");
+	ddata->mode = CPCAP_IDLE;
+	cpcap_usb_try_musb_mailbox(ddata, MUSB_VBUS_OFF);
 
 	return;
 
@@ -373,7 +407,7 @@ static const char * const cpcap_phy_irqs[] = {
 	"id_ground", "id_float",
 
 	/* REG_INT1 */
-	"se0conn", "vbusvld", "sessvld", "sessend", "se1",
+	"se0conn", "vbusvld", "sessvld", "sessend", "chrg_det",
 
 	/* REG_INT_3 */
 	"dm", "dp",
@@ -411,43 +445,69 @@ static int cpcap_usb_gpio_set_mode(struct cpcap_phy_ddata *ddata,
 	return 0;
 }
 
-static int cpcap_usb_set_uart_mode(struct cpcap_phy_ddata *ddata)
+static int cpcap_usb_set_idle_mode(struct cpcap_phy_ddata *ddata)
 {
 	int error;
+	unsigned int val;
+	bool enable_uart = cpcap_enable_uart;
 
 	/* Disable lines to prevent glitches from waking up mdm6600 */
 	error = cpcap_usb_gpio_set_mode(ddata, CPCAP_UNKNOWN_DISABLED);
 	if (error)
 		goto out_err;
 
-	if (ddata->pins_uart) {
-		error = pinctrl_select_state(ddata->pins, ddata->pins_uart);
+	if (enable_uart && ddata->pins_uart) {
+		error = pinctrl_select_state(ddata->pins,  ddata->pins_uart);
+		if (error)
+			goto out_err;
+	} else if (!enable_uart && ddata->pins_ulpi) {
+		error = pinctrl_select_state(ddata->pins, ddata->pins_ulpi);
 		if (error)
 			goto out_err;
 	}
 
 	error = regmap_update_bits(ddata->reg, CPCAP_REG_USBC1,
+				   CPCAP_BIT_DP150KPU |
+				   CPCAP_BIT_DP1K5PU |
+				   CPCAP_BIT_DM1K5PU |
+				   CPCAP_BIT_DPPD |
+				   CPCAP_BIT_DMPD |
 				   CPCAP_BIT_VBUSPD,
+				   CPCAP_BIT_DP150KPU |
 				   CPCAP_BIT_VBUSPD);
 	if (error)
 		goto out_err;
 
-	error = regmap_update_bits(ddata->reg, CPCAP_REG_USBC2,
-				   0xffff, CPCAP_BIT_UARTMUX0 |
-				   CPCAP_BIT_EMUMODE0);
+	val = CPCAP_BIT_USBSUSPEND;
+
+	if (enable_uart)
+		val |= (CPCAP_BIT_UARTMUX0 | CPCAP_BIT_EMUMODE0);
+
+	error = regmap_update_bits(ddata->reg, CPCAP_REG_USBC2, 0xffff, val);
 	if (error)
 		goto out_err;
 
-	error = regmap_update_bits(ddata->reg, CPCAP_REG_USBC3, 0x7fff,
-				   CPCAP_BIT_IDPU_SPI);
+	val = CPCAP_BIT_VBUSSTBY_EN |
+	      CPCAP_BIT_VBUSPD_SPI |
+	      CPCAP_BIT_DMPD_SPI |
+	      CPCAP_BIT_DPPD_SPI |
+	      CPCAP_BIT_PU_SPI |
+	      CPCAP_BIT_IDPU_SPI |
+	      CPCAP_BIT_ULPI_SPI_SEL;
+
+	if (!enable_uart)
+		val |= CPCAP_BIT_SUSPEND_SPI;
+
+	error = regmap_update_bits(ddata->reg, CPCAP_REG_USBC3, 0x7fff, val);
 	if (error)
 		goto out_err;
 
-	/* Enable UART mode */
 	error = cpcap_usb_gpio_set_mode(ddata, CPCAP_DM_DP);
 	if (error)
 		goto out_err;
 
+	dev_dbg(ddata->dev, "set %s mode\n", enable_uart ? "UART" : "IDLE");
+
 	return 0;
 
 out_err:
@@ -508,6 +568,42 @@ static int cpcap_usb_set_usb_mode(struct cpcap_phy_ddata *ddata)
 	return error;
 }
 
+static int cpcap_usb_set_dcp_mode(struct cpcap_phy_ddata *ddata)
+{
+	int error = 0;
+
+	/* Disable lines to prevent glitches from waking up mdm6600 */
+	error = cpcap_usb_gpio_set_mode(ddata, CPCAP_UNKNOWN_DISABLED);
+	if (error)
+		return error;
+
+	if (ddata->pins_ulpi) {
+		error = pinctrl_select_state(ddata->pins, ddata->pins_ulpi);
+		if (error) {
+			dev_err(ddata->dev, "could not set usb mode: %i\n",
+				error);
+
+			return error;
+		}
+	}
+
+	error = regmap_update_bits(ddata->reg, CPCAP_REG_USBC3,
+				   CPCAP_BIT_SUSPEND_SPI, 0);
+	if (error)
+		goto out_err;
+
+	error = cpcap_usb_gpio_set_mode(ddata, CPCAP_DM_DP);
+	if (error)
+		goto out_err;
+
+	return 0;
+
+out_err:
+	dev_err(ddata->dev, "%s failed with %i\n", __func__, error);
+
+	return error;
+}
+
 static int cpcap_usb_init_optional_pins(struct cpcap_phy_ddata *ddata)
 {
 	ddata->pins = devm_pinctrl_get(ddata->dev);
@@ -537,9 +633,6 @@ static int cpcap_usb_init_optional_pins(struct cpcap_phy_ddata *ddata)
 		ddata->pins_uart = NULL;
 	}
 
-	if (ddata->pins_uart)
-		return pinctrl_select_state(ddata->pins, ddata->pins_uart);
-
 	return 0;
 }
 
@@ -592,6 +685,65 @@ static int cpcap_usb_init_iio(struct cpcap_phy_ddata *ddata)
 	return error;
 }
 
+static int cpcap_usb_init_usb(struct cpcap_phy_ddata *ddata)
+{
+	struct cpcap_usb_ints_state s;
+	int error;
+	int mask;
+
+	error = cpcap_phy_get_ints_state(ddata, &s);
+	if (error)
+		return error;
+
+	error = cpcap_usb_gpio_set_mode(ddata, CPCAP_UNKNOWN_DISABLED);
+	if (error)
+		return error;
+
+	if (ddata->pins_ulpi) {
+		error = pinctrl_select_state(ddata->pins, ddata->pins_ulpi);
+		if (error)
+			return error;
+	}
+
+	/*
+	 * Do not touch DM/DP PD as this will break charger detection if charger
+	 * is connected before we detect it.
+	 */
+	if (s.se1) {
+		mask = CPCAP_BIT_VBUSEN_SPI | CPCAP_BIT_VBUSPU_SPI |
+		       CPCAP_BIT_SUSPEND_SPI | CPCAP_BIT_ULPI_SPI_SEL;
+	} else {
+		mask = CPCAP_BIT_VBUSEN_SPI | CPCAP_BIT_VBUSPU_SPI |
+		       CPCAP_BIT_DMPD_SPI | CPCAP_BIT_DPPD_SPI |
+		       CPCAP_BIT_SUSPEND_SPI | CPCAP_BIT_PU_SPI |
+		       CPCAP_BIT_ULPI_SPI_SEL;
+	}
+
+	error = regmap_update_bits(ddata->reg, CPCAP_REG_USBC3, mask,
+				   CPCAP_BIT_ULPI_SPI_SEL);
+	if (error)
+		return error;
+
+	/*
+	 * Configure safe DP/DM termination state.
+	 *
+	 * Vendor kernel uses:
+	 *   DP150KPU = enabled
+	 *   all USB pullups/pulldowns = disabled
+	 */
+	error = regmap_update_bits(ddata->reg, CPCAP_REG_USBC1,
+				   CPCAP_BIT_DP150KPU |
+				   CPCAP_BIT_DP1K5PU |
+				   CPCAP_BIT_DM1K5PU |
+				   CPCAP_BIT_DPPD |
+				   CPCAP_BIT_DMPD,
+				   CPCAP_BIT_DP150KPU);
+	if (error)
+		return error;
+
+	return cpcap_usb_gpio_set_mode(ddata, CPCAP_DM_DP);
+}
+
 #ifdef CONFIG_OF
 static const struct of_device_id cpcap_usb_phy_id_table[] = {
 	{
@@ -625,6 +777,7 @@ static int cpcap_usb_phy_probe(struct platform_device *pdev)
 	if (!otg)
 		return -ENOMEM;
 
+	ddata->mode = CPCAP_UNKNOWN;
 	ddata->dev = &pdev->dev;
 	ddata->phy.dev = ddata->dev;
 	ddata->phy.label = "cpcap_usb_phy";
@@ -669,6 +822,10 @@ static int cpcap_usb_phy_probe(struct platform_device *pdev)
 	if (error)
 		goto out_reg_disable;
 
+	error = cpcap_usb_init_usb(ddata);
+	if (error)
+		goto out_reg_disable;
+
 	error = cpcap_usb_init_interrupts(pdev, ddata);
 	if (error)
 		goto out_reg_disable;
@@ -688,17 +845,13 @@ static int cpcap_usb_phy_probe(struct platform_device *pdev)
 static void cpcap_usb_phy_remove(struct platform_device *pdev)
 {
 	struct cpcap_phy_ddata *ddata = platform_get_drvdata(pdev);
-	int error;
 
 	atomic_set(&ddata->active, 0);
-	error = cpcap_usb_set_uart_mode(ddata);
-	if (error)
-		dev_err(ddata->dev, "could not set UART mode\n");
-
+	cancel_delayed_work_sync(&ddata->detect_work);
+	cpcap_usb_set_idle_mode(ddata);
 	cpcap_usb_try_musb_mailbox(ddata, MUSB_VBUS_OFF);
 
 	usb_remove_phy(&ddata->phy);
-	cancel_delayed_work_sync(&ddata->detect_work);
 	regulator_disable(ddata->vusb);
 }
 
-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
