Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DB2BC6FA8B
	for <linux-phy@archiver.kernel.org>; Wed, 21 Sep 2022 08:24:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q3RHfXgkEQ/wJj5KpY0WEkxA6rKDR22S8e3+RqxubYU=; b=2TvOef1SqX5pkD
	0iasp/hIunz8iSj1YfeEizCu0syYXdKplAy1E5fMfPPEJfJeNpgl5BlUrjF0TOc7NINopqpPgT6TN
	/Ox43468MumCFXK6bJX0+13tHXYQMfeU1/64eCurATxePgPvSDOS5mHn0d7i3wOk4EU+E0lQCu1bx
	t+roCALYEwXUIDQHxukWHuwPzTppnuELao/+EU6ZIvVll/TwtsbX0lu8Rm//vaxHcHY90aX1pvwVT
	Qjd3q3k9qDFMx+nuHyQ0Fx8StUauw8sbq5HremotBq8zJ0dmYZ3GynJlxYDEWI1ExCWJ7BBDkP9Vb
	FWzByf8+v4HQ+cFLJ8NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oav1h-009vWe-72; Wed, 21 Sep 2022 08:24:13 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oausp-009qyx-MK; Wed, 21 Sep 2022 08:15:05 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id BFEDA6601F3F;
	Wed, 21 Sep 2022 09:15:01 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1663748102;
	bh=EvBcI/f2WzXPlPeLEVNaBfs+pUmwiWS3guPeTWdGL3s=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=kTyckw1i0Ah5GXmyeYSVwZrjPPqQvIUQZ//WDDa0dtcQ/cgjdn3/tK8GHSRJk1zJy
	 N+CtFS8G8WqhPcGsj2aPSimqmLObAmlMhXi1xfA2Kmj+F28eUvJyFx400HCtY0BlGM
	 w9Kt5zDbx/03K3oZlwg+FL86LSqGBGNTA7QLpG9Q4AiDRxxcVSZVskf7Zu3vpPL3WK
	 LMqWfKl1CUxFFd7vNYSZqEx7uwW1ZfblPiTla3aEWqfQQ68vgpNuW20/iHk7MsgiYv
	 LV+3SL7yUwm+/9jqvlsCEGqZSgaPDmJQ6ld/M5e25hMo3ZcNOvcmTrvajdO2yTqocC
	 +GGYjqhkZUmIw==
Message-ID: <c4721c78-c123-c4c5-68eb-4aa947d611e2@collabora.com>
Date: Wed, 21 Sep 2022 10:14:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH 17/18] phy: mediatek: mipi: mt8183: use common helper to
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
 <20220920090038.15133-18-chunfeng.yun@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20220920090038.15133-18-chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_011503_899959_126053E6 
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
