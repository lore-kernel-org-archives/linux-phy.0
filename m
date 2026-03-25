Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DC54FEA83E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Mar 2026 11:20:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=25sbjO8FlR5fCBuT1hNhf+cpvumMEVbhcgNTHo0i+AU=; b=V2YYZV3CwevMfv
	ckEFXkInQDIQiFB9onxjilb2uAHajfuth8tbawAElWYOwJ4FCVXKrE1jFuCfWvX2kSGW5yR3KKZfM
	wh0E+PfM1WNBOBev3yOTMQcSD7xQFDKqvqQUV8flLAtYk+QdCbFHoHg5k0nqxyvZEviXEDSuI7dAv
	XcsaE2RdIbjHL419KnBdV2AnUVAeO+oTZGhuIk3mCTwH8nC9p5KaBsW63D3Bik0lLZP1F4ByW5wfH
	5LcbIFzzlxEbmMQgEj0S0WMp5M60DFJGvDwhx3aX6qo2V7pMYECv10i7OWlN0wJDg8DbxfLtu6QIP
	aVQSnvuu9BXMS5NuocUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5MI7-00000003FB5-0q6V;
	Wed, 25 Mar 2026 11:20:51 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5MI4-00000003FAN-20Ck
	for linux-phy@lists.infradead.org;
	Wed, 25 Mar 2026 11:20:49 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-486fd5360d4so26519955e9.1
        for <linux-phy@lists.infradead.org>; Wed, 25 Mar 2026 04:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774437646; x=1775042446; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0dwTG4J1M8IL8PPbtOF4W3xYh4+M5sfK/wvLd5SnCE8=;
        b=shJGAMYgEknbNfmqrwnbkbMtV7Xq4tpS+0KFH4PNcz13mtW2mNS3UsFt3innwLi0/g
         asEfalmMQDoBqfyEvQ5z6MVPXG4NKP7GcXRPBp8aQo1+jwcJ6fnmlZqW2lLqNeExYQP0
         hJ/yggIamQkQg2mU6tNocobtdzChpfgckvraFOrQpOunFEI3KdPrDzKggbUM6VEDLmxg
         JdVNOCMXOqMKexQOnLH2kfqRr8imUnf0QInX3Qz3xyu6IpTv3IqWT6TcBrLV3IPZjWUA
         YtaqZDkhtWCCr2giCA+H7dUJHIel6Ip0Svkfce2ol3XP7mYMBko0dL81QN0OcbjIhRMK
         bgEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774437646; x=1775042446;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0dwTG4J1M8IL8PPbtOF4W3xYh4+M5sfK/wvLd5SnCE8=;
        b=ZsJrULtiVY9O2z34uTYNOc0qiiG5ygYcTacqFxvrMxLEGGnStlQgZiTAeWyCH3tKie
         BU2E+qeRFQEjtsu55CI5axGU3R3oLK+6K/qWy+OEOXIGJBei8hiE4cYDYODYp9FkuXyP
         62lmEJojdmVeUcfb/T4ps1PwtjwPxUd2N3zuCC0YOd/o3tk1khQI0iiqBuUrKj4XOdMQ
         4KDtFWxTibNSi/E+urQrlqGxyVUFfgJaQ1J1vTbXbT6aVk98GcN0ZiELDk8GF1hkskG/
         9iYITH9pay4A1+2aAMJlqVIgGz3Em35A8dSLas8r0JCjVTfqPtVGS2a4QFoyhqHgF3GZ
         E08A==
X-Forwarded-Encrypted: i=1; AJvYcCVTZPvh6SY2dQO/WHyaNSeO41dPg6GdlOPuJEngRpbPSdw7LIaZARbpjSY1jj7OKqLm6XxVh1CbVgg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/zdLV8fK6k/ECxEQNCK9o3QL8IIoRaDvySpjW7lshtNGaYYEI
	J6RHnL27sAyKKWpVBtsi0EMAw+c3q5W4+M5UVhtP1dzfWSybMTTi+5pV
X-Gm-Gg: ATEYQzzB9uXwM0ViZ1h8W99WjS34C958RHwOh2aToqTxKu9ndzPd7a/7+q7sNLqbd7E
	aZA8813bu7lvmkgA5burBeuDTNbKVaHqL4ZgaiM9kZCd+yLIfWD/VQNcEkpNZfbGTjM1C4UDQOs
	dryIeRZkkU3xssM8PZVf8r2sJa3BlyXJabe3GumhUpQ+aVqQlhdTN7L1DWAKpA7vCNsdNqI0Co7
	a7PRwV0JVO4uFW4emRviMc/kMRhfWuS9q9vr5Yetp4PWL58QAbnM8xAgFEO3hCAyzw6QpaxyQ2H
	oYWMrZykW8KwTJNOvL7yGgP64vUcfGRwNOIdT/EJ2RjPWnwouc+aqtF76pTpF6BxfKv5/3EXXvS
	LmFD7yKu6FPeqmFC7wDdh6qApaujsf7tEwV44yTKH6uehX9uifRFzwgsY/JSvRaCJCftHNURQ4m
	OH0/0s7/rmtmxMVcdicO+ENsEF6qZHX48OVjBySUhXniMZDJGP3UJhlKqL2iLkaSOlhD8gjaRgc
	xY/DyXiHmbG9vbhx8HoTvmJK0cSZfK0sPiS
X-Received: by 2002:a05:600c:1e09:b0:487:5c0:671f with SMTP id 5b1f17b1804b1-48715fe711emr53696995e9.9.1774437646297;
        Wed, 25 Mar 2026 04:20:46 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:3783:5d64:bc35:885])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-487165ecf00sm20077425e9.5.2026.03.25.04.20.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2026 04:20:45 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Pavel Machek <pavel@nabladev.com>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v2] phy: renesas: rcar-gen3-usb2: Simplify ID/VBUS detection logic
Date: Wed, 25 Mar 2026 11:20:39 +0000
Message-ID: <20260325112039.464992-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_042048_531976_8EFE7925 
X-CRM114-Status: GOOD (  10.27  )
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

Read USB2_ADPCTRL once in rcar_gen3_check_id() instead of issuing
multiple MMIO reads, and derive both IDDIG and VBUSVALID from the same
value.

Drop the redundant !! operator, as assigning a masked u32 value to a
bool already performs the required normalization. Simplify the logic by
comparing the ID and VBUS status directly, which is equivalent to the
previous conditional but easier to follow.

Reported-by: Pavel Machek <pavel@nabladev.com>
Closes: https://lore.kernel.org/all/acJVCOdlchLiSe5n@duo.ucw.cz/
Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
v1->v2:
- Rebased on top of latest next-20260324
- Combined variable declarations and assignments and dropped
  redundant !! operator
- Updated commit message
- Corrected the link for closes tag
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 79e820e2fe55..9a45d840efeb 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -314,13 +314,11 @@ static void rcar_gen3_init_from_a_peri_to_a_host(struct rcar_gen3_chan *ch)
 static bool rcar_gen3_check_id(struct rcar_gen3_chan *ch)
 {
 	if (ch->phy_data->vblvl_ctrl) {
-		bool vbus_valid;
-		bool device;
+		u32 val = readl(ch->base + USB2_ADPCTRL);
+		bool vbus_valid = val & USB2_ADPCTRL_VBUSVALID;
+		bool device = val & USB2_ADPCTRL_IDDIG;
 
-		device = !!(readl(ch->base + USB2_ADPCTRL) & USB2_ADPCTRL_IDDIG);
-		vbus_valid = !!(readl(ch->base + USB2_ADPCTRL) & USB2_ADPCTRL_VBUSVALID);
-
-		return vbus_valid ? device : !device;
+		return device == vbus_valid;
 	}
 
 	if (!ch->uses_otg_pins)
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
