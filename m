Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBE9FC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 30 Nov 2021 14:02:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E96xKhZkCLPpYhZmUddVF2IQ0HyuwabloCPc9xj1P3Q=; b=AgNI0UCfbLSAdj
	7X9NBlW0+KM/RILJy2Q7Agq5mwjlXluef12lgCYjn2pdxYzVD/LORDF6ZgX/rcTCRijRxg4xKejt1
	PF8bHfBAFGHNGL184yIScyLD9jEFZfABim211H0L4+/8RY4K9efCTjKT+orvNsAryxRQQnbxUEyfX
	s+HHaUnCgopnHSYjoK7AemsFmxXcbznc3vxzy0FENnIFn4CoVVo1OJklKyGm5ZW+Fng6x+kfGjIWP
	tEarTxeGDpRNkCjK/1bsINMkZbnTUBsuU9beMM4iGTidrNFuItigQlJ2768lLp1T29Fkym8TTSSH8
	9FHHVfa7Dww9cpn2Zgtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ms3iG-005TKp-8w; Tue, 30 Nov 2021 14:02:28 +0000
Received: from mail-vk1-f171.google.com ([209.85.221.171])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ms3iD-005TJO-I5
 for linux-phy@lists.infradead.org; Tue, 30 Nov 2021 14:02:27 +0000
Received: by mail-vk1-f171.google.com with SMTP id 84so13653159vkc.6
 for <linux-phy@lists.infradead.org>; Tue, 30 Nov 2021 06:02:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YELocWE3VFiRMQlYvTN83nPr/FHXo//o82fezKUForE=;
 b=FnqhiVc9Dap6vR1bOxzib6Vw/vokJvLDI9aHUEvNdBMOQ9bIGQJghC5uWIXLMo02aR
 BX2CKgIkhlAmhxl/UKzKuda5tDo7vufhNrV7LNJsKG6shK07p96aiC+UsZL066AkYShy
 7hqVBdrI6OuPbNhFdhxzIEj0EG+tgm4BSzMXxjtCSHUg4XWiOjM7xLuTYxXgIEuw3cRW
 cwD67ZuG0M+VnpFK76oKcAI35BkH0vrrDHi1M/v+d539gnwCkSqjemrYXytzXdC7R1XI
 9INR2lWzcAH84TFaw0RIKBGSRYT3eNphwGU7NQbJ9khpFxIIvC3XrPHJ4q4fJUARQfkR
 hsvw==
X-Gm-Message-State: AOAM532l7at+N7Sr9Kzp3nBVIjU5T8lpE8v4Xkj61c6jVoSTf56+UT1V
 GlR4axrnGmpdO30x/Yc3gpG7XsauwPo1nA==
X-Google-Smtp-Source: ABdhPJxgWhfDRm/Fa7xIFZGY0iq6zOinwLqIIxMz6jWBW1k82HoNOfhRwuc8jLiNTVMRSazytZhLZw==
X-Received: by 2002:a1f:9803:: with SMTP id a3mr44385050vke.6.1638280943280;
 Tue, 30 Nov 2021 06:02:23 -0800 (PST)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com.
 [209.85.222.50])
 by smtp.gmail.com with ESMTPSA id y22sm10192079vsy.33.2021.11.30.06.02.22
 for <linux-phy@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 30 Nov 2021 06:02:22 -0800 (PST)
Received: by mail-ua1-f50.google.com with SMTP id j14so41458550uan.10
 for <linux-phy@lists.infradead.org>; Tue, 30 Nov 2021 06:02:22 -0800 (PST)
X-Received: by 2002:a05:6102:21dc:: with SMTP id
 r28mr18445880vsg.57.1638280941859; 
 Tue, 30 Nov 2021 06:02:21 -0800 (PST)
MIME-Version: 1.0
References: <20211116100818.1615762-1-horatiu.vultur@microchip.com>
 <20211116100818.1615762-2-horatiu.vultur@microchip.com>
In-Reply-To: <20211116100818.1615762-2-horatiu.vultur@microchip.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 30 Nov 2021 15:02:10 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUkr3n-m8dadyzb=s7F9ns6PXMLgOkZaG=XTYNKnaaORg@mail.gmail.com>
Message-ID: <CAMuHMdUkr3n-m8dadyzb=s7F9ns6PXMLgOkZaG=XTYNKnaaORg@mail.gmail.com>
Subject: Re: [PATCH resend v4 1/3] dt-bindings: phy: Add lan966x-serdes binding
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, 
 Andrew Lunn <andrew@lunn.ch>, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jakub Kicinski <kuba@kernel.org>, linux-phy@lists.infradead.org, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_060225_622781_13DE13FD 
X-CRM114-Status: GOOD (  17.94  )
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

Hi Horatio,

On Tue, Nov 16, 2021 at 11:16 AM Horatiu Vultur
<horatiu.vultur@microchip.com> wrote:
> Document the lan966x ethernet serdes phy driver bindings.
>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>

Thanks for your patch, which is now commit fd66e57e46a3d1b7
("dt-bindings: phy: Add lan966x-serdes binding") in phy/next.

> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.yaml

> +examples:
> +  - |
> +    serdes: serdes@e2004010 {
> +      compatible = "microchip,lan966x-serdes";
> +      reg = <0xe202c000 0x9c>, <0xe2004010 0x4>;
> +      #phy-cells = <2>;
> +    };

So this overlaps with the switch registers, cfr.
Documentation/devicetree/bindings/net/microchip,lan966x-switch.yaml
in net-next/master?

    switch: switch@e0000000 {
      compatible = "microchip,lan966x-switch";
      reg =  <0xe0000000 0x0100000>,
             <0xe2000000 0x0800000>;
      ...
    };

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
