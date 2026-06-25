Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49E5DCDB479
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jun 2026 02:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fv1TD+7NV0j+4QXB2r48vekzhCCz2nkaSsH8jbkJcu8=; b=FoawEAe5QDLAr2
	61tqZ3KkBcB7UBbq7DHXrL8Z75jnaWZrzaDiWTZCk39oFPryBIq9pWArjzc34F5xVnf0c3lz/FlnF
	LrwRRoAz3x1jCXhq8tr44GNxSvMLD4xa7bQyXnJZ0AuPopXOiG9JhIYiYjKjVHjQ8AUEBLnQDAHft
	7bXj8QU1hkh4khUg4y74vlQXTA0fkvjXr/m7wLvb+GQXMqjl2LPkhNjDRw4iq0aXOjmG9py+C/CKb
	8dTHrDzparIGoyNARzSjOndxoKVdDFJQqF+VEOJwcGop3P/pphwJYCbcbwhjwFiLKX+S6+rTWQQRS
	8CGekAd5kZ538i64j9+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wca0g-00000008ZlT-21eU;
	Thu, 25 Jun 2026 02:40:10 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wca0d-00000008ZkF-1mg9
	for linux-phy@lists.infradead.org;
	Thu, 25 Jun 2026 02:40:09 +0000
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-37dd266c32eso1300220a91.1
        for <linux-phy@lists.infradead.org>; Wed, 24 Jun 2026 19:40:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782355205; x=1782960005; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jNZIPicjbhTWqiH8QggWQnz7Ntv8N8jFEbB8QeyQbLg=;
        b=obOcpKlClJGQj5PBGIO86wmq2D6qPaCaEWzVGEAivyEIETsFWoJ+aUpZrArpVo1yLc
         +hlf898Oaw+r443grXYMOX9CUQpvW84PnD7H251LBtyvzBP37BW9aVeO01UXpPlFMvf+
         ONGi96TifgMJ2qNiCKJh+qM5QYoKIxjOTV2dLolx+HFniarbzaQhdK8SMVItcWcv5CzW
         Blr1UTyfGFIGWJV0eRaP1oi97LvcPdA238FWkp81bXCIyL5fx8d2Q8rrHO8j3zKSRwBP
         qD/kbcLBmtJXIjf6RxYseUYzoy0glCU1z32aNRKOWTiH3qjG2+I+Hx9URMGRWBk68dOT
         s3UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782355205; x=1782960005;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jNZIPicjbhTWqiH8QggWQnz7Ntv8N8jFEbB8QeyQbLg=;
        b=CErr+pf7v1xuLNpMSM+1C9tH5TJDXh0RtxfKNeHdTyYKHmdWM4+yaqTFjWrxkkxaYf
         IDHrzfpyseW+5y1hAeOhj62N9zACb/BsAGGpEQncqMXgf5FNNt7RS3KqmZb8EVPE8Bz4
         CHLdGoETlCetdg2GHqJNhbfe3Rhp6AUmPha0K2cSIt8ufWvmyHBI5GRAmp+I050/FBbO
         8/8ATzS3v7NlvEhgQsh7bciB2Lvt97WlR4yklDMkqUdfIcAA6SxSxEThFQcqWkD7qfkJ
         wc+jTDyKLjFTB9odA5zkt/1cZH1MKNUew0nC9z3LGFyYx4cpqBRKpsj1pxZsQpaAdAk3
         KnMw==
X-Forwarded-Encrypted: i=1; AHgh+RryckiM8hgcTfdaYz9qJ3ZX1nVj+9uQ3ggKWlmmMIvn/W2sDGXzTb2UdeMJxDqOq0/yGd0PqaZ+sMI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzXt1DRnU2Pr3pKNjjJD06t86FIAQL1hhrZxurLwF8/2yRjCcos
	GcX2RNQ4CX+Cm4gcGW2/1a2Q1+Kh3tMlqujOVt2OWzWbDiDP4TOjViCf
X-Gm-Gg: AfdE7ckvcADyng+E/ysKZDdFe8NS5aBufnwV1mAro+cRhiiEZI2NDbGAK1e3s66CF2i
	5C1+Bv7ZBmxMVV+iQkCL767FAKChJGdx+7e3ypIpeFW8505Sg/rkqg60nXp9lOJ8x4iy1jnrQtR
	BN/1tY7eca4F+SBj/OWUUbVG+klKDuCVB4wJrUgMfA73tvIO+rLu8IFrD4BLqEH/8jMyRdBlv78
	BTGnW/Lz0jTJ7Ozbj5/qnB2rVwlGKTsRL9K2l+ez28iCd+SrCnXA0BRgKb3tLiRqdVZiJebAuUf
	Ljd2fmJKJ3owgpxNpfS/WwPMMRouST6SYa4vUSGnTUliH3fO0s5tvQOcQgk74lVfECR3Rkkpjqy
	Ib0EOJj2p375txXdVUBmfj8SLzVP5FT/ChT5kDJyilCJYlCyKCMMIfEBinC1+ES8Fr/F3PgPRA6
	etsDgWPW6ADJPWbG143sQ21GaKCxOBUOtV5DK5cF4zaJ8Pi+1Rs5HP+hsFbapDL/1XNBNuR168f
	A==
X-Received: by 2002:a17:903:2c5:b0:2c7:c4b8:60c2 with SMTP id d9443c01a7336-2c7fc798ecamr7218765ad.11.1782355205260;
        Wed, 24 Jun 2026 19:40:05 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c7f64dc839sm8538545ad.68.2026.06.24.19.40.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 19:40:04 -0700 (PDT)
From: Joey Lu <a0987203069@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Jacky Huang <ychuang3@nuvoton.com>,
	Shan-Chun Hung <schung@nuvoton.com>,
	Hui-Ping Chen <hpchen0nvt@gmail.com>,
	Joey Lu <yclu4@nuvoton.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Joey Lu <a0987203069@gmail.com>
Subject: [PATCH v2 0/4] phy: nuvoton: extend MA35D1 USB2 PHY driver for dual-port OTG support
Date: Thu, 25 Jun 2026 10:39:54 +0800
Message-ID: <20260625023958.569299-1-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260624_194007_466807_52C0FBD6 
X-CRM114-Status: GOOD (  14.02  )
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

The MA35D1 SoC has two USB PHY ports managed by a shared hardware block:

  - PHY0 (USB0): OTG port shared between the DWC2 gadget controller and
    the EHCI0/OHCI0 host controllers.  A hardware mux automatically routes
    USB0 signals to the correct controller based on the USB ID pin.

  - PHY1 (USB1): dedicated host-only port for EHCI1/OHCI1.

A previous series [1] added a separate phy-ma35d1-otg.c driver for this.
Following reviewer suggestion to reuse the existing phy-ma35d1-usb2.c
driver rather than introduce a new one, that series has been dropped and
this series instead extends the existing driver.

Changes in this series:

  Patch 1 (new) adds simple-mfd support to the nuvoton,ma35d1-reset
  syscon binding.  The sys node needs to act as an MFD parent so that
  usb-phy@60 can be its DT child.  This patch is a prerequisite for
  patch 2 and has no functional impact on existing users of the syscon.

  Patch 2 updates the nuvoton,ma35d1-usb2-phy binding: the PHY node
  becomes a child of the syscon node (reg = <0x60 0x14>), nuvoton,sys
  phandle and clocks are removed, and #phy-cells changes from 0 to 1
  for per-port selection.  Optional nuvoton,rcalcode and
  nuvoton,oc-active-high properties are added.

  Patch 3 updates the MA35D1 DTS: sys gains simple-mfd, usb-phy@60 is
  added as a syscon child, and DWC2/EHCI0/EHCI1/OHCI0/OHCI1 nodes are
  added.  Board files enable the nodes and add pinctrl for the HSUSB
  signals (VBUSVLD, PWREN, OVC).

  Patch 4 extends phy-ma35d1-usb2.c: a loop creates two struct phy
  objects; a unified .init handles both ports with parametric register
  macros; clock management is removed (each controller gates its own
  clock); a read-only USB role switch is registered for PHY0 reporting
  the USB ID pin via PWRONOTP[16].

Changes since v1:

  - New patch 1: nuvoton,ma35d1-reset binding extended for simple-mfd
    and child node support; required as a prerequisite for the PHY
    binding which places usb-phy@60 as a syscon child.

  - Patch 2 (was patch 1): nuvoton,rcalcode description updated to
    clarify that both PHY entries are individually optional; example
    reg corrected from 4-cell to 2-cell format.

  - Patch 3 (was patch 2): ehci1 node address corrected to lowercase
    (401c0000).

  - Patch 4 (was patch 3): register definition section header comments
    added; HOST_READY and DEV_READY macro comments made more
    descriptive; ma35_role_switch_exit() added to the PHY provider
    registration error path to prevent a role switch leak.

Link: [1] https://lore.kernel.org/linux-phy/20260604101220.1092822-1-a0987203069@gmail.com/T/#t

Joey Lu (4):
  dt-bindings: reset: nuvoton,ma35d1-reset: add simple-mfd and child
    node support
  dt-bindings: phy: nuvoton,ma35d1-usb2-phy: extend for dual-port OTG
    support
  arm64: dts: nuvoton: ma35d1: add USB controllers and dual-port PHY
    node
  phy: nuvoton: phy-ma35d1-usb2: extend to dual-port with OTG support

 .../bindings/phy/nuvoton,ma35d1-usb2-phy.yaml |  62 +++-
 .../bindings/reset/nuvoton,ma35d1-reset.yaml  |  13 +-
 .../boot/dts/nuvoton/ma35d1-iot-512m.dts      |  36 +++
 .../boot/dts/nuvoton/ma35d1-som-256m.dts      |  36 +++
 arch/arm64/boot/dts/nuvoton/ma35d1.dtsi       |  68 ++++-
 drivers/phy/nuvoton/phy-ma35d1-usb2.c         | 267 +++++++++++++-----
 6 files changed, 391 insertions(+), 91 deletions(-)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
