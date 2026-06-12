Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B9F9CD8CA8
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 14:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3NY3L3awj9bW0MAaoGsbaAT6joZctoLlhpnCNE4CmmY=; b=3pHnKjh3FBRaas
	OoEs7lzXl2dO1iUNPdwfUaCWIVTKWXbCefPRzp5lCwVBvT68KQFiMrafvP/bA87uW9ZP9mTh5r1IN
	u7RoPQvE8QgKcCxD4XP2yHuU5+HROKLUDFSBccIJ9LivcdTr8aBHOgX+C86VUKQJp96vCL5Nzp0Ic
	n04IHxnaspxILLtyNncHkgakEO+MoP+ona/wcbidiqAdqa5ucx6qzRhsmCFXE4kPZXEXXoA8w5bLJ
	MQLU5re+5tpME/3lQc2nRT45SF+cMqUftGpmdycIsz6nHVR3ptbcKIr7sMEgOP0CrQyInlhpEQA38
	8gAq92998eGCS9aS/Aew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY2uX-0000000B4jF-0Tqv;
	Fri, 12 Jun 2026 14:31:05 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY2uU-0000000B4i5-1pE0
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 14:31:03 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-490cdae130cso5642295e9.0
        for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 07:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781274661; x=1781879461; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cMdyexsnk9vzJ+WoVc+Ut0/kOTtTWH91CWtJGBzMv6s=;
        b=fO28sqsujtqF7zWjVvxzPg1wKDkNJCE+xW8yOvIBH5aY3w66WC7jY5FhdwPKx+4HqB
         M8rU6kxJQvgIcAE4wC937vZDCER9yW3yM9+rJghJrmDXbD0zWJrI76mYJHZcIULuv4lr
         HHULUNKOqTVPsmOlma76skNNQ8ou/H6VqbmVAAFAogiRFut0+gO/qBNpc6ugq//FfA6w
         4Ri/QZDuCYIQz80Vfd21mjEzU+4P5UlamNSgyOFYVYC1iiWyoUgy32B6NPp4Ux/9Xi3z
         Ft5ghnSzEkJx4sdsEIQNX6LMZkDuzVBQQN10bdSQ7kOYAglnnlc57Cz49LArtQ1tg8RF
         s7ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781274661; x=1781879461;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cMdyexsnk9vzJ+WoVc+Ut0/kOTtTWH91CWtJGBzMv6s=;
        b=E6BqNhSqzYDCylF0Fh5/FKYTMau+ne7hwgAddZOecaHa6IRIyLvNhDNobnupcQnMbc
         usYS5wbIGAfj/EDLA/vCgLPj9O/1vFIBjGkmyt7OWChtbjApU7O0vrGxEQx+jOhTfCKT
         dpp8zGk0ZLpFi6t9vTT6e/AmPe9367Pp+lV3ZKfDTiQisdMTRH4FHhTO4XL4f6JzvwnD
         qKT2vAwwKnX8qV8Wv+pILWcQoFfvZIcoyKMLNlBcZjcfczkQ4LaQQZeSUERQ0jvKosZ8
         DliLAzArMwy/+yMGHh7qx4IlIk5qq5J0hyc29VQ57xQIo7L8q/SHBNsTFSYQHMwGJx/2
         EUiw==
X-Forwarded-Encrypted: i=1; AFNElJ9xuzq8Kxq9vAXr0W103eBGD2td1atSzsNwvf02lJ6fSFNtCLJ5BE29bZvLogbEZpp9PVZ58nKa4vo=@lists.infradead.org
X-Gm-Message-State: AOJu0YzXGga/xLqSJRLsTgXOutp4gBHeYZy6vHST8rFqK3FRBaX1FTRg
	dw2rOI/e6R2hZi7gBPSI0sDio7SoCF1htE4/K637OhQck7UtSvOIpB0/
X-Gm-Gg: Acq92OHU0C49vM1OX0Z5iLxaT7u3fgXMZEMhxA6m5Emi8CpZUV/A8Y28VLBK0lFXtoH
	7VoHykUoQFQRbaS4Xp8gpYTwq0cVGXNSVnx9KuJtwvyDQ2FXFrh3+cO2u4W08GSquXp2Nabmo32
	FjxJMXQ57Ehs20jgkuMErUZLJR1wHxu++42igTxtgs4rtkG7RxR2nQ8zds5LhdNtryE0Y0iImnW
	bJl30yvvK/uw/KiETEsu6qYA/YQ7AZ/nIPkNtqFOE8migIQxsTgPiha7wCfonNatpaX9Z1MakVR
	FrxirFQJUeoPUYIDTDA5WQRX2et/xLryq//yh8ncjGAdfRI9P+4KYJjOvEoSSspPFkewe5dRTbD
	aZqsRo95VG1a4ZTxHl/Y8NeF2a4ZvLHRjQara4RZMJM0CYVHMfl3x4eWPmlOST96HgpEldh9D4X
	/PJF2hMhdLaOBuFCQ22EmLZqnO5xwFKYSuHZvzIUPp+X8rVgnK
X-Received: by 2002:a05:600c:3586:b0:490:c024:2ec8 with SMTP id 5b1f17b1804b1-490ec339ec0mr49640985e9.0.1781274659660;
        Fri, 12 Jun 2026 07:30:59 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a700:7301:c72c:50c4:8b28:9a3a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4606f2c3782sm5850016f8f.25.2026.06.12.07.30.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 07:30:59 -0700 (PDT)
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
Subject: [PATCH 09/11] phy: renesas: phy-rcar-gen3-usb2: Fix devm action registration for disabled VBUS regulator
Date: Fri, 12 Jun 2026 15:30:37 +0100
Message-ID: <20260612143048.317907-10-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260612143048.317907-1-biju.das.jz@bp.renesas.com>
References: <20260612143048.317907-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_073102_510270_3F44483B 
X-CRM114-Status: GOOD (  11.59  )
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

Previously, the devm disable action was only registered when the
regulator was explicitly enabled, causing the cleanup path to skip
decrementing enable_count on device removal when the regulator was
left disabled.

Fix this by always registering the devm disable action when the regulator
is enabled (checked via regulator_is_enabled()), covering both the
explicitly-enabled case and the initial state set by
devm_regulator_get_exclusive().

This fixes WARN_ON enable count during regulator release.

Fixes: 24843404efe4 ("phy: renesas: phy-rcar-gen3-usb2: Control VBUS for RZ/G2L SoCs")
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
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
