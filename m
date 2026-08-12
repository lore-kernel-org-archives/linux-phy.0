Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD565C5B572
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 14:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XpdrDSHtOQJh7j9aQJcClEDguEGNlD3LRue1W+dpJD4=; b=kNrZvW7c50jR9i
	cNWB4luqWWB6oLrCOzekIeM+BspxcLMFFXH6ovDdM4xTX0KCbH+us0pB+mh3+OCdk4ZUTmAQfgDvW
	aE2ZXUa/pDQ+Yo7hI4Pkc387mL6NDeu3Xl8YZDMLFJ3clBhAFOwpQoQZJrGg9LV3FYb8E80sS+1Gq
	782/2JA+gxt3YAfT+EHH0QSk5lDWX+lazwbjTvQcwsHv1dVfaEmgjSU5eVarMLGVLoBULJmTFj7BO
	JZ3HiDqjd4rInxf9ZboLAUITLzM32NarqQTMCm9AEtlNLlaMWiF3Nk+rIW7z1mdpkAsx4WDZ0DJlg
	RfuxeeS+Pyo9Ve4djDag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu9o6-0000000GNRt-1wZo;
	Wed, 12 Aug 2026 14:19:50 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu9o4-0000000GNR3-0Tle
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 14:19:49 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4980dc26022so10562845e9.1
        for <linux-phy@lists.infradead.org>; Wed, 12 Aug 2026 07:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786544385; x=1787149185; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=jwr53rVuSGmUd6A8uHvMZV2frC8kbj83S7dbcomjXGE=;
        b=TUg24YrXuZ1y3TOWRve0lJ+RxexHIrvE+RAIM4AjDWPQcwrPJUfarUi1Y+OX/8ahtp
         4leIb5wMv8AM6DTJFxlJBSNmxPe765dh3oqXeXTeRJJ8VuphKZMgepiU7ogClszMtFp8
         P4xA7pOJS9R2kr6I58VsoXpzpzy6CdSeat1PMAeo0zgjgdWc7wS9rpJa2/ep3DziMNGG
         WzafxKStYv+WlZuaCbO8RLKCKEc0lrTH55vHDtCm7AH0keFfjT49/7xuhvJ3rN35eBHj
         FKcGJn8EvM3694UOb2AGlZbZVMz9qkYbEr93qg2tERagUYE0O/5/Q2E8oQ7FjS2i9D3j
         Ebew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786544385; x=1787149185;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jwr53rVuSGmUd6A8uHvMZV2frC8kbj83S7dbcomjXGE=;
        b=ofQXoXG7jSTLBdwmzNK5vmTrC3GqDp79mAdEtaE4mg1JIbBnMmra3RgIX0o2wK3NRK
         Vgdo9e6FiGLw0vbDG/sY4B5tHdLmFQrQHFrp33pp1Lg8YMufFB4Yr6ezAgF1u3cI+KUh
         5PYcXBmjqnBJ8h5YYISaK5cWyBbvgUZHzrO4iAmG2CX910ngB99mouMGn8bK0DqpftLX
         eKH+HkbxoUUydv8l7HPPP9azoghbftBhAVLVOW+vxtERo7eYAS+czGDIzryoGzUiFBo+
         eqXcH2kDIOLklq3o4wooe0wodSDvFPWaKZK/+sK57o4DETfJifJttbYvQ3EpZ5mQA8Sb
         Kgig==
X-Forwarded-Encrypted: i=1; AHgh+RocLrze/Row5nc65fk5fKPedGQMmF6c0RSpPKKVpmtQNl9wdw6qn08kXehjeTS2CzvU8asm/lqj3YU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzjYk9dHRMCVsKOtKBysFQ/wrQ2+KR4nAaNqpwQHHhfBYLaYqhM
	N/5nIcsTqYyz655mlb5+LqT22fHvDb0pOJ7JYKcTgrAHVlSbjr4xZfjC
X-Gm-Gg: AR+sD11KKZj5w1M41Qc/OfEDOobm/B0O/YPeC+V5QnI5kLoCEzB17O+FEanWJ8szVbl
	M/B0kZsQQgpTAoNqig/UcFtz7ODAxdk5zsHOYEFpG6+uK0pCFwWsEGj/ebWEvlmuh3ICASoYdMH
	dneB+F57zMIBCeD2pwSukVkzWgaw/7nk7pXoxVmrY5sBqqGQIrHQaTrjBB3VNRlLTYOb6PJrJEr
	g/oCkrpUUN3hHNKMaLM1FlwchugusYNbMx2ClJeTNHbgCva46uUJSSPCiE8KFpSewfCMttpDpDN
	rQy757wTWx0J4385iOAU2epgviuwXWJ93vjuvWrDllbVvAVOhu9wZyzH494yZ+xWL0XkffOOPMe
	MlC6j64CYqZ7dt/YHxPaCljHbaT5LR6HlADNUjTAK2yF+Z/nVDNFtkQz+J13tiosKaxh+kF0RnS
	1W5lkRuUKmbL0mB3zkpzjmeMx8W8s8F94xuouRbQcvCffvw7R6J/gFmi/31fjIwEtT1UXsYzM0/
	2zraV8NvJTGHA==
X-Received: by 2002:a05:600c:a41:b0:495:6134:6d61 with SMTP id 5b1f17b1804b1-4997c13be45mr72078085e9.19.1786544384949;
        Wed, 12 Aug 2026 07:19:44 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a702:d301:94c0:1825:d248:50ae])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4997ad78f2fsm47352235e9.1.2026.08.12.07.19.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Aug 2026 07:19:44 -0700 (PDT)
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
Subject: [PATCH v7 0/9] Add RZ/G3L USB2.0 host support
Date: Wed, 12 Aug 2026 15:19:18 +0100
Message-ID: <20260812141940.246223-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260812_071948_187152_296D9BCA 
X-CRM114-Status: GOOD (  16.89  )
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
  Patch #6,#7,#8,#9 - Renesas SoC

This patch series has functional dependency on [1]
[1] https://lore.kernel.org/all/20260812115010.108322-1-biju.das.jz@bp.renesas.com/

v6->v7:
 * Dropped PHY subsystem patches as it is accepted.
 * Merged patch series [2] to here
 * Collected the tags.
 * Added additionalProperties: false in regulators node.
 * Updated commit header of patch#6
 * Moved the host enable patch.
 * dr_mode changed to 'host' as function is not enabled yet.
 * Updated commit description for patch#9
 * Updated dr_mode = "host" to "otg" in {e,o}hci0 device nodes.
 [2] https://lore.kernel.org/all/20260707145135.247565-1-biju.das.jz@bp.renesas.com/#t
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

Biju Das (9):
  regulator: renesas-usb-vbus-regulator: Rename platform device to
    rzg2l-vbus-regulator
  dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document RZ/G3L support
  reset: rzg2l-usbphy-ctrl: Introduce info struct for match data
  reset: rzg2l-usbphy-ctrl: Add RZ/G3L support
  regulator: renesas-usb-vbus-regulator: Add RZ/G3L VBUS regulator
    support
  arm64: dts: renesas: r9a08g046: Add USB2.0 host/phy device nodes
  arm64: dts: renesas: r9a08g046: Add USB2.0 function device nodes
  arm64: dts: renesas: r9a08g046l48-smarc: Add USB2.0 Host support
  arm64: dts: renesas: r9a08g046l48-smarc: Enable USB2.0 function
    support

 .../reset/renesas,rzg2l-usbphy-ctrl.yaml      |  41 ++++-
 arch/arm64/boot/dts/renesas/r9a08g046.dtsi    | 142 ++++++++++++++++++
 .../boot/dts/renesas/r9a08g046l48-smarc.dts   |  54 +++++++
 .../regulator/renesas-usb-vbus-regulator.c    |  75 ++++++++-
 drivers/reset/reset-rzg2l-usbphy-ctrl.c       | 109 +++++++++++---
 5 files changed, 399 insertions(+), 22 deletions(-)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
