Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11548CCD1BF
	for <linux-phy@archiver.kernel.org>; Tue, 28 Oct 2025 11:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=grVsZIJikhafXKPQyaQxCMm8RasHStG3oWsDosKcc/g=; b=dzh3ynxFso7/gA
	n9eSL1ITXlCB+3mC8wOUgGv+JJcg3/2UltZFJaYU+U5NTOsKLwa/VPa4be84S9dGJqUs0bI2H2Qe+
	Iqdacv6ixLxnpopbgH/w6zDPVkK0GUtoQBZ1Dqn31mS+TZvypyA6t6UbDG8H66MKfUbGi4c5sfJ3P
	DywEpRMoZi163RASfs39wmZzDiPuwZs5H8ikzGya6Q9faLDNvxx53+MnWZCFIjdDw4QS3JI0/bAqE
	ez3DeIqooVcJhU4Y7SwQn6yktppiaxnogW1zXcVa/rsyNavUoDyIS/nmJHXCoGMsxT75PfsPyFnB2
	nNwTm1WVztq4DYdkDZUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDhej-0000000FpNl-2gPq;
	Tue, 28 Oct 2025 11:14:25 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDheg-0000000FpMM-1xBP
	for linux-phy@lists.infradead.org;
	Tue, 28 Oct 2025 11:14:24 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-b4aed12cea3so734733066b.1
        for <linux-phy@lists.infradead.org>; Tue, 28 Oct 2025 04:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761650060; x=1762254860; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YjFpI9BYeJIGawQior8vsJoD7SmwJll5ZNIMlbkQNe0=;
        b=D5w23G0qbK1ZR4EQQ7ftA/efD33EO05BkwtmHT4hARdzB81kGtKTTRzedXeVp767zo
         xuhnr9Y/w6lFTa4gUomIxICzzsZM4z7ip8tED/MKCkMduDAIHLzYd+PTGHlFk/LjHMBQ
         gtOILzhX9wYaf26kpf+MR0ihuMfnvreBCATEszK2eUUaOda5YKrYDLoNCVVoSyfLVkGL
         eSyRiOlbogqN6GV4R6ilhfrN3GxnCRFF5L4fS07ABj3GeJHChprSt3C0gkLF1YgOruzp
         fBVciqjXkObPq8aEl7/9zQHxHUFGYtjhFlv/ai3ps/7NlpnN+YiLE40B/tKfkPep385+
         8/ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761650060; x=1762254860;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YjFpI9BYeJIGawQior8vsJoD7SmwJll5ZNIMlbkQNe0=;
        b=Jyd6Ge3AYHsF0yYIV4R8mCOXhJ4fc0Cf65uhThwBxa7D1ZXOA90+RS1/xSeHOO6Awl
         rI2YGLDifRvDBburn4RAovCM/mhIT6NMdajv2kBqbm0++74apJLWJ8j1pBhkDmzIwNPF
         ituKA9SbHq54OuqyskfMmyWMnxN59I+XupF/dCdNphsjy/TV4lL98pDle+Ckxo/Cocps
         cNoyKp9/cj93v90Gs/TcdAzZRvp/SwOhngpjU0GzrzwgYPVYxNr0VYsnTocX95rIv71y
         zTHfnfZdYu7kR3yxvO1OudLwlLXJGpmuqLyF3g5Pbz4zJN9XLLQ37sU5F7QhCT98z0zk
         13YQ==
X-Forwarded-Encrypted: i=1; AJvYcCVFfvWHbAqJiWZXS+qHAhtwv+7mfO7d7Db87rlaRKEk8BmEx+52Ki4XrIZgjeR8ggCDc6bRhvBRZ8I=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz9Z0C1hoeYGEuU9lDjInpECyblBVHtqKgRSatN2tqqb7CcFvZP
	oNoC8PVt56ArqaQx/eM5t3UGPyJkCRjxrzsqrV+jW3mgpQrQxWPd/LDK
X-Gm-Gg: ASbGncuwlgi2bKqT9cQujxjfP2Id5moNErNd2zXRSLR1YxyPyeHP205wUJ0znRlM/1Y
	EepDFeUccZVFtAb82BaU8dF3DQ93Ddk9iDzfOLx3Q3TWYBHwPs3ajmFep3HfgboIZfWtYkJGw8T
	1iVpclFtqBcQ5PdoGKtDm4oJEfO7Q8fz7SJjBty29MU9E4jzkRokIeGvYh1/go0Hi4JIZF+9tPj
	fLo1ZIbpCZ4BU/8S6nhIt6UI1VqyeueooCBeMjmnVvcPT6x/KLJP51ITEliBeoW1f/gaZAOJ60e
	FN4aozV7hRXOYSGP6XxlPu44MBHM5vIMO/Gne4QQzWiK8nyOvoCz4EIs/yDgUtjLwDmnLLWbacD
	LLXC4Qi/ro/RCaIB8mqzypaKw7xFmLIc3nZKpf72tjiw49lmh4sACb/lu6sYOQbFaD1ClTLRJM8
	vKfjLsAWreM1/RVlIS46nTZVTAkcqQDUQqm6iTyXVfP7z+BVsKmhz7nFV9pcfuR7O+bPK1UtdPR
	J6ChoDqfotx0M0lwoT40wHL03peb/vya1Cikg3MJCH68dlOAuaftQ==
X-Google-Smtp-Source: AGHT+IGFhB1uFC3jfUFSa2Q1GaChneZzYP9rrCvUKq1g/2kn74sMQ9tiDca6CquKILqpFbpXF/Q/Kg==
X-Received: by 2002:a17:907:7f0a:b0:b4a:ed12:ce51 with SMTP id a640c23a62f3a-b6dba498fe6mr339684266b.23.1761650059938;
        Tue, 28 Oct 2025 04:14:19 -0700 (PDT)
Received: from ?IPV6:2001:1c00:20d:1300:1b1c:4449:176a:89ea? (2001-1c00-020d-1300-1b1c-4449-176a-89ea.cable.dynamic.v6.ziggo.nl. [2001:1c00:20d:1300:1b1c:4449:176a:89ea])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d853077ddsm1052436566b.11.2025.10.28.04.14.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Oct 2025 04:14:19 -0700 (PDT)
Message-ID: <05610ae5-4a8a-47e9-808b-7ff98fade78e@gmail.com>
Date: Tue, 28 Oct 2025 12:14:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/15] arm64: dts: mediatek: mt7981b-openwrt-one: Enable
 Ethernet
To: Sjoerd Simons <sjoerd@collabora.com>, Andrew Lunn <andrew@lunn.ch>,
 "Lucien.Jheng" <lucienzx159@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Ryder Lee <ryder.lee@mediatek.com>, Jianjun Wang
 <jianjun.wang@mediatek.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Lee Jones <lee@kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>,
 kernel@collabora.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, netdev@vger.kernel.org,
 Daniel Golle <daniel@makrotopia.org>, Bryan Hinton <bryan@bryanhinton.com>
References: <20251016-openwrt-one-network-v1-0-de259719b6f2@collabora.com>
 <20251016-openwrt-one-network-v1-12-de259719b6f2@collabora.com>
 <4f82aa17-1bf8-4d72-bc1f-b32f364e1cf6@lunn.ch>
 <8f5335a703905dea9d8d0c1840862a3478da1ca7.camel@collabora.com>
From: Eric Woudstra <ericwouds@gmail.com>
Content-Language: en-US
In-Reply-To: <8f5335a703905dea9d8d0c1840862a3478da1ca7.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_041422_521533_DFEC4DA5 
X-CRM114-Status: GOOD (  11.93  )
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



On 10/21/25 10:21 PM, Sjoerd Simons wrote:
> On Fri, 2025-10-17 at 19:31 +0200, Andrew Lunn wrote:
>>> +&mdio_bus {
>>> +	phy15: ethernet-phy@f {
>>> +		compatible = "ethernet-phy-id03a2.a411";
>>> +		reg = <0xf>;
>>> +		interrupt-parent = <&pio>;
>>> +		interrupts = <38 IRQ_TYPE_EDGE_FALLING>;
>>
>> This is probably wrong. PHY interrupts are generally level, not edge.
> 
> Sadly i can't find a datasheet for the PHY, so can't really validate that easily. Maybe Eric can
> comment here as the author of the relevant PHY driver.
> 
> I'd note that the mt7986a-bananapi-bpi-r3-mini dts has the same setup for this PHY, however that's
> ofcourse not authoritative.
> 

Lucien would have access to the correct information about the interrupt.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
