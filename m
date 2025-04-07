Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C246C36018
	for <linux-phy@archiver.kernel.org>; Mon,  7 Apr 2025 18:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7cbdPwG6EId6LdT/KfyW+vQA6AvrdtPNPDUxXB6rX3o=; b=venw7idekuHRpc
	EiG4LdA5ipMz9KP15PhRbFHRVAicQUurbH4xIH9IiDsmfEf6KEVupnqVxr2FySlZOtsmK+5O02tR+
	NH8AxWLKVHoCuMyDfwP/8XT8HlcjGlInzo3fcT3dM7IByWYW7/nsNKWBSNJxiAdb0JvICV6D+Zh7N
	AydQbOAAHPBRPUXM0/o5Yo0K2IzwOnnZluKdob4f//mxUDc8mC/kweVdqqEskCW1fjyK6ITToGCL2
	JopxQnSVU2EOxtyI078j/yQTKIDPZCB3oKqB6bQq9CvgWdVNqs1kxvJZwIP0I1hkyc/aVi3y0xbws
	HUYOYoRVdBQFF75xiX3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1rZT-00000001evl-0gwq;
	Mon, 07 Apr 2025 18:51:47 +0000
Received: from out-183.mta0.migadu.com ([91.218.175.183])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1q8x-00000001LmL-2Qd7
	for linux-phy@lists.infradead.org;
	Mon, 07 Apr 2025 17:20:21 +0000
Message-ID: <44dcfd6b-66c1-4d3d-a75a-10ff50e54000@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1744046415;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BClHdxstGh3jFQkV9pe5yGI/1UV+EncLjPVq1x2L2Gw=;
	b=Lzv9tFx5ICSIixEoc57fHyAv2E5T3JKXkYuvm+TSe6jSOZ7b09RwSYREpDN8brPDtsrclJ
	wUokCg1vQKz6NiHKtU/Rn1/br5AEkOL3dq8MxZwWiW32+dIbmZvcWgQCnJB6CSOnOFnJnE
	FO5AX1ROscTQcFArRx/CTDHXijzXWSc=
Date: Mon, 7 Apr 2025 22:49:22 +0530
MIME-Version: 1.0
Subject: Re: [PATCH v2 01/18] drm/tidss: Fix missing includes and struct decls
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Jyri Sarha <jyri.sarha@iki.fi>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Francesco Dolcini <francesco@dolcini.it>,
 Devarsh Thakkar <devarsht@ti.com>
References: <20250402-cdns-dsi-impro-v2-0-4a093eaa5e27@ideasonboard.com>
 <20250402-cdns-dsi-impro-v2-1-4a093eaa5e27@ideasonboard.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Aradhya Bhatia <aradhya.bhatia@linux.dev>
In-Reply-To: <20250402-cdns-dsi-impro-v2-1-4a093eaa5e27@ideasonboard.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_102019_906333_05AE374B 
X-CRM114-Status: UNSURE (   7.11  )
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



On 02/04/25 19:00, Tomi Valkeinen wrote:
> Fix missing includes and struct declarations. Even if these don't cause
> any compile issues at the moment, it's good to have them correct.
> 
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> ---
>  drivers/gpu/drm/tidss/tidss_dispc.h       | 3 +++
>  drivers/gpu/drm/tidss/tidss_drv.h         | 2 ++
>  drivers/gpu/drm/tidss/tidss_plane.h       | 2 ++
>  drivers/gpu/drm/tidss/tidss_scale_coefs.h | 2 ++
>  4 files changed, 9 insertions(+)
> 

Reviewed-by: Aradhya Bhatia <aradhya.bhatia@linux.dev>

-- 
Regards
Aradhya


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
