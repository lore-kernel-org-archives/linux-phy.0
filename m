Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B64A6C369C2
	for <linux-phy@archiver.kernel.org>; Tue, 22 Apr 2025 15:08:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BW599C9HJyT0/G7/2jvSRSnxECWwHBmSMBx1ACYhtzA=; b=AVMW2qr3ws6uWV
	h7piJj/W/Ul7InWi5F3QtzbGRNt0r3WcRRxbI1SKhbBGAirJEmiygXJfqrioNO+VAK/E0vVMlqgPb
	oF4+8hjG8Sz82+OehccxX0EKNAeGPeXDanKGw/ZVtjxGJ5p4mJhNendrFYsQcs3O6KREsOZvY5gGe
	e3HCRQ/7Rhpg0YTFOX+jQPNUoZdLvXkLXLf68o6aA8LczOXKtSkX6ufIecEjJ2s0UkONk0NLlBk8X
	aI8U5W/kxnfjP4fZ1odFNGcoxVDlKUSf7tCAWmz0I6sqP0PU4xijXjaWn2mbF72X7E7x/3wa2WPUz
	wkcrKh+98gqbfFXCdkfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7FF0-00000007dhy-1kvA;
	Tue, 22 Apr 2025 15:08:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7Dis-00000007JKZ-25xp;
	Tue, 22 Apr 2025 13:31:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=9GSbFCnYwRoEJfanRXiJaNF7D3Gjr/FVdsfwNQdE0Qs=; b=g5E/mHe+2rukUAB8dOcWlwcYaQ
	n5vuv3qAo5RMQ/6LGqQSicvWVvIoXA4BNvaxQDo7ZNvc0XBISdf1brvoPuY2aJY27RiUmZzDoFRz3
	KTA8vIP/EpYzuQnCk+Zf9VkUAE4IQHsHF451VLxZjoWuUbN1QAaETsoM85t6JMu0w+djW8i31Z8Ka
	XxcdQ5AHQE09vvZUhPPrFgh9EAY+Ew+RMObBTFViguGoVI/LxvilxAO3AdfKAiDjEXNiv9aqL0tCe
	pfOMmMLDSyaHp+RWX8dzTga8UmuUFEGj0begJ72SRKgawV8G4TlxrYZzl/T6xYygZ1/986M+wS5Pz
	PAG8qbYg==;
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u7Dip-0000000BEZY-1ux0;
	Tue, 22 Apr 2025 13:31:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1745328689;
	bh=uxRkFn5GGKR61GJD29fIEi4WrE6zCuwdOIW9qIt7JBo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=lovIi5E1jC7zJKuQ6of3+VK0ExG/J9aKGlb5sZEArNGaWTyUq6BCmf5XeGZU6bN/p
	 Cqrk/qwHyBaHk6amES/goBhjixOpc+OjCVezFDV2jzXIRtNUUN3tTJdhkBQYrQtLNJ
	 T8MxuluL6Gz/GGwHR43MJZnKdXBgtHFHlK4Qj9LTSpFFC69t1u5eRh9qshFRF2wBeJ
	 UNxfWV9+JKkhriBQDYMnHzMaTSyKufJgyAq02Zl7KXZARGc0sIKaHtishJLdu3zvaL
	 XNI2g6bb9UuetSIC8Gc4PdjkLt0nubuxNluqPfeUzWaylcCqaspD634eI4K5pg7Foa
	 nHWlgGdXmwagg==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id CDA8117E157E;
	Tue, 22 Apr 2025 15:31:28 +0200 (CEST)
Message-ID: <98b14dbe-a8c5-4f6c-99fd-209d714c8194@collabora.com>
Date: Tue, 22 Apr 2025 15:31:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/8] dt-bindings: phy: mtk-xs-phy: Add mt7988
 compatible
To: Frank Wunderlich <linux@fw-web.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: Frank Wunderlich <frank-w@public-files.de>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Daniel Golle <daniel@makrotopia.org>, Sean Wang <sean.wang@mediatek.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org
References: <20250422132438.15735-1-linux@fw-web.de>
 <20250422132438.15735-4-linux@fw-web.de>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20250422132438.15735-4-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_143135_708714_1FC64AC4 
X-CRM114-Status: UNSURE (   5.28  )
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

Il 22/04/25 15:24, Frank Wunderlich ha scritto:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add compatible for xs-phy on mt7988.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
