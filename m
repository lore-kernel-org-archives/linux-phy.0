Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06ADDC433F5
	for <linux-phy@archiver.kernel.org>; Fri, 11 Mar 2022 13:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D3ZWcPN98B/dSsUZcMRmIsfTSSBh/TXeZHp1s6gfQa0=; b=Aw+5WtH3HUIFOz
	P68lRTCp+lo2hjZrxNeNkpjMDcrbxBeSmZyQRpFGo4sbW3vfVlit9SAazUnwLDfyPFfQRwZ3HQX2i
	uH2MZFUhCCAaC8yMt68PB2qXP6BrnhCRM3MdYeZaK+XeQQ1kI8LmYRHCfUjkY4I6o4IPi7+TH1vhE
	39d22aIN/aazSNfVPnQ7mx8G3f2kgUpobbUZlmdig9otPx/4dfLv4CKDvLS+ScGNwsq6LcmdD5Mb/
	mkrRzVSACE0A/EgBIqDsv+L6wp68xLnPXH6JilRLzJl/BoILOWVw5yE2W1oDU9JWHJgy9rSIvZC6e
	JEZx3SKHN4FbMFfPy3Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSf7A-00GTfv-Gm; Fri, 11 Mar 2022 13:15:28 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSf77-00GTer-Ps
 for linux-phy@lists.infradead.org; Fri, 11 Mar 2022 13:15:27 +0000
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id D0DC63F60F
 for <linux-phy@lists.infradead.org>; Fri, 11 Mar 2022 13:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1647004523;
 bh=TN0/6qCY/tJQXZh6cFY1jeGVIfLosWp/aDkoemInbFs=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=lavVCKjyr1uU5ETjMKKQVZpIMUbv7UtnT1MtQX21YPWVOLfV6KkmITYDZBIkvKLII
 nW64LWWQ+9I2zgp6mCntXTFKD3bnK0hFh8uQ4HHpWidthjplSNf/khbg5NagTF2Hpp
 41JhB5FKbXKbs0LSSYO7+gIYJWtOmPjwbSJ0D7mjWNbXhhV6tg0N+R0K/uXOMRk0e5
 8WS6P2dV+uWEe5RqN80Cme7oigDlYbPdAaz4HIapuqbt1MkM6PK9f6d3KJGopY/V/y
 H/c6Sq1oX1N5y6hecLxjt/JVpWvNAiHlrRt9K1EzAyad4Iy7Vo9hvTbXUapTlJ9Slx
 A4vi2/wK9y7ag==
Received: by mail-ed1-f72.google.com with SMTP id
 s7-20020a508dc7000000b0040f29ccd65aso4858972edh.1
 for <linux-phy@lists.infradead.org>; Fri, 11 Mar 2022 05:15:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=TN0/6qCY/tJQXZh6cFY1jeGVIfLosWp/aDkoemInbFs=;
 b=XkRAI/1nCptRaeKITc5dteqU86X8t8C1OYoH0GWsE/tWgN1nSX0EV4gh/rStvOeZbY
 6mzF0PhLDXVYd9E9rbR/2JVZR1Wsqfun3ctEpoQM/TB4/QqT8RFwrlwYadOSwDTzRUPO
 WIqu9E2oMuA4GzOz/CPS6YdyVSFdaaUz6CTI8cKCIC32ufGn2WmCbm+I7zl/xcJEPUQc
 8fEo/nPvooiZ+4NM9cH4gK6L4pDA5Vgbcj1zFQ7fMEdlIDD9ElC0QlgnkM2Q9hbSZqZU
 UmAFFHaNPbPp7UJ0qEla71higwYCrup08hPJmRX/jArwNnH46pjRGfRulSce2woJWsTf
 PKFg==
X-Gm-Message-State: AOAM533P5agMcoInQYedWFv/QkNt+sY+QjIL1lKVDDa9l79wtvHaKgGL
 A9L8sNwjzQXm2nFjNk0hRBEB64t+0spdJJ6Lg1Okw+MfzStxG3zSoyTU1WBHlfW8edIze9Ll8eL
 rkTnH8n/kC8/yilQxz5YLCDGM1/MFVILocwylg1ed5JY=
X-Received: by 2002:a17:906:3ec7:b0:6d6:e52b:b with SMTP id
 d7-20020a1709063ec700b006d6e52b000bmr8280066ejj.521.1647004523287; 
 Fri, 11 Mar 2022 05:15:23 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxi3gklXV/fUKCMh5Si2xnpWTXW2rKNoLHSWBdSlOw8X+knNmCFTl0zQOg4mxoJY2xxUJgSfg==
X-Received: by 2002:a17:906:3ec7:b0:6d6:e52b:b with SMTP id
 d7-20020a1709063ec700b006d6e52b000bmr8280045ejj.521.1647004523117; 
 Fri, 11 Mar 2022 05:15:23 -0800 (PST)
Received: from [192.168.0.148] (xdsl-188-155-174-239.adslplus.ch.
 [188.155.174.239]) by smtp.gmail.com with ESMTPSA id
 w19-20020a05640234d300b00416baf4cdcasm1890685edc.48.2022.03.11.05.15.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 11 Mar 2022 05:15:22 -0800 (PST)
Message-ID: <388e0ded-57ed-27bd-ae05-b18b943fbc32@canonical.com>
Date: Fri, 11 Mar 2022 14:15:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH net-next v4 2/8] dt-bindings: phy: add the "fsl, lynx-28g"
 compatible
Content-Language: en-US
To: Ioana Ciornei <ioana.ciornei@nxp.com>
Cc: "davem@davemloft.net" <davem@davemloft.net>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kishon@ti.com" <kishon@ti.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Leo Li <leoyang.li@nxp.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 Hongxing Zhu <hongxing.zhu@nxp.com>
References: <20220311125437.3854483-1-ioana.ciornei@nxp.com>
 <20220311125437.3854483-3-ioana.ciornei@nxp.com>
 <f782bf45-3a69-18b4-de0b-f53669aec546@canonical.com>
 <20220311131324.uzayrpnp2mifox23@skbuf>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220311131324.uzayrpnp2mifox23@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220311_051526_012625_5CCCF3C5 
X-CRM114-Status: UNSURE (   9.06  )
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

On 11/03/2022 14:13, Ioana Ciornei wrote:
> On Fri, Mar 11, 2022 at 02:09:05PM +0100, Krzysztof Kozlowski wrote:
>> On 11/03/2022 13:54, Ioana Ciornei wrote:
>>> +examples:
>>> +  - |
>>> +    soc {
>>> +      #address-cells = <2>;
>>> +      #size-cells = <2>;
>>> +      serdes_1: serdes_phy@1ea0000 {
>>
>> Comment from v3 still unresolved. Rest looks good.
> 
> Uhhh, I forgot to change the name. Sorry.

With the node name "phy":

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
