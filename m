Return-Path: <SRS0=XorX=M3=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EFF48C4338F
	for <linux-phy@archiver.kernel.org>; Wed,  4 Aug 2021 14:31:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BA2EC60F94
	for <linux-phy@archiver.kernel.org>; Wed,  4 Aug 2021 14:31:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BA2EC60F94
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-reply-to:
	Date:Subject:Cc:To:From:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kqowRR71NHFkf4pa/1CCFunrrTxDbS+cMQCTHw+4Xp4=; b=WHoECtNuNPMl4Z
	Au1bRZmrxotZa7ilW7kzOz5osv/veccq5gqZ8llFyC7JocHRvtJKHH3fyhlJ1O7EE/vpteLXUNqDG
	jsJASCge3uxuGAGA/aj1UQTMDBK/DrQztvWgCJIncaCSEzi6M4K7/6/gxuinncvQ71dIgmmI5jj1R
	oisiYcZ7bYrjdHUioAOKHDnkkxgbsXYTi1xtDxdfHLAszA94qLzD5z5aEfECWc/62YTMDgqE+iIGv
	L+IszFEWY1/xlWtvCoJeldN5WK7LjezbEmcD7dvFFxzwVYXsQrkLf6AT/jb1sN3RCo9sAxM07YQ9I
	8AcMSgMSi1OiZ9wgP18w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBHw1-006RO8-7c; Wed, 04 Aug 2021 14:31:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBHvk-006RJ6-6h; Wed, 04 Aug 2021 14:31:37 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id ACEB160F35;
 Wed,  4 Aug 2021 14:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628087495;
 bh=eYtxiCOL6Sv7h7R130RHKETBBse3R3y5RSeyOc221j0=;
 h=References:From:To:Cc:Subject:Date:In-reply-to:From;
 b=NDSrdXRBJX76rRp606Dq1f5kJeIUWzJOtgMrOr0Sa9MVC1GjDzsA81KdBdHrdPwtU
 ceF2MDSfIsTgzTBaig8VJlWyTpY6DYQqsWgmLLX5UTyGlMUjvOREsvim8cF00kWZTb
 5HW7WPfZSuObcHtj2c2tzYSJAn81XhapM2pUaaRrYWx7kuNN/zi7g3gnv7Rsl4Rfwm
 UjKuvaLKRBJkOYnZPBjAVgWXP2HXDsYRkSfR5oaowEQm8P9FsNQ9jIAHkp+buqI+01
 z7sDxEbSgjC0IqmoGXcTIkewuOAco3ip5EYI7k2n0rQ556DmYwTNy4PT6KWo3mPFO6
 1F1dWxB2pnbvA==
References: <3d86f45004fe2fcbae0a2cd197df81a1fd076a1e.1628085910.git.baruch@tkos.co.il>
 <0e99e3d453547ad2a8f4541090a03f3c80b80332.1628085910.git.baruch@tkos.co.il>
 <87lf5h5mc2.fsf@kernel.org> <87v94lxpb0.fsf@tarshish>
User-agent: mu4e 1.6.1; emacs 27.2
From: Felipe Balbi <balbi@kernel.org>
To: Baruch Siach <baruch@tkos.co.il>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>, Balaji
 Prakash J <bjagadee@codeaurora.org>, Kathiravan T
 <kathirav@codeaurora.org>, Jack Pham <jackp@codeaurora.org>, Thinh Nguyen
 <Thinh.Nguyen@synopsys.com>, linux-arm-msm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 4/6] usb: dwc3: reference clock period configuration
Date: Wed, 04 Aug 2021 17:30:42 +0300
In-reply-to: <87v94lxpb0.fsf@tarshish>
Message-ID: <87im0l5lj1.fsf@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210804_073136_307716_BB376759 
X-CRM114-Status: GOOD (  10.46  )
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


Hi,

Baruch Siach <baruch@tkos.co.il> writes:
> Hi Felipe,
>
> On Wed, Aug 04 2021, Felipe Balbi wrote:
>> Baruch Siach <baruch@tkos.co.il> writes:
>>> @@ -1371,6 +1398,8 @@ static void dwc3_get_properties(struct dwc3 *dwc)
>>>  				    &dwc->hsphy_interface);
>>>  	device_property_read_u32(dev, "snps,quirk-frame-length-adjustment",
>>>  				 &dwc->fladj);
>>> +	device_property_read_u32(dev, "snps,ref-clock-period",
>>> +				 &dwc->ref_clk_per);
>>
>> I wonder if it would make more sense to pass an actual clock reference
>> here. If valid, then reconfigure the period to the value returned by
>> clk_get_rate(). It would avoid yet another DT binding. If we make the
>> clock optional, then we won't affect any other platforms. The clock
>> itself could be a regular fixed clock node.
>
> Thinh Nguyen asked to add a dedicated DT property. He explained that
> clk_get_rate() does not work for PCI hosted dwc3. This is the most
> complete summary of the discussion:

Hence the "optional" :-)

Or, perhaps, Thinh wants to use this for internal FPGA-based validation?

In that case, I'm okay with the property.

-- 
balbi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
