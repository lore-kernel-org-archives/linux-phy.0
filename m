Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D712D58CBB
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 01:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eFONh4b4NyY4jOTEBcpdTfY3A+UFW4GxVx1+0SCdal8=; b=0Q1n4P2jacs2yC
	nGgIo+W0c6tz0Dgpp6xRlIx1ZZygfP5bK2VcO2BrVH5IX2JxniG5UfQMOnSAtFccJeNltGlZ31uBh
	Ckir1i1tQ+1AfS/sAaLJsu6pgxJMjHAzRHVwYLOyk+NYkZdI+BeeALbObdab61hCSt4VI9eZgozEf
	monGAukNGAoNPpFr6Ejx+OqeAJj7lOmVtF+szmTibtWyhDvpjdDFsE0mC8TJ0Y1yGUR/kyyap6wC+
	8KGKS312jbNTPy46DYB/j5hBqLt+jFo/c0VwwW1R8uA+JXHJtjw4T3kHl+uDkSX7FSF8+jwcOslLk
	ewG1lnolsimXfkT5sWSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4UVO-0000000FsFA-25jA;
	Mon, 23 Mar 2026 01:54:58 +0000
Received: from mail-dl1-x122b.google.com ([2607:f8b0:4864:20::122b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4UVM-0000000FsEF-0A1Y
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 01:54:57 +0000
Received: by mail-dl1-x122b.google.com with SMTP id a92af1059eb24-12a71ade78cso2804617c88.0
        for <linux-phy@lists.infradead.org>; Sun, 22 Mar 2026 18:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774230895; x=1774835695; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mfkDMRyvNYwOzv0q3wBq2OUYpD97VO+f6771zL+oLTY=;
        b=D2UdY95v0i/GbcNz0ylpTWwxw+4Iu70okCDrrjzD1O6ROeEfrSBeIwzLriX4Etmw25
         LAD9g9LZVi4VvOXoz+a8JLA9MO62VhghCywHZUOcGdTIGMvAx2MS/NXDfRzA2c4Rh/1e
         48j/fA266rRlErZ13MUMzZQyOfuT+lR4vZ1u9bW4/0RbLHwLoZ/kluiIyHBdIiulxp9o
         bZTlspM02c/MiP8oH+afDfGBKPOghc80J9qVvMBOIhH0bb1+p/roTo1rgOAf716l69f2
         /DibeWmxvfm28R5uIhEr/I+jjb33QDkaBVrl6BXZsCbvYvzzJO2FAwTjJ7fzRTUnZXRE
         /RhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774230895; x=1774835695;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mfkDMRyvNYwOzv0q3wBq2OUYpD97VO+f6771zL+oLTY=;
        b=n3H/pZ+UiJd35W31K289oviLGLVwF/0M1cwJLCManPi6Oq+C+kzgnkuH2OwI1wXrzy
         KczV+Z3h9fpbYDL0eZZhn9ZlopxcZjEF4pfujxeXJSNrNVsX6A2QZ1d25cr7OzvKE/6Q
         fUre+CniQtbg/Z3HEa3Lcr8kN65OydTvlOztVuFewn3JNsL4hKtjhjz10IAnOGSHWROk
         9Ef0p5jXGbFNA/K9B5XJmuAlQJm5+DgH2N4RXjIiikUUcSt66zSHZqtfBj1s5gzlwfk7
         HEHqSceVp1FZ6k796Fga3ynMHVWjACNFYNr19g8niRp3Hi9vtxXnAX3xNtGR/dKIhZq9
         UdFg==
X-Forwarded-Encrypted: i=1; AJvYcCXYydLqQLIPBnYxkWdGQxe3j67iHpL/DmccqkWSL/TI7y1QRuPgOBEB74PvA1v4GIwLSmdtkuORJ9o=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz3UK9GGCkoRay7cOwpYZ9+K6m3ZZ+NIO0iYHEdh6+Isknxw/ig
	Gkjovv7erqzgFZEgHSr6dWhreY+e+4LHLhRsi4k65ukfd1bqEdwdHkAb
X-Gm-Gg: ATEYQzxaFssFqiGwvDuhlCOP3uKoldSle6iOg0/i5SuqCWaM5QA7gyYN1AT/rtMuU1x
	5ZN0CoxhyQQTVj9UGu1Iveh7vQ6GroVvLPTogjpSp6/1y5Oc5SwWEuBIsCTGBJw5v40T1T7s3xP
	88X3t1T+abpyFSMIddXGk7WpmGM0an/toBOqAUMaE00Cah8rqQKw/di2doyFp8YQRgeBnHEGud0
	ogxoqSok+EhbDhYQON9K/0bTg6HPrCRelAB4Sfjs8s3ife9YnYyHzrFD5xx5+zE1vg+6ypFW7km
	53yo9m6YBDRU23wo5TjDnUlnInQJOEfXk9S9BCkF+dRA9fC2Yry3xihAI2SCTSq9+lUhgRo//l+
	giTaNgVaHsQGqWCGWTKcW8OfETyqx/195PbjUVTTFuXFER0AQdMyUBwiosP1QOdpMP6eQK5TNHc
	PdfLOtMn9nsBFt6gGCQEbnKNSExmtKPPmu6BQcmQ+9GZPHVS6Up0JzQaPf9e2hgG+QxpLiPg8nc
	DxknujSzIx/MrA=
X-Received: by 2002:a05:7022:3846:b0:12a:6b99:1ad4 with SMTP id a92af1059eb24-12a72684aa1mr4380934c88.11.1774230895127;
        Sun, 22 Mar 2026 18:54:55 -0700 (PDT)
Received: from dtor-ws.sjc.corp.google.com ([2a00:79e0:2ebe:8:b768:22ed:3eba:aeb3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10b2cf068sm10976952eec.22.2026.03.22.18.54.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2026 18:54:54 -0700 (PDT)
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Peter Rosin <peda@axentia.se>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Moritz Fischer <mdf@kernel.org>,
	Xu Yilun <yilun.xu@intel.com>,
	Tom Rix <trix@redhat.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>
Cc: netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-spi@vger.kernel.org,
	linux-leds@vger.kernel.org,
	linux-fpga@vger.kernel.org,
	driver-core@lists.linux.dev
Subject: [PATCH net-next 07/10] net: phy: switch to using
 class_find_device_by_fwnode()
Date: Sun, 22 Mar 2026 18:54:25 -0700
Message-ID: <20260322-remove-device-find-by-of-node-v1-7-b72eb22a1215@gmail.com>
X-Mailer: git-send-email 2.53.0.959.g497ff81fa9-goog
In-Reply-To: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-a6826
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260322_185456_265530_230DBCD4 
X-CRM114-Status: UNSURE (   9.30  )
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

In preparation to class_find_device_by_of_node() going away switch to
using class_find_device_by_fwnode().

Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
---
 drivers/net/phy/mdio_bus_provider.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/phy/mdio_bus_provider.c b/drivers/net/phy/mdio_bus_provider.c
index 041576eba47a..ed3cd9a37c67 100644
--- a/drivers/net/phy/mdio_bus_provider.c
+++ b/drivers/net/phy/mdio_bus_provider.c
@@ -21,6 +21,7 @@
 #include <linux/mii.h>
 #include <linux/mm.h>
 #include <linux/netdevice.h>
+#include <linux/of.h>
 #include <linux/of_device.h>
 #include <linux/of_mdio.h>
 #include <linux/phy.h>
@@ -754,7 +755,8 @@ struct mii_bus *of_mdio_find_bus(struct device_node *mdio_bus_np)
 	if (!mdio_bus_np)
 		return NULL;
 
-	d = class_find_device_by_of_node(&mdio_bus_class, mdio_bus_np);
+	d = class_find_device_by_fwnode(&mdio_bus_class,
+					of_fwnode_handle(mdio_bus_np));
 	return d ? to_mii_bus(d) : NULL;
 }
 EXPORT_SYMBOL(of_mdio_find_bus);

-- 
2.53.0.959.g497ff81fa9-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
