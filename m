Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B432BC55ABF
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 10:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KrBI+YQz1tw9bUyF1137RGonGUF60OffrV5SOK+VBeI=; b=UT9mxdoxeePZXs
	1GYS0fn7Lev8TeSfRS/WY+Qr5KXChalKlLosG5soND1kg0PgEES4R4YRPFxNVkpYPLznjzTif6YCw
	Hx0lj4HMda00mZui5jCW9PE96UPYA6N6AqMGQmK75XT93tYPh8jPqOqzHxX2PjqMv6skTIJcMBdMh
	9OwzpXDS+cq/MsSrI6fyUMf3z6cJXdAfoG2yjP9SjBTus0chkXIc1A3LJh0tsrI9bB8LPtMNvcQdv
	j6O1Wtcz1qLJrCOYnWVmi0MlNsKNF4EQLm+254oySHITpVa46lSV3a1VIueCyw1bWqhUHF1iQbEfW
	gBaBpZknJ+hzdfD0P9+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrvEu-00000005XP4-1MFw;
	Thu, 06 Aug 2026 10:22:16 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrvEr-00000005XOK-1kjE
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 10:22:15 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-49553515a8bso30105125e9.1
        for <linux-phy@lists.infradead.org>; Thu, 06 Aug 2026 03:22:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786011731; x=1786616531; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=XNH7C3+W1iQuetjKu7PHcF0eka/FhNKK8WPnZOjuhC0=;
        b=SJNXgD4mJVUsXvdOFjERmJ5b1joHSa3w2Ju+KD0caliG73u44BjbY5XgdWCJxsNSfz
         4e1GEbFOvDQkPIb84V0+Zq0HGbQdimYaAIo2RofxTnAolgfCaAAVh5GUNXluKZz+E80P
         L/xcvuvbggSWSHifLyN9MKc2RSqPbianbrGd3X3A3+TqxXUc+wosJXC1BGJd/IVQPa2w
         ZmRNf9lT6pugV7Szx/DgXQSj6pSWzezKNuZH7U0TaRe1+ZwFydAPvfEL4gHT+EzAMElp
         S1Tao+T6Ctv3Cw5rk2ew6Lx77GigeW9+hgJWEeCzmmEUB5K8O3P43c3HHTF7Ozs7Fwx0
         BP3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786011731; x=1786616531;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=XNH7C3+W1iQuetjKu7PHcF0eka/FhNKK8WPnZOjuhC0=;
        b=ZMZnbTKuG0MvcXIhRg9NjYjridTVCpSC4rIjUd8CNHd1DA1CgxiZJQilurnxaEdAnG
         Y+CV7gcBmF8bOmyxUQwvdoKeOCHSza+Nwa4c2vAb/ln8H/4XraPBE6Xp1W9vTfgmAlC7
         g1OqZzBev+dIBhn6kGObp0ZQs+zd9iDnQFYM9QjVo02P6T4Utx+eeveanok0p6ljGLub
         67YN6zAKqF2c8pZEc0SWEPbnJ98kTtqMhKFYuvhWTEPaQ3etryP5W8e6HVtpjolpvnsE
         Q257glefuvv/M4s6b8OJd8xI3rsAs/ycsIWrJ8spIYuKTF/PBY0md2obEnqSWemA8sL/
         dENw==
X-Forwarded-Encrypted: i=1; AHgh+Ro4bfgmetPIak8YWI19qZdUqfJhgZrQAGYWhxmcrmDbPlMEI8L+KAagk0g6a7qSon0g9d1lJ4pefkM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzNFdppbrxkFXVDkKDstiPRzmxAVly90mfdV20ndEfvMRAWi7Xb
	qoMiDzgRA3E2znOAiG3QQiX9w3J/ay8miYcaUY+SjNEdnBUiUxTUSjymLzYq8w==
X-Gm-Gg: AR+sD11TcxcZl2iBZCHXzTYL3JaOKrCllNRo8GTyWFRiaqLKTypFrJShmSYjboOc7iC
	0ke4r5/1UnvfO8csRdSn48LPyRF2XtJdY9xV10M3IYI9lxjaWg0wPZaHO2b/KSOXWHsfgNxS+K7
	y+/LOnasE4hv0WLx/OOSelwEseecvvbTx2G+zWZcoaG3qzFahxDrFFLZp/TVp95jsIuwBzo4zy4
	9S1B5pmoin36ebnfwUVYvi2MwWqTuxCdNRRjyuv/ArMjumro9BGYoquOWkctEVG1jGMA5x71LYA
	B1P8Z/TAPMd+uYHDE8pqcfKxn3d7jjKD+jwUA2RJwpkerOC1bmrmWQuzhxWJ2jzPGdU/0zmEsrn
	Me89kLKNbxU/LStU2c06Ges3gHK9jNff5rNf4KtPxYxMVudFx/1U22PgN10lQuHhTNm00AbPCb0
	4i0WgD3y4xJFiZslmwQUDO8E93v4uz8DAbp51TTXOUIiKEaLZ++LD6Wwg5NUIWqPKoriJet4pQw
	ZNIAKvnNOlH
X-Received: by 2002:a7b:c38a:0:b0:495:7538:d4ea with SMTP id 5b1f17b1804b1-49959d790ddmr3341015e9.0.1786011730787;
        Thu, 06 Aug 2026 03:22:10 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a702:d301:a173:17cc:14ec:8d1])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499542851d6sm58729205e9.12.2026.08.06.03.22.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Aug 2026 03:22:10 -0700 (PDT)
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
Date: Thu,  6 Aug 2026 11:21:48 +0100
Message-ID: <20260806102206.149110-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_032213_480982_9CB59424 
X-CRM114-Status: GOOD (  16.34  )
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
