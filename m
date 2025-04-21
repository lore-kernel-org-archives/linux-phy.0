Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 873AAC369AB
	for <linux-phy@archiver.kernel.org>; Mon, 21 Apr 2025 21:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tFqhgSM9QHYZFz5YpwcCTdBMYn5UtLm0LpOLyLgItLw=; b=XKEAI/F4wgYsjY
	b6L2EZdcvKoBN9gmDKU0gqScH5NCAdAXNa+JF4tQdgrCGtkrVSYJcra3GzcFb12vV5aDxITG3XA3C
	H1BdsgVoaExQTEI4vpVAkGtYODZWYW6DJSQA8c0/CRHsgz2aHHSwPo2saTdjaoZcqNMpiAiUQfOMq
	CyoRkBcknlT/Pd99YOZRzmLZwpzdCrfP5BG6LQtJSi/+XGOVzaYH0UFUVkejYUP7BmV6M4gRKwUOJ
	nKXM5KUYZhAbAy88nojpYuzYu/KQNSnqJ3btZeJK5Z5QyxSpeEsNTVt6TjOT8uFd9Os1Nc9T7OSgG
	YcN7/pehqyy07dgWgGhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6ynz-00000005Bsd-18Vc;
	Mon, 21 Apr 2025 21:35:55 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6ylS-00000005Ba3-10Nd;
	Mon, 21 Apr 2025 21:33:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 1E688A439C5;
	Mon, 21 Apr 2025 21:27:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3C9FC4CEE4;
	Mon, 21 Apr 2025 21:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745271196;
	bh=eqF+MyBX1r7/lOmnP6a/7aYsckU/IXClGdPLidP0oJs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=E1r+lhge0tzEevxHJYliMUA4pCBeIkPmf5Wkt4LNojU/JiCKA5pvCNqt1xSa8eW31
	 mxTASZE5jvy3k/SWBCH7C5viz8cuvj/3PlxR4i8qFTMzcogXk/rKhXAoKnOPEOIEJ2
	 m39OFF+OYi1Tknl/okIiWoTsK+JGPimADjyIyrukCfAMDZrG3opwwbyfmiUlt1hn1q
	 4xGQXEIUvHfIDU3WiJt1OEzDvZjp7sk2Jd2DgGhCGm5Ouwv/Rtk4kaTAZwBtcUEVR/
	 vCms9JX/fXMCcUOzz+tPHHdcFmFcxBawdGspQB13+pN3lqSugu54WTGg3gtg+ceEGi
	 iI5aqMbpOQWcw==
Date: Mon, 21 Apr 2025 16:33:14 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-kernel@vger.kernel.org, p.zabel@pengutronix.de, kishon@kernel.org,
	linux-arm-kernel@lists.infradead.org, chunfeng.yun@mediatek.com,
	devicetree@vger.kernel.org, matthias.bgg@gmail.com,
	vkoul@kernel.org, kernel@collabora.com,
	linux-mediatek@lists.infradead.org, chunkuang.hu@kernel.org,
	linux-phy@lists.infradead.org, krzk+dt@kernel.org,
	conor+dt@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: mediatek,dsi-phy: Add support for
 MT6893
Message-ID: <174527119351.2964924.8279076574908790939.robh@kernel.org>
References: <20250416120220.147798-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250416120220.147798-1-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250421_143318_345244_0CB37AE0 
X-CRM114-Status: UNSURE (   8.88  )
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


On Wed, 16 Apr 2025 14:02:19 +0200, AngeloGioacchino Del Regno wrote:
> Add support for the MediaTek Dimensity 1200 (MT6893) SoC: the DSI
> PHY found in this chip is fully compatible with the one found in
> the MT8183 SoC.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
