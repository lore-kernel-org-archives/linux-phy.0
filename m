Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A87CCCD194
	for <linux-phy@archiver.kernel.org>; Thu, 16 Oct 2025 11:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zDyY5BWuD3/jv04vTnXpLYzviVc9XQuuGtAZfX7LNrU=; b=A8E7YQCnb7qx1w
	6BUGLApp73Qj/xNzET4w5QU4hFXjzeslBpWFhGooDehtqwYE2V8JdFSWeclFXIaBUsjeLYXESCtDu
	xA7H4WtAxVzlt9XMwYV9fF9t84gJlJ0UlPUe+eiyUlDfcrJIjw/ukfeNUkv0q5NQddLFxcPagQojB
	lvAcIiZ6EcuucZEF7iWrUYCOgAN2FpKxeY9xPCuH2/zMupS7w3eTqie9di+i8hRNgAnrOHrtsWKrL
	tTiubPM6DYRuvD4+hGzdGY14I4/7UW4pYOUjY1uLzkh4xA2+32RrxqKmfU8W2XuzfWPShJhpOO9FP
	T9kSQ6oK79sLCy2aQzfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9MAc-00000004Yt4-0BrM;
	Thu, 16 Oct 2025 11:29:22 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9MAO-00000004YYt-3zon;
	Thu, 16 Oct 2025 11:29:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1760614146;
	bh=9HPyWVyq0+7iqL7QJbdE8D9c9k0So1Fohg6NhLo9Mcw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=lf+Tz09xc7kEXHmpkh42UufTciqzLb0PUW1gpS+zSJ6UZr+C+emlFABuzku9FXY5m
	 S3Mg67hCW5hwCaljzWY1eFYgHv03XkqPvYMD/App21N1bEgzPfH17wtxd0tA7EDMq3
	 V0aFNS7RSj3d3oQr5hpnRXn663+Nxelex4U8v9P1FDvnfiiUEHrKhCcggcqQlXl7jg
	 /lqSlMbDvl3spaM4e3zLwO4CFZXYYLpaH0cmSBEmG3PlaNZg4hhbm6ZDkwX6O2KFCH
	 /HHHsu5xgqR+QPmCv4fRZhEZo/CEWxYS5BV5lUYGmT+sx5ivaPy89dnOLqXi0/UYcT
	 X1AWyxRULpz8w==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7E90117E1562;
	Thu, 16 Oct 2025 13:29:05 +0200 (CEST)
Message-ID: <4574975a-ea39-470f-a150-502526772ad8@collabora.com>
Date: Thu, 16 Oct 2025 13:29:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/15] dt-bindings: phy: mediatek,tphy: Add support for
 MT7981
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
 <20251016-openwrt-one-network-v1-6-de259719b6f2@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20251016-openwrt-one-network-v1-6-de259719b6f2@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_042909_187476_656A7A46 
X-CRM114-Status: UNSURE (   5.84  )
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
> Add a compatible string for Filogic 820, this chip integrates a MediaTek
> generic T-PHY version 2
> 
> Signed-off-by: Sjoerd Simons <sjoerd@collabora.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
