Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB1BACEACEF
	for <linux-phy@archiver.kernel.org>; Mon, 17 Nov 2025 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FWN65NIgrfYbkuY8NzLevlotPvnGiL7g2FJ5/B9QIL8=; b=yHNW4mf1F5tf0b
	f2VKmVRcdDrBr+hUnMBcgaFoD81Nkbk89tCo7Pz2BTvWwpJY2YTAWspUbsnbImc/aKyiOapiMtfxh
	Xbe3jhDJZodzKBoW4Qa689TzwGx/CPBjHQvBaU28wCQe8iJu4UKscM+zJLWcjIDNMjCUkWvFCe8ws
	j7ZE9p9HuztGCqugXXU84PyLXnpQR5ztUiRGqkcur6f2dU3hftWBDMsTDns9/jquAihuZ2L8wMK5q
	BuvHYF9J58kYe6XiUFK9MQy4FFSr21gXNqxB6XHLeUOItAxlBjmdQgB8gyt8ytiv5TXKYc3TWxQ8A
	+jB+K26UnlJZ28ojHv/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKtE1-0000000FYvb-1A7t;
	Mon, 17 Nov 2025 07:00:33 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKtDy-0000000FYv7-426c
	for linux-phy@lists.infradead.org;
	Mon, 17 Nov 2025 07:00:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8F23440D81;
	Mon, 17 Nov 2025 07:00:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9AADC4CEF5;
	Mon, 17 Nov 2025 07:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763362830;
	bh=aZN7zbXZXHa7wcgVartfQ5nXipXYlMCiZfigd0SdNLg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jH/3sOh553iNuvqJzZEEhjMGtt2bcN1UWZ8gn40Kc6uvg7hZdXCj+rtc/UI10jG/R
	 1NH+zU9IEq1KHtOdvdgYag4OyDSeZMexuBZFgX8DxXOirnnHTDblblquhFNFM1q5Yc
	 WAa3sB3jNuGNIrljkZYU6LBEFJOQi7ufeHHq8t86n1hwIXtZ8G0Ls2nw91Y5pcQhz1
	 nlYGmg9fKa7bn+sBBc0wKVcD9zrROHc7NQz3TRkw6ai6tOhI5az7ESfDnufa74YG0e
	 oENNgH0A/5QCRdTy3iVXaUv/Hw65C51boqV/3RPp5Ajtfos2UI0REvlcJ8dgSAElXR
	 WMoJGt2P6U2Jw==
Date: Mon, 17 Nov 2025 08:00:27 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Rosin <peda@axentia.se>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 04/21] dt-bindings: reset: renesas,rzv2h-usb2phy:
 Document VBUS_SEL mux
Message-ID: <20251117-sturdy-resourceful-crab-c14bb8@kuoka>
References: <cover.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
 <8fba0b7235bd398d41329fd087d68f7e98bbbaca.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8fba0b7235bd398d41329fd087d68f7e98bbbaca.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251116_230031_039167_12D864E6 
X-CRM114-Status: GOOD (  16.37  )
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

On Mon, Nov 10, 2025 at 01:08:04PM +0100, Tommaso Merciai wrote:
> Document the 'mux-controller' child node in the Renesas RZ/V2H(P)
> USB2PHY reset binding to support describing the USB VBUS_SEL
> multiplexer as a mux-controller.
> 
> This is required to properly configure the USB PHY VBUS source on
> RZ/V2H(P), RZ/G3E SoCs.

And where did you explain why this cannot be folded into parent node? If
you do not provide context why reviewer's advice cannot be fulfilled,
then you will get the same comment.

> 
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
> ---
> v2->v3:
>  - Manipulate mux-controller as an internal node.
>  - Improved commit body.
> 
> v1->v2:
>  - New patch
> 
>  .../bindings/reset/renesas,rzv2h-usb2phy-reset.yaml   | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/reset/renesas,rzv2h-usb2phy-reset.yaml b/Documentation/devicetree/bindings/reset/renesas,rzv2h-usb2phy-reset.yaml
> index c1b800a10b53..03da74ff2d08 100644
> --- a/Documentation/devicetree/bindings/reset/renesas,rzv2h-usb2phy-reset.yaml
> +++ b/Documentation/devicetree/bindings/reset/renesas,rzv2h-usb2phy-reset.yaml
> @@ -37,6 +37,12 @@ properties:
>    '#reset-cells':
>      const: 0
>  
> +  mux-controller:
> +    $ref: /schemas/mux/mux-controller.yaml#
> +    description: Mux controller for USB VBUS source selection.
> +    type: object
> +    unevaluatedProperties: false
> +
>  required:
>    - compatible
>    - reg
> @@ -44,6 +50,7 @@ required:
>    - resets
>    - power-domains
>    - '#reset-cells'
> +  - mux-controller
>  
>  additionalProperties: false
>  
> @@ -58,4 +65,8 @@ examples:
>          resets = <&cpg 0xaf>;
>          power-domains = <&cpg>;
>          #reset-cells = <0>;
> +
> +        mux-controller {
> +          #mux-state-cells = <1>;

Do not mix up indentation.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
