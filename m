Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C06DACCD1BE
	for <linux-phy@archiver.kernel.org>; Thu, 23 Oct 2025 13:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CeMTl5Eg0t7/VErUXsnw91fYDm9LMXIQz358qC+WDVY=; b=raBE6Cl/ecr04t
	1nHC29vExXqxiXAtL9QTPq9SWFviWb3/34wxRehXS/WNpg1VAgt5YpiqFy7k0ptlco3val/KnU43e
	h9pLiabCxko1hHO0gPBJ0ywyPnfXVZGCvqgslavJB05Rvd1r8Hk9g15b+4RTu/QPvjSUDxTM8W5Lt
	+yP5qXkXUDRNqWqE9Cgbu3YPFjjLhPlx9BdyJr8k4wKojGgpw4iOSCrkFH//31w1zKqiaxYD64Q1N
	V4NPiwU/byDBYlzlmf5zVhbtkyESujL2v9BluCgXcxaPHzW50cBAkSN9rywQUp6WIdyD/89Ay3JZY
	JmbXLNoCXsrUO8qIW26A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBvpu-00000006V1u-2F1X;
	Thu, 23 Oct 2025 13:58:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBvps-00000006V0e-1cDr
	for linux-phy@bombadil.infradead.org;
	Thu, 23 Oct 2025 13:58:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=hv0OLxIw6eR8M9PP1FC7Hsyw74xGUijbxOyWvfPyb1o=; b=GsPeGjd8+15ymLTKPzQGx28tfz
	A0ovHwR81n34m87HCkgMmsPXDv7UXP8SuNhcsiQWPyBHcyJ+8kHMQRl/g82yfJJDm13hX3R7W6NO/
	MIn1zWRqL9Y4rMs8TXbnr6Jn1lhhpx/jwX2Q6yd50psfvetp/UrpO2GQ/gjk9YXAKbnCy67PCivSO
	ZI3aOJnq9Z/Py9wDMY4BEPCXFIk61mAtZOo9Ng+Xqr08Y6wLJkIXXEk8r5HaccFpKtRbLBVBL423L
	O6IW2/uhqh8pLOayh3qEOVO2psaRugPwXLgjVYHsEcguqSKHIwg5dsNEQiKeINLakgvvOdW9wcE+3
	2S5aRiIA==;
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBuy9-00000001Ni6-1MqM
	for linux-phy@lists.infradead.org;
	Thu, 23 Oct 2025 13:03:07 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-6399328ff1fso1590139a12.0
        for <linux-phy@lists.infradead.org>; Thu, 23 Oct 2025 06:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1761227910; x=1761832710; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hv0OLxIw6eR8M9PP1FC7Hsyw74xGUijbxOyWvfPyb1o=;
        b=ggZ5JE4L2n5JrHUcKO2tcnlcd/Ub2QSZqJs6dFCovwM+wNNSnmdiuCEUrBR0MgPpxP
         TW54TFdIhXpV5OjPGNLQX20av4VVusIfJB1KxyHwHlJEvjj9An3mYE49C/bR8av7A5P/
         pMZmtekbxYqVuiePzsUhLwZJiv6mxhXjpT2UdxpEWnx3VctUd01sFepHO/lzMqfWW0D0
         zABW8lBPrKK4NLffzxT76jnInIXT2LWT+/6Ch5DS/bywIKuIPFaqq5BKuhTUYpWUFSNY
         kvnZtfQlVvG5iRbOI4lFkrLZxYc5QWc8qMQog3NWkcXwPHR3bBTlUH6JTTX+TxsNAh5C
         cG9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761227910; x=1761832710;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hv0OLxIw6eR8M9PP1FC7Hsyw74xGUijbxOyWvfPyb1o=;
        b=e+yk5+QXoLME/8PKEtnFDrhl/pkIgTzvwfItQZJ18rMyayc+8q/sWX0c/wuYYcciVT
         fTvnTwFg4dYupQ079LxDRiZqMp2hxB9MRnbjgGgng7H+wHO0oBb/BKSk5XyM7AlNqh9Z
         3sS8+LroBc8M6I21EAgIFzLKIhRBWmrEu6Q4bC8XUDY2Cnw3+hWpG5Wyw78YilcbpniK
         4PNIidj1e8Hpy7+UIo4nrtzD3h03oTVDKA3Ir8cTZVniVZvGCZiqFtOE8roDUvTNgLzv
         ynr6n9MriZyWqaPJKrDVb5tUPKkMKfzTffVqCvDQdoK8+kiK7s3LUJ98QAgFXncRvXYZ
         JYGw==
X-Forwarded-Encrypted: i=1; AJvYcCWmDcrf4jejNI2XOXMrx9OaUgQoQbpHDYL8DKxRS3DeaMjeOsTDDYyZLadc4n7KtsOpt8kV+9nPBFE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2x9HCtEtogVe6zdHXy0GNu67MOxDhCjzs5eVTH4TaK0ZbYK/H
	XAmN9hdixgm69ac+AQaUWR70Uom14ju3gOrBJ+SP6YE8Ak43cXQBwDuk64GZWqTh12E=
X-Gm-Gg: ASbGnctdIBHtd42N8qoqALquqpKXChEh5wH8RJkXPPiFkyRMkeJ5Drylzr9H7ObbJYU
	9CxZBH5cS13MFuDqzOvsyn+EKXgl31ISUc/f+4CBXTOF7ztb8M2o+H9eywYWSWqdoeNS+xc4hGF
	+rZjtykMdVsp/stsu1iZH52g5tKkf6bcJ+u3lPz0lcy4z9dMoWjBklwqftTDAbYu82ik8ufqeHo
	IElblrdzHuKLJVXsM+PqXeeuvQ4CwOSuSEb/GmAOgDheX+YYvrytp4mHHd+sqeIGPCIHH6JmaYi
	g0lpiNhR8sYhsDiuQFgDKOl8/gS57DrQ/2N32+TK85Do5Q1B65RHFBbfAqCB3m/tgIS/Ee/HQ90
	PLq2Qr2MC11cPlEM7U4CePi0J9ovGsQw8XyDA03QXnvjeuohEhTDwULkwd4Mf85+h6j7/J+NqOP
	ppivXCyvaTQT+3WjlXqDFffPyVb4MUc0qakU4SwON7
X-Google-Smtp-Source: AGHT+IF5LB7zjNrRLkZ5eXQ1A6Lm7xHSr+oOpxBpiq+5BFOfT5pJDhYCz3rgr76zPso7ExfB4BpJ+Q==
X-Received: by 2002:a17:906:730f:b0:afe:7b8c:a583 with SMTP id a640c23a62f3a-b647403a645mr3069948666b.13.1761227909653;
        Thu, 23 Oct 2025 06:58:29 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.151])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d511f8634sm226114066b.29.2025.10.23.06.58.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 06:58:28 -0700 (PDT)
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
Subject: [PATCH v8 2/7] phy: renesas: rcar-gen3-usb2: Fix an error handling path in rcar_gen3_phy_usb2_probe()
Date: Thu, 23 Oct 2025 16:58:05 +0300
Message-ID: <20251023135810.1688415-3-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com>
References: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_140305_898256_A6C01AB9 
X-CRM114-Status: GOOD (  16.25  )
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

Changes in v8:
- none

Changes in v7:
- none

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
