Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BF82C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 14:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k7eG6+8H5JI5N6ur7Svst9Q99BgZ/pw6eSk9Q+m6GwY=; b=XI4bCGnz1ApvOQ
	+uODvCtFBo7QxuP/J7fqv2MbxMJ+ojmFHA0cKIw9mxEYS2x6dFKCLbQuAA8rA03hP4diN+aM1E305
	k6N5nrADr2I4aaG974X+sl5YtiM49oSUcAoWSG46pInjRVbCOnwQxfFlwJuspeDqDHTl9N1m8241v
	vKeM7SFj/jMB+zwFfhQ8pXx/HaMl5456Y10wYhkxoGLui0G+N9PR26Sgo6yRZLd3s+X2tiV19Gz3S
	STgppDvEXOsbEkF6E+63Y1TDVWo4H6OAIe9pLSsy7dZ4edTnzmX1LChjD2attE+sy/RDvZe2qpd5J
	ub7KHr458KLNxs7ElL5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh6ut-0000000FBpc-3hsY;
	Tue, 07 Jul 2026 14:36:55 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh6uq-0000000FBom-12Qr
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 14:36:54 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-476d8e647e9so3417351f8f.0
        for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 07:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783435009; x=1784039809; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=j87aWoEjcLuafOmB8vgFoabIK1D/6OW6JgEE0djzGj0=;
        b=bcQkGqxMPUqb6b9Tvv8T91HOPPY4DOvFd6Te/8QwNxsREyqQUJ6yxvrYXHNrgQMTvK
         kI1KEX0AbjU24qSWWOhM5lvgO/aSbPE9bxj5q/XJwf7BIdSi6hveRwXeBy8qj2sYDINb
         /4B12PNym1f/6F8iOSWyhxyzqRQYg7jUcfeX1txKr+w4ctOvZ8cUO0N7Ll458V60LbVh
         VZtNYctMFCwshkKluN2HWgdxFz1vsoRZbUE8KnzFq2Y+/OUBteGxRQ3CfkgdOV2qcqdR
         wH2SHfalRsuG/Rc9gNAajzDPn1PAuLBykwJC3zpfUOGjQ+zdAgTOX5JHVXsLjBft0Hs8
         JI+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783435009; x=1784039809;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j87aWoEjcLuafOmB8vgFoabIK1D/6OW6JgEE0djzGj0=;
        b=aE6HFkp4b6fjSbKEtOiu9aWvYuaY7wTaGTR/z/aAQOPksJBQ2CViyqB+UUXc0PwK31
         4IgUncQiI2X41U4Gme/GjlxVPJ/TPI0iFgK7o/oXpqWMLMR0HFrqTu94gsLHOUisVnuq
         LKlhGh4TOjVdZ4ZQI+jhMuz6lrFVBWw1BCDqFUN+NkD1Mrzmo93qst+v69phz6ViTRhx
         2gsjv1dqlBTBzYJgx6nAVvmoj++u3gCOxgC3dihAKPNdqy4wArgfbr7KKErDi7L6aDIU
         JbMa65Hihyc/Eu/7p6UwenclFwPCqhhf3kEAm9QN4adZN0NFQLz0Kd4EAD1yyvrcHL+W
         ybKg==
X-Forwarded-Encrypted: i=1; AHgh+RpZHbIscLb3KQu0U0VAI1tcM7Vd1JeLJVxbGMMZiZ2G9mcPp+1DFCEImh2CLcNpXoOeWeGZtQhPx7s=@lists.infradead.org
X-Gm-Message-State: AOJu0YxDs93t7wu50iKT/XZ+SDNb5VU+PqpoeV9K1Bx5xpEFS/YUoV53
	55P/kHtxScY+1Y/rVowQewAQsA7KOo/Gp8ZnC7UlHgQQThAetJKVGRM8
X-Gm-Gg: AfdE7clC7QBL4mQTS84zY4OeBoGFWYYSLmrFQr5eW2g7X6sJphPR3fsxPpZe5bWD8ls
	+9xH6O+depHamYhQXoGQdRPRKR4g09vp18zBtWOFuNa9wqt2kXecnFNBLhcfqQOxcI73zyArpiQ
	A3g7PE1K+UbxyRSGrG+4o8N2/a+7CQpTnx30PP7lEKw/2VlH6wlUMamUwPDO8tCCOqb5R8HJTMP
	pFdXsCIDGoV4c+k27I30Trjh6ptFFKGMfrRuMKyASMoh8R3ny0sniAcfxfBEIfGoU1WdosKSwVX
	Cet1mNAKvAHxnQSnbAasXcIA7WeARCfry3pCNIfxPey5u41T+cx2E1F6olAHmPEESktEAdhw1vH
	NnBTUj40Ggtehm1YCDhhwm2rykk4ZEyfaY8OneeAvIk1ic7oUWzV1P69O2ZUW/wOY+1JVVO0wU7
	Usv5aT2AvfJ4kHSH5WjYpvLFT+XfbGzbHiRB0h4Q==
X-Received: by 2002:a05:6000:1aca:b0:43b:498f:dceb with SMTP id ffacd0b85a97d-47de660346bmr6435337f8f.9.1783435009312;
        Tue, 07 Jul 2026 07:36:49 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a702:d301:a4ac:4e7f:194a:852e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47aa039ae44sm33228611f8f.23.2026.07.07.07.36.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jul 2026 07:36:49 -0700 (PDT)
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
Subject: [PATCH v3 0/9] Add RZ/G3L USB2.0 host support
Date: Tue,  7 Jul 2026 15:36:32 +0100
Message-ID: <20260707143646.245177-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_073652_360065_309DE252 
X-CRM114-Status: GOOD (  11.05  )
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

v2->v3:
 * Replaced items->enum in reset controller bindings.
 * Collected the tag for reset binding patch.
 * Dropped clock patch as it is accepted.
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

Biju Das (9):
  dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document RZ/G3L support
  dt-bindings: phy: renesas,usb2-phy: Document RZ/G3L PHY bindings
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
 .../reset/renesas,rzg2l-usbphy-ctrl.yaml      |  48 +++++++-
 arch/arm64/boot/dts/renesas/r9a08g046.dtsi    | 105 ++++++++++++++++++
 .../boot/dts/renesas/r9a08g046l48-smarc.dts   |  49 ++++++++
 drivers/phy/renesas/phy-rcar-gen3-usb2.c      |  20 ++--
 .../regulator/renesas-usb-vbus-regulator.c    |  53 +++++++++
 drivers/reset/reset-rzg2l-usbphy-ctrl.c       |  44 +++++---
 7 files changed, 296 insertions(+), 25 deletions(-)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
