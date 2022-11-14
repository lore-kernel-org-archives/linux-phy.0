Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA4A3C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 10:57:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w5AFjFP7R/O54F2Ad1ZFg1yG+18WKdHuvbexeLYOAy8=; b=x2vw5HhHf+l5oM
	EqDFjxz/Oy0pYScB6mcs7+D/ob1WLz2a5LyfgaLnUapISBJ/rRUS86iYtMuMKZAfU5ipHNWj4/bZ+
	vDKhTRnPYIL6wBYGnP0lWdbr31tyop8y81cMfZjwq867DUGzs4ze8GVf0zmJlB0ZOGHJi78VXMcU5
	zzEKrxYY+uSGIk6Hha2SlWoJ8PE5fXwHOhhkuIeOm73Rn+LrvZPIcjiljpixbvyTupTNTC6J6yR90
	KmHa4/Rd0VA2Yw/0JhRKgOVuvwkiXZERpIDTzH6c/XMgb7XlqIIrYTcVg3E3+ywl6BBhGxUvF6nEF
	qd3ppgp/p55g1m+3qWnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouX9o-0008qx-DJ; Mon, 14 Nov 2022 10:57:40 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouX9m-0008q1-0a
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 10:57:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9C92960FBE;
	Mon, 14 Nov 2022 10:57:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0B5DC433C1;
	Mon, 14 Nov 2022 10:57:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668423457;
	bh=fUQ9vpvOPE5lm++N751vUFvd8FWP71h+ikUD+qipnFw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=P9Y9QF3gyLnULxGSOG70vhOS13YMbNd6ulz2UXtYzXr/4muZvQ9G4sjuFJngy0iFW
	 zTQ6ruoB44v/QHRlLJTF2bAr9UfToR8CQGZkDIZ6ZULOouDAb3WNdfmTkKvriogcHS
	 d1MbFwy/MQAFMawia7USsV4woKNYd0l4tvAXdVnvp+r63SNV35iCwYfx5bO9MNHkKf
	 zzHDtLN2s2Ni8rc/ZfazsvXd8+QjvrdWVF5jFrB3EWa4GEySV3ZvqjHzU3EGnkXUTH
	 Cs/NcVJ7mVT19kWgYeZoOM6XZLH2kJRYdcq6NfzEZX3FpEIL0RXTufNJLVVX8zabx4
	 1lv+/meEFsb7Q==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ouX9E-00010k-Jv; Mon, 14 Nov 2022 11:57:04 +0100
Date: Mon, 14 Nov 2022 11:57:04 +0100
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 17/22] phy: qcom-qmp-combo: merge USB and DP
 configurations
Message-ID: <Y3IfAEhpPRLnFRhr@hovoldconsulting.com>
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-18-johan+linaro@kernel.org>
 <5fd7a56f-db12-deb3-753a-22867526d90b@linaro.org>
 <Y3ICOwr2ld9cdgrK@hovoldconsulting.com>
 <8802255c-16a9-1fb7-bbc5-d8e0d44a6f1f@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8802255c-16a9-1fb7-bbc5-d8e0d44a6f1f@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_025738_149406_AA19C3D0 
X-CRM114-Status: GOOD (  26.05  )
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

On Mon, Nov 14, 2022 at 01:10:43PM +0300, Dmitry Baryshkov wrote:
> On 14/11/2022 11:54, Johan Hovold wrote:
> > On Sat, Nov 12, 2022 at 10:43:14AM +0300, Dmitry Baryshkov wrote:
> >> On 11/11/2022 11:56, Johan Hovold wrote:
> >>> It does not really make any sense to keep separate configuration
> >>> structures for the USB and DP parts of the same PHY so merge them.
   
> >>> -/* struct qmp_phy_cfg - per-PHY initialization config */
> >>>    struct qmp_phy_cfg {
> >>> -	/* phy-type - PCIE/UFS/USB */
> >>> -	unsigned int type;
> >>>    	int lanes;
> >>
> >> int lanes doesn't really make sense here in my opinion. It should be
> >> usb_lanes and dp_lanes.
> > 
> > It doesn't make much less sense than having it here currently do.
> > 
> > All of these USB-C PHYs are dual lane for bi-directional SS USB and
> > quad lane for uni-directional DP (even if only CC1 orientation and lanes
> > 2 and 3 are currently supported).
> 
> I was under impression that sdm845 has just a single lane for each of 
> USB and DP. After rechecking the phy/next, I see that it was my mistake 
> (quite logical, SS is two lanes, so the compliant PHY must have two 
> lanes too).
> 
> I wander how/if 4-lane DP works. The only thing that we do is 
> programming of the QSERDES_DP_PHY_PD_CTL register, however judging e.g. 
> your 4-lane PCIe changes, one should probably also program the other two 
> lanes. Maybe it is handled automatically inside the hardware.

4-lane PCIe on SC8280XP is a different thing entirely (and remember that
that's actually 8 uni-directional lanes).

I'm sure there are further problems with the current DP alt mode
implementation, but hopefully that can be resolved when adding support
for orientation detection. I'm just fixing the obvious bugs and try to
stay "bug compatible" otherwise. :)

> > I should probably just drop the lanes parameter completely, either as a
> > preparatory clean up or as follow-on one (e.g. also a bit depending on
> > if there are other reasons for respinning a v2).
> 
> I think a follow up is enough, but let's get it. Having a single lanes=2 
> field looks... strange.

I dropped the lane parameter as a preparatory patch to this one in v2
that I'll post in a bit.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
