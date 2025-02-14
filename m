Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3453C021A6
	for <linux-phy@archiver.kernel.org>; Fri, 14 Feb 2025 13:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jj8fxU2m3lyoiD0u0Z5fvB0tOuLTvb4aWI8jnTWHsAw=; b=SQ9cV+7UATCfBs
	a3Oc9g+DrBgBc7RqOJT8AP1Oi2Ml8cVzD0bIsgYPqMo73qGNumoNzsCTtDj3+I+Dg9r3SuVBUT7i8
	CGnb+YiM1wY4AOHOIKMCX/C1RUvUNYo3cFfS0ia1SnNpJwMFzHiEPbeZMk9fH9Ow24sR7ix9jbyiM
	4RvmOf1ZKMwcMFLtAOwos72mMs9bwi7WSgtpwwZvBWAdWDnBF1f0C6FfufP27fobRPB2z08Se9h25
	1HcZM09pqi+TZO5PLi6vO72OIpq8Oz8pGV0YO+BdBpG7iNaBrwI8M11DmDhCbWSfpeKAlLyfmQTc2
	2XjEAz9/lfcmi9pk4vXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiveH-0000000EzCG-1jcN;
	Fri, 14 Feb 2025 13:22:29 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tivHf-0000000EuKp-3ttm
	for linux-phy@lists.infradead.org;
	Fri, 14 Feb 2025 12:59:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B55C75C59C1;
	Fri, 14 Feb 2025 12:58:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B032DC4CEDF;
	Fri, 14 Feb 2025 12:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739537946;
	bh=0t4EN5GnlE4WyRk4DynmYLIny9UltXQDQoRGx9PjTqM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=XFn52XgmS1epWC9hOxanEtt3L0FzrhAuLYpbr//o3xOV1xQ7wwp2UJKeuI49v1NnH
	 ohjJRu/OQe6b5U0LutbcBtN7hMVhXUGHi012QyPt8H89EYSmTRFr+CFfw7FBzDuSqK
	 jOfYe9sQDDqLxtLzyEnXYaudKgSsVFFra32F6YGZ31K77CqZ58lPshXeGbeLmlRW5P
	 vp5UMALK/gu45HotLdB3l615ZhAA5Z9gzOCWUtZBs2Uc5Gv9Yva2gP5OpCF+giR01A
	 BMAZnHDxsYxjVPC0OQOe9d3SjxUUTzxpAVC9/EEdpIj5Y4bu7ZrFES+nwVUcmVdW5Z
	 Htm1dg2WKQ87Q==
From: Vinod Koul <vkoul@kernel.org>
To: JC Kuo <jckuo@nvidia.com>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Henry Lin <henryl@nvidia.com>
Cc: linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, 
 linux-kernel@vger.kernel.org, BH Hsieh <bhsieh@nvidia.com>, 
 stable@vger.kernel.org
In-Reply-To: <20250122105943.8057-1-henryl@nvidia.com>
References: <20250122105943.8057-1-henryl@nvidia.com>
Subject: Re: [PATCH v2] phy: tegra: xusb: reset VBUS & ID OVERRIDE
Message-Id: <173953794334.323038.6276165864210863274.b4-ty@kernel.org>
Date: Fri, 14 Feb 2025 18:29:03 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_045908_036601_F00C4818 
X-CRM114-Status: UNSURE (   8.23  )
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


On Wed, 22 Jan 2025 18:59:43 +0800, Henry Lin wrote:
> Observed VBUS_OVERRIDE & ID_OVERRIDE might be programmed
> with unexpected value prior to XUSB PADCTL driver, this
> could also occur in virtualization scenario.
> 
> For example, UEFI firmware programs ID_OVERRIDE=GROUNDED to set
> a type-c port to host mode and keeps the value to kernel.
> If the type-c port is connected a usb host, below errors can be
> observed right after usb host mode driver gets probed. The errors
> would keep until usb role class driver detects the type-c port
> as device mode and notifies usb device mode driver to set both
> ID_OVERRIDE and VBUS_OVERRIDE to correct value by XUSB PADCTL
> driver.
> 
> [...]

Applied, thanks!

[1/1] phy: tegra: xusb: reset VBUS & ID OVERRIDE
      commit: 55f1a5f7c97c3c92ba469e16991a09274410ceb7

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
