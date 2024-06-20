Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EF3BC27C79
	for <linux-phy@archiver.kernel.org>; Thu, 20 Jun 2024 16:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3qNfCcSljXz9ROgObrSyhC2vo6Dy5UorZHWmfMqcDRU=; b=LU81bdrM5YLQI9
	bnh4Q4ReOBvpWqMKUx02Zm2N34oyeE5lyUyxCcaRRbmln0JLZUIkRQqperUSxFbWBdUXffriqEduY
	/gj5kG5Zt7GbzCajHiuAgYtCiZmx+muUtCXkoLArDuVjiMYKQRGheijriZIc0NSYF38iIvhsVVxbA
	70imKBeYc/xM1AcXPNiHZ7cZ5IECAjJ7htT0t1GMS3Tb0BaXkvG7CUoGAG9uVLYksrE/9v4TULcvA
	0jgB0gIMHV9PeickW4HunLJO50cnqLga8xmEeBB1urRMdGmwVpqFMN0pkGDnK1WFrSZYI5STLhdS2
	iHDplscsqr7+xGmNq+Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKKnV-00000005u1s-3jOV;
	Thu, 20 Jun 2024 16:38:05 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKKnS-00000005tzo-23Dl
	for linux-phy@lists.infradead.org;
	Thu, 20 Jun 2024 16:38:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id CA7D2621EF;
	Thu, 20 Jun 2024 16:38:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8182C2BD10;
	Thu, 20 Jun 2024 16:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718901480;
	bh=zBODjumhF8suBDPPzFJNNhUijNBXFCszRrZlUFXwvXg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KgTLXHiC35xjPS6nkkkzXX8aUsOMyNiPNkcc5owndwq1EHcgCm9GUzZAQRMR6X6J5
	 4J78IFoEd3NPElyFHrI4qi2mnLvafpZdjT8Das3s/0UGKErcbkdu4L3dYhjtRH6BCX
	 2DmFGB8ffGWlMmhCeMYPlvLd7m+qOKff2NzkZugGxGHQeUzcMePwEWnBB2POgh922H
	 xMD87hccL3p1a0CEqEMKwU0eh+SEthiehTH58cCZ8PlWoZVz6QhelGWgfy1eepXwa1
	 d20JIhYivrAjssq249+rj3Owos+aMd+oowWxchIC44TCkILPOu05waW+HLFqEcb0eJ
	 wojRt11KkxN4w==
Date: Thu, 20 Jun 2024 22:07:56 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>, devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v4 0/6] Add USB VBUS regulator for RZ/G2L
Message-ID: <ZnRa5CRumiJeMhEb@matsya>
References: <20240616105402.45211-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240616105402.45211-1-biju.das.jz@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_093802_643749_8EC52CE8 
X-CRM114-Status: UNSURE (   9.95  )
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

On 16-06-24, 11:53, Biju Das wrote:
> As per RZ/G2L HW manual, VBUS enable can be controlled by the VBOUT bit of
> the VBUS Control Register(VBENCTL) register in the USBPHY Control. But
> this IP is in the Reset block.
> 
> Reset driver exposes this register as regmap and instantiate the USB VBUS
> regulator device. Consumers(phy device) can use regulator APIs to control
> VBUS as controlling is done in the atomic context.
> 
> We need to have merge strategy which subsytem will apply this patches
> as it involves multiple subsystems Reset, Regulator, PHY, DT and Renesas
> SoC??

Why is there a dependency.. why cant they go thru respective trees?

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
