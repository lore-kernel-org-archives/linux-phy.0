Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7086ACAC59A
	for <linux-phy@archiver.kernel.org>; Fri, 19 Sep 2025 13:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=umP4v1hl0rWvGJtyJYA98FCsoJE/tJvMIVrzDjhThj4=; b=4BGGApWhTRkdFy
	7ed63yzrSm9Vw1rvZNAfBXLCjaQ8aAsUnftS9s7hgK4GJGaeIWAbfNm/lbFmiknMfxclsoZXXtw2e
	JSPVhgNny6BdMHrPYu0Gc9oTwuv0n86OE7kYpU6rc/aWKM8VOQVs+O8VLYKD37p3zmGWaHLHZECEA
	M0OzpHjfnxfnjTuldIucbHOR7jtDAWxZOOfRzIlJlqd4iPSSY+NGYLiGUPFXG8OzawIfAQr3fvxsC
	4gBaQR9EIeQJR6ziQEi1YzYtXa7oiYdWMNs90BUL9DqU3xmSaGgUVAkzWgsA3uJP0M5lZRy5rm5zU
	ciwi+lD3SgrKLTUORcxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzbeG-0000000339Q-0CjZ;
	Fri, 19 Sep 2025 13:59:40 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzbeE-0000000337o-32au
	for linux-phy@lists.infradead.org;
	Fri, 19 Sep 2025 13:59:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 874A86013A;
	Fri, 19 Sep 2025 13:59:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E045C4CEF5;
	Fri, 19 Sep 2025 13:59:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1758290377;
	bh=G+eKhQdY3LXsknfdquHgWXFZCZJaYm8/KtCWfTr3cUA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FuaBUzXS0qCl6HAJ4XYjHQp6it8Dm536/l+ZByopsVOtdtZ/m3yVdkKgZIERvVALP
	 nrWyMbs/HCYptk+HuEp9y/UxEBUEBwq4i478l52wlAqBpQ2QcqULucRqK3+Fyu9k7b
	 ygJGYPQ9kxlywpHj5HihIV09eFg543KFXH4iaKZE=
Date: Fri, 19 Sep 2025 15:59:32 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@baylibre.com>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	sboyd@kernel.org, jic23@kernel.org, dlechner@baylibre.com,
	nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de,
	srini@kernel.org, vkoul@kernel.org, kishon@kernel.org,
	sre@kernel.org, krzysztof.kozlowski@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org, kernel@collabora.com, wenst@chromium.org,
	casey.connolly@linaro.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 2/7] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
Message-ID: <2025091925-thirsting-underuse-14ab@gregkh>
References: <20250916084445.96621-1-angelogioacchino.delregno@collabora.com>
 <20250916084445.96621-3-angelogioacchino.delregno@collabora.com>
 <t3uk3k4h3l53yajoe3xog2njmdn3jhkmdphv3c4wnpvcqniz4n@opgigzazycot>
 <aMlnp4x-1MUoModr@smile.fi.intel.com>
 <mknxgesog6aghc6cjzm63g63zqbqvysxf6ktmnbrbtafervveg@uoiohk3yclso>
 <CAHp75Vf7KrsN7Ec9zOvJoRuKvkbrJ5sMv7pVv6+88tPX-j_9ZA@mail.gmail.com>
 <er7dkmzutsu3ooegeihjzngi6l3hol5iaohecr3n5bolfse3tj@xeedlx2utwym>
 <aMxWzTxvMLsVWbDB@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aMxWzTxvMLsVWbDB@smile.fi.intel.com>
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

On Thu, Sep 18, 2025 at 10:00:29PM +0300, Andy Shevchenko wrote:
> I,o.w. I principally disagree on putting MODULE_IMPORT_NS() into the header
> file.

Yes, please never do that, it defeats the purpose of module namespaces
completly.  If you don't want to have module namespaces, don't use them
for your subsytem.  Don't use them and then make them moot by putting
MODULE_IMPORT_NS() in the .h file for the symbols as that's pointless.

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
