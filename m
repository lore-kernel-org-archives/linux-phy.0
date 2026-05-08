Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9054CD3445
	for <linux-phy@archiver.kernel.org>; Fri,  8 May 2026 20:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mr2ceZcIHJdNte7dEfmjEJ58mCdma50yRFRv0LZ+sCo=; b=eMC40/wXqfsZyq
	QVc+XefpbqVNsdtJV11i4CTbs3jsNmWloyWMxRnJklYTs2zAE5NlcB36IOvQoz5xDCQfie3cKGNLI
	xFcmbytWcaqD2lEKjOZvzoBYJhmJKZpybLe5JRCwiIU9yhXfIT8nsW7nRKAp4Iqqm7ZpMjHYPAVin
	pLoIBjlY6c29WkIED+37NoGhOlGnmi84ZbsLi1GFNXmuzV83GX6GC/+6/KYkQ+LAsuYZUuJVYP8rx
	99iMJj/ReDa4iKZIgVFJOOw/0KZKcyFiNmNLfjVz/4uiSc7nIyQR4PtWf2gC8JK35/0ZZaaSOrsWh
	XRvTUDjvC9VrXHhrpIhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLRgA-00000007RG9-1dSZ;
	Fri, 08 May 2026 20:20:10 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLRg5-00000007RDy-2M0W
	for linux-phy@lists.infradead.org;
	Fri, 08 May 2026 20:20:07 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-48a7fe4f40bso25784855e9.0
        for <linux-phy@lists.infradead.org>; Fri, 08 May 2026 13:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778271603; x=1778876403; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HP40aocTsGkB8//cxZMak90EHfdlyQYnHT+ooa5+Bl4=;
        b=UJIfr8F6RoQNHxlLPgmvFsRekeNhsL5nT1spDeYsuU81GVtopd3xq6e4GEJtWvVZT3
         Y/mRzCurzVh5RtmyOAJLb75ZLV0jTJM18nMeOfNcIAn6Apr4FNqpAVnQ0LsaTfqACjyH
         UMMXK7wNdQ/5ldu1lxccSQWPLo2pleRwQA0JcsExlnRrYSFhmGdSD84jng1MGMv1IiBw
         cC9QPIMe4TwpoIoAjpVmWvlleb0wDKJsLp5Pt/q4yxJg4uk5FaD+q4ar7mnRh+dP/Hkk
         mljZkHuza/ExQxJMP/xaj6bfxjz2Pz3zJQTeHnIrexbZ4+nVnFiMDyDX/r2ybYC53He9
         YRnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778271603; x=1778876403;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HP40aocTsGkB8//cxZMak90EHfdlyQYnHT+ooa5+Bl4=;
        b=EbB9jzvAAwR84HDF9L/kSB1Dc/yS5KTAWBKHT/GFmsvuTwxDeIRUOFAj5OcJNhq/ZG
         m117S7dluopjOYDzvVOzCj4QQsrrFOEGJ94fY1grFtiEgprlbylXP2uBl+UP6Q4MCgPY
         0CjA9pAmxPuZ0wWxvfSCj7lwpO8GInEtoz1RkouOdy6OmZwG0jWq3NjkR5vNEe0+vmiC
         nc1bfziAe8zPkDi6EXqT2jnMcbDeLX+xJRUuyFjKOxFHubHACePjupRJ6aF8dvdxjmx7
         nUBubcQDEGINWKIRlh+U+2mExFmZyr0F0RCSzmcHUI+XT/nbsh4twXy8kzWxklY/QxI7
         PpWA==
X-Forwarded-Encrypted: i=1; AFNElJ9ZK0gMjfxeiiYlamjO65yquae3FlXkoMYj/VUDJjEWD40FBHsFYoASNF7R/+38B3/ctEqtx7ywKZU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxrZ0x4zmK/Yrk45DFA++APbVumrM9J0lHiecoHDzN9SckIllHP
	KpqXWOVW6cL3MXtv8mhRYrJi48UaREZNaZV1o9qXawy88SudOGXCSb1X
X-Gm-Gg: AeBDiet+/n88otBVjmZyUdP3e6mdgjvRnLEAdT4AlY9VfBBYfpc8lZV9/zSgp3IYH6X
	B4zbKCn8kzjzJnmCC4/sNghODT1GemH5wy3EZkMH9fuNgZtVQAR8zsIc5GW0VohKHV1m+Qj4qh1
	ZYDENTdlvJ4YSJecRp07+hvtDqd68aomKu6Hg5LMVdz7NR+RE4AP9cZEajUU1aRvuq0yx+LVWK4
	gtlml1lwINB58PNKUXu0w+oL55tD9gQHrr+1b2DH639PA9NeNTjety7k7Tr84tr233DpEHArD4E
	vi2mxJL7TQBeMpQwRBQDuQyRq516CZLhJh46hvjgIPhh2r/Q0ciGVW834+vNDjqN3aNwB8Z1C9r
	kV6MOXAEC3SD2kx+10SkOv503HO4JhqtY7K3ur09JLJb2VWCd733nRg7rR33uvbpjrh9s2Pk3/G
	v0gmItUQbeelk2VYAAlBlGpBINJ1s2NGyk6bT2QL3yFRg7XLDVp7WUsHfPujmnIrPUQQFd+kk40
	ka5ptV3I2U=
X-Received: by 2002:a05:600c:3151:b0:48a:7605:751e with SMTP id 5b1f17b1804b1-48e51e0837amr215462255e9.4.1778271603054;
        Fri, 08 May 2026 13:20:03 -0700 (PDT)
Received: from dohko.chello.ie (188-141-5-72.dynamic.upc.ie. [188.141.5.72])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48e6dd328c2sm15825895e9.6.2026.05.08.13.20.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2026 13:20:02 -0700 (PDT)
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
Subject: [PATCH v3] phy: apple: atc: Fix typec switch/mux leak on unbind
Date: Fri,  8 May 2026 21:19:58 +0100
Message-ID: <20260508201958.30060-1-devnexen@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260507163746.108086-1-devnexen@gmail.com>
References: <20260507163746.108086-1-devnexen@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_132005_622570_3B9A65EE 
X-CRM114-Status: GOOD (  16.02  )
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
================
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
Reviewed-by: Vladimir Oltean <olteanv@gmail.com>
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
