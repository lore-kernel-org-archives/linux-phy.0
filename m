Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 644A8C4167B
	for <linux-phy@archiver.kernel.org>; Wed,  6 Dec 2023 13:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VMyALWBU55kXA802scD11Bvz40SUP+Hf2mAnRMWSfFM=; b=sbQVzLtX+Ug4ar
	2r68Kb406WX1pNSS4i5vuOub5CjmJrIM08i1jCTerm/ftGWFHta2Som9hJ/cLIse3LLuf/dsX3wwR
	3/iM0RMC2FVemVh7YVNJ78kLB5OmH7P80D7WjJhqUuudmSB9EO3Gja4dlc7EZ6MHfmoP542JnSX5G
	RD2nYl67diSAEHGuryzeN9Qi+uLpgUaguITABdxRLOHUB55pEbDY7rcrSDAvnqMluJ1X/O7nqCklZ
	YEU/j17h4xt8GRmFlLF5SbxkM+EmVLkGrQtZheA7+k7U4bTx5p0eD+iJNfumDochqxB7axfMHwFxG
	2q2h0f1TPKgYP2ASdrqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAs6R-00AP4D-0S;
	Wed, 06 Dec 2023 13:38:15 +0000
Received: from pidgin.makrotopia.org ([185.142.180.65])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAs6O-00AP38-03;
	Wed, 06 Dec 2023 13:38:13 +0000
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.96.2)
	(envelope-from <daniel@makrotopia.org>)
	id 1rAs5y-00060R-13;
	Wed, 06 Dec 2023 13:37:47 +0000
Date: Wed, 6 Dec 2023 13:37:43 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: Rob Herring <robh@kernel.org>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Felix Fietkau <nbd@nbd.name>, John Crispin <john@phrozen.org>,
	Sean Wang <sean.wang@mediatek.com>,
	Mark Lee <Mark-MC.Lee@mediatek.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Alexander Couzens <lynxis@fe80.eu>,
	Qingfang Deng <dqfext@gmail.com>,
	SkyLake Huang <SkyLake.Huang@mediatek.com>,
	Philipp Zabel <p.zabel@pengutronix.de>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org
Subject: Re: [RFC PATCH v2 5/8] net: pcs: add driver for MediaTek USXGMII PCS
Message-ID: <ZXB5J5zO6IeTCy3b@makrotopia.org>
References: <cover.1701826319.git.daniel@makrotopia.org>
 <3cd8af5e44554c2db2d7898494ee813967206bd9.1701826319.git.daniel@makrotopia.org>
 <20231206133403.GA1894508-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231206133403.GA1894508-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_053812_051328_D66A0EEC 
X-CRM114-Status: GOOD (  15.52  )
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

On Wed, Dec 06, 2023 at 07:34:03AM -0600, Rob Herring wrote:
> On Wed, Dec 06, 2023 at 01:44:38AM +0000, Daniel Golle wrote:
> > Add driver for USXGMII PCS found in the MediaTek MT7988 SoC and supporting
> > USXGMII, 10GBase-R and 5GBase-R interface modes. In order to support
> > Cisco SGMII, 1000Base-X and 2500Base-X via the also present LynxI PCS
> > create a wrapped PCS taking care of the components shared between the
> > new USXGMII PCS and the legacy LynxI PCS.
> > 
> > Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> > ---
> >  .../bindings/net/pcs/mediatek,usxgmii.yaml    |  46 +-
> 
> Why are you changing the binding you just added?

Oh, that change slipped into the wrong commit by accident, sorry about
that, I will fix it in the next iteration.

> 
> In any case, bindings are separate patches.
> 
> >  MAINTAINERS                                   |   2 +
> >  drivers/net/pcs/Kconfig                       |  11 +
> >  drivers/net/pcs/Makefile                      |   1 +
> >  drivers/net/pcs/pcs-mtk-usxgmii.c             | 413 ++++++++++++++++++
> >  include/linux/pcs/pcs-mtk-usxgmii.h           |  26 ++
> >  6 files changed, 456 insertions(+), 43 deletions(-)
> >  create mode 100644 drivers/net/pcs/pcs-mtk-usxgmii.c
> >  create mode 100644 include/linux/pcs/pcs-mtk-usxgmii.h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
