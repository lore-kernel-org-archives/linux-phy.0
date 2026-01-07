Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E28DCD5858
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jan 2026 11:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lSrgtab5L2wKkYvK73inEUHlZ/GdH1Iujpy5PaU2X5A=; b=qw9LFEM6LMbKqZ
	VV0hN7SinC+Fn4xMgfKYbVxsFPS15AapOJZOaHzTP1A5tXLHzOqRANuHjGzVypm9EGKhMuzqEXRsl
	TAJIQL4gVuNZYaaVo894JIduoyJbDTU8gEDXR8cGV9CBnlpVSKURjrX8u4G2jFXB7hniOnqTqOJZc
	aoJgWtp16+THp4Wof5LGAL12/3BNuLYHj9u3+8s+cAjYh3/JfGTixQwNLbQXGPtUKginv2eG99VCF
	DopbASYHG8dxFdkEyBfX2wvywcbfzkcBstC5nYtEgC8xsuxrz1p1GUUAgJjjHYlKR6rRQge+NTUW6
	m7797F+eZb7RAyNTClfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdRUa-0000000Eo37-2tVH;
	Wed, 07 Jan 2026 11:14:20 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdRUQ-0000000Envy-2Yfw;
	Wed, 07 Jan 2026 11:14:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1767784444;
	bh=bYV4b7T0FejKQSm2Ka3i212N2vKUTl8BqnnpMyHRYco=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=aXSGy+XqWmFIXJ079nLZ72r8uoZg543EQKy5dd/R7opmW97D4eM+v8Xgxf0C7KltP
	 qJvW5b1f+8TfJpvNIhJKWDTY7lg0kSvyM6VWgR/v4gDXvVV+mIQtDNI6hwEEVSiISo
	 5WO/LQ0XNzMRkjUTstOOCdZvYcWmwClkPjhdd8FZ0MrLJoi0A3IUiE3PDr3ngYe2Sa
	 6cfnHJWXTEDWHzc7LHa1TtHbyK4OUCQ/cmhSkqfnMiFReRay329LBBMVzzS2pbX3Wu
	 nDoAY6DqfL8OgAiD8sNJ220sUS1nqAA8H1x82EWvYSGBnrxvCBrjBmZbhYIJg/m72s
	 1rZ4857QRWLOw==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D7BC417E1340;
	Wed,  7 Jan 2026 12:14:03 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Guillaume Ranquet <granquet@baylibre.com>, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Cc: kernel@collabora.com, Krzysztof Kozlowski <krzk@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <nfraprado@collabora.com>
In-Reply-To: <20251217-mtk-genio-evk-hdmi-support-v2-0-a994976bb39a@collabora.com>
References: <20251217-mtk-genio-evk-hdmi-support-v2-0-a994976bb39a@collabora.com>
Subject: Re: (subset) [PATCH v2 00/12] Add HDMI support for Mediatek Genio
 510/700/1200-EVK and Radxa NIO-12L boards
Message-Id: <176778444383.39787.7154377336276367704.b4-ty@collabora.com>
Date: Wed, 07 Jan 2026 12:14:03 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_031413_117506_EAE90780 
X-CRM114-Status: UNSURE (   7.66  )
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

On Wed, 17 Dec 2025 11:18:59 +0100, Louis-Alexis Eyraud wrote:
> This patch series adds and enables the HDMI output support for the
> following boards:
> - Mediatek Genio 510-EVK (MT8370)
> - Mediatek Genio 700-EVK (MT8390)
> - Mediatek Genio 1200-EVK (MT8395)
> - Radxa NIO-12L (MT8395)
> 
> [...]

Applied to v6.19-next/defconfig, thanks!

[12/12] arm64: defconfig: Enable Mediatek HDMIv2 driver
        commit: 81841b41a8bcd024f77a15d0634bc229d4d44db1

Cheers,
Angelo



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
