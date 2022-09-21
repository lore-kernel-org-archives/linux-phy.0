Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97B5CECAAD8
	for <linux-phy@archiver.kernel.org>; Wed, 21 Sep 2022 08:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q3RHfXgkEQ/wJj5KpY0WEkxA6rKDR22S8e3+RqxubYU=; b=bPzOTF87jHFKLz
	NvGITnbBvsxW+dYg9t2Er0Vad+QgpTqikAQmBYNnFIhlSNfHjnQR0Jed3JOkizzLpnbXjxinfBgnT
	kumc6rZm4I8hxoWeFXPZYXaPzYLQlF9P/G1vgCvAWQsmONB6HeKJ//yAponhjJl1Y0yMZO18TOmfO
	oYjfunhvrjZzyHqHAicrWd9k8V/s1VQs7hCdSty1DV5Ao2csbGtc/mQ6LlkxCWfEiMwjDGd9gbCE7
	trxWRDV9bw7udqEn8ULuiOSvtjzD/SF9fno+Z4G5PlEsL1RZUsLOx8StN+NsOjIjeS6MPSC1CKDYL
	k/hUViaFC7OA/xLICxSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oauyp-009u4M-NA; Wed, 21 Sep 2022 08:21:15 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oausP-009qkt-BW; Wed, 21 Sep 2022 08:14:38 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7FE7D6601F3F;
	Wed, 21 Sep 2022 09:14:35 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1663748076;
	bh=EvBcI/f2WzXPlPeLEVNaBfs+pUmwiWS3guPeTWdGL3s=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=PZDtwxI8B+LUgkMD25Wb9IKBU3ZQxrXxvvQNoMSPSgsIqpkmKYhEaHN+uot8kO8vJ
	 gVbv+8aTR+Z6xKGVq2WcsLk1viiEYTPEVqurc2rQ0bsnhTLAEffvEhjxB86k1KVwH9
	 jrcRasvLyV1bFScZQIf6JL7+VN0jr631BV+ygdXBUQIGXPyllyKbi9lsG2nte3CFZe
	 rvyGml9ohUGzOz8QHhKW7D39yoLqSQ6xjJycsvKF+6LqhNp1AuXdzpBt4oMPg1cEtQ
	 ktzYcNCozKEc+tQChLbLISf/EmaTcSaeHpqp/lCGosED0FUQNS5Fbi+Hw0akD85Vek
	 QyxUEwUz33VQA==
Message-ID: <0e734f18-423f-72f4-efb7-07bddeab8674@collabora.com>
Date: Wed, 21 Sep 2022 10:14:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH 15/18] phy: mediatek: mipi: mt8173: use common helper to
 access registers
Content-Language: en-US
To: Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jitao Shi <jitao.shi@mediatek.com>, Stanley Chu <stanley.chu@mediatek.com>
References: <20220920090038.15133-1-chunfeng.yun@mediatek.com>
 <20220920090038.15133-16-chunfeng.yun@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20220920090038.15133-16-chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_011437_600532_56ACC3F3 
X-CRM114-Status: UNSURE (   6.67  )
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

Il 20/09/22 11:00, Chunfeng Yun ha scritto:
> Use MediaTek phy's common helper to access registers, then we can remove
> mipi-dsi's I/O helpers.
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
