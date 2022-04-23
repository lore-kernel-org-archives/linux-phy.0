Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95520C433F5
	for <linux-phy@archiver.kernel.org>; Sat, 23 Apr 2022 11:25:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=geSVYLUl615smDIwZob/bwtm4mhykuZYYTBKHkV8ZJI=; b=3UnxyrurNTmdwS
	kY9MNYIGpQvVUEP1cwfULEWdYX9sTeAW4lkesq5kBbdCYuxU9UHZie5qN/qDVXiFcbfUqvhDY1pNl
	MThrSQnpzUoiFWbyfoaPmPYBFREUZW29/6qSSrRPouMOV9pqT7qTTPkmRNYUNC1EjGQ0Jt/1TAjkm
	sDlZv5RpUvqO095JgLoFtcVUOEzxwhv01ygCnbqq0wlgQEbtBb2NYKnPX6unZ+DaV/K73RieanRIk
	SMvsDoRMeOkynas9lDq7mCTttLsKy3vm3dXbIk7K680h94VXFMQ8wd93AMsKgBle3c9TZSP7J+BnN
	NCKdqoOyn9jHEH81QPkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niDt4-004GEG-W5; Sat, 23 Apr 2022 11:25:15 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niDt3-004GDo-6V
 for linux-phy@lists.infradead.org; Sat, 23 Apr 2022 11:25:14 +0000
Received: by mail-ej1-x636.google.com with SMTP id l7so20971947ejn.2
 for <linux-phy@lists.infradead.org>; Sat, 23 Apr 2022 04:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=b0QHbEfjhdFjBQohwIb3mVsJsYj7ByjobrCCQyighNY=;
 b=OWWWrhwA+sfgjaEEgSVqN+h+Zolso0GHgxGLbXaAmv/G+zvfsKo1V2V7wlW70jg1q6
 nG0T1MuhNxoirWsGTIdJieUZlPpgafXSDj0Z2tgroyjzhE03kXfYmTsuPr37vzAzt83Y
 hYCfppSyrak8z5DjQ3oDCWonqpdXuoLo5v0/o1Fwp0JKTgXHn1X6eR/Uc9uX48C8pBJd
 K5uyXXj71TnWF4CpnknbDshZy03N3q2nqoHRjmB5nxY15r6F8oLMwn3e5REiWTZqx6fz
 UH7ePgOFvqCcQ9ZdYReEXiSDiiE5eCsjWFEiul2g1Lre4bD63Xh6zFWeUIOujSu8QGIO
 xJBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=b0QHbEfjhdFjBQohwIb3mVsJsYj7ByjobrCCQyighNY=;
 b=IMBrFdfJfPNr+1h1m0+809B5QOYzrLxaBVAe78UFN9+j9zRT7N1uU3RiOmLcXD/FIj
 nLvRohx2jFp6TJadNsHCLe8A3N0kPg0DF8Ghn0/6oAe7+0Iop050LfZtsl2QX6OdUIdH
 tAmsWLRjUbF1UtKLmtx074ipgkbDPjVfXXz2i/svAVra+W0DtcbnJgh6NhPgE7+GP0TV
 RWYaw5ozcc/32jYskkdPcBA/d4gSXzXP/5RrCXG+CJ3jBn6+3Av1ffhL1rajYgwA7PwR
 8ebsmAJVGxXvxUrI058vzfUu/IIr7ntolYyUTY0nZrSebjAb4mnDb4Id4K9GUmT5Cdt0
 tH4w==
X-Gm-Message-State: AOAM533u/Wu81I+SUbt364DgNgvVRI49PJil/fEHrEryxSMaWZzdJNHl
 V3SOg7crIaVTW6TYh4Dug8pmFw==
X-Google-Smtp-Source: ABdhPJykneMY5JCtqucAvuVw5uFTMjnYXBQJbrUzg8v0zp5Q2N9doiRsAbkBlDcBP0r3mcI0+hg3sA==
X-Received: by 2002:a17:907:6d9f:b0:6f0:1077:eaf4 with SMTP id
 sb31-20020a1709076d9f00b006f01077eaf4mr8081863ejc.708.1650713111613; 
 Sat, 23 Apr 2022 04:25:11 -0700 (PDT)
Received: from [192.168.0.234] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 ay17-20020a170906d29100b006e88f246fdbsm1589880ejb.152.2022.04.23.04.25.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 23 Apr 2022 04:25:11 -0700 (PDT)
Message-ID: <0c4c5e9d-7222-69d3-1dea-1a499acf0f6c@linaro.org>
Date: Sat, 23 Apr 2022 13:25:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] dt-bindings: phy: marvell, armada-3700-utmi-host-phy: Fix
 incorrect compatible in example
Content-Language: en-US
To: Rob Herring <robh@kernel.org>, Miquel Raynal <miquel.raynal@bootlin.com>, 
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220422192054.2591093-1-robh@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220422192054.2591093-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220423_042513_287762_CBB2F199 
X-CRM114-Status: UNSURE (   8.51  )
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

On 22/04/2022 21:20, Rob Herring wrote:
> Fix the example using the incorrect compatible string.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/phy/marvell,armada-3700-utmi-phy.yaml   | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
