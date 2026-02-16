Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48233E7BD83
	for <linux-phy@archiver.kernel.org>; Mon, 16 Feb 2026 10:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b3hSxZqFHJBmfQtfx02CmEMS0lOTGtflPdAogsFEI60=; b=yDfnJD9ArIBkmY
	CLvbITaGOs/wgpJh4WcPXhKhdOdAwkK1T8wynf4YTshHw+OP5F2sbhA2LiWxqg/Ts6+nIPI4xQ6PH
	nsX0fSdg6rY+YrZN+jqpLKyUEQ2QlHOxe78FG+PdVaH/oEmmzeoGIhHjBy08xpAz0ntuySBAzpJiy
	s1aDfyM6HG8mF7h0vIfQDDZRJNK1iu7KKOsyZHKlGC511nRMWygyIa3/yIipJSoZb5lb/67RQ+2d0
	oV41lJMn7XluL/hCTijWeDBIC7MeBzP1diqCyhkf+JREeGL+tmemosZsgtcVNSuWRFTgTzTB9/oMn
	gmFNCL1HPD1QLjL7zeGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrw97-00000006Ncq-08Ys;
	Mon, 16 Feb 2026 10:48:05 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrw93-00000006Nc4-46JL
	for linux-phy@lists.infradead.org;
	Mon, 16 Feb 2026 10:48:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7BA7E4401C;
	Mon, 16 Feb 2026 10:47:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53F2AC116C6;
	Mon, 16 Feb 2026 10:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771238879;
	bh=FmAZrnEMpRdb4yfHQsqQJsWHQI/ak9gpcuvRuiLF1+M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jzchyL5wiDBMLgrCWCbIz/r52isLwIkXzVmTDxY80jp4YJDnBoFC8AcHiDmVdsZ7r
	 j5XHC3utpe9hGF2KTdpPo51Sluh5i1PuoBHpoT9kW6Hb1lqzPAViUpDjTfeWSfS44C
	 /Mw+HIw8emtwJIgiAS8sRAqMXNtlx/p8f4NaRTcTEUNN27MhtAXux8AsOi935WI69R
	 5VfMN4/no2JTKpyCXYXU9Mcm/HpduJ8KzGbG5k5Un/PctUBYhVAlleWDaYyZ8FE+Xm
	 TkzRYXgY6snF0xT4AifbldJJsb/iI/8UF2bdpr9JNsbQkALnCKiP1DB47sWg6qjGZN
	 4Aa60+Kma7aVA==
Received: from johan by rho.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1vrw8w-000000000cw-3O8B;
	Mon, 16 Feb 2026 11:47:55 +0100
Date: Mon, 16 Feb 2026 11:47:54 +0100
From: Johan Hovold <johan@kernel.org>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>, vkoul@kernel.org,
	kishon@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com,
	neil.armstrong@linaro.org, konrad.dybcio@oss.qualcomm.com,
	Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH v3 5/5] phy: qcom: snps-femto-v2: Fix possible NULL-deref
 on early runtime suspend
Message-ID: <aZL12oyiLumpf39e@hovoldconsulting.com>
References: <20260205160240.748371-1-loic.poulain@oss.qualcomm.com>
 <20260205160240.748371-6-loic.poulain@oss.qualcomm.com>
 <aY7pvakkOnaYsd5p@hovoldconsulting.com>
 <CAFEp6-3yk3sPXj+hGuWvAFsFJAXjH4kWLV8k_5_v9Hax0XxaOg@mail.gmail.com>
 <aY8Asvu-1u0e02oJ@hovoldconsulting.com>
 <CAFEp6-0rzkqc0ajN72q=mv3U-TT0JHMSPmnJD6ohKuLmbPz2-A@mail.gmail.com>
 <20260213201550.vk5cosmoewokarlx@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260213201550.vk5cosmoewokarlx@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_024802_042990_1718DA4B 
X-CRM114-Status: GOOD (  10.42  )
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

On Fri, Feb 13, 2026 at 10:15:50PM +0200, Vladimir Oltean wrote:

> Another comment upon reviewing this driver's runtime PM use (although
> this is at most something that may result in a patch for "next"):
> 
> This driver uses hsphy->phy_initialized to make sure qcom_snps_hsphy_suspend()
> isn't called unless qcom_snps_hsphy_init() was called.
> 
> Don't we achieve the same behaviour by replacing "hsphy->phy_initialized = true"
> with pm_runtime_get_sync(dev) and "hsphy->phy_initialized = false" with
> pm_runtime_put(dev)?

No, the device can still suspend before phy_init() is called.

What would work, and which should probably be preferred over adding
these phy_initialized flags, is to increment the pm usage counter before
enabling runtime pm and decrementing it after the PHY has been created.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
