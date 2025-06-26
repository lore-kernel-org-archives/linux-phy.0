Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3C82C7EE33
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jun 2025 00:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NL2cp9utXaMe+AEnl4rXqsJkEDSwgdbAaejyI7xbM6w=; b=hsrOltKBSye6fj
	gy0Z8mhXxgLdorFMoJ27BMCkFet9a8nrH7n1/CjfTCpODfxbQdwE9FAk6OpmvR1YSfANjDJ49Uerj
	dstKV4UJBzsc+E8ZsPZUMwjp+cqgpHlsacnlQq0qvXwlWz6fp01qBfn8K7Ph/VfiT2N7MImOW0nJ5
	FtKxbKmZ05YseCXHvdJFL4MM6T0y1g1nAuOjpRwc0G579pWk33CyJAatP2KmOSPnvWnY1+qcfEHbI
	Q9ceOEwCYri0XO9mI20fYiyEABsNb1Yfwb2dokSUGQ6QkAcC8pOF5sPJm7b2Mcyhi9m8nG6ASnNr+
	DdPazpkKXz+fiAeWRQgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUx3U-0000000DDcl-39al;
	Fri, 27 Jun 2025 00:35:00 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUw4Z-0000000D3zV-2Jdi
	for linux-phy@lists.infradead.org;
	Thu, 26 Jun 2025 23:32:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C32FA5C63E5;
	Thu, 26 Jun 2025 23:32:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55037C4CEEB;
	Thu, 26 Jun 2025 23:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750980722;
	bh=ckM1z62+dzERRsA8njW/QMC1vRSg8enjDPrdmoz/Lmo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rHIlbWpCPNwmNcL0HYK9yTLEIH5uOmpr090lt3qNIXx6tVE8EA61pGmhTQCt/H0eY
	 UwFVgz/MDPsX2y3lVhHsJSWuA7LYJ4SqKB+EQluFhxP8YxaTk23J0vYc6aacoF1Wfp
	 5j+ZCxFhZ38o0LZDsw21Ck6GNtVVcdnZTID6ArKUaB7SiyHkNi/uM5iJZkxc1plqG0
	 jrn0dUpbD7fLllsOdKjNSojE1a5kmwLZdPaTfj3w5Cm1x1ydHGrSThA4+voXH/ZGgv
	 tDSv8NasuyOyH6bFxSKDkjUCKc3L16JFMCH054gUlY1IksSRu/TqlHPTmGbQ7rUGxt
	 6bd4N0d6PzSrA==
Date: Thu, 26 Jun 2025 16:32:01 -0700
From: Vinod Koul <vkoul@kernel.org>
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Cc: Jyri Sarha <jyri.sarha@iki.fi>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jayesh Choudhary <j-choudhary@ti.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Francesco Dolcini <francesco@dolcini.it>,
	Aradhya Bhatia <aradhya.bhatia@linux.dev>,
	Devarsh Thakkar <devarsht@ti.com>,
	Parth Pancholi <parth.pancholi@toradex.com>
Subject: Re: [PATCH v4 04/17] phy: cdns-dphy: Store hs_clk_rate and return it
Message-ID: <aF3YcUfnagD9rHvR@vaman>
References: <20250618-cdns-dsi-impro-v4-0-862c841dbe02@ideasonboard.com>
 <20250618-cdns-dsi-impro-v4-4-862c841dbe02@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250618-cdns-dsi-impro-v4-4-862c841dbe02@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_163203_637465_3D2325B7 
X-CRM114-Status: UNSURE (   6.58  )
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

On 18-06-25, 12:59, Tomi Valkeinen wrote:
> The DPHY driver does not return the actual hs_clk_rate, so the DSI
> driver has no idea what clock was actually achieved. Set the realized
> hs_clk_rate to the opts struct, so that the DSI driver gets it back.

Acked-by: Vinod Koul <vkoul@kernel.org>


-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
