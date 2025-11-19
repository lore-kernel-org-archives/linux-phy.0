Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD71FCF31B5
	for <linux-phy@archiver.kernel.org>; Wed, 19 Nov 2025 12:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M+F7gWZUsy3XM6NeBPR227Z/Pf3eS84TzfAekYEeH8Y=; b=hQnufH3HgE5aNl
	XflbK1rB61TJSsNdgk29xvxJtJzGmcgQky/4+LD2Fjshpdrj3Rj0PZ/0wpbgAE84tsD3zGJDFZa8n
	N5hqwWGbaka+pO6TKMKFc2XRVh0tIK4KOnhCw/yKLVbEgEP32xFfEXPiNlnG2gyIrcliboc8Bbat/
	W8/aS5tExr/uloOjyVtiTB6CTTRDGkb+gxNC13KhbUV6sss/tfzfKKTRMOe87LGn/RmEXVQl1wy/G
	w8tzn+KLQpIH8yr4bPy9x/53FBSngf/CXFeDDjrtRyvnKW9a0o1KZLEgrRDXUr+LNPvFap2MbUVqT
	wkm0q9vxgwNgvjUoacSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLgvD-000000035Pi-2SDk;
	Wed, 19 Nov 2025 12:04:27 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLgvA-000000035Ny-3Ws0
	for linux-phy@lists.infradead.org;
	Wed, 19 Nov 2025 12:04:25 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-42b3c965df5so3868293f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 19 Nov 2025 04:04:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1763553863; x=1764158663; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0aY2gFv7ygvSVsf1zlQJN5LYC9AoQYaQyEQzxhKb3Tw=;
        b=hdX6xeXb/oxsLPhsbx51qwExSDMhOiHqmoJwUTRYvjfMREhYL9EpHqpUm25EseRz2P
         k6B2NhjLd9pD7gbXQzR40JV9Sqh9sLd2CqZiYO/pEI3g8CCdbbqFbUa+CNdXWOpaLZVJ
         eYBvaL9ztn3D1KcVNBQzz+njmBuoPVz/+fCxIc4NPQbxPJsC59Op6rnnOdMnQWfYm0cS
         KRUZJSkxanJP6+oIH7HTWmpdyt4kncJ/Wgvjg3ZJJhKxmOTElxS56amrmK0uFxZ1kUfu
         dojNaMJ6HBZ+LKdzitWUozZvo7ooJ14cL+OG1Oen1wdLDDm4xe4rcsqXXZnlbjmgpHwO
         ayLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763553863; x=1764158663;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0aY2gFv7ygvSVsf1zlQJN5LYC9AoQYaQyEQzxhKb3Tw=;
        b=YA2E23Ympwn+k4JX9VXfi9iVZHviRg2M0pVp96yukECBGNOHMg3RQtMpsZu6LDID9j
         0d90uq9qK9wDboFnxs52nG1cu0Hj2r4uKaqaUv2CfLqwOzQxQOGYfYMGWFV2eaa0uZ4x
         AModCYazhE2xQQa11wU7LhMs8a3cVOv3cQ/Z50zIA9TP6vYTP9166uMaOqfhDfYYGEmY
         yTsR6Uebd7MRlftJvAusae04L3WrKbQvnbfluFKPNuSXAyxWjGFjHae2D0SiHNj+5lDv
         S55CkduboIn/J1BbL44zV2yAAt0jXdcendlSiFpbQ41IYDitZ0hmVImq8iWIUWjSy8QQ
         IMXA==
X-Forwarded-Encrypted: i=1; AJvYcCW27oZzQtjvyN4YC9o6IKXYsuCShEH6gVm52CGMtGAxpgq9IaswqoxpaD6+sgVDQ0WS1imEVRGp+wQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyAxn4gdxZKHXZG7PSaz23hYh/jx5tLbmAM+5e1CHjv4J7XSYRA
	eDUay5CJqu/4DGa7OJgkuMROewErER7JSdkh5o3OgnuKXHo+GoLu/r4Gi9zdkEkpUTc=
X-Gm-Gg: ASbGnct4FmIKamFmOJGwun4wySyBucpObj3Y0D3pBbhXsnIZCo3/EqzHkv2Si04UsxA
	Yongj5Qv+DC3TK5DILpTWZabhQxnrjDWmZ8Vidq8mTlfExk+YBJmdYdkcUcbGQQ9X0bvSFlXi4n
	N10yzJz0IwbEVSRe79t7t40GG6xbUBFDOpu0Qd5VMk1OrqrPXtb9oTY1Uon3ap7uxQQl56LGi+6
	fkTkQvYP02A2lEB2rI0f1M8hMFqND52VxoH+HaZtD2XO4r+3TRG9JlZEdV1/ewfkU1UdgnSFe2+
	g+Xt3zFi0fnj3OiTdC+AI2DFFxL1sSfbgrzRdtMF+klEMVORqJbisR5kxMpzs42qJMvADZnHP0w
	UZdGlT66qkqItiF/RR/wADa9cw+D6k6KAq2vVjVno64+ZJgMmhkzdDX2S/Atqd2dEbEnMV5yBJL
	KLkF+vvjYPkFRGm4C17VmsP1fQKTHQe/K34fCfb9Vu5LLrlLy3AtY=
X-Google-Smtp-Source: AGHT+IG5kDWW9dEEuHX258Qk4WTXIkyTFBNiIBUZhWRXkgD1Aeggk6N6ts0khJchzedGqhwdb2H5Vw==
X-Received: by 2002:a05:6000:1a8e:b0:42b:3e0a:64b8 with SMTP id ffacd0b85a97d-42b593505bamr18557552f8f.24.1763553862994;
        Wed, 19 Nov 2025 04:04:22 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.134])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f2084dsm38431132f8f.42.2025.11.19.04.04.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 04:04:22 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: yoshihiro.shimoda.uh@renesas.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 1/2] phy: renesas: rcar-gen3-usb2: Move phy_data->init_bus check
Date: Wed, 19 Nov 2025 14:04:17 +0200
Message-ID: <20251119120418.686224-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251119120418.686224-1-claudiu.beznea.uj@bp.renesas.com>
References: <20251119120418.686224-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_040424_897672_0141BC0C 
X-CRM114-Status: GOOD (  13.35  )
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

Move the check of phy_data->init_bus from rcar_gen3_phy_usb2_init_bus()
to rcar_gen3_phy_usb2_probe() to avoid having it duplicated in both the
probe path and the upcoming resume code. This is a preparatory patch.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none; this patch is new

 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index a38ead7c8055..b9d5bb52e02c 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -782,6 +782,9 @@ static int rcar_gen3_phy_usb2_init_bus(struct rcar_gen3_chan *channel)
 	int ret;
 	u32 val;
 
+	if (!channel->phy_data->init_bus)
+		return 0;
+
 	rstc = devm_reset_control_array_get_shared(dev);
 	if (IS_ERR(rstc))
 		return PTR_ERR(rstc);
@@ -861,11 +864,9 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, channel);
 	channel->dev = dev;
 
-	if (channel->phy_data->init_bus) {
-		ret = rcar_gen3_phy_usb2_init_bus(channel);
-		if (ret)
-			goto error;
-	}
+	ret = rcar_gen3_phy_usb2_init_bus(channel);
+	if (ret)
+		goto error;
 
 	spin_lock_init(&channel->lock);
 	for (i = 0; i < NUM_OF_PHYS; i++) {
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
