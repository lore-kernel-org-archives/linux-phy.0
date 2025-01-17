Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05C7DC02185
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jan 2025 13:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7uPCL7Q3olO00LPVPkhXwFEHPRTENgKzu7EVJLzQsM4=; b=qxYtma+pq+0yO3
	+0UPRy3SNRIS+CaX3M4fXIAbPJQNlmnp9zR6Ld9dZzCVErZHCtiFX4dgwY6elvzlpVKJhteyDSNxr
	Df1njkMmdP84gxVIWbk13uKjEiw5zoGF4PVK6Mh65z0VoAmYGQBoCmdd36ZyI1Ns755sCpT+A838w
	NO3Q+TGqQeEqYrQLq9u8OEF4PxUUnhdxgR+3XIvQlI3UZYQGNOwzsu02INKpTcJ9XIVO3Oh7oZVWj
	fab6fDajuGXNOIprYV4vgAdIqm8D1sMwIuINrhbHLY3xLSQI4fmZ154AFOpmCd1gx0AiUXjmhuDTy
	3lQUXN+VG8HK/FNo6LJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYm1o-00000000JFf-12Rd;
	Fri, 17 Jan 2025 13:04:48 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYm1l-00000000JCr-30Nc
	for linux-phy@lists.infradead.org;
	Fri, 17 Jan 2025 13:04:47 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:e8f3:e87e:7352:b33b])
	by laurent.telenet-ops.be with cmsmtp
	id 2D4g2E00727fVKr01D4gmD; Fri, 17 Jan 2025 14:04:40 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tYm1a-0000000DPU4-35XF;
	Fri, 17 Jan 2025 14:04:40 +0100
Received: from geert by rox.of.borg with local (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tYm1f-00000004wB4-39fz;
	Fri, 17 Jan 2025 14:04:39 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Herve Codina <herve.codina@bootlin.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH v2 0/3] LAN966x PCIe endpoint cleanups
Date: Fri, 17 Jan 2025 14:04:35 +0100
Message-ID: <cover.1737118595.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250117_050445_889481_A1CBDFE6 
X-CRM114-Status: GOOD (  17.65  )
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

	Hi all,

This patch series contains various cleanups related to the recent
addition of LAN966x PCIe endpoint support.  They can be applied
independently.

Changes compared to v1[1]:
  - Drop dependency on SOC_LAN966, as the OIC is used only in LAN966x
    PCI endpoint mode,
  - Replace MFD_LAN966X_PCI by MCHP_LAN966X_PCI, as the latter is the
    symbol that ended upstream.
  - New patches [1/3] and [3/3],

Thanks for your comments!

[1] "[PATCH] irqchip: LAN966X_OIC should depend on SOC_LAN966 || MFD_LAN966X_PCI"
    https://lore.kernel.org/578dafcbdf8287e73dd30e96e23814b8c029ea96.1721719060.git.geert+renesas@glider.be

Geert Uytterhoeven (3):
  dt-bindings: interrupt-controller: microchip,lan966x-oic: Clarify
    endpoint use
  irqchip: LAN966X_OIC should depend on MFD_LAN966X_PCI
  phy: PHY_LAN966X_SERDES should depend on SOC_LAN966 ||
    MCHP_LAN966X_PCI

 .../bindings/interrupt-controller/microchip,lan966x-oic.yaml | 5 ++---
 drivers/irqchip/Kconfig                                      | 1 +
 drivers/phy/microchip/Kconfig                                | 1 +
 3 files changed, 4 insertions(+), 3 deletions(-)

-- 
2.43.0

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
