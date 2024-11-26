Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6411BD59D93
	for <linux-phy@archiver.kernel.org>; Tue, 26 Nov 2024 09:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0/7vIuB8Us2vy2aS4Isu9bc0bsElEwtkSeDYYG5k0Gw=; b=QXqCYykb9eMdN4
	yzjPy2wpH7x5ai2TT3VBBO72l+ydCSq9n0jimPjXi6/AQdFHUvDTNBBqkKWSuiGQf2Wka7S/hmSTy
	EOtN78wQRkEMHhWc6pE9cPOiaoppUN2hwgFD4fNigjDSXpoZg3S8lEJROVyGLYNj4FGwm+dUODARv
	IPgIQ1rHyn/0RHr7FKmAHML5Tv0P6oxO9SfnNW44tQv6LbOaF1VgsBpaII1gzeggsrE087h9wb49i
	Z2W8AjUBYtzlm7aSn0UHokqAu0k6PaIZUpdAR7Q4M+iePYDO+6peBT+lBpz3SLq/sOxSESFc1zULQ
	7R3yYg6bU+Jrf8pOaFDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrlG-0000000A7MQ-42ks;
	Tue, 26 Nov 2024 09:21:34 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrl6-0000000A7BY-2QKt
	for linux-phy@lists.infradead.org;
	Tue, 26 Nov 2024 09:21:26 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-434a83c6b01so927575e9.0
        for <linux-phy@lists.infradead.org>; Tue, 26 Nov 2024 01:21:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732612883; x=1733217683; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GaBexvzYFyRAvmFf5CNX0T/OFU5Y8NOKhiyYn5h/HqM=;
        b=OiWKCVIBa0JUX7RhwZnA6HDeFV2GlMwkiMC++gN6Ltbw2durLuN18vVQWHKIe08R1Y
         mri6ipdzZeZY1GSKzZBWnEtP4n7SOt15KNZyb2ip9VXiPvOSN4fbCKU3jcer5k+2GIr9
         CnpEjXbD5nxIs7R1vSKFBuP9Y96KerJ4QTn6y4W1YRJ3rQsoDo0+AGNwv+6OCIQhau5r
         VfECySspxMpUl8EILouj8OcWg2+y80CiRwL0moAExiysE3cKOc148znRbuhaxU6Bm4Io
         0cbq21WM1Nde9uruPzjP1nzGntLn5v5VBEXxepw6KSN64rvfV876n1G05ND+8AD2DyTh
         36nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732612883; x=1733217683;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GaBexvzYFyRAvmFf5CNX0T/OFU5Y8NOKhiyYn5h/HqM=;
        b=sMUjE/zevkAo3XN4kUEiRSFOkzR+TmDm1ONWlWMrEpioox7aNdMfaICITHO8+Ofvad
         wzZ6OFZTEJPkJY5kHFu/RuSlqyB79HJO+9ms4RdHddQXxzh0ISJ0YixMccPF3UGk07FR
         fin12xy0c7Kf0nQA2Pw1FpgUSW7b2YeBhquEcmQ1yv2plYXPlH74ZyKxyu4qdvatZ8BK
         z0mpqhkF1x2gcUzzcta+9rnYlX6YzJIqTZ84k09yPHCJy9Im3FcSeEbsSammALiE0nLf
         2Q5K8jOgOKZEceUkt5fhXoArDGerABhL2Lpr8G5+ePDqmmOFPN/ca+WntnwZL6/tOzD5
         jsVw==
X-Gm-Message-State: AOJu0YwEOHJ0viU/PrnxkxlYYsLQ3+uEKNBZi3a7nz+rl8h/WkWfP6aY
	yoko5Yv/aAzA4iGkxLs8GIulH8mjYWpQlmcK3O/2pot+Gc0fsGm0IPmTmj1/r0Q=
X-Gm-Gg: ASbGncvDmmcbT/x0+FAeapauiVeIL//GLbBGgYS16tyN2E9sB1TedCeHCslXRGOefh0
	BH3oeiCSkne8CWKuzO9KJKI4EQlA1FLB5egt4SlYCTDemElfxRXlOZMYC6sk+ATJhwoxS/EnNnA
	WoqJVTIbnXVERtBhZjZ5NmXiYxjWzrSZb5gx55dFyq45QhVt1YNQUIAb8lHPn5X3Xu0E8T5D0NB
	4PG23Rs7Czd51F5Dn1bjP6+g/dEov7KxjVLGJMvgxfukyWyfGVVS2ahpuNjLluUUpNsXesLrVK5
	UrE=
X-Google-Smtp-Source: AGHT+IGx29P8JteJsbR7aMf1tNqIx4rHFyFlQRbqnmSPeJkN3FtdMhddq6elNPOMjEa7BoKccqaeCw==
X-Received: by 2002:a05:6000:1f8c:b0:382:4378:462a with SMTP id ffacd0b85a97d-38260b759c0mr13201703f8f.24.1732612882831;
        Tue, 26 Nov 2024 01:21:22 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3a47sm13027694f8f.73.2024.11.26.01.21.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 01:21:22 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	gregkh@linuxfoundation.org,
	yoshihiro.shimoda.uh@renesas.com,
	christophe.jaillet@wanadoo.fr
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 10/15] phy: renesas: rcar-gen3-usb2: Add support for PWRRDY
Date: Tue, 26 Nov 2024 11:20:45 +0200
Message-Id: <20241126092050.1825607-11-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_012124_622894_A390F3E1 
X-CRM114-Status: GOOD (  20.40  )
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

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

On the Renesas RZ/G3S SoC, the USB PHY has an input signal called PWRRDY.
This signal is managed by the system controller and must be de-asserted
after powering on the area where USB PHY resides and asserted before
powering it off.

The connection b/w the system controller and the USB PHY is implemented
through the renesas,sysc-signal device tree property. This property
specifies the register offset and the bitmask required to control the
signal. The system controller exports the syscon regmap, and the read/write
access to the memory area of the PWRRDY signal is reference-counted, as the
same system controller signal is connected to both RZ/G3S USB PHYs.

Add support for the PWRRDY signal control.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none; this patch is new


 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 66 ++++++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 59f74aa993ac..84459755adf5 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -12,12 +12,14 @@
 #include <linux/extcon-provider.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
+#include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/mutex.h>
 #include <linux/of.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
+#include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
 #include <linux/reset.h>
 #include <linux/string.h>
@@ -111,6 +113,12 @@ struct rcar_gen3_phy {
 	bool powered;
 };
 
+struct rcar_gen3_pwrrdy {
+	struct regmap *regmap;
+	u32 offset;
+	u32 mask;
+};
+
 struct rcar_gen3_chan {
 	void __iomem *base;
 	struct device *dev;	/* platform_device's device */
@@ -118,6 +126,7 @@ struct rcar_gen3_chan {
 	struct rcar_gen3_phy rphys[NUM_OF_PHYS];
 	struct regulator *vbus;
 	struct reset_control *rstc;
+	struct rcar_gen3_pwrrdy *pwrrdy;
 	struct work_struct work;
 	struct mutex lock;	/* protects rphys[...].powered */
 	enum usb_dr_mode dr_mode;
@@ -133,6 +142,7 @@ struct rcar_gen3_phy_drv_data {
 	const struct phy_ops *phy_usb2_ops;
 	bool no_adp_ctrl;
 	bool init_bus;
+	bool pwrrdy;
 };
 
 /*
@@ -587,6 +597,7 @@ static const struct rcar_gen3_phy_drv_data rz_g3s_phy_usb2_data = {
 	.phy_usb2_ops = &rcar_gen3_phy_usb2_ops,
 	.no_adp_ctrl = true,
 	.init_bus = true,
+	.pwrrdy = true,
 };
 
 static const struct of_device_id rcar_gen3_phy_usb2_match_table[] = {
@@ -707,6 +718,55 @@ static int rcar_gen3_phy_usb2_init_bus(struct rcar_gen3_chan *channel)
 	return ret;
 }
 
+static void rcar_gen3_phy_usb2_set_pwrrdy(struct rcar_gen3_chan *channel, bool power_on)
+{
+	struct rcar_gen3_pwrrdy *pwrrdy = channel->pwrrdy;
+
+	/* N/A on this platform. */
+	if (!pwrrdy)
+		return;
+
+	regmap_update_bits(pwrrdy->regmap, pwrrdy->offset, pwrrdy->mask, !power_on);
+}
+
+static void rcar_gen3_phy_usb2_pwrrdy_off(void *data)
+{
+	rcar_gen3_phy_usb2_set_pwrrdy(data, false);
+}
+
+static int rcar_gen3_phy_usb2_init_pwrrdy(struct rcar_gen3_chan *channel)
+{
+	struct device *dev = channel->dev;
+	struct rcar_gen3_pwrrdy *pwrrdy;
+	struct of_phandle_args args;
+	int ret;
+
+	pwrrdy = devm_kzalloc(dev, sizeof(*pwrrdy), GFP_KERNEL);
+	if (!pwrrdy)
+		return -ENOMEM;
+
+	ret = of_parse_phandle_with_args(dev->of_node, "renesas,sysc-signal",
+					 "#renesas,sysc-signal-cells", 0, &args);
+	if (ret)
+		return ret;
+
+	pwrrdy->regmap = syscon_node_to_regmap(args.np);
+	pwrrdy->offset = args.args[0];
+	pwrrdy->mask = args.args[1];
+
+	of_node_put(args.np);
+
+	if (IS_ERR(pwrrdy->regmap))
+		return PTR_ERR(pwrrdy->regmap);
+
+	channel->pwrrdy = pwrrdy;
+
+	/* Power it ON. */
+	rcar_gen3_phy_usb2_set_pwrrdy(channel, true);
+
+	return devm_add_action_or_reset(dev, rcar_gen3_phy_usb2_pwrrdy_off, channel);
+}
+
 static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 {
 	const struct rcar_gen3_phy_drv_data *phy_data;
@@ -763,6 +823,12 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, channel);
 	channel->dev = dev;
 
+	if (phy_data->pwrrdy) {
+		ret = rcar_gen3_phy_usb2_init_pwrrdy(channel);
+		if (ret)
+			goto error;
+	}
+
 	if (phy_data->init_bus) {
 		ret = rcar_gen3_phy_usb2_init_bus(channel);
 		if (ret)
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
