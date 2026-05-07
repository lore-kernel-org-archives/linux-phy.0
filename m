Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 674B2CD3442
	for <linux-phy@archiver.kernel.org>; Thu,  7 May 2026 16:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FNmq+inRMFN+s6QHSfXIF4f/PCfkTj1Eoey8MMwLHVY=; b=2aPjm1/jKNJBX+
	6HdThu3x9Y1Rr3IC7xfoxYq+mbQXeA15L1VzqpxcWzG5kYWyF7DxCbzGPczy+mxP8kUM8K6fEelUQ
	3W21dwBvRieSoUX8zIENhniG8DovxCSma/BnbjffHyoxnWh2XEOkJDQdoMN3ZJo+QjHooAsUYzP3N
	hpbkENiPyg+Yutf9vqjVX3HjGJDd6GevZH9qdi1rQ7W7xsAFGlGRCAAZveXx2l8kxsLf9drYWkPWW
	0ULgSvYi87DPoamW6/Hbe64DXMxujknIvlEGV4aPJ0gZiFpOJZ6G0XhyV5tWRTROC0dpFIC60t/gY
	HR07/GYgEk1g1edVqeBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wL1jW-00000004LpW-3sjK;
	Thu, 07 May 2026 16:37:54 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wL1jU-00000004LoT-3vmd
	for linux-phy@lists.infradead.org;
	Thu, 07 May 2026 16:37:54 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-488a9033b2cso10731225e9.2
        for <linux-phy@lists.infradead.org>; Thu, 07 May 2026 09:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778171871; x=1778776671; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pGCU5B8lEdAiwWeUe+DGhLUkoxpExSxBEl0W5p2Dn8g=;
        b=hpXGml0/CCiVC75gCwEUBfsEp/Vroj1Y06eSebHp9eiWHWKCvZ4juLYNEk7f7B0zFv
         YfpgHKFUyCXF+QZugf1wMpvC14+5u7t8rxS8K7+HUBYr82so77imBYB0NcGnZaZpjts0
         yVUldEbyJgHK+HZISYy6b2qgFrxmYHKcGIdcdZL8VBf6zFHZdsFsZp6SVL0IHJljALky
         KBVAGl8xLMZ7xvb+YlOAGin3C6K7h/I7bRtglh/7ZdObAu7EWNP2tFlvEugJXtcSGV2W
         Z+j9zOW1qeatJ1THtODBMsmz2E0cgJe+ER1O+0wWFZGwzpjbhEXvigaI2ozK+VBCJXf3
         870Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778171871; x=1778776671;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pGCU5B8lEdAiwWeUe+DGhLUkoxpExSxBEl0W5p2Dn8g=;
        b=O0J3zov9NKXMdV0c5e91poqXJW3wTeqObXIYfD/h8s8Zbh4H5o71GWgtMTLWqwm3jF
         DN5EGk2NHPGyM9kzBdFobWl7C8dn+YE498nPIhLp+1joBq8d1uaTjcGNell2n/MEB3gg
         uFT/56k/m7OlVFEUHmNdpO+V660zsVOBuarHPt8IyE0IFtbBvOOww89pRbM4jDEbevmo
         Wqs7HKNkifLAQxz2La45z6Ms9pChF6tTPNAwcqFJVlrBTfJEly+EKT6g0gEytEh4vrZJ
         q6+kNvwBougi8plv9t5hz/kaQQF0RSPlukEPaAwaVGXzbcey3Z+p83/TaF5OVkQqik15
         k+4w==
X-Forwarded-Encrypted: i=1; AFNElJ8+CB9+IPQ/LzcZII7NbrUsq47pOM7cCAo4OTYhZXgbisIc8zcouvbKC+PBKHi8azqqGtu9jYw0JQo=@lists.infradead.org
X-Gm-Message-State: AOJu0YyZa80PIh9fueErN8rqkz4t5B0Fr0qbiiWyyQHpuE7JQPDnlsDP
	FKKDLqHDUVaEmfhFszI93u5JjYnsOJqx2iIJZKnPbCT8pCp6R6nw+rkc
X-Gm-Gg: AeBDieuGuf/xzXKkXXhBBiNf7oSXrRfKHrCi0r+TRn+V6gtoLVMR7LMxciiFEUv8SFM
	SNKsFLCV7HYsde65ebJXl03zLFLHCapL/3aJeCWO35ic7UsOJ9vKafIAHsh500R/bTWy744Cfro
	rI0244KjdGciwf/euNwg99Y7I46oi+ozSpEhBRxr6xO/gJdEHVW86yyAKmawY97okntClI7E/8i
	8vbnmnGUJT5Bhb4CdnwAArI+G8MdBWwRcrkGhIQZ50JwNHKaG5+SvIpOClCkDKQwzR4nO8qQegd
	PlR43XEHAAqc+gn+I5f28s68UpT4ofQ/o5AMFMgohqBxU3zPxKiQ/s2l62wtYcU003kQ6YnmcCu
	fAf8O8SPvcB6JB2YCy0ewbp1dlqzocAmkbc13s6Qo5c37R6K9SsMFEXKIe87wwptcin663078D8
	O2LZaNadkozrSOLq4GSDzCzMjlyfmkfQhL/SirJwdkt/+DIaR3b4tcpfhdFQKtxN8E4PXq2Igpq
	Gmtg6qyafqZDF8trAXf2g==
X-Received: by 2002:a05:600c:c11c:b0:488:c078:bfda with SMTP id 5b1f17b1804b1-48e51f4835dmr101988665e9.26.1778171870182;
        Thu, 07 May 2026 09:37:50 -0700 (PDT)
Received: from dohko.chello.ie (188-141-5-72.dynamic.upc.ie. [188.141.5.72])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48e6428e746sm590165e9.0.2026.05.07.09.37.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2026 09:37:49 -0700 (PDT)
From: David Carlier <devnexen@gmail.com>
To: sven@kernel.org,
	j@jannau.net,
	neal@gompa.dev,
	vkoul@kernel.org,
	neil.armstrong@linaro.org,
	marcan@marcan.st,
	p.zabel@pengutronix.de
Cc: olteanv@gmail.com,
	asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	David Carlier <devnexen@gmail.com>
Subject: [PATCH v2] phy: apple: atc: Fix typec switch/mux leak on unbind
Date: Thu,  7 May 2026 17:37:46 +0100
Message-ID: <20260507163746.108086-1-devnexen@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_093753_000755_E472EA8F 
X-CRM114-Status: GOOD (  15.82  )
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

atcphy_probe_switch() and atcphy_probe_mux() discard the pointers
returned by typec_switch_register() and typec_mux_register(). The
platform driver has no .remove callback, so when the driver unbinds
(e.g. via sysfs unbind) neither typec_switch_unregister() nor
typec_mux_unregister() is called. The framework reference taken in
typec_switch_register() (device_initialize() + device_add() in
drivers/usb/typec/mux.c) is therefore never dropped and the
typec_switch_dev / typec_mux_dev objects stay live forever, with
their sysfs entries under the typec_mux class also left behind. A
subsequent rebind cannot recreate them with the same fwnode-derived
name.

Save the registered handles and unregister them through
devm_add_action_or_reset() so framework registration is torn down
in step with the driver's other devm-managed state. While here,
drop struct apple_atcphy::sw and ::mux: they were declared with the
consumer-side types (typec_switch *, typec_mux *) instead of the
provider-side types and were never assigned.

Scope of the fix
----------------
This patch fixes the registration leak only. It does not close the
use-after-free window that arises when a consumer that obtained a
reference via fwnode_typec_switch_get() / fwnode_typec_mux_get()
outlives the provider unbind: such consumers keep the underlying
typec_switch_dev / typec_mux_dev alive past device_unregister(),
and a later typec_switch_set() / typec_mux_set() still invokes the
registered atcphy_sw_set() / atcphy_mux_set(), which dereferences
the freed apple_atcphy through typec_{switch,mux}_get_drvdata().

On Apple Silicon the relevant consumers are the typec port and the
cd321x controller registered by drivers/usb/typec/tipd/core.c.
Cable plug / orientation events and alt-mode transitions trigger
the .set callbacks via:

  tps6598x_interrupt()                 drivers/usb/typec/tipd/core.c
    tps6598x_handle_plug_event()
      tps6598x_connect()/_disconnect()
        typec_set_orientation()        drivers/usb/typec/class.c
          typec_switch_set(port->sw)   drivers/usb/typec/mux.c
            atcphy_sw_set()            drivers/phy/apple/atc.c

  cd321x_update_work()                 drivers/usb/typec/tipd/core.c
    cd321x_typec_update_mode()
      typec_mux_set(cd321x->mux)       drivers/usb/typec/mux.c
        atcphy_mux_set()               drivers/phy/apple/atc.c

Closing that window requires framework support for invalidating
consumer-held references on provider unbind. The same
consumer-survives-provider pattern has been discussed for the PHY
framework [1] and is out of scope here.

[1] https://lore.kernel.org/linux-phy/aZejMSJ9qqRWb2pX@google.com/

Fixes: 8e98ca1e74db ("phy: apple: Add Apple Type-C PHY")
Signed-off-by: David Carlier <devnexen@gmail.com>
---
 drivers/phy/apple/atc.c | 27 ++++++++++++++++++++++-----
 1 file changed, 22 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/apple/atc.c b/drivers/phy/apple/atc.c
index e9d106f135c5..4156fabad742 100644
--- a/drivers/phy/apple/atc.c
+++ b/drivers/phy/apple/atc.c
@@ -628,9 +628,6 @@ struct apple_atcphy {
 
 	struct reset_controller_dev rcdev;
 
-	struct typec_switch *sw;
-	struct typec_mux *mux;
-
 	struct mutex lock;
 };
 
@@ -2066,15 +2063,25 @@ static int atcphy_sw_set(struct typec_switch_dev *sw, enum typec_orientation ori
 	return 0;
 }
 
+static void atcphy_typec_switch_unregister(void *data)
+{
+	typec_switch_unregister(data);
+}
+
 static int atcphy_probe_switch(struct apple_atcphy *atcphy)
 {
+	struct typec_switch_dev *sw;
 	struct typec_switch_desc sw_desc = {
 		.drvdata = atcphy,
 		.fwnode = atcphy->dev->fwnode,
 		.set = atcphy_sw_set,
 	};
 
-	return PTR_ERR_OR_ZERO(typec_switch_register(atcphy->dev, &sw_desc));
+	sw = typec_switch_register(atcphy->dev, &sw_desc);
+	if (IS_ERR(sw))
+		return PTR_ERR(sw);
+
+	return devm_add_action_or_reset(atcphy->dev, atcphy_typec_switch_unregister, sw);
 }
 
 static int atcphy_mux_set(struct typec_mux_dev *mux, struct typec_mux_state *state)
@@ -2146,15 +2153,25 @@ static int atcphy_mux_set(struct typec_mux_dev *mux, struct typec_mux_state *sta
 	return atcphy_configure(atcphy, target_mode);
 }
 
+static void atcphy_typec_mux_unregister(void *data)
+{
+	typec_mux_unregister(data);
+}
+
 static int atcphy_probe_mux(struct apple_atcphy *atcphy)
 {
+	struct typec_mux_dev *mux;
 	struct typec_mux_desc mux_desc = {
 		.drvdata = atcphy,
 		.fwnode = atcphy->dev->fwnode,
 		.set = atcphy_mux_set,
 	};
 
-	return PTR_ERR_OR_ZERO(typec_mux_register(atcphy->dev, &mux_desc));
+	mux = typec_mux_register(atcphy->dev, &mux_desc);
+	if (IS_ERR(mux))
+		return PTR_ERR(mux);
+
+	return devm_add_action_or_reset(atcphy->dev, atcphy_typec_mux_unregister, mux);
 }
 
 static int atcphy_load_tunables(struct apple_atcphy *atcphy)
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
