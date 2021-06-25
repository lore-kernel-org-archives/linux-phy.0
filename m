Return-Path: <SRS0=Mo6n=LT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52B42C2B9F4
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jun 2021 08:26:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 225906140F
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jun 2021 08:26:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 225906140F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F48i+CJQuUMJagP/QlTfwX8oPNRsBXPtIxwELIiMOE4=; b=f/9KF6WXnuvDjq
	mRLjL1/gYoIbOPnGOWXNMWDFuxp7OkERZsAq2u+EZPPvusMruLNiNwB6gTSyrz9oWr+2DjBBwmOWW
	Dnd7Of/3CXIaANa28nDSVlgAgvIm2OgNHNKeeMORk0+f56NdApG+bYyPGy9g32xyz5VSmXG6srcUQ
	/wdVRkuF3lOERBwLK1afDvSyWcwqmjcdFRIftY3Say2u3vaTk2SI8drFkArZsnSeteMZuDaDPJacO
	w+s2jnLMXRb1vsDbKkx+23shCh+bv1rb4X5bkhX0AHXjcFsF0vU5smkJWpsqPAXZOin1keLwQoaw5
	0waJ10XGIHXzC0Bbxp6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwhAI-000JTG-9C; Fri, 25 Jun 2021 08:26:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwgs5-000DGu-AP; Fri, 25 Jun 2021 08:07:30 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 650EA61425;
 Fri, 25 Jun 2021 08:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1624608448;
 bh=3U9dOh8ubJIZg7LPE4ibu71lztZPpneG4VY8XUeQMJU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NecY4QLc6B1Iy1Wn0nDs+hgKCfA11BmN3lJ9UndAuFph4V3CxfXgv9bNevvKbpEhL
 QZnZm+rwc2daJFC6U+4YlxDUBufuRCTZrFc3D2uKjcT6s7O9TLGP4upUN3PqsmiEB4
 JINWJt7rhwJymccYInvr130+hYknFGYWh7OT+CPw=
Date: Fri, 25 Jun 2021 10:07:26 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-usb@vger.kernel.org
Subject: Re: [PATCH v8 00/12] Move Hisilicon 6421v600 SPMI and USB drivers
 out of staging
Message-ID: <YNWOvn67Gl2v3Cco@kroah.com>
References: <cover.1624606660.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1624606660.git.mchehab+huawei@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_010729_439119_7A570C7E 
X-CRM114-Status: GOOD (  17.36  )
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

On Fri, Jun 25, 2021 at 09:45:52AM +0200, Mauro Carvalho Chehab wrote:
> Hi Greg,
> 
> Thanks for merging patches 1 and 2 from the v7 series!
> 
> Those are the remaining patches that are needed for the USB to work
> with Hikey970.
> 
> I guess patches 1 and 2 on this series are also OK, as they were acked
> by the PHY and SPMI maintainers.
> 
> As suggested on your last review, I broke the MFD staging patches 
> into one logical change per patch.
> 
> Except for the split, the only change from v7 was at the copyright: 
> I'm using 20xx-2021 instead of 20xx- to indicate that the copyrights
> extend to the present. I also changed the HiSilicon name to better
> reflect the name of the company.

The copyright change is still not correct.  I recommend you take a look
at this:
	https://www.linuxfoundation.org/blog/copyright-notices-in-open-source-software-projects/
and:
	https://training.linuxfoundation.org/training/open-source-licensing-basics-for-software-developers/
	(the copyright chapter)
for specifics as to what to, and not to do with regards to copyright
notices.

I'm sure your employer also has some information about what to do with
regards to this as well.

I've taken patches 1-3, 5-9 now.

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
