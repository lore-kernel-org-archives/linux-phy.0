Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CE14FA3740
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 19:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HQiZ6FzZ4y4RQcMLrWAX3RYJ7/FyRGlQeYuiVpk7kT4=; b=GneW1Kl14/49Zb
	7kJvLzKuXp/LjV6+1zSU5/uNHdF6IRScdx1IlpqsVa5YTZqCXXr2yE+mUKyJ86xtWrLAvdxtn9+3w
	e5qKTCaKAGHDrV7x92MAjLUQllYiso9HhJ4zSVzky85D5xIz9e2gzkIDsnBGne6ByMKi2H9FtG/Iv
	ujKwbJkrZ8JhpGYhiWg8fAFGsYbXv7RnRSL7JmS9iv7LZazFLZ85W4gb/a+gdjwwyiu+eVL6utToT
	0UdPh8cetVHdDdjI4uk7jsE+ad3zc0XjX4Aux9Wj9cHtbGetGckTKzya9KfhWplwn2ZMQjaQ04KrZ
	0iTcURusr8q92QPM3twA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooVC4-001w6m-Ra; Fri, 28 Oct 2022 19:39:04 +0000
Received: from mail-oa1-f43.google.com ([209.85.160.43])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooVC1-001w4Q-Tz; Fri, 28 Oct 2022 19:39:03 +0000
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-13bef14ea06so7425794fac.3;
        Fri, 28 Oct 2022 12:38:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OPezRWwe1uqvQUH0IxzPFGw41VKXKjVRgrFnddPWA+U=;
        b=Y14ftfCDZmq5vJJoAJFQafMnyjM5uBYOeJFA6Oan6M+lzuZrIV1peiVkT9CvOMoN1N
         TH/NbdBLRdyXW4qzGf/Up7kxSltHYP1k2GjfOMgpKP7fyhkiYuJd1oH8vSJBMcyDt+xL
         O3p2UtyX8DErVgnxF/c8T0VEywtQFMvdcnZHD/j9vF3VJwrUarRVP9FGlhinyQUb2FCT
         MiPxeVDYM6UumWgtx9brhcIQVaycxgOQsFFsoU3PmrypbWxjVhLfNSkvdOzSY+IVwX+r
         dhMxWG6IGIAG1s2OdGw+UMDeMpZDPGTMP3d9lN2XkqMV6zXuOarpmST2o7uV72jQeVTF
         q8IQ==
X-Gm-Message-State: ACrzQf1oRBiS3znplNsrZG0y5eqbHyoIAM2ALLynguiKdmgutq17tAmf
	9UmJ4jHKHx+Bkal9j1KycA==
X-Google-Smtp-Source: AMsMyM6nE2WfzyiR0qouKxqYcNHNAhOZm0r5K+MsLRWplVxKXJkbEX48dCTlj6PsAz90t8p3y/VoGw==
X-Received: by 2002:a05:6870:d351:b0:13c:5da4:b09d with SMTP id h17-20020a056870d35100b0013c5da4b09dmr5471906oag.1.1666985938094;
        Fri, 28 Oct 2022 12:38:58 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r26-20020a9d751a000000b00662335e1642sm1988555otk.77.2022.10.28.12.38.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 12:38:57 -0700 (PDT)
Received: (nullmailer pid 2191906 invoked by uid 1000);
	Fri, 28 Oct 2022 19:38:59 -0000
Date: Fri, 28 Oct 2022 14:38:59 -0500
From: Rob Herring <robh@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Masami Hiramatsu <mhiramat@kernel.org>, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: phy: Fix UniPhier SATA controller node
 names in example
Message-ID: <20221028193859.GA2188803-robh@kernel.org>
References: <20221027044920.23194-1-hayashi.kunihiko@socionext.com>
 <20221027044920.23194-3-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221027044920.23194-3-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_123901_986966_7262CEAF 
X-CRM114-Status: GOOD (  17.86  )
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

On Thu, Oct 27, 2022 at 01:49:20PM +0900, Kunihiko Hayashi wrote:
> The word "glue" is ambiguous for the controller node name. Should put
> "sata-controller" instead of "ahci-glue" on the controller node.
> And rename a phy node to "sata-phy".
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml  | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
> index a3cd45acea28..89b8b133777a 100644
> --- a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
> @@ -117,14 +117,14 @@ additionalProperties: false
>  
>  examples:
>    - |
> -    ahci-glue@65700000 {
> +    sata-controller@65700000 {

But is this really the SATA controller aka AHCI?

In cases where we don't have a standardized name, I don't think it makes 
sense changing node names from one non-standard name to another.

>          compatible = "socionext,uniphier-pxs3-ahci-glue",
>                       "simple-mfd";
>          #address-cells = <1>;
>          #size-cells = <1>;
>          ranges = <0 0x65700000 0x100>;
>  
> -        ahci_phy: phy@10 {
> +        ahci_phy: sata-phy@10 {
>              compatible = "socionext,uniphier-pxs3-ahci-phy";
>              reg = <0x10 0x10>;
>              #phy-cells = <0>;
> -- 
> 2.25.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
