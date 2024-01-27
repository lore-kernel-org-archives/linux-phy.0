Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C1BAC46CD2
	for <linux-phy@archiver.kernel.org>; Sat, 27 Jan 2024 21:54:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y5TZzQqlkk8ThuYqaDKp1W8wSMAbiGsPOAk/G8X+Zjs=; b=AlHeK5fksVy7HY
	tSG8CtDTRjktZxk0GuACcIwfUKjaq3Dy4sAcD9RSkc8p0kqMT1+jetJtFn/rpK+YAN6z2KsxjRGgb
	BNVg3IpMoacF6ppZBqKM+F3mpcVH0Qto4tR679Evp3kM4i8YW65OV700hyAkxtMi/NvdvKrt+7Nig
	+I+Y5kBzrmkasunlFBKB/wMOHX3GJmXX+5s9MGQkV/SzTwK2P4nGzrjSOeUYx5xo/LXATJn6lEy5Z
	WoQwFyjEG77NAT2VXBiw2hBX5Kz/fIad5nOucvejjd67eLOrrMMV/ldN/7AwOtw9mPCaDp/AtCEvF
	5cnCs8mH+ypepgTDrlcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTqcx-00000008FPS-2rNC;
	Sat, 27 Jan 2024 21:54:15 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTqcu-00000008FOu-2Kxk;
	Sat, 27 Jan 2024 21:54:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AB70C6103A;
	Sat, 27 Jan 2024 21:53:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 556C4C433F1;
	Sat, 27 Jan 2024 21:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706392421;
	bh=NwU+oQa1r9cqfqb+Y9Gu8poXEe3DEKlOE0uxQ1/xnls=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cTBgjxuaJoqtWft7Gv4EaWo+W+B6XihNrDLZ6i31t9w7tWduK4DLx4e50PMoZVB45
	 zmdMUTEcC8YKEqDcvbLamELjPbIYT7h0MgFmEdzz7FdlodSK4L9QUmP+ZzAANC2jjF
	 79etyTz2pRLTF1BtviheweuWuroOadw86bd3tvUfNtYtV9qDtXD4ijH2fAIYPsnJud
	 N6YkeepTGppZQmlJZQ4qM+SqAmPk62FnJhftYlAd+3HpNZl3sHJQk7wObw3vK8qtrY
	 DYM3RzLmMzws7bASNt+/Wz699iNaam82CdOgQHd0ieAKDrGFqg1GKvzJS9qCu2c41N
	 Ov9Ck6cIjWYOw==
Date: Sat, 27 Jan 2024 22:53:36 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Haojian Zhuang <haojian.zhuang@linaro.org>, 
	Vignesh R <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Peter Rosin <peda@axentia.se>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Tom Joseph <tjoseph@cadence.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org, gregory.clement@bootlin.com, 
	theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com, u-kumar1@ti.com
Subject: Re: [PATCH v2 02/15] pinctrl: pinctrl-single: move
 suspend()/resume() callbacks to noirq
Message-ID: <k6tf2ryu3jxmeirmo6ymhtaqugi7u67qwwypxq7yvsymenq4pi@isoii76ej3ry>
References: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com>
 <20240102-j7200-pcie-s2r-v2-2-8e4f7d228ec2@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240102-j7200-pcie-s2r-v2-2-8e4f7d228ec2@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240127_135412_658563_D7BB5E0B 
X-CRM114-Status: UNSURE (   8.22  )
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

Hi Thomas,

...

> -	struct pcs_device *pcs;
> -
> -	pcs = platform_get_drvdata(pdev);
> -	if (!pcs)
> -		return -EINVAL;
> +	struct pcs_device *pcs = dev_get_drvdata(dev);

I think this cleanup can be placed in a different patch. Besides,
it's not mentioned in the commit log.

Otherwise looks good.

Andi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
