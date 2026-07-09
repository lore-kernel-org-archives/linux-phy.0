Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61B88C43458
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 08:31:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ic8VULeakcihDoaqk1cS2WtLLGFlJsXfMz2cY7BPVjM=; b=TNGFSP8DKwe3Am
	rIgDRxLnw0g5PoTO5LFyECoevGKGCheg5Kuq6BTYhKZRJXrSxuNFCuThZT2+uTgak8E1Yqfdz6hJu
	vFs5jMpvMp/wkEfv4UMJfyZXmZ2RZdc89x+nZFcsF7+DyIZ1pzer8IpsJf0RPF9rTzunwJCymLcMf
	QGMluZTCMSvrLl3y+TOluFwH8DpA5M2nYP7SNC7no9SrTKaPhZFYiGJI3c5J1iSNo7Yl/bwGe/XA7
	MMQ3qxXDDaSCDnpd1AytleyldBiHvzsMVBv8tsMec/cFpMWM2cqG69Xwf+Gz64JCzNP04lr6Kh1iN
	lPCJ5fOHkVeqrrJlIF1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkAF-00000001Qid-0gbF;
	Thu, 09 Jul 2026 08:31:23 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkA9-00000001Qfq-1E0y
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 08:31:20 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-493ec555a26so2848305e9.0
        for <linux-phy@lists.infradead.org>; Thu, 09 Jul 2026 01:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783585875; x=1784190675; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8oU/slL1LUhhKssMFo9c65Mvkq9gbcpoewuG6Qy0ARk=;
        b=a3jSzXlbMa8k4WUfjK8PBr1aGWMZ76MF2o6XyUB/JmqgdniPELZ5rw+aNbR6LjPrul
         r+WKLoSytL7DxqHV//YKut33VxmUEPgw2/HNByDo4lzKdVXRO0YJOtuPuNjNyqp0novL
         29JezOcUd6gHEoMkc+R6g5LQiM0P36ecNAjetTzJ3ZPLZFwlzEIIcA2um9jqH1nH6tyk
         91YOKjRx4gazgibZKwy2CQ7kHPX+c71dm2FKAe9C/2uPL3Uq9gPqRGoGu/XW2u5t69tc
         E/WBly/iMFyWZnRhzsM8K+s6RMS8XnzSh08V4nj4ScOFS33doLW2JFR1ouauEtFv2+gG
         F8hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783585875; x=1784190675;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=8oU/slL1LUhhKssMFo9c65Mvkq9gbcpoewuG6Qy0ARk=;
        b=gfNQVo4veSoJ/vjTSI6tz3nmhKIdIf6r6GxDzUZzJkmPeIBK0h2/AIwP0pdWcctJiM
         4Sn2jJlnlSqX5OFIIYo5AHcrvuUurpFJnOf04Icth/oRzCLtlKpLih8hOfkQ71xrjF9I
         tLB0pC3nYpxO3FvH/8nQaDvrikqhc/q40n4WmOaB9jnz4zli9ThQvyRjEvim8y+b7crf
         YJg+9tz1YbFeVndgUitTECT1KzGkyoHlPOKuAWUXmDnl7LExSWxqdC9Sh3GQ7tSkuogL
         39Olhj/wuXbEFxtnAjvvmI2i3p/ExPQj7ACfCrvfWJeYrDcALM/vC71gXQj9o8eZKM2q
         K4lA==
X-Forwarded-Encrypted: i=1; AHgh+RrE9h4JFAlbvEGL00nXyaMek63r3EJxw5nQM/RdSou0OLnxYyKZR1XvbD1xwIGUmJGwpCOOD97rH/Y=@lists.infradead.org
X-Gm-Message-State: AOJu0YwYtkQcaYKMeobutapmJhJgIy8CfjCHJA57Q1jLGkgtJnwYmEk7
	5lu34BVQEFcMmB0016C83zzCxr60u12iYNUxEiffO81PtOTNkIVPunmR
X-Gm-Gg: AfdE7cmH1lYtq5gjeSjnkX0Z3bvAtp8M7JpvbhPhGSN22UprJ/b3x8eXfv2TnWc0rgw
	u4okONJx+jxfxymduRpNcPpPiEg5h/qgMeDE+k5d2FF/4CAvxgvGwlQleehjjQa+cXbuTseVkE3
	L7WOAuwYL2MlQu/64ZhmNF4F0ro1UD9FpzRS4sdFJeOjpvSh1L/XpUbOe49bAMwU0A1KSlL6Qgz
	gcroH3ATqkJgVsMQeX0u9sb+8S9L8ZglQ3CzPDYeo6cubxMUs1Tjsd0AK4fzYPfFC7zXC8AR3FC
	pBA5MpA5V5nLoWT6i4IciB5IlMaVFVQXrQ1sBGH60FD8qvMYqi9zmsYKz/8TD2c9hkw7yNnhhR3
	/EfcMm5G1doD0n1n79V9JSoUmcbCpZFhpQ20Q+rhsF9jp4fa9QpV13Q7TKJSAwo/AR+ffxSaEG3
	GOi8PEAY4+6sJeK9hm5/JY
X-Received: by 2002:a05:600c:1395:b0:493:a435:d870 with SMTP id 5b1f17b1804b1-493e68ce31cmr60669485e9.27.1783585875389;
        Thu, 09 Jul 2026 01:31:15 -0700 (PDT)
Received: from biju.lan ([2a00:23c4:a702:d301:8fb6:1d85:3dc1:42ab])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47a9e4d780csm50316543f8f.11.2026.07.09.01.31.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jul 2026 01:31:15 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v4 7/9] phy: renesas: phy-rcar-gen3-usb2: Fix devm action registration for disabled VBUS regulator
Date: Thu,  9 Jul 2026 09:31:00 +0100
Message-ID: <20260709083108.108370-8-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260709083108.108370-1-biju.das.jz@bp.renesas.com>
References: <20260709083108.108370-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260709_013117_346223_D476F669 
X-CRM114-Status: GOOD (  10.50  )
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

From: Biju Das <biju.das.jz@bp.renesas.com>

devm_regulator_get_exclusive() initialises the regulator with
enable_count = 1, requiring the consumer to disable it before release.

The devm disable action was previously only registered when the caller
explicitly requested enable, so when the regulator was left in its initial
enabled state without an explicit enable call, the cleanup path skipped
decrementing enable_count, triggering a WARN_ON during regulator
release on device removal.

Fix this by always registering the devm disable action based on the actual
enabled state via regulator_is_enabled(), regardless of whether the
caller requested an explicit enable. This covers both the explicitly
enabled case and the initial state set by devm_regulator_get_exclusive().

Fixes: 24843404efe4 ("phy: renesas: phy-rcar-gen3-usb2: Control VBUS for RZ/G2L SoCs")
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v3->v4:
 * No change.
v2->v3:
 * No change.
v1->v2:
 * Updated commit description.
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index d06fb52ed5f1..ef38c3b365d4 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -905,15 +905,17 @@ static int rcar_gen3_phy_usb2_vbus_regulator_get_exclusive_enable(struct rcar_ge
 	if (IS_ERR(channel->vbus))
 		return PTR_ERR(channel->vbus);
 
-	if (!enable)
-		return 0;
+	if (enable) {
+		ret = regulator_enable(channel->vbus);
+		if (ret)
+			return ret;
+	}
 
-	ret = regulator_enable(channel->vbus);
-	if (ret)
-		return ret;
+	if (regulator_is_enabled(channel->vbus))
+		return devm_add_action_or_reset(dev, rcar_gen3_phy_usb2_vbus_disable_action,
+						channel->vbus);
 
-	return devm_add_action_or_reset(dev, rcar_gen3_phy_usb2_vbus_disable_action,
-					channel->vbus);
+	return 0;
 }
 
 static int rcar_gen3_phy_usb2_vbus_regulator_register(struct rcar_gen3_chan *channel)
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
