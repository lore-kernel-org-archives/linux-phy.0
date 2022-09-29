Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7D08C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 12:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UtPBp/MHpb7K8ojqmtACZfnsPqWzOtMX1SaFA6PGnD8=; b=IzOfEpS2Ql7W9h
	ShqIKEch+oiu+VYaXxpNgC7ku+0Zi4AEQ6YTY88qc7e87EHpLqiu979qTHmRitYGxkcSbeos2zeGW
	jcmLm0PZElFSBhNCICgHFv5F13kH389AwR28/vh7uPGfHzfXk0pL6sg53FE07XzbwXImZ2y8rJHqX
	Z/34KnHlULJQ6cSEh3xD52M0S6A7OAtc4MqBCZEjCP8r6utSeJ+mXNPIFGTn4sGzuFyazVfrRInHf
	e+Wp2JkX1aqMpIQqAUg+cZjxHqGQHEPEFOhN207lzTU3UdHHZixhiytCj/6Z3Zymr4tIfqiCdwKVl
	ic+iF3q1BH7fNjYyClWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odspD-0032WY-Tq; Thu, 29 Sep 2022 12:39:35 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odspA-0032Tr-Co
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 12:39:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2E0F561154;
	Thu, 29 Sep 2022 12:39:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FE56C433D6;
	Thu, 29 Sep 2022 12:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664455170;
	bh=Xbo6C8uJ+Wh+za/BkKJp6mMR9ogN2jY7z+sJnjU0PgM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bzx80oPfJql87o6EHAA9npUDDwJhJ863ZQr8E36bBqmPPmm39mhbI+1S5XxkuhCR6
	 LkaxEMbNsnn94pbfExnwTkmdkRRj4VCWpV8C/9DoAhmB0CIlfkhCCe9BFmnQfnrD3V
	 q7OTpGY3PUTbwG64RyfzUpTZ0CQqo4cXLd+7LpHZx7zV/8iQ1bTCCVItNBSsR+eFQ9
	 EZoHBt+Erp2mBMRkStGoVnEsVDPB2TDvbCHKy+OykxDVypur0w0pm0oKS6avphzcql
	 X+mVgFpkSONdGGW29ACzHv9bXkDSuMSuygCzoPomsqX+rOROXcccYU2ECNGEu1+Lra
	 yij/GxUcz+/Fg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1odspE-0003J2-FX; Thu, 29 Sep 2022 14:39:37 +0200
Date: Thu, 29 Sep 2022 14:39:36 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 11/11] phy: qcom-qmp-pcie: drop bogus register update
Message-ID: <YzWSCI7uGnWVxKPp@hovoldconsulting.com>
References: <20220929092916.23068-1-johan+linaro@kernel.org>
 <20220929092916.23068-12-johan+linaro@kernel.org>
 <CAA8EJpp+j1fx46V3zNgiYxsMbQ5UmB4+7o5dojS2FLjwUL=hRg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJpp+j1fx46V3zNgiYxsMbQ5UmB4+7o5dojS2FLjwUL=hRg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_053932_550024_002F7A1A 
X-CRM114-Status: GOOD (  21.23  )
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

On Thu, Sep 29, 2022 at 01:18:05PM +0300, Dmitry Baryshkov wrote:
> On Thu, 29 Sept 2022 at 12:29, Johan Hovold <johan+linaro@kernel.org> wrote:
> >
> > Since commit 0d58280cf1e6 ("phy: Update PHY power control sequence") the
> > PHY is powered on before configuring the registers and only the MSM8996
> > PCIe PHY, which includes the POWER_DOWN_CONTROL register in its PCS
> > initialisation table, may possibly require a second update afterwards.
> >
> > To make things worse, the POWER_DOWN_CONTROL register lies at a
> > different offset on more recent SoCs so that the second update, which
> > still used a hard-coded offset, would write to an unrelated register
> > (e.g. a revision-id register on SC8280XP).
> >
> > As the MSM8996 PCIe PHY is now handled by a separate driver, simply drop
> > the bogus register update.
> >
> > Fixes: e4d8b05ad5f9 ("phy: qcom-qmp: Use proper PWRDOWN offset for sm8150 USB") added support
> 
> Unless somebody confirms that this write is not needed on 8998 and
> sdm845, I'd prefer a two stage fix here:
> - changing this to write to proper register (and maybe moving to the
> top of patch series, as we'd want to backport this to the last few
> kernels)

It already is the "proper" register for the v2 platforms that may
conceivably need it it. For the rest it is clearly just broken.

And I don't think this needs to block the rest of the series. That's
why I moved it last. If we decide to backport this we have other context
changes in -next to handle anyway.

> - dropping the write completely.

But sure, doing it in two steps is a possibility.

> Meanwhile I'll try testing this patchset on rb3 and checking whether
> it makes any difference or not.

Thanks for doing that.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
