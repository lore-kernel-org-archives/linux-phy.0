Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3D19CA101F
	for <linux-phy@archiver.kernel.org>; Wed, 10 Sep 2025 14:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CFRWXm1Qs3kwPFlE7BV2ozOy9nQ9ZEy8F5LYo1CMUTc=; b=jgOELcsHXiHQa5
	FQ3bBQvQycqtDOpwvG36UX/fq5S07BHLpc12vaWNzB4d2Ayrc7gSRQZysWeKmbTxrJ0iUJPpZFTrr
	d22k5B33oai84GHT/XGg3M9sG+HU3ON1TCdRjIKkm3QQx4cAHw3AwEZ7KiDojWuDrV9AMiUX3MtiE
	m5Acw1ccAPhZ2DcG+KIlp1sRf/YfY8U4a7uZPso48Ig1aANAWAVcOrmeBTMdHS82Ii0T082ua/+74
	4Ucdu0v4gYTjprE5DU0roWvfLBA9jx2aWHOtrC5mOaRgicbYcVGfi4ugzcqknwcBpfgVyrHAwmZY8
	UGNia+uBZUujrZJvoh+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwLQ1-0000000EYxd-2LPE;
	Wed, 10 Sep 2025 14:03:29 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwLPz-0000000EYvr-0Ych
	for linux-phy@lists.infradead.org;
	Wed, 10 Sep 2025 14:03:28 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-45b4d89217aso45682735e9.2
        for <linux-phy@lists.infradead.org>; Wed, 10 Sep 2025 07:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1757513005; x=1758117805; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jkyh4Dhlw28CLMdRTkOh/1iBArvWo9DTQbXvmwtecM0=;
        b=c40bdY0O5/ktPurTeoyv/ba/iODrH5C8yKV615dMgedhckvr1rup+hKAb/704YctgO
         o6AxzqjtWBTlgpLDGkeOJrroPV0tC/HoldvA/e2uGgG3KixxwEQE93ZQ2vc2QX2cDPJa
         QGeDUYoX4MCk4z3v916DAQRZsDWqgwEGoHY2ppewemfGbm9uAc9AVlEe971cn+JWViwX
         3UUnwhjgFi6Z9w43rs5XYrzpi2Cvo/tZ9HWqRDHIuAO/eVyPV8HQWVdCPHN9O8Q3CWlH
         G2j4F/6XTf5xo0ZXjhquU8iBjPeVL8LzA/iqzhjIJnZ8E+ioGi5Clqi8QqLD5r6wr5C7
         AmnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757513005; x=1758117805;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jkyh4Dhlw28CLMdRTkOh/1iBArvWo9DTQbXvmwtecM0=;
        b=F7h9PcvI36nOctVoxkhSwlTtHhmm3AuBzkTlgiaLCI1JaZGTjaNgJKZ5r+gQAvAE1D
         7/AxMb6yiJVVjgEqrhcKcwKC03wCOHMIlKuzKR7P8sEPZYsu8sS1SIg8ecobhKEcPIWL
         zHQ5JILUSJimbiE7YIaX1iakXf8kFMOTP8Cy2SKiC3Kk8U5lUJ+z2orA85sPUniUgvtI
         74sOnXFM7Tpu99tPmIO4SRGDh+ncLu2DYe7AoPJKxmQ0Qg09m29PkZuNi3yvxp+YkpWD
         +FXLnhTV3BeVBuXQcMBZHG7fORJ9fHr4T8hO0ci0wRkBX+Y7kHWOlhcxdU0djakQX60b
         2LZw==
X-Forwarded-Encrypted: i=1; AJvYcCUHAFy5D6AAleh+v/WAYw7fIJAj/IQkE2Og/Cxo+uWoLHq6IPIOubw/guLUoZuoevfA+AaRM0CvvBA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy84ORDSD0rFowJkU5j5V7rIlMAJuDVnE6VdAPN7ReXElJbcrun
	EGEBr0OqW0cMsP6IqSlQtyGhrxvrqa/hyY5svQxckYSZNJirykZICV9ptcapbjGqpzI=
X-Gm-Gg: ASbGncvT+WxBHP1eLT0pUw7UvGfBRcuOfZCPKpnOW7RBNXOYGNXdWMpdPqpYsrcsdSp
	zp7PKfkxM3tc4GmY2qq265JFxNv2d5whvjHou6S7cE6kDaGFguhoFg9MapcYnrVSZQB81C/xlNO
	e1ukPn+NQa/9fvvnhMKy37qR6fzv6wz4bqCHOKwKjAIYswiboLFuSU58QgqtRt7rrw7TJQDVCXe
	8OJdzOPRQ4ib2vOsTXk7DTyJ/z+Ycb8Cv46QLWDzKaTE2PO8m1wrYbPHGcpIvfxgXIvqk5+6dJF
	soB/c7mLkw2tcmGzPPynQgRXqR9klL66x6vS/sc1HSZzkbcmrveRML2/1oVIkQYZmKrGiueutHK
	96f8uPNGiMbLJegDwavGMigJ0Xl2pz+XLV8SX6c0JA1qUSG7hPi+6
X-Google-Smtp-Source: AGHT+IFSs4+XILv/ozu1ePkTUArRSwLZOgfXjnuMdSXTBp3f8FpU0Yp9uKqcu+HOub89ber0vORyLw==
X-Received: by 2002:a05:600c:19c8:b0:45b:7ce0:fb98 with SMTP id 5b1f17b1804b1-45ddde866c8mr148790095e9.5.1757513005134;
        Wed, 10 Sep 2025 07:03:25 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.139])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45df804bce3sm29523875e9.0.2025.09.10.07.03.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 07:03:24 -0700 (PDT)
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
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v6 2/7] phy: renesas: rcar-gen3-usb2: Fix an error handling path in rcar_gen3_phy_usb2_probe()
Date: Wed, 10 Sep 2025 17:03:00 +0300
Message-ID: <20250910140305.541961-3-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250910140305.541961-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250910140305.541961-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_070327_189512_32EAB418 
X-CRM114-Status: GOOD (  17.06  )
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

While at it, drop struct rcar_gen3_chan::rstc as it is not used aymore.

Fixes: 4eae16375357 ("phy: renesas: rcar-gen3-usb2: Add support to initialize the bus")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
[claudiu.beznea: removed "struct reset_control *rstc = data;" from
 rcar_gen3_reset_assert(), dropped struct rcar_gen3_chan::rstc]
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v6:
- dropped struct rcar_gen3_chan::rstc; updated the patch description
  to reflect it
- collected tags

Changes in v5:
- none

Changes in v4:
- none

Changes in v3:
- collected tags

Changes in v2:
- none; this patch is new; re-spinned the Christophe's work at
  https://lore.kernel.org/all/TYCPR01MB113329930BA5E2149C9BE2A1986672@TYCPR01MB11332.jpnprd01.prod.outlook.com/


 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 3f6b480e1092..a38ead7c8055 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -134,7 +134,6 @@ struct rcar_gen3_chan {
 	struct extcon_dev *extcon;
 	struct rcar_gen3_phy rphys[NUM_OF_PHYS];
 	struct regulator *vbus;
-	struct reset_control *rstc;
 	struct work_struct work;
 	spinlock_t lock;	/* protects access to hardware and driver data structure. */
 	enum usb_dr_mode dr_mode;
@@ -771,21 +770,31 @@ static enum usb_dr_mode rcar_gen3_get_dr_mode(struct device_node *np)
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
+	struct reset_control *rstc;
 	int ret;
 	u32 val;
 
-	channel->rstc = devm_reset_control_array_get_shared(dev);
-	if (IS_ERR(channel->rstc))
-		return PTR_ERR(channel->rstc);
+	rstc = devm_reset_control_array_get_shared(dev);
+	if (IS_ERR(rstc))
+		return PTR_ERR(rstc);
 
 	ret = pm_runtime_resume_and_get(dev);
 	if (ret)
 		return ret;
 
-	ret = reset_control_deassert(channel->rstc);
+	ret = reset_control_deassert(rstc);
+	if (ret)
+		goto rpm_put;
+
+	ret = devm_add_action_or_reset(dev, rcar_gen3_reset_assert, rstc);
 	if (ret)
 		goto rpm_put;
 
@@ -924,7 +933,6 @@ static void rcar_gen3_phy_usb2_remove(struct platform_device *pdev)
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
