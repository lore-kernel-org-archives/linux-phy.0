Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 803DBCD98DA
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jun 2026 10:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nW+2W384TN5OiVu/ZLwBA23jfu/8RCM+hihtsfpIOvs=; b=qSwGEZ7U1o4YtV
	IIeiIWzPdmwmQPQ5Gw7I2mjX++z/C22Ib6eSx1I6HmcQWSIcBnpSJ6BEOxuxpTcaiWh3iDAa3bjPO
	YrWm7k3x1sw6qwIaWt1UtXMdFbS5XhSXbdxJF34uOkLHw9yr3OGcTnusezeDxdh3dfJmdTl0k0B+6
	wYSvVqCKyF+xA+GoOz8uWD3dGQRsr/ltTYqwRn5I9RLiFVKilvrSbF0Jyou0e4N7jP9ZVApY41u56
	sH0yA8KnA4eXiero3NPPRHbBXeoiRk1kj6pItau7a14DPU/3Q3l+BKXz+dU70TmXnHqkwTZbspv5z
	rNzmIVxgbplfYo35oeiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZRI4-0000000FcYf-0Vua;
	Tue, 16 Jun 2026 10:45:08 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZRI1-0000000FcY5-34ay
	for linux-phy@lists.infradead.org;
	Tue, 16 Jun 2026 10:45:06 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-490b12270b3so27109845e9.1
        for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 03:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781606703; x=1782211503; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=v+W3gkJdUSVWqcMXGqjt/1kOI7XTiovzDDxctkwEQPc=;
        b=sy+nKD6WnEwOQ6QNZLcO7bLAfLrGBjhePKgBGNFmOHm1rKpViHcO+/dfAu1JWPOPSg
         v+9X2QoPR+OFlTTyxXCynIRG4QFqAVtqsIK/9ksbawAelt7LXtTWG66pmPC1r481cOr6
         rYERuvhfLFRiljiJ2qIjxNsCVUC0JRGLbUTEjLAtpwYgyxlWMi0oQGOmDTiz6Eoy+wu0
         CF8zm+x7em2OSsz/gIR2b/BvOViR1BtaVbx+u6tBexy46YWUOGL/hMQBMiYM1zlfjg++
         voTfYihdoKtthPxh/WxHMJiLaHnINl0oaGM3b4CVUjDioneDBiJfn+tPKTwwmTP/UbP9
         35FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781606703; x=1782211503;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v+W3gkJdUSVWqcMXGqjt/1kOI7XTiovzDDxctkwEQPc=;
        b=dZeSyOgEbAvjDjJn2JD4P6oVvbnaw/6JtvIrB5eHHKOC9pWtbaLgBlbSf2/EpAUvZe
         kMb3Vq8swsNV9ohKg3cyk0khijbt1BOxasGTn6qLZl8ZZZqdRxDeN7YCXeTR2sM+1fRJ
         kDNBsttHvfTUp31qJAt29jllQuxRzEAeenag6K3N7NEQjwinNKiLGerjEdgvX1jv8CI0
         B5+IXEsZBEU5fMpHOcSR2ok1HP4r4fcmDmhqWAAsjBKr8wkOi4niBqRIDhh9lJb3DejW
         ROM5l6urtGL1Biq0LTM6x/75p8SpsQyWvyxu4YvpqGOfZXVztxagAmeYU0Ba9nBf7FI9
         vuLw==
X-Forwarded-Encrypted: i=1; AFNElJ/XQwnlVJcwrQCNpoC0tKzq/beRUhxJTo4HAEnx6gB8I30r6slr5bwH63d3GhKqVwcvFCyMfvN42qQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyhD1SDPTDHXyUM//o2ZFkgCg6lDGsY4qW+DWwOTHDs/Rh19VrA
	nkb8/5dC01HDkgdT0QOcaCYNivykxxuoJDN+yU1TzjoWMGnKY/m+8Tof
X-Gm-Gg: Acq92OFLxspyOv1pFqUFCzRCOoGIZFSQW+Srok5nBhkY9/wpgh+SQpPJOpH3oYCiG1o
	0MpkFe5kfghO20kAg4GKt7jQMn/h2VugzmN0+1q5GV3DLBMMGbGDvOUxQXLskw+szTcSABfWiia
	fHP9FE+JWZUi+rwreV/u5xAnH6sfnQbKBLyMmyZRY5Hu/apwuJtaN2X5sDSXZQrDQWyEIs+ZF0F
	KsHB/ac1vu6uO335jt5YhB9IjIzDHEzao46/NR0MA8LoIfiYVkiUpRZ8vLo6YJTYkLBzCpvgFVQ
	9yFJThInrGnzxduU5Qq+w6rH7h3394vSAdt4iDW5HiuxnCbeihF0AZN5z0QO35ov0KP5r6EJ6V2
	WW18YkNQaONl5Nt08S3disNRCX3kjuOHMRgjM4+0pLWhPOuG9qDURpanosf/pNK1JgJ60m2bS4U
	TBX99ny8knV4ybrtfzajFohiCVrqLEgwzxBQ7k5aU5U6u7mGol
X-Received: by 2002:a05:600c:190b:b0:490:bcf6:469f with SMTP id 5b1f17b1804b1-490ec33898fmr239045165e9.0.1781606703064;
        Tue, 16 Jun 2026 03:45:03 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a700:7301:7499:34c3:598b:e20c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4922fa47da9sm82458485e9.5.2026.06.16.03.45.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 03:45:02 -0700 (PDT)
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
Subject: [PATCH v2 00/10] Add RZ/G3L USB2.0 host support
Date: Tue, 16 Jun 2026 11:44:42 +0100
Message-ID: <20260616104459.410743-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_034505_816949_AB45302A 
X-CRM114-Status: GOOD (  10.70  )
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

v1->v2:
 * Dropped patch#6(Introduce helper for regulator registration)
 * Passing pointer to an array of regulators to make it scalable.
 * Dropped regulator1-vbus and added a regulators group node.
 * Updated commit description for patch#1,#4,#6,#7,#8,#9 and #10.
 * Added enum instead of const in the compatible section.
 * Updated schema check.
 * Collected tag for PHY binding patch.
   in the regulator driver.
 * Added regulators group node and its children in SoC dtsi.

Biju Das (10):
  dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document RZ/G3L support
  dt-bindings: phy: renesas,usb2-phy: Document RZ/G3L PHY bindings
  clk: renesas: r9a08g046: Add USB2.0 clock and reset entries
  reset: rzg2l-usbphy-ctrl: Introduce info struct for match data
  reset: rzg2l-usbphy-ctrl: Add RZ/G3L support
  regulator: renesas-usb-vbus-regulator: Add RZ/G3L VBUS regulator
    support
  phy: renesas: phy-rcar-gen3-usb2: Add RZ/G3L support
  phy: renesas: phy-rcar-gen3-usb2: Fix devm action registration for
    disabled VBUS regulator
  arm64: dts: renesas: r9a08g046: Add USB2.0 device nodes
  arm64: dts: renesas: r9a08g046l48-smarc: Add USB2.0 support

 .../bindings/phy/renesas,usb2-phy.yaml        |   2 +
 .../reset/renesas,rzg2l-usbphy-ctrl.yaml      |  49 +++++++-
 arch/arm64/boot/dts/renesas/r9a08g046.dtsi    | 105 ++++++++++++++++++
 .../boot/dts/renesas/r9a08g046l48-smarc.dts   |  49 ++++++++
 drivers/clk/renesas/r9a08g046-cpg.c           |  15 +++
 drivers/phy/renesas/phy-rcar-gen3-usb2.c      |  20 ++--
 .../regulator/renesas-usb-vbus-regulator.c    |  53 +++++++++
 drivers/reset/reset-rzg2l-usbphy-ctrl.c       |  44 +++++---
 8 files changed, 312 insertions(+), 25 deletions(-)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
