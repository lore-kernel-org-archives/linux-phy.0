Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91F2EC982DA
	for <linux-phy@archiver.kernel.org>; Sun, 20 Sep 2026 17:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kz17DbeAkP2aR8+zI5z9wuX7wgl3QAj4H9qlPrFDkVg=; b=hue8daBpgb/S4C
	0Hzjqkm0N3WO19rPo+ZS586NvPmTndFJPQCCEWAtb1cLmMpIZBg1ho8HyebR76srvXmuWCUJZjqcO
	/h6EBSI23U5xln/x5tcDim2Z+zzMR7FDq1F7Qjdctb0H14a1+QCp9Rgu04B4HMCNkQ3K2fRbON3Od
	czDMWlTtAn9p3NvCzd4H2deyHd0s6B459OfL7s1vJ9ZM9BOT8D3mxQzlb9X7oAxODBTlYhnyFkwya
	rAxnlVNnY6cloyMi334hUM79qVSg/FoczS9ciZj775YQ4nfNhg2oAHbMQn+dCkm9XPoZ7nD7iHCHQ
	pO3GX61RRgiU/YU8Ga1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8L0w-00000000AkO-13RP;
	Sun, 20 Sep 2026 17:07:42 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8L0u-00000000Ajd-29Ph;
	Sun, 20 Sep 2026 17:07:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=SRR6GWm8VvaCpKgQykY2MiSoqyYUd1GFMV1rrWkJ4JI=; b=LswdCCLGZ/fMTQ3fP37RE0xKmP
	tWLPS26CI1aHU7OSJLo4czeq1buGrq1SP4843QH/8q7GydxdJRJ5FarpIzBqSKJ98gU2TQc0oQwGy
	FY+BYRxWt7Lee6y7s9AFMUxX5aVGPlNmmDATqZIjBxpHEmBB2Dit1Azv1/G9/Qn+g4cQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1x8L0d-006BGL-FN; Sun, 20 Sep 2026 19:07:23 +0200
Date: Sun, 20 Sep 2026 19:07:23 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: jan.petrous@oss.nxp.com
Cc: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>,
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
	Ionut Vicovan <ionut.vicovan@nxp.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Clark Wang <xiaoning.wang@nxp.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
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
	Vincent Guittot <vincent.guittot@linaro.org>,
	Alexandru-Catalin Ionita <alexandru-catalin.ionita@nxp.com>,
	Bogdan Roman <bogdan-gabriel.roman@nxp.com>
Subject: Re: [PATCH RFC v3 05/12] net: pcs: Add NXP S32G XPCS driver
Message-ID: <c2c4dbc4-e6b4-47a0-9852-d116c6d21f89@lunn.ch>
References: <20260919-s32g_serdes-v3-0-9d68868c1e89@oss.nxp.com>
 <20260919-s32g_serdes-v3-5-9d68868c1e89@oss.nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260919-s32g_serdes-v3-5-9d68868c1e89@oss.nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_100740_554310_0B7D356B 
X-CRM114-Status: UNSURE (   5.95  )
X-CRM114-Notice: Please train this message.
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

> +#define SR_MII_CTRL				0x1f0000

This is 0x1f0000 + MII_BMCR

> +#define   SS13					BIT(13)

#define BMCR_SPEED100           0x2000  /* Select 100Mbps              */

> +#define   AN_ENABLE				BIT(12)

#define BMCR_ANENABLE           0x1000  /* Enable auto negotiation     */

> +#define   RESTART_AN				BIT(9)

#define BMCR_ANRESTART          0x0200  /* Auto negotiation restart    */

> +#define   DUPLEX_MODE				BIT(8)

#define BMCR_FULLDPLX           0x0100  /* Full duplex                 */

> +#define   SS6					BIT(6)

#define BMCR_SPEED1000          0x0040  /* MSB of Speed (1000)         */

> +#define SR_MII_STS				0x1f0001

This is 0x1f0000 + MII_BMSR

> +#define   LINK_STS				BIT(2)

#define BMSR_LSTATUS            0x0004  /* Link status                 */

Please go through all these register definitions and throw out all the
ones which follow 801.3 and use the values from include/uapi/linux/mii.h

    Andrew

---
pw-bot: cr

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
