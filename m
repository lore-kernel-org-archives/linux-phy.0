Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82BE9C4829A
	for <linux-phy@archiver.kernel.org>; Wed,  7 Feb 2024 11:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U/3zJFjlcgSDbknmk2TUdxzS5C4rLcK2wNLC87yyyW0=; b=wvkj8N+GFr9CGk
	YVdx+sI9MOSbjswVoDEadW1D0WAc8hNGg2M9OYAiT/QhAB5umLLFVvIXlvZqBTozqYzPDQ4ONYbvZ
	LH9jU2kVuBcJYPb1BEjVQtecYDpGI109tSX+3ucowi+gus0CS8HIUIT6m5kqrq+JOWPRwiHy03ex+
	j+tCBMLCanWjRQWWJdlNBFAQ4KKJ0/V+eGZ2dKy/lgx3aqOzcSZ168uwd5iTaUOv7ktTWM9NKrwgF
	SwcceGY9VfrwOcCw2gyQ9w3I51dGvCH3psoOgXJyxrWzoOg0GLahKheXpjM3moJws+i0Iq1MGFU+H
	L4SG6jNTTJV6U9dV0igg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXfnk-0000000ARIU-0ulx;
	Wed, 07 Feb 2024 11:09:12 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXfng-0000000ARGa-3E4d;
	Wed, 07 Feb 2024 11:09:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2B24E6182E;
	Wed,  7 Feb 2024 11:09:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6ACC1C433C7;
	Wed,  7 Feb 2024 11:09:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707304147;
	bh=91DCFeQ7d3VJjnWv7geoiac+u+Qyv8mwJMlI/ARZNSg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ofNieulp1lv7S4WEoCoFFOejsfQCM/0UFI4LnmKrztj2CzYKy54049p3ECwmmLtzg
	 6BybZv6ROFqk3ejU0udD8uy0/peDzW+S8QdpKyiPYGE06/zu2xb9hSfRjaVvcJjP/Z
	 hlCazkBchNnA9ZRu5AFr8KyI4QItkouKcSImzUq+T4QNl9PBp/evBpM553rKPk20eu
	 S02Z1qtzt0eIcUdqagCdaR9RhXEUCigJ2OydxW9sSHXuQjCdpsCENcnSl/ZnDrw8rX
	 nGjFtjcQSECzWYySlTaZAFXUrUsLVriI26BAIKhTqO33DX8iiDRgbSnN42OpOjROhr
	 FiH50pSostpDA==
Date: Wed, 7 Feb 2024 12:09:05 +0100
From: Vinod Koul <vkoul@kernel.org>
To: Julien Stephan <jstephan@baylibre.com>
Cc: Andy Hsieh <andy.hsieh@mediatek.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v5 0/2] phy: mtk-mipi-csi: add driver for CSI phy
Message-ID: <ZcNk0VylU2mBsewy@matsya>
References: <20240111101504.468169-1-jstephan@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240111101504.468169-1-jstephan@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240207_030908_877821_DEC2A9FF 
X-CRM114-Status: UNSURE (   6.63  )
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

On 11-01-24, 11:14, Julien Stephan wrote:
> Adding a new driver for the MIPI CSI CD-PHY module v 0.5 embedded in
> some Mediatek soc, such as the MT8365

You would want to fix the way you send patches, the series is disjoint.
I had to apply them manually, but please fix your process

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
