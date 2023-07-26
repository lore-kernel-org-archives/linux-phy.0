Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E796C0015E
	for <linux-phy@archiver.kernel.org>; Wed, 26 Jul 2023 17:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JmczxAIir5tEqwiQpaVuxd0UrcbSclEM0TPD+7V/Eos=; b=bl8A2K331xM/Om
	9tl9aZsoXrh/DRUJkgANtYzfyLDsJ/sBcUgvWBenaI/iOj2FkYM7jByT1wvbD0CIX8SZrhB8yBrPo
	THAo+T/7q6Pl0VQNl8KZxiA1UQnvoJdhwo4H8M00mqk38DPspDHEN7Kqg/i4ivyX8z+9lCeQFIRn2
	TPI2W9A45y+3WTbe3vZiFY3J69IAS5PS88wj/ZrxJUR/x2QZBbsev/IIC9/3Ciq9VRWKvNnTgeqYw
	zhs9BnkUd9T7nUGafD1eqJ1AGKMXfM4QiXx74oDfaBKwpye530R51FS8Js1ehkcvRi6jNLOgBxn78
	wJ5DmtnMPl+nouXSbvvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOhxJ-00B6dp-2X;
	Wed, 26 Jul 2023 17:05:45 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOhxG-00B6cu-2M
	for linux-phy@lists.infradead.org;
	Wed, 26 Jul 2023 17:05:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BBCA861BF2;
	Wed, 26 Jul 2023 17:05:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A3C5C433C8;
	Wed, 26 Jul 2023 17:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690391139;
	bh=1T+xS9yXDltmwI7i44gQg/MaNV4L9JrE8kjtjqY+lhA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dPdAkVzqpd4c6bpl0eY79hMpcvW13A9RkqhO2Ims2UIQioPwOiEP3xTDm674VskRR
	 lPVabjecOi0tz3+sETm9gJJjshM4cERN96QeQlzFy0qbqYolR5NwSWiBklOWdKeBXF
	 MnPtGu3RPjrkbTY9bIPnSwnJ0Y+yNp0P3KqWlsGm8B4smkMsPSFpacNv4bf2xYQQlI
	 +sRIq1V9t8srj0E6FqHP3PMJmsP4MNgFXKXoWvPJb14PMakSt8SW6apgQJu3L05DyP
	 iLotFZ8y3C7Wj5SWhykIejcX+1N3cPnmnwsZGNUaQuyXMQcde36hhaq+xkn38ip0R9
	 GxZdHitdPL8lg==
Received: (nullmailer pid 1591499 invoked by uid 1000);
	Wed, 26 Jul 2023 17:05:37 -0000
Date: Wed, 26 Jul 2023 11:05:37 -0600
From: Rob Herring <robh@kernel.org>
To: Swapnil Jakhade <sjakhade@cadence.com>
Cc: vkoul@kernel.org, kishon@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, mparab@cadence.com, rogerq@kernel.org, s-vadapalli@ti.com
Subject: Re: [PATCH 1/5] dt-bindings: phy: cadence-torrent: Add second
 optional input reference clock
Message-ID: <20230726170537.GA1587239-robh@kernel.org>
References: <20230724150002.5645-1-sjakhade@cadence.com>
 <20230724150002.5645-2-sjakhade@cadence.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230724150002.5645-2-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_100542_813427_990BD468 
X-CRM114-Status: GOOD (  15.41  )
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

On Mon, Jul 24, 2023 at 04:59:58PM +0200, Swapnil Jakhade wrote:
> Torrent(SD0801) PHY supports two input reference clocks. Update bindings
> to support dual reference clock multilink configurations.
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
> ---
>  .../bindings/phy/phy-cadence-torrent.yaml     | 23 +++++++++++++------
>  1 file changed, 16 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> index dfb31314face..ddb86ee0cebf 100644
> --- a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> @@ -33,16 +33,25 @@ properties:
>  
>    clocks:
>      minItems: 1
> -    maxItems: 2
> +    maxItems: 3
>      description:
> -      PHY reference clock for 1 item. Must contain an entry in clock-names.
> -      Optional Parent to enable output reference clock.
> +      PHY input reference clocks (refclk & refclk1).
> +      Optional Parent to enable output reference clock (phy_en_refclk).
>  
>    clock-names:
> -    minItems: 1
> -    items:
> -      - const: refclk
> -      - const: phy_en_refclk
> +    oneOf:
> +      - items:
> +          - const: refclk
> +      - items:
> +          - const: refclk
> +          - const: phy_en_refclk
> +      - items:
> +          - const: refclk
> +          - const: refclk1
> +      - items:
> +          - const: refclk
> +          - const: refclk1
> +          - const: phy_en_refclk

Can be simplified to:

minItems: 1
items:
  - const: refclk
  - enum: [ refclk1, phy_en_refclk ]
  - const: phy_en_refclk

*-names already requires each entry to be unique, so you don't have to 
worry about that case.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
