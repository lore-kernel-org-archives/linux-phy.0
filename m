Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42685CCD19A
	for <linux-phy@archiver.kernel.org>; Thu, 16 Oct 2025 11:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8fo/935Dl1255zcU4JpIIYtlm01nDkovdSJ/BaIj6nc=; b=Fy3a5x3l08vIje
	8Vl8M0g8dnQxoui6YICyP6Yohj4A4ci67OQVv8oeR0LOKr50FrV9JJvUk2ZWctc/m9kyEBz4E9W0+
	DEPu2TuyhF3vN7ez9aVJuhsmvFXmHbIVb/rlLXlbhhWrvLi3pRnY0lbAgXD4BA2VzVIIARDQpJFDE
	P9oPDqYNkHz4runpfZ5iwFvj5Uh8SdUZ7Yb2fsoDaSwknhNbCFzDIMsnWAb5ZTC/XMFXTDn0zdPAd
	LyTpCeXPtP0G7KMF3qhGqPV3Ydz4VRRmp8wklseSKd5pw1MwzTF6I/R61s5thPocIapMQBfkBfpf5
	UFsVzgEKMlnKidgq9QjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9MAW-00000004YmQ-2CPm;
	Thu, 16 Oct 2025 11:29:16 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9MAN-00000004YWT-2ncj;
	Thu, 16 Oct 2025 11:29:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1760614145;
	bh=meVRoYG3UJ+J+KN+THmukSY1/VzvJKSdiKKCyC9znBc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=K99N/Og5QhBDWgg2VgfBxPzGJjO8s22ZGanF4mZaOA3rCWpVWM+ZWV03dcCpcqf30
	 SYvRPNeLvEWBMRtvxPld55n3MSG/H+3GFTXnvZZMNLjKprXy/W3lu4x1Ddqjlv/OIs
	 k4bKh0qDQDtM6+KplNYYOgU63uJkm4moekdmpdjpuu5MEE3BwQKxhv3f6qQ5ZdPfYq
	 kVsg4i/zsDgr27QvYSlFrXDipcYb7xBYM97xyE1IgyRfYOKTIBdU7L1GJAnLx8fg2+
	 iOdw7ASfapEdBNIyLmqVDndjnfVEMYC6jSXDzhM6XSEOsKa1v6a3D83lWCDE/zCxLP
	 ISFTneqLneLrQ==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id DEFD617E156C;
	Thu, 16 Oct 2025 13:29:03 +0200 (CEST)
Message-ID: <e377ea24-b4af-4481-aea7-335808e5e375@collabora.com>
Date: Thu, 16 Oct 2025 13:29:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/15] dt-bindings: pci: mediatek-pcie-gen3: Add MT7981
 PCIe compatible
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
 <20251016-openwrt-one-network-v1-5-de259719b6f2@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20251016-openwrt-one-network-v1-5-de259719b6f2@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_042907_918432_BC21DE64 
X-CRM114-Status: UNSURE (   6.05  )
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
> Add compatible string for MediaTek MT7981 PCIe Gen3 controller.
> The MT7981 PCIe controller is compatible with the MT8192 PCIe
> controller.
> 
> Signed-off-by: Sjoerd Simons <sjoerd@collabora.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
