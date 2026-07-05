Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9D72C44501
	for <linux-phy@archiver.kernel.org>; Sun,  5 Jul 2026 07:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TLVICsI2YMtkYfFxdlW4FzuSSVzpxMP8eBM22buQSRY=; b=wIZjKhOGG/moJt
	35ojY0aT9gMv4K88+SVi0Qctaukv2P1RkJrdGLA9ZnZPavZrZfT1fdvHV/j1HI2m4yj37YhzNN2T7
	y55h4HH+DzbH+RyQLyhUezQoN5nbVdSfLGE80Y9/eocMKp67vjTiKrKfAAbq6Scb4TfXDe00C8ZmH
	gMrI3N/lTgLXbPeV8DEsDP90j39u3jnaS5IcQGtpt6rzD/Nq+Jlc6o2RlviTHapGW+L9DU5lYl032
	CVKU3MJeBeq0/FMGezciWL8qufj8XLLxlQgpBC4VNvECuqt9d2kR4ixF4S8KHq1K11lwszO8cxsQj
	3FV/QaCxUoBN8EcKgjCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgHka-000000094iz-1q0H;
	Sun, 05 Jul 2026 07:58:52 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgHkX-000000094hW-3xCW
	for linux-phy@lists.infradead.org;
	Sun, 05 Jul 2026 07:58:52 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-493c733f15aso19688025e9.0
        for <linux-phy@lists.infradead.org>; Sun, 05 Jul 2026 00:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783238328; x=1783843128; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZByqymHXsan4FAIX/tL67BkYQ4wx58LlUk2KuZbE1aE=;
        b=NbwQAQK/1Ujjexxb8Is7r3osabT82LUFjvXX4OTlqKL6q0ymaY8IeNy4DtuH8ez6oB
         LhwiKdkYwi3DYkq5tCy5yR69m3mU9I9CaNckd3ZxHszFOpQiUNkF3Czj3sxisnk/TNT2
         5fA76gmoN7/x6A/6crLZqlpJ3/0+HZd5wVvEIrAJsfO1zrj1q1c0oddredmsIHTiC6eZ
         GSdVv9yGQqzjUT/GzqGk6jtB+uNMh7wRnTAnAywrhwJeEE/Q28Yv2WxQ7lgxYO2lqfz4
         pHhpw+R67jGxuDPkAPzSz7D0NmguLmD6qDWK3gHMJIgqGDpqIHIwrXykVzS8xZnXnc/L
         NfFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783238328; x=1783843128;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZByqymHXsan4FAIX/tL67BkYQ4wx58LlUk2KuZbE1aE=;
        b=MmOcp+gPhvoX07dk+KAfPpka4j2F8biY8szODpyQKlTbQ/3oJ7VXuky1zLbyVEs1dF
         8Bpf2kasDwR8reFVT/yQ2dd3HX7tQFlMFJrh9Y1ORF7TXx55YEuHG2gcnBrWTuwhQQGf
         pF0CgX3dfTJoahHoMpsriBpqrbWbfMDrR7S8wcO9Kx7yfk+0kNfK5k9MfwUMp1eftne2
         pAJaW0vu+Dll5bbHGEu2YdyNH820BK/w4pVXRjHiEtzqQ3AsRjiYZ2YkuAeUy0WdPTwA
         7Tp5fn9/+mDNSANhaJHTGpo51Ptsy35fY3k7ygBJu4yTz8VdIrU24cJAvxnuDfeITPN2
         vzdg==
X-Gm-Message-State: AOJu0Yx+TtiXjbUcxS+QqNJ2NKcEQinkk7UkgkjJ5r/kHDId09fEprE8
	sbUKnCVwifcwxmEJkHyh7ZSE+B8n5LLdJM4yFrpmMB9yTNlxOkwW6+R/
X-Gm-Gg: AfdE7cmRW+w1iu7AEIMs23xg1685n+kqgfT9J942Nu911l6ULDOxaHXxJq0rqKugEK2
	UZ3YVmcRrtIhxykz/Y3uW4foz8i0KkoDLa5J3dOPBk/xYZC5ar6lKj+HCCW6COr5O5Ji71/SlCX
	iYdogZATmlJgHLSBp5TrcvRuPpOua6V4oZL1tUP8JpP8SGQPq+zYmJm0TttxPFEkgJwCxjD9veF
	0s6nsb2/+68CjLSSr02Zj82GYfHpw9JMG0F56hk0mUq8aosuiEycBo9Elf7RG9wxDJXHNMo+Xbf
	jPvnz6MQs+eLaJn7NcuCzvfKt2UFzWlSf7QctKikYA3W2Buo68VZlLxyg9UMy8RoIt5+cbOw+Rr
	0scqlnZnpAMesuPTCG1/8oRxl3F7/e9EpbIZdhZi1u5ZI17V1gEkOabxpLoJoKk3AvTAR4hO93S
	sAFsFGGIwnTCFdXEQocjZwnXbseKhcLhqltQ==
X-Received: by 2002:a05:600c:8208:b0:493:d216:ed8a with SMTP id 5b1f17b1804b1-493d216ef2amr57217655e9.16.1783238328308;
        Sun, 05 Jul 2026 00:58:48 -0700 (PDT)
Received: from localhost.localdomain ([95.43.220.235])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493c63bfba1sm305769765e9.15.2026.07.05.00.58.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jul 2026 00:58:47 -0700 (PDT)
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
Subject: [PATCH v2 5/5] phy: cpcap-usb: add extcon support
Date: Sun,  5 Jul 2026 10:58:09 +0300
Message-Id: <20260705075809.1793784-6-ivo.g.dimitrov.75@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260705075809.1793784-1-ivo.g.dimitrov.75@gmail.com>
References: <20260705075809.1793784-1-ivo.g.dimitrov.75@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260705_005850_015281_148CD996 
X-CRM114-Status: GOOD (  16.89  )
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
index e776e54bbfd5..f1f2fe818324 100644
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
@@ -124,6 +125,7 @@ struct cpcap_phy_ddata {
 	struct regmap *reg;
 	struct device *dev;
 	struct usb_phy phy;
+	struct extcon_dev *edev;
 	struct delayed_work detect_work;
 	struct pinctrl *pins;
 	struct pinctrl_state *pins_ulpi;
@@ -135,12 +137,23 @@ struct cpcap_phy_ddata {
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
@@ -227,6 +240,46 @@ static void cpcap_usb_try_musb_mailbox(struct cpcap_phy_ddata *ddata,
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
@@ -276,6 +329,7 @@ static void cpcap_usb_detect(struct work_struct *work)
 
 		ddata->mode = CPCAP_DOCK;
 		cpcap_usb_try_musb_mailbox(ddata, MUSB_ID_GROUND);
+		cpcap_usb_set_extcon(ddata);
 
 		/*
 		 * Force check state again after musb has reoriented,
@@ -304,6 +358,7 @@ static void cpcap_usb_detect(struct work_struct *work)
 
 		ddata->mode = CPCAP_USB_HOST;
 		cpcap_usb_try_musb_mailbox(ddata, MUSB_ID_GROUND);
+		cpcap_usb_set_extcon(ddata);
 
 		return;
 	}
@@ -345,6 +400,8 @@ static void cpcap_usb_detect(struct work_struct *work)
 		if (ddata->mode == CPCAP_USB)
 			cpcap_usb_try_musb_mailbox(ddata, MUSB_VBUS_VALID);
 
+		cpcap_usb_set_extcon(ddata);
+
 		return;
 	}
 
@@ -357,6 +414,7 @@ static void cpcap_usb_detect(struct work_struct *work)
 
 	ddata->mode = CPCAP_IDLE;
 	cpcap_usb_try_musb_mailbox(ddata, MUSB_VBUS_OFF);
+	cpcap_usb_set_extcon(ddata);
 
 	return;
 
@@ -785,7 +843,18 @@ static int cpcap_usb_phy_probe(struct platform_device *pdev)
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
