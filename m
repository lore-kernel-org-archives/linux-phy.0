Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6A89C38A02
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 19:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0DEpCguzsumsouNkS7TGITR4JYy9v7HbPijfTr+fiog=; b=V+t9Ga1cSv43w4
	BzgDKJm8Wqbz8WEnBPdIMYSEFNGWh/+b09eItq00CGHRbR3mkbw98jEB8ji81ZCY1W2NKRN5nMg4s
	N/LADlX+vSlc8buvaXEksWFAm/Q932LEgyNTjHQjTrZus01V7HVGm3gdzcYls/hu1SUi57kY4z7pl
	l85uKt/wKb+cZ9RLljERPYvujtyGhEtirCnoMyeFIjPcSLmsxDRk3GaHEBlArYuHyniT1OnnoZ+N1
	7mLeCXbeh3dsa1RQW513Lvp4hBXLk6Xvv2NxWb2NQ4H/YFSBXxG2RpjjONbvT85Zvrx69VRAuTdxn
	JjAIYgAQNqM4OCeHTEcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooV8r-001vNg-VY; Fri, 28 Oct 2022 19:35:45 +0000
Received: from mail-oi1-f170.google.com ([209.85.167.170])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooV8o-001vMf-Tu; Fri, 28 Oct 2022 19:35:44 +0000
Received: by mail-oi1-f170.google.com with SMTP id p127so7154187oih.9;
        Fri, 28 Oct 2022 12:35:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8taqJDtvUl86Drgh5fEgYjN4USVyEjdYeYqtilVVUAs=;
        b=TkXgL+hjTHwbdFBeZFr0E+HuyTJa1g9CA5RpB1QNiWK3M2HbxnvuhUIk0Ythkjn02e
         ev/ETu7M+1dFZxzW8dTdXUp2/4sgTUVy+fomJ6cgDl9DOGhsL5NOqXlTBKEcChcw1kGR
         ZQTca49JOCySxnLrJrqWPiel2lFPlG86OXOZAFQCBk15ZDslZmLvhaMauWTW/XUP/EUh
         nZuTWTvIjrkt+MDjfFlfQcNRU+0n6xItPOC/iQDhuqCru4wX/5xLGuVreHi5QqVE7Bb0
         O0rZgUex6mOnWBIM8vi41G3CgreFVJyBxP8V8zaWCKH9BVZFxMPgrTvgSjJiDgPnSwZF
         OOUQ==
X-Gm-Message-State: ACrzQf20jGK8Nq35QlXi4t1NL9BZ/UzEefL3eOaxrjOZ+4qolIaW69rg
	yNS5/swJ5r19DeFkxlMOuA==
X-Google-Smtp-Source: AMsMyM6Y9zExkyYtY64AW0IfA302F1WI9FzMoN/vCTIprGoOFxzrGGF1uk6seWK6mk7k3r4lw2QVxg==
X-Received: by 2002:a05:6808:d50:b0:355:4cd9:e6ca with SMTP id w16-20020a0568080d5000b003554cd9e6camr547665oik.160.1666985740445;
        Fri, 28 Oct 2022 12:35:40 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id 111-20020a9d0878000000b006605883eae6sm1991047oty.63.2022.10.28.12.35.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 12:35:39 -0700 (PDT)
Received: (nullmailer pid 2188330 invoked by uid 1000);
	Fri, 28 Oct 2022 19:35:41 -0000
Date: Fri, 28 Oct 2022 14:35:41 -0500
From: Rob Herring <robh@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Masami Hiramatsu <mhiramat@kernel.org>, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: Fix UniPhier USB3 controller node
 names in example
Message-ID: <20221028193541.GA2183248-robh@kernel.org>
References: <20221027044920.23194-1-hayashi.kunihiko@socionext.com>
 <20221027044920.23194-2-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221027044920.23194-2-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_123542_982563_61A45EFF 
X-CRM114-Status: GOOD (  16.39  )
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

On Thu, Oct 27, 2022 at 01:49:19PM +0900, Kunihiko Hayashi wrote:
> The word "glue" is ambiguous for the controller node name. Should put
> "usb-controller" instead of "usb-glue" on the controller node.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml  | 2 +-
>  .../devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml  | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Acked-by: Rob Herring <robh@kernel.org>

> 
> diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
> index 21e4414eea60..8ce57898fb96 100644
> --- a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
> @@ -146,7 +146,7 @@ additionalProperties: false
>  
>  examples:
>    - |
> -    usb-glue@65b00000 {
> +    usb-controller@65b00000 {
>          compatible = "socionext,uniphier-ld20-dwc3-glue", "simple-mfd";
>          #address-cells = <1>;
>          #size-cells = <1>;
> diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
> index 4c26d2d2303d..ba60b7add4f7 100644
> --- a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
> @@ -131,7 +131,7 @@ additionalProperties: false
>  
>  examples:
>    - |
> -    usb-glue@65b00000 {
> +    usb-controller@65b00000 {
>          compatible = "socionext,uniphier-ld20-dwc3-glue",
>                       "simple-mfd";

This and a bunch of other Socionext compatibles in examples throw 
warnings because there is not a schema for them:

Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.example.dtb:0:0: /example-0/usb-controller@65b00000: failed to match any schema with compatible: ['socionext,uniphier-ld20-dwc3-glue', 'simple-mfd']
Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.example.dtb:0:0: /example-0/usb-controller@65b00000: failed to match any schema with compatible: ['socionext,uniphier-ld20-dwc3-glue', 'simple-mfd']


The remaining warnings are preventing turning the warning on by default, 
so fixing them would be nice.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
