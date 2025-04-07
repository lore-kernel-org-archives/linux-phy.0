Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 068E2C369A1
	for <linux-phy@archiver.kernel.org>; Mon,  7 Apr 2025 18:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T3dPVl4d2OFk2n3s2ko/sSnmjLe5E5H7xRY1QCKqzPw=; b=tpS25pMAY9tfEv
	Lw8fnfXvQ+VvihrQPwcpDzfH4C99A6B8w3nif1v9kG7ctnQhcBQAxbZT2hy1dwIXMmcEjind1m4V8
	kDWaQ4WYGJH6J3+m5z0itlpDBw0cAvQxU89f7j4lNT0WtOtybPKoJ0jfdHEWZVEccVzf8Y3I5lk9V
	B99eahguZRRONnGSW619zbWB86Uhn3NeuXgnug+ehJg6NUocnPWyqRn8v8mhJM+JIZ53RbxKvuXp1
	n4ZCCSc6KNq9zzXkzMlPZKJh8CsUlGeqJMvvrA4/75eDWYAmEp9hWwIsEgLpyQytcaJMU+I/yACAv
	oowgG5XfR2g/qiz2fX3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1rZT-00000001ewl-2SIg;
	Mon, 07 Apr 2025 18:51:47 +0000
Received: from out-179.mta0.migadu.com ([91.218.175.179])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1q8z-00000001Lmk-42YW
	for linux-phy@lists.infradead.org;
	Mon, 07 Apr 2025 17:20:23 +0000
Message-ID: <3fdfd450-6624-4621-bcae-5457da7cacc7@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1744046419;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KXRWft0X5vqZc806dG3f8UT9bd4FnC+vOrHSKFqZhi0=;
	b=CWbW93grZ9qPup6CaE6mEnjqWauqK0oVhtuflAXlR3ZkbwO+FDKQwsH4kdb3oJ0feFh8QP
	4QZOrDXBmVQcqjUvzOULDxa1Ln6FPbuZ03uuDbICGy8UBZUj7Hy/KZdzcZwtiK9CY9pHHa
	muZIk67GG8PrVwJNg9sU5aWN4x0RaeI=
Date: Mon, 7 Apr 2025 22:50:09 +0530
MIME-Version: 1.0
Subject: Re: [PATCH v2 03/18] drm/tidss: Adjust the pclk based on the HW
 capabilities
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
 <20250402-cdns-dsi-impro-v2-3-4a093eaa5e27@ideasonboard.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Aradhya Bhatia <aradhya.bhatia@linux.dev>
In-Reply-To: <20250402-cdns-dsi-impro-v2-3-4a093eaa5e27@ideasonboard.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_102022_151406_AE014ADF 
X-CRM114-Status: GOOD (  13.19  )
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
> At the moment the driver just sets the clock rate with clk_set_rate(),
> and if the resulting rate is not the same as requested, prints a debug
> print, but nothing else.
> 
> Add functionality to atomic_check(), in which the clk_round_rate() is
> used to get the "rounded" rate, and set that to the adjusted_mode.
> 
> In practice, with the current K3 SoCs, the display PLL is capable of
> producing very exact clocks, so most likely the rounded rate is the same
> as the original one.
> 
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> ---
>  drivers/gpu/drm/tidss/tidss_crtc.c  | 23 +++++++++++++++++++----
>  drivers/gpu/drm/tidss/tidss_dispc.c |  6 ++++++
>  drivers/gpu/drm/tidss/tidss_dispc.h |  2 ++
>  3 files changed, 27 insertions(+), 4 deletions(-)
> 

Reviewed-by: Aradhya Bhatia <aradhya.bhatia@linux.dev>

-- 
Regards
Aradhya


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
