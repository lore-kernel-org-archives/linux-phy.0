Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1732C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 21 Feb 2022 14:33:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BMWIK4c9NdM4ZFGfGuAR0FVtcTgptoV9QkSKE2OCyVE=; b=atzMYw3G0Ymmof
	eNtswOO2BGgyT94Fz/KM8qYqXEOdSOtCbeGOr5SmORlnnR770KP4s8brMCD+idbGGTQsu7ixtUQUI
	hiqRMkJjXgnQKX2jmLhjLnZl+dDQ3v9M2AkbFx9V+SNt1iUXo7NoYvugYE5A99uQUoMqRrI6CA2+S
	GaACM/TsuFhZdwXKTyyRg9bYOKf1bSJN7bYqoO+Fkd5XN/mjTsayfrdYlr00BpPyAxRscObS19fi8
	YdwsCVwpZUJw2Z4E9mIoGoP2tG1cUVZDd6qaj9xO9ZAJYQz4i+jkD2YdqbRW5OeblAzWcz0p2zGql
	5UoCGfGQ0WC+6seh++BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nM9kz-006EcA-8N; Mon, 21 Feb 2022 14:33:41 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nM9ip-006DBQ-Sp; Mon, 21 Feb 2022 14:31:29 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: kholk11) with ESMTPSA id 8B3F81F437D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1645453886;
 bh=y5t0agtu6l3qWSmQbVWo6rSISFkXfwEvCQiHR69W0oA=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=oAFQm8l/ot0FPP2f89ruUayorvCOSwkBuo+0qBQEE2bE0qQrd4Z0wnDvJpvyj0slg
 kvrLWe2fqj9v5chmvz2Sy25pYYMnBTAb2TZuYG1efeNuKrguK+FTB7AjsQUKx+ycrN
 7SZ6TBQTUgkYG1iWVcnkBLgPIJ903yxFalYuPebQxdoO+nBN5R0ZXLQhLkPnm0ku0T
 +WicaupPFvqKxBl0azniqhiRU2u0lfcvH97/9g0jwBR47i6NsJ++E4TcycCGLlsQir
 BiHP7PX7PT9p+qh476CyD6FSJCfjQTGNoMaGZVuXBZ50+RdQarJ/SpiaIPh1iLOc1M
 57JLVqeEk94LQ==
Message-ID: <6cd731d3-1aa6-7bdd-65f2-7c32df87934e@collabora.com>
Date: Mon, 21 Feb 2022 15:31:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: [PATCH v8 11/19] drm/mediatek: dpi: move the yuv422_en_bit to
 board config
Content-Language: en-US
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
 <20220218145437.18563-12-granquet@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20220218145437.18563-12-granquet@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220221_063128_126853_D9FBE8F0 
X-CRM114-Status: UNSURE (   5.15  )
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
> Add flexibility by moving the yuv422 en bit to board config
> 

s/board/SoC/g

After the change,
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
