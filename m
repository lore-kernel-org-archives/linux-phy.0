Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 618CECA0EE9
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 05:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RCWKMay0x2DHFNhvvd8/svTIVrffOZpGzFRzzy2Vjc4=; b=D5tnUevFTKt425
	R3Y86VH8+21rQ9cvxymoKGBb9VHWZlyzBsc5YtLYZLbIvZBvEoaB+JKIQSmSRKKZfVq3rt1tD1jZ0
	7rhP8qS1iAkC5pRXDWodT+c6z86CJxEem0tYu0N5glWzPD1GvC07IprdyAhbvOeA5hLE9rFk79UwU
	nR7jUT6EALeI2DXeiMD4rl0hSbFWe+XbkUG+Qx0sudg9kq+ysy0DWHthmSyPRMQdhwKjlMfTQbsSd
	yP6O6ovT6fnLo7nYlYF7N0pGYpTgzIJZMzdiBq7xTxhyF/PIYd4iuEsGSVAW+ngDmHAUWDQkRuPek
	ALs/LWpB19n4xBHL9zFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoF72-00000009S9J-0dPC;
	Tue, 19 Aug 2025 05:42:24 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoF70-00000009S85-0GlV
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 05:42:23 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-3b9e414252dso2313730f8f.3
        for <linux-phy@lists.infradead.org>; Mon, 18 Aug 2025 22:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1755582140; x=1756186940; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hq7WIoBPG9xXngCJlnWqUJi/0mB6nKcl5wjr3xJWyLU=;
        b=nKa0bbm/iDARuXGxPv32Db/g9sH1x0ch/H5NRGbTcpH1zywclUqdmf2ePThJn6nw07
         Ztr1VKlgL9tJ/9mqdkhBZA3y0lqN3G8nSo5qZOq85AL2y61cSy2R5BmFtmnKtW6/nDob
         /qtgHmvKYuyux5or4R1avmCy18NJrTsTjYDVG1ZEmDdTux86OKocxuZ97UKRxN0tT19w
         Vac2k6tdTRQbnYprMNIft75PkPjW6OC3d0wb/GNVOxdBsMRODnn93mW+XRBGPOlpJO8n
         EZHRJgdBaGIBrwIecCMBgYkv2ooImxvRtcCriTcsczuCKPyB65tf4/nb+WigMfE0kh+f
         Mmwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755582140; x=1756186940;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hq7WIoBPG9xXngCJlnWqUJi/0mB6nKcl5wjr3xJWyLU=;
        b=AwTgV6zII8WNbxt5ASoPdKzVAX2AH25ErA/3dPICdRgAgP4hJSsSUkgOfQ7sILqIXo
         yTghu8ZgXqFb6oS2vnWxAz6Fjz+qyDe6t7zitMpUhED9Hbyz1udCxB/r82sfzRmdiTfG
         Op1XYMh4OiRPVwvDAmBRGTZf6kQ9NMSmTxO6L7zBg91U4NNKQfRZ7eJz1hxmmFlKsfjI
         b5B51PkFta5N51TaDFtGKamNJlVGbVeLVFoJvfOr3xZZj/VdMhSjVV8gpDTAKY10yjji
         fTvdyv/w7dFMo9esMSsyxmIHitl7tl9pMKgd9rLzp6IY3oXSMOQV9+LAX1Vf3YAiEQOR
         BIRg==
X-Gm-Message-State: AOJu0YxjbBKTb475fxfkQnnu8JziP8TnwdKUyycHhQsLacmtgn0IGGD0
	yv1/5zGjRcOi5lrX+TxCBeqz+FHHT4d3z8IOyVjP96CNbhW5sZRiHE9ajFFYyGAUltdUsSPoDku
	2G1KV
X-Gm-Gg: ASbGncu2JhGp78/WlMoyFBPFsSzb3eAGeUiONYxDH+/YS0xpAIjc1nw1540ThBKOHGn
	t2Bme9phOG2M63eA8TgvLD4EVMWTml1nxZ+knew5EnBnOdM90HIR18MNJcJEYf2FHh1fLcSEPcx
	aOeczde3iYtif4/vM7+xaJMOOLbEzY1gd9c7yH5IFUo8PbI0kePdcl6H5Lbf9xN15L8ZfLI3qZ+
	XkZwD75sq6ZhSrTSseU2kCV3rwx6yrffsWs62JWgFlNJmWCxEl4FV4oE3xI5HHtxdrlAkombb0w
	4bcAgTM4aT4dtfhKLS+jlXKYPXDASfIfZXqnYHWsLxUhD55HQ+6UOadeZb1Cg9cBC6PjEa/lIBP
	VYdBFec4t6Wz9H7vzJ/px6pEobglnSmybxSo3pF4cJJl4GUWEZZhRXjTkkI20f/4OTGCPP+JQ8Q
	uTD3cpXoc=
X-Google-Smtp-Source: AGHT+IEI8M8CCrxC/o0xmg1e2mN4A1EKk3QdQY2K716FO/HX9J+mbdMcLDKjvGNhAJYIA3Fl3R8Xhw==
X-Received: by 2002:a05:6000:2dc2:b0:3b7:820b:a830 with SMTP id ffacd0b85a97d-3c0eb23340cmr878348f8f.25.1755582140339;
        Mon, 18 Aug 2025 22:42:20 -0700 (PDT)
Received: from claudiu-TUXEDO-InfinityBook-Pro-AMD-Gen9.. ([2a02:2f04:620a:8b00:4343:2ee6:dba1:7917])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b42a9847fsm25097345e9.26.2025.08.18.22.42.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 22:42:19 -0700 (PDT)
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
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH v5 2/7] phy: renesas: rcar-gen3-usb2: Fix an error handling path in rcar_gen3_phy_usb2_probe()
Date: Tue, 19 Aug 2025 08:42:07 +0300
Message-ID: <20250819054212.486426-3-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_224222_104615_D20E61E6 
X-CRM114-Status: GOOD (  14.19  )
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

From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

If an error occurs after the reset_control_deassert(),
reset_control_assert() must be called, as already done in the remove
function.

Use devm_add_action_or_reset() to add the missing call and simplify the
.remove() function accordingly.

Fixes: 4eae16375357 ("phy: renesas: rcar-gen3-usb2: Add support to initialize the bus")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
[claudiu.beznea: removed "struct reset_control *rstc = data;" from
 rcar_gen3_reset_assert()]
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v5:
- none

Changes in v4:
- none

Changes in v3:
- collected tags

Changes in v2:
- none; this patch is new; re-spinned the Christophe's work at
  https://lore.kernel.org/all/TYCPR01MB113329930BA5E2149C9BE2A1986672@TYCPR01MB11332.jpnprd01.prod.outlook.com/


 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 47beb94cd424..d61c171d454f 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -699,6 +699,11 @@ static enum usb_dr_mode rcar_gen3_get_dr_mode(struct device_node *np)
 	return candidate;
 }
 
+static void rcar_gen3_reset_assert(void *data)
+{
+	reset_control_assert(data);
+}
+
 static int rcar_gen3_phy_usb2_init_bus(struct rcar_gen3_chan *channel)
 {
 	struct device *dev = channel->dev;
@@ -717,6 +722,11 @@ static int rcar_gen3_phy_usb2_init_bus(struct rcar_gen3_chan *channel)
 	if (ret)
 		goto rpm_put;
 
+	ret = devm_add_action_or_reset(dev, rcar_gen3_reset_assert,
+				       channel->rstc);
+	if (ret)
+		goto rpm_put;
+
 	val = readl(channel->base + USB2_AHB_BUS_CTR);
 	val &= ~USB2_AHB_BUS_CTR_MBL_MASK;
 	val |= USB2_AHB_BUS_CTR_MBL_INCR4;
@@ -860,7 +870,6 @@ static void rcar_gen3_phy_usb2_remove(struct platform_device *pdev)
 	if (channel->is_otg_channel)
 		device_remove_file(&pdev->dev, &dev_attr_role);
 
-	reset_control_assert(channel->rstc);
 	pm_runtime_disable(&pdev->dev);
 };
 
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
