Return-Path: <SRS0=FSiF=NE=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59BFDC4338F
	for <linux-phy@archiver.kernel.org>; Fri, 13 Aug 2021 17:22:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F3EDC60F36
	for <linux-phy@archiver.kernel.org>; Fri, 13 Aug 2021 17:22:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org F3EDC60F36
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FHCBEnW6RsjBswa9rkJnkK5HUhwhoWr0t8lLkYnyeK4=; b=PyFJuz69gCvMAl
	2JRehrfSRot17C5nUPZt9OlzFsc3O5MW0a7C+xuDUIDTnBNYgheJH5o8rj8f49JJxAQCW1Mt36K7l
	dFU+rrkonkXHAbeiyMkIg6LKVC1639HGU94trApXehqcjgFTql/L32RMepc30qTNMYITMiDYj2EMZ
	MndObZnYJ3x9rsk9sIxkimw7rmfDGNkak9UyU160OTAxzbrjB12T8iKv4goPiV33TfCjhKDEq+3w7
	YhROocD8IncR5IRFOIa7mmPkkgWB2ULIKVq6irYuQWjIaR4GK99PwO574rowB2u2vpDpUftS50Cm8
	wmFiFgipa4j24MfRHQFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEatO-00DF7B-GG; Fri, 13 Aug 2021 17:22:50 +0000
Received: from mail-ot1-f46.google.com ([209.85.210.46])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEatB-00DF6F-OQ; Fri, 13 Aug 2021 17:22:39 +0000
Received: by mail-ot1-f46.google.com with SMTP id
 r16-20020a0568304190b02904f26cead745so12839913otu.10; 
 Fri, 13 Aug 2021 10:22:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Qtl1x9JJ0XKFoBsOFr6FS/aFXbYj3pnKTeinmcXne70=;
 b=P2NSjkT+tmRwqv+D62jr6lIHUp1VgkJkcnmL088WO+J2zSATIcFYqcJvSu7CKbWnPS
 tjuJmuZSe0sRUclLdlGrHgj3GQ/ACgY5Z/5LeHvnzucn/hunnK0HDmRgL2oyEpJ8CWM2
 c1KQ5r6SlNkd5dt1qkt2Xw8HHfiwZWcgkmJmtglOjF3Tmpo7L8Mw89qq5NzvUB35lxeb
 PD3WLVI0pIfANnPFwnjixdDCPdYCEgfRpeCM8ZhKwt9gGEKcXQdp7XGq32fAjSFewvnK
 iThaBHMt5ghVhumU1doExst5rjOqd2n513Tw7sXGc02r5sG0NAk92yn90kbr6/ad5ZH9
 kbZQ==
X-Gm-Message-State: AOAM533ZcZVyr/I5PF1dozYB3sFq0u2CButcDHc5vMzQMXYc+vvLEg+A
 Rsw4YFQwxZZ7fijdrmZ9pw==
X-Google-Smtp-Source: ABdhPJzY3LjdzZmYKwwt6RN5JSGv1PbqSVilzq53lfwv4e45NlgToI6abyIrp0oNLFt9px9/W8R+Fw==
X-Received: by 2002:a05:6830:30a8:: with SMTP id
 g8mr2982948ots.54.1628875356369; 
 Fri, 13 Aug 2021 10:22:36 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w13sm436611otl.41.2021.08.13.10.22.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Aug 2021 10:22:35 -0700 (PDT)
Received: (nullmailer pid 3706545 invoked by uid 1000);
 Fri, 13 Aug 2021 17:22:34 -0000
Date: Fri, 13 Aug 2021 12:22:34 -0500
From: Rob Herring <robh@kernel.org>
To: Baruch Siach <baruch@tkos.co.il>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Felipe Balbi <balbi@kernel.org>, Kathiravan T <kathirav@codeaurora.org>,
 Balaji Prakash J <bjagadee@codeaurora.org>, Jack Pham <jackp@codeaurora.org>,
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, linux-arm-msm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/6] dt-bindings: usb: dwc3: add reference clock period
Message-ID: <YRaqWtSK7zNhKxSN@robh.at.kernel.org>
References: <3d86f45004fe2fcbae0a2cd197df81a1fd076a1e.1628085910.git.baruch@tkos.co.il>
 <22f62c59471e128b681a731997a9416ab2e91acf.1628085910.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <22f62c59471e128b681a731997a9416ab2e91acf.1628085910.git.baruch@tkos.co.il>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_102237_842195_CCF47D7F 
X-CRM114-Status: GOOD (  16.19  )
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

On Wed, Aug 04, 2021 at 05:05:07PM +0300, Baruch Siach wrote:
> Document the snps,ref-clock-period property that describes reference
> clock period when it deviates from the default set value.
> 
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> ---
>  Documentation/devicetree/bindings/usb/snps,dwc3.yaml | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> index 41416fbd92aa..c8027d2852cd 100644
> --- a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> @@ -252,6 +252,15 @@ properties:
>      minimum: 0
>      maximum: 0x3f
>  
> +  snps,ref-clock-period:
> +    description:
> +      Value for REFCLKPER field of GUCTL register for post-silicon reference

Why is post-silicon relevant here? Everything upstream should be for 
post-silicon. I've seen and done the hacks to make pre-silicon testing 
work and we don't need those upstream.

> +      clock period in nanoseconds, when the hardware set default does not match

If you have units, then use property unit suffix in the name.

> +      the actual clock.
> +    $ref: /schemas/types.yaml#/definitions/uint32

And then you can drop the type.

However, if the h/w block gets a ref clock why isn't it described in 
'clocks' and then you can just read why the frequency is and calculate 
the period.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
