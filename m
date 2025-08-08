Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B091C87FD3
	for <linux-phy@archiver.kernel.org>; Fri,  8 Aug 2025 06:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LipuAUvBbg8KLMwJZTAZLV4/cND6pcLV3tfWshqZLM0=; b=nU/5tvDs//vS9u
	gZDgGjlOTCaHstozYcHbbbH3x+JE4edvzFCFEn/37mBRVs44RAXy+lH0payGgsSncNfqJFKBBTqVF
	JO44BF6/ZpfmXQgykh8V6ML2aer5YPxv9UXdn9YPkjl9TkcXKizkRra5Dv9kHUSL3UPp6TORhBfw4
	kEqUoqPR5t3w4Oc4rCi8G0aSV9iLeg9BnyIWLKsLSjSHsEIJ9ZwtHy7lpcg60wNLH3dW7Ll2la6Vc
	zhDlEZSBG4i1cMwqLcp6r5qiSHRMezM6L1qXYq6XXns6kQca5yk2YrZVm3GKH93VRuOFwm3bOVzz/
	FWomtS4zKBZI7VnaQxTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukGQv-000000025X8-0ynG;
	Fri, 08 Aug 2025 06:18:29 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukGQs-000000025Vy-0F5x
	for linux-phy@lists.infradead.org;
	Fri, 08 Aug 2025 06:18:27 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-6157b5d0cc2so2532303a12.1
        for <linux-phy@lists.infradead.org>; Thu, 07 Aug 2025 23:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1754633904; x=1755238704; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eGxErwgbikUB0r4Ah9WecOpEjMWqaBQxYhGBpW0b5K8=;
        b=hD1BI2luUdefRi4OGq7pGtEQBG3LjIGl1ga+4M7qhUiDO6Y/MEPD65zKNWEcmxePmC
         PLg054yT+nHIeCSbZXzwt9Jgk5pM7+N3hbczXfnU2DanDlkj6H8RDiR8XQ1ValdKI46J
         zymCJ8gsyMRTkniuk9h7UtH6usKckSSpCsZEawyRXA1CBV2C0rC2oTOCkS7nQIvvxG1a
         RLjQxwGWoBlpZgZA+aQPy9ZSV/HS11xOC/H+Ry02YnARtAM9wjtszEPsDE8l/FN3B86t
         24kDaB675zuNbognwS8D/ZXEOXQjc8NcOdSKY+f88ifBdH6tXh82uMz/T5cPclHnxt4z
         oxGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754633904; x=1755238704;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eGxErwgbikUB0r4Ah9WecOpEjMWqaBQxYhGBpW0b5K8=;
        b=dVInDsETRQjtvuPK8qVgxH9kCeVUuZJ8iI0kpLoJIBv8CUoACO7Gsw4sWav2xaaPcF
         oH4BKSKc1bdIQ5BAPXEO2uNq+0mLph5jam2TnYfssV/cxYH0hUO8Hmi51NY1fNnh0s3I
         L0rHGbN3NxWlxAU844SIux2xZL+ghb6MV/ZRQBRDZxdlkmhXZdFY7yIPwjaaiW2NGUND
         x8XNsHhHqZIOq64KCt+K8AwFj/tIwN7ywBln4P4iQbNHM2aknAhpoh5On0EKaWFSHNop
         5JNp9hxO9MNiuyrGXwMhVXOm74CiFU1Dc/gPeme8hY/MmcgbScUabcY4LqHefr6JZwf+
         rpIg==
X-Forwarded-Encrypted: i=1; AJvYcCX7uujenrf/yzUpOia5hKxyl7UTNpnoXMHgxNA4w2rNjWBQXhelgA8N7JNxWAkXj8PBb/5YHGO8hoU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4B18VaS23sM8NotaeNZ01BcGspco3n4ZpHTCbAA0jYJkk+GoJ
	9qf7mtn+FAMs0tzGOjkDUBv/D97NSZV2JdmrulUFOBfkGjjn2ynATqJbru9qoIjmwSc=
X-Gm-Gg: ASbGnctePGhSX7tlqDY8QLyj9zaYjMclByUrfubKkI15N0bI/KPEtH20ceRjI/uyQwC
	zFNwsWaVNqzfycvis0GZnORlZlavB/el17Yakv0w5+lZ+v5AWfAcL1AZLFxZFBmJlnNki4UJlss
	0HuwJHogbroYH9S/a1I2jVv3xfFTYrEYeQvSgrH5HwyVcTghYmc/L737AyOXHork3jBAi4hd0OK
	vn9wNi/sOtrsIOPwFrIdQRWGodD5J95uhG/JNMJA2EZ2hNU7ZLXQtCHFU0E/yJvhp3sPAwJylS1
	gUYenLA3odCC67w9imBY1iTQ+81R+1Pfy0b/XXMnMY9nHcsCBZTfhKeBiZMN/h+4TYDZCqbW8fk
	2GzJMPFR0wyfe9Howqj6+dya+Hh6sOlOj/oBpJ+mAh/jfw76RHdQc
X-Google-Smtp-Source: AGHT+IHCkrMk678geaeYEI3zleLM4Vok8qAECVrbc6sPCl6ox+9eIuTcVivQhuzuhlup6596Rw/mBg==
X-Received: by 2002:a17:907:7b9d:b0:aec:f8bb:abeb with SMTP id a640c23a62f3a-af9c65175abmr133250366b.42.1754633903897;
        Thu, 07 Aug 2025 23:18:23 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.188])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a218ab4sm1440488566b.92.2025.08.07.23.18.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Aug 2025 23:18:23 -0700 (PDT)
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
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	John Madieu <john.madieu.xa@bp.renesas.com>,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v4 1/8] soc: renesas: rz-sysc: Add syscon/regmap support
Date: Fri,  8 Aug 2025 09:17:59 +0300
Message-ID: <20250808061806.2729274-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250808061806.2729274-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250808061806.2729274-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_231826_214742_E4B67465 
X-CRM114-Status: GOOD (  23.33  )
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

From: John Madieu <john.madieu.xa@bp.renesas.com>

The RZ/G3E system controller has various registers that control or report
some properties specific to individual IPs. The regmap is registered as a
syscon device to allow these IP drivers to access the registers through the
regmap API.

As other RZ SoCs might have custom read/write callbacks or max-offsets,
register a custom regmap configuration.

Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>
[claudiu.beznea:
 - do not check the match->data validity in rz_sysc_probe() as it is
   always valid
 - dinamically allocate regmap_cfg]
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- adjusted the patch description by dropping "add" from
  "add register a custom regmap configuration"
- updated the list of changes from Claudiu Beznea
- dynamically allocate the regmap_config as proposed at [2]
- this patch is needed for proper function of USB (as proposed in this
  series) that being the reason it is introduced here, as well

[2] https://lore.kernel.org/all/CAMuHMdVyf3Xtpw=LWHrnD2CVQX4xYm=FBHvY_dx9OesHDz5zNg@mail.gmail.com/

Changes in v3:
- none, this patch is new, it was picked from John after he addressed
  the review comments received at [1];
- I adjusted as specified in the SoB area, and included it here as it
  is the base for the signal support presented in the next commits

[1] https://lore.kernel.org/all/20250330214945.185725-2-john.madieu.xa@bp.renesas.com/

 drivers/soc/renesas/Kconfig          |  1 +
 drivers/soc/renesas/r9a08g045-sysc.c |  1 +
 drivers/soc/renesas/r9a09g047-sys.c  |  1 +
 drivers/soc/renesas/r9a09g057-sys.c  |  1 +
 drivers/soc/renesas/rz-sysc.c        | 29 +++++++++++++++++++++++++++-
 drivers/soc/renesas/rz-sysc.h        |  2 ++
 6 files changed, 34 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/renesas/Kconfig b/drivers/soc/renesas/Kconfig
index 719b7f4f376f..c97e2a183388 100644
--- a/drivers/soc/renesas/Kconfig
+++ b/drivers/soc/renesas/Kconfig
@@ -449,6 +449,7 @@ config RST_RCAR
 
 config SYSC_RZ
 	bool "System controller for RZ SoCs" if COMPILE_TEST
+	select MFD_SYSCON
 
 config SYSC_R9A08G045
 	bool "Renesas System controller support for R9A08G045 (RZ/G3S)" if COMPILE_TEST
diff --git a/drivers/soc/renesas/r9a08g045-sysc.c b/drivers/soc/renesas/r9a08g045-sysc.c
index f4db1431e036..0504d4e68761 100644
--- a/drivers/soc/renesas/r9a08g045-sysc.c
+++ b/drivers/soc/renesas/r9a08g045-sysc.c
@@ -20,4 +20,5 @@ static const struct rz_sysc_soc_id_init_data rzg3s_sysc_soc_id_init_data __initc
 
 const struct rz_sysc_init_data rzg3s_sysc_init_data __initconst = {
 	.soc_id_init_data = &rzg3s_sysc_soc_id_init_data,
+	.max_register = 0xe20,
 };
diff --git a/drivers/soc/renesas/r9a09g047-sys.c b/drivers/soc/renesas/r9a09g047-sys.c
index cd2eb7782cfe..2e8426c03050 100644
--- a/drivers/soc/renesas/r9a09g047-sys.c
+++ b/drivers/soc/renesas/r9a09g047-sys.c
@@ -64,4 +64,5 @@ static const struct rz_sysc_soc_id_init_data rzg3e_sys_soc_id_init_data __initco
 
 const struct rz_sysc_init_data rzg3e_sys_init_data = {
 	.soc_id_init_data = &rzg3e_sys_soc_id_init_data,
+	.max_register = 0x170c,
 };
diff --git a/drivers/soc/renesas/r9a09g057-sys.c b/drivers/soc/renesas/r9a09g057-sys.c
index 4c21cc29edbc..e3390e7c7fe5 100644
--- a/drivers/soc/renesas/r9a09g057-sys.c
+++ b/drivers/soc/renesas/r9a09g057-sys.c
@@ -64,4 +64,5 @@ static const struct rz_sysc_soc_id_init_data rzv2h_sys_soc_id_init_data __initco
 
 const struct rz_sysc_init_data rzv2h_sys_init_data = {
 	.soc_id_init_data = &rzv2h_sys_soc_id_init_data,
+	.max_register = 0x170c,
 };
diff --git a/drivers/soc/renesas/rz-sysc.c b/drivers/soc/renesas/rz-sysc.c
index ffa65fb4dade..66cc8d01f096 100644
--- a/drivers/soc/renesas/rz-sysc.c
+++ b/drivers/soc/renesas/rz-sysc.c
@@ -6,8 +6,10 @@
  */
 
 #include <linux/io.h>
+#include <linux/mfd/syscon.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
+#include <linux/regmap.h>
 #include <linux/sys_soc.h>
 
 #include "rz-sysc.h"
@@ -100,14 +102,20 @@ MODULE_DEVICE_TABLE(of, rz_sysc_match);
 
 static int rz_sysc_probe(struct platform_device *pdev)
 {
+	const struct rz_sysc_init_data *data;
 	const struct of_device_id *match;
+	struct regmap_config *regmap_cfg;
 	struct device *dev = &pdev->dev;
+	struct regmap *regmap;
 	struct rz_sysc *sysc;
+	int ret;
 
 	match = of_match_node(rz_sysc_match, dev->of_node);
 	if (!match)
 		return -ENODEV;
 
+	data = match->data;
+
 	sysc = devm_kzalloc(dev, sizeof(*sysc), GFP_KERNEL);
 	if (!sysc)
 		return -ENOMEM;
@@ -117,7 +125,26 @@ static int rz_sysc_probe(struct platform_device *pdev)
 		return PTR_ERR(sysc->base);
 
 	sysc->dev = dev;
-	return rz_sysc_soc_init(sysc, match);
+	ret = rz_sysc_soc_init(sysc, match);
+	if (ret)
+		return ret;
+
+	regmap_cfg = devm_kzalloc(dev, sizeof(*regmap_cfg), GFP_KERNEL);
+	if (!regmap_cfg)
+		return -ENOMEM;
+
+	regmap_cfg->name = "rz_sysc_regs";
+	regmap_cfg->reg_bits = 32;
+	regmap_cfg->reg_stride = 4;
+	regmap_cfg->val_bits = 32;
+	regmap_cfg->fast_io = true;
+	regmap_cfg->max_register = data->max_register;
+
+	regmap = devm_regmap_init_mmio(dev, sysc->base, regmap_cfg);
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	return of_syscon_register_regmap(dev->of_node, regmap);
 }
 
 static struct platform_driver rz_sysc_driver = {
diff --git a/drivers/soc/renesas/rz-sysc.h b/drivers/soc/renesas/rz-sysc.h
index 56bc047a1bff..8eec355d5d56 100644
--- a/drivers/soc/renesas/rz-sysc.h
+++ b/drivers/soc/renesas/rz-sysc.h
@@ -34,9 +34,11 @@ struct rz_sysc_soc_id_init_data {
 /**
  * struct rz_sysc_init_data - RZ SYSC initialization data
  * @soc_id_init_data: RZ SYSC SoC ID initialization data
+ * @max_register: Maximum SYSC register offset to be used by the regmap config
  */
 struct rz_sysc_init_data {
 	const struct rz_sysc_soc_id_init_data *soc_id_init_data;
+	u32 max_register;
 };
 
 extern const struct rz_sysc_init_data rzg3e_sys_init_data;
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
