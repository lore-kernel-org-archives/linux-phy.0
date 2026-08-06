Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6F5CC56208
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 10:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KrBI+YQz1tw9bUyF1137RGonGUF60OffrV5SOK+VBeI=; b=KudZINZjEvHdRG
	QKHANnwusakp8xRb+IYdhmRWIyCMhDX7lhRNx8MPpFTr6K01Fx0zm4b661yHDm3r/SYkyMGMsUg5k
	oaipACrQr7/sKvr/TIoKv9L/EhFAVBL0nFTdQ8kiww8yBblR53DBine73NjSBsIHq7YXHaNP8bF5Z
	e2FgJTVWjFDNlZdGDYF4+Oleuy+vHLpzG5GWb5Nh2awVB+aIjNFL5ItZUQ76xEVsZ2xK5PwHKMC1b
	GOqwwmXM1kmml/SJXRTBokqXKKhExgv0h992cf5cGi6oXvkXStmWIJEAOAzi6pu4pW3drJRdqasjU
	EZ20GE7QCRs79aXofw6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrvFL-00000005XRq-1dfe;
	Thu, 06 Aug 2026 10:22:43 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrvFJ-00000005XRS-1eFS
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 10:22:42 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-47fd66a094eso797673f8f.3
        for <linux-phy@lists.infradead.org>; Thu, 06 Aug 2026 03:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786011759; x=1786616559; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=XNH7C3+W1iQuetjKu7PHcF0eka/FhNKK8WPnZOjuhC0=;
        b=c3waP5afBCwdOeiW9QOqY4GtSxBIvXelijHTwweciA4K61U86fTz/uIAt8ySi5Pia1
         32MPYf4ualInKEOqdIbo5I4xOnXmCXE+TBz/zzEp4V+lv+mKwhuWnzy7keoSPQI4kp69
         Cgv3r8U+fGsdAea603FVoCifBIpHpBTmyGlFZ2wbWHmC04CQgLPZBoZKvMHdKfgJJja9
         /tCI+Y5NDbUiO8hFtlKPeFzJAvNOIMMK3DLIhvM7lp42GGCOb8MJmHTJIyYiE+BubGFE
         a1DY9YCmKSO4i7vfNQs6cVMxXBv7V6bsd6wB/vU2+9oufUX1nJy4XIP8Sq0xqpuA0D0W
         H85g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786011759; x=1786616559;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=XNH7C3+W1iQuetjKu7PHcF0eka/FhNKK8WPnZOjuhC0=;
        b=Ld0nNavOUqMd39cKP0GlpRVrn+YbnwyK1pxgnPkSZ+A9nKflCLCtGPacWIMo4oESfv
         s9UHFhjnmvYjYX79n4pS9dvxL6fC479IZVBrqm8bn36B4vAJPYoQ9DLCzCI6gyJW5I+4
         7wxFUyz4cW+332mKDj2LPrp1pLclW4sL8bDr/E5lHIQESH3LBwGP4m80CHuGAdqerILw
         4z9kByqk9qkwPlw/PCHxnUe3ayHtT+vtMVu4AdZ4Yn7UQ5KC+S/cPJpONAk1tUGT037i
         1cqALsFdDIjCYYPfIBJ1fNoDkWkqHngS7m4jYXXZqwgmCvNgLk3LGLIJI9c1lTviYNdf
         A44Q==
X-Forwarded-Encrypted: i=1; AHgh+Rr/dP9ES9kWAkBq4Wn1bVD436XFNttQoQ6iPHjb/GLKrGc/qSFTF8t7cjR6UgxIQQ3SPQQIK62DhN4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyO8wGH5IWVXXg/BqCi8Iwdzjmt4ngSlSrOkZt4lhV1RS4buL8t
	4GGwoDQavXkOu594AwXtZuoadnLcmfjLXP0+upTUzRhfPeAWCJZ4DVHO
X-Gm-Gg: AR+sD12pMrubYUB9P5ufKmnvSpXJhkY2Qmw7ch+FyAPFkgWwngeSeqBlyiBbkMHPsfq
	CEw1YlwrNu+CCxlDFXzuk99Zr//m/kqNeG/gPv6BX8viZHIK+CiKFIheqmjOrpifS8XgD1x3ZAw
	LP+mt0Bw8ZSB+So7V8rUIBI0tsdDkU/8kDpMt8htdFvsqq8A1GM6+5A0uBAMov4YvzGrYEonDHB
	U4UfaxpUm1oBfVai9C1wEpkdxOFGIMQLUklTtaCTrYQk0nz/xRTSCmR75ADMMLO0BtPkkKzF4jh
	Rdj315SPD3qL2zQhYmAwuK3wHQwlLu2Qk4bE+ujXsVY4Gc8ifGpEbVBDyAzwO0f4kmk8d4Mg6S3
	jyPCIPj59Q4sj+piacsaMex8Of2AP+ZzOU+RnrvYoJN7SaVNnTTaTxT1ObuCsh7O15j9OMErjjb
	l6Uj4lERqdwKjqwWLh2CSB5ABlc6Rbcj82jdOe2O+eWkTASF+IPX+2jyeZA6iaospLh5m+Bl2MV
	jH1ex6qSrA++CDUo8QehiGv
X-Received: by 2002:a5d:5690:0:b0:47f:90a4:ff42 with SMTP id ffacd0b85a97d-47fec4e3d14mr16971436f8f.5.1786011759394;
        Thu, 06 Aug 2026 03:22:39 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a702:d301:a173:17cc:14ec:8d1])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47ff7b183b2sm5634553f8f.24.2026.08.06.03.22.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Aug 2026 03:22:39 -0700 (PDT)
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
Subject: [PATCH v6 00/10] Add RZ/G3L USB2.0 host support
Date: Thu,  6 Aug 2026 11:22:19 +0100
Message-ID: <20260806102236.149159-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_032241_447931_59855B24 
X-CRM114-Status: GOOD (  16.45  )
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
  An Ack/Rb tag from Regulator Maintainer for patch#1 and #5.
  Patch #1,#2,#3,#4,#5 - Reset subsystem
  Patch #5,#6,#7 - PHY subsystem
  Patch #8,#9 - Renesas SoC

v5->v6:
 * To avoid breaking bisectability, prepared a single patch that
   does the "rzg2l-usb-vbus-regulator" -> "rzg2l-vbus-regulator"
   rename in both regulator and reset drivers and that could be
   merged into both trees.
 * Replaced dev_err->dev_err_probe() in error path of
   rzg3l_usb_vbus_regulator_probe().
 * Retained the tag as the change is trivial.
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

Biju Das (10):
  regulator: renesas-usb-vbus-regulator: Rename platform device to
    rzg2l-vbus-regulator
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
 .../regulator/renesas-usb-vbus-regulator.c    |  75 +++++++++++-
 drivers/reset/reset-rzg2l-usbphy-ctrl.c       | 109 +++++++++++++++---
 7 files changed, 370 insertions(+), 29 deletions(-)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
