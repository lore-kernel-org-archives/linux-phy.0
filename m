Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC644F41818
	for <linux-phy@archiver.kernel.org>; Mon,  9 Mar 2026 17:04:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SQSQS1nIpqy/nRZ7C5FPLeO+QecwM0dWyGglqKTpwks=; b=ffJnGIDbMUx9cU
	lv5dCRXcWxw6s3P8VkHMP846HhcReGsyeUYdzUyqCwD+GxiPKV33Ncvz+5hC7yl4VJaFOVxYYcLBk
	yQaVhaIom2qmXtyNdATQsRB9mDdt3mhUqYUrTObyyUH9TiuQhtYoLvhCOdIg0Hd+ZDz1z4zE/uv/8
	9eLcWhV6/bgiNRLSL+jXozxfcPajnBWpv20aET4bpmpmBmzW/MuY+efyfC4BF+ss5VIzqXPzsa2N1
	jIlUyhjONN8tegaBJ6qCXd5yd8gIyQFoEweaAQdFSMxfroIEEQGCvPYL/45X6PUDFWOFe3Q2ZFAOk
	s7fvaDmk2dZ6UgDrAznQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vze1d-00000007mpv-2NsF;
	Mon, 09 Mar 2026 17:04:13 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vze1b-00000007mpB-2tD1
	for linux-phy@lists.infradead.org;
	Mon, 09 Mar 2026 17:04:12 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-439b9b190easo5661145f8f.2
        for <linux-phy@lists.infradead.org>; Mon, 09 Mar 2026 10:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773075850; x=1773680650; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pR5q5r3Mes7TJAyUzECgg8kfuz01nC9/URwKM/qNQHw=;
        b=Ozee5hA5G1/wun1t3/BKrCvtK0QVIfq5ODNUztH9DX903+Lv7el1jl81ifDT2bmwIm
         3LTEaTX5OPL/PC9Al7OYE/KYlkQlZIfwDkBEzSdqtEOlI4209Whl3b/jQj+D2vmDBrU5
         IP6BqO1ykN3bMr7MRpe6EhXfkU2dtxfzpw3otrQwLRFzRMurh/z7Te6dDEo/JH+2b8Yu
         W8gJJyuq9kxj6/oSmVt2bFFwBERzdb6inOZEpxiUEkL8PeyVXAIJh2XgxlPThYyNFn+h
         UQXyHAqNYfn35TI55ZMRlwZ7tGW9qsrcqC4oul9xopfQqdnHSumcTm0vr9n/OI0HzbLy
         +TVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773075850; x=1773680650;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pR5q5r3Mes7TJAyUzECgg8kfuz01nC9/URwKM/qNQHw=;
        b=jXa5TkKPINGhx8BklHKEWgGC2X7wMKvsVoArrhR+7fLVcPWnYNQyzVbU3y9Ak7s4Ux
         McGFOvJVieK20OOs8Mfh4+62coK9oxVYKXqARDL25jzlMrB/RGCrOwIY4UkJB9mkWHcm
         fqnF3wgWQCSRnKbQEpWE+Xd0nFQKVeDLtN0NCXJ+KmVbozHlmY7QlD554Ad5bpndIH1Z
         4L9DqaulkoLHJsJoTflliucwZHdG0IZ5aL+0/HyRXOASwI9tt4kBJvL4JsiSTJvscFd+
         g7EggZxCP+eoa8Tj9ls3h6wdp5jUid5cbdbXFwlk7wUhisKPBsP1Wv5EKR+kSZMk2heF
         Dzsw==
X-Forwarded-Encrypted: i=1; AJvYcCWEQWNLt8zpSQ6CMnUX4JLOAZyGoEk5Sf9AVvwN+MWaS0pkzdvwnf6GmvfDxWnwU4z27a+EdRIn4v0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzIXC/cbOBS4BRgObfyHv0ptUYo3eCF2AAVQ2bonGAhG6vvh5wD
	UypY3xehHJbwru0wxN6LE9qsa1UKLoh420JYCNZ4111DaCbhB+S5VkLZ
X-Gm-Gg: ATEYQzw+aeI7AP6DaOtHfvrol3IBycJt33BqQDMzBhZA7XJy9vJYePiSdNsiNYGhGRG
	Batcm5LwQj+hLzFnIZXhEcuLNloaGVp/Gv50orYoYTGwnlmMls3hLZeFoya3kFD2kNx0Q9LJg45
	YxEpUcObVSpMh3nXFfENINsjumZdHkqvtw/8U1JRgZCT4DkTq3CMjbytEsKQifkNF5/Ax1LR42o
	KPkqnXY+NkboT7q1sgKsdwXnnSDpP2Llq0QYW6W2++KIWtzd7/ldqUHsKnJ34eXUUj9TogbC20W
	/BQnhGs3vaetu64QB6WQar94PVzE+e6NhwZz4dBin+Nfw2thobvwckJerc+W1Ts9faB6c4Ydg/U
	FEiOua6j/VhsdFoPJfIQNEyebeiZYQI4yn4XAMKzyruFQaUphLHPOzHJrcQ0z+KeVwcJBuoP2et
	vbOdAIRW2QFt6lIsaFvygXeo5v55INCSNO+foVByDLojHwsYT/OFfEEQt6+5KWnEn4a0NpbUOzf
	WyiM6psGkGDbzCirhw7/7xF9VfVPYQAzU1clHixW+Shp/hQCQEPCTh4oqX6vrw=
X-Received: by 2002:a05:6000:2482:b0:439:ad2d:99f1 with SMTP id ffacd0b85a97d-439da86ed01mr19072989f8f.54.1773075849398;
        Mon, 09 Mar 2026 10:04:09 -0700 (PDT)
Received: from ?IPV6:2003:ea:8f46:ce00:5f9:7f3c:5f9a:2a3d? (p200300ea8f46ce0005f97f3c5f9a2a3d.dip0.t-ipconnect.de. [2003:ea:8f46:ce00:5f9:7f3c:5f9a:2a3d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad8d968sm26937481f8f.6.2026.03.09.10.04.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 10:04:09 -0700 (PDT)
Message-ID: <b6161c64-68ac-4524-82ec-5b7d81b86dbc@gmail.com>
Date: Mon, 9 Mar 2026 18:04:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH v2 net-next 3/5] net: phy: move (of_)mdio_find_bus to
 mdio_bus_provider.c
From: Heiner Kallweit <hkallweit1@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Paolo Abeni <pabeni@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 David Miller <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, linux-clk@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <9d5724bc-e525-4f8f-b3f8-b16dd5a1164e@gmail.com>
Content-Language: en-US
In-Reply-To: <9d5724bc-e525-4f8f-b3f8-b16dd5a1164e@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_100411_755008_8277856A 
X-CRM114-Status: GOOD (  15.23  )
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

Functionality outside libphy shouldn't access mdio_bus_class directly.
So move both functions to the provider side. This is a step towards
making mdio_bus_class private to libphy.

Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
 drivers/net/phy/mdio_bus.c          | 44 -----------------------------
 drivers/net/phy/mdio_bus_provider.c | 44 +++++++++++++++++++++++++++++
 2 files changed, 44 insertions(+), 44 deletions(-)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index a30c679feec..c9a495390d2 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -276,50 +276,6 @@ const struct class mdio_bus_class = {
 };
 EXPORT_SYMBOL_GPL(mdio_bus_class);
 
-/**
- * mdio_find_bus - Given the name of a mdiobus, find the mii_bus.
- * @mdio_name: The name of a mdiobus.
- *
- * Return: a reference to the mii_bus, or NULL if none found. The
- * embedded struct device will have its reference count incremented,
- * and this must be put_deviced'ed once the bus is finished with.
- */
-struct mii_bus *mdio_find_bus(const char *mdio_name)
-{
-	struct device *d;
-
-	d = class_find_device_by_name(&mdio_bus_class, mdio_name);
-	return d ? to_mii_bus(d) : NULL;
-}
-EXPORT_SYMBOL(mdio_find_bus);
-
-#if IS_ENABLED(CONFIG_OF_MDIO)
-/**
- * of_mdio_find_bus - Given an mii_bus node, find the mii_bus.
- * @mdio_bus_np: Pointer to the mii_bus.
- *
- * Return: a reference to the mii_bus, or NULL if none found. The
- * embedded struct device will have its reference count incremented,
- * and this must be put once the bus is finished with.
- *
- * Because the association of a device_node and mii_bus is made via
- * of_mdiobus_register(), the mii_bus cannot be found before it is
- * registered with of_mdiobus_register().
- *
- */
-struct mii_bus *of_mdio_find_bus(struct device_node *mdio_bus_np)
-{
-	struct device *d;
-
-	if (!mdio_bus_np)
-		return NULL;
-
-	d = class_find_device_by_of_node(&mdio_bus_class, mdio_bus_np);
-	return d ? to_mii_bus(d) : NULL;
-}
-EXPORT_SYMBOL(of_mdio_find_bus);
-#endif
-
 static void mdiobus_stats_acct(struct mdio_bus_stats *stats, bool op, int ret)
 {
 	preempt_disable();
diff --git a/drivers/net/phy/mdio_bus_provider.c b/drivers/net/phy/mdio_bus_provider.c
index 4b063740574..d50fe6eb4b0 100644
--- a/drivers/net/phy/mdio_bus_provider.c
+++ b/drivers/net/phy/mdio_bus_provider.c
@@ -440,3 +440,47 @@ void mdiobus_free(struct mii_bus *bus)
 	put_device(&bus->dev);
 }
 EXPORT_SYMBOL(mdiobus_free);
+
+/**
+ * mdio_find_bus - Given the name of a mdiobus, find the mii_bus.
+ * @mdio_name: The name of a mdiobus.
+ *
+ * Return: a reference to the mii_bus, or NULL if none found. The
+ * embedded struct device will have its reference count incremented,
+ * and this must be put_deviced'ed once the bus is finished with.
+ */
+struct mii_bus *mdio_find_bus(const char *mdio_name)
+{
+	struct device *d;
+
+	d = class_find_device_by_name(&mdio_bus_class, mdio_name);
+	return d ? to_mii_bus(d) : NULL;
+}
+EXPORT_SYMBOL(mdio_find_bus);
+
+#if IS_ENABLED(CONFIG_OF_MDIO)
+/**
+ * of_mdio_find_bus - Given an mii_bus node, find the mii_bus.
+ * @mdio_bus_np: Pointer to the mii_bus.
+ *
+ * Return: a reference to the mii_bus, or NULL if none found. The
+ * embedded struct device will have its reference count incremented,
+ * and this must be put once the bus is finished with.
+ *
+ * Because the association of a device_node and mii_bus is made via
+ * of_mdiobus_register(), the mii_bus cannot be found before it is
+ * registered with of_mdiobus_register().
+ *
+ */
+struct mii_bus *of_mdio_find_bus(struct device_node *mdio_bus_np)
+{
+	struct device *d;
+
+	if (!mdio_bus_np)
+		return NULL;
+
+	d = class_find_device_by_of_node(&mdio_bus_class, mdio_bus_np);
+	return d ? to_mii_bus(d) : NULL;
+}
+EXPORT_SYMBOL(of_mdio_find_bus);
+#endif
-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
