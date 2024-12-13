Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D25E3E77180
	for <linux-phy@archiver.kernel.org>; Fri, 13 Dec 2024 09:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SltmZhrPxCfzvhjNsVqocnGhCFZbw0gS1asxEa04Yl8=; b=zgctGUrsNzLv4v
	qJKAPrVNFopGWGPYr674m/JU+jUayupK4Tt7vX2CZOHoJqsBMgN1kDsZGYsHLOpt+EbQgKIokK1T3
	WCmTYkPQkfPOHOPJAaRJ9rWpkFRhcf7+452fY8mrzeK+2+TC+xTtxNYwglKr4fdnq1FZ2ipqDVusn
	/dLJc/RV8j5dJPiPiu/4RH7eaID97N6mQia8ydX262MwGK/TN1nNFjww7+xHls5rHnAfxwMil6Nnc
	c7yc5vzodqXavQIyg5lb6xiGlb1jU0Oz7ZllV165zMVML2/JAQgvUwJrRpNou9jYT+HjtryjGesnD
	goY6PeTBVn1ABYbQvGkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tM1kX-00000003Cvq-3rH0;
	Fri, 13 Dec 2024 09:14:17 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tM1j3-00000003Cc4-43cg;
	Fri, 13 Dec 2024 09:12:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1734081163;
	bh=oSGM60y09Oxd4LnsiKPrEWXfPyzP08a8xYxLQZNZM+Y=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=WgRD6Mus15QRPVQyv3ZOZqP6oGeND583a9mh22fZknno9xbpB3EdKMtUwpqpEPMIP
	 oDyNRvtVEfYTui+tIVPGip3TiQLENYSjWT2p4apuvAZewIh30dug0YudNd7jui5EJq
	 p4BHyywFAZVMDE96AcpkyS0CD9BDs/ThXLVjPIWQNdDGScber5aIEviqELhYcIG3mD
	 OpMBG5p4gf+2MCtTObNG0D0yDDz6flbfhvGlsz9okgrXJP6ZxrfAyqYsnytCzcA53q
	 LOTarkgwVnZ9zebMEtRk3yo0+hLTOJN3M5pV96m6iWmKCShG3LyIzH0ThP9+jBEAzb
	 eQXoYJKqfEEyg==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4199417E100A;
	Fri, 13 Dec 2024 10:12:43 +0100 (CET)
Message-ID: <7f2949bc-55ff-4d62-b310-6240f70a1673@collabora.com>
Date: Fri, 13 Dec 2024 10:12:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: mediatek: phy-mtk-hdmi: add regulator dependency
To: Arnd Bergmann <arnd@kernel.org>, Chunfeng Yun
 <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Phi-bang Nguyen <pnguyen@baylibre.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Daniel Golle
 <daniel@makrotopia.org>, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20241213083056.2596499-1-arnd@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20241213083056.2596499-1-arnd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_011246_164777_BBD1429A 
X-CRM114-Status: UNSURE (   6.06  )
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

Il 13/12/24 09:30, Arnd Bergmann ha scritto:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> The driver no longer builds when regulator support is unavailable:
> 
> arm-linux-gnueabi-ld: drivers/phy/mediatek/phy-mtk-hdmi.o: in function `mtk_hdmi_phy_register_regulators':
> phy-mtk-hdmi.c:(.text.unlikely+0x3e): undefined reference to `devm_regulator_register'
> arm-linux-gnueabi-ld: drivers/phy/mediatek/phy-mtk-hdmi-mt8195.o: in function `mtk_hdmi_phy_pwr5v_is_enabled':
> phy-mtk-hdmi-mt8195.c:(.text+0x326): undefined reference to `rdev_get_drvdata'
> arm-linux-gnueabi-ld: drivers/phy/mediatek/phy-mtk-hdmi-mt8195.o: in function `mtk_hdmi_phy_pwr5v_disable':
> phy-mtk-hdmi-mt8195.c:(.text+0x346): undefined reference to `rdev_get_drvdata'
> arm-linux-gnueabi-ld: drivers/phy/mediatek/phy-mtk-hdmi-mt8195.o: in function `mtk_hdmi_phy_pwr5v_enable':
> 
> Fixes: 49393b2da1cd ("phy: mediatek: phy-mtk-hdmi: Register PHY provided regulator")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Sorry about the miss.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
