Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8977CECAAA1
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 07:01:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dMBLqSz0hRBGcBGRlvUx8dIZ5iW44K/bMnV8I7od5BE=; b=hlmo9TPJu/QIkL
	mDrv/LEBv3K3Kx9U1pm2aZZqx2SfHLVPaglw8GxEYYwxYpP/vR8vF0A69Dt3FHAeWYDTcG+41Y9E4
	2Ryy9RbSNv1KsuKiiidtReOG+JnJOkPNXGJ0/jDPsY50eeJIQY/+i/mwK7gj/gaASRRRlsxSjUojG
	lVeaNb9NV8DKK32SRz6MtDH7dpuwm3owhgb/Ns6W7BMVcBNIk2ml9PKIGidE/LgRqMWtxsS5B/rXH
	1ayRvU7CiBw8B1ZITUsQ2m4Rd+b09khhPp6mlD22y3Bt8/WinrXMPZlSekx2bJPL5j6bjBowWZDyc
	MyaUjx/EXlfU/sPBTjtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvFI-00Ecrs-Ou; Tue, 30 Aug 2022 07:01:12 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvFD-00EcoZ-E1
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 07:01:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E99E6B815D1;
	Tue, 30 Aug 2022 07:01:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46FD5C433D6;
	Tue, 30 Aug 2022 07:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661842863;
	bh=1m8t3XQYq2uVxf9hIZZQ7ueuqje2AiVRqFHNHbPJSVE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JbQLeUv1wrIEeCeDusHAqgn20ilbVFg38RzUBjY3XCBvhC7gvFbpdxoOB1daufk3q
	 uWiLWIjwoMw5re0DiTvYJElcLl/Tq2jgmmIwne4LMNkqmRNwIqvR0CfX11Vbp+DtO+
	 n/dGxrL7CYGzi1hxsF2YQFAzBm/2cEHKFgzeDY+udVqelXAa90GLI6WK6Pao9enHyg
	 JiyNBB3Qv7gYobpGlyp1QhiE0W6d//d72v4rrFve6f8vhqauChOjMarwFgLgWKIZbz
	 G6u7ZkAPWmC0AqblXc7DydMfWDwJoleW6cN0QFHVZsnz+ZLe4LSItDdgPL6fJyH1zf
	 jFZ5BbFTn4ocg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oSvFH-0007Sc-Ga; Tue, 30 Aug 2022 09:01:11 +0200
Date: Tue, 30 Aug 2022 09:01:11 +0200
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 00/30] phy: qcom,qmp: fix dt-bindings and deprecate
 lane suffix
Message-ID: <Yw21t1SUGjCcUuuw@hovoldconsulting.com>
References: <20220714124333.27643-1-johan+linaro@kernel.org>
 <Yw2a44l9a6zz5qTJ@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yw2a44l9a6zz5qTJ@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_000109_159622_B1529DAA 
X-CRM114-Status: GOOD (  22.76  )
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

On Tue, Aug 30, 2022 at 10:36:43AM +0530, Vinod Koul wrote:
> On 14-07-22, 14:43, Johan Hovold wrote:
> > When adding support for SC8280XP to the QMP PHY driver I noticed that
> > the PHY provider child node was not described by the current DT schema.
> > 
> > The SC8280XP PHYs also need a second fixed-divider PIPE clock
> > ("pipediv2") and I didn't want to have to add a bogus "lane" suffix to
> > the clock name just to match the current "pipe0" name so I decided to
> > deprecate the unnecessary suffix in the current binding instead.
> > 
> > To be able to add the missing child-node schema and handle device
> > specifics like additional PIPE clocks, it quickly became obvious that
> > the binding needs to be split up.
> > 
> > This series clean up and fixes some issue with the current schema before
> > splitting it up in separate schemas for PCIe, UFS and USB and adding
> > missing parts like the child PHY provider nodes.
> > 
> > The MSM8996 PCIe PHY gets its own schema as this is the only non-combo
> > PHY that actually provides more than one PHY per IP block. Note that the
> > "lane" suffix is still unnecessary and misleading.
> > 
> > The final patches add support for the updated binding to the (recently
> > split up) PHY drivers. Included is also a related combo PHY cleanup.
> 
> This fails at patch 2 for me on v6.0-rc1, please rebase and resend

Are you sure you haven't applied anything to your local tree that causes
this?

I just tried fetching the v3 series from lore and it applies just fine
on top of 6.0-rc1.

Note that if you've added a new compatible string locally, the second
patch which sorts the compatible strings is likely to fail to apply.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
