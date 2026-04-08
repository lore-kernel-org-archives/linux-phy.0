Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66E401073CAB
	for <linux-phy@archiver.kernel.org>; Wed,  8 Apr 2026 12:59:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9U9ctDhG58k038R5RnaTPC69ZyPthzCtnBBeuPzFbtE=; b=tBBZjAnv10p/Oo
	TNRf5Orv69b30vwZzMISfr8udgfA2FozW+0k29mJ/OJxyqOAw3pm7aHnUiNaiGwW2bVz8Q8Wl+r+1
	9U2e8ARdvxYpgDZ2BPxdwpzyupKSHOSuNXt85KrBQWMtYtGR9iueCWPEtPKTFzyKiC0HGuYCRW1Bh
	qu6xY6/iq9q0v3kggVsgXsfHvCg6O6Oq5KsU6UmTl1K3Rn5oFFUc5wp0uQmKjOyEVhvungOybuvcf
	0Rcfj3Bc1njacT/Agq5YAAhKfzj7Zc3S5ieF8SF2CO/riXHzOmw3Lz/T26t6OeUdtuObjU5C0N4Uw
	OgrcdL4Em9SHgmm/UWyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wASUx-00000008sfB-3h0v;
	Wed, 08 Apr 2026 12:59:11 +0000
Received: from mail.cjdns.fr ([5.135.140.105])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wASUu-00000008seC-3uhx;
	Wed, 08 Apr 2026 12:59:10 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E27B91ED994;
	Wed,  8 Apr 2026 14:58:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cjdns.fr; s=dkim;
	t=1775653141; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=eh2Ut171wqmOONOps9l0PZ9TIR9l30BuTl8yI4h9mus=;
	b=o0tmtt43vL9xqdVsg1urR/4VzYAuHc1fUgU/VJm410m6/gCRT/WDV44NhtCuZKyFmgj7LM
	r137un5/F3ZTCsLF0JjLzau92j7RqN+4Zvmf1arTW4jTnSteX2YwSigaITaV6pboxUE7Uk
	9JKxWVIzdkb34nD0lkWZyTCyswJbqrUQJr25VfGvwdexO58xUyTwtpLW5g8IkZfd/8NhvU
	QZ+Pl+d+z7OrV2Rtdb3G6BHBVZ1uT06dkGImxiE13U9Q+dJVUmP5DmaEvoK6iF2zLDhbND
	ZigUHx7vKo9ZbcYMKmjhAfMBzu/cnOAZkRjHV93vVOYF2RtdUkD1IcpDTZOP0w==
Message-ID: <468d439b-9a83-484b-8ada-fabef2d6c8da@cjdns.fr>
Date: Wed, 8 Apr 2026 14:58:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: [PATCH v2 8/8] mips: dts: Add PCIe to EcoNet EN751221
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: linux-mips@vger.kernel.org, naseefkm@gmail.com, mturquette@baylibre.com,
 sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 ryder.lee@mediatek.com, jianjun.wang@mediatek.com, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, bhelgaas@google.com,
 vkoul@kernel.org, neil.armstrong@linaro.org, p.zabel@pengutronix.de,
 matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com,
 nbd@nbd.name, ansuelsmth@gmail.com, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <20260309131818.74467-1-cjd@cjdns.fr>
 <20260309131818.74467-9-cjd@cjdns.fr> <adOo9xZxXT3FkufM@alpha.franken.de>
Content-Language: en-US
From: Caleb James DeLisle <cjd@cjdns.fr>
In-Reply-To: <adOo9xZxXT3FkufM@alpha.franken.de>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260408_055909_209329_8D3FE3E8 
X-CRM114-Status: UNSURE (   6.56  )
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


On 06/04/2026 14:37, Thomas Bogendoerfer wrote:
> On Mon, Mar 09, 2026 at 01:18:18PM +0000, Caleb James DeLisle wrote:
>> Add PCIe based on EN7528 PCIe driver, also add two MT76 wifi devices
>> to SmartFiber XP8421-B.
>>
>> Signed-off-by: Caleb James DeLisle <cjd@cjdns.fr>
>> ---
>>   arch/mips/boot/dts/econet/en751221.dtsi       | 114 ++++++++++++++++++
>>   .../econet/en751221_smartfiber_xp8421-b.dts   |  21 ++++
>>   arch/mips/econet/Kconfig                      |   2 +
>>   3 files changed, 137 insertions(+)
>>
> applied to mips-next

Thank you very much.

Caleb

>
> Thomas.
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
