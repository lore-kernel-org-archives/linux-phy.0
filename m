Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 807BEC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 23 Nov 2021 07:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ENJ9qe0LTNeHqBiiXYCf3khU/NNOtE5spqe7E/F9mxQ=; b=20KtZ8HLE+EXiw
	qwgkL/GzIMLlgWSCJrr+FoMlgc9mER485wb4VaI4WHN/xnldMx9SfdJjIfhxyaqNC3mq/ic/uP/aR
	CdPtbnwUwLxH+0MlQ20ya8myIrvV5x5mnUrHbbodIB6VT53EMib7NOJSchVim+HfzwVg+XmU90Tva
	yViJBmR5VWySEKtGMmMnAC8gKiaEWKzSKTVshKu5RisHlcELE0XTe/yK1ElWwmKlKAwHdcUsr6h2B
	KwCrcXsaCC8aUSXZ5uj2lukgsgfymZe5rWoulyqpxGBcvFs0H9ht/fHCf5qKPSuVYvX3ht4cu5bzL
	uhAFshebICBZ/QqPakvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpQOk-0014cn-U6; Tue, 23 Nov 2021 07:39:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpQOj-0014cA-9T
 for linux-phy@lists.infradead.org; Tue, 23 Nov 2021 07:39:26 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E7B9E60E94;
 Tue, 23 Nov 2021 07:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637653164;
 bh=SyxAeQw9fyWOIjanhRWuVLtPc7UGBdVPN7fyibQE8EM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FLns9YHMWZ32JS+1lWSZPCqVHZJS8exzZmtoPNw4L9qM7Wk60R/uU+CrloQ6D5kHp
 7qdoj0mKTlDXQIMRNh1kPrM8LEDM/2YlBOy0XuC+S/jrcjoLR0P7UbcCylxI4yJkjO
 xrJ4PlOhM/F7zgNuHwF+IoyPvcf3ARYr1YuCuUkFFlpFP0xTJZRLdRAteSxndu40fq
 hBJcHejJDyU54WAsXBUP2m4V5XbsQ0enRHOOmqXq3EXmjp+6Eq1A8cTQdp9OihBCXP
 rzHM3gGI5Zs3UlgQ2DOrQ4DHG+ncgpUsJOz+AFUMres+X+e2AzGF5GOEKy/HrJ58JB
 Ood0Xz1ZhvKow==
Date: Tue, 23 Nov 2021 13:09:19 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: kishon@ti.com, robh+dt@kernel.org, andrew@lunn.ch,
 alexandre.belloni@bootlin.com, kuba@kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH resend v4 0/3] phy: Add driver for lan966x Serdes driver
Message-ID: <YZyap7IgY/6WIHEE@matsya>
References: <20211116100818.1615762-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211116100818.1615762-1-horatiu.vultur@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_233925_379155_226CBC66 
X-CRM114-Status: UNSURE (   7.98  )
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

On 16-11-21, 11:08, Horatiu Vultur wrote:
> This patch serie adds support for Microchip lan966x serdes. The lan966x
> device contains 7 interfaces, consisting of 2 copper transceivers,
> 3 Serdes and 2 RGMII interfaces. Two of the Serdes support QSGMII.
> The driver also adds the functionality of "muxing" the interfaces to
> different logical ports.
> 
> The following table shows which interfaces can be supported by the port.
> 
> PortNumber    Max Speed    Ethernet interface options
>     0            1Gbps       CuPHY, 1G SGMII or QSGMII
>     1            1Gbps       CuPHY, 1G SGMII or QSGMII
>     2          2.5Gbps       2.5G SGMII, QSGMII, RGMII
>     3          2.5Gbps       2.5G SGMII, QSGMII, RGMII
>     4          2.5Gbps       2.5G SGMII, QSGMII
>     5            1Gbps       QSGMII, RGMII
>     6            1Gbps       QSGMII, RGMII
>     7            1Gbps       QSGMII

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
