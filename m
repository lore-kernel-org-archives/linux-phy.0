Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 624E1C6FA89
	for <linux-phy@archiver.kernel.org>; Thu, 15 Sep 2022 14:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u6PUBu5rqRv9il9umP+138iOqLlj8eR1/U+AoSkgoVM=; b=hbVO7zHx/Vi6M1
	zsqNasu1gMTBHCzfy/9pTzjr0TjWgKolhGuHBh0cp/Coj5WoykcyaQVIcL421AP1aznv4MkQJ4vTR
	BKqWAoMacqYrM5QnYoJ0Mhb7P1MmGGXU1i0IQokcZ/Zm2TdG76NSw6W7Px0dw9tVHPj4I3klxrXM7
	G/Cj9T0qwLbn4hFhaudJevBGqcW4Z5XMA4gJlfqyDHZDoDfNjcbjmWz/Ts1YbB4ybWQHBpRnWCcQ7
	C1R+4lby6S7GsQ75MnM9nqqsKmjjhhzWp1ycO+tzpTThvgAWzdh9lC3f3kvf6UfGmJxUUQzEywC76
	U5u9VxYA9+mU3fVXQH0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYpvR-00B4rY-QZ; Thu, 15 Sep 2022 14:33:09 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYpvO-00B4m9-Sm
	for linux-phy@lists.infradead.org; Thu, 15 Sep 2022 14:33:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 888996243E;
	Thu, 15 Sep 2022 14:33:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E978EC433D6;
	Thu, 15 Sep 2022 14:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663252385;
	bh=m6FgdNZfe9kL5wW8u/LqxPTIJ7S228NcqIqaAQZSBQM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qzdbBwE275PV3GRN2MXYT+x30wDawVP6L2Vo7svd//3xVjfpkp+PI8vlzBBsCIcdj
	 wTi2cpTEl2BIPGuComqYBBFOFIUSHD3VttWn18HhWTMMiPO1lrqWHzLXXWQINnjyDF
	 NP9NARS2q/dOv56T3OojTTHuqxcNxRgIsdgqSHAQSk8GdC1FKQ7JVqMNdKZfFo459C
	 suB0p/MRRZlQjJlaAlZ8R+JcIhl0979XTcd3ettlaxOay+/hRRiH3oHLteZAwArctr
	 xNsxmVqa8QVtqYimS3WyPctYQc6dNi/tcg/wy86IsyFddvlWQwkZUpX5mdlGA0jMhS
	 y4lSIG3j4gr6Q==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oYpvP-00058t-Dw; Thu, 15 Sep 2022 16:33:08 +0200
Date: Thu, 15 Sep 2022 16:33:07 +0200
From: Johan Hovold <johan@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 00/11] phy: qcom-qmp: more fixes and cleanups
Message-ID: <YyM3o6aSwt0zM0t4@hovoldconsulting.com>
References: <20220914162545.6289-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220914162545.6289-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220915_073306_993260_E823A6F5 
X-CRM114-Status: GOOD (  10.95  )
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

On Wed, Sep 14, 2022 at 06:25:34PM +0200, Johan Hovold wrote:
> Here's the next set of QMP PHY cleanups including some non-critical
> fixes of tiny memory leaks on probe deferral (I didn't add a stable tag
> for any of them on purpose).

> Johan Hovold (11):
>   phy: qcom-qmp-pcie: add pcs_misc sanity check
>   phy: qcom-qmp-pcie: fix memleak on probe deferral
>   phy: qcom-qmp-pcie-msm8996: fix memleak on probe deferral
>   phy: qcom-qmp-combo: fix memleak on probe deferral
>   phy: qcom-qmp-ufs: fix memleak on probe deferral
>   phy: qcom-qmp-usb: fix memleak on probe deferral
>   phy: qcom-qmp-pcie-msm8996: drop unused pcs_misc handling
>   phy: qcom-qmp-pcie: drop unused legacy DT workaround
>   phy: qcom-qmp-combo: drop unused legacy DT workaround
>   phy: qcom-qmp-ufs: drop legacy DT workaround
>   phy: qcom-qmp-usb: drop legacy DT workaround

Please hold off with applying this series. I realised that we have a
couple devicetrees in mainline with overlapping register regions for
which the drivers would fail to bind if we start checking checking for
that.

I'll see to fixing those up and look into how to handle backward
compatibility first.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
