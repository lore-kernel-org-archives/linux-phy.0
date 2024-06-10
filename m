Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC4C7C27C55
	for <linux-phy@archiver.kernel.org>; Mon, 10 Jun 2024 21:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w8wdIjeXS0ifer5uXXlfxngQJl68MY7o67XrlQun6WU=; b=LPdu3AJMT4Z/9x
	dm7hGofKxup4BbFSQW+VQE9huEh4G9ezoyGUemjO+k9fXNQxrG/S/0MYdeTsNeHbgPlbZIQxchvOy
	8S3XRekTZZELfB3x4T3VHIm5w/QfQ/AziDLBlngnYV9+ZTytoSWQJJCqBEAHBpnMy13zD7lWTfY1w
	68DDcc+PORXsykmwS8k3vRK7DJVROPqs+ymYzRNwVV2IgJq80YhCL5WQCC6uxqTPomQeoQpmJ2VR3
	HUqciLzqv2+9kSvrt/jZx+RNzw2FGHTZ10dzny97gCN2C0H9mzk4qJjnituQBwFpgg4kWgYpyyTXb
	XMdFp50t/3YtBmc/wl6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGmtw-00000006aUA-1yx7;
	Mon, 10 Jun 2024 21:50:04 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGmto-00000006aT1-1pNo;
	Mon, 10 Jun 2024 21:49:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 926D060BC3;
	Mon, 10 Jun 2024 21:49:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 071A9C2BBFC;
	Mon, 10 Jun 2024 21:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718056195;
	bh=iqoeqU7qrd7+cqZSSIW9HJHlvFu1ZrsTtWb1zfe2NEE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RcAE+08LJLvIeH1O5c/0fRi76GuNfP6Cuyb7ml4RWOzjFj8R1PrjnmA/XhR8Nmvn6
	 n/jcXxhQly2HiTRB6BYiW+O5sYjqTQmaMtr7U5MUqxNb+++EtY4f4nWiCFPCZ8azAI
	 6cJbGMov8EFNNT+TACSr4w6D4M35B4dH8yrm1n/HK0cFCzH2WvAdR2z8qU750YLIFV
	 0oOQpMpf80gU6OOIpqKVGkNihXM3FddFKoMZqSIoX3feVs/wiK2xOjfERX9uvLAljU
	 ieJzoFNUWpQgLx27C+0HIfz4GXHW0Bkio5izHEc0pkrdrt6Yd8TMfEySCeFDwPhhIj
	 SLFZJAX9flCsw==
Date: Mon, 10 Jun 2024 15:49:53 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Josua Mayer <josua@solid-run.com>
Cc: Rob Herring <robh+dt@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
	linux-iio@vger.kernel.org,
	Richard Cochran <richardcochran@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Yazan Shhady <yazan.shhady@solid-run.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org,
	Gregory Clement <gregory.clement@bootlin.com>,
	linux-arm-kernel@lists.infradead.org,
	Lars-Peter Clausen <lars@metafoo.de>, netdev@vger.kernel.org,
	Andrew Lunn <andrew@lunn.ch>, Daniel Baluta <daniel.baluta@nxp.com>,
	linux-kernel@vger.kernel.org,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Konstantin Porotchkin <kostap@marvell.com>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v6 4/7] dt-bindings: phy: armada-cp110-utmi: add optional
 swap-dx-lanes property
Message-ID: <171805619146.3132064.3390412132436424626.robh@kernel.org>
References: <20240602-cn9130-som-v6-0-89393e86d4c7@solid-run.com>
 <20240602-cn9130-som-v6-4-89393e86d4c7@solid-run.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240602-cn9130-som-v6-4-89393e86d4c7@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_144956_565151_5729EC1A 
X-CRM114-Status: UNSURE (   8.81  )
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


On Sun, 02 Jun 2024 17:49:39 +0200, Josua Mayer wrote:
> Armada CP110 UTMI supports swapping D+ and D- signals.
> usb251xb.yaml already describes a suitable device-tree property for the
> same purpose but as child usb controller node.
> 
> Add optional swap-dx-lanes device-tree property to armada cp110 utmi phy
> with same semantics as usb251xb:
> The property lists all ports that swap D+ and D-, unlisted ports are
> considered correct.
> 
> Signed-off-by: Josua Mayer <josua@solid-run.com>
> ---
>  .../devicetree/bindings/phy/marvell,armada-cp110-utmi-phy.yaml      | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
