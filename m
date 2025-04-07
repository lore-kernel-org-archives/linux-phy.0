Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52BDAC36010
	for <linux-phy@archiver.kernel.org>; Mon,  7 Apr 2025 18:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EBaDgzMFi2llKg6/h2GjQmeTQrD71lFE6SuRsgk3Lrc=; b=VCkR6y9lmSH8E5
	yD7MdrJviv6B9kFVX3mqISHKiOX4HrTR6T8FMbhCTUXEhHX6zlQjvd3xKaalTMgnGIf6kcVjaRs2a
	rPjv55GiXtQrDtjrz/oB1fIoyauraHdXMadlcn0NqPctjVUk9QMJdzI5cWMhAiYqOPwboRPV9MduS
	GPbbZzF+j5MXWeZbIGr82/oCRQpjrse3Sc0NS7Rl8LyTvI6rN1nuhrqEKXXJ1rXjFHRK0eSZOSa1S
	brLhbhocaAPMWqNfdNsuC90Sc2EfNaR1CYTnztoBMwCeALD09y+jZfumu/cykJLdFZdIQTGY10vW5
	tYo3aF/vDHTCKorBj+Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1rZY-00000001f5u-3o7y;
	Mon, 07 Apr 2025 18:51:53 +0000
Received: from out-180.mta1.migadu.com ([2001:41d0:203:375::b4])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1qFj-00000001McL-0IB7
	for linux-phy@lists.infradead.org;
	Mon, 07 Apr 2025 17:27:20 +0000
Message-ID: <54304499-c5ce-4a6e-9fe8-ce7844379cdd@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1744046836;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7BoZUSQTLENy9wH34VHXkqxJQv7Mux8ViHjIKiftxO4=;
	b=CVBDKLHDxSI5+1SVXXzPderrRjq5PdrIwteBlnwDoptDqGlM0nxRosoQQcrkCu7PcEF9YY
	P4AkB6KGUv6C5EZ06H81Y29LowCJKhj9i1v3ajS043cy+Faf/6v2O6xT4BEpTRSdV5/2Q9
	D03p9gEnaUsRuGNigGcBmY9JKpbeD78=
Date: Mon, 7 Apr 2025 22:56:19 +0530
MIME-Version: 1.0
Subject: Re: [PATCH v2 07/18] drm/bridge: cdns-dsi: Fail if HS rate changed
 when validating PHY config
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
 <20250402-cdns-dsi-impro-v2-7-4a093eaa5e27@ideasonboard.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Aradhya Bhatia <aradhya.bhatia@linux.dev>
In-Reply-To: <20250402-cdns-dsi-impro-v2-7-4a093eaa5e27@ideasonboard.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_102719_251432_021BA0C7 
X-CRM114-Status: GOOD (  12.36  )
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
> The phy_validate() can change the HS clock rate we passed to it in the
> PHY config, depending on what the HW can actually do. The driver just
> ignores this at the moment, but if the actual HS clock rate is different
> than the requested one, the pipeline will fail as all the DSI timing
> calculations will be incorrect.
> 
> There are ways to improve DSI operation for various clock rates, but for
> now, just add a check to see if the rate changed, and return an error if
> that happens.
> 
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> ---
>  drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 

Reviewed-by: Aradhya Bhatia <aradhya.bhatia@linux.dev>

-- 
Regards
Aradhya


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
