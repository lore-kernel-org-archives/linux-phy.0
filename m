Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25017C43602
	for <linux-phy@archiver.kernel.org>; Sat, 27 Jun 2026 17:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tcyuX6P/7WQ5Lee4T09oBUpmsK8E6bSo+BjPQdUXw7c=; b=HJ0mMPwVhzw2vG
	Ytze8Tgv05fSDUEN3aFOVpSmUyMIzDrQxFU7p9x4G3o29Ngx3lFnMfVDbEfkr14NHck9iRUq7ouTS
	P+wm47o199vQIj7IA0b16ZJTyj/za7eF9z4KFi3b/kuUbNl3V6Ri9Mmt12kgatpwAgQC7sGuTwDAW
	bH5nwDhEF1xMkBsCBTUiAesjHfsAi0DUuFUYB7HVv6DPnzgRv7NydbkrBczkug+EsGeLtPFO+6EXO
	CrxEWNoPHlTNCZDLt3UblhpxntnGgxyYfMUGWZdM1Nr9jcSHlGWJ5GUsY7R+Kp7JsAsCAAhQb4H7d
	3EcdlVi8I5zYPVUTOnZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdWte-0000000CfXX-3OUM;
	Sat, 27 Jun 2026 17:32:50 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdWtc-0000000CfWO-1h1o
	for linux-phy@lists.infradead.org;
	Sat, 27 Jun 2026 17:32:49 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4926ee9e8d9so7713855e9.0
        for <linux-phy@lists.infradead.org>; Sat, 27 Jun 2026 10:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782581566; x=1783186366; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ihXC91kXXIkZLdL67dRJWock4PheYhmjDZA0RD2CU3M=;
        b=SkcamE+mOROAbj/QH48g4BIu8z1A2YDCkZccDqmcOSDfbg3VepRXg1dWU/CNF1NGTX
         t+MABncB/aVzL4vdm1hhfCvxUJwVmLGQ1W04QOABsAMakVh/11iO2vGEYT342L4B8a6h
         Ic0+SaB7909zMG+gQSfurjbLCoz4buiR3Q+ffJj+QoGqC1hpTnhQbKygZoJrg4+PkmY4
         wbDE7GzUpTRibRi7FvQbe5ti/aXHxIYhpKlU07aL8ZNzZSl+MP3VFTQKxRskFCiBwevC
         GvULt48eRXzxtcjUBytWWltc6c+ZziHpDKZMJxxbc6UulbK9f65l3IbY3TP/w4TZ9H2k
         B6ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782581566; x=1783186366;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ihXC91kXXIkZLdL67dRJWock4PheYhmjDZA0RD2CU3M=;
        b=QA09jbT+pntY1PDvObZ5tY4e6EqRUjaUT1hnobAQB4sCdfyCRCvUNaOyWwN5v5UPge
         TQj1xr/E0Wrvval5KSxwWOgyIyMtR8aBmfHA4mdIWD4byJh3oi5auQXv3gv34+z7mT+Y
         +LMa4dL4SHoQKntpv3PstF0xXx2tcnn/EfAKHM/ZA4HdNEBul6Mvnga7/eKnj1JD8QCn
         w3mIsHCU2fLHOEp9Locr5WF4eTnQQT4Z9dgED2ZjrkrUMw0adChGm7YKowiMRXgp7LhN
         92Kky81E8nyv6TNsz5dpkfMdmwAUZJIgDdCvrwXLVO5P1Ci5hLGPBpJQYieXkyEERMkZ
         v3gw==
X-Forwarded-Encrypted: i=1; AFNElJ8NN+Q0ejoesjGeDQNOPHKJE5XQOb9SD2VkUNw1Yfkj8S/VnsABQ8IdtlZDWNlq06ioYK4jAIvg+uA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyTP+yhMc52E6Yagx10JkIcz+c/VhjxvkwgpfXCOS40kmntWXQE
	brYqqoBT0kA5HpRqQPrFjTUVb9k6SKQA7dENxK+b4k5VSAgbAHRmjzdt
X-Gm-Gg: AfdE7clbuIjQ33FmAqj/H3rfYP8oP3mxmMRPE6iEBi1AN3ltKFd62fNcvzoaOxbh+1/
	epvIR2ezzhijVFUkalvY4iiPkZW1Jn6IemIYsr0obkURRccYjx1rJI5tpmnd/27h/9TWZuWZ8LP
	0NdWclUAK4VBngSj7kNKO83yCvJt6IQRyWKZOaENi2ik/R+1oI2+GS0tRkip2SYoJxpJF0952OZ
	WmuV1h7ZHTigd9Lv13fizKAXSOpQDRfoqL65Fb7yMAGCe4vloTO09pWywCq7dpdAF2wQsOltCNX
	5FLRSAoHBByuRhYg6Jw6aSmyrYMDwIBpyGP7U+L0D68Aa1jutY6sJY1Vy0oeQsn6T0oGwqATzee
	S+2NqvBLrjAFwOMuXPLUQNqgt9LVXmn8zVmwAiASqBQTlMHyR7RbYr/QiwDNtbnQOQGdHOvPKTr
	HBI6SHnCyBxrnUk6IA/s6HS0nZ8EXfjoBITo0PZzYWNJ3MzQnoOgWXjrstHyNqYwbw2ieES5z1w
	ivOylg=
X-Received: by 2002:a05:600c:4e0e:b0:48f:e230:29f5 with SMTP id 5b1f17b1804b1-49266424176mr167003885e9.16.1782581566356;
        Sat, 27 Jun 2026 10:32:46 -0700 (PDT)
Received: from localhost.localdomain (ip-89-176-136-191.bb.vodafone.cz. [89.176.136.191])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4932f100e4asm64505955e9.1.2026.06.27.10.32.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jun 2026 10:32:45 -0700 (PDT)
From: Petr Wozniak <petr.wozniak@gmail.com>
To: linux@armlinux.org.uk,
	andrew@lunn.ch,
	hkallweit1@gmail.com
Cc: kuba@kernel.org,
	davem@davemloft.net,
	edumazet@google.com,
	pabeni@redhat.com,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	maxime.chevallier@bootlin.com,
	bjorn@mork.no,
	olek2@wp.pl,
	kabel@kernel.org,
	Petr Wozniak <petr.wozniak@gmail.com>,
	Larysa Zaremba <larysa.zaremba@intel.com>
Subject: [PATCH net v5 1/2] net: phy: sfp: free mii_bus in sfp_i2c_mdiobus_destroy
Date: Sat, 27 Jun 2026 19:32:41 +0200
Message-ID: <312bde8176fc429aa89524e3be250137f034ba84.1782581445.git.petr.wozniak@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <cover.1782581445.git.petr.wozniak@gmail.com>
References: <cover.1782581445.git.petr.wozniak@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_103248_459153_142B125C 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
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

sfp_i2c_mdiobus_create() allocates the I2C MDIO bus with mdio_i2c_alloc(),
a plain (non-devm) allocation, and registers it. sfp_i2c_mdiobus_destroy()
only unregisters the bus and clears sfp->i2c_mii without calling
mdiobus_free(). As the only reference to the bus is then cleared, the
struct mii_bus is leaked.

This is hit whenever a copper/RollBall SFP module that instantiated an MDIO
bus is removed: sfp_sm_main() takes the global teardown path and calls
sfp_i2c_mdiobus_destroy(). sfp_cleanup(), on driver unbind, frees
sfp->i2c_mii directly, which is why the leak only triggered on module
hot-removal and not on unbind.

Free the bus in sfp_i2c_mdiobus_destroy() to match the allocation done in
sfp_i2c_mdiobus_create().

Fixes: e85b1347ace6 ("net: sfp: create/destroy I2C mdiobus before PHY probe/after PHY release")
Signed-off-by: Petr Wozniak <petr.wozniak@gmail.com>
Reviewed-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/phy/sfp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
index 03bfd8640db9..c4d274ab651e 100644
--- a/drivers/net/phy/sfp.c
+++ b/drivers/net/phy/sfp.c
@@ -963,6 +963,7 @@ static int sfp_i2c_mdiobus_create(struct sfp *sfp)
 static void sfp_i2c_mdiobus_destroy(struct sfp *sfp)
 {
 	mdiobus_unregister(sfp->i2c_mii);
+	mdiobus_free(sfp->i2c_mii);
 	sfp->i2c_mii = NULL;
 }
 
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
