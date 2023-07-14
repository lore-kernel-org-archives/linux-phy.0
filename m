Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6DA5C0015E
	for <linux-phy@archiver.kernel.org>; Fri, 14 Jul 2023 14:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G0YkREJyorLX2nl7f5bFwZmD4log9xmsd15Bh9FUhBI=; b=lyr2xDQSyacXa3
	27m0Z7kVJINWZy8bEHfoFvkndsNOjeMTZ/DL0/RwOFpTsfcELT6zesKNZ2g7gCMhHpQLqEdNjD6r8
	mUBj76/zzSI9Z1stw41DN/dC8JgzBGfMfDaSj4rGTZHLIPZt2CKRtH/+Gy3RNOprxZEwBLMJ7iPO5
	JNN7cnq4s9vmqfi3VcbgOP1L63y0+tfKhNa6gdCf8L8iOj23SgHzP9N+0GqavwaIApR7X9KGCNF9Z
	LYRdOtPcRzI17WnhQMA/Ytn3LpT5uR5san/3aAmOw9I1xJ2bC7lMYIyd5uHCZuWTELG5E+TS7+2kE
	jd/DXzb+TnK0P6iP+/Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKJr4-006P2S-1U;
	Fri, 14 Jul 2023 14:33:10 +0000
Received: from mail-il1-f174.google.com ([209.85.166.174])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKJr1-006P1W-19
	for linux-phy@lists.infradead.org;
	Fri, 14 Jul 2023 14:33:08 +0000
Received: by mail-il1-f174.google.com with SMTP id e9e14a558f8ab-3476c902f2aso8305595ab.3
        for <linux-phy@lists.infradead.org>; Fri, 14 Jul 2023 07:33:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689345184; x=1691937184;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zf90yCWC/Qqdnr0SRBoZ5jMgO+4zIAgRXZgbEEN5z0k=;
        b=W3Y6qq+DHgUGjUI7yW2TMzi0BqH3BWRdkUOKKTjBomeRPyPX+AkHgBhKfk3s+8z5fr
         frn/5UfJ/F6KeZM2CzT7qTW4RddBx2oh65GxTW7Kozl+UcX8gGDMu9BoXyqUHU3XSgfW
         SZNr9WLJ6Aopnr0w9r2+arH886tmEOvzRye3ro0zAv4er4IyT+1hKs71qSIe9faARKQG
         rMFjPSNTAXe5cEqFtZuMQdbsfLFJ2krShNPETD8949iyPnT6UiYgfV14L8y7mVNiGag6
         ds8Ske7+soNeBLDDS+A1GjviEZeeZfca+vJ/qKoN7hJ1xhjnWMT5XfUdIZcsV5DwdtQV
         Yplg==
X-Gm-Message-State: ABy/qLZux6mmmZip2szy+wQATm5N28M1NGMmbqWI3OKd0lD2DaiyeALo
	BIJpIQzWBsnbg9IUYsIZaA==
X-Google-Smtp-Source: APBJJlG+Si+Ds9hRccCS0//Wm2Kl1639AFJzVjLprZtZCtSIorBGRW0ShYQ8I+sjmJMhcxfg1FSiJQ==
X-Received: by 2002:a92:1a52:0:b0:345:775f:1a2f with SMTP id z18-20020a921a52000000b00345775f1a2fmr4681914ill.14.1689345183884;
        Fri, 14 Jul 2023 07:33:03 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id f17-20020a056e0204d100b00345de23f6b6sm2759553ils.6.2023.07.14.07.33.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jul 2023 07:33:03 -0700 (PDT)
Received: (nullmailer pid 3488768 invoked by uid 1000);
	Fri, 14 Jul 2023 14:33:00 -0000
Date: Fri, 14 Jul 2023 08:33:00 -0600
From: Rob Herring <robh@kernel.org>
To: Stanley Chang <stanley_chang@realtek.com>
Cc: Rob Herring <robh+dt@kernel.org>, Ray Chi <raychi@google.com>, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, Matthias Kaehlcke <mka@chromium.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Roy Luo <royluo@google.com>, Vinod Koul <vkoul@kernel.org>, Flavio Suligoi <f.suligoi@asem.it>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Alan Stern <stern@rowland.harvard.edu>, linux-phy@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>
Subject: Re: [PATCH v7 4/5] dt-bindings: phy: realtek: Add Realtek DHC RTD
 SoC USB 2.0 PHY
Message-ID: <168934517988.3488706.6095305078054455561.robh@kernel.org>
References: <20230707064725.25291-1-stanley_chang@realtek.com>
 <20230707064725.25291-4-stanley_chang@realtek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230707064725.25291-4-stanley_chang@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230714_073307_397483_1CC74E00 
X-CRM114-Status: GOOD (  15.40  )
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


On Fri, 07 Jul 2023 14:47:03 +0800, Stanley Chang wrote:
> Document the USB PHY bindings for Realtek SoCs.
> Realtek DHC (digital home center) RTD SoCs support DWC3 XHCI USB
> controller and using USB 2.0 PHY transceiver.
> 
> Signed-off-by: Stanley Chang <stanley_chang@realtek.com>
> ---
> v6 to v7 change:
>     1. Revise the commit message
>     2. Change the property name for realtek,driving-level-compensate
>     3. Add if/then schema for specific properties
> v5 to v6 change:
>     Drop the redundant examples
>     Drop the label of example
> v4 to v5 change:
>     1. Add more examples.
>     2. Remove the compatible realtek,usb2phy.
>     3. Revise the descriptor of the property.
>     4. Add the default of the property.
> v3 to v4 change:
>     1. Remove the parameter and non hardware properties from dts.
>     2. Using the compatible data included the config and parameter
>        in driver.
> v2 to v3 change:
>     1. Broken down into two patches, one for each of USB 2 & 3.
>     2. Add more description about Realtek RTD SoCs architecture.
>     3. Removed parameter v1 support for simplification.
>     4. Revised the compatible name for fallback compatible.
>     5. Remove some properties that can be set in the driver.
> v1 to v2 change:
>     Add phy-cells for generic phy driver
> ---
>  .../bindings/phy/realtek,usb2phy.yaml         | 175 ++++++++++++++++++
>  1 file changed, 175 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/realtek,usb2phy.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
