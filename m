Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E083CF856E
	for <linux-phy@archiver.kernel.org>; Thu, 20 Nov 2025 15:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jIpfYvUmDIuAh3RXhi3wls8uUMU1xXj410hBJzCasJQ=; b=Rcki12JyKZZUTF
	bgfArjDzEH42NtUSYAhrVly1vj7wGzkGJuswrT1kY+V4Ke9aDyZdivSlkqKJsPRcc0HppN3qL4v9t
	gGX6oNm0Z6ae2jDVJjQY0ixmlKe5sxMfBOo5dKjZNwN1QWoU4z+nXMBbY7DGFO4pe8wnk3/GTdZbJ
	ZAGY1PXOsCNi2Ba/jRZS+4e/hvZ1jtUEuOCcj+fX5ZLN+yFovpg1+eL40zFYXHcquTApsC7CNOWJS
	wXLMhv1sGPqxERf6UwFb1Fbn5xkKPYZp9Spa7bVQg7UISk4uCFANZNww1FQWSNDa1m5NxWeoZcG4k
	U3PZNSIK4EioMVY8idvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM6uH-00000006wmx-3caC;
	Thu, 20 Nov 2025 15:49:13 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM6uE-00000006wly-03Rd;
	Thu, 20 Nov 2025 15:49:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1763653746;
	bh=OGknm9RlxOFdzEIgb0Da240Rs6WBRlFklz56cuT5Dzk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=gV64s3dwXmsMljMFBMmBoJ42qjeQHC9N24uo4ZJBqIEkncBs9YZXB3Nd/kXGyszun
	 cm4zlyod0+P0iSdP1dCBdCUTY42rOJion/yFnsZwmkuHNx+VYW7DBrqo5ZHquHNID6
	 FifqKimupbrrs1I4KNwohZ+bAsUGTl7wB0XvPuyp7oduEP7EZidkBPhcvynK4Jae9R
	 MEiMCGtTaHjUeUUYPVB82jBif+IKIBRcz983UGyNtCXwgqQ8SdswlR7WDMO4fZil6L
	 MHzyDi/jcqAjXOA/1lPwBPBGZEZypMtTkr5UCNkwFamiPZfzU+i7kGIwM6vryl9fYq
	 sEfCDzFUZbGUg==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id CD10C17E0117;
	Thu, 20 Nov 2025 16:49:04 +0100 (CET)
Message-ID: <c23d5d1e-4816-41c7-9886-41d586c84cc6@collabora.com>
Date: Thu, 20 Nov 2025 16:49:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 00/11] arm64: dts: mediatek: Add Openwrt One AP
 functionality
To: Jakub Kicinski <kuba@kernel.org>, Lee Jones <lee@kernel.org>,
 Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: patchwork-bot+netdevbpf@kernel.org, Sjoerd Simons <sjoerd@collabora.com>,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 matthias.bgg@gmail.com, ryder.lee@mediatek.com, jianjun.wang@mediatek.com,
 bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org,
 mani@kernel.org, chunfeng.yun@mediatek.com, vkoul@kernel.org,
 kishon@kernel.org, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, lorenzo@kernel.org, nbd@nbd.name,
 kernel@collabora.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, netdev@vger.kernel.org,
 daniel@makrotopia.org, bryan@bryanhinton.com, conor.dooley@microchip.com
References: <20251115-openwrt-one-network-v4-0-48cbda2969ac@collabora.com>
 <176360700676.1051457.11874224265724256534.git-patchwork-notify@kernel.org>
 <20251120152829.GH661940@google.com> <20251120073639.3fd7cc7c@kernel.org>
 <20251120154012.GJ661940@google.com> <20251120074457.5aa06d89@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20251120074457.5aa06d89@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251120_074910_243625_7C9F4605 
X-CRM114-Status: UNSURE (   9.67  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Il 20/11/25 16:44, Jakub Kicinski ha scritto:
> On Thu, 20 Nov 2025 15:40:12 +0000 Lee Jones wrote:
>>>>>    - [v4,02/11] dt-bindings: PCI: mediatek-gen3: Add MT7981 PCIe compatible
>>>>>      (no matching commit)
>>>>>    - [v4,03/11] dt-bindings: phy: mediatek,tphy: Add support for MT7981
>>>>>      (no matching commit)
>>>>>    - [v4,04/11] arm64: dts: mediatek: mt7981b: Add PCIe and USB support
>>>>>      (no matching commit)
>>>>>    - [v4,05/11] arm64: dts: mediatek: mt7981b-openwrt-one: Enable PCIe and USB
>>>>>      (no matching commit)
>>>>>    - [v4,06/11] dt-bindings: net: mediatek,net: Correct bindings for MT7981
>>>>>      https://git.kernel.org/netdev/net-next/c/bc41fbbf6faa
>>>>>    - [v4,07/11] arm64: dts: mediatek: mt7981b: Add Ethernet and WiFi offload support
>>>>>      (no matching commit)
>>>>>    - [v4,08/11] arm64: dts: mediatek: mt7981b-openwrt-one: Enable Ethernet
>>>>>      (no matching commit)
>>>>>    - [v4,09/11] arm64: dts: mediatek: mt7981b: Disable wifi by default
>>>>>      (no matching commit)
>>>>>    - [v4,10/11] arm64: dts: mediatek: mt7981b: Add wifi memory region
>>>>>      (no matching commit)
>>>>>    - [v4,11/11] arm64: dts: mediatek: mt7981b-openwrt-one: Enable wifi
>>>>>      (no matching commit)
>>
>> This is a very odd way of presenting that one patch from the set was merged.
>>
>> Not sure I've seen this before.  Is it new?
>>
>> It's very confusing.  Is it a core PW thing and / or can it be configured?
> 
> It's k.org infra bot. Konstantin, would it be possible to highlight
> more that a series is partially applied?

I guess that adding "(subset)" like b4 does would improve those messages quite
a lot ;-)

Cheers,
Angelo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
