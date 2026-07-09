Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AD9CC43458
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 08:31:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hMDXZSDgbT8buuEwn94dLHiS6619QogupuWnhAHwVjY=; b=yf53pq/gXoip52
	tiDOUHcGKU8TA2516vH6F+OVTew3ka7UHbIHLcvYkfv7JoVkTWz7qN7/ZZZ6FT3ldaZeVG2fLLOam
	ONuA1nq4Vm+wdk4b37eWav+9spQRofAV2U/lYPuH9jABh2awG4pay7rLk1bNtLOTlFavlZnTSTDho
	Ls8OTXE/nc0xpLtRJ4G8MhPYnwK1y0dPih2ABFSNWsi2kv73g+EO6fRziuTwrnIZFPN9a8KGnvRSe
	hH83VfbsseqEP7MKtJO9DhuSRdKgKA0xmR4cF+cDlDoJb0uaJARswg59mj6iWF5kaHkfrlO/aC2Wu
	tSjU7hoQePl8beT6fK1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkA8-00000001QgG-47pG;
	Thu, 09 Jul 2026 08:31:16 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkA5-00000001QfE-3hs8
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 08:31:15 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-493c19bad03so14697895e9.2
        for <linux-phy@lists.infradead.org>; Thu, 09 Jul 2026 01:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783585871; x=1784190671; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=zwKLW3e8sifoWMe13SzALnUW9Xz9XuHOuNauXNIlqAg=;
        b=XUsVTizhPsY56ChZtPO40iylOjNGj94sK3t78bQ5DRJBJTqZ/jGHEUyIwEmD+zwl/y
         cFC0rRVP7M7QDjKLNmCN0x6kMs9RjhuijnBq+i4/TCGa9Nu5pu7R3EeyeVujRLIaBZGf
         98eUecgDWuN57gHO/kA72cUDTmkBeqMMiYRM4aqIfdYdLTNr07tz3byYIrzulS3IA5pf
         aMQxgEZNxiFFqT4sK3uyab6XM+hqKT57vPIuwdNklOz7WCCK7BE3ijJ8JFHWvblPjRBD
         bMhHj295kgW10+oFtdCpLzE+l8A2ZjNV8lQXsADDBmYvy3sF0nF4BkPW8YQaJDJBfkYA
         kVKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783585871; x=1784190671;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=zwKLW3e8sifoWMe13SzALnUW9Xz9XuHOuNauXNIlqAg=;
        b=YTKwQnq71rDysnhqEmbZJ0oplvdRQag6edUs6esVIA84vfUj6QVm/zdHs9JW+gcgDG
         /YzL0Pg7AOImb4e4M+lqCI3MpBYvKozlMPLpZesP5Wrb9NlSj3e8fxPoxDrdvbzDBwUK
         oqWhStQeRReG9NXqZHoPfqItbKkeYcpLSRXWYlLZg/UVdWqF3gTQwQGAlGQqgA6EEW3/
         GNTv2MVdJbwe1oOAy9NVjI3oZuZ8syoAqY/vn+2DwR38YghgqrnaLf5JLwjXuHKSATOl
         GXmtQERj7zOAEy/t2xFK9HlTNGp9J1FyOrXJC7EvDB15kDmPGPh9A4kUxK1n+2sxnWuj
         j5iw==
X-Forwarded-Encrypted: i=1; AHgh+RqcyDyo+urH8levtvF/sNHWywMPHGZn0TeWasjmp2EPwBqMxrzzHpwbO8JOqy+2Kgx8ZnoB3L4Jb9k=@lists.infradead.org
X-Gm-Message-State: AOJu0YyrVdi7Qz3R4nfq4rRBqEgwglaSMZBRO8fEpPORtGA+b/UsCdUy
	5GK+/tIeNAErP7OSizAuwnavPSlp3qiBYN7FGBYLd69+9ZBq7oEQ8SgTeam/B8yO
X-Gm-Gg: AfdE7cnK35A7Yk+1upRtIn9x/F6zBRXhlwB/6LVC8QxhAl0eS+VWxQgM1vQmlimKOq7
	tZZG8DDnIOBUiA1AQhKcaXn5ldxproFplvfr5nvxu5QnFQGtxC1TsEQApfQehmlzsNKDYrSoY03
	orP+in4L6jPuyOe13eUf9GqtOq9UWDtu+xJVtAgXCszxbjWDpVRY4m1C6loc1SZXAApUTbKUdvD
	nYPHzFPvJ9/gyI4n2yRCatl1quSUoaijP0D78aPfCazPE73XEXi/zOdHxkM7MG4v0r/o3rcESrM
	BDy5V+1sSIC8o2n3m9sV6Ghwbw7PG7yxdxE/oJe28CTN4KJo33AOlrl3W7FeccuU5ytp7/klGkM
	+3Wg3P4xXK+1+2sw8iVZhTiqegAMMdby/2Owo9Jl5cokPe6gauVrQp/lqHnG8iSVBOeiRxvDyix
	sKQlQ/p2F+eBmVxcY30gd3
X-Received: by 2002:a05:6000:2583:b0:472:55a:ef9b with SMTP id ffacd0b85a97d-47df072dfd8mr6559434f8f.8.1783585871101;
        Thu, 09 Jul 2026 01:31:11 -0700 (PDT)
Received: from biju.lan ([2a00:23c4:a702:d301:8fb6:1d85:3dc1:42ab])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47a9e4d780csm50316543f8f.11.2026.07.09.01.31.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jul 2026 01:31:10 -0700 (PDT)
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
Subject: [PATCH v4 0/9] Add RZ/G3L USB2.0 host support
Date: Thu,  9 Jul 2026 09:30:53 +0100
Message-ID: <20260709083108.108370-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260709_013113_938347_9A7EDE2A 
X-CRM114-Status: GOOD (  13.34  )
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

Hi All,

This patch series aims to add USB2.0 host support for the RZ/G3L SMARC
EVK. The RZ/G3L USB PHY block is similar to RZ/G3S, but each port
has an OTG controller, unlike RZ/G3S, which has an OTG controller only on
port 1. This series migrates regulator driver to use id-table so there
is hard dependency between reset driver and regulator driver.

Merge strategy:
  An Ack/Rb tag from Regulator Maintainer for patch#4.
  Patch #1,#2,#3,#4 - Reset subsystem
  Patch #5,#6,#7 - PHY subsystem
  Patch #8,#9 - Renesas SoC

v3->v4:
 * Updated cover letter with merge strategy
 * Reorder the phy binding patch for easy merging.
 * Updated the commit description for patch #2,#3, #4.
 * Moved the handling of regulator_driver_name to patch #3
   in preparation for id_table match.
 * Migrated to id_table match using driver_name and reduced the length
   < 24.
 * Dropped rzg3l specific platform driver.
 * Dropped the tag for regulator driver,
 * Added id_table handling by introducing a common probe().
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
  reset: rzg2l-usbphy-ctrl: Introduce info struct for match data
  reset: rzg2l-usbphy-ctrl: Add RZ/G3L support
  regulator: renesas-usb-vbus-regulator: Add RZ/G3L VBUS regulator
    support
  dt-bindings: phy: renesas,usb2-phy: Document RZ/G3L PHY bindings
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
 .../regulator/renesas-usb-vbus-regulator.c    |  74 +++++++++++-
 drivers/reset/reset-rzg2l-usbphy-ctrl.c       |  44 +++++---
 7 files changed, 316 insertions(+), 26 deletions(-)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
