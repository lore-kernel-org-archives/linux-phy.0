Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1604AC3ABCB
	for <linux-phy@archiver.kernel.org>; Wed,  7 May 2025 12:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QecNTOVv4wEelS37bPeWIFHZbywl/HEJfDCvCOJXe3Q=; b=aag2S2owJusuDY
	MskBYJ+np+qIlO5yTWYYz6h4pvunzwt2H2HeOISKzQg9dp/I+IbLJ3lq8OdKhPcmrzN2+pIr+3mCQ
	KJNuFAqLsFb3jRh8Gc0rDK4wRQN/9A2cTb9ovuQGlO/6NEjas2Uuse7YnnoQb2gXxYr9XQWDMcrf2
	AsIiLR8DdZduNxIAqvn1eunV9/vu8Vcb9SkjvLVOMCMP9/JKuqSCy+hXHCN30pz0mV/MRudRHh3QZ
	l3yWjOqIIAKbzJCNje0ksZxNHGGsev/JuzksvJbfYJDl4qusCvYRAQV4LJZ4bz0di04PXri6nb9ec
	pnl3vv0ooqToCZsdfosA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCeFq-0000000FTdx-3X0c;
	Wed, 07 May 2025 12:52:06 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCeEV-0000000FTLq-1TEN
	for linux-phy@lists.infradead.org;
	Wed, 07 May 2025 12:50:44 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-acb2faa9f55so909796866b.3
        for <linux-phy@lists.infradead.org>; Wed, 07 May 2025 05:50:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1746622242; x=1747227042; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=II15ozzD5Ll5bPmianAxLgZ6qAOgIxXenrt045Eb9ZI=;
        b=JwRozsX3KFO4zbusv0hjzzpZq59gIQUlyISalfdaX6LHoPhjJXsU1qezRSnUxJwVBr
         jk/tINf5P3EHzwsUMlUO7P95p7i5J/9S42iGHu+xFfIz7ypSepCO6+2KauQVqw0O50W6
         fIl7pkHB+gi5IiaAaq4Mv0RtEsQSQpwegojNuyaWwV0VT8FGJmSlgnZbg4x50ZGRgwGO
         dSjbTkmp6CCY9pq3QtqLC9LKYri8syJVId2M/sfCJCW2KtlocGK1VMzzhp8YnaLLOu+N
         gwqRR9tWmJnSMhKW+LSs753EKhg/D5f/4lMthbYdkEcocPj6sRGgTpb/Ruf3tT/iSUc3
         ru6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746622242; x=1747227042;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=II15ozzD5Ll5bPmianAxLgZ6qAOgIxXenrt045Eb9ZI=;
        b=pF/drnqclJDlFap+/5kRcIWEmfsjO9/1xwI6OP2EYRKASOMl6b8oqHiW47Jz+x02H5
         ezLvl/EvE/vY+BrpbaY6l5CK0RgyrpRra/0lFUC7C+vwG22F0FiCMF0W94pS2m/dgcDp
         wiXXzNg92M/vy8rCGnhoFDt5l06y8+crD8lNTTr/2axv9ratHwnWOLNhTNDOb0n9vHrV
         GOJRKDW+Rv8FPUmH+LCekn0hhlPsqtDbfAxJD/mnjbPCm40P2aUMlzNORkK30gTbA32q
         emwjKxSq02gheBMyybu5P4JpeJlG0Q8cmR2T8g0vtPVi2bgMepzbfheZi8A9QPIJkcAj
         VlHg==
X-Forwarded-Encrypted: i=1; AJvYcCWVmiSxs0CQkBVh2lcyoM2geQXEd5/6wVrYEIFAech9Lk1t6U/gbkzr2jYm8YOhHkuQBZn915PmBWA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxL/0RcpVNMM3mzHJdRv+IXG9awheJdqptQ/YH8R03nqaZLl6aw
	gTLrTK73y+LQpJzU74SqIYZ3EE1eW+D1VjFET6yGs8Lhx6Te/GIqtRUX2TbeL2Q=
X-Gm-Gg: ASbGncvJiqigzK545VwnPrdzYY9yjXXHlwumLg74uRTOLB3HwziLpVw9fpArEeUEXnn
	uRHo4/IiOj9uf8w4s60He0NosmvWFs/WLAzRUG+rX7UogvAPtf1LEZm2QkBtnGeVxhHohVQtmcf
	hAQy6RWBYoou/h0C1t1PLW3PekW4YY0gS0u0OQ+na1lGc4GCrjtkv484lF1frhffbRWobVSlYnU
	lMPwXk6G0M0wZsygEUVnGFBJy+Z3uYYMlvsbS8ZetDeQMMx1zgUqiy0AfYYtR+LqrUJTcm0oBZV
	UdTTAnGeXbOhhPKoRSZ3QAKNM/ikaf9oe/zcPY/cVEDdyHcD/c6aUvsNrdetZCFQeAqsKys=
X-Google-Smtp-Source: AGHT+IFlk8miHuB42VMfUHBSf4Jai1MFWbXY60yj6sLC16sMrTufuU3xeUkiepwAWbCikXCtbz3w5w==
X-Received: by 2002:a17:907:9411:b0:ac7:391b:e684 with SMTP id a640c23a62f3a-ad1e8d9c78bmr295475866b.58.1746622241642;
        Wed, 07 May 2025 05:50:41 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.147])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad189146fb4sm913182766b.10.2025.05.07.05.50.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 05:50:41 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: yoshihiro.shimoda.uh@renesas.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	horms+renesas@verge.net.au,
	fabrizio.castro@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	stable@vger.kernel.org,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH RESEND v3 4/5] phy: renesas: rcar-gen3-usb2: Assert PLL reset on PHY power off
Date: Wed,  7 May 2025 15:50:31 +0300
Message-ID: <20250507125032.565017-5-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250507125032.565017-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250507125032.565017-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_055043_387306_27D9A1E2 
X-CRM114-Status: GOOD (  10.37  )
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

Assert PLL reset on PHY power off. This saves power.

Fixes: f3b5a8d9b50d ("phy: rcar-gen3-usb2: Add R-Car Gen3 USB2 PHY driver")
Cc: stable@vger.kernel.org
Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Tested-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- collected tags

Changes in v2:
- collected tags
- add an empty line after definition of val to get rid of
  the checkpatch.pl warning

 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 00ce564463de..118899efda70 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -537,9 +537,17 @@ static int rcar_gen3_phy_usb2_power_off(struct phy *p)
 	struct rcar_gen3_chan *channel = rphy->ch;
 	int ret = 0;
 
-	scoped_guard(spinlock_irqsave, &channel->lock)
+	scoped_guard(spinlock_irqsave, &channel->lock) {
 		rphy->powered = false;
 
+		if (rcar_gen3_are_all_rphys_power_off(channel)) {
+			u32 val = readl(channel->base + USB2_USBCTR);
+
+			val |= USB2_USBCTR_PLL_RST;
+			writel(val, channel->base + USB2_USBCTR);
+		}
+	}
+
 	if (channel->vbus)
 		ret = regulator_disable(channel->vbus);
 
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
