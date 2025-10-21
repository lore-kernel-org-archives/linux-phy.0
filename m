Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74800CCD1AF
	for <linux-phy@archiver.kernel.org>; Tue, 21 Oct 2025 20:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zEyL+y8o1/muXI6KAOZwF5gBQA0fCuaGhzQ1WhAF2Uk=; b=4QecBduACSkcnE
	hVqLP2nKbP1osIEkf/XvPCTs/y7mNHcrxyQuX6Y8PV2besvcjHRrW8GvwLeFQNnAr/0GB+oUDyj2R
	e3Cu8YgG4zd+g4RO6fMWRvQP6jqXQSIsrTI4qFhzD/8qwIlOwC+b0LA8aTaS0NK1ChAjDih83+mN6
	sAXM/FOi5MHVHqXJsZ/ppN6ivhioLFfcJBAisi/qMt9ii5rgXnIaGZxbdmYGOc6bOK8BWlmVQphf2
	RWx/YCr5NubNjIot8+p+Pz+mrJy8akMYyUe69CnILITQNkOTe2PA52XWhoDS3TItQMYtBIxV6nNCO
	dJvbzmlEqwI3PD1Ai9eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBIry-00000000aVW-41xL;
	Tue, 21 Oct 2025 20:22:10 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBIrv-00000000aU4-2OL2;
	Tue, 21 Oct 2025 20:22:09 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1761078107; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=QrY/3a0vxy2P8JAKFOWpysYjzg9YpdQXvP+aIg2gtIeBQB2GZ0VHr/28YkYykdW1ePNjrhHjDLlNaNi9fEJyHUG5G84GGV+Qi6KCIYFeIZLscaE0Hl2YgCokXDgmszFSTsboUhQiDF9EqFGB6cyWBrnfxf9G4VNp2kbMWlXz99k=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1761078107; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=hAvzwpzQSETC2lKwgfVXJKcyUwiMeJEWklgbWrWua1w=; 
	b=gaqh9cwprh56WWxPqBWHY4c06cztH2dd/JXRzKlsNmG22IMiFPCpx/AFJwoyXYumggiRClhix/qPEJKDiKGhcE9Zd5yA1RcLNfdMI/XXOF5Gt11RwoioTvYx65Qh9MTuSA/FFIfk6Mae178SBhmcmkGsHceWA6x8pa1aLvj2A3c=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sjoerd@collabora.com;
	dmarc=pass header.from=<sjoerd@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1761078107;
	s=zohomail; d=collabora.com; i=sjoerd@collabora.com;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=hAvzwpzQSETC2lKwgfVXJKcyUwiMeJEWklgbWrWua1w=;
	b=LTIsdLSW3epqhH5OvoiycJDnQqP3nIYZbR5vNpzfS79o/Limr7vlOShUEfzal4LV
	b7iKvQLnGJUd2uIs+yNTkLy8SIRK5GbE+5pjp3160njZMvf4itG+twGlnZe1TQRFU41
	QQ6j6xhEEGpWCgs+L/LFvW1FZFSKrlJ3BdlarpLs=
Received: by mx.zohomail.com with SMTPS id 176107810303712.61020879160435;
	Tue, 21 Oct 2025 13:21:43 -0700 (PDT)
Message-ID: <8f5335a703905dea9d8d0c1840862a3478da1ca7.camel@collabora.com>
Subject: Re: [PATCH 12/15] arm64: dts: mediatek: mt7981b-openwrt-one: Enable
 Ethernet
From: Sjoerd Simons <sjoerd@collabora.com>
To: Andrew Lunn <andrew@lunn.ch>, Eric Woudstra <ericwouds@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno	
 <angelogioacchino.delregno@collabora.com>, Ryder Lee
 <ryder.lee@mediatek.com>,  Jianjun Wang <jianjun.wang@mediatek.com>, Bjorn
 Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi	 <lpieralisi@kernel.org>,
 Krzysztof =?UTF-8?Q?Wilczy=C5=84ski?=	 <kwilczynski@kernel.org>, Manivannan
 Sadhasivam <mani@kernel.org>, Chunfeng Yun	 <chunfeng.yun@mediatek.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Lee Jones <lee@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,  "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Lorenzo
 Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>, 
	kernel@collabora.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, 	linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, 	linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, netdev@vger.kernel.org,  Daniel Golle
 <daniel@makrotopia.org>, Bryan Hinton <bryan@bryanhinton.com>
Date: Tue, 21 Oct 2025 22:21:31 +0200
In-Reply-To: <4f82aa17-1bf8-4d72-bc1f-b32f364e1cf6@lunn.ch>
References: <20251016-openwrt-one-network-v1-0-de259719b6f2@collabora.com>
	 <20251016-openwrt-one-network-v1-12-de259719b6f2@collabora.com>
	 <4f82aa17-1bf8-4d72-bc1f-b32f364e1cf6@lunn.ch>
User-Agent: Evolution 3.56.2-5 
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_132207_683252_B2EE9E2F 
X-CRM114-Status: UNSURE (   8.41  )
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

On Fri, 2025-10-17 at 19:31 +0200, Andrew Lunn wrote:
> > +&mdio_bus {
> > +	phy15: ethernet-phy@f {
> > +		compatible = "ethernet-phy-id03a2.a411";
> > +		reg = <0xf>;
> > +		interrupt-parent = <&pio>;
> > +		interrupts = <38 IRQ_TYPE_EDGE_FALLING>;
> 
> This is probably wrong. PHY interrupts are generally level, not edge.

Sadly i can't find a datasheet for the PHY, so can't really validate that easily. Maybe Eric can
comment here as the author of the relevant PHY driver.

I'd note that the mt7986a-bananapi-bpi-r3-mini dts has the same setup for this PHY, however that's
ofcourse not authoritative.

-- 
Sjoerd Simons <sjoerd@collabora.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
