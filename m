Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 193FAC87FCB
	for <linux-phy@archiver.kernel.org>; Fri,  8 Aug 2025 06:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HR32WozfNVZtGRyLZ/06uHuGH4VWK2rVJ5Et4X2MLCs=; b=RhA4P6kT1VMshL
	NEi2wUN60aG2ZrmHwDF6wTa9zOtT6y9/YLhA5wiMYKTsU+SfOggP28kJ/BJiXHtZLkWH7odZ96Pc2
	i5vk68O2lRiBGD4Tv2OTKGTscOFWZXMM0YkJkiD9cM7sxsBwrG+K6h1gnuG5BYcmyMnGFqjIBBC2Y
	r8JRSrp3JJD2ANNRf47/YF/2L7gJd/EoHXCogXzTkRSKFn5iFVDI90IFnWzR6JhdWXbYpJXsbAYuk
	kCEkKF3WpzM3fuytnSXJe2mnDB+HWrPXdSXplUAeL9kwOuMsrYfZdQAa4+4bUpfPLyUpRdqrDSPRk
	MdOnchpkFybkq3c6jqkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukGQz-000000025ZT-3cVf;
	Fri, 08 Aug 2025 06:18:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukGQy-000000025Y8-2fo9
	for linux-phy@bombadil.infradead.org;
	Fri, 08 Aug 2025 06:18:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=nL3e94u2V9QLjXt1P6arYe1Izptm7cDG3511sG7BR2k=; b=TNKmPE0DtI4GyeJl9uVTCW8XQb
	iSkrjAZMSoqWHrsMuoxua8LODhIRQ3OmwLNbDmUo2vmR95tByKPh/VFOdB6+cmnEGzoMiDGHXbn/s
	JRAPfBYRf5epxfhF163MuwxDiSgMyM5cG22XB+iiaLJ3OkeDilM6JCn3vwApqzjGy72Z1VxiczjqQ
	QkTh5hD4SoYD2eCsHIG3BA0p4GzZDRjvmWZ2ixn59aRUbdneEzv5xXHLOhpr8B9NIGvW/CJstWobq
	FqsPsTorlrVkKf9UROXj6zOJHFCZXvMkcjyLtmYgzHdX5HR+SbT6zi9ciIcxehcoEUlvWCJYuf7JV
	3t6x+kdg==;
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukGQv-0000000EmC7-14WV
	for linux-phy@lists.infradead.org;
	Fri, 08 Aug 2025 06:18:31 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-af94e75445dso329826866b.0
        for <linux-phy@lists.infradead.org>; Thu, 07 Aug 2025 23:18:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1754633907; x=1755238707; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nL3e94u2V9QLjXt1P6arYe1Izptm7cDG3511sG7BR2k=;
        b=edxXrmfTzoL64bnFNVSVbfukHVaSLXn6lJvm1q308UF/clTi6tWPQLnefo4Y5M1boT
         xAE483gE2gypTIb/O54hHPSeM6tqYGBkCsuHbHt+6LNPWbaromMikbbhNsUZIsj0yYQz
         ZfUsqkn+C7V52CSrfoHwLGGyPqJE1Lr06I1TNRevYtQaBmgO/6mN8nuGsyRkKtXHhtX4
         +eArUJjwx1JPbMhWChqW7ScwLPgG49/fBiFd/0LGQjYl8KEUkqNEvvV8+yxD7bUjO8Ef
         dTjKcSPf+90XzcfkxKD+tQyD/zEg0Pidw76COtJhRalOnV7eLmiC8byq8tWT74jvspAV
         /u2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754633907; x=1755238707;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nL3e94u2V9QLjXt1P6arYe1Izptm7cDG3511sG7BR2k=;
        b=SFzo7nvpd7ordZpNJbaK0Bq65IDZ4jT+wxgtxxCEvp8ksS15QziZrNZWH0ecDtUKxz
         OuqoHnwhLRggGsuqwNP3DI43CotVh8iKbL7Sbqkfa7RpEZIneW9zKGYB9Hz7xWrejz0j
         qDuUOQKy/ba/OOlw/uv5+ZRKUb6KGKOJLAwaTg5dWn7ec9mjuqWD2xfXvevSiBDfRyvW
         xV2uveO4SzGPwXPgiwESTSlTf7OQAa9maSpoP4IjgKF2DNtCWW5ei0uvO4d4YJkJuuAb
         pTp1Lm56cXclzBs+7ecijR/aNrZNlXJY6EJl7zkaZXo/P+7ejqni4+RchshdVcLxBOw0
         HUnw==
X-Forwarded-Encrypted: i=1; AJvYcCWExMwIFq8qUOLKH9r58oAj/UsVDPQ6pwM0bC4yj2h90VoNw3Mnb9i+FwQHf6HkXdDConKDsvmOsfw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy4+vSNQeqLWxDPC3KUePhNq8Of6EDD5cnIAVrb2sXwjYdwUzK9
	XpTJAc/Mj7EOTVJJJf4Gyvnj78nrjC5MLEICPIqc9/yJAXWRRfBmEPK8kKqt35Qpfwg=
X-Gm-Gg: ASbGncvo5/DSObl5U4oOMPHaeygN2Q85zkZdV/ikVYvoV3F2dGhIB37S0sWZeui5Mob
	Ayla6HZXYnc7iQJG+4RlNnQ9pOkL555N0gD5VhwjU2BdI6DtTXrVGoKk32lo+MJ6p954uRuCrPd
	vuiBGubZ58asoSI+XLdmdnrgQfAnYR6nLk0v2ZKzHBazMmdKAXH1dT6T1mPeb2Bu8gNSTOWq8OP
	phROBTV7382cXGSc89yjzoFphRncjgg6AK3wnW57HgywMVxyXmHMfvu+m36H9RGkfGubekZxP00
	axq93QgMspLx3nfjZJ6b1jhMlJ+tMVTqjbZjeLVbAnh65PncgQ06Jew/jxlGjeNOuNAlI1YMX4Q
	kJKgzpw0XxPVj4Mf/b7hQ5/BF9+OiS6BdaVDw7dJgvMtvxGNUFZnF
X-Google-Smtp-Source: AGHT+IHQTGJ/wmiZp8s/hEwD1TQvz/dSoODt4iFA4o4Riitc+vO+5bZQdHaQm8JOei5Ab1lV1sHSBw==
X-Received: by 2002:a17:907:3da2:b0:af9:5260:9ed3 with SMTP id a640c23a62f3a-af9c642fdddmr146019966b.14.1754633906925;
        Thu, 07 Aug 2025 23:18:26 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.188])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a218ab4sm1440488566b.92.2025.08.07.23.18.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Aug 2025 23:18:26 -0700 (PDT)
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
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v4 3/8] phy: renesas: rcar-gen3-usb2: Fix an error handling path in rcar_gen3_phy_usb2_probe()
Date: Fri,  8 Aug 2025 09:18:01 +0300
Message-ID: <20250808061806.2729274-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250808061806.2729274-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250808061806.2729274-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250808_071829_494800_0104F68C 
X-CRM114-Status: GOOD (  13.70  )
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
