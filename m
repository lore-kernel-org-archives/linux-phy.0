Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45315C44501
	for <linux-phy@archiver.kernel.org>; Sat,  4 Jul 2026 07:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wIR/b1z93Qiq8Gzld+viGuRvlaIfzKTo0Utw/FHbMnA=; b=dCFwYOcYDLSCN6
	YH26zK/koqp1Hmy+d9xIISdKLWoPmAADG6qNGQt+WlE7Xki7wHM3O9y5yg8izagtljF3N8p6koTri
	JbevU/nBQGWZdULpyiFQVyOmVkpiD3cJ4R4Yg5sDIqrPUD0Rs1xj2Us17gh7EU+Vfy30N2p43Bia1
	HZLmzIQBrtA8jquwSeVrl0HSCNTTL18bnPpZwybXHFSEU401opWCh1GbB1mcpgaxoCpyk0o11fRTD
	F+Bq63yHyEE/uHrlawSkJd9gKxEuD1P3xtluMgzA6mppPaeZYoW+8IarBAFMfPlxJtK6DNm6517tt
	T71ZaWc7Yu34mQ3av4bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfuyF-00000008GTB-08oX;
	Sat, 04 Jul 2026 07:39:27 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfuyC-00000008GRf-3rZV
	for linux-phy@lists.infradead.org;
	Sat, 04 Jul 2026 07:39:26 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-493c2b3dc8bso8238595e9.2
        for <linux-phy@lists.infradead.org>; Sat, 04 Jul 2026 00:39:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783150763; x=1783755563; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OzRzJB6u7MYAPuTB3vZnPlGmNDCrN8auNwAuOBFkv0c=;
        b=GUmZlp/tzhtCwL6lc82kSA5w8s33Oq5q6aNp3/NolL/32suYKtXpL7dsUVmpxySS9L
         5X2rp9nQ46ZBaNJN/7SU8SkSfInxznXuSuO9vV/8MYd7i2HZFv6cZraJ22LChn37D5CE
         t9M9+QSn7onnXZ+GMgSe1tUCLTKAjIt87+UMKd0xekmHWjipwWnijqy2sC31HhxcC24L
         Kf3gT/zC5kkN1p6/Ivu64Gcl5ADTVwegh5Al3CbHifkxncM/w2JqZRb1k2jP874+9kar
         DCeBL74L461ga2S+c/1hgZcoBDNOAz9ixPqQTTVAAXbeq36cyEavqb48VikZOZpasfet
         D+2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783150763; x=1783755563;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OzRzJB6u7MYAPuTB3vZnPlGmNDCrN8auNwAuOBFkv0c=;
        b=iucIGweffcwNnrlKZgCX1LADBDVchR1a8cnzM5sPEd8SaIwYurCwWjQs3mYXqp+tNC
         iGB09pfV5zjMKG6njRw5sVaRgwMJANaQg79znHYKnim/OSbkaJ9Jps5vRgP5shfp1eYW
         P+jc6CJ6GBf8wNF1XknLauTslgPjqCksU816lf/+IVnn4Tw51caO0o0jwj/3XEHX8HOi
         C2+b60vVeW9hK17GU76SP+y+5AunVg/ss/XP5qUham98vZMXFw8He0Dyrg8DkALZS/F8
         gahNytByw12s1A3ljsk+YlrhPOPzFb2ZlYt0WjUEUy3uT1lgGGI9GgtYGBVD7PMBoGDN
         ozHA==
X-Gm-Message-State: AOJu0YyIzUUhiSM1/tp7iiDZIxPOdyOdE5Ph/xixK4QpVJOU5JYCeQuR
	CBtvEf0icgz39KbNHEaPBXuZukqlVxbfH7tAsbePOlalxAVZmGNUjgyJ
X-Gm-Gg: AfdE7cnHMzaEMMqsjD0Ad7kJxoyn0nFWfHw8PE2oZdkcYcEZp7EpBraTkcaqZrkwngw
	/0N1VrdYMCsHhMPA2vCmAst+/jw3XxsSpe3lrG3f+gxVWOvyQSppogUXUQk/kF8+YtsH1KeJVv4
	NxtauQv4cwFBcndexZVMlrW/ss1YW96jb4KLdtu6v0NKLBlkG8Cb1XlrX9sdRcFjE8YXWAgDlxA
	8afGO6TfvQ7118gAGX265Mvq9Qkn4EXb3dhNGlIYBnZTRuuqVH5gH4TI7IngA32bvKzgIMT2npm
	5UFjN7aVyhtUE2F9lbCq4nW/C8o7hWCZ81aOcFHkfWz5m12PvFfkLsz221/B3bawt1mN+OU5Nc1
	SLyjv9OKulpAWEnoUPZtglafUqBiFHybNvOtDWu7I3P0AOCnMqY7+AEp0S11AYr6NuF7ap/Ul/N
	WtvQD6p8CCZuEXv0ctUZSMxMNwj8OaX5y6bA==
X-Received: by 2002:a05:600c:314f:b0:493:b2c1:b2f9 with SMTP id 5b1f17b1804b1-493d11cf274mr24679345e9.8.1783150762899;
        Sat, 04 Jul 2026 00:39:22 -0700 (PDT)
Received: from localhost.localdomain ([95.43.220.235])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47a9de1e736sm6565488f8f.7.2026.07.04.00.39.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jul 2026 00:39:22 -0700 (PDT)
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
Subject: [PATCH 5/5] phy: cpcap-usb: add extcon support
Date: Sat,  4 Jul 2026 10:38:43 +0300
Message-Id: <20260704073843.1750458-6-ivo.g.dimitrov.75@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260704073843.1750458-1-ivo.g.dimitrov.75@gmail.com>
References: <20260704073843.1750458-1-ivo.g.dimitrov.75@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260704_003924_990587_83643C00 
X-CRM114-Status: GOOD (  17.34  )
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
 drivers/phy/motorola/phy-cpcap-usb.c | 68 ++++++++++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/drivers/phy/motorola/phy-cpcap-usb.c b/drivers/phy/motorola/phy-cpcap-usb.c
index 3be2b3afaaf4..8978a95c1c19 100644
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
@@ -226,6 +239,43 @@ static void cpcap_usb_try_musb_mailbox(struct cpcap_phy_ddata *ddata,
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
+	}
+
+	if (cable == ddata->cable)
+		return;
+
+	if (ddata->cable == EXTCON_CHG_USB_SDP)
+		extcon_set_state(ddata->edev, EXTCON_USB, false);
+	else if (cable == EXTCON_CHG_USB_SDP)
+		extcon_set_state(ddata->edev, EXTCON_USB, true);
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
@@ -276,6 +326,7 @@ static void cpcap_usb_detect(struct work_struct *work)
 			goto out_err;
 
 		cpcap_usb_try_musb_mailbox(ddata, MUSB_ID_GROUND);
+		cpcap_usb_set_extcon(ddata);
 
 		/*
 		 * Force check state again after musb has reoriented,
@@ -306,6 +357,8 @@ static void cpcap_usb_detect(struct work_struct *work)
 		if (error)
 			goto out_err;
 
+		cpcap_usb_set_extcon(ddata);
+
 		return;
 	}
 
@@ -343,6 +396,8 @@ static void cpcap_usb_detect(struct work_struct *work)
 		if (ddata->mode == CPCAP_USB)
 			cpcap_usb_try_musb_mailbox(ddata, MUSB_VBUS_VALID);
 
+		cpcap_usb_set_extcon(ddata);
+
 		return;
 	}
 
@@ -356,6 +411,8 @@ static void cpcap_usb_detect(struct work_struct *work)
 	if (error)
 		goto out_err;
 
+	cpcap_usb_set_extcon(ddata);
+
 	return;
 
 out_err:
@@ -781,11 +838,22 @@ static int cpcap_usb_phy_probe(struct platform_device *pdev)
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
 	ddata->dev = &pdev->dev;
 	ddata->phy.dev = ddata->dev;
 	ddata->phy.label = "cpcap_usb_phy";
 	ddata->phy.otg = otg;
 	ddata->phy.type = USB_PHY_TYPE_USB2;
+	ddata->cable = EXTCON_NONE;
 	otg->set_host = cpcap_usb_phy_set_host;
 	otg->set_peripheral = cpcap_usb_phy_set_peripheral;
 	otg->usb_phy = &ddata->phy;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
