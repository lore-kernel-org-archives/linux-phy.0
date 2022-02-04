Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96012C433F5
	for <linux-phy@archiver.kernel.org>; Fri,  4 Feb 2022 06:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=038Lgl5cdroTNz8mLPfQRB0UQac6qgNGFN+gZ7SzkeM=; b=Y2UYnw+5wlWb8c
	CPDcRT9zPZH9ka9HkUgMoOMPMKWseByd/9roJgPBPLOe9FB/1jf+xdelQ0psH55YFu3oWitbwUoG4
	sGgNWMy3s+jMbGfBBJbl8NWj1JVKvXxLhArjoysFahMfeKAcI44l0b9KQNHKUF1fwrzMGydpHPtwP
	MZBRf81clOxoIlhr6ixmtjenIYqCnEWnCjDrBnEsbo54h77M5R/iMy6qHpHcQn73jd7YRTQV4svQ5
	q8rTRxY092FfBEvhigDsJi4/t1wwazzJ2n12RGwBEXbOQM6CmXBqzyNRpUpFF1Ct6e5H1XU6CtX1U
	LS6wJChNSvYO0m87bxZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFrrk-003Ygr-VJ; Fri, 04 Feb 2022 06:14:40 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFrri-003Yfy-9M
 for linux-phy@lists.infradead.org; Fri, 04 Feb 2022 06:14:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id B29F261BB8;
 Fri,  4 Feb 2022 06:14:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6810DC004E1;
 Fri,  4 Feb 2022 06:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643955273;
 bh=li8IqOB+eBXhVu+8z/DC1IgTMtm33NS2CSzOCQJeEpg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ipvCzyyoWfoUHI4nJ7SF9swy4p5Hm3iiQqR3DxPCAFbfwUwPSg18lefYzC6EFPT3J
 HHlcbOUJmDI65vWiTbebolqGOg3MsEroORsoRwNQJwCr+HjSmBzeuF0XjbM3zYT0hb
 P1yS3TPWW8FvbFbhb9bMKFlWgVIcOUqeeOMCBfMB2fz9K5VRNAuFnBfiEoQ14VjHAr
 CxwCqDjht7yOD8qeg1qC2W03/GYbrnVFFXCajCcgVVPYaxzHRI2DjP2XiDexnS0kos
 2Aara09eqIQvLyPrFPC3bN2l0MVFK8wo9BLv8EWSfD7i3kPDW9ImGWj8sF9kCPw3Dm
 L6Po48sMbc92Q==
Date: Fri, 4 Feb 2022 11:44:28 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Aswath Govindraju <a-govindraju@ti.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Swapnil Jakhade <sjakhade@cadence.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] phy: cadence: Sierra: Add support for skipping
 configuration
Message-ID: <YfzERMrPh+TrXr9x@matsya>
References: <20220128072642.29188-1-a-govindraju@ti.com>
 <YfqT444YoGBIturt@matsya>
 <1d5c41a8-24aa-3cfb-fff0-c2695102aa91@ti.com>
 <YfseaJADVocxqnOu@matsya>
 <3444e347-2603-6f5b-94de-09642c41fc27@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3444e347-2603-6f5b-94de-09642c41fc27@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220203_221438_433620_1812D3C1 
X-CRM114-Status: GOOD (  22.27  )
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

On 03-02-22, 11:25, Aswath Govindraju wrote:
> Hi Vinod,
> 
> On 03/02/22 5:44 am, Vinod Koul wrote:
> > On 02-02-22, 20:14, Aswath Govindraju wrote:
> >> Hi Vinod,
> >>
> >> On 02/02/22 7:53 pm, Vinod Koul wrote:
> >>> On 28-01-22, 12:56, Aswath Govindraju wrote:
> >>>> In some cases, a single SerDes instance can be shared between two different
> >>>> processors, each using a separate link. In these cases, the SerDes
> >>>> configuration is done in an earlier boot stage. Therefore, add support to
> >>>> skip reconfiguring, if it is was already configured beforehand.
> >>>
> >>> This fails to apply, pls rebase and resend
> >>>
> >>
> >> On rebasing, I am seeing no difference in the patch and I am able to
> >> apply it on top of linux-next/master commit 6abab1b81b65. May I know if
> >> there is any other branch that I would need to rebase this patch on top of?
> > 
> > It should be based on phy-next which is at
> > 1f1b0c105b19ac0d90975e2569040da1216489b7 now
> > 
> 
> I have posted a respin of this patch after rebasing it on top of
> phy-next. One aspect that is not clear to me is, phy-next branch does
> not have the following commit which is present in linux-next master,
> 
> 29afbd769ca3 phy: cadence: Sierra: fix error handling bugs in probe()

This is in fixes
> 
> When the respin of this patch(v3) is merged with linux-next/master
> wouldn't it cause merge-conflicts?
> 
> May I know how would this be handled?

If need arises (we have a dependency) I would merge fixes into next and
then apply patches. Cover letter of the patches should mention that

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
