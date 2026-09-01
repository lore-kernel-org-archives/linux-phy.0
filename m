Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 976CEC624CF
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 10:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZWVSX21azTkaEA6xEOpsaSsDYuGU4TBKFsnVv7XQShc=; b=zzF2B+jXZUP73w
	XepD40GxwDT4mub/cSqC/dofLIA7bg7GyAAOk8A7ITnz6TZjaMgK1G3qgOEkZoYWv827e6aGnwy72
	sySzHgyNW6YpFRdOux1TvHmmS+HTWo71BjaM3Wy8nwdXdtGr7Xk9RmbU1JYlU4UleI0R+zrBpKpux
	3Bu3J03Qoo5nr6j+VPrWWg4vdweVnB1bKNf0aODj/24HYggXER+NKMFm11yTjfU+CLFGnnAFHveZ3
	NLCreAXSwjGuL0qXW7VS2AK011suIXiiE4MyPMX0RiRwWZ5Fnjhec4ijE7sVlanWgrBQ41llw02yd
	PAHuB8Mh/VkretiZuxxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1LRn-0000000BVhJ-1ItY;
	Tue, 01 Sep 2026 10:10:31 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1LRm-0000000BVh8-27AI
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 10:10:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2EAB84099A;
	Tue,  1 Sep 2026 10:10:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 497391F000E9;
	Tue,  1 Sep 2026 10:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788257430;
	bh=mTW1P4jH11mmJj9GOyg5JewC/DNoiFnotN2d6AbTLmM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=VIp6Dj3LshbQA5iR89kQik10SY+PxCaGIDiqCQeYaQtb5vBxjT3MazWbND9D8I+4z
	 dQOGcU6R2SDu/qIBIJniTBtGRjL6F6/t5Fqt0d5xZ1/MpvA2dCaHJ0s5edLSabZcfB
	 Acm5XVfRnDDEOIMKnC9G8fDcaMXCNzV8uvtpXGNTkr0FUMtCueWTVpmMIz60QpYl93
	 kkl+BTlBoWDb7E7REQTtKEgSZ3/CDNW7y3NFrlOTTkyHJgDbgGZWmKUgSHNI1l9YC6
	 c5HsbHetRG095behaIP5aD7IvKF+N3F3mLQCorna5/70GJF9KH+Q4oaC4UQ6hxv2LY
	 Uwd0Fsbnkehhg==
Date: Tue, 1 Sep 2026 12:10:26 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Wayne Chang <waynec@nvidia.com>
Cc: mathias.nyman@intel.com, vkoul@kernel.org, neil.armstrong@linaro.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	gregkh@linuxfoundation.org, thierry.reding@gmail.com, jonathanh@nvidia.com, 
	linux-usb@vger.kernel.org, linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH V2 2/8] dt-bindings: usb: Add Tegra264 XUSB host support
Message-ID: <20260901-solid-uber-coati-381d2d@quoll>
References: <20260831185835.3732707-1-waynec@nvidia.com>
 <20260831185835.3732707-3-waynec@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260831185835.3732707-3-waynec@nvidia.com>
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

On Tue, Sep 01, 2026 at 02:58:29AM +0800, Wayne Chang wrote:
> Extend the Tegra234 XUSB host binding to cover Tegra264:
> 
> - Add nvidia,tegra264-xusb compatible string
> - Document optional USB wake interrupts for Tegra264
> - Document Tegra264 PMC wake event to port mapping
> - Allow up to five IOMMU specifiers for the additional XUSB host
>   stream IDs
> 
> Signed-off-by: Wayne Chang <waynec@nvidia.com>

Why are USB patches mixed with DTS and phy ones? That's like three
separate subsystems, of which Greg explicitly said many, many times he
takes everything or nothing. Please read submitting patches in DT.



> ---
> V1 -> V2: Property definitions are back at the top level with the widest
> constraints, The allOf conditional only tightens Tegra234 to interrupts
> maxItems 9 and iommus maxItems 1.
> 
>  .../bindings/usb/nvidia,tegra234-xusb.yaml    | 35 ++++++++++++++++---
>  1 file changed, 30 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.yaml b/Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.yaml
> index ec0993497fbb..d63f0db4224c 100644
> --- a/Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.yaml
> +++ b/Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.yaml
> @@ -17,7 +17,9 @@ description: |
>  
>  properties:
>    compatible:
> -    const: nvidia,tegra234-xusb
> +    enum:
> +      - nvidia,tegra234-xusb
> +      - nvidia,tegra264-xusb
>  
>    reg:
>      items:
> @@ -43,6 +45,7 @@ properties:
>        - description: USB wake event 4
>        - description: USB wake event 5
>        - description: USB wake event 6
> +      - description: USB wake event 7
>      description: |
>        The first two interrupts are required for the USB host controller. The
>        remaining USB wake event interrupts are optional. Each USB wake event is
> @@ -50,10 +53,9 @@ properties:
>        platform. The USB host controller can function even if no wake-up events
>        are defined. The USB wake event interrupts are handled by the Tegra PMC;
>        hence, the interrupt controller for these is the PMC and the interrupt
> -      IDs correspond to the PMC wake event IDs. A complete list of wake event
> -      IDs is provided below, and this information is also present in the Tegra
> -      TRM document.
> +      IDs correspond to the PMC wake event IDs.
>  
> +      Tegra234 PMC wake events:
>          PMC wake-up 76 for USB3 port 0 wakeup
>          PMC wake-up 77 for USB3 port 1 wakeup
>          PMC wake-up 78 for USB3 port 2 and port 3 wakeup
> @@ -62,6 +64,16 @@ properties:
>          PMC wake-up 81 for USB2 port 2 wakeup
>          PMC wake-up 82 for USB2 port 3 wakeup
>  
> +      Tegra264 PMC wake events:
> +        PMC wake-up 79 for USB3 port 0 wakeup
> +        PMC wake-up 80 for USB3 port 1 wakeup
> +        PMC wake-up 81 for USB3 port 2 wakeup
> +        PMC wake-up 82 for USB3 port 3 wakeup
> +        PMC wake-up 83 for USB2 port 0 wakeup
> +        PMC wake-up 84 for USB2 port 1 wakeup
> +        PMC wake-up 85 for USB2 port 2 wakeup
> +        PMC wake-up 86 for USB2 port 3 wakeup
> +
>    clocks:
>      items:
>        - description: XUSB host clock
> @@ -97,7 +109,8 @@ properties:
>        - const: write
>  
>    iommus:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 5

You should list the items instead. Flexible array means now the order
have a meaning.

>  
>    nvidia,xusb-padctl:
>      $ref: /schemas/types.yaml#/definitions/phandle
> @@ -137,6 +150,18 @@ properties:
>  allOf:
>    - $ref: usb-xhci.yaml
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: nvidia,tegra234-xusb
> +    then:
> +      properties:
> +        interrupts:
> +          maxItems: 9
> +        iommus:
> +          maxItems: 1

And the new device has flexible interrpts and iommus?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
