Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 899F4C369AB
	for <linux-phy@archiver.kernel.org>; Tue, 15 Apr 2025 13:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SqF/RkGsDTTVwIH/FeIBCWaUNs9w+C2nl/jF/ACS8+Y=; b=3c/w7aD7rkPZH4
	ID5KQ6JovHthGJQacw//nUEhmL5kI7tmLvINUyrK5Jge7ZVmZzyi89Em3zWdeXtgghU2E+qD8soo9
	Ho+E/En9rMf2SkqqQyDV4touKxtvZ4Q78bQZ9ODyzV6aTRib5tOFEATJZrsnQdptMPifjv+yz1wBO
	1iUJnQpEZA5X85drA5/tkPy/KRhWT+p4XvOLDeLs20J23NPi66n6wqgGBYTXUPHyHfRf8l4jYdttm
	YRh6FtaNSBWcyH/PkETEXyOoboEIFghYIHugF49/iYBCuVDqjJ5PN3xcaXLsQ7xEeb6kem1RjjVLB
	CVlje0oPeWssUxd697Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4gQG-00000005vd9-0e54;
	Tue, 15 Apr 2025 13:33:56 +0000
Received: from out-184.mta0.migadu.com ([91.218.175.184])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4gGJ-00000005tYz-15TE
	for linux-phy@lists.infradead.org;
	Tue, 15 Apr 2025 13:23:40 +0000
Message-ID: <73b7af40-92e4-420f-81f1-3cd41c4a6920@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1744723416;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6+3VXbGj0V9Ezv8q+AT06eZN7LwpyfQrVtRO6evgNd4=;
	b=wbTneSf0te0y+CPrdj7NcTSVnzzmgQfpHYz86lU4OJ3C2NrH9hGo8mlPrHerH93pEx7jeL
	nLvf8bjiNPClJ9RWSfgcpTzAOC0sQ/zcMzglfSjz+9Dl+q75Khzqc3d7kktxS2SyPiR3Fk
	ICkGA7xR3vpHAKJlFAB5iNNnr7yZKRM=
Date: Tue, 15 Apr 2025 18:53:27 +0530
MIME-Version: 1.0
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Aradhya Bhatia <aradhya.bhatia@linux.dev>
Subject: Re: [PATCH v3 10/17] drm/bridge: cdns-dsi: Update htotal in
 cdns_dsi_mode2cfg()
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Jyri Sarha <jyri.sarha@iki.fi>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Jayesh Choudhary <j-choudhary@ti.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Francesco Dolcini <francesco@dolcini.it>,
 Devarsh Thakkar <devarsht@ti.com>
References: <20250414-cdns-dsi-impro-v3-0-4e52551d4f07@ideasonboard.com>
 <20250414-cdns-dsi-impro-v3-10-4e52551d4f07@ideasonboard.com>
Content-Language: en-US
In-Reply-To: <20250414-cdns-dsi-impro-v3-10-4e52551d4f07@ideasonboard.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250415_062339_442319_82B15657 
X-CRM114-Status: UNSURE (   9.07  )
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



On 14/04/25 16:41, Tomi Valkeinen wrote:
> cdns_dsi_mode2cfg() calculates the dsi timings, but for some reason
> doesn't set the htotal based on those timings. It is set only later, in
> cdns_dsi_adjust_phy_config().
> 
> As cdns_dsi_mode2cfg() is the logical place to calculate it, let's move
> it there. Especially as the following patch will remove
> cdns_dsi_adjust_phy_config().
> 
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> ---
>  drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
> 

Reviewed-by: Aradhya Bhatia <aradhya.bhatia@linux.dev>

-- 
Regards
Aradhya


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
