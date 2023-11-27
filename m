Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99959C0755A
	for <linux-phy@archiver.kernel.org>; Mon, 27 Nov 2023 13:27:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iWfgUoPpbQF7QxIzVxTiZbQUn/+i0l71owWHFm1lPk8=; b=kzAF0QmLqbVhAR
	NFhoNdPGq+q+EyZ6TudaQy74AftCH6OL03uZAAbiZPLqZ9okrSqf/uHaeyfxrhULqGQ/c1R0dOE9m
	C1cBSgdTKlR6IkPUJgM2MSwg7BK3xciNgmxzkpanEssCI3SScWRXaJUCHD7L5L0Jv5AtmKm2qn4wq
	uZIgwfbacm6pVA/ytemkh4MhSFwXHuu2dZ1wvZyKhfd8zrqM5gNctC0/Ulf+D9tcHpvhEZGoESPlf
	wiPMt3A7SKOTsXU/wOw7IpMA9LWrSrNZEpXfTG8zXez6pwYfcFGwOgKe3hbgCnRBjUj1LpFxilDwu
	RuGL2ho9DmSwVjRUDxBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7be6-002ZYj-17;
	Mon, 27 Nov 2023 13:27:30 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7be2-002ZXB-20;
	Mon, 27 Nov 2023 13:27:27 +0000
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 6D4BD6605835;
	Mon, 27 Nov 2023 13:27:23 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701091645;
	bh=DvdTt/2joGjmSG0un+grPJz1gQ9C99woeiwQLvx7PIk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ace0jcUMaaLGzfJzHjPcsPWpVDpK61lQJqlhON6SE7GegzdsUn9vpO+Z9u1MI5rId
	 1vtulJdlAyIsPGpiW5q+PnkJmR3phB4bqhdb8wLz5wO8XRfckZFk76iONud5D2ea2c
	 JCRrx87PpeqCgmT+bMDxeKGUb5XwZIRnf7/z8otHa8CuxabDO+HxOWIPdpbKCqazo1
	 1pOmwdm9ZayP4qnNV1RDPygEGag9iiiYiqXbOVwFna0+KNmlE1odL4/4gVKrH2vdvP
	 zNZv5Try393NNMHGSByfDITJbKle6eCPibneDaIPvIn3HMTCsvJIeTdPE+9VHcIbIF
	 wCZ1f0J5ctnuA==
Message-ID: <18516d3d-f866-41de-9045-ed9b4da94697@collabora.com>
Date: Mon, 27 Nov 2023 14:27:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: mediatek: mt8195: add DSI and MIPI DPHY
 nodes
Content-Language: en-US
To: Michael Walle <mwalle@kernel.org>, Chun-Kuang Hu
 <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Chunfeng Yun
 <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Jitao Shi
 <jitao.shi@mediatek.com>, Xinlei Lee <xinlei.lee@mediatek.com>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
References: <20231123133749.2030661-1-mwalle@kernel.org>
 <20231123133749.2030661-4-mwalle@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231123133749.2030661-4-mwalle@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_052726_798848_55F1F498 
X-CRM114-Status: UNSURE (   5.97  )
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

Il 23/11/23 14:37, Michael Walle ha scritto:
> Add the two DSI controller node and the associated DPHY nodes.
> Individual boards have to enable them in the board device tree.
> 
> Signed-off-by: Michael Walle <mwalle@kernel.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
