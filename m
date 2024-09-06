Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBDC9CE7B09
	for <linux-phy@archiver.kernel.org>; Fri,  6 Sep 2024 13:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4kDU5Mu1vsRO5GHh7Bslgd0BbbwteEZRlj4xxL15wwY=; b=0rlZlgBe8udJNY
	fEmRBRKxnp5kylvoLEykbdLZBzO/GajcPnacOeHj3H78sMFSjdCN5fORR4tcKzpbZMaZVTZfoM4KP
	l71aQQ2k32/pkQim2vUH+edFSBPHOv61YiGXMjehkJiNUoP3IZPsORr4gUX8+VuL7T8qd1UNRjoXr
	gCDbTZYBv4Gaq7IchFB2tmNmhxwP/NsGC8z9TFgm0USCVb96RMWyXDfJ4X1kx0OtXaDe3eMTT8nnk
	ZluH2R4AFfUAmqFwEWdOxEOIFFkhqgd4uPi+i50Wayw2Qpq5dirnV04zzgcbvKhqUdhPEUIm+D8tL
	uWUMwFd5H6il+fEgaqBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smYeF-0000000CHjc-2U2B;
	Fri, 06 Sep 2024 13:05:11 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smYZJ-0000000CGUy-0Qze;
	Fri, 06 Sep 2024 13:00:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7A8835C5BDF;
	Fri,  6 Sep 2024 13:00:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AABF2C4CEC4;
	Fri,  6 Sep 2024 12:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725627603;
	bh=oefV0SX3omS4xfk61TQppF8i4Kw29y+8gVPlyvNH1Og=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=GVE9ds3HQyRwRvxLUc3pdXTEquCNSGPmqpcsD8JopyKVrtaZt+dNwOGiy4MiWK/np
	 UYQkHEIWeKkYvUoGC7uOKz+WQcfGR1rlRNbhHnRD/JS4iG33nbworDbD0GX/Tyn6bk
	 ZFbjWBTRuXDLwtmLKWhCeUFk+sdqDZH57bl4TOKA7dp8Fzq5qea2scdqdl1UFr3fWw
	 5LzZ7TtPf+RldzD4rNCzM6Xw9QiLc7IV0z6a9HRRff11gXrTDep6059icuVlJmvzcr
	 4yRj8ATIVjjT4QJb6w5h3FfO5QH/PU//DH2e4aduV2ZIWGRVFXNcqSvFHMrCm9F2LY
	 794jA8xHubmtw==
Message-ID: <c0aa5342-a2af-4ac4-bc33-b6dbfff77f63@kernel.org>
Date: Fri, 6 Sep 2024 14:59:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/9] dt-bindings: phy: sparx5: document lan969x in sparx5
 dt-bindings
To: Daniel Machon <daniel.machon@microchip.com>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>, UNGLinuxDriver@microchip.com,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20240906-sparx5-lan969x-serdes-driver-v1-0-8d630614c58a@microchip.com>
 <20240906-sparx5-lan969x-serdes-driver-v1-8-8d630614c58a@microchip.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20240906-sparx5-lan969x-serdes-driver-v1-8-8d630614c58a@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_060005_323961_6E32F94F 
X-CRM114-Status: GOOD (  14.36  )
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

On 06/09/2024 14:52, Daniel Machon wrote:
> Document lan969x in the existing Sparx5 dt-bindings.
> 

Say something useful, not copy of subject.

> Signed-off-by: Daniel Machon <daniel.machon@microchip.com>

A nit, subject: drop second/last, redundant "dt-bindings". The
"dt-bindings" prefix is already stating that these are bindings.
See also:
https://elixir.bootlin.com/linux/v6.7-rc8/source/Documentation/devicetree/bindings/submitting-patches.rst#L18


> Reviewed-by: Steen Hegelund <Steen.Hegelund@microchip.com>
> ---
>  .../bindings/phy/microchip,sparx5-serdes.yaml          | 18 ++++++++++++++++--
>  1 file changed, 16 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/microchip,sparx5-serdes.yaml b/Documentation/devicetree/bindings/phy/microchip,sparx5-serdes.yaml
> index bdbdb3bbddbe..1e07a311e8a5 100644
> --- a/Documentation/devicetree/bindings/phy/microchip,sparx5-serdes.yaml
> +++ b/Documentation/devicetree/bindings/phy/microchip,sparx5-serdes.yaml
> @@ -8,6 +8,7 @@ title: Microchip Sparx5 Serdes controller
>  
>  maintainers:
>    - Steen Hegelund <steen.hegelund@microchip.com>
> +  - Daniel Machon <daniel.machon@microchip.com>
>  
>  description: |
>    The Sparx5 SERDES interfaces share the same basic functionality, but
> @@ -62,12 +63,17 @@ description: |
>    * 10.3125 Gbps (10GBASE-R/10GBASE-KR/USXGMII)
>    * 25.78125 Gbps (25GBASE-KR/25GBASE-CR/25GBASE-SR/25GBASE-LR/25GBASE-ER)
>  
> +  lan969x has ten SERDES10G interfaces that share the same features, operating
> +  modes and data rates as the equivalent Sparx5 SERDES10G interfaces.
> +
>  properties:
>    $nodename:
>      pattern: "^serdes@[0-9a-f]+$"
>  
>    compatible:
> -    const: microchip,sparx5-serdes
> +    enum:
> +      - microchip,sparx5-serdes
> +      - microchip,lan969x-serdes

It seems there is no lan969x SoC/chip. Are you sure you are using
correct naming, matching what kernel is using? Maybe you just sent
whatever you had in downstream (hint: that's never a good idea).

>  
>    reg:
>      minItems: 1
> @@ -90,11 +96,19 @@ additionalProperties: false
>  
>  examples:
>    - |
> -    serdes: serdes@10808000 {
> +    serdes@10808000 {
>        compatible = "microchip,sparx5-serdes";
>        #phy-cells = <1>;
>        clocks = <&sys_clk>;
>        reg = <0x10808000 0x5d0000>;
>      };
>  
> +  - |
> +    serdes@e3410000 {
> +      compatible = "microchip,lan969x-serdes";
> +      #phy-cells = <1>;
> +      clocks = <&fabric_clk>;

No differences so no need for new example. Also please follow DTS coding
style in case of any DTS code.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
