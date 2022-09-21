Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1634C6FA8B
	for <linux-phy@archiver.kernel.org>; Wed, 21 Sep 2022 08:14:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S9oB4ak87FNaowiy/ZN7+qR5U1aLOkbF1GTqQRhTzKA=; b=wPBBMVsNGNwkEu
	QrBEC1vt0PrcUiHyGTvUk38jJ8LC9IquyAXS4h82gVa9aeZb2s1kgde7z5FLOzel72FDl8EQvC6mv
	iSUz2jBSWR55HjYK03DVtyDE3O20Xrm7yqNc9uWaJgiwVSEw2123CojCMawIr57zbkKt07ZkTUZ+x
	y1UxY5bQ8EtweEravFXBauVx6aw4rk+IsRzlnREATghlBPNbvOgy7Fp+82txsvJ1cx5rl/6hTQeYe
	9NRx21+nzQGofnoYUldm0QjkrGECSqTB46XxTUrpJuIIBZzOUnQxPTMFJPiD05Uv04d4MmD3y5x37
	+6ZGdXUP/zS7dOmaAotw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaurv-009qWa-1D; Wed, 21 Sep 2022 08:14:07 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaurU-009qHL-3j; Wed, 21 Sep 2022 08:13:41 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8A7FD6601F3F;
	Wed, 21 Sep 2022 09:13:35 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1663748016;
	bh=wBx7986mU+G+SugkswF8Z+6DJvj3z5+Hro9nOPhryCM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Dzcnoygl09pwDr0F5taS2UrE3awoptYPge6G0CfVcj59Mr/ngHJb1KfuaQ4rQkQa/
	 oL16vza+M/IzfM4oPm7JJ9KbKQuLPyVmxn8pVaqsYbS/vwmrkx2aoaWqZrQR/QDoDm
	 EAetPqludw89dLMn+uto2uz8jzqCL4LKWFUDp9AsQQGYD1upRSUdrbNyGqnM/FbmX7
	 3goddrYE/tQMuVJW2ZZYaV7ljl8v/AIA8r9bcE/88SCyz81k1VLrlXDSq8i+e1hOp4
	 uT5WQt5fwSGeg2gSlTmeDqeirtuMecM5rqM1HDR5Cv5zpDhvgOP8REvoqp7g/G7LIm
	 ynICNLF/kanzA==
Message-ID: <70e361c7-a4ef-076a-8817-7d13d9785c5e@collabora.com>
Date: Wed, 21 Sep 2022 10:13:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH 04/18] phy: mediatek: ufs: use common register access
 helpers
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
 <20220920090038.15133-5-chunfeng.yun@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20220920090038.15133-5-chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_011340_346160_C0B48865 
X-CRM114-Status: UNSURE (   6.94  )
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
> No need define private register access helpers, use common ones defined
> in phy-mtk-io.h
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
