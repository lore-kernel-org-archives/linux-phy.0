Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5D9EE7719A
	for <linux-phy@archiver.kernel.org>; Sat, 11 Jan 2025 18:56:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/Vl3cyGXrIqJEyYAQKb8JLXN74KbihoyX/QOtDqrDm4=; b=ycQZg+2LXaHWiy
	yB7BjKJPR3rh2m29SjpreOwar4kjG9mk6MaXhxiKciL7mT31mB7pV7WXNGYBhH9jrglJpF6gAC25n
	P4MqP39wmiLbJyQb0bP4ltPaWqz8X1dapmopphZ41KAyAgX0gPwB3bvH1SpwDc34pdsZP9RnIHq3C
	6kT2TZiNWDWxwBRPnnI4YUQpEHoLH47sc76s2AI/ErR15wd1StFSTIuan6B5UlXq/LueVFRVuntDP
	QuLlag6qIyQ1KIrA8mr/SQ+JNnDLO7YHHTM+NRodwr/Amt10EmoHmaBNaW0+URv+3H1aFme7wosEP
	Pevp6fK75/B8Fm2l3ksQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWgf3-00000001HdE-0bpN;
	Sat, 11 Jan 2025 18:56:41 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWgcd-00000001H8a-0rue
	for linux-phy@lists.infradead.org;
	Sat, 11 Jan 2025 18:54:12 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-385dc85496dso132549f8f.3
        for <linux-phy@lists.infradead.org>; Sat, 11 Jan 2025 10:54:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736621649; x=1737226449; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Oa83hNX3CwwEMxEEP2piKXBeDYRk0kIMXtSMe9IMC8Y=;
        b=AQx+RWUZJzqasKh1gxKETTxvl01KkVgrqhZhDCYqAobalKE+daPDZIwciB4Qp9ePCt
         +dqUqabC7Q6KNrmkZeiviSPjp3MFdaPqXr495wFwrvFDl9faIiBuxz8swcHgxoEyHIff
         rz1rBT7uTAZPs1lW6gTLlH4JMlH2W3TWeSd1Q6Lq/UeG7A1r/l+VK85xa+MugdptaVCT
         gwwh4vY/4aWBdaAdhKIePyRaaVA16jZpmH3kKiWN1vo9aXTdan5K5w2TRcwSbDsC7UM9
         VDbsXicbOnw0jf5ARxpzb0/XebYJt0krFQDbYYI4lQDfe3qF+VUxi8gtC3wF83qp7ue9
         ++4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736621649; x=1737226449;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Oa83hNX3CwwEMxEEP2piKXBeDYRk0kIMXtSMe9IMC8Y=;
        b=VImq9wBrk6g+YefjQiphGjsHTF6W+k8DlxsO8Tp35fKjjkpnDKhHcXTw3AWqVcCSxt
         OIX9G/LzYx3Pt60ttuX23gSkvZIgfLDl93ZSLrS9IxqLB6RQjJdi2/RUjPSQ0pdomHMi
         +S4CxAL3yhB6gB97dvyB5K90eJok4wOgR/LFTn1wH57nzlB2TKbFJO/YtNKznv6POA2w
         lQgqTyRHBO3vasHA0UgRw9WBjAo3aU/gYTZT/da/daRpXSQP2/Xho6hnoPyW2x73y7Zd
         LebwG4aLgKt1bE4DHiKbHipSw4HReD4g87LmGlfLDQPk0afB+fB4uvuuuxSs9zQOw33q
         q8Dw==
X-Forwarded-Encrypted: i=1; AJvYcCVympdQs0CnnjKHbKekSMZLh9K6mPbetMTPg90tG0u9pv+H6GWeXxJXVfeZMKP8QdMLKgcBBb+sodQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0zg7slGDdVVX3jETxDobQwb4lhhB6NiP6G/eplGQoprQ3v9mK
	py1r8jVb1x/dqtzgtdCojsclqIXVQGLmRTMjltLC4BLA2P7rUT8fpOMAA1kofvFZ+9VINQREUAE
	C
X-Gm-Gg: ASbGncsvfTXUZUtbu4t/dUxE5Q2biOTGhoCc17fGaOwvj8d23MOOD6DJqX3iiUIGVfB
	95NouRYpUPvhJtwVOdPELAJYMk0RIE8lb3mUopgdwVwYv5tdnNZOabxUDpg2B0M+GjOIOObBPcu
	3n2aBXL2vB/DCs+VtMJwSRENvEYx2EpoarL1e8VrthHgN9WZxPR//3VXg67eaVekS6qpvFhxDQ+
	5f/cPbdGVXO1aMN50bwNh+Q1bDNXxm0TPFvhooP4mpgAbjQTmGcXaP1fiQDOg4h9LsVRBU=
X-Google-Smtp-Source: AGHT+IGjNzKf5xkH+dgFw9vWBtiAwtZ1QisCgXXHwdviDMt1yJXmFajYa2tlVaOtKkX/ki+3PiYKRQ==
X-Received: by 2002:a05:600c:3b11:b0:42c:bb35:b6d0 with SMTP id 5b1f17b1804b1-436e267f21bmr60374135e9.1.1736621649511;
        Sat, 11 Jan 2025 10:54:09 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e4b81ccsm7981691f8f.65.2025.01.11.10.54.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Jan 2025 10:54:08 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Patrice Chotard <patrice.chotard@foss.st.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] phy: stih407-usb: Use syscon_regmap_lookup_by_phandle_args
Date: Sat, 11 Jan 2025 19:54:07 +0100
Message-ID: <20250111185407.183855-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250111_105411_244620_7C2FA0D2 
X-CRM114-Status: GOOD (  11.19  )
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

Use syscon_regmap_lookup_by_phandle_args() which is a wrapper over
syscon_regmap_lookup_by_phandle() combined with getting the syscon
argument.  Except simpler code this annotates within one line that given
phandle has arguments, so grepping for code would be easier.

There is also no real benefit in printing errors on missing syscon
argument, because this is done just too late: runtime check on
static/build-time data.  Dtschema and Devicetree bindings offer the
static/build-time check for this already.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/phy/st/phy-stih407-usb.c | 24 +++++++-----------------
 1 file changed, 7 insertions(+), 17 deletions(-)

diff --git a/drivers/phy/st/phy-stih407-usb.c b/drivers/phy/st/phy-stih407-usb.c
index a4ae2cca7f63..ebb1d0858aa3 100644
--- a/drivers/phy/st/phy-stih407-usb.c
+++ b/drivers/phy/st/phy-stih407-usb.c
@@ -18,8 +18,8 @@
 #include <linux/mfd/syscon.h>
 #include <linux/phy/phy.h>
 
-#define PHYPARAM_REG	1
-#define PHYCTRL_REG	2
+#define PHYPARAM_REG	0
+#define PHYCTRL_REG	1
 
 /* Default PHY_SEL and REFCLKSEL configuration */
 #define STIH407_USB_PICOPHY_CTRL_PORT_CONF	0x6
@@ -91,8 +91,8 @@ static int stih407_usb2_picophy_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
 	struct phy_provider *phy_provider;
+	unsigned int syscon_args[2];
 	struct phy *phy;
-	int ret;
 
 	phy_dev = devm_kzalloc(dev, sizeof(*phy_dev), GFP_KERNEL);
 	if (!phy_dev)
@@ -116,25 +116,15 @@ static int stih407_usb2_picophy_probe(struct platform_device *pdev)
 	/* Reset port by default: only deassert it in phy init */
 	reset_control_assert(phy_dev->rstport);
 
-	phy_dev->regmap = syscon_regmap_lookup_by_phandle(np, "st,syscfg");
+	phy_dev->regmap = syscon_regmap_lookup_by_phandle_args(np, "st,syscfg",
+							       2, syscon_args);
 	if (IS_ERR(phy_dev->regmap)) {
 		dev_err(dev, "No syscfg phandle specified\n");
 		return PTR_ERR(phy_dev->regmap);
 	}
 
-	ret = of_property_read_u32_index(np, "st,syscfg", PHYPARAM_REG,
-					&phy_dev->param);
-	if (ret) {
-		dev_err(dev, "can't get phyparam offset (%d)\n", ret);
-		return ret;
-	}
-
-	ret = of_property_read_u32_index(np, "st,syscfg", PHYCTRL_REG,
-					&phy_dev->ctrl);
-	if (ret) {
-		dev_err(dev, "can't get phyctrl offset (%d)\n", ret);
-		return ret;
-	}
+	phy_dev->param = syscon_args[PHYPARAM_REG];
+	phy_dev->ctrl = syscon_args[PHYCTRL_REG];
 
 	phy = devm_phy_create(dev, NULL, &stih407_usb2_picophy_data);
 	if (IS_ERR(phy)) {
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
