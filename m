Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C2DEC87FCA
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jul 2025 20:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eW8fSwV/Qpk6eYDW9h5OTJOQPfE+sgkaLA4l8OlYYow=; b=hCEx1oQ92Pfg0T
	quiXXnd4Z2RBjhK4ZtOuPAqTcLdR+Huy79I/X+5knNmabnlO6qZNxpTfF/WiQ40lT+/DVYxkbSdkd
	QWk4lo1XvMugdlgC+u9JV/hxAjWzjED1Mja19SC87ObjtMzmio7CuLlGtRrfBk1vvRKBi6R5oNl7R
	CpaZqlmp0gDpIk0DbaTTqqb9PQ+JrPVxzEKo5Q82HDAw8FejUeyBjlv4P/c7Q+cqVnzXyFO1ng4U/
	gRFKI5TkZVpsGOLh0pX1/l0eB8xQuJSokSygsaPe75J8aMkDDlpaonXYoKru9v3Zb+zvTswzt7Ek2
	vqjwc+XIHSXuEOOovQIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufP2M-0000000Advi-0DdK;
	Fri, 25 Jul 2025 20:29:02 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufP2K-0000000AduR-0HvJ;
	Fri, 25 Jul 2025 20:29:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 72A155C6410;
	Fri, 25 Jul 2025 20:28:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBE74C4CEE7;
	Fri, 25 Jul 2025 20:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753475339;
	bh=2lR8zBkPfCL0XzsAZKYS6/0c97bv4h+0epH74tNqB9s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Nmhx7Z8/FBwNijNFPpZf4SqJoOStQ0XsxTd/CcwodEvheITYeVzDATI0vkqopVZpN
	 ahWJcPhWgy+F6oKOWucoyS8HKVtTZ65qkKO8rnMdpLbkTDaCq5kdB43VdABXLgIuDr
	 AM/H9YWG4msnlSmTFWa7aBLB+g4755Mt+4XTP+zmXW/Yj4MklkggEMOnWzWa+wULQ5
	 WGiC6obE6FEykCeFOOC0Vg2eGT4khYCcJCTXm7Kcot8eL3Y4GZ6LqEPpW7zeM7EEVS
	 8NizKGJ9SwGA6+f9JSlBLusqpEgsBUK4k1GQ/Wm6GpWdOOeE//dPy40IOSp7ZOPZfq
	 Lrk5Ir8nxLrrQ==
Date: Fri, 25 Jul 2025 15:28:58 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-gpio@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, mripard@kernel.org,
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
	daniel.lezcano@linaro.org, krzk+dt@kernel.org, vkoul@kernel.org,
	chunfeng.yun@mediatek.com, tinghan.shen@mediatek.com, arnd@arndb.de,
	herbert@gondor.apana.org.au, shane.chien@mediatek.com,
	andersson@kernel.org, linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
	linux-phy@lists.infradead.org, airlied@gmail.com,
	matthias.bgg@gmail.com, linus.walleij@linaro.org,
	jieyy.yang@mediatek.com, granquet@baylibre.com,
	maarten.lankhorst@linux.intel.com, mchehab@kernel.org,
	linux-media@vger.kernel.org, tglx@linutronix.de,
	conor+dt@kernel.org, jiaxin.yu@mediatek.com,
	frank-w@public-files.de, davem@davemloft.net, sam.shih@mediatek.com,
	broonie@kernel.org, kyrie.wu@mediatek.corp-partner.google.com,
	chunkuang.hu@kernel.org, eugen.hristev@linaro.org, simona@ffwll.ch,
	andy.teng@mediatek.com, linux-remoteproc@vger.kernel.org,
	tzimmermann@suse.de, mwalle@kernel.org, ck.hu@mediatek.com,
	houlong.wei@mediatek.com, p.zabel@pengutronix.de,
	olivia.wen@mediatek.com, jitao.shi@mediatek.com,
	mathieu.poirier@linaro.org, kishon@kernel.org,
	jassisinghbrar@gmail.com, sean.wang@kernel.org, atenart@kernel.org,
	fparent@baylibre.com, linux-crypto@vger.kernel.org
Subject: Re: [PATCH 06/38] dt-bindings: timer: mediatek: Add compatible for
 MT6795 GP Timer
Message-ID: <175347533780.1836400.4840892261408767765.robh@kernel.org>
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
 <20250724083914.61351-7-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250724083914.61351-7-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_132900_137017_C4697156 
X-CRM114-Status: UNSURE (   8.68  )
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


On Thu, 24 Jul 2025 10:38:42 +0200, AngeloGioacchino Del Regno wrote:
> Add a compatible for the General Purpose Timer (GPT) found on the
> MediaTek Helio X10 MT6795 SoC which is fully compatible with the
> one found in MT6577.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  Documentation/devicetree/bindings/timer/mediatek,timer.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
