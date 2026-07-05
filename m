Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2371CC43602
	for <linux-phy@archiver.kernel.org>; Sun,  5 Jul 2026 10:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pdX/i+FTN4+1+lr6JE0TKG7LeapL7rmwM88mRlFR+t4=; b=UC6VtvArfF3+xG
	lDGPybsYEMAk9L2b9alNav3QGF8YUnWAPRVeWR0AianbPjYkyt3gAWH5TAP9DBoIIWihDgZ4sQYcq
	4Hb6AvrZinetTwJK0ddhT62HkW5stW6SIt/FkCl3ybflKLkwyNi7slEzLLiLKhh/uthXq8sfUxqEj
	TmgHyOLj+/qxlFmX7Kx1ySVGx1k2qaWQo3+L1oHTZaHkO8974oSxGyqj6VyI9asGOdWAJzRPIQT1O
	FpaIzjd81g7LPecrlp5O2v9Z/yCOqqmz6jvuISwa8B8w8aKFbrWn1PrgQMgM5fPu7CeHggk49Ag/f
	86OUdHIBDtUSazw5vX8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgJoy-00000009E5t-3gYR;
	Sun, 05 Jul 2026 10:11:32 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgJow-00000009E47-1Mp8
	for linux-phy@lists.infradead.org;
	Sun, 05 Jul 2026 10:11:31 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-493d92b7db3so791975e9.2
        for <linux-phy@lists.infradead.org>; Sun, 05 Jul 2026 03:11:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783246288; x=1783851088; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NMf0EghcO1wU7SDI12QaKU3M5UeL2s+v1847s1Xy9Ew=;
        b=iWhyc8l8i8I1gKGm2RnMF4W5aw8ZQRLIVhx1XEBs/pPE4S/ijIf209v6v/+kB+CpOd
         ZiAKKjtDAn5i61lOwVCyFX5dvPWJ1QmYMDOXjbfuTX+3MyktbEeryxFuAWbPegU5EH2X
         NE4TgSM34sWvR3HKVSrO+8X9u5KOLjwescmUIFnrh2z7x+EKU4lU+CTSx3ngURhptdd+
         YWWbpAdb9JTh6P09XePWZmApvOcigxRljWR5iSuXfUYDHDMU3ZwBX/vw47qFH2aACxs9
         okrx3UQ6Gp7GrxzTYnVBeM+Ka0JwZFa3Lbif6KNjglYHlsJ/6+pOq4lXBVnhedJpzpY4
         ZipQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783246288; x=1783851088;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NMf0EghcO1wU7SDI12QaKU3M5UeL2s+v1847s1Xy9Ew=;
        b=sjROGp5vmBb5NtdT6lwTWvoo98lUQQiw3G9MuLJpkdLtoGy6E7yGMaNmERTQyc+teN
         WkuvLw3cj+oAJUCer7FyJ6OILuA8BerLLeVDeoCPXrKL/EsS5q90jcUzsG4MwZuDJkKI
         Mv4mKLEeZusJHCy40252LzD0OOMLQfis5GcTeTNu8Mt+1wdJ5VGTP9cb4AAcToGmKsUq
         VQV4l7g8cD3beE0qEEkcFUAs0WvAVs2WXMB4U5Hodi5LoeFu77s3X4kIzzbOsLDqFxjU
         rPFfrEFEAozMLDF5pfCKmwh0G72lBuv/L2MhbhJdgp602Oci9oxLA15SL1NM3KaPKgK/
         GI8g==
X-Gm-Message-State: AOJu0YyKRufHbotArPktXm6nveAR7nKqyzHV+Andze0HMdsjLCtwziLu
	7I51b0i8oAOZi3Hn/oOyc0z/1Y0EEaAla0rMkL3DXiSreyHn143F8Akp
X-Gm-Gg: AfdE7cmunnrq/IVNwNV6lC8R9lhET8wo4cR80yX++6OtLo4OxrAcdXSJNesD+xTPIDe
	7IZTtAX9hBw7kGMgelmgGFSKMEW5QpvGGR1P3b5mTmrY++2rxr8weYwFdOUhMW5Thau4rL4BBag
	VJfzucdpbCmYTX1+O7CMVreOh7iQS5RsGkKmFVlxdPCh5zMdmaNAykKDmvE6fs+lnBnUjvl2rLX
	wynIeSs0/35X5KfDRmYRar44i1JrNCI55KcJ4bn7DtZx6pxVR4SwZpL77ah8wBm27D4poXD7/7b
	+TYRDk7abKBPTyo3Qqg09591KQjVS2aqw+cuDSMKksE8RLCE/MubrEgE92Ctcqq9gscIkXl8+vG
	Yim0ntMmdEPe4tTfkQfAZdcoaHllsZMaqIFluipQSTwf4uA0Kgpbgid9zEF3/TiznecXiMBOUo/
	yG/bSOAoBunYEke+hywfAwfYxVjdVeCQDfJM5Qov5oODLn
X-Received: by 2002:a05:600d:844f:10b0:493:c1bc:79bd with SMTP id 5b1f17b1804b1-493d11f03acmr45744445e9.20.1783246288368;
        Sun, 05 Jul 2026 03:11:28 -0700 (PDT)
Received: from localhost.localdomain ([95.43.220.235])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493c637bbcfsm261382715e9.6.2026.07.05.03.11.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jul 2026 03:11:27 -0700 (PDT)
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
Subject: [PATCH v3 4/4] phy: cpcap-usb: add extcon support
Date: Sun,  5 Jul 2026 13:11:05 +0300
Message-Id: <20260705101105.1798069-5-ivo.g.dimitrov.75@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260705101105.1798069-1-ivo.g.dimitrov.75@gmail.com>
References: <20260705101105.1798069-1-ivo.g.dimitrov.75@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260705_031130_394719_A9BFCEC0 
X-CRM114-Status: GOOD (  16.99  )
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

Register an Extcon device and report the detected cable state.

The driver already determines the type of cable attached during USB cable
detection. Export the detected state through the Extcon framework so
other drivers can consume it using a standard kernel interface.

Signed-off-by: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
---
 drivers/phy/motorola/phy-cpcap-usb.c | 69 ++++++++++++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/drivers/phy/motorola/phy-cpcap-usb.c b/drivers/phy/motorola/phy-cpcap-usb.c
index 78bb1773e537..ba36d110df41 100644
--- a/drivers/phy/motorola/phy-cpcap-usb.c
+++ b/drivers/phy/motorola/phy-cpcap-usb.c
@@ -12,6 +12,7 @@
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/err.h>
+#include <linux/extcon-provider.h>
 #include <linux/io.h>
 #include <linux/module.h>
 #include <linux/of.h>
@@ -123,6 +124,7 @@ struct cpcap_phy_ddata {
 	struct regmap *reg;
 	struct device *dev;
 	struct usb_phy phy;
+	struct extcon_dev *edev;
 	struct delayed_work detect_work;
 	struct pinctrl *pins;
 	struct pinctrl_state *pins_ulpi;
@@ -134,12 +136,23 @@ struct cpcap_phy_ddata {
 	struct regulator *vusb;
 	atomic_t active;
 	enum cpcap_mode mode;
+	int cable;
 };
 
 static bool cpcap_enable_uart;
 module_param_named(enable_uart, cpcap_enable_uart, bool, 0644);
 MODULE_PARM_DESC(enable_uart,
 		 "Enable UART on the USB connector while idle (increases power consumption)");
+
+/* List of detectable cables */
+static const unsigned int cpcap_extcon_cables[] = {
+	EXTCON_USB,
+	EXTCON_USB_HOST,
+	EXTCON_CHG_USB_SDP,
+	EXTCON_CHG_USB_DCP,
+	EXTCON_NONE,
+};
+
 static bool cpcap_usb_vbus_valid(struct cpcap_phy_ddata *ddata)
 {
 	int error, value = 0;
@@ -226,6 +239,46 @@ static void cpcap_usb_try_musb_mailbox(struct cpcap_phy_ddata *ddata,
 		__func__, error);
 }
 
+static void cpcap_usb_set_extcon(struct cpcap_phy_ddata *ddata)
+{
+	int cable;
+
+	switch (ddata->mode) {
+	case CPCAP_CHARGER:
+		cable = EXTCON_CHG_USB_DCP;
+		break;
+	case CPCAP_USB:
+		cable = EXTCON_CHG_USB_SDP;
+		break;
+	case CPCAP_USB_HOST:
+	case CPCAP_DOCK:
+		cable = EXTCON_USB_HOST;
+		break;
+	case CPCAP_IDLE:
+		cable = EXTCON_NONE;
+		break;
+	case CPCAP_UNKNOWN:
+		dev_warn_once(ddata->dev, "called with unknown PHY mode\n");
+		return;
+	}
+
+	if (cable == ddata->cable)
+		return;
+
+	if (ddata->cable == EXTCON_CHG_USB_SDP)
+		extcon_set_state_sync(ddata->edev, EXTCON_USB, false);
+	else if (cable == EXTCON_CHG_USB_SDP)
+		extcon_set_state_sync(ddata->edev, EXTCON_USB, true);
+
+	if (ddata->cable != EXTCON_NONE)
+		extcon_set_state_sync(ddata->edev, ddata->cable, false);
+
+	if (cable != EXTCON_NONE)
+		extcon_set_state_sync(ddata->edev, cable, true);
+
+	ddata->cable = cable;
+}
+
 static void cpcap_usb_detect(struct work_struct *work)
 {
 	struct cpcap_phy_ddata *ddata;
@@ -275,6 +328,7 @@ static void cpcap_usb_detect(struct work_struct *work)
 
 		ddata->mode = CPCAP_DOCK;
 		cpcap_usb_try_musb_mailbox(ddata, MUSB_ID_GROUND);
+		cpcap_usb_set_extcon(ddata);
 
 		/*
 		 * Force check state again after musb has reoriented,
@@ -303,6 +357,7 @@ static void cpcap_usb_detect(struct work_struct *work)
 
 		ddata->mode = CPCAP_USB_HOST;
 		cpcap_usb_try_musb_mailbox(ddata, MUSB_ID_GROUND);
+		cpcap_usb_set_extcon(ddata);
 
 		return;
 	}
@@ -346,6 +401,8 @@ static void cpcap_usb_detect(struct work_struct *work)
 		if (ddata->mode == CPCAP_USB)
 			cpcap_usb_try_musb_mailbox(ddata, MUSB_VBUS_VALID);
 
+		cpcap_usb_set_extcon(ddata);
+
 		return;
 	}
 
@@ -358,6 +415,7 @@ static void cpcap_usb_detect(struct work_struct *work)
 
 	ddata->mode = CPCAP_IDLE;
 	cpcap_usb_try_musb_mailbox(ddata, MUSB_VBUS_OFF);
+	cpcap_usb_set_extcon(ddata);
 
 	return;
 
@@ -777,7 +835,18 @@ static int cpcap_usb_phy_probe(struct platform_device *pdev)
 	if (!otg)
 		return -ENOMEM;
 
+	ddata->edev = devm_extcon_dev_allocate(&pdev->dev, cpcap_extcon_cables);
+	if (IS_ERR(ddata->edev)) {
+		return dev_err_probe(&pdev->dev, PTR_ERR(ddata->edev),
+				     "failed to allocate extcon device\n");
+	}
+
+	error = devm_extcon_dev_register(&pdev->dev, ddata->edev);
+	if (error < 0)
+		return error;
+
 	ddata->mode = CPCAP_UNKNOWN;
+	ddata->cable = EXTCON_NONE;
 	ddata->dev = &pdev->dev;
 	ddata->phy.dev = ddata->dev;
 	ddata->phy.label = "cpcap_usb_phy";
-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
