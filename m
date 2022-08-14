Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E310AC25B0D
	for <linux-phy@archiver.kernel.org>; Sun, 14 Aug 2022 21:11:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=23YNCv5MfLNFp5S8pok+kRLeIygBqvDA3iWRAlvkyKo=; b=CoQF/B8AEgSBvR
	nvwaGsjKjCKeoi+NI/siFmBt3jzms0sbANEMe4rKAootmijsZkKQoaftvuHbNwakxf6tI04zhwsiq
	VxyqaieWoDGMbh6E0ORAMdsAXyk76vB80tyEv02MAr/Yc5CdNxzbSYT9GtOqkNyBBo4mXxvxIVK5J
	CvvBp7JkrlvZQdYiewbsRYrlglRisrj27sbmQK2PX1LEZAGg98ldWrGbV6Gdj5Cq0zO0UqFLFGgCE
	suvjXNeBx8O6lzI94junZfx4lnmfmyJ/ObmNcWbOSVBnoao79D9dYthY5vxWtu4bJRKvbcCgsN1jt
	Fvbeij+FOLiQYTXaWzfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNKtN-009B6V-18; Sun, 14 Aug 2022 21:11:29 +0000
Received: from mail-ot1-f41.google.com ([209.85.210.41])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNKtK-009B5h-FH
	for linux-phy@lists.infradead.org; Sun, 14 Aug 2022 21:11:27 +0000
Received: by mail-ot1-f41.google.com with SMTP id q6-20020a05683033c600b0061d2f64df5dso4323291ott.13
        for <linux-phy@lists.infradead.org>; Sun, 14 Aug 2022 14:11:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=SNtxptsKRfjxSNBzwKDrbRbP+rVioeM6pMX342S2Bzo=;
        b=L4T6kAbPeR5RlIc1ha+dOL0EuSSfg4qPLOf+vTrG8VrH9xesl5vtof+aNblpgZibEf
         bw/vt+sqFhHUyWjIZEIM0OfUXBvtS+3v/dmfyPSk2EUP3Ayneep83v70xJ4XQU1Q7I+H
         pq7o5xeAvx8B0oZuItlduoWh+CNdvM2tFjPU7SR3/yqbahWe22DYgEspapJwdkfSnYKy
         LDbA2Q3am2VCc17yQuOJ+2XU4yeNlZYA9EfreMCdsS+8GpTzYsaZdJhxkX2FGjJ4QVu2
         4Cnd7k7s5OTOdlVydP20kYa8962kHHDkEb8mDDi510GOOXEkhF6P+nOaeGmsCcWCCS7W
         FuWA==
X-Gm-Message-State: ACgBeo39M4qKwBmtFcvTPId4yyyhxshnFb3es/C/TPiQHdi6Bzsf1PJb
	aDlXXZ3qsLybfIZFF0xIbQ==
X-Google-Smtp-Source: AA6agR4VVIBNTZCoEgw4V7rWL5Xl6HZTIc9xhHfD7yz058qiISTBRw/kvHeZmSjVqY9jQPet77fZmw==
X-Received: by 2002:a9d:748a:0:b0:637:2ef1:f3f3 with SMTP id t10-20020a9d748a000000b006372ef1f3f3mr4959581otk.90.1660511483711;
        Sun, 14 Aug 2022 14:11:23 -0700 (PDT)
Received: from robh.at.kernel.org ([172.58.176.57])
        by smtp.gmail.com with ESMTPSA id m15-20020a056870a10f00b000fb2aa6eef2sm1049682oae.32.2022.08.14.14.11.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Aug 2022 14:11:23 -0700 (PDT)
Received: (nullmailer pid 716555 invoked by uid 1000);
	Sun, 14 Aug 2022 21:11:04 -0000
Date: Sun, 14 Aug 2022 15:11:04 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH] dt-bindings: phy: Drop Pratyush Yadav
Message-ID: <20220814211104.GA716504-robh@kernel.org>
References: <20220811063840.7670-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220811063840.7670-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220814_141126_582504_1D80AD39 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
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

On Thu, 11 Aug 2022 09:38:40 +0300, Krzysztof Kozlowski wrote:
> Emails to Pratyush Yadav bounce ("550 Invalid recipient").
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml | 2 +-
>  Documentation/devicetree/bindings/phy/cdns,dphy.yaml    | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
