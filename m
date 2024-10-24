Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7E11D0BB69
	for <linux-phy@archiver.kernel.org>; Thu, 24 Oct 2024 07:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qHodab424kMZlTJxNJnxPsOCTYwsSvgePFsQ2Hmsfpk=; b=k4sBu9k/9imBNh
	/2HitUzTV510Ud22NrzMFWL4j8LmbwkC0vPT98uzsYnDb4UwplJtrwHosuW9SDZ0GPo2bf23TPa2x
	mHgmsZSpUe0j9uJ54nq95CTU0ClAc24tIRbDkTF2pr8nP9Ane0g0oyU0RGj7pKPAaaF3Z39TWha99
	zzYE108170YMsP6FsMzaXgZTsuNFQvcfJM521K8YQ9PttscCg13YuT9qriFxrTJK/80uo01ns4r3e
	kZSfrw4+gvEaL0s8a7GADkvRGJLxYs1+1EDbYXRrBnyvqqgWHdOxbYDbnCWCB4Zq3WI4tUQ4QQ552
	t90GOMvGBWF7ES6c3kTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3s4V-0000000H3jo-2Cb2;
	Thu, 24 Oct 2024 07:15:51 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3rxC-0000000H1lt-276A;
	Thu, 24 Oct 2024 07:08:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AE0AB5C5570;
	Thu, 24 Oct 2024 07:08:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 659C3C4CEC7;
	Thu, 24 Oct 2024 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1729753696;
	bh=PKc1Ezq4d15KDwftSYsYrCXzavd/TwVvK03GAg5yH8g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EXDsSjLYy/i5gU8PDLYZ96TpQdUoX/l3LzwwOhNGiQ1i+55LFSBuh0KUoAjION0q1
	 3/eyAr6Zj4/7bU9Gcyj+8Ai+3vS1gTwNeUYvxBUXoUwnGvVSURyPzfUtq7S8GHfSBw
	 CQqZiDGcF6YDPG6noOQlLhky4XPIh7s+ddxatdR4=
Date: Thu, 24 Oct 2024 09:08:06 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Saravana Kannan <saravanak@google.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	=?iso-8859-1?Q?N=EDcolas_F=2E_R=2E_A=2E?= Prado <nfraprado@collabora.com>,
	kernel-team@android.com, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH 0/3] A few minor fw_devlink fixes
Message-ID: <2024102457-manager-counting-ff68@gregkh>
References: <20241024061347.1771063-1-saravanak@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241024061347.1771063-1-saravanak@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_000818_609886_F0D9366D 
X-CRM114-Status: GOOD (  11.22  )
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

On Wed, Oct 23, 2024 at 11:13:41PM -0700, Saravana Kannan wrote:
> Probably easiest for Greg to pull in these changes?
> 
> PSA: Do not pull any of these patches into stable kernels. fw_devlink
> had a lot of changes that landed in the last year. It's hard to ensure
> cherry-picks have picked up all the dependencies correctly. If any of
> these really need to get cherry-picked into stable kernels, cc me and
> wait for my explicit Ack.

You can do that with the correct tag in the commit as per the stable
documentation if you really want to :)

But why would these not be able to go backwards?  What changed to
require them now and not be ok for older kernels?

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
