Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0B6EC53200
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jul 2026 11:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/7EeMA+sJWymEqfPyimsaXHNVoUhqaMA+ttu4aEVxnQ=; b=cgYGMcGNOuYolz
	6vwRnRXaR0Xs9u4z3vHdE/YMis0T7wJKM6Kbgs/2SdcHNV/Ij0F+eoHgz2BDdEjnIKavbrtppRMsf
	BlvxbAkQZqbTwg8u0g29i0qtsmFyf8bY06nqnk4DT5LYhKtxaBjGl/JKjyxuqX7b/7L0RSLQJqxUG
	fkFGhbovxNw4wIsV3sWx64y0Hz+YbPNi5CSgBTRokTh6wcINp+BJcUX3XxPdJhMVM+c/2DsfZPjf0
	ocNbEo0OGPtgrWQyq0CI1AwGL0oKuvcNwzWNE0ZxqVYDqb4DqczkBjA3PruKUdKI3b3Uhhf5Bwxop
	gL7BW8nhCmvZfzFXd37A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp2nv-00000007n4D-3SiX;
	Wed, 29 Jul 2026 11:50:31 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp2nr-00000007n3J-27Kf
	for linux-phy@lists.infradead.org;
	Wed, 29 Jul 2026 11:50:30 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-49554ebb87dso7518685e9.3
        for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 04:50:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785325825; x=1785930625; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=UW2B8F00dGnULpBPWdrKAf1y7uPkeTEHd5iC6/HbnbU=;
        b=TUvOhEUqCDqk+3MsTUm6bCyjxe+nG5C6bBniEp//Rx+/4S+Of8i1i93GWEvixmNNl6
         hBC36gCTg9NWYfRx7l3PTVvuFJ6du0s6eTzKKE+xHv+ykVVOkIDBe0FV35tEx+6mMH0h
         1O7H3DaAALmDjAbMLCLQmz+yfA4e6sn34ke1sL4erSDFbmV0AinXug8oJ4QPHdHtqSnd
         GgW7J56k/d9C1Iz0/9QGdC2/WuHvraV3Td0IiY6LtV9eyxBoBZg9rxGn1Nmg4ByXu9Ou
         LgaaWqmQE8tV+DxLUIZSDEsoScpwx90cPv9x5z9/K0oFSAxdK4O0zzVMuzY7UVhzmzM7
         6x8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785325825; x=1785930625;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=UW2B8F00dGnULpBPWdrKAf1y7uPkeTEHd5iC6/HbnbU=;
        b=lppmQN1kWxN5tkUrpkWX3K9U4+QB5xL/K8mjIj0KpK6DrcFbk4asYsNhS/0JBWEOco
         E1rv6SmXSfMgcPOyGeO9oRJ+1NdxNnEbGyHQtTOyOU8GzSDvm/0+FPHH+M8pkyOPCPgx
         cwWCdqW7spJsj6MtYIA8hI4G9z+gQbLOMoLolKhA5CkecgZRdZ3Shfzz86bSwKC3I1to
         wZ156qlLdLdzzhDCiUJoMJk+M3CnfB+CprTVjlKiVbrUeAa+jdTa4U7gIXNxhPsIhnVI
         NJMSgNKIIoIOkak/HZ6PhnUwTO/EvNaSRcjru6bYoUkm3ZvpSy3NroM6Cs9AapdphTp1
         ByoQ==
X-Forwarded-Encrypted: i=1; AHgh+Rp+DSlr9RliTpHzRcu7Wk+MxpJ1NjXbUQeBXtbT3EUI4eKkmdMgDYwj4q/IVOdgReZPmGb9dSJV3YI=@lists.infradead.org
X-Gm-Message-State: AOJu0YyPsvsEfo8u+NCMiBUo0mMzab1GCQCFbhslqvb23kon58M7PAkn
	sjZ1W94hoKa8RBtNpaDd3siMDFL+ZR4Xt2lsH3Cz8jX64hYM49qE/LOZ
X-Gm-Gg: AR+sD12Y74g7d8uLgaVfAwwH2CPaPfLr69riN/y73DSl96euQZntdjY2t0mQrB4yk6N
	Ii9VBcVPD7aOZ+pdjdFZ2HkwsHUWDTz51R5bOffCiVwi2IoRPC8/4J2EpzSTswRQ+jVTK5ctw4I
	I0SBc7MdYzxIaj2+hU9CbRijSB/iSVbByNGc7BVAuDh1Wq6V+sbTx6986fTif+4qGphGhxKyLCz
	uA0egJo1GpesY4P74zpmWgH8JtN9YWb3IZYc/EJkgNLKGr3lc7Q2BS89dkjYWuysPofoJXTTd8W
	2Jl5l7tMGmxLQs4tJoYnh+qPHtZFXEIiySeu/xurGnfBYkgeUgPKjpFjIB0lcvEvOdNnwBn00m6
	onusaApr/QTOtuYHV5TwlCs8p4yZpnhxM6dUkmOrgEL4X/KaEuTN46NmZKtEuIBGCpTM9CrWQen
	S+5WBxrPT3aBjD04FJJaIM02+d16mOriODz6Tux+PjTcAFZFPmP81S2J3pUJA/nes3Wqx6Ptjbe
	USCZJiGfletqA==
X-Received: by 2002:a05:600c:1907:b0:493:f442:3dd4 with SMTP id 5b1f17b1804b1-496c65d4a28mr81347155e9.39.1785325825029;
        Wed, 29 Jul 2026 04:50:25 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a702:d301:10b8:4461:ee04:15e2])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4957bfc2ff2sm326144165e9.4.2026.07.29.04.50.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2026 04:50:24 -0700 (PDT)
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
	Bartosz Golaszewski <brgl@kernel.org>,
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
Subject: [PATCH v5 0/9] Add RZ/G3L USB2.0 host support
Date: Wed, 29 Jul 2026 12:50:08 +0100
Message-ID: <20260729115022.222340-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_045027_567415_DF7E364D 
X-CRM114-Status: GOOD (  14.42  )
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

v4->v5:
 * Collected Ack tag for regulator driver changes.
 * Dropped renesas,sysc-pwrrdy for RZ/G3L as pwrrdy signal is modelled as
   power sequence.
 * Dropped the tag from Conor due to above change .
 * Replaced the variable regulator_driver_name->regulator_name in struct
   rzg2l_usbphy_ctrl_info
 * Switched to power sequence consumer for controlling pwrrdy signal.
 * Updated commit description for patch#3.
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
 * Dropped renesas,sysc-pwrrdy property for usbphy-ctrl node.
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
 .../reset/renesas,rzg2l-usbphy-ctrl.yaml      |  40 ++++++-
 arch/arm64/boot/dts/renesas/r9a08g046.dtsi    | 104 +++++++++++++++++
 .../boot/dts/renesas/r9a08g046l48-smarc.dts   |  49 ++++++++
 drivers/phy/renesas/phy-rcar-gen3-usb2.c      |  20 ++--
 .../regulator/renesas-usb-vbus-regulator.c    |  74 +++++++++++-
 drivers/reset/reset-rzg2l-usbphy-ctrl.c       | 109 +++++++++++++++---
 7 files changed, 370 insertions(+), 28 deletions(-)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
