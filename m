Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CFB7C43458
	for <linux-phy@archiver.kernel.org>; Sun,  5 Jul 2026 07:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pka0e2Ri4lIwktx68sPGYvcdtuWYM8Xxs4BIKGzBL4o=; b=YgcAO8FdXAEIVk
	srY+Uq4pAgulcrALemT6gqOUuBTc7+nOnneQLh9TWm96fCOEmv/zjNrapWKTSPYJ1fNB3InPrI/I9
	9rCcQVihelG4hqWEu3acx92JZDqyRHVK2viQjfpgvTi7+BXAtwU4ThKIEJLy4K9JwXc5WxNj7dsRV
	gPHP6JKAE+SaDIc6HX6wgRokEw0mhRcCxpcHj/1uO3jJ1MCmp+v0bqTyas4hSGWIXUVolAypGkORX
	69LZ3jnrTmK/GBjOw3vG3C7LsXNbTYCeN9LTTnd0PvKYN/N+EQ5cpupnTaG29Gsi73xWaderTPhW2
	/EuAoN6gAfwWzm2LAn2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgHkS-000000094fZ-3NhD;
	Sun, 05 Jul 2026 07:58:44 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgHkP-000000094eO-3Zwb
	for linux-phy@lists.infradead.org;
	Sun, 05 Jul 2026 07:58:43 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-49241dbf9c1so18682685e9.2
        for <linux-phy@lists.infradead.org>; Sun, 05 Jul 2026 00:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783238320; x=1783843120; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8luoQD6yVJJNuYdfTQQskkaqAeRmMzwRB2xqljwPj5g=;
        b=iAQvZHVeucjQ13Xc0W15uvhaqolJ1m480+BFTdti1X7yk/MPTgkjcW7rNHTAXQcBk+
         Z9hkTHpadVzPmSTWGGtloHRkE890+K/gmbrDDmqkPJagI8NTyZRNu5X5y9dzYLk79crF
         Z1CwzavLheC5vJC3+9yFKVwPfxAGxQhhPOGu6whWKmj/zoBTHSNiTzOHaV68Aewg86nK
         NBM7jwCd44TGpd8uyNC/cT5jBYQT+uHjQUy0gL4IfCrlwmB/7m4/V/XORlCA2GWyNkVF
         Df/i7Mv1S3qso+wR2ZAbY89Mmn3gzxkDq9BF71DsHVYuDvKp0P+EM3GbPrep/7+K45YY
         nXIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783238320; x=1783843120;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8luoQD6yVJJNuYdfTQQskkaqAeRmMzwRB2xqljwPj5g=;
        b=aUEkS8Ut/cEyzFEHtrR3WGYZTW8oUvCsoLi/xU7Jlr00yZHoFu5BaxENxUeC322iQ3
         /TU/9qJLdRP6L2z5sIQjoS3M6vY4AR/3C0AGbzsLXzVXwcKMJRuOY2MhtxXyIqNKNIW3
         c7nvCWi2fwU+FVe8AigvkKVMypPegchUTS3h1vhloYqPziWS6q+6bZ12/Lr+skFy+tYL
         QpVz+ZRBPjK+/G/wpsZsHtF37LEKZOUJObT9UV7cO0RkPPzuoVP5C6qHWbmCnKODNBVN
         dx7ZKbFRwFe7/cVvaGWJqdJ/m7I6/pBbMPFhgqJ83tudwisWWU0dzGD89iBD4jYoQViv
         qosA==
X-Gm-Message-State: AOJu0Yz+kgnqqsFnZKvMr9542GcbiLLCoftFMHhfDd+tQncZFAJlwqIC
	qojFKHFNFhnP3knXUfp/GYgP6dHt6hvee3/Z3Fb/HI/6gLQp35ViS8yT
X-Gm-Gg: AfdE7cmaZcELJ1oToNW+r0FXVLn4QvCL45tGdCf2zvXUOoRGyAgvDs6+0KUbXD6P8wO
	vas9TA+X0J0us25pmbDWuOClo9GsDwl7OKZw3cRffv0wbqH7scWqJioPTCNFJEQbIryTvZGmvS4
	Z4oQ+svyQwzRYeLdogv3kh+cfT1Y5NUkOaic/Qe73MluO9ME8k1vFUwR3zll30+bwAuYLBFnn+o
	Q1mOLhzSnU4v/oCzQVcd1FHSKStA2mp6gLtrGbl+0H6KUU7yBnGFOZFOZv/jlYo3qTE6UtLxai1
	ZPYXxdEQwMPmTpli7cTithQOi7n7e3LpsMe3BPb9Ozw+/W0XSd7vpqZW6vcmfLYKCFmk5OcjWTK
	Kl1FI4aXBqy79HT4mPuf8eTFMzoDvqE44+YPwgwo+I3CjF4RP6rtFCwAmaPBcpuPhwe+vj83/1e
	8RgG86SJA6ww5eGpU3t0T6PedQPpeT+hWAHA==
X-Received: by 2002:a05:600d:8654:20b0:493:bfea:2786 with SMTP id 5b1f17b1804b1-493d11f6d34mr45957155e9.32.1783238319733;
        Sun, 05 Jul 2026 00:58:39 -0700 (PDT)
Received: from localhost.localdomain ([95.43.220.235])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493c63bfba1sm305769765e9.15.2026.07.05.00.58.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jul 2026 00:58:38 -0700 (PDT)
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
Subject: [PATCH v2 1/5] phy: cpcap-usb: Prevent line glitches from triggering sysrq
Date: Sun,  5 Jul 2026 10:58:05 +0300
Message-Id: <20260705075809.1793784-2-ivo.g.dimitrov.75@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260705075809.1793784-1-ivo.g.dimitrov.75@gmail.com>
References: <20260705075809.1793784-1-ivo.g.dimitrov.75@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260705_005841_908962_D2227099 
X-CRM114-Status: GOOD (  12.83  )
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

We can get random sysrq events on switching from USB to debug serial
port mode unless we temporarily disable sysrq on serial line for the mode
changes.

Suggested-by: Tony Lindgren <tony@atomide.com>
Signed-off-by: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
---
 drivers/phy/motorola/phy-cpcap-usb.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/motorola/phy-cpcap-usb.c b/drivers/phy/motorola/phy-cpcap-usb.c
index 7cb020dd3423..d1c70c715346 100644
--- a/drivers/phy/motorola/phy-cpcap-usb.c
+++ b/drivers/phy/motorola/phy-cpcap-usb.c
@@ -20,6 +20,7 @@
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
 #include <linux/slab.h>
+#include <linux/sysrq.h>
 
 #include <linux/gpio/consumer.h>
 #include <linux/mfd/motorola-cpcap.h>
@@ -413,7 +414,12 @@ static int cpcap_usb_gpio_set_mode(struct cpcap_phy_ddata *ddata,
 
 static int cpcap_usb_set_uart_mode(struct cpcap_phy_ddata *ddata)
 {
-	int error;
+	int old_sysrq_mask, error;
+
+	/* Disable sysrq to prevent random sysrq events on line glitches */
+	old_sysrq_mask = sysrq_mask();
+	if (old_sysrq_mask & 1)
+		sysrq_toggle_support(old_sysrq_mask & ~1);
 
 	/* Disable lines to prevent glitches from waking up mdm6600 */
 	error = cpcap_usb_gpio_set_mode(ddata, CPCAP_UNKNOWN_DISABLED);
@@ -445,13 +451,13 @@ static int cpcap_usb_set_uart_mode(struct cpcap_phy_ddata *ddata)
 
 	/* Enable UART mode */
 	error = cpcap_usb_gpio_set_mode(ddata, CPCAP_DM_DP);
-	if (error)
-		goto out_err;
-
-	return 0;
 
 out_err:
-	dev_err(ddata->dev, "%s failed with %i\n", __func__, error);
+	if (old_sysrq_mask & 1)
+		sysrq_toggle_support(old_sysrq_mask);
+
+	if (error)
+		dev_err(ddata->dev, "%s failed with %i\n", __func__, error);
 
 	return error;
 }
-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
