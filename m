Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 842FDE63F2A
	for <linux-phy@archiver.kernel.org>; Mon, 16 Feb 2026 07:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=azke+N1TsKAhanKhE4KigU5UWo77OoQWcPLT7q18AWQ=; b=PAn9i+g8BRG/w3
	/zKy2BYmuhVmG+TxkqvIY8Nb7drB+Cv7RiHngBWK2O/RqP7VxtmSsfrOe/9qHUBMKa1wO8LCfVlwp
	hHy6LGPRJwWH+Wf/DPcWZ0or86HaMFsCWyeaMy60olkH4ZGPjyISiyo5h54ZluhN2nwN0fP9c1Izl
	LemogdBTEFig562LsnnpFg1Tan+9B4JcqvtAelgx6Ca/ccNe4kzM6dpwOFWXKMCeL+bB+0+BYfgBy
	9RJHG2X8XYVSR2By4Vj1zb5R6IC/2HLV3e83V0lUmxGT0yrDKLFgocOKGyTAT1xP9/ZHUjL8vwmTS
	qW6OwpC5WWEJ/AMbCURw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrt6p-000000065Vq-01OZ;
	Mon, 16 Feb 2026 07:33:31 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrt6m-000000065VF-2Pu7;
	Mon, 16 Feb 2026 07:33:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 131534172E;
	Mon, 16 Feb 2026 07:33:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F60CC116C6;
	Mon, 16 Feb 2026 07:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771227207;
	bh=w7gR/wVBwvZ3WZD3NJA5tmYWfKrKzKAxUYlSShdw8CY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Q3pYux48C9KcBtjmJr458LNiKRLeGHD/ydSbcFlEjRcqMfTBGIo6pCltTd3dy4Ekz
	 FlENBSREHpi3SG3kNy/WpPHf6hg67Je0svWUwTT62trAnICptVC392GsruF7DNQKyu
	 3MY0c2H0Ehkk3hiw33Yq6KXRnZHHvGXNnCIOcO91iyXK/mOYxV0dNSO7ktmYyLnl25
	 PFQuUVDqKfol7W7FEVbKzn4mAJlcRSHtX68yYe/D7AO+BKWJDlejvHpZvx+E2VlXpp
	 MhY3wjOGvtfH518CQoID2KIKDU9iGuIOgJi3AJYtXtYTq7kJgbx3NsQ2t7UvmZMGdD
	 cTLL7R8U60YnA==
Date: Mon, 16 Feb 2026 08:33:25 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Cc: linux-mediatek@lists.infradead.org, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Jitao Shi <jitao.shi@mediatek.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 2/4] dt-bindings: display: mediatek: Add compatibles for
 MediaTek mt8167
Message-ID: <20260216-slim-mega-sawfly-52a08b@quoll>
References: <cover.1771144723.git.l.scorcia@gmail.com>
 <826d54c75cfd1b8e4713431a9426e89edade9eb2.1771144723.git.l.scorcia@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <826d54c75cfd1b8e4713431a9426e89edade9eb2.1771144723.git.l.scorcia@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260215_233328_657621_00E2BD47 
X-CRM114-Status: UNSURE (   9.34  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Sun, Feb 15, 2026 at 08:53:54AM +0000, Luca Leonardo Scorcia wrote:
> Add compatibles for various display-related blocks of MediaTek mt8167.
> 
> Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,aal.yaml   | 1 +
>  .../devicetree/bindings/display/mediatek/mediatek,ccorr.yaml | 4 +++-
>  .../bindings/display/mediatek/mediatek,dither.yaml           | 1 +
>  .../devicetree/bindings/display/mediatek/mediatek,dsi.yaml   | 5 ++++-
>  .../devicetree/bindings/display/mediatek/mediatek,gamma.yaml | 1 +
>  .../devicetree/bindings/display/mediatek/mediatek,ovl.yaml   | 1 +
>  .../devicetree/bindings/display/mediatek/mediatek,rdma.yaml  | 1 +
>  .../devicetree/bindings/display/mediatek/mediatek,wdma.yaml  | 4 +++-
>  Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml  | 1 +
>  9 files changed, 16 insertions(+), 3 deletions(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
