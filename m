Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02EB2C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 11 Mar 2022 13:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mw+9a9Iu2rZUeqxLsOMTydSlghNqFgQPB0v77l8Buf8=; b=2lkP/2trLv0WYj
	AepWAlSp24nGPo5SXOv4oEhvin0B9/Y0sYTpu9KaERgA2Nu8cKx3XeOgStytOQuZaLQLCys4PJ1j7
	Mt4K35tdex3sYHFiSoA44YJePXxk05jnkFrNULz19I4qs4igDkHrZTMx8QHnZvMm8WEj1r3wCPLcg
	w0cpz+UKs0gQoq6AuT//EMEde481MS1tTFOKDd3dPvTXOlfeE4cnSL7Gl6Z/H4bUABQxsmN+ITKZD
	PIoUtpQiV8z7K3iUbIrEZxpZsPyXvOilp/NoiwqS+Bfwowjp3ewkW6wHvmCZSo/GflixqAhm8lbYa
	4ukM5HuJKP9cGcE8Ko4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSf6q-00GTbr-Bn; Fri, 11 Mar 2022 13:15:08 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSf6o-00GTb7-HU
 for linux-phy@lists.infradead.org; Fri, 11 Mar 2022 13:15:07 +0000
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 3FB453F1E5
 for <linux-phy@lists.infradead.org>; Fri, 11 Mar 2022 13:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1647004505;
 bh=xOL5KCXZ0SGH69gklhacxZ/8cP5ta3EREGmzsgqE7XU=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=Oe4f95+eH4PrR5SMpUk5Ll+zqFjnhczEbW1h8AGZM6VDgJ2/J3QzFpqVkZTM7Wo3o
 JN4jy7IeG9J8xEp60vgkXYC8ECnRrMMsutPxPTf2BRj0KbxQqxqmEH+cAPzkuu1dmO
 /nQf5bkmv6D6mBkHRY8X8U03iJBaz4tpXgO2u6+3b5jl3+yyVTjsMo15TnSt+kY9ru
 0REY7UYsvubVWW0JyphgURKX1LGJOjfQzBGS5CpU/loHif+i0ebVzQq4HF8/WJrGmP
 DHEtiRUrSrOMCi31bxq14wQ3FKYcpGE1Y14FKWUsSnm2Ct9v8jmL7MoCTfIE9/bQfP
 iubJmQNtGfLEg==
Received: by mail-ed1-f72.google.com with SMTP id
 bq19-20020a056402215300b0040f276105a4so4861292edb.2
 for <linux-phy@lists.infradead.org>; Fri, 11 Mar 2022 05:15:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=xOL5KCXZ0SGH69gklhacxZ/8cP5ta3EREGmzsgqE7XU=;
 b=vStHlFzT1YirTS2VRulP1BJN6+8XWt0cl7VBGrIfTcfZMuRT+i/CO05cfT+zObt0NG
 eEnX4uzfSINkbUOZ/7zjIwjG5YId3pt0XKK8hOoyG0HPFZAYvICP/Nd+/Gy9pEQ1NAFc
 DJEwM1A0+HTIqLf2TX41nFT4bwIP7ukhUXddPvgwXfGKAHyIprSQ9VNWAkbeKnyjIwWj
 0y2IL61b1VWOb8P3vZm8oq4x4CkSGR3vmgi4oNm3LD2eniwHanNe/kKsK2Ht/FPqRyq1
 dzLcabMit2HcTC31tcSg6my1o+0IITnAgiRx1DgKxAPiaQxoTH2xBvjw8sJo64rXjn12
 UkiQ==
X-Gm-Message-State: AOAM533bMB/24R2aDc1KfyV9cI8Syi8q/HcqjI7qPS2joIOYWQqOdPaQ
 DsMBXaGiri9RSFP9sTxy+2YaboOyBX4gzlR9lyPhe0tqyBDx01KSSqeZs49Szp05p/JdmVzOFHb
 FiITR7vmX5u6PSffz6BjOdvEvE59KXVSy0JLT/QwMcIM=
X-Received: by 2002:a17:906:d29b:b0:6da:9e4d:bb7c with SMTP id
 ay27-20020a170906d29b00b006da9e4dbb7cmr8769365ejb.155.1647004504119; 
 Fri, 11 Mar 2022 05:15:04 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz5gVuyZQARyT4Ih8qZYzFfz39imMgrNy/pXVuj7BFtK1eQuAfgpviPhn6BRSfABhPjTA82iw==
X-Received: by 2002:a17:906:d29b:b0:6da:9e4d:bb7c with SMTP id
 ay27-20020a170906d29b00b006da9e4dbb7cmr8769338ejb.155.1647004503614; 
 Fri, 11 Mar 2022 05:15:03 -0800 (PST)
Received: from [192.168.0.148] (xdsl-188-155-174-239.adslplus.ch.
 [188.155.174.239]) by smtp.gmail.com with ESMTPSA id
 m26-20020a1709060d9a00b006da81fb9d72sm2917192eji.100.2022.03.11.05.15.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 11 Mar 2022 05:15:03 -0800 (PST)
Message-ID: <f0e07031-2f4d-0625-201b-f65fa69107a5@canonical.com>
Date: Fri, 11 Mar 2022 14:15:02 +0100
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
X-CRM114-CacheID: sfid-20220311_051506_750732_328DD09C 
X-CRM114-Status: GOOD (  11.23  )
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
> 
> Do you have in plan to look at any other patch? I am asking just so I
> know when to send a v4.
> 

No, I am just checking the bindings. Maybe wait a bit before sending v4
to give other people chance to review :)


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
