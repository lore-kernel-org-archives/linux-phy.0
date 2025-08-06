Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49BAAC87FCB
	for <linux-phy@archiver.kernel.org>; Wed,  6 Aug 2025 11:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S4h2X+xHGU4JdnPhTEGiCTYfxy9eC81e7Cjxh6SeZNg=; b=k1NW+f7hlRcJlg
	1NGdKB/MMmL7lPT+gL9Spip3jBDJvxh3quf+/aSVGQwYunNHFkUFIG/lUCXZlFxmrNOFgGk6uISdL
	YCrfE6YO5eXymozLBPpJctFY3H1LKlu+iuvv+7ZjGRf2oxYvCTlJtvKhARrNINmkJyO/LAu3KU1ca
	c2lLM8OTJ1Se21dW1gRzGW6ukoPnHY8jRMuQn/diRRzZAdQ+q5iSl4xLb0gUd++YqA/XWuMu7VwsQ
	ZluFEmG+3Y5/jkafcMzxI7KJATLFoIRx5vDfIWR3TTe5+RP/sTfi8wx7y7LlA82nnYtbuJUWF61Bx
	w/CEiSAe/Y1fgKxfMiGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujco9-0000000F4zl-4BOa;
	Wed, 06 Aug 2025 11:59:49 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujbmn-0000000ExTc-3LNa
	for linux-phy@lists.infradead.org;
	Wed, 06 Aug 2025 10:54:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id B2A13A569C6;
	Wed,  6 Aug 2025 10:54:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0120C4CEE7;
	Wed,  6 Aug 2025 10:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754477660;
	bh=i2uI+lUBfjiSG+v9KMFT8zJfDvUFVH+PsQfODjy3ias=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tKGApy0lewt7v918KB25guqvipI+Nz5f2IgnqBt6dnZVP1TaS7PhzA98LjNkDbC0X
	 gO1+GGthaP/bwlVW48oUqO7M71/s8nUQ82LzuVXYf+kjvjwNfFWOtmPKzm8kV3ZFuv
	 GEUoBoenKV/oTkp4DrH0kM5BXx/E1rpMS4iRpwTO05iV+lBwfGv/D+hvAOAo/n/XhX
	 9Gf2rp22cND8P9EZ+DF1zGo4ZjssN6zXYaPbaKjeYvFEYl3hdakuVY4Ba+FNa011Iz
	 zNZRFGeZQo/MRktAZxlcLfCxZxDEG7jTURd1aCfP/pGvwTIM38BZlE4FIsNy1+A7Bp
	 q3O2y8WeHhpaw==
Date: Wed, 6 Aug 2025 16:24:16 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Parth Pancholi <parth.pancholi@toradex.com>,
	Devarsh Thakkar <devarsht@ti.com>,
	Francesco Dolcini <francesco@dolcini.it>,
	Aradhya Bhatia <aradhya.bhatia@linux.dev>,
	Jayesh Choudhary <j-choudhary@ti.com>
Subject: Re: [PATCH 0/2] phy: cdns-dphy: hs-clk improvement and a cleanup
Message-ID: <aJM0WPVDUkte9E_D@vaman>
References: <20250723-cdns-dphy-hs-clk-rate-fix-v1-0-d4539d44cbe7@ideasonboard.com>
 <cc0e4cf5-1bd9-4ae3-a130-0483dbfc6335@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cc0e4cf5-1bd9-4ae3-a130-0483dbfc6335@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_035421_898509_AB3371DA 
X-CRM114-Status: GOOD (  15.01  )
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

On 05-08-25, 15:03, Tomi Valkeinen wrote:
> Hi Vinod, Kishon,
> 
> On 23/07/2025 13:01, Tomi Valkeinen wrote:
> > A cdns-dphy improvement to return the actual hs clock rate, and a
> > cleanup to remove leftover code.
> > 
> > These were part of a Cadence DSI series:
> > 
> > https://lore.kernel.org/all/20250618-cdns-dsi-impro-v4-0-862c841dbe02%40ideasonboard.com/
> > 
> > but are now separately here for easier merging.
> > 
> > Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> > ---
> > Tomi Valkeinen (2):
> >       phy: cdns-dphy: Store hs_clk_rate and return it
> >       phy: cdns-dphy: Remove leftover code
> > 
> >  drivers/phy/cadence/cdns-dphy.c | 24 +++++++++---------------
> >  1 file changed, 9 insertions(+), 15 deletions(-)
> > ---
> > base-commit: 89be9a83ccf1f88522317ce02f854f30d6115c41
> > change-id: 20250723-cdns-dphy-hs-clk-rate-fix-a8857a5789dd
> 
> Is this good to merge, and if so, do you have any estimate when? While
> this is independent from the DSI series, I'd rather push the DSI series
> into drm-misc about the same time, so both would appear in linux-next
> relatively together.

I will start taking patches after merge window closes next monday, so
next week should be a good estimate

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
