Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD756CA5FFF
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 19:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LPG/7zXkYDg6QbC9tD0vRdE2/oNqv/+I/pmEBOFEOHY=; b=QPrmhiKDeRkZdY
	qOPSzyL2YzQphSj0jullPbI9RLWrvUoG7fsfZvz4SiqzGQkpABYlWwi4v7F3Hf/+n0tZyBippBuR7
	dP8t3BRnYIj4r6z3rbY+drLXGJFrboF03kQZkH5exNKaQ8DP2MdgkSzxwGBYDOPKPlzSStitynf0J
	RN9LEtMlZLINZbZm9pNEFOFGi+yECkOHlJrNjnRv1DkRTBFH8s3zR+KGDN0T6ZOpY0FSPQGQtKehM
	bO8/WpceO4kS0tMPZ8q7wpypfntxfiPKhStRIrBiVJObAO2nsww2ZLAdO2jEklPfIbY86dpDhOS0b
	Q7Rpo+HDhEJbcLnWDM5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEWym-000000030ES-3q1o;
	Wed, 07 Oct 2026 19:07:04 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEWyl-000000030E6-0UtX
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 19:07:04 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4a021c809e3so22187085e9.0
        for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 12:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791400020; x=1792004820; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=YNDMmUWUsrhS7fqAay6BVjhWp+dL3PANyoZAcSZozLo=;
        b=C3IBM3CpUiPNTj4SpMuapVuneEsYY21IfkRSoxpiGtyiWA+oSIsRnPwooWKUKkYQH0
         P6gB7gG/zNDWd80xxQOGW/id4RvezIkubB0lL9NnFqAQwAPWSQXk+HSb/Ds+T7W+ZoFn
         Yan03ftNTQW4JZxsh32EPRTeWXAUsxOAEWwY3Jxqg3q6gxc5cbp7W3rDYAOCxbYL/tYI
         0zZnOH9+vU0+KQc/e1JNKdxlJNT9SZBhA3oVuYUxRBUvqWxgYie6G5tq4TKVhtKjRhJt
         656++xPCbBXjz3S/A2FpG4tmTLbxEcvvQwOXALudgDuSfmdGkNoSExIn90JUmXvgka8x
         Lm6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791400020; x=1792004820;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YNDMmUWUsrhS7fqAay6BVjhWp+dL3PANyoZAcSZozLo=;
        b=XVd38tfWl8P/XKBefysWoEZiwar4INmXvFLYVsIA/B4AjR2cEhctCfEcq/W9slWAJo
         tLNT7/K0WHlDSAiyB1qacJkmJkCWaxo/niJmUWE3gpzwtfn4JbOR7vl8oS9in9PwL9V8
         vm6Wf+uWcL5dbL7p3V9qeLRHM+bbpGcPpUUVrG1BQ8C6LShAIQgzzJB/10JzgSpHavCd
         X7KYoJhFqrgmlGi9tjqm5EiVmthz8/buKUcZpGqfknwSH8b/IH6pfm6JPpdlkAfkYZ99
         /ImzxHsvPlJr+Mx1n4lTn9CLvnnvtMqkXCXMmMdmKr1TnK4bVBT03F2yDzIxLsiGaUa+
         /Nlw==
X-Forwarded-Encrypted: i=1; AKwUvBx2wQoDhLcd2UK6179dJngsXMxUG85aH21bs2USkZy7/m1GTwaXQJF5MRdwXyyBml4E74IrUGZc/lM=@lists.infradead.org
X-Gm-Message-State: AFuF++n4BGeZCmXDNXX6fsTW8Yf2NPb4Hqu/UrgLUJSEpDPh3nFWY2RX
	ssnMJa7tiQnnz28yODpqSguxJTX1mcBMqEpCnIIF9hKikaGPBLERx9N/
X-Gm-Gg: AYBFou0HDEUCjbBtX8SZaSYikMw19cI9Oap7HVsxKPA6V6AdlAfsyslZ1/+RrYk0+Fp
	cIgE1xThU/yYVQV/ltT1AtVR1sI3tGsu+9Q218vp/GOnxa52WM9447h4hkpxQmdQZq3+mZS6blq
	9gOEUIBBGg8S/TGJY6TF6B+70OQIfoXyvs8fPjsozssKdgTdc6p2N38OCGLkIScPb1FVV44GYTs
	L6ryT/T9g1Wr6sr8OzyaDPicnKdM/3tBMELhdmhDKHPE1gLItY3D0iKm389kbBBKuDiF+kpiDmJ
	CpgoGcBVDxe+G/xVkdZu6ZK+PWoheTX5YyJVTtdhiLWaBFkElQ5NjRe5DXmOUNPlqtRbwusbA0O
	l58jPec84JMzzi0lz91+Pgjyk7DeVSyJxj6JR/fghgIwtgah7x370lh98reGfwYlr/X7SbrGxDb
	rMJh7S+gmKfqLvcQzWuQyOuCCB7GaItEFsosPKuddJeiydIXxxGRq0w8FAiMYqxtvDWporCyX70
	84rwSt0oTMAA80xpOj/eBg2rB1CSdjPc2BtUMsYNqR4zXG0bbCeAkOUmAvvy47R6+3ZnzNikm50
	/go9hntY8YqJScEWh/8=
X-Received: by 2002:a05:600c:8882:b0:4a1:813f:2a60 with SMTP id 5b1f17b1804b1-4a1813f2d5fmr38969725e9.11.1791400020224;
        Wed, 07 Oct 2026 12:07:00 -0700 (PDT)
Received: from iku.example.org ([2a06:5906:61b:2d00:1b59:c95c:e030:dbb2])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1843d8997sm12449275e9.10.2026.10.07.12.06.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Oct 2026 12:06:59 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg+renesas@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v2] phy: renesas: rcar-gen3-usb2: Keep OTG VBUS disabled until role is known
Date: Wed,  7 Oct 2026 20:06:54 +0100
Message-ID: <20261007190654.452376-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_120703_185725_9050B96E 
X-CRM114-Status: GOOD (  22.54  )
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

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

On OTG channels of SoCs without ADP control, the VBUS regulator is
acquired with devm_regulator_get_exclusive() and its output is switched
by rcar_gen3_enable_vbus_ctrl() using regulator_hardware_enable() once
the port role is known.

The helper acquiring the regulator has the following problems:

- The internal regulator is unconditionally enabled at probe, so VBUS
  is driven before the port role is known. If the port is connected to
  an external host this can back-power it.

- regulator_get_exclusive() hands the consumer an enable reference if
  the regulator is already enabled, for example by the bootloader. The
  unconditional regulator_enable() then takes a second reference while
  only one is released on unbind, leaving the regulator enabled and
  triggering the WARN_ON() in _regulator_put().

Fix this by making sure the driver always holds exactly one reference
to the regulator: reuse the reference handed over by the exclusive get
if the regulator is already enabled, and call regulator_enable()
otherwise. Register the disable action in both cases, then turn off the
physical VBUS output with regulator_hardware_enable() until the port
role is established. Enabling a disabled regulator to take the
reference may briefly drive VBUS during probe; this cannot be avoided
with the regulator API.

Rename the regulator helper to reflect that it acquires the regulator
without directly enabling its physical VBUS output.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
v1->v2:
- regulator_enable() is only called if the regulator is not already enabled,
  ensuring exactly one reference is held.
- Dropped enable parameter from the function
- Renamed function rcar_gen3_phy_usb2_vbus_regulator_get_exclusive_enable()
  to rcar_gen3_phy_usb2_vbus_regulator_get_exclusive()
- Updated commit message
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 35 +++++++++++++++++-------
 1 file changed, 25 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index b5ba751805aa..3481505dea2e 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -1114,8 +1114,7 @@ static void rcar_gen3_phy_usb2_vbus_disable_action(void *data)
 	regulator_disable(vbus);
 }
 
-static int rcar_gen3_phy_usb2_vbus_regulator_get_exclusive_enable(struct rcar_gen3_chan *channel,
-								  bool enable)
+static int rcar_gen3_phy_usb2_vbus_regulator_get_exclusive(struct rcar_gen3_chan *channel)
 {
 	struct device *dev = channel->dev;
 	int ret;
@@ -1133,17 +1132,35 @@ static int rcar_gen3_phy_usb2_vbus_regulator_get_exclusive_enable(struct rcar_ge
 		return 0;
 	}
 
-	if (enable) {
+	ret = regulator_is_enabled(channel->vbus);
+	if (ret < 0)
+		return ret;
+
+	if (!ret) {
 		ret = regulator_enable(channel->vbus);
 		if (ret)
 			return ret;
 	}
 
-	if (regulator_is_enabled(channel->vbus))
-		return devm_add_action_or_reset(dev, rcar_gen3_phy_usb2_vbus_disable_action,
-						channel->vbus);
+	/*
+	 * An exclusive get of an enabled regulator already holds a reference, so
+	 * add a cleanup action to disable it when the device is released.
+	 */
+	ret = devm_add_action_or_reset(dev, rcar_gen3_phy_usb2_vbus_disable_action,
+				       channel->vbus);
+	if (ret)
+		return ret;
 
-	return 0;
+	/*
+	 * The regulator is enabled only so that the regulator core holds a
+	 * reference to it. Do not drive VBUS until the port's role is known;
+	 * rcar_gen3_enable_vbus_ctrl() switches it from then on.
+	 *
+	 * The VBUS regulator used on these SoCs implement the .enable/.disable
+	 * ops, so regulator_hardware_enable() cannot fail with -EOPNOTSUPP here
+	 * and no special handling for it is needed.
+	 */
+	return regulator_hardware_enable(channel->vbus, false);
 }
 
 static int rcar_gen3_phy_usb2_vbus_regulator_register(struct rcar_gen3_chan *channel)
@@ -1151,7 +1168,6 @@ static int rcar_gen3_phy_usb2_vbus_regulator_register(struct rcar_gen3_chan *cha
 	struct device *dev = channel->dev;
 	struct regulator_config rcfg = { .dev = dev, };
 	struct regulator_dev *rdev;
-	bool enable = false;
 
 	rcfg.of_node = of_get_available_child_by_name(dev->of_node,
 						      "vbus-regulator");
@@ -1165,10 +1181,9 @@ static int rcar_gen3_phy_usb2_vbus_regulator_register(struct rcar_gen3_chan *cha
 					     "Failed to create vbus-regulator\n");
 
 		channel->otg_internal_reg = true;
-		enable = true;
 	}
 
-	return rcar_gen3_phy_usb2_vbus_regulator_get_exclusive_enable(channel, enable);
+	return rcar_gen3_phy_usb2_vbus_regulator_get_exclusive(channel);
 }
 
 static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
