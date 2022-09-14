Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47D1AECAAD3
	for <linux-phy@archiver.kernel.org>; Wed, 14 Sep 2022 07:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=azWX8flM1hhET4oyUrk7eJ+B9SgyI8qiRh2bjutC5PA=; b=hhJLXV/tseYC5G
	p/nHYunevt1+la4s9kM87xGFdJhR4INOdU0maMcXswCuRCW+WeboMpx5nqN/7jwPb5jchPkYt5Roc
	dFGf1UL2TFX2tMWiPD2oUeEfLSQYxvpuCe6uTFTyBMyuy9ftI65DDfwPe/EdqQVptbD19WcXkKcm4
	MBa/ZKUnHTZj1jJ+wPcktFyPI9+ctDD2gTye8VvFoipBUhK74SXa2jBZ4UstoaFWrzYw3BLUIL6CK
	TroGRkWDVLhLkyFYOVc9WojqLYuNzAW6KaWkNfDwRIuOw439xaUGY7EQbz68uVdW8a55VDMvRt71u
	B0GjI9zZiKOGERNgzlVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYNB3-00Bm9P-Jx; Wed, 14 Sep 2022 07:51:21 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYNAh-00Bikw-0Z; Wed, 14 Sep 2022 07:51:00 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7A0526601F99;
	Wed, 14 Sep 2022 08:50:53 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1663141854;
	bh=Hym1WPnQu+rJ0jePjiNMfQK8daaeMyb7rYGk5n5O/g0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ggQVBOHgbv+NxebDh3BTpsvKZhJcZ7O0tLF0ERDgZTt8gV4LjNmXR8MU2r0Fgsr3e
	 s9vOhlqStzlzBTxG0/dnXTVyLu/royUM9Rz3v25wsvBULrSPNrflOnvJ2Lv8dZaiUg
	 PQrnm1ZP/fhNValzboM6nXEanDAKBp93u/kOIkvQ4J56CXsW+uBToQGAZPuQ7lcayP
	 oVsHLdSkPjS57zfcnAA4vhjh/hggt8WMQPkHrmTQkbWaVO9Rjokx6oXmOY7TwSKu+Q
	 MV/65EYZlDCMF0OPDM6BSjQM0NqiZcuOAZRVtrHJ8d8OKIC+otG14JD3Ip//gLnKGm
	 ygKuL+XyjonLg==
Message-ID: <739426eb-7381-d9e2-62e5-bdaf41d13821@collabora.com>
Date: Wed, 14 Sep 2022 09:50:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH v3 7/7] phy: phy-mtk-tphy: fix the phy type setting issue
Content-Language: en-US
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eddie Hung <eddie.hung@mediatek.com>
References: <20220914060746.10004-1-chunfeng.yun@mediatek.com>
 <20220914060746.10004-7-chunfeng.yun@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20220914060746.10004-7-chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_005059_315747_6331377A 
X-CRM114-Status: UNSURE (   8.02  )
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

Il 14/09/22 08:07, Chunfeng Yun ha scritto:
> The PHY type is not set if the index is non zero, prepare type
> value according to the index, like as mask value.
> 
> Fixes: 39099a443358 ("phy: phy-mtk-tphy: support type switch by pericfg")
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
