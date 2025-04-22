Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17485C369D3
	for <linux-phy@archiver.kernel.org>; Tue, 22 Apr 2025 15:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I7gnABLQHcqmiOnlYdvHI8Wc3iHa/e+JST6A4VxJQB8=; b=jB6HptdWVI3Zk5
	sk3zTJRUSmUB8c29dc15sfGwuPtveSHTzyWxat/YgI8JAqHExOdR+OHb00zegjT6ADmj7sUEPuzZH
	4sY9C5PPGrBRw5osgHht/2Ps4LJJouSQE4QLkkqHkQdJSyeNoPtkOfBwPgjEM0vpiYmJti7CvBa41
	UtN7T884x2nU00GwrLfpxxeGu7xYS+pnItLry07INey1kMd+SR/YYzxdK1nvUCxlgg8Q+UO+VH50v
	x05j1F9Z9dPmglrGFcaTAF2AKrHJtafc/kbcuCbUOkamWUlowgNwkHOB3OpGQVLaVpOXJOaNGozjr
	wJaMoaQIqfJWc26ORhlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7FFL-00000007dpm-3YpX;
	Tue, 22 Apr 2025 15:09:15 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7DjK-00000007JQ1-10bN;
	Tue, 22 Apr 2025 13:32:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1745328724;
	bh=LKMZUu3lsZhsa211mHfM7d9uBlEp2aX25uT7PabbRUg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=hqUwLXL5sCew5VGG9VlKawU3nK/XKVmyT8J3g9Kvz2cTRySHgL8LlMbcQlm+kZ0ph
	 VgSfxHwIOC7nDXdogrzLE2iwjdWXg7FocoCD0eYEGrY4Pdq+OsH34Hdru74vrwvvoO
	 qWD19ETYw5FxnPrjZfDPdzWAQ9dtrvR3/xdgn4Srk0yvnyTvfZZbMjb47v0qfs9wxn
	 o3MmrZD98OG7d1nVH8MXn0MBYx5XCUL38N3RMJY6E28fCqqVybyGv1gR7H/RnWZn6O
	 CfiYggqhpedC/9aqq0UuScuUQpxLlDP1qYj9WOgrWEWFUeEN9QcOTIFX8/iYnItDAn
	 CVffwIyyHyxYw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B4BC917E0CAB;
	Tue, 22 Apr 2025 15:32:03 +0200 (CEST)
Message-ID: <6f7f922e-1a25-4546-b081-835b5140aac8@collabora.com>
Date: Tue, 22 Apr 2025 15:32:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 7/8] arm64: dts: mediatek: mt7988: Add xsphy for
 ssusb0/pcie2
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
 <20250422132438.15735-8-linux@fw-web.de>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20250422132438.15735-8-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_063206_454380_98DC468A 
X-CRM114-Status: UNSURE (   5.30  )
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
> First usb and third pcie controller on mt7988 need a xs-phy to work
> properly.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
