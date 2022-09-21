Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A087C32771
	for <linux-phy@archiver.kernel.org>; Wed, 21 Sep 2022 08:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D0nGx92lmnKc6P5VhIcGsXmS2up9b9wpcCjXaAzLmGA=; b=1QKQyA15ks4CVL
	7xmRTWFjvO6Qyv/ZFaoLNznrv1Hb8r0+N0zJDMR9eX01NYuJkuQaLZULrD2N7i8egNXy6XHmgpGdS
	vDlVbJxC9aRXQ/2ERxdeFEK1KXyAc+PD4MkLnmxG8okcAOlHmgEYyBkhR2mkC5/VMOs/ds65BHEp/
	kqvpgvgWL9w1j0y6+vvmmYi1G7EiZJW1OtdLVk7nIJTImm/IWdocLN0iZ91Lyw6brLDYt4HnZqNyv
	I18ebhMmcZzy/VZrNOGc1EW4qRwXu7qygz0A0QVHSap+n7UJZ/DEV42SANZmDXiHhor0oyTjoeY3C
	VcSxDKMx7tBPAjkUqNIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oav2n-009w1Y-8b; Wed, 21 Sep 2022 08:25:21 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oautD-009rCI-SS; Wed, 21 Sep 2022 08:15:33 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id EBA786601F3F;
	Wed, 21 Sep 2022 09:15:25 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1663748126;
	bh=NNSx9hRJaoAMLI1n9AvUiccUA/Y2Upvxg5yv9gxOeYc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=nS3pdU9XGCHiM4SODNkKdfIJIyYR/r64+mKBjsLYP8UALlnNYeaKSsmV5O2cDKktk
	 dYu1pHLJ+DO7p41Mlclfd+n97TeTxxo/rIBTMP/m9ky/a6g9IZiRUzeuYMMRkhE09B
	 iZORo3Yp+B0E6LoP5rA/6hOfL6JabzxGkVTfP4j9+f0MbUIwy8hzxaaQPmcFfwoX82
	 04Esp+eZCBJW/dZKcv8i0+cDLGLb8Pcdx9P+RFIHGSO1LaNvj7rWNzRB3W/yExFtj7
	 0KmtNi4HamtoWdv0lse8OhiJ4CgFtmk25/XeMztKxIuLCshSD3ahWZOKsGitlnaBvF
	 ksKsrh9A2psfw==
Message-ID: <826acb10-f2e4-6edd-4479-e71772787df4@collabora.com>
Date: Wed, 21 Sep 2022 10:15:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH 18/18] phy: mediatek: mipi: remove register access helpers
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
 <20220920090038.15133-19-chunfeng.yun@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20220920090038.15133-19-chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_011528_121909_3C21BFF7 
X-CRM114-Status: UNSURE (   6.46  )
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
> Remove private register access helpers, use the common ones instead.
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
