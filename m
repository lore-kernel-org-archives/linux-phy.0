Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF328C531DF
	for <linux-phy@archiver.kernel.org>; Thu, 22 Aug 2024 15:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SUGUU9k2G1x8jT1rRMb08ILQ4MEoEQnkG3LRg6PMv3U=; b=O1/FOG1sg0RR6w
	y7s1Mj0GAaUC714xN+7MeGs8gUMn0S2phriaELxrwKGLVYXV+OdWX8NYYiCxLwIXiUrAc8VRU+ek9
	We/2cLmTDUXbGjfsxo77AlJVCj5PU8fH9GvMEw+RS+JVDpROpcw31n0ZvTGaJeacU0qYeYinIFE4g
	iLxIpOCTq3ckKOVg1Lc/h55bFYfjdv7+D7OYifTptnAQhP00lgesgk6St0qqTCYOboGnc+gvYPcBO
	vQ95uYV1P9L3OQkSZ+4O1RkdLqtkmRbagkMUDE5Jo/cBIpgeExVnkmN4V6su+SHx8Wl5AHGmQZJrJ
	usWil1BboH6US/ih4eaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shA8j-0000000DRHL-2558;
	Thu, 22 Aug 2024 15:54:21 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh9jW-0000000DKlB-2MRd
	for linux-phy@lists.infradead.org;
	Thu, 22 Aug 2024 15:28:20 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-53349d3071eso1235478e87.2
        for <linux-phy@lists.infradead.org>; Thu, 22 Aug 2024 08:28:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724340496; x=1724945296; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oG0PQto83btnEL28K6haZsLSn7p7+BWVYeK6+IqQicQ=;
        b=Kd0DuaWhb86PQtp/hxx+OyAnMToW3VGdg6Yh87KrBeYqM5ZoMfFC+5kPP14VTUJT/j
         AYPjVOx49RawudoVYonIsTCP3iUZRvEbYr1YnR2AwnPV8SbQXV7CaEvU4mVbdIDkzFoO
         hgP2xk7DUTFbEx8OGJiKrYCQ/c1Hu8htdMckKvF/k12iad1Q7hVjLW197cf5TVBbn0mf
         3Ii4TJ9OXhBwpzVUGzfwJjovJmCoM3kgn7nwoqA5X++Yd+SIeZYYL596CogNzES8u+hZ
         O/EeNs/mxmjZykOEJZpQ0d9R39ObEtA2GI2awhSusLzs06hEsoknr/+KZWq0dYJD38eW
         scWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724340496; x=1724945296;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oG0PQto83btnEL28K6haZsLSn7p7+BWVYeK6+IqQicQ=;
        b=kokSelFf/28ktyW59rCtEugxg9Lfg3MmkdvesJz5konRynHb+ENje1CEsIhmcAbtwu
         9MkDQ8pCVVFmuufigqiuDizvkweZmC/X28Avn5JqGvb3RI/9FCXr/VNma4RIt8AoYfBM
         lp9on+rgwyjcfVybJvvjcHNcVTD0P5mPvyzmhP04drS4bYF23cRsBr07pE7LT+D6Q2C4
         A+y2HUVogPPEzpH1gtqXRMp056dGnb7h50owX8gApv9K84PxAmsDM3yzZsqK1emtFfJH
         wsObZzuxH5VPcKhxe2UCcAFHfuwbBhDvVs70T3tYen8KDtbkpdLfwu9O4IDxzXNfRNpv
         3idQ==
X-Gm-Message-State: AOJu0Yy6+ah9H1ydzFQZlhNeO6JegXx8k2f/wiuFzCM0dDceO4hZdJJs
	v7iOFgmF3urLj3IZR/aD/E4YBLt/zHB2aLrGDnYWuKWuPmBh/ZGeZU/X5bNq5dX2ECCjgC6Zdm/
	8
X-Google-Smtp-Source: AGHT+IHF2HEzRj6RLICHJMj0My+kwTWQOaRUjHy9OJ1aWJK8tooH9yYqAZuBr0m26WtCehY9rsGeRw==
X-Received: by 2002:ac2:4c46:0:b0:52e:9b92:4990 with SMTP id 2adb3069b0e04-53348562455mr4098402e87.32.1724340495855;
        Thu, 22 Aug 2024 08:28:15 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f484dc5sm134189166b.171.2024.08.22.08.28.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2024 08:28:15 -0700 (PDT)
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
	gregkh@linuxfoundation.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com,
	ulf.hansson@linaro.org
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
Date: Thu, 22 Aug 2024 18:27:45 +0300
Message-Id: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_082818_774628_F85EC74F 
X-CRM114-Status: GOOD (  15.41  )
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

Hi,

Series adds initial USB support for the Renesas RZ/G3S SoC.

Series is split as follows:

- patch 01/16		- add clock reset and power domain support for USB
- patch 02-04/16	- add reset control support for a USB signal
			  that need to be controlled before/after
			  the power to USB area is turned on/off.
			  
			  Philipp, Ulf, Geert, all,
			  
			  I detailed my approach for this in patch
			  04/16, please have a look and let me know
			  your input.
			  
			  Thank you!

- patch 05/16		- moves SoC identification to SYSC driver
- patch 06-08/16	- updates USB PHY control driver for USB
			  support
- patch 09/16		- update documentation for USBHS
- patch 10-12/16	- updates the USB PHY driver for USB support
- patch 13-15/16	- updates the device tree with USB support
- patch 16/16		- enables the reset control driver

Thank you,
Claudiu Beznea

Claudiu Beznea (16):
  clk: renesas: r9a08g045: Add clocks, resets and power domains for USB
  dt-bindings: soc: renesas: renesas,rzg2l-sysc: Add #reset-cells for
    RZ/G3S
  dt-bindings: reset: renesas,r9a08g045-sysc: Add reset IDs for RZ/G3S
    SYSC reset
  soc: renesas: Add SYSC driver for Renesas RZ/G3S
  soc: renesas: sysc: Move RZ/G3S SoC detection on SYSC driver
  dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document RZ/G3S SoC
  reset: rzg2l-usbphy-ctrl: Get reset control array
  reset: rzg2l-usbphy-ctrl: Add support for RZ/G3S
  dt-bindings: usb: renesas,usbhs: Document RZ/G3S SoC
  phy: renesas: rcar-gen3-usb2: Add support to initialize the bus
  dt-bindings: phy: renesas,usb2-phy: Document RZ/G3S phy bindings
  phy: renesas: rcar-gen3-usb2: Add support for the RZ/G3S SoC
  arm64: dts: renesas: Add #reset-cells to system controller node
  arm64: dts: renesas: r9a08g045: Add USB support
  arm64: dts: renesas: rzg3s-smarc: Enable USB support
  arm64: defconfig: Enable RZ/G3S SYSC reset driver

 .../bindings/phy/renesas,usb2-phy.yaml        |   4 +-
 .../reset/renesas,rzg2l-usbphy-ctrl.yaml      |  35 +++-
 .../soc/renesas/renesas,rzg2l-sysc.yaml       |  16 ++
 .../bindings/usb/renesas,usbhs.yaml           |   2 +
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi    | 120 +++++++++++++
 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi  |  61 +++++++
 arch/arm64/configs/defconfig                  |   1 +
 drivers/clk/renesas/r9a08g045-cpg.c           |  17 ++
 drivers/phy/renesas/phy-rcar-gen3-usb2.c      |  60 ++++++-
 drivers/reset/Kconfig                         |   7 +
 drivers/reset/Makefile                        |   1 +
 drivers/reset/reset-rzg2l-usbphy-ctrl.c       |   3 +-
 drivers/reset/reset-rzg3s-sysc.c              | 140 ++++++++++++++++
 drivers/soc/renesas/Makefile                  |   1 +
 drivers/soc/renesas/renesas-soc.c             |  12 --
 drivers/soc/renesas/rzg3s-sysc.c              | 158 ++++++++++++++++++
 .../reset/renesas,r9a08g045-sysc.h            |  10 ++
 include/linux/soc/renesas/rzg3s-sysc-reset.h  |  24 +++
 18 files changed, 648 insertions(+), 24 deletions(-)
 create mode 100644 drivers/reset/reset-rzg3s-sysc.c
 create mode 100644 drivers/soc/renesas/rzg3s-sysc.c
 create mode 100644 include/dt-bindings/reset/renesas,r9a08g045-sysc.h
 create mode 100644 include/linux/soc/renesas/rzg3s-sysc-reset.h

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
