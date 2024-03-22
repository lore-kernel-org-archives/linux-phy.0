Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 254C8C47DD9
	for <linux-phy@archiver.kernel.org>; Fri, 22 Mar 2024 13:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PbE4zMOMTCodAFupMhfp8YPtjlxZIqMLOaNqIO8VIuo=; b=FUUcMyf21Y6T+S
	oJDvVXhBA5p6iWnP68cJj5c1rLiT1xm8m7RiIbiGbRMv6QxJxV1e08K0W10ooEVXORXh9i/vAaCRP
	nIIyE5z3+2v6Ve7v8bnCERolWQVv6R5bFmjnRIkYTsOlxmRoT6NqEa02G6uEkb3rR0DrK29+LA5wu
	F3l88gdjh78Yv2XqdmgaVWsPihz70Kol0dtQRaQvLHbLnLaVSUEafpx0lrHMvrf4+uY6z8MkKaZCl
	cYowXaPGoHXOQxK/GJpv4Nkam+Go6x+1GjGwrYfvwJcCrnCgp0ognpZxJViWDESuqJ7ufdiKfz8Z4
	jlSRb4QYO3kyhql5hukg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnecK-00000007Efa-33ZM;
	Fri, 22 Mar 2024 13:07:28 +0000
Received: from mout.perfora.net ([74.208.4.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnecG-00000007Ee8-3Mie;
	Fri, 22 Mar 2024 13:07:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziswiler.com;
	s=s1-ionos; t=1711112821; x=1711717621; i=marcel@ziswiler.com;
	bh=hS0EhU2hZB+am5BBjCPMGTJbdV4iRS3G7g7Pk6drSvE=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
	b=qmK4ava4hnhBuzon1+mTEGXata5F3xg5mFC+FzSEotYyKRg+BKS2jLii/fzGi23M
	 LfTcL/hoSt5kAWh9JPMiPXU/18+VX76GX5aaCmD4RTyCKwS/J+FXWKNObIlsN4xeA
	 TjYlWwyyoNmdrmmdtpt0WRQuRlw9+6hNpnA+tkwIKcVdev1jVUECwAj+cpVErgdA1
	 eeB5Kp4zC14//C6WZNsdt3reVa6kbXF8A+S5yG4asBjosUaBAwt5IwWvOwHTIzHC6
	 UhNN02X0ExAydS8V9bKYu1+AyAMnBGmwsnwE2cJ/bZJ2/C6ayL/0hm3Qb32S4TrlA
	 Q37UNDZ8SGoxQA5jjQ==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from localhost.localdomain ([84.227.227.254]) by mrelay.perfora.net
 (mreueus003 [74.208.5.2]) with ESMTPSA (Nemesis) id 0Levg9-1qy9tL3jfr-00qjkg;
 Fri, 22 Mar 2024 14:07:01 +0100
From: Marcel Ziswiler <marcel@ziswiler.com>
To: linux-phy@lists.infradead.org
Cc: linux-imx@nxp.com,
	Lucas Stach <l.stach@pengutronix.de>,
	linux-arm-kernel@lists.infradead.org,
	kernel@pengutronix.de,
	Richard Zhu <hongxing.zhu@nxp.com>,
	linux-kernel@vger.kernel.org,
	Marcel Ziswiler <marcel.ziswiler@toradex.com>,
	Fabio Estevam <festevam@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Tim Harvey <tharvey@gateworks.com>,
	Vinod Koul <vkoul@kernel.org>,
	Yang Li <yang.lee@linux.alibaba.com>,
	imx@lists.linux.dev
Subject: [PATCH v1 0/1] phy: freescale: imx8m-pcie: facing pcie link-up instability
Date: Fri, 22 Mar 2024 14:06:31 +0100
Message-ID: <20240322130646.1016630-1-marcel@ziswiler.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:HbksDg0cngIhNhj/kmWLakIVtoaoqkjubx0k/GE+1UTtYoiJPYt
 mvNs7loxfRYXelWDuD4fsUK4rKwuy+r8Fw0tRSxLFQ1zb+LZJjPNssTjvNDybhIDz+I06/X
 5lk5hcLwYe5akl53H65rKfhUjeivfYWV2x1z93gVZvP5rNUpDZxHeDJsm4ARxjyNJhsvAMG
 OZtD6NzwaPq3nD50jo/hQ==
UI-OutboundReport: notjunk:1;M01:P0:USeePlatVWo=;8dzoQ6zbHtSzKKw72zgRGz/UoX7
 KyMe8LgKY9CB58q5ctWhUn84LFB61lsXEcxAgp8v4kDBZ35+kxO/OnxT3YrrDfIikC55X11kk
 Alt2zEdNzc42qUe/bmtjNAlhKv/p2PYXPPaAW+weeeiDgfRLw8BLPLWFsr4nzs3bsiRIgCwAN
 r266oO3ioBD+dpA25kuVB1SEW5zLTgpkbW9Mnhq/UoLLAmUf3gqNFWLHKxLiIQSv7085nsavS
 o6jzMkjQ6+2VVF2fT0ndvy0dn3SKuZtF13C1lm6Bv9YCBT5OAv8dBiT7s3BjRDgwKPWaoMZN3
 Rts5ahQ8z8DreSLEzXM5wz7mPPPJXa+QmWukoZ5TBb41Cbg8lp70w0HO6OSoN//b/gv3ADH3z
 RPVj6tCfIK8iGpTZRih3zH8wYg0TYnEAlCHVd7BP4EFekWTaWsa3D4bDq53+dz4hhx9XHaK3Q
 4ZHY1UtHzug16NSrnhivp1vmrmvrskQLd2zZdEPX1VFWkG4Vc7ETr2jUwr8u90d8wZFMpnVVK
 vH8K9T6GWSkejDo30A+VqF5qmzXlfWn01OkrVOzVVZlKIxUWsnqKANBSB/ctLpeLOfpQ07zdc
 ybPqoYl0k2sqmrP4YkBg3SjBRIpQbdL4V9F/2IR2YiDRzFKTOj4HjT6FJQBAnw8JtFdevLblC
 +oh4oLihFA8AsTDEcO5M4vFJCDNFigOzIXWfNqeSFRBcmr4ej/oFX1/gw01uBNYBQuXSZTPHu
 hOmviWXHb4KD/Sw6aylGkp0Q5pHef4SRGYre5thB7AJzHMP5jQDOG0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_060725_073490_F78FBB6D 
X-CRM114-Status: UNSURE (   7.83  )
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

From: Marcel Ziswiler <marcel.ziswiler@toradex.com>


In our automated testing setup, we use Delock Mini-PCIe SATA cards [1].
While this setup has proven very stable overall we noticed upstream on
the i.MX8M Mini fails quite regularly (about 50/50) to bring up the PCIe
link while with NXP's downstream BSP 5.15.71_2.2.2 it always works. As
that old downstream stuff was quite different, I first also tried NXP's
latest downstream BSP 6.1.55_2.2.0 which from a PCIe point of view is
fairly vanilla, however, also there the PCIe link-up was not stable.
Comparing and debugging I noticed that upstream explicitly configures
the AUX_PLL_REFCLK_SEL to I_PLL_REFCLK_FROM_SYSPLL while working
downstream [2] leaving it at reset defaults of AUX_IN (PLL clock).
Unfortunately, the TRM does not mention any further details about this
register (both for the i.MX 8M Mini as well as the Plus). Maybe somebody
from NXP could further comment on this?

BTW: On the i.MX 8M Plus we have not seen any issues with PCIe with the
exact same setup which is why I left it unchanged.

[1] https://www.delock.com/produkt/95233/merkmale.html
[2] https://github.com/nxp-imx/linux-imx/blob/lf-5.15.71-2.2.0/drivers/pci/controller/dwc/pci-imx6.c#L1548


Marcel Ziswiler (1):
  phy: freescale: imx8m-pcie: fix pcie link-up instability

 drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

--
2.44.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
