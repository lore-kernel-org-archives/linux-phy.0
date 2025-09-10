Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAA2ACA0FED
	for <linux-phy@archiver.kernel.org>; Wed, 10 Sep 2025 14:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aWquTNe8HTdB47UgPDjyAs/aLpLQQme441CmMfG1UFE=; b=GcnYh+FqgEJtRm
	b7el8WlCUEnsT3OqX/nW8QkbjNm0JIToET187oukMo5if5eRBgfZ9eAEhrHM7a9rBTGNPIVmTI4fp
	qEw7PLpD4T15YlcElkpcDA2NMMK1ZE6y/t++ml6EoCR+RjhryMVD4Sb3ojjmqH7bqI1H+Aj1guLnC
	mKUcjz77K8sziz8djUrsnkNQbaKWHwuAi4XUuDc98t+8WTA8uZlZ5M1qWem8XNDx7b16VVFglFaDC
	VUkIvCrBxJ+5VejdvUROXZHwsx1dZY6AHU+nUL+cB7EdUZ7xL9+2SLUM51KHNOUG5XSReaWKd6O8w
	RylCB1e9UF/nx8T37AAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwLQ6-0000000EZ0w-2DGw;
	Wed, 10 Sep 2025 14:03:34 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwLQ4-0000000EYzB-2nDf
	for linux-phy@lists.infradead.org;
	Wed, 10 Sep 2025 14:03:33 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-45b9a856dc2so43048535e9.0
        for <linux-phy@lists.infradead.org>; Wed, 10 Sep 2025 07:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1757513011; x=1758117811; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jAGLW0vGkRdepqvJWWr00In33Dyb9aFFqzfsMejvGVw=;
        b=VTr87ySe9Cb/kzpUBSSQzXw4hHJD4IDVNUz6disAztGxadR7aNghU5UZnzGavmaRZJ
         3Qn0xpt8THka3Tlf3UGtYI5hP+uSkvOmjhi0HfhYyoA4xTjOOVrsd4mWDYpsWPXfAj/F
         PSERtTQuZsRCDA1WvyzbVgpdolEBT0kyzuUZphBvOyY3mtQOjaSKWMWYgUzG4wpcBGgW
         HaJRnE8hPATVYdygDughjs9Vue7vdfi9E8hpQ6wqayz7tbwYRUEtrqfZrjqIjPfq2sqt
         AtMmub5UJ+AfFT40im/JN6UxDMwFxPvIYjUqDZo2g3YztGUA+6VrFI/ch+BSiBLKMUf2
         eYpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757513011; x=1758117811;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jAGLW0vGkRdepqvJWWr00In33Dyb9aFFqzfsMejvGVw=;
        b=eBlI1yiLFHM/xs9bbPQv6xWT8UdXb8TdNnp7F3oX74rG1rFZGYZq5emKODpbzKNBC+
         aKBjxphyYAy1Tj0KRx0ZpWdKfmmWzGnP6vLViDk7Yr+Fu2XvsesgEbACDzouKxQ8Dzey
         WVv/uABvuzhjsZ26jkeyD7X/D8LygokcmQWSqgWmC7TXkjOioZzPY2SUotJreqiGVli9
         2M/fdjSEugI0P2jro2dtByO9qA4buFwWOKye7Xc55l88KNoVmpYI95AjjiP/0/kU+4+e
         JM/buL68zPPH8gasBeo6PMrlksX5YJ8cS1RyPvP6QqAN25nP73l15K8Fbo2IxFaSdolt
         t/WQ==
X-Forwarded-Encrypted: i=1; AJvYcCX/rloiEOsD/41MMWrqqOc+HuwuALxtmTLlKkuaeWn8m61d+4H1f/aI+V3OaaVTDLbrpxDPlfrEHac=@lists.infradead.org
X-Gm-Message-State: AOJu0YwMqm1TZpLi2z6aEgvGtKZCXY/1LJyxerrRQRVqiHq24QtGqPml
	YU0kix+GsqHUSHG+fml9HwC6yrseHSuk/Ozrts07D05rgdMMCvNc6P3QPjOSXQRx0c4=
X-Gm-Gg: ASbGncseGF9+1h4Nmw87vUFQXb0k6P4YeVys4HvC7yHhcnbIC0DnhM3KYXOPXfPgSAB
	IJ5pPnjKnkURjlLph/u2a7qamJQu9fQDvuYdAs8gFGgkG2SshJXY8/whYg3c4OenB18R5CuT6N1
	dk9W7WGH6cXEQqIWZgBuLZxzWH/4lxo/YhtCow58TBexHfhc1kflUbbybA/gWebR9heI8YhwdMq
	s5tCyF3hF3VEwy4oyIdPxeBd3naBe7xKjwEZaGPJyKFNpy3v08pm8hDtwcnfDtHzzXR7plmHW4k
	xA8KpHgmkHQfgcZOYrZKdQX4ARP8byWEWKFhTNHmVSeake3sFgfe6eCmwroF4S7ZiKacY8cteS1
	SVnO6JobQ2TMn4LISUVYVrdJmy27t01JFquaKnaaZYmwgFGpSpaJY9zLSZP1xw6Sg++04hbD0Aw
	==
X-Google-Smtp-Source: AGHT+IEowrawYHNa29PlMo3qPWXJ3OP72+rWfZLK8gTMTF1VH5JFTzYqdz15w3e8YqJzXojdc6C1CA==
X-Received: by 2002:a05:600c:1d16:b0:453:2066:4a26 with SMTP id 5b1f17b1804b1-45dddec9927mr191640485e9.16.1757513010776;
        Wed, 10 Sep 2025 07:03:30 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.139])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45df804bce3sm29523875e9.0.2025.09.10.07.03.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 07:03:30 -0700 (PDT)
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
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH v6 5/7] reset: rzg2l-usbphy-ctrl: Add support for RZ/G3S SoC
Date: Wed, 10 Sep 2025 17:03:03 +0300
Message-ID: <20250910140305.541961-6-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250910140305.541961-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250910140305.541961-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_070332_720751_1F48C8EE 
X-CRM114-Status: GOOD (  11.30  )
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

The Renesas RZ/G3S SoC USB PHY HW block receives as input the USB PWRRDY
signal from the system controller. Add support for the Renesas RZ/G3S SoC.

Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v6:
- collected tags

Changes in v5:
- none

Changes in v4:
- none

Changes in v3:
- none; this patch is new

 drivers/reset/reset-rzg2l-usbphy-ctrl.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/reset/reset-rzg2l-usbphy-ctrl.c b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
index c58bf19993c1..a7fbf5c50940 100644
--- a/drivers/reset/reset-rzg2l-usbphy-ctrl.c
+++ b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
@@ -108,6 +108,10 @@ static int rzg2l_usbphy_ctrl_status(struct reset_controller_dev *rcdev,
 
 static const struct of_device_id rzg2l_usbphy_ctrl_match_table[] = {
 	{ .compatible = "renesas,rzg2l-usbphy-ctrl" },
+	{
+		.compatible = "renesas,r9a08g045-usbphy-ctrl",
+		.data = (void *)RZG2L_USBPHY_CTRL_PWRRDY
+	},
 	{ /* Sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, rzg2l_usbphy_ctrl_match_table);
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
