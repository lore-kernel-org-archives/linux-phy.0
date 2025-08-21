Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31F72CA0EEB
	for <linux-phy@archiver.kernel.org>; Thu, 21 Aug 2025 23:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B2o9O/QaJ5O5/op+xyuaslHxJyTQVw5KQFSTG7bDKPM=; b=YCV/YCZCNRmbPv
	Emk3FgxD6g+qlce0TzntR3y0Z/UKrWIqID0eTZBp3suxwEy6wVUakyjuP89yurUw0vtgmvOlrXtdm
	Y2Yb9jEr3sOwIjwRH6IWh3uC2XKh/Xgdlz/USK1sFiPuMxBd0WAkm7TI4P4MCUg/ZAPeNVq+q47kJ
	fL21IZYicY8cGffi9xIkD99DrV4o1Xo8cK+pSEY8Sk8guO8BF8RC8nwkKh3jP3VgsxbX4o+14hbDX
	zgGWmdZexjPkCIH0h8idOIEMmq0g93P1Dwo2TWf0TJWtbO2dPZL46aLR22j2DHyjZCkEHUmG+kiEN
	6Vs0zr5QU/K5s6xH8sQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upF1n-00000000xmo-3GN9;
	Thu, 21 Aug 2025 23:49:07 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up7ht-0000000HUWG-0hb7
	for linux-phy@lists.infradead.org;
	Thu, 21 Aug 2025 16:00:06 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-45b49f7aaf5so7317035e9.2
        for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 09:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755792003; x=1756396803; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+uRhDEatB5agjNveDNa8WPfez/o3bp8wW0q2C4oGTl4=;
        b=Cf/hpQ9TEai3ydECDt34oMvwtkClV+gSCSsk1/oi+4Qs1uKURVDe5ePW2wYrrJ5+2X
         DauM+83/2N/zn+ovn7qhGykp5+zAtu2rb8nNU0hVWmBM53NVi8+sl7VX8ECwTTkXlLyF
         SdYzl1zLJvtLBe9esS6lNZQYJDgz6m9BpGWsdUB6U9dyLtxlOIZNnzg0ts4HLOXTTClz
         URdrGSE/Jm/r7G8TLCyN6a2O3VBsBe5mB0wbfkEZFxqwH/cLQewvDM65tT6lR23eH1W4
         OpB7JL25SPJZ0jlI1//pcneFH5Mo++FlQ1TyYTwU1qwfN0+xRRYrLlbD0u/DOMXC86sO
         ACPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755792003; x=1756396803;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+uRhDEatB5agjNveDNa8WPfez/o3bp8wW0q2C4oGTl4=;
        b=pWfy9/NmsSHxZ/v2+0ffT1yJ5nRIBWBp7Gb8AYkz+l7iInsdlFAxVoZvt/P36/2PL0
         oMv3wmcOCFExi4i7knmdFhjogNqk6mMQK9ExxSjH0wyBfKP5jSkw8U4DevmmtPtuabNO
         XqC+iMVOu/zsQfcCepCepO1Ii7rmkTtZXmAw7r/juYrBanFB/pzMpQyblSNL51dL7VV0
         tTOfmsG00fBwQbktsMAIr8soKkGkYm3ruQ89ydzITxczcdOLArHlMABa8QCcUMa0EYVz
         j0GKzyk3Q4E6dKyTOZocmDtwG0Fug6BTI1TaASLzqklgNGdZnpupp9bO+LFNyxekdFiC
         rfIQ==
X-Forwarded-Encrypted: i=1; AJvYcCW7pcCCPJYKv5NVsB/KcmymOu5WCW2KYObnmIsaM2g0X2b3SeU6wqOTTlg25DskXUaKNT62SvC6KOg=@lists.infradead.org
X-Gm-Message-State: AOJu0YxGYWT4dANwR5Un6MqB0LGR//U48yDAGc6Wti1CIiAktvcQnv5o
	CjRu7ms+Be2GiuSPE9YFAbDKqMrkA79fECBDFpq/0HB5PdClLmZKZZ4s
X-Gm-Gg: ASbGncvU0xTsGnW8Xc0szuem0AcXlYK8AMvwJSu5OAcb2kikp2LGWErz1QwhB7tdN7E
	IveASH+WIFVTEhpr8jdubVrBzeFCtS9vxhlul+HOwRjk/RLpMP8n4gqvQMBbkNuRJRH4bJZvTkn
	EquT8Mljb/Uf2BffHPuopRnEGjigDrYsNfa06n5DTUQx0me/HZOeHIC4fvqUVFBswkowGFHEKGh
	orepr5xeeBITlLuzqPj09h38ReofhnJ0cuxZl14n/Dpvyz3h5IvIWWpPjhXYUouH/Dxb5c247lq
	EF4pgO7FiCYfGDc3ERRdf0xz94zWxQHjBWJ35djH6dZJYW17O65+uN6FybmfuVvgk2V023SLtCV
	90SSAzihqfWg2KJBVYVurN6Nx780NyH8yMYIgRQl+SzMXpQ==
X-Google-Smtp-Source: AGHT+IEHMuOfqfbEAXyydz/6yEfDq/aFSpBZM+r3EDWx421l2nlrumbtomZYVdIHljUIvIOHLKf4PQ==
X-Received: by 2002:a05:600c:1f0e:b0:456:1b6f:c888 with SMTP id 5b1f17b1804b1-45b4d84bbd4mr30919085e9.23.1755792002897;
        Thu, 21 Aug 2025 09:00:02 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:9ed2:95cd:69a:8d10])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b50df262esm2121395e9.18.2025.08.21.09.00.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 09:00:02 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH] phy: renesas: rcar-gen3-usb2: Fix ID check logic with VBUS valid
Date: Thu, 21 Aug 2025 16:59:57 +0100
Message-ID: <20250821155957.1088337-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_090005_224105_BB5870A7 
X-CRM114-Status: GOOD (  11.60  )
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

The existing ID detection logic returned false when both IDDIG and
VBUSVALID were set, which caused incorrect role determination in some
cases. The condition:

    !(device && !vbus_valid)

did not properly reflect the intended relationship between IDDIG and
VBUSVALID signals.

Update the logic to:

    return vbus_valid ? device : !device;

This ensures that when VBUS is valid, the role follows the IDDIG value,
and when VBUS is not valid, the role is inverted, matching the expected
OTG behavior.

Fixes: b725741f1c21 ("phy: renesas: rcar-gen3-usb2: Add support for RZ/T2H SoC")
Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 7b4a6e8b7508..70498145f0f3 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -302,7 +302,7 @@ static bool rcar_gen3_check_id(struct rcar_gen3_chan *ch)
 		device = !!(readl(ch->base + USB2_ADPCTRL) & USB2_ADPCTRL_IDDIG);
 		vbus_valid = !!(readl(ch->base + USB2_ADPCTRL) & USB2_ADPCTRL_VBUSVALID);
 
-		return !(device && !vbus_valid);
+		return vbus_valid ? device : !device;
 	}
 
 	if (!ch->uses_otg_pins)
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
