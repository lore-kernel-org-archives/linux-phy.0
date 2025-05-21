Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02354C2D0CD
	for <linux-phy@archiver.kernel.org>; Wed, 21 May 2025 14:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MxC+Xm9S9blrwLfuxQdObKxVzKvRa5VdxWJv599T32o=; b=Pu15JFAcZKB51X
	UmTan6/PFWlWwzEpiUls/mGKW5RQOolGXlxzuDt5WdrvVlKx8oco7xarfBzhiZUkdVxBK/CqoseTI
	Sm0hgEUDaLikNqLFc1GsiUCNnsLeRMWWqyE/TQ6lGnj29zgyJwrquoYyPqo0DBdauFFir+FTKEtkT
	7HvTNWk846fG6QcjYpS9+H+YjOfIC9Aan7xh2TTcLJTYYcI8AJ8Qi3ekSB4UhUd7vzLte4FW7viBr
	8KsiKjKCzzHxt03SeNPMZy4NhQC0Za5i9soN9YHt6clmXGeWZVC3m/KUTmiucNZarFi4PrMPuG7nI
	t9V8kKPpVoyrsXGX0/cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHkNb-0000000G6Tr-32BP;
	Wed, 21 May 2025 14:25:11 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHk9K-0000000G3dL-05lh
	for linux-phy@lists.infradead.org;
	Wed, 21 May 2025 14:10:27 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-60179d8e65fso2776092a12.0
        for <linux-phy@lists.infradead.org>; Wed, 21 May 2025 07:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1747836625; x=1748441425; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v258ll9JbBLXOIea9jWrUjVqAB2GMAl7DarOvnstw10=;
        b=JitP/X6V5s9lVUQf1/SuKRmiiA9O0PfLn80jIf4lGV091Id0Xt6YkGEYTRLLwZd6/b
         ZQynQpiqPVH3hJ5wMdVYZ7iVm7kCtTeFxNMTC6hFT78Sw2bpNkVFJYqhjcmJJ4+jZjAc
         UUqc/dc4MHz4rZ2pm9eoiM88ih/OglK0UflFW/XaYhsKeBZvuclYdCIh45+4D7AJ74pn
         IkVVZWcC6adEC65uBpUq+zYpo0L/iDwC9Sdw5PnYc5EP5L5BSTWeNiKuiNKb1HchA6MH
         uaHRHID1uqqUVBhiycxQS+LSEFTTWdUv7wpBCvCTfbgm5qJdlzwnKjl2VzT2R6umU+Ik
         HXOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747836625; x=1748441425;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v258ll9JbBLXOIea9jWrUjVqAB2GMAl7DarOvnstw10=;
        b=g1g4xCOF2x+86/LfyOIIjH2FdYtr2wY/QfCsm2E07Mxyz7RKxappFYLoGHdYXUU0WR
         x4GbJKZ/xeJLpSb/2S7owJOQ7M2G66siZpOVXmeBLCQJOyPwjVWP1hH7Z6oDorMnwM6f
         TlevT6LgX1QJ+6Lw8K5KNNXVeAr6mw644q8yXWz03PjNj1jZTALfMh66UJFsqFchwKEr
         on6T7yNaGUvgojyA+c8elVNrT9tpoRDEe4M8p+nYDqqMBV+SEQMElgpWWqfioKcp9ebC
         uvukc2QMnoPmdEtEzwvQH0qk+2MIMd+hg1OnaR42Az3zZnUj6PCF+XhMXqST/miqgff5
         rzvg==
X-Forwarded-Encrypted: i=1; AJvYcCVTFY5pICkqyrmycizImdLyizBHl+s7qY8erhONy8Ak5sIQCp0AX5NnanmM+jf6LdGxyHzcadssiAU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxVmwmrJxtCcX71QrHIChO5WLC1rpZRfU11bhhCTqQROyg5J8yQ
	e/NFCcmeUdGSiVql/R0FxdnLeWIz7eAxdx23lCAgJ2g1dp2TD5F8mr2q0VuxYXy+HHI=
X-Gm-Gg: ASbGncuk5TE/iXXaStWKuO7nbe3vRXXz02YjvDLZQYfkcMA9ftoXGdAyIzHtWzK3iyb
	lfe7LsIRvKMX9bjlkfO3wKf+vGCjkgW+jdKZgIKrgi4DcfKZBkHPjU1Ta/vcZGvL1a16xTletnz
	cRx/P80cWtgA8zl99wihFbCaAG1D018y282IszY4MMAcAAw55dsP6Fv1jZ6vAfGSKlTrqCLJ+YA
	qpCthM6m6CJjXpPC0tjBUWpR6aBu7cmf+rA/C32+Jv/s4l2SYmdZL0I9VxcG77QNItOOrrFlq67
	SDsdtQ00HCFXxaNPaP+YXZcXKF5AM9X+oGd46wRf1PDnSHkRljXfu7McKgg+DhknauTBywUVPN+
	Or4Fz
X-Google-Smtp-Source: AGHT+IExJE/BNkE5bINpRA4UDQooBTWGbExswmf0e5QQQgNXAyz1AiUe3bXi/hkJVkXYpmXzRVVPXw==
X-Received: by 2002:a17:907:2da2:b0:ad5:78ca:2126 with SMTP id a640c23a62f3a-ad578ca2302mr998041066b.59.1747836624607;
        Wed, 21 May 2025 07:10:24 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.58])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d271916sm914552866b.69.2025.05.21.07.10.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 07:10:23 -0700 (PDT)
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
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 10/12] reset: rzg2l-usbphy-ctrl: Add support for RZ/G3S SoC
Date: Wed, 21 May 2025 17:09:41 +0300
Message-ID: <20250521140943.3830195-11-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250521140943.3830195-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250521140943.3830195-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_071026_060752_63445FC3 
X-CRM114-Status: GOOD (  11.08  )
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

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- none; this patch is new

 drivers/reset/reset-rzg2l-usbphy-ctrl.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/reset/reset-rzg2l-usbphy-ctrl.c b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
index 016aae883b2e..98d6323e9f56 100644
--- a/drivers/reset/reset-rzg2l-usbphy-ctrl.c
+++ b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
@@ -97,6 +97,10 @@ static int rzg2l_usbphy_ctrl_status(struct reset_controller_dev *rcdev,
 
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
