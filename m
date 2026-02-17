Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADB17E6814D
	for <linux-phy@archiver.kernel.org>; Tue, 17 Feb 2026 09:04:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hi6SJSmJAbtxIva1aN3gq1yfig/bimgDyOiaxAqPkUo=; b=I1nMVcdjPxQa3Q
	IWoUnfcN7B+nq7c8U6LOCOAtRIyfdeiZe8GKSqsowG/Rp0tJaeLW7YZvUmjvbabEUV4HkcUw88HSI
	Majzu/dI3iErHXuImSMSJINtswIHcPlPCXj6uUsFmCMkyvn5eZOtBE3qZtdEMob+L6gHGf8FKahcT
	wUACzRXWL5D/VGbcw/Z29m3fdqp4SXH+9IVoKH7DfvGp97gmgCi+I6vd+LUvRkFGW/TES8pvSvr7T
	p+F+NHTA3P5vc4DEw7th1zXRnwj3UMKjQPDeeDRmFyngkGlDRvVRZvcjtnRfSmzPWDn4miNiTKvni
	yQMLMhe5/O0tZU7TDgWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsH0o-00000007u5X-1lQG;
	Tue, 17 Feb 2026 09:04:54 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsH0l-00000007u44-03Vw;
	Tue, 17 Feb 2026 09:04:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771319087;
	bh=GM2WgMx7Ng/rdF2zETuZYAywqw+x63rUgxous4BKGi0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=P/8dKJUehLt3fewEdrg8fx0moVOd0WujtJr+UCkF+mWpNCCmrpOyezEqcMkkoYKD7
	 NTsiXs2rzi1/CB63zE1BdEmiBEjuGsLr47/btK+eP1Nf7GsPS2mDS6wNS8GyGxT5F0
	 Wc4k7U2xqXLnZXa/k1YvWTOVsSFu0cVyHBvmz7NA+q2fwwFJ7MQLjUk5Pms7u8VK4G
	 Fru/CFFa3jJII7uT5u62GZV7QOGd9lCleU/a3FxbeSLZRb97mitXiw/aJQbV+Ua7Xz
	 CRCDbdbc2OHTN5OTbUXDox4O1dZhNdTfqAduYpyNhiw0SDR8NF4ggi+hCdTZLeepF7
	 nxHDuQ+fW2sBw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9034217E0071;
	Tue, 17 Feb 2026 10:04:46 +0100 (CET)
Message-ID: <c8ea9d3a-09a1-420f-aaf0-31d77c436eeb@collabora.com>
Date: Tue, 17 Feb 2026 10:04:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] arm64: dts: mediatek: mt8167: Add DRM nodes
To: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
 linux-mediatek@lists.infradead.org
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chunfeng Yun
 <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Jitao Shi
 <jitao.shi@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org
References: <cover.1771258407.git.l.scorcia@gmail.com>
 <1e9cc053a4e80acfea492aaa186ed493115f318b.1771258407.git.l.scorcia@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <1e9cc053a4e80acfea492aaa186ed493115f318b.1771258407.git.l.scorcia@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260217_010451_228910_F6C55076 
X-CRM114-Status: UNSURE (   5.60  )
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

Il 16/02/26 17:22, Luca Leonardo Scorcia ha scritto:
> Add all the DRM nodes required to get DSI to work on MT8167 SoC.
> 
> Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
