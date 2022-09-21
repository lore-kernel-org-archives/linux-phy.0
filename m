Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 026AEC32771
	for <linux-phy@archiver.kernel.org>; Wed, 21 Sep 2022 08:15:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PFliQzsLLN/PlLl4SrkseITI2oFKAV2o6enOERil6JU=; b=qASmTiRaWdTCG1
	AQsUuyJRGvhdSgqywn06Yyizihht1zv2N3IOIaPvoEYCseBLM60zNb0mJvVuoE0rE8fc0oPEajVlR
	np1lYoZRRa9cygAW+dD7tMqN/rJAnEbPd2Z9IYH0Z7eRwaAMMKHfWB2xMNquA0po1hO3114kwfT9c
	XSBtkYjP9jSER5j92vMJHYvw5jq8W9eC36RK13EIl2g17PwHzlxxDMrOiDatwvyeaCSzRJcEtWRad
	UVV5kJfwNFW2ls3IUrFjsiAfWedZbayxRpvKsJNQIOWH77GeeUgNJzW2N3BXq6ok31bexRJcORY1Y
	I5gWZduZuGTqYAvlhqCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oausy-009r3P-DC; Wed, 21 Sep 2022 08:15:12 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaurW-009qJc-8g; Wed, 21 Sep 2022 08:13:43 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 674516602001;
	Wed, 21 Sep 2022 09:13:40 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1663748021;
	bh=uqa26S2tIcDs1AYa07fNiw0XeXHjKp3YVEcf4+3/7Y0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Pbli8mjLsebHG+eAFikrrlAZVnsteaqQT2fSErRV574lMzwa2OVIwa8UlmUlHjp0C
	 rsVX68ZLY/etstaGXd3eNOVHoJEVQ3VCmNsbqXeHJ8bMUgjBt9nljtfXYI0xt+sTZn
	 zxZl68bxpXnIpw+TXbn6tzmuQXB7XAYl7PNbPEIBHo1/G/SdagZqNlJQ5Jb/G2J57H
	 kLl70Yx3eR3NZ5ISOATFXtPM7W1C1QgON3uTQlCsit4uGTzKMaRELOsKa+g5oM16IJ
	 sp8fMDUAsIDcmVl/bsa83Gi0P1yxApD//poPvthz7Ufv6ZFkfKs2ND05Vw7BXmd38v
	 RIeaGJR+eSSfQ==
Message-ID: <89d638a5-638c-c714-7f57-d0ccce827961@collabora.com>
Date: Wed, 21 Sep 2022 10:13:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH 06/18] phy: mediatek: hdmi: mt2701: use GENMASK and BIT to
 generate mask and bits
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
 <20220920090038.15133-7-chunfeng.yun@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20220920090038.15133-7-chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_011342_479784_0F6EC41C 
X-CRM114-Status: UNSURE (   6.22  )
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
> Use GENMASK() and BIT() macros to generate mask and bits
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
