Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53AA6F41818
	for <linux-phy@archiver.kernel.org>; Mon,  9 Mar 2026 17:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F1J0bWlvE6ksI/uMudYcW+mCjrjjipWQtageNeEdUVs=; b=tTeeSC+q1mFkpA
	H1w0m10U5ClQPwVL0Uup/0l9k89T+HzKQmwKLKYvrYC+4nXe7FF6z6cI57gOBRG/bMP//sn4ofAYw
	DfA7gF1CalswEAuzKABHdFMI7kIcAZdePq1uDW4DoDdmOq8PrV4jp3zMd98qppahVIL4OWNSYHehT
	LtmcbfNAwSqBS7fRJvYFKyjToQgpqQjpnbvS1i+Kr08hbYt4RW1mTwE5Vp6v/FJjUZAGQQtFOFs9L
	o/W5XFgJpLRsUVkBnv69CLI1tan5jziBKPJyx8ewjmAyaZq0De411Juudt9XYA565rcPGLlMKJzc/
	gEK531LixwC1Mz7Npyvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vze2G-00000007mum-0Ghj;
	Mon, 09 Mar 2026 17:04:52 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vze2D-00000007muO-1hSK
	for linux-phy@lists.infradead.org;
	Mon, 09 Mar 2026 17:04:50 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4853f2826f7so9526305e9.1
        for <linux-phy@lists.infradead.org>; Mon, 09 Mar 2026 10:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773075888; x=1773680688; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EjqtMmTP6qLcmK14ISsOFqL48TISXYv0ejZVuQlmDiE=;
        b=h9tIJH29VbfSUZvCRDSphaPD3Wn/T1NXvN5IHqIy/aa9B54s0zgjFwBDK/hIVw8YCz
         EJTTmN5EBLSJ/8+tLS+BZso0ZjJiyOcevxcq4BHHXeRFZB7QDOdQyDYejWW/XXaODEXt
         54dXjrgB114jy0kGwZ8JnV1Mz0EAWWEYgQ7tXOPZkKjsLB4CdxSbcpxJFkvMY6N3DHWv
         4/n/1d6gqHDm3Pt49cmcOgiBU+6T5oH2GX2fDsuvd9FF2Pp/yS419hEDK4Gvb6ZIQ6ts
         BeuphLcjE1rnlK1s+ZSGCoVGZNBLQuwG/LMO/pXnoL5BQ3CVzVGsKIygX3Q9n9GwSsiG
         uD4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773075888; x=1773680688;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EjqtMmTP6qLcmK14ISsOFqL48TISXYv0ejZVuQlmDiE=;
        b=a3WzVhiM1YxP0PK7MzLu4Axekkllqpbz9GxAI3SsxmcHHJCg2DO73W2Bv5cc+3kT2s
         Ihl5otVRsT8/UT3x67rpEtNYvRbXVoDhyCGubGW1Ehu53LjQ2CiD786eNoYRXv4MzlZT
         TPiBSz7SVNCUJpWIjeoHI93vb2n1iu9yW+yuPSAf3rAGlUUAfhrdVHbeCgDWS1KB7cqQ
         EbE+O/Mb/vq2RNhmfB6BdWyb3RNZyzsZ5v9awm2MQBo0z4CaXS0oKVU/JjirL8tKy8vJ
         UxrSe56+H/UwnrbOjrpmxhbqRsz+Dn7XJkpEwvGZTQx1ZvXslmJ8pKCrMGt5LAxnx/Wo
         mvyg==
X-Forwarded-Encrypted: i=1; AJvYcCXTo3zuqNP2Pk6rQ5GJ20SCl1TlmX0YOcLGLjH4OZLiR9kznnJg3C7witwDH2rku4/LLkM3tJXqQXs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw2UxdF2F38oZzDnJE96wPLMUxrV68/XttstMGKu7f9Ok8TL5vA
	2QUuq14ulOVLNG4jBkF8TM7rcJNRgD4yRwgM1pj1+5tfx2vFAPHl4sNZ
X-Gm-Gg: ATEYQzzafl+nQLASjW19dLpiOExldrh8dTqoE7h8ck9XcYmamW/f+W8ZdpkJf4alI5U
	At/Kpqfwa85AnloPQT10UFG0M3n82VJZlid/3npu9KjOFU0yua1S5KuVurE3R9tHgCMktUa+AUT
	XCY+G71HkOayeL8oY5swGIOo3wQFDszKKPA9mMkH6CNCV2Qj01qmsjVtwarg31hRFQ6BI7PR1rI
	SIykwyrV7ksEyOzpmZy50V1bxtN2dalrS8BVTOMwYehSWZLCbuI8RWr3HHjRx8Bv0XqsKwFk1vE
	ZMgb45za2pVJNnyYuandzhg/zx8cnxOwYpQ0Ay/hzImK4PGcyaaVJH/KuG1vbXSRg6qTAYxTHgx
	QWh/IQm+YO+XrnlmuRI/dERD+ZEJZiwLFKDCpFekaUaxD6AZRoNMpEQSkfrEqX2x0h0+lOYN65d
	j5e2cYbwiB4s4w8lj5P4yZWzTsm+T/ZCzXL47NaMid2KMq97fh0eI33/6dwxbLB/X/6y7ghP3Jh
	k24AHkLy6M0czAnm5Z5GXfqa171yKGMRfdSvTcYW+ZXJY2sh9XG2Nyw/6tSuQ8=
X-Received: by 2002:a05:600c:34d0:b0:477:5cc6:7e44 with SMTP id 5b1f17b1804b1-48526923c5cmr193755105e9.11.1773075887324;
        Mon, 09 Mar 2026 10:04:47 -0700 (PDT)
Received: from ?IPV6:2003:ea:8f46:ce00:5f9:7f3c:5f9a:2a3d? (p200300ea8f46ce0005f97f3c5f9a2a3d.dip0.t-ipconnect.de. [2003:ea:8f46:ce00:5f9:7f3c:5f9a:2a3d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541a9e549sm4543125e9.12.2026.03.09.10.04.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 10:04:46 -0700 (PDT)
Message-ID: <b15b378a-fda2-44b9-9d63-bf82919b71b2@gmail.com>
Date: Mon, 9 Mar 2026 18:04:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH v2 net-next 4/5] net: phy: move registering mdio_bus_class and
 mdio_bus_type to libphy
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
X-CRM114-CacheID: sfid-20260309_100449_465438_3FBAC766 
X-CRM114-Status: GOOD (  11.75  )
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

The MDIO consumer side shouldn't register class and bus_type.
Therefore move this to libphy.

Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
 drivers/net/phy/mdio_bus.c   | 23 -----------------------
 drivers/net/phy/phy_device.c | 13 +++++++++++++
 2 files changed, 13 insertions(+), 23 deletions(-)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index c9a495390d2..9fb47332602 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -905,28 +905,5 @@ const struct bus_type mdio_bus_type = {
 };
 EXPORT_SYMBOL(mdio_bus_type);
 
-static int __init mdio_bus_init(void)
-{
-	int ret;
-
-	ret = class_register(&mdio_bus_class);
-	if (!ret) {
-		ret = bus_register(&mdio_bus_type);
-		if (ret)
-			class_unregister(&mdio_bus_class);
-	}
-
-	return ret;
-}
-
-static void __exit mdio_bus_exit(void)
-{
-	class_unregister(&mdio_bus_class);
-	bus_unregister(&mdio_bus_type);
-}
-
-subsys_initcall(mdio_bus_init);
-module_exit(mdio_bus_exit);
-
 MODULE_LICENSE("GPL");
 MODULE_DESCRIPTION("MDIO bus/device layer");
diff --git a/drivers/net/phy/phy_device.c b/drivers/net/phy/phy_device.c
index d1cbcfc3d2a..0edff47478c 100644
--- a/drivers/net/phy/phy_device.c
+++ b/drivers/net/phy/phy_device.c
@@ -3913,6 +3913,14 @@ static int __init phy_init(void)
 {
 	int rc;
 
+	rc = class_register(&mdio_bus_class);
+	if (rc)
+		return rc;
+
+	rc = bus_register(&mdio_bus_type);
+	if (rc)
+		goto err_class;
+
 	rtnl_lock();
 	ethtool_set_ethtool_phy_ops(&phy_ethtool_phy_ops);
 	phylib_register_stubs();
@@ -3941,6 +3949,9 @@ static int __init phy_init(void)
 	phylib_unregister_stubs();
 	ethtool_set_ethtool_phy_ops(NULL);
 	rtnl_unlock();
+	bus_unregister(&mdio_bus_type);
+err_class:
+	class_unregister(&mdio_bus_class);
 
 	return rc;
 }
@@ -3953,6 +3964,8 @@ static void __exit phy_exit(void)
 	phylib_unregister_stubs();
 	ethtool_set_ethtool_phy_ops(NULL);
 	rtnl_unlock();
+	bus_unregister(&mdio_bus_type);
+	class_unregister(&mdio_bus_class);
 }
 
 subsys_initcall(phy_init);
-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
