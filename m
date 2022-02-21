Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC958C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 21 Feb 2022 14:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pDjRVDiCUTewo9Sf4wEFOXQTa3Syk8swvRDSRkXZdxw=; b=P8i4w4/uq/B4Ue
	mqr6FiJThlBqaeo45DAo2t2BoTw+Z7ZK1LsXPa0hytg7/DHzOAoO45SCsne2t59R+pHAB4EhnqIgB
	P6vePm3Z83F8CMXT41q8V0VvYSYWrgrC8uEdHodJ40DPPDAL1ekH0kJCW5vwRnOoRP0fF3AApufOC
	YArxXlV+xZCevyLldZVTXBsYY1OSk8Ftj8mBM7YsZVWXGLfPnjpINRu5cv+ZVPGya06MBuhKf3xvC
	S25AlWmskLFvQxsMpVu0mcwtfjRWJSLROsbfAQSUGFhnnPpTxSaj9l0zAFq8RbXcomRxdb+UdiG4l
	muwTGlbH+WTTpGYRrQsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nM9iD-006CoO-Ul; Mon, 21 Feb 2022 14:30:49 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nM9ht-006CcI-7e; Mon, 21 Feb 2022 14:30:30 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: kholk11) with ESMTPSA id 944931F437B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1645453827;
 bh=91cTuA3z5y+Z5jMthJlpUAzmj/zwaz1zdpB+AZ6dNNM=;
 h=Date:From:Subject:To:Cc:References:In-Reply-To:From;
 b=PfKzwcTBOutMCbgTPv4LP6kwxiX1XEl07xN5aFfttfSyi1hGOcC3IcVZRs4g2nkO7
 mxCVKbjmMkaTMdvFgAM4mwWNROVRGv8khhBoyzuVQ1Yo92StwEKeD+9nYMvvK737L/
 7QaL0es5xbusioUShM13dGYyqVJqz8LZkBk1eGH5dAzp7i5fHbCQhuvuSjCNf/TaoK
 qIl1aZXSSHSl6YXYxvy4cDqXMrUhaCCzcBIGdbWMv1uqc6Of32yCUv8QmJbLtL9/Sz
 awzwtR89svK3u9DowDOdFCJFeohBzUpUpyEKvwxWPsVUSENfCGqgacP//17KRlUZ1Y
 WJ60mSufzGLjA==
Message-ID: <2518891f-7d5c-f57b-0837-10f0e55f72cb@collabora.com>
Date: Mon, 21 Feb 2022 15:30:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH v8 05/19] drm/mediatek: dpi: move dpi limits to board
 config
To: Guillaume Ranquet <granquet@baylibre.com>, chunkuang.hu@kernel.org,
 p.zabel@pengutronix.de, airlied@linux.ie, daniel@ffwll.ch,
 robh+dt@kernel.org, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, matthias.bgg@gmail.com, chunfeng.yun@mediatek.com,
 kishon@ti.com, vkoul@kernel.org, deller@gmx.de, ck.hu@mediatek.com,
 jitao.shi@mediatek.com
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-fbdev@vger.kernel.org
References: <20220218145437.18563-1-granquet@baylibre.com>
 <20220218145437.18563-6-granquet@baylibre.com>
Content-Language: en-US
In-Reply-To: <20220218145437.18563-6-granquet@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220221_063029_443799_54762745 
X-CRM114-Status: UNSURE (   4.53  )
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

Il 18/02/22 15:54, Guillaume Ranquet ha scritto:
> Add flexibility by moving the dpi limits to the board config

s/board/SoC/g

After the change,
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

> 
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
