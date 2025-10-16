Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B16CCCD194
	for <linux-phy@archiver.kernel.org>; Thu, 16 Oct 2025 11:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RlU8XTDLTTXa2790hFpClxheUjJN5fhjs0Qnvo+U5SQ=; b=Vrv08Mkh8Oymwk
	JMjLsKxE+PNsTuSI0RaBA/6qZcCVNWMHEfTTStqeuwbIPHe66AbbdmLIpeomP5eSnHr8Z6046fo8x
	L76EizSOYVtwYQZYPBChprcpiXDlL4WNZ/LOsiXuW9zxRst1LdMEgFhP2HgXOLPTjURNYaLy35R8C
	Hhw5DpxvrKNZ1uxeXnvDebFk0RoCmtjLGKTls+3G/Q0j3lKJotEOE4NdKBCEyrbdLU8X7Uh0XCtT0
	Rof1CNDvzcy/Eu7dE33/5sO1lcQ9yau0sqtum3v1JqMGziOLAa5Eto3xa/GRLdm1pd0bPTxIsPhzP
	qaD8fqxPYQp2QAdqRAEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9MAu-00000004ZL6-0q10;
	Thu, 16 Oct 2025 11:29:40 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9MAp-00000004Z9A-0I8w;
	Thu, 16 Oct 2025 11:29:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1760614173;
	bh=6X8f+TKvlFE7+7iIebOd6vOulDFaK7Hq5QdhSQt2pOk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jYTunffuBN8ebxn+J0J1kc1YN1sbssCSZYgjcGOrNO2n1UMVW6LfsKWkyyq0RAUrB
	 GLJG4OrIr0Sfcy+LmV8GJUk+PcEFSp6AampSQ6c+uHyH+elNjyePFNXn+Mm7b5AcAN
	 wbVAiuGYfqYf5GRwhTm50x8bOtwU9u2SmHglYu+GhS/FvCvcs8w52zzO/kmqiYjQWQ
	 bv+YPb7X7S8N40trUe/UrYbdaoXnYgx0qcGCa4bMI7nKyahcDO5gXlLousMhu/oYIl
	 OWhJyIBRJSz948YcvSasAukvogji8BA5b5tGCcq0T02oOZYVIyNy1r5QStgmaeMuFt
	 htkyu7PlpsOwA==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C413D17E3673;
	Thu, 16 Oct 2025 13:29:31 +0200 (CEST)
Message-ID: <ce2edd72-f9fe-4c27-b873-f06dc28e348b@collabora.com>
Date: Thu, 16 Oct 2025 13:29:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/15] dt-bindings: mfd: syscon: Add mt7981-topmisc
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
 <20251016-openwrt-one-network-v1-4-de259719b6f2@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20251016-openwrt-one-network-v1-4-de259719b6f2@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_042935_308590_F7C47BA0 
X-CRM114-Status: UNSURE (   5.53  )
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
> This hardware block amongst other things includes a multiplexer for a
> high-speed Combo-Phy. This binding allows exposing the multiplexer
> 
> Signed-off-by: Sjoerd Simons <sjoerd@collabora.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
