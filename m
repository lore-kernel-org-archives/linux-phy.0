Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEDEECCD194
	for <linux-phy@archiver.kernel.org>; Thu, 16 Oct 2025 11:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6U2I7AjjkPRLlFtMh4UmffPYaJpinZMUtbXBJujYAAE=; b=zkogWUEkflmv8T
	xhattRhz32sm3+BnFLIf26TX+VmckGGQyl/AtCggcT0Q2T0qU8vj9l6A5PdoJVcqHOfauheUVRRyc
	ZcBJ4fSmRDmDXW6HsX3IyvvADYBt3KTqSOhiCaxaEAmmyESuJAiRFzbybUqoG2J4SKql4a03c5adO
	8tS+MA4RhhHj0tlzeWLOAIp5pBp6zS+G70xxeW51s9gZn6OOh0DhFMg+UDAvaJZSENCo6VsKs4mvD
	exmq6gh77cv3bShHQ6KSr4UtrqRVjyEziv2CeCHWbGjFHffpvObYBz2JRa4DUPPIXWKmKmTLC/SEw
	Osgchs0pyJeiBfECwgEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9MAi-00000004Z29-2BFj;
	Thu, 16 Oct 2025 11:29:28 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9MAZ-00000004YnV-0uj5;
	Thu, 16 Oct 2025 11:29:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1760614156;
	bh=vYSjHgZ25Soj7KisfSjiupf26WUOJnIPXofKFhHkHg0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=p7y7p9OirtI4fNHdrp6+jlGQwEKwaR2L/RStB7/wHf03kCWiGds1junUfNeEnZchm
	 902OSjGoqwqTVymS54fHWelA+YV144OQH1h4z2Hub9Ulq3PdFCOZdqFEzxtqLqAqrm
	 HtVP2kO6uhU2XrKnqPDqOcufaNLDawVqY1493TgKrR9rCkTxvD01s4cxVCUoCUIjsM
	 Bs7h8ICVcBA52CYs2mA3oTwn3Q6nNqjT61LIuqqpBXPSktKwpFS6tQBp3vGkXyobjq
	 tDCUnw7b2COF0EQmaoUtOkm2WPjG1sml1FIANGDHKXHHkqTGB8OfI0ggC0E0U2X+Mv
	 84AAnAqOfcEnQ==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id AB85917E15C7;
	Thu, 16 Oct 2025 13:29:15 +0200 (CEST)
Message-ID: <ee5c232c-55b8-4ba7-bca6-639f8de76898@collabora.com>
Date: Thu, 16 Oct 2025 13:29:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/15] arm64: dts: mediatek: mt7981b-openwrt-one:
 Configure UART0 pinmux
To: Sjoerd Simons <sjoerd@collabora.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
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
 Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, netdev@vger.kernel.org,
 Daniel Golle <daniel@makrotopia.org>, Bryan Hinton <bryan@bryanhinton.com>
References: <20251016-openwrt-one-network-v1-0-de259719b6f2@collabora.com>
 <20251016-openwrt-one-network-v1-2-de259719b6f2@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20251016-openwrt-one-network-v1-2-de259719b6f2@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_042919_472023_48D7A2A6 
X-CRM114-Status: UNSURE (   5.09  )
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

Il 16/10/25 12:08, Sjoerd Simons ha scritto:
> Add explicit pinctrl configuration for UART0 on the OpenWrt One board,
> 
> Signed-off-by: Sjoerd Simons <sjoerd@collabora.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
