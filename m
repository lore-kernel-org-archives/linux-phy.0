Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36547C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 10 Mar 2022 21:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qPN8yEFsmS4TNILrWhJLa6gBk2o4wdU/O6IzaEHW80A=; b=zY1RVqeGmdS+FM
	yhU2jlqPWw07Lr7CzaQLV0wbZp2NIhgb4L3JQG2cUtP/vhJROPQobpG8ngpqIR0W+NdC/+zvdVRTQ
	r3hTzfpT/CH92LvrovnoJu7YH+EeWmV0Is8p1zqvlSmzCKxsvZdIs+6sOprXejrXNPX9DzevpLs+6
	x+CpDJ8sJPbaYcFtg+IBG3yZ4ninTrlXAQ+LW4Lyb3dBSj5UUIZcTBLZTd0/Bi81db6gpgRCeqtKF
	0Qp+vWBwAoh1Uce6vZmZ4aKNEv6k+Uto8ytpgE0eh/TfrVgbbbSeCgqjhWQajQf0vdR+tUY2EXWzA
	ztQFaSl2CxupOvOrLxOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSQCS-00E4QN-MB; Thu, 10 Mar 2022 21:19:56 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSQCP-00E4Pn-NM
 for linux-phy@lists.infradead.org; Thu, 10 Mar 2022 21:19:55 +0000
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 109103F1A8
 for <linux-phy@lists.infradead.org>; Thu, 10 Mar 2022 21:19:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1646947187;
 bh=9DmBnTPJmgfr8wJC4s2tQqC5+M2g/VQlbp1lfsPPtrg=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=TbYxkSGDGpB+9LWMIcVrg/bKxfcGPedih+1jROjbklTGSPGnT8HSP3sgc8bZ6/LkS
 rOyeRbCE4m31eogGMA8HknzxDE9ntuUwsfoqtUL4XLQR3K/uIlBPg8tJQqjgeWwPNg
 NFyle0JOpc7uViUfkSixVt881DBA2mfBmfIu2ZOr7wIyKO7hxXCEIN6RTqu/IEOMaa
 uiob7bceabyF7HlIlNWLngGVTisQgQIgJx5IPZExaKB6xe7jAh178Hv930En95ltg8
 lmxguayBsyolhw/kyqh5IY45ySP8KH4OJX3aF8QfVpRr7EYLuj2G9ythIqYZILjIl6
 8I+KsxVWG/vhg==
Received: by mail-ej1-f70.google.com with SMTP id
 13-20020a170906328d00b006982d0888a4so3758061ejw.9
 for <linux-phy@lists.infradead.org>; Thu, 10 Mar 2022 13:19:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=9DmBnTPJmgfr8wJC4s2tQqC5+M2g/VQlbp1lfsPPtrg=;
 b=kv76/zfpbMr44OlA+bRaaVDluGLnGqoMBE2F4LYTfrDS7OhtbJIx5fiybpjF6HyVlE
 tgw3I8svsGW0d7arRb4MY9hAq5LeaBA65JqFdxoW+iiDYcWIvzjmow6R7FPiFgyWrZ5U
 uDBjQHL2osyQr8KYIBhTbHIuuqf4+Vcm6yAmcIskngetFQryvi81r89G03amq47Kehsh
 3xvl1aqsxJFuyf481daeujpv4Xn3SCqSupPweeK2bu79fS7uacJOI2ZlLvI+DbfCmVMd
 BXb4QGSqJEDRc4cFsZYdDqEwlypKAOZdCRkeiV7xN5nUfI8yjOMhGTf1LCO/wlEMhN9q
 9PNw==
X-Gm-Message-State: AOAM531fjFOFhTP4scCVYF4IFG1Df4Xbk042Jg36cY6u9iMfISd4tEva
 FGmZAAIItZM3/av0ViBL9puvhybimKQg6pTZUhOJWXMmp5REiT/HQIVSH3LhvpJLu6+o2am3iWa
 TlaCXSjfWTl2vOgi3gQg27cw8wLWVGKrDkUmAhjREN0c=
X-Received: by 2002:a17:906:4108:b0:6db:867c:f3ab with SMTP id
 j8-20020a170906410800b006db867cf3abmr4064718ejk.708.1646947186745; 
 Thu, 10 Mar 2022 13:19:46 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwpPhoEYeMm5ZEZqUHmwNDHKl/pnXpf7yeFjdCLVUvg18iW5ZSftFmEY3A2p0wQ8bC7jpG3FA==
X-Received: by 2002:a17:906:4108:b0:6db:867c:f3ab with SMTP id
 j8-20020a170906410800b006db867cf3abmr4064700ejk.708.1646947186550; 
 Thu, 10 Mar 2022 13:19:46 -0800 (PST)
Received: from [192.168.0.147] (xdsl-188-155-174-239.adslplus.ch.
 [188.155.174.239]) by smtp.gmail.com with ESMTPSA id
 yy18-20020a170906dc1200b006d6e5c75029sm2114790ejb.187.2022.03.10.13.19.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Mar 2022 13:19:46 -0800 (PST)
Message-ID: <c5791ed0-1bde-3b55-1237-822111bd6251@canonical.com>
Date: Thu, 10 Mar 2022 22:19:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH net-next v3 2/8] dt-bindings: phy: add the "fsl, lynx-28g"
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
References: <20220310145200.3645763-1-ioana.ciornei@nxp.com>
 <20220310145200.3645763-3-ioana.ciornei@nxp.com>
 <a32fa8df-bd07-8040-41cd-92484420756d@canonical.com>
 <20220310173223.pl2asv55iqfmbasq@skbuf>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220310173223.pl2asv55iqfmbasq@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220310_131954_006637_D5E32D16 
X-CRM114-Status: GOOD (  26.53  )
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

On 10/03/2022 18:32, Ioana Ciornei wrote:
> On Thu, Mar 10, 2022 at 05:47:31PM +0100, Krzysztof Kozlowski wrote:
>> On 10/03/2022 15:51, Ioana Ciornei wrote:
>>> Describe the "fsl,lynx-28g" compatible used by the Lynx 28G SerDes PHY
>>> driver on Layerscape based SoCs.
>>
>> The message is a bit misleading, because it suggests you add only
>> compatible to existing bindings. Instead please look at the git log how
>> people usually describe it in subject and message.
> 
> Sure, I can change the title and commit message.
> 
>>> +patternProperties:
>>> +  '^phy@[0-9a-f]$':
>>> +    type: object
>>> +    properties:
>>> +      reg:
>>> +        description:
>>> +          Number of the SerDes lane.
>>> +        minimum: 0
>>> +        maximum: 7
>>> +
>>> +      "#phy-cells":
>>> +        const: 0
>>
>> Why do you need all these children? You just enumerated them, without
>> statuses, resources or any properties. This should be rather just index
>> of lynx-28g phy.
> 
> I am just describing each lane of the SerDes block so that each ethernet
> dts node references it directly.

Instead, phy user should reference phy device node and phy ID. Just like
we do for other providers (everything with #xxxxx-cells).

> Since I am new to the generic PHY infrastructure I was using the COMPHY
> for the Marvell MVEBU SoCs (phy-mvebu-comphy.txt) as a loose example.

I don't know it but it might not be the best example... Just because we
have already some solution it does not mean it is good. :)

> Each lane there is described as a different child node as well. The only
> difference from the COMPHY is that Lynx 28G does not need #phy-cells =
> <1> to reference the input port, we just use '#phy-cells = <0>' on each
> lane.
> 
> What is wrong with this approach? Or better, is there an easier way to
> do this?

Because the nodes look artificial. It looks like you have nodes only
differentiate by index. As I said before - there are no other properties
in these nodes.

Imagine now a clock provider with 500 clocks like this...

The easier approach, especially since you have a shared registers, is to
use phy-cells = 1, without artificial nodes just to pass the index.

It would be entirely different if you actually had any properties in the
children. IOW, if these were actually some blocks with their own
characteristics and programming model.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
