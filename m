Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAC45C54756
	for <linux-phy@archiver.kernel.org>; Thu, 22 May 2025 07:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xFAuR7LqqTQPb9O/r5QHBPB0MLJUtChz1TEY1UMWeYw=; b=mq7cDK7YvCLDmG
	HK6x83rWyaJLOND9z4C/EZh8hm1iGTEYz6rQcAU10OoR50pjRqKhehGcjQoA3t4D1LwXWWzocWqq+
	assyLfBy1UzkmtGBwZb0T/WpyhEBGCNZf8LnMdgsEm0bgJ93LZhsF0/yEoxQFtwlQDL+acycA+Ccj
	hQNT4wOxJpzngbovFZTxIh6q5Kl9gG/oc8QTzD5PXdfY3odamiqDYfHoLTEenWvqSsm4MqEfGAvsV
	AOwRvlnfoLh4hvEEVIV/2U4yCPzXpwddSHrOZ54oZTK5seXZQSeCJrrLnYNZXJbLYiEz5cOY8a1PU
	q7gcdLkRZuwC92WmF4Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHzzM-000000004f1-2Bfh;
	Thu, 22 May 2025 07:05:12 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHzxx-000000004Vv-09zz
	for linux-phy@lists.infradead.org;
	Thu, 22 May 2025 07:03:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 67F9A44185;
	Thu, 22 May 2025 07:03:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B36F8C4CEE4;
	Thu, 22 May 2025 07:03:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747897424;
	bh=O6hy5R2mjeBm5Vf7qI0qCm2aawLVKSqcX2UGvROau3E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fZL/UWwA/7tkx6NstZdnvbhwIWCrU73q8YG0aG1/UrAqmcMMGFdf894Mlc35zIA5N
	 9A3H8i5D17sWmSuQGEsbxcOToAu4VnQ+4UElCFbRAIiKZf/oWgyDfRiNF5kqWAA1Bp
	 oOdPwsto9MwtR5h4u9fDcQheSwnZ3NoRahzeEOfba4ngyC8pJgZ6Br803HkimFxu0W
	 ZSDM59lny5ynGEH99GghKoELpLnV34SmygdhxzcCT1P0TGzgZCohB+PRqFOrUnUWz0
	 yctyVaW/Sqjovf0ryejXlkDcvlZ6Ph62sFnOMONasMB4zzaOs2Qne+5xNG8GEtTmae
	 8Qt/RbKxCvJsw==
Date: Thu, 22 May 2025 09:03:41 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de, 
	geert+renesas@glider.be, magnus.damm@gmail.com, yoshihiro.shimoda.uh@renesas.com, 
	kees@kernel.org, gustavoars@kernel.org, biju.das.jz@bp.renesas.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-hardening@vger.kernel.org, john.madieu.xa@bp.renesas.com, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: Re: [PATCH v3 05/12] dt-bindings: phy: renesas,usb2-phy: Add
 renesas,sysc-signals
Message-ID: <20250522-evasive-unyielding-quoll-dbc9b2@kuoka>
References: <20250521140943.3830195-1-claudiu.beznea.uj@bp.renesas.com>
 <20250521140943.3830195-6-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250521140943.3830195-6-claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_000345_092915_9F901C3C 
X-CRM114-Status: GOOD (  11.46  )
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

On Wed, May 21, 2025 at 05:09:36PM GMT, Claudiu wrote:
>  .../bindings/phy/renesas,usb2-phy.yaml        | 22 +++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> index 12f8d5d8af55..e1e773cba847 100644
> --- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> @@ -86,6 +86,16 @@ properties:
>  
>    dr_mode: true
>  
> +  renesas,sysc-signals:
> +    description: System controller phandle, specifying the register
> +      offset and bitmask associated with a specific system controller signal

This is 100% redundant information. system controller specifying system
controller signal.

Drop.


> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      - items:
> +          - description: system controller phandle

What for? Explain the usage. How is ut used by this hardware.

> +          - description: register offset associated with a signal

What signal? That's a phy.

> +          - description: register bitmask associated with a signal
> +
>  if:
>    properties:
>      compatible:
> @@ -117,6 +127,18 @@ allOf:
>        required:
>          - resets
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: renesas,usb2-phy-r9a08g045
> +    then:
> +      required:
> +        - renesas,sysc-signals

That's ABI break.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
