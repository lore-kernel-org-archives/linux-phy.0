Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53F12C5DF81
	for <linux-phy@archiver.kernel.org>; Thu, 20 Aug 2026 09:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eeDffNRJ+HkgtgtIKy1ZNBurHcEEN6YllJHNNtwaXd4=; b=JnemmTaOHhReZu
	qiA6+PI/syfbJs8I7+CwhAMkV2zFg355pkVMepI7/FB4+AyXVLir6nxKhd5fnSAEG5k64kcBlmDga
	b/RKlSA15Ud7KaJYNpmM9ZlwHfl7tnzI41VigV3VDXMQOWcApYSPNIxISUqHeF0HUWUpm7fDqbwhn
	6G6ppUtXkMmTWFg6J2HFOVzhXbPWUPKD1dGtpE378UlllI1ZV8nebA8a6U72Qa1hiYu1Q7Y6wNMRH
	UIx6yG2+ynM4tMU9UAJzr4c09d+trFRnWKDhIBYwSYiyD/urZhQ14NORKQuTvUoccUt2lhWL2Rpyt
	4DaJxcix+sIW58zFYIlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwzU8-0000000BIsS-0Bcd;
	Thu, 20 Aug 2026 09:54:56 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwzU5-0000000BIs0-3UWb
	for linux-phy@lists.infradead.org;
	Thu, 20 Aug 2026 09:54:55 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-49954b88fffso20576055e9.0
        for <linux-phy@lists.infradead.org>; Thu, 20 Aug 2026 02:54:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787219691; x=1787824491; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=IgbKi+IjJPrk4GtW2Ufu1ND7MPHdT58xQ0Q0aiwlQFo=;
        b=LKLAVzXpqD2Srm91kDbDBB/mox6rBaMMZLiU9JRQx/XmQldjIGJTf6nW9/uyHZkABP
         kHbSrCuYFETSPFXCOxw5rP7SwxGFz8GdAWICIdEw2jEWBgb4WJFYncUmYMeSNNOpoqhu
         Y3p5tvoH6h2JIx4zf+SlDAFKSLAS+F9kzsQOc+4l9Ko+Upa7+RZxRi2NQLknl/hMZ2eA
         ZO4jX0NKIPdyyOYn/G4WzlHxmbtmSTk4Lw6M51fJsVuXEnKHp717DltjE7fmBq6PXKqE
         GbNzEj2rqhakCyRbtIPsAChAuVvRhDBASX5S9rxiYeaijf/BOnTZy/nS7UB519/Ap2Eq
         shIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787219691; x=1787824491;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IgbKi+IjJPrk4GtW2Ufu1ND7MPHdT58xQ0Q0aiwlQFo=;
        b=ha6MTpocywEdL3zuxQKRgQEl4ja4EwSbHAPudQhQpAYloe4bFl+t4Ufv2Fiz/UQx4P
         JCGVrie1twKo3it4XgNhBOHJzVsxTvqX+fRZfQJEfNkJRvenoUcq8yILAKO5xONb+p3m
         prDmQtovOScHv0Ullj7AH6s5KK7sNzoQl43obODf4qtIaqP+fzQxQZjStCC5xXD5H1m6
         jRJtjCxr24Zv2rVDibo0BFnyC8+QltPy2NtGK/qPJdNc9Vs2HZQq3eHRQU8qLD37xiLB
         SLdp/w9JrBW29HKk7YwemmEoxkpM470SbCg4oGQ878HmI9/PKnqShjxfMg2CRRm1mm+h
         53zQ==
X-Forwarded-Encrypted: i=1; AHgh+RpSLet3ylDBeMW8zyLYPJB8R7o/wgbBya+QX3up9bXCQ/wZBW+0IubOaDSqIHvZe50mcHH3I3JnXJY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwTu9djJ8se6kOKnhpJN5DCgF3qt34XtuZGlo9F0aFT572Cucg2
	OZk+xdLgF/FPdsfGscvAliONQ5fIAtwJTH01I/7YfhAIQnfp1iZ71dKo
X-Gm-Gg: AR+sD13vdgSnPyBRvRidv1wJHf3se3fd0a2XGhLbUasIl8mW12J1XcPDPUe7ZPiDOn3
	tIWhcC/gb/6opal40tpR0YnFB0V99Deg6OuO0TV64z7NFUB0cyVlKZHX5cs64dUSN4bEmBvTEgp
	N35UK9yWYQ2bVqOCtLt2KrtUWdRF+K12Y2g9LVONvS/VydS8pOOZ2C5RwyxSZeBW0PIO54UwVma
	GOeH0buzn4PUrgoK7ALc5X3Mo5xiLlGqoTHyd63b3zRQQQ8UlwMdIxVG0uUCDe7R+Twz3u6cxIM
	74W67YV73H4oaniKzYgqvb5EJ7YQBegSFGbyMzZdQyhZv8iH9y1WeRzk9PexHYeJptT06M/nq3d
	jqeX9pM2NoGvy6Dh8lRODu4VXHbpN74VCfRiVrrcib0vAcatfLaKYLPOH5f//lwoOjCKLI27xCg
	w6rmrHNfFeL+PEh6FP9hfMjXItmpJVFvo+Y1/1ROxxG0YN2mDoWfVxJkzzelRTn2BSYJpV
X-Received: by 2002:a05:600c:34d1:b0:499:49f3:77b1 with SMTP id 5b1f17b1804b1-499aa14a6a6mr197783335e9.3.1787219691320;
        Thu, 20 Aug 2026 02:54:51 -0700 (PDT)
Received: from biju.lan ([2a00:23c4:a702:d301:eda0:8ef1:e1ab:c2b1])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499aa0d6721sm172069675e9.11.2026.08.20.02.54.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Aug 2026 02:54:51 -0700 (PDT)
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
Subject: [PATCH v8 0/5] Add RZ/G3L USB2.0 host support
Date: Thu, 20 Aug 2026 10:54:38 +0100
Message-ID: <20260820095448.20930-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_025453_898916_476C7617 
X-CRM114-Status: GOOD (  16.05  )
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

This patch series has functional dependency on [1]
[1] https://lore.kernel.org/all/20260819191325.217809-1-biju.das.jz@bp.renesas.com/

v7->v8:
 * Dropped SoC dtsi patches and will post later.
 * Collected tags for regulator driver and binding.
 * Avoided code duplication by moving devm_add_action_or_reset() to
   rzg2l_usbphy_ctrl_pwrrdy_init().
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

Biju Das (5):
  regulator: renesas-usb-vbus-regulator: Rename platform device to
    rzg2l-vbus-regulator
  dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document RZ/G3L support
  reset: rzg2l-usbphy-ctrl: Introduce info struct for match data
  reset: rzg2l-usbphy-ctrl: Add RZ/G3L support
  regulator: renesas-usb-vbus-regulator: Add RZ/G3L VBUS regulator
    support

 .../reset/renesas,rzg2l-usbphy-ctrl.yaml      |  41 ++++++-
 .../regulator/renesas-usb-vbus-regulator.c    |  75 ++++++++++++-
 drivers/reset/reset-rzg2l-usbphy-ctrl.c       | 105 ++++++++++++++----
 3 files changed, 197 insertions(+), 24 deletions(-)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
