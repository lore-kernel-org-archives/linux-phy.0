Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CA80CD98CE
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 14:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=elPOFkr3HlnJSq167jgok5H3jzqEOOO1IBW7i+sZGUE=; b=pigDFbY4zGAc+9
	ZzoOEGVugaAUGMFcxBIOPlYvBlBV0fIRRLMDT4rkUgey4RyISMA0ibH5DeAsqCNe5hryQtiJwRxK9
	tnYYzNrXVIA3x3ee6kyrVsoHPDWDvGOhEO6Dlheo8kGlKYSCIGltsvA4IEUyVBDv/RjAr7Z+ghKr7
	TVQY7NANvD7J1Z1FAexHZJvjsE6XGpjUa3fUJVfU01U63PD3nev7t8TZYjf8I7hDksdTaStua9Utm
	NxL60ryby0au0AnNKy7tkrD6Zm0B6Unvl4Jzd++y1/Zwbsul/HN295eDLV1uSE919tNzWjXiGMlWY
	Gjn8RPumksqfiREU4KMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY2uO-0000000B4fn-3cyf;
	Fri, 12 Jun 2026 14:30:56 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY2uM-0000000B4eA-2aNY
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 14:30:55 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-45ef1629ff4so719678f8f.0
        for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 07:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781274652; x=1781879452; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sj5YLZXXcBmUxWzHptzfJghLh2vd+J2ccuESFm/Sbrw=;
        b=sar15Yxk15HLlhpCs9xh19931cTSBXQwkhBH++ZK0+HkEKAwTdWwecoBomNS53KUIB
         +1REYMUJuo3mmkDHE0gUSu7+IYpTempSfhMGHXBDH3yL2sUvXGB2ujRtblvClaPbIZNq
         qz9kNvfgg0Jwk+xSv79IkGNTLEHCDdMNnZ4G0QB5K2cgvbGgkHXymYSBoVOCcp+s1UbK
         I5700rpLV6Y5MB6NVBrqwvMLVi7qjaiNEiam/zOM3lsvhig/bxuJ/OdoK/H16VeSYW37
         i/9Y4ub++GopscG3i4YuwdewxV5vjT/gUeYju5283F5AzcG/97q29w59aYLgcPMXMgsy
         t6Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781274652; x=1781879452;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sj5YLZXXcBmUxWzHptzfJghLh2vd+J2ccuESFm/Sbrw=;
        b=FW9OVJz4ue/vcHrUgu+VlMVt56XEYCe39xELaejISAk4y52izOSLPtj/B2vsWk3dg+
         u6HKMWStpalz1nWLJ2aOdBd+Q+mXDrMjweXbZcD9wF7S/ennlHgUZAutuUcqQ+B1OFX4
         /Vhv5APc1WDP0tVabgKCGvSZYTuG3mY32aO5RW/j0vKhHyszZ1uJ1AsX/6ofBSWmhtUf
         r2dFjB01QS4xpHLicYeWDxuKAJfOJZmL89swgpJkwWdqXaThAxqeKCwDmrH1atYHYTqW
         CbBGLJoEzZaRK5hBJ22FCAVsqeT3nCOJU5HY6tOc7cUciYlmrg0Q99sl7Pzo7fUB1ZhB
         DxPQ==
X-Forwarded-Encrypted: i=1; AFNElJ+BT2TpmQ44mQ7WJWV45sXl81j6n1C+8NHMOXxeYutN1/h0HOZ/5s5EMYkqGUWPkO55yuP6CWrAr5s=@lists.infradead.org
X-Gm-Message-State: AOJu0YwhuwOGmJt5PSvb9YrzIr3Fx2KzwTlQUQDrgK24F6NIHKGlTbD7
	y/CftC+DsXE7Ao+0UYwbUawzwZH2nCAaENkPZ1mCyVTk7gTTybUSl5wH
X-Gm-Gg: Acq92OE8dfoMoZX6QpCsxPkFq8bFgb/v/mVSVbX2kvPytrENTN+ZZqzJjBiMBU5gQfc
	trBW4U3AfM8vwHN6nQ6y1dnsMrJerWa0Rqd+UPTSxOqHLTLnibRPDjQbFCenIyYvo+2n8XXgWzV
	H08YKax7RUQxT0PGoPosEUOpOV0dJdvNTvSgeXPxa/VahBOVIJjM93WPqK42MJacz5HT5Zl2xGS
	uQfgDGANv7vUjlYJohbNcB4rpd99tlySIK38yqgUCehg26JeKoKF5YSFZuaUvZzaT6gpq1eX7RS
	QNEKBQaTi8eRtbQLGWNzvL7JYjCEetr+g/Y9kk99nfC49Y5pFYH7ne1vdrX6xgwbblQTVMdz5t7
	tZoTEndSyh+tvRcm2jIQkcg3JZi+iQ9KjtcKkfUha21NeaxBcbdG5gRt5lJEM66+A+FTxLwDtf6
	KuU3YyAFxIi47F0Yl6zSKBHnwtNfxWxXWd0rv/kicPL4xySr0Z
X-Received: by 2002:a05:6000:428a:b0:441:1cf8:ca00 with SMTP id ffacd0b85a97d-4606db9f17cmr4752008f8f.26.1781274651930;
        Fri, 12 Jun 2026 07:30:51 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a700:7301:c72c:50c4:8b28:9a3a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4606f2c3782sm5850016f8f.25.2026.06.12.07.30.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 07:30:51 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Philipp Zabel <p.zabel@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH 00/11] Add RZ/G3L USB2.0 host support
Date: Fri, 12 Jun 2026 15:30:28 +0100
Message-ID: <20260612143048.317907-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_073054_671854_AFE7C2E6 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
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

Add device tree binding support for the RZ/G3L (r9a08g046) USB PHY
controller. The RZ/G3L USB PHY block is similar to RZ/G3S, but each port
has an OTG controller, unlike RZ/G3S, which has an OTG controller only on
port 1.

Biju Das (11):
  dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document RZ/G3L support
  dt-bindings: phy: renesas,usb2-phy: Document RZ/G3L PHY bindings
  clk: renesas: r9a08g046: Add USB2.0 clock and reset entries
  reset: rzg2l-usbphy-ctrl: Introduce info struct for match data
  reset: rzg2l-usbphy-ctrl: Add RZ/G3L support
  regulator: renesas-usb-vbus-regulator: Introduce helper for regulator
    registration
  regulator: renesas-usb-vbus-regulator: Add RZ/G3L VBUS regulator
    support
  phy: renesas: phy-rcar-gen3-usb2: Add RZ/G3L support
  phy: renesas: phy-rcar-gen3-usb2: Fix devm action registration for
    disabled VBUS regulator
  arm64: dts: renesas: r9a08g046: Add USB2.0 device nodes
  arm64: dts: renesas: r9a08g046l48-smarc: Add USB2.0 support

 .../bindings/phy/renesas,usb2-phy.yaml        |   2 +
 .../reset/renesas,rzg2l-usbphy-ctrl.yaml      |  20 +++-
 arch/arm64/boot/dts/renesas/r9a08g046.dtsi    | 103 ++++++++++++++++++
 .../boot/dts/renesas/r9a08g046l48-smarc.dts   |  49 +++++++++
 drivers/clk/renesas/r9a08g046-cpg.c           |  15 +++
 drivers/phy/renesas/phy-rcar-gen3-usb2.c      |  20 ++--
 .../regulator/renesas-usb-vbus-regulator.c    |  72 ++++++++++--
 drivers/reset/reset-rzg2l-usbphy-ctrl.c       |  44 +++++---
 8 files changed, 291 insertions(+), 34 deletions(-)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
