Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA1D8EE0ADA
	for <linux-phy@archiver.kernel.org>; Sat,  7 Feb 2026 11:56:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aWQyz+XqKoA+I/qmOsZseq9lLwJcMrhxDgK97pKQcCA=; b=vDs1Xo4f5RPPbY
	JK2qT23U9isxU86ugdjOl1wx5Y0DvbbCO4wuxoc3J35bzOhpPAgt+NfSOko7/VhdMLHt7rdhX85Gi
	1xVucQRnuo8DDZcmX2squQBsH4b/9ovpMRLuO4s75GUv6QwqxIjGkq5aaUg8u0hKkKgsxmRjYp/vo
	n4Qj5vQW16YHDSPKPLDDwUQoXVc6aUMazRhm3jsknSgnQocVuNmjKZLxyYcZb5cBErOYlSdnGUhF6
	Bzv9t5e88v7kerqpTu3qNEQ44pK0bRgYfiltNjK2A/e9OD9O0TE9/ZZF7D3uWiM4yNyxCik9FO5oe
	mITco0KT09mI01Fcperg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vogv6-0000000CPnQ-23rX;
	Sat, 07 Feb 2026 11:56:12 +0000
Received: from woodpecker.gentoo.org ([2001:470:ea4a:1:5054:ff:fec7:86e4] helo=smtp.gentoo.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vogv3-0000000CPn2-2RCn;
	Sat, 07 Feb 2026 11:56:11 +0000
Received: from localhost (unknown [116.232.48.232])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dlan)
	by smtp.gentoo.org (Postfix) with ESMTPSA id D436D341F0D;
	Sat, 07 Feb 2026 11:56:03 +0000 (UTC)
Date: Sat, 7 Feb 2026 19:55:51 +0800
From: Yixun Lan <dlan@gentoo.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Yixun Lan <dlan@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Ze Huang <huang.ze@linux.dev>, Rob Herring <robh@kernel.org>,
	Mark Brown <broonie@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-riscv@lists.infradead.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	spacemit@lists.linux.dev
Subject: Re: [PATCH 1/2] dt-bindings: phy: spacemit: add regulator support to
 K1 USB2 PHY
Message-ID: <20260207115551-GYA130548@gentoo.org>
References: <20260206100009.873182-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260206100009.873182-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260207_035609_662777_5C3E1D3F 
X-CRM114-Status: GOOD (  12.88  )
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

Hi Chukun,

On 18:00 Fri 06 Feb     , Chukun Pan wrote:
> Add an optional phy-supply property to describe the regulator
> supplying for USB VBUS.
> 
No, the phy itself doesn't require regulator supply

We previously had a discussion about this, and I personally agree it 
should be handled at USB port level, see Ze's comment

https://lore.kernel.org/all/aWJAT3n_KcND8bOz@monica.localdomain/

> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml
> index 43eaca90d88c..74a1cd5bcdbe 100644
> --- a/Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml
> @@ -19,6 +19,10 @@ properties:
>    clocks:
>      maxItems: 1
>  
> +  phy-supply:
> +    description:
> +      Phandle to a regulator that provides power to VBUS.
> +
>    "#phy-cells":
>      const: 0
>  
> -- 
> 2.34.1
> 

-- 
Yixun Lan (dlan)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
