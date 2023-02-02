Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6756C05027
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 13:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SIpXgownf9yNu/3vFuemv40ExCXkHcVtjWrJ9J6TpGU=; b=0SlcumR5v+2dVU
	XWI4rSDla/6GWwr17bPqXu8//ZSPwJ7vJW0TkLPOokmWZub5E2ZGrdeweDphXtA+9wj0IHAebtxG9
	Nuf5lVHHnKPgBuz9O3qVm9XDC2Sa9chCYGZV+/tY1XL9405o03zZ9iBEfhYwrZkTeAoR+xdvBsxnU
	7zqrZv4VJG7myJozzqIQqa2ZTD5qkHrdGr9xmoTe7gn94M7lJjFrDCh+cUwKj/pd3g80f0tN6kGnG
	S4pf2kpAqlk+f+YNloPInwxmfHDAzlv2Z9CipiyZp0O2H/tofLULzPAqs/7bbkCT2ZgVh5crHyVNY
	8kcgq91SUZc91NyNNB3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZSw-00FzAg-1M; Thu, 02 Feb 2023 13:17:26 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZSp-00Fz9P-EW
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 13:17:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id DD893B82653;
	Thu,  2 Feb 2023 13:17:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBE2AC433EF;
	Thu,  2 Feb 2023 13:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675343836;
	bh=De028cR7PVHoyYdcF5i0QwrAwqMYfKncZh1sUh5zT24=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H1QFO4STGBmxjWLD+cv7+ywCbat758EcHsuAayI1uXp6uVvcjuVPVUjw6QbFnHAUn
	 GEjaFK1v2DEQAXBQVFEIHIPI5kSzuzNHUy06zalDtmJBpVBHqU4llRx186nJOxImeU
	 Gu1P5iEBxnqj5IlHyhY1FYPfKEtb6mCvH1YPIOzmOTCurg6U9heaYBg+lSHvGPdxhh
	 ggO4ySp+OI8JqNd5l/hVzcgAtH2UFcKZ1lkTfGSvql4lNpWPOWk0cAL899kB1eKRwS
	 TAn7O3Wh4G7VILzSaLYyH397Avw1tW2nQn7xMBQbOV/0vER4vVhwAkZCJ+rTJcIwkY
	 qjDpad7H6Hm6A==
Date: Thu, 2 Feb 2023 18:47:12 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Stephen Boyd <swboyd@chromium.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-kernel@vger.kernel.org,
	patches@lists.linux.dev, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH] phy: qcom-qmp: Introduce Kconfig symbols for discrete
 drivers
Message-ID: <Y9u32P3u4nuAiBnT@matsya>
References: <20230114000910.1256462-1-swboyd@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230114000910.1256462-1-swboyd@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_051719_655079_1F9AD4EA 
X-CRM114-Status: GOOD (  12.78  )
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

On 13-01-23, 16:09, Stephen Boyd wrote:
> Introduce a config option for each QMP PHY driver now that the QMP PHY
> mega-driver has been split up into different modules. This allows kernel
> configurators to limit the binary size of the kernel by only compiling
> in the QMP PHY driver that they need, or to split the module up into one
> per PHY driver instead of one module for all the QMP PHY drivers.
> 
> Leave the old config QCOM_QMP in place and make it into a menuconfig so
> that 'make olddefconfig' continues to work. Furthermore, set the default
> of the new Kconfig symbols to be QCOM_QMP so that the transition is
> smooth.

This fails to apply for me, can you please rebase

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
