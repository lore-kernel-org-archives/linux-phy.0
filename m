Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D601BC64EC7
	for <linux-phy@archiver.kernel.org>; Mon, 13 Feb 2023 15:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YzoSbCVP4fiXhCrUhLBc79w60oYh8ek01PMg+4Xe1pc=; b=VhwNZZj1lMMNUg
	7IZ5kXjSLCZKkH3rCb+ZkO9bku8QH+xQ9rPwPKcTWTyausOHwlgxKhOTpl6QTpcaA33GsR19TzM5f
	7nLuVONSTEzsEs8Enf8PkUXJeRJcnfbtmb2VvaCOGu5wVHznZzfEhNwtwS4gmLO70IPIXDCKGJVsH
	BRmp2qCvXtSWKdqtbI1T1qbSqdTsx55S7OZ3nyG+wFATmAKLnhXQNJ3Xl86+DWSRJ8s6nDwpN9FVs
	CNVkCCXL3P8XK8nOsdJEgWXbpiN3AKUxoxaIz17u1g5e5otaewKojIYQVZqz2H9W76/FtVCL3SkRm
	tbh9fPejMoq0zsFhWcdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRaLM-00F66K-AR; Mon, 13 Feb 2023 15:02:12 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRaLB-00F638-Il; Mon, 13 Feb 2023 15:02:02 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id EE97266020A2;
	Mon, 13 Feb 2023 15:01:58 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1676300520;
	bh=+w0aem4WAGne/rGW4BjKK8/fKzHBZe5eP0S7UQQNzX8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=hbLORnwlQTtd/bxhJhZNFax8lKY9gQXhKl+/fIWw5wGgB9bCvbkZENT8IZgbywbz0
	 7U3d9t3GKBzKpM39j5p6Hm4wbuoKIuDN+na16zhF6nlmD9ETiGQimhWElYGOdda9/S
	 kLfgf4RfamxXTSh6FiFGex559lD1CmyQaEJ/SlmrCAv4DtiAB0jRTDltIV2229JT8L
	 nfomkJ5nFAe+OMY3b0nzvVJSMSzIWKcONbxmkMLzbrN0Ct+JBxwF0n4DX3WL9a4jAj
	 KUTlc4+Rbu7VFn74LiR7ilY9TNcLLuo2biUnXzGTz34wnZXYjfqZTUVp6/DvbLFSh4
	 Zfv60OCSYye/w==
Message-ID: <6bf297ce-43f0-d8e6-a99c-0b92afe43dd7@collabora.com>
Date: Mon, 13 Feb 2023 16:01:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Subject: Re: [PATCH v7 3/3] phy: mediatek: add support for phy-mtk-hdmi-mt8195
Content-Language: en-US
To: Guillaume Ranquet <granquet@baylibre.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>,
 Jitao shi <jitao.shi@mediatek.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, mac.shen@mediatek.com,
 stuart.lee@mediatek.com
References: <20220919-v7-0-b5b58c5ccc07@baylibre.com>
 <20220919-v7-3-b5b58c5ccc07@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20220919-v7-3-b5b58c5ccc07@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230213_070201_773259_60009639 
X-CRM114-Status: UNSURE (   6.78  )
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

Il 13/02/23 12:33, Guillaume Ranquet ha scritto:
> Add support for the mediatek hdmi phy on MT8195 SoC
> 
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
