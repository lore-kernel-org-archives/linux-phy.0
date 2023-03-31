Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2FD1C76196
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 13:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qvpUJhbGBrXt8aB9Yt7oFsxtNYuAJM+gV81wpD5WtTY=; b=bEIL2KkUNi8Wo/
	vS0Zf/QtAycHXHb772Mg2kb8IkPZVJ9r1a3YcPTyg9we4oPTbmHbnO8+IjhyvEWzapm0MXsq1PQpZ
	/j4qOtoi7sxwiy5C4K/5gSvyH3O6iy4dWJQiA0/mLq1rsRHHsjeMMuzN0748eVYpOEWZfxqwyvdA5
	bAPn8/dKovttfEfQlkRIOgtvztxYIsb/mzUWkvS4ph8AtyIEx6Ll28NAF1azi8qpVV+CN8csyy0J+
	jxsvx/3xf1BlFB5NqZhtu65ODvVdqia7GJwxY7uhW100f6GdWBCbt891dOtsQJJe2gtHE48kyJIpu
	PQMTFL3jkrig5Sf/9+1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piF5L-007ZZ9-0z;
	Fri, 31 Mar 2023 13:46:31 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piF5I-007ZY8-1z
	for linux-phy@lists.infradead.org;
	Fri, 31 Mar 2023 13:46:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1811662953;
	Fri, 31 Mar 2023 13:46:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C16EC433EF;
	Fri, 31 Mar 2023 13:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680270387;
	bh=WvSCb902nMnpOOHpQb55tfRom86bobvNd9VxcVpayD8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FM4Oj6vV3l53BHlnTiIHj/d4cSR31Xgf4qeTWY4Hl0H2jQcc9fJ47l67lBGfMAkGV
	 x6i3Wez+PxxqaFGM9cLWtWP3blM9dro2QqRbURynrICK1jGzDmwxewhESeoPWWTKND
	 ujSXbxjxuc7e3WuvhlC7O1NvMmoHT9Th2yMmBVe7MGSxzsSLHMaRAEpIOgq+N2s0R0
	 cVwYypMsxUvuv+zpj/NGt4uDGZC3j4WYIdiywzPFNnJjMSumPV+7d90tjA5DoGt8uE
	 auK46+SyzRuG3tr+siKFpqTIDy1gE/7Pt4dRpC/xVG7Ol9kUd/bvSJ5xJrEvlWCvPF
	 Ow1uh8t1SpaJA==
Date: Fri, 31 Mar 2023 19:16:23 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Swapnil Jakhade <sjakhade@cadence.com>,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 1/2] phy: cadence: Sierra: Replace `clk_register(`) with
 `clk_hw_register()`
Message-ID: <ZCbkL02etVCcQ1vW@matsya>
References: <20230326011416.363318-1-lars@metafoo.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230326011416.363318-1-lars@metafoo.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_064628_688189_5340C814 
X-CRM114-Status: UNSURE (   8.25  )
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

On 25-03-23, 18:14, Lars-Peter Clausen wrote:
> The `devm_clk_register()` API is deprecated. Switch to
> `devm_clk_hw_register()`.
> 
> Since the driver enables its own internal PLLs using the clock API we
> still need to get a reference to the PLL clocks using the
> `devm_clk_hw_get_clk()` API.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
