Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D4D0C54EBC
	for <linux-phy@archiver.kernel.org>; Mon,  9 Jan 2023 01:23:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fZ590SkNC7FoW8UdDvDK7WPVcEZEvt+EEcjhBRaWiKg=; b=wyqWoaXjydCnWS
	h0ytmrcwccrZ7Afg9D5hbsi4fqL0vSrBP6eh8cp/wM8gTkErF8ONTyA8SVc4PqrxG4w31L/0UYfVv
	SspyjIPCL/OxhTRWkVLxxeFHGMhfZLtbF8sYl4JaUZaX8w2YxT20JAQ8sjj/l8bjnQJloNonGhbD4
	kWahEeBMFojmqWkEoiRX3kzyp4P8dlRSzwzabcrlqDEIS2yGMws6lJ/orRnM9e0R9iNQO2eMvTtU3
	pd1Tp6Wyeu/sgef/YOT4mAoLktdrRC5WDZ3ZG+DR0ke2RHx9y3difcOkxsiT2IRimVXOtzoPZ3Yu0
	Wtln3SHZT0kjSi2zZp8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEgsq-00GdlN-8X; Mon, 09 Jan 2023 01:23:28 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEgs7-00GdVs-BE; Mon, 09 Jan 2023 01:22:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A6F991042;
	Sun,  8 Jan 2023 17:23:11 -0800 (PST)
Received: from donnerap.cambridge.arm.com (donnerap.cambridge.arm.com [10.1.197.42])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 181833F67D;
	Sun,  8 Jan 2023 17:22:27 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Icenowy Zheng <uwu@icenowy.me>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Subject: [PATCH v5 0/3] phy: sun4i-usb: add support for the USB PHY on F1C100s SoC
Date: Mon,  9 Jan 2023 01:22:20 +0000
Message-Id: <20230109012223.4079299-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230108_172243_491146_8EFD48B5 
X-CRM114-Status: GOOD (  12.85  )
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

Hi,

this is a rebased version of v4[1], with no actual changes. I haven't
received any feedback on the last version, but technically this looks
mostly approved to me anyway, we just need to get around to merge it
now, I guess?

This is a spin-off of v3 of the suniv F1C100s USB support series[2], just
carrying the USB PHY bits. It's now based on top of v6.2-rc2.
The actual binding and driver changes in the first two patches are
straightforward. Since it came up in reviews, I reworked the quirk
handling in the phy-sun4i-usb.c driver, to become more maintainable and
readable, in patch 3/3. For a changelog, see below.

Cheers,
Andre

[1] https://lore.kernel.org/linux-arm-kernel/20221116151603.819533-1-andre.przywara@arm.com/
[2] https://lore.kernel.org/linux-arm-kernel/20221106154826.6687-1-andre.przywara@arm.com/

Changelog v4 ... v5:
- rebase on top of v6.2-rc2

Changelog v3 ... v4:
- split off from rest of suniv F1C100s USB series
- rebase on top of H616 USB PHY patches
- drop phy2_is_hsic in favour of reusing existing hsic_index member
- add tags

Changelog v2 ... v3:
- remove redundant "Device Tree Bindings" suffix in DT binding doc title
- add BSD license to binding doc file (as per checkpatch)
- use existing PHY sun4i_a10_phy type instead of inventing new one
- add patch to clean up sunxi USB PHY driver

Changelog v1 ... v2:
- USB PHY binding: clarify the relation with other phy-sun4i-usb bindings



Andre Przywara (1):
  phy: sun4i-usb: Replace types with explicit quirk flags

Icenowy Zheng (2):
  dt-bindings: phy: add binding document for Allwinner F1C100s USB PHY
  phy: sun4i-usb: add support for the USB PHY on F1C100s SoC

 .../phy/allwinner,suniv-f1c100s-usb-phy.yaml  | 83 +++++++++++++++++++
 drivers/phy/allwinner/phy-sun4i-usb.c         | 59 ++++++-------
 2 files changed, 107 insertions(+), 35 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/allwinner,suniv-f1c100s-usb-phy.yaml

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
