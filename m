Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50845C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 14:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hoklCG9iMQEjQGxSkxDUj5Cs15cFLTb01rH8LGP6090=; b=YkjKea/UvBrddM
	Ozuv227W0QflyP8cZPfwcTKSxuLWoMIe0op3AiaKnxLKP98KKXx0l1YXRPnZG1tRdpG7RBRqeT7i2
	vgzfBowARySjFyAID7ak1yCEIpAYwyAKIpVlb5BiJpm5ofQj1hyH+o/mvK4ATDGn7PxqgvBaVzA1F
	yfuHDhDfVwuWsNRe+ur9q1jS8oTO+EGS/tJEo+bvAl1rcS6X9uBIzp/FdTboF9da17FuKlX8/xP6O
	/TJDWiVxVFELbXi95DaChOGjPq2dYcPFtJc4T4OO4u636DwuAhTSTWEPIVZBBO8kqggK08F8AYRsH
	4Av92iNE44ifJowEnn4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh6uy-0000000FBri-0Exa;
	Tue, 07 Jul 2026 14:37:00 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh6uv-0000000FBpd-0Xba
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 14:36:58 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-47afb758487so572683f8f.2
        for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 07:36:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783435015; x=1784039815; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=mcqb7hfRKJFzTdqyLnJCwmjybJe2GYIdqRl3AnrXzRc=;
        b=rs7IIioVLUHShQPpDGrfmyDEIRGJkOh3IiT8HIozdUMsg1X7Kn5l7URV47EyhejzS+
         nbr9OWv44V2BJAmhcv4yMnjBLCjrkL8ZqZzDsbCNcqVGhAqaTeqJTnXzN1CkKmPuRHSj
         ooqYHkZf7zVulQgQPpLSExkwE8s6Y1PtJf3mptlx938KW2Ixmxw9Q/gn9BdurlsSJ1p/
         cm/gYn+ca1UqQQ/0rn4yPoxTFni9rybkOfbYitny89NAJdV+Y+snCqQuY9JSy19Ycf3U
         Mz6go77RqXeS6v4m/Qx+e4vZ+x12/tE5hxRg8GwKhFw0B3KbrQUnizf1O/rRjMJBjLcx
         Pesg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783435015; x=1784039815;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=mcqb7hfRKJFzTdqyLnJCwmjybJe2GYIdqRl3AnrXzRc=;
        b=HpM7cr+7AHjcnmMpO9ZDr6SGMKRDwds2sBVMd22Mo2YPEc6+tuY7LBDnIUhtlN7FEx
         jBm1V2o5afxEJ+/jVEX0EOA9la5NJl/Ar2rIwc44lAHIpbHAjV//ddKmV9gr7ZpB/g/M
         4Exm3kz5cKdmg6XP5hi6wdqF4AS0voQZSStwe+J0sPmzyLSgPZaZcnX3AenEHwOudFKQ
         3q2oM5BvjvN2RfKOBOsFt2ZMY91xZz8GPVdSdHVZFIZArtjSY1vigB2DpP/2dcnXKiC/
         cZALnorvSzZLL6XPKLJyO/lwKPhnNsZpxZpfsSC86SnSNO3tN62Vzhm3R5czDi5Cd0si
         xxKA==
X-Forwarded-Encrypted: i=1; AHgh+RoSgOfMa+yloys46Dii4mpzAnlKF/cOv3IBdYATuW5rblrampHqTotbEGldr5ja7sVLZ+oU8wHIAIU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3Fr/pbbrKJpl7aBDYXlQs8o+A9cJijf8tB0YHuN6/0lKLiD1F
	FIyVeu+hFyrKL1+ze/Mgoa8FwXPjJyzuGzJdQe5dENAD8MlfQohyI7qD
X-Gm-Gg: AfdE7cmxbFoC6O75icWcRjCxLF/0VBAgBYE/9h70/eidCWP/oiaJ3B7rzOeTI9+ikIX
	QVFKQIoRswW8vJVyvHTOR9WZuia+ZDs1LIoEA5V4PUPgOPD9UblQ0WFlmrmjsqB11cwNlTKH8pW
	9SsLCOTF4SBum+aDuAIT2u/JCxAgdhbJ+n8ZKv3OCeYHjimDaLOXsDE1t0XHq1JQYaN2zvbLkya
	hHZyxByMSfAyQsymHZEKlnxanFoMuapl3XmDz2Cg5B5SH7GLhARXGmju2+54w4583qykwoKTUzh
	GTRROuCzTAuZpLbroKb+d68+6KEKDhzdM6VnZ7yEtVvA2uCiMsAUW/uYxNUirQPxOmBC4oXbX8A
	NksVu4juzCSMnUu39Y/bKzXIdRK0RJvYg08y4puBLQiMp6pWEUrxVGC9qiZRj6b2ec9V+hSZsk1
	5d3n0uH6EX00PrL2KlIPAwzF9fCCIJUMrlxgjz6g==
X-Received: by 2002:a5d:688d:0:b0:475:f100:3600 with SMTP id ffacd0b85a97d-47de67039d9mr4666299f8f.61.1783435015080;
        Tue, 07 Jul 2026 07:36:55 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a702:d301:a4ac:4e7f:194a:852e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47aa039ae44sm33228611f8f.23.2026.07.07.07.36.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jul 2026 07:36:54 -0700 (PDT)
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
Subject: [PATCH v3 7/9] phy: renesas: phy-rcar-gen3-usb2: Fix devm action registration for disabled VBUS regulator
Date: Tue,  7 Jul 2026 15:36:39 +0100
Message-ID: <20260707143646.245177-8-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260707143646.245177-1-biju.das.jz@bp.renesas.com>
References: <20260707143646.245177-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_073657_191699_50848034 
X-CRM114-Status: GOOD (  11.66  )
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
caller requested an explicit enable. This covers both the explicitly-enabled
case and the initial state set by devm_regulator_get_exclusive().

Fixes: 24843404efe4 ("phy: renesas: phy-rcar-gen3-usb2: Control VBUS for RZ/G2L SoCs")
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
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
