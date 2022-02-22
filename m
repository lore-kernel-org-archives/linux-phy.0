Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FAF2C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 22 Feb 2022 22:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vTr5Z7UnletgMcxWMAkyE1TFB6Hk8jtqzYaahJxn3o4=; b=4dVWPwilj5Yjr2
	WvoZgt8gC4wNYdKLa1KpZryyizowP7/OsQWnyKWNozjTRyN+8C0rbJx/y1JOZauNAd2Y7Fa7L1Xag
	5cWsDkB2FIXx2eEYnyFq6WWuCkawzvSP8RZWNIhbH2Go9EjvgFS7XxNyAX756rx6CJCqkBHDn5lyo
	4du99SvWOBIfrlGW+IzSwdcsKaQrp2ZJn+B9A8QsqbLWt858xufahJgCgKib7qtEvadT9Pg6aIi6C
	kK7nC/KvYXSLrEJY3yIEEfL1iEzjuXDSHIxzWBTefSZwc7EpnyxQ8KK7ryOdO9oiK7C+4VRkTdGP+
	R6AlyFazeWkWj80SHMNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMdGX-00BjGp-UR; Tue, 22 Feb 2022 22:04:13 +0000
Received: from mail-oi1-f180.google.com ([209.85.167.180])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMdGU-00BjEx-7M
 for linux-phy@lists.infradead.org; Tue, 22 Feb 2022 22:04:11 +0000
Received: by mail-oi1-f180.google.com with SMTP id z7so178541oid.4
 for <linux-phy@lists.infradead.org>; Tue, 22 Feb 2022 14:04:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZJIgkPazYMVFLLiCayOvQBp4dxbbz1/q0+2SKBUnq7o=;
 b=D4PgtQplf0MrG5Zifqjovdad1tgeOvlOBFchlZMk7WYgHYoyBw5eOxBgYPbpVi4J+Z
 g7PZqEwQJQy+a62EDTwd562FNgT+gTfnIewY5Z4ApHZmWgpBJxXTpPVG+hX0pWP95Dqx
 k5W4Wl1UPHLejj6KHyKmemsV7UtfxyMaT/ZrsQiaK70RUz0RhVag+ifefQUPTCVDfHpV
 arqZRuAOejC1plGuQmb3tQIDKNFSnWImqEl6Ep3Rs50aNqNQyYj5n4mVNuIajeqbmulS
 IjMCll7CdXr3qp1InZkaZmu5WfMsVC2KALsMez3p4TI2q6GQvb3NLSqAZySpcleZAiHq
 95xQ==
X-Gm-Message-State: AOAM530+oiLag4fgV1HxWEZd/Qc2arNnXbqNbrx+bJoYxBcVhftc+w71
 4+/1/LL54y2XgaasWxcGiQ==
X-Google-Smtp-Source: ABdhPJwf7/R5yUDTpF7lQ3A5JN4EudZmrZdxSkEYSXPIW6Turzd6Ou9niX+/eo46eJ+rqdMRs2APdQ==
X-Received: by 2002:aca:744:0:b0:2ce:ffcf:e794 with SMTP id
 65-20020aca0744000000b002ceffcfe794mr2976975oih.221.1645567447283; 
 Tue, 22 Feb 2022 14:04:07 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id u3sm30791518oao.25.2022.02.22.14.04.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Feb 2022 14:04:06 -0800 (PST)
Received: (nullmailer pid 3671561 invoked by uid 1000);
 Tue, 22 Feb 2022 22:04:05 -0000
Date: Tue, 22 Feb 2022 16:04:05 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Lee Jones <lee.jones@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org,
 Roger Quadros <rogerq@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH] dt-bindings: update Roger Quadros email
Message-ID: <YhVd1e8cGidb/T6P@robh.at.kernel.org>
References: <20220221100701.48593-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220221100701.48593-1-krzysztof.kozlowski@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220222_140410_286380_D0761FA7 
X-CRM114-Status: GOOD (  11.96  )
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

On Mon, 21 Feb 2022 11:07:01 +0100, Krzysztof Kozlowski wrote:
> Emails to Roger Quadros TI account bounce with:
>   550 Invalid recipient <rogerq@ti.com> (#5.1.1)
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> 
> ---
> 
> Roger,
> You should also add a mailmap entry for your inactive emails.
> 
> Best regards,
> Krzysztof
> ---
>  .../devicetree/bindings/mfd/ti,j721e-system-controller.yaml     | 2 +-
>  Documentation/devicetree/bindings/phy/ti,omap-usb2.yaml         | 2 +-
>  Documentation/devicetree/bindings/usb/ti,j721e-usb.yaml         | 2 +-
>  Documentation/devicetree/bindings/usb/ti,keystone-dwc3.yaml     | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
> 

Applied, thanks!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
