Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97B99C54EE3
	for <linux-phy@archiver.kernel.org>; Wed, 21 May 2025 14:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wO6jEv221XSjmYkHAam1W5lNtJNxOrQHUKPBXLnokLI=; b=HJG5wUWt/qHzPf
	Z5I5XinKK1eHBlG50/0Z4OH/JfyLC+cf5nKkqL0jJVIuHOGgEB7PEZIxHlpuSjjCFV3hYuaMMxWGe
	SUF23Lp25IJbM1Pk0RbW0GY3YtMXil/XkF8MulwnL4stRzRlau2c3gh2XVftYkKB6+C3XGqC+I1aZ
	VYexa/RSXr8mAuSVtvHoxtJ0ZubPjc64VsjlptZODMByLV+bxowG/7M2bQnGCVlY19xvsDLX7cSdv
	3WiRTN+GAbnCowA38Nt2p5yF5xdq7FxQpsilggAA7GZlszhHE8VcG5cxaBWbdd19pJxPiZC+xshOn
	lAK+BkInRjzSQo6gn6Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHkNa-0000000G6Rj-1Vqe;
	Wed, 21 May 2025 14:25:10 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHk9C-0000000G3Zt-40Un
	for linux-phy@lists.infradead.org;
	Wed, 21 May 2025 14:10:20 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-60236e3d093so1377235a12.3
        for <linux-phy@lists.infradead.org>; Wed, 21 May 2025 07:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1747836617; x=1748441417; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O1CHusJ4ei6D6vHackJEhVkMXrFixKZ73PuOqrjq43c=;
        b=Fozmaf/8ZFzWfyEtXrxhkco6AcwdFHv4OLQkbiUGpu6CJn8XKvFGdWC1Pr1W5lxEek
         5tdCQ6/zZoa0qprLiufHaP+yvQSblyOQZmbWnhrIGLlFlCrow8aAfLl4QEZGl0E6R9WH
         DK4V3nzYMJjmSi2XNnnQ44XauaftIuhnP5B2KAWsU3Dyc5BU7KGaROVs5xca/Vbk2WQI
         V5Th+I1yT2XFvm/xtcwJUicNAr0zKGWPH/Gh6BD3e4U59ETA7ZO1pcdUEZ3npZeuNvfV
         Lfss62xj7gcpsgcnUgjIEZzyLXmCQ4aBCsr4T6BHSBdexEb2/YEgJ3qC7qtec4cAozI0
         M6uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747836617; x=1748441417;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O1CHusJ4ei6D6vHackJEhVkMXrFixKZ73PuOqrjq43c=;
        b=fga4WCDa6AWOvAheLLW1P5jFgXQ7o752G3Jckzc8R2bZGENdurLMeXjS0672Lf7yp0
         HroRFKqouNfmWkc6QVymc9Ns2ODkuMaA+Qfge0ntGTgLbDFVS5sdo7S4wMi5hMjzMxPs
         jJBiMnJMCPjE433PxmlWqhXtiHmq0e4caYeNPxpa5spQvpgkpZpFbeRaIs+r5xwi4Tuh
         991sK3KUheTIzULGAdpxaYsdw040QeqIj1m8K7M4fzu0IXNpSEyCYurqymh4cMxKfQxX
         P3miqZEaXbLNh8nsotMj99fNbV4lRgJAbrCyfJZc0pwSOuGoOqi+YoAxxMtJaXjvwjZz
         Z6+w==
X-Forwarded-Encrypted: i=1; AJvYcCUTA73ppn+gkGoUHzg/K1amu5P2F+zZWd5w6lWQ6XJ4TZElq+tecQVB6Q2Cbo2SEh4xkDNA5dG4M/o=@lists.infradead.org
X-Gm-Message-State: AOJu0YwIKtXdEcmd0+WQYYjwWl5V0WtSIRKOaL9oz49EpTkWRBsxUr1E
	KiUAMND/zQAkYoLnzxf85i+ak4l9tcZr1Lit4jabvTklOHt9OvP0iT9AtwyzyqZDY4M=
X-Gm-Gg: ASbGncspSwfwHRUV8UFRzy+OWbvsrliui1ryQ7lvu/zeXB4GgFZ2EidzG70XktHznai
	hZ9qKJiWrhGuzS2nQh1qKtITlIRGchlubR2KHGIz0iY2/cIefKfjvS+RdZsGeCs7nooi2KObYxj
	UrTySKlw1EKz7sHGCxP69iS6zvLyjk9u2wpri+wCAm9X87nsBvRrMLXMQsrHq5uG1opfQUe1ulT
	SYBYUOM5STLFLA/F1zdrwXOB1TTisO7266R9bwidWSJydN2r+R1GX2kBA5M2/toBkoGYeeUFYOM
	OWU1MntwqCmKjvikK/a32kS9A6Bf691JxWLCfSBHU1anL6hLHK/nKEym4nVmLXiZIWxtqcRHDfu
	EDu0g
X-Google-Smtp-Source: AGHT+IGvqJR7e/kOZrWWHQJQW+m9p5RsEiN0pjfvxiINSPfnR4snDax5MoMW4mDXwqItr/FNVvG8UQ==
X-Received: by 2002:a17:907:7d89:b0:ad2:5408:bf1a with SMTP id a640c23a62f3a-ad52d64216fmr1934817166b.61.1747836616979;
        Wed, 21 May 2025 07:10:16 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.58])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d271916sm914552866b.69.2025.05.21.07.10.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 07:10:16 -0700 (PDT)
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
	kees@kernel.org,
	gustavoars@kernel.org,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	john.madieu.xa@bp.renesas.com,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 06/12] phy: renesas: rcar-gen3-usb2: Fix an error handling path in rcar_gen3_phy_usb2_probe()
Date: Wed, 21 May 2025 17:09:37 +0300
Message-ID: <20250521140943.3830195-7-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250521140943.3830195-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250521140943.3830195-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_071018_997164_F39DD568 
X-CRM114-Status: GOOD (  13.75  )
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
