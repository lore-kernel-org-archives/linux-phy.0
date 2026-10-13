Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83225CC6B0E
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 14:47:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EILeePaQG0JrRhXhFpLfPpKrueerwjS4W1uViZDWd30=; b=XeFcEh1rbsQIyN
	9Wp+bfKnPYUmpFHvI3mi/K8KSKB3w+EiRvkxN5eM9+39z3jNfrNkYh90uM4qIwBVZXRYDNh2Da3sl
	rSCsZoi32qnGGEuQQsW6JkxBR68jOo0AbJCZ4HLsBRvjFhYVGpJj54MR1OJ3sbkEaO0zFylQ6V1xl
	Fsx26rUGBXbvulYhvwvXE9bY+K4iuv0eZFp8l3w3zJApuBBHlxNE3wdQN+afbyFh/SvC1wzQLnsid
	M1RBX+gblyECVZO6b9RIepQkaQSsU3V+KYWTTxQqq1Y+ZyozvGHNtemQGh8tRDwk6knf6S4VwPTgl
	iVkYReGG1isUdBLVSDJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGdn5-0000000DAZN-0KOF;
	Tue, 13 Oct 2026 14:47:43 +0000
Received: from inva020.nxp.com ([92.121.34.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGdn2-0000000DAYK-3c9F;
	Tue, 13 Oct 2026 14:47:42 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 023391A0231;
	Tue, 13 Oct 2026 16:47:39 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com [134.27.226.22])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id DF3581A022D;
	Tue, 13 Oct 2026 16:47:38 +0200 (CEST)
Received: from lsv051416.swis.nl-cdc01.nxp.com (lsv051416.swis.nl-cdc01.nxp.com [10.168.48.122])
	by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 616FA202DA;
	Tue, 13 Oct 2026 16:47:38 +0200 (CEST)
Date: Tue, 13 Oct 2026 16:47:38 +0200
From: Jan Petrous <jan.petrous@oss.nxp.com>
To: Coia Prant <coiaprant@gmail.com>
Cc: Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>,
	NXP S32 Linux Team <s32@nxp.com>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Bogdan Hamciuc <bogdan.hamciuc@nxp.com>,
	Ionut Vicovan <ionut.vicovan@nxp.com>, Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Clark Wang <xiaoning.wang@nxp.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Chester Lin <chester62515@gmail.com>,
	Matthias Brugger <mbrugger@suse.com>,
	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Richard Cochran <richardcochran@gmail.com>,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	netdev@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	imx@lists.linux.dev, linux-pci@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Vincent Guittot <vincent.guittot@linaro.org>
Subject: Re: [PATCH RFC v3 04/12] net: pcs: add NXP SerDes XPCS shared core
Message-ID: <as5EioEfZqMZhyJg@lsv051416.swis.nl-cdc01.nxp.com>
References: <20260919-s32g_serdes-v3-0-9d68868c1e89@oss.nxp.com>
 <20260919-s32g_serdes-v3-4-9d68868c1e89@oss.nxp.com>
 <6aabb56e-406f-4d13-9fd8-54822202039f@bootlin.com>
 <assmUIvWMuZsp8OO@lsv051416.swis.nl-cdc01.nxp.com>
 <CALj3r0gQkUARS1e+2CGB3JsrGJ2XrzuoChfz0cWYRpK4kq1Uxg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALj3r0gQkUARS1e+2CGB3JsrGJ2XrzuoChfz0cWYRpK4kq1Uxg@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_074741_175605_F2798E65 
X-CRM114-Status: GOOD (  41.17  )
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

On Tue, Oct 13, 2026 at 03:47:58AM +0800, Coia Prant wrote:
> Hi Jan,
> 
> Thanks for the pointers. A few thoughts.
> 
> > Yes. The S32G accessor is the same DW indirect scheme pcs-xpcs-plat
> > implements (page into the viewport at 0xff, then the low address byte
> > at a 4-byte stride), so there is no reason for S32G to carry its own
> > copy of the XPCS code. The next version drops the shared core, exposes
> > each XPCS instance as a mii_bus from the SerDes PHY driver and creates
> > the PCS with xpcs_create_pcs_mdiodev(), much like the RK3568 glue.
> > Details in my reply to Andrew.
> >
> > The part that does not fit pcs-xpcs-plat as-is is ownership, not
> > access: the XPCS windows sit inside the SerDes subsystem register
> > space, and their bring-up is ordered against the PCIe lane and the
> > other XPCS instance, so the bus is registered by the SerDes PHY driver
> > rather than by a standalone snps,dw-xpcs device. The accessor itself
> > is a few lines; if Alex's pcs-xpcs-regmap is merged first I will use
> > it rather than open-code another bus.
> 
> On the transport split: I think the cleanest path is to split the MMIO
> accessor out into its own module, say pcs-xpcs-mmio, exporting the
> read/write helpers. Then pcs-xpcs-plat can call into those exported

Fine with me. The S32G accessor is a few lines, so I will move it onto
pcs-xpcs-regmap if that lands first, or onto a shared mmio helper if
you post one. Until then it stays open-coded in the glue.

> symbols instead of open-coding the page/stride scheme, and S32G can do
> the same for its indirect window. That way nobody carries a private
> copy of the accessor. If that turns out to be too invasive for plat,
> keeping a separate pcs-xpcs-plat copy is workable too, but I'd rather
> avoid it.
> 
> If Alex's pcs-xpcs-regmap lands first, that's the natural place for
> the S32G accessor; pcs-xpcs-mmio would only be needed if the regmap
> approach doesn't fit.
> 
> > S32G needs the same kind of thing: skip the generic soft reset, and no
> > EEE registers. I will start with the existing PMA-ID mechanism, since
> > that is what TXGBE and FBNIC use today, and switch to a callback if one
> > is agreed in the Rockchip thread. I'll Cc you on those patches.
> 
> On the shared-core duplication: rather than copying the whole XPCS
> core, I'd look at how the existing users express their quirks.
> 
> Wangxun has a genuinely different PMA ID, so it can branch on the
> ID before the reset path and keep the generic core untouched.
> 
> The older NXP devices do the opposite: they fake the PCS ID at the MDIO
> layer so the core sees a magic value it then interprets. That leaves
> the magic in the core and a fake ID in the glue, and it doesn't scale
> to a third user.
> 
> For S32G, I'd prefer one of these two approaches:
> 
> - A flag in struct dw_xpcs, e.g. DW_XPCS_NO_RESET, that the glue sets
>   and the core checks before the soft reset and EEE paths. Works when
>   the quirk applies to a whole instance regardless of the PMA ID.
> - A platform callback, e.g. plat->pma_config(), where the glue can
>   return early to skip the parts it doesn't need. More flexible, but
>   also more surface area; I'd only go there if flags aren't enough.
> 
> Either is better than another fake ID, because the quirk stays visible
> at the point where it matters instead of being hidden behind a made-up
> value in the transport layer.
> 

Agreed on the principle. The problem is that pcs_pre_config and the
PMA hook are reached only through the ID-keyed compat table, and S32G
needs a pma_config (link timer, lane on MPLLA). Without a platform
callback the ID is the only way in.

What I have for v4 is an ID-keyed entry with the two quirks as
explicit flags in struct dw_xpcs_desc (no soft reset, no EEE), so at
least the table says what the entry does.

> One question: how does S32G relate to the earlier NXP devices already
> in pcs-xpcs.c? Same IP, same PCS ID, same quirks, or something else?
> If they're the same family, it would be good to clean all of them up
> in one go rather than adding a third mechanism on top of the old
> fake-ID one.
> 

Same DW XPCS IP, different integration. SJA1105/1110 are switches with
the XPCS behind their internal MDIO; S32G is an SoC with the XPCS in an
MMIO window inside the SerDes, sharing the PMA with a PCIe lane. The
PMA sequences differ, and so do the quirks. The ID is synthetic in all
three cases. On S32G the XPCS reports the generic DW ID 0x7996ced0
and the PMA/PCS/AN MMDs read as zero (checked on an RDB3), so there is
no hardware ID to key S32G behaviour on.

> Separately, I have a plan to propose platform callbacks for the XPCS core
> at some point, regardless of whether S32G ends up needing them. The
> core currently has no way for a platform glue or PMA to limit or override
> parts of the generic behaviour, and I think that gap needs closing.
> The exact shape can be discussed once RK3568 lands. Happy to Cc you on
> the related thread when that happens.
> 

Yes, please Cc me on the callback thread.

BR.
/Jan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
