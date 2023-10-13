Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD17CCDB483
	for <linux-phy@archiver.kernel.org>; Fri, 13 Oct 2023 10:45:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f4nMpCYJq+5qq2VU4qe/JPg2+mvdnicuxdCi6BQj/5s=; b=lnq1kzvRERtDkK
	P5mPyCF73DOQwva18NQ9ewAde/5v6gAdT62oxULKK2DSQp4/8MreIn1jc909VMJIFb9TpjPllm00E
	ooRpnPDxVq0/5mf78sA+EbPtQwDBtJBXEYuF9oOfSQtsufxPQQrfaSJMAWlaf1VkDB//7OsOf4GZO
	5gn2v6lQ5uiu7hvEXMRB0X3gyJtJsuQj1fH0AXjkH2uB46VD95ppPVFtzMRrM3Yb82rhY6I7nwZmK
	sHDHMgHNqrgoxBlp6gmce7gXVQNIoGPHM2PCoqAubP0DJ/dydRL6bLZU2SX5nV5zBVNGJ0GI29AXT
	WD+HtOwBMfi/fa8ms/yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFfo-003EeF-24;
	Fri, 13 Oct 2023 10:45:40 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFfl-003Edd-1h
	for linux-phy@lists.infradead.org;
	Fri, 13 Oct 2023 10:45:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 2D912B828C2;
	Fri, 13 Oct 2023 10:45:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDD22C433C7;
	Fri, 13 Oct 2023 10:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697193935;
	bh=0ZLfe7SbZuvOaoiV89P70O3iNcAqcUL0z/OoDUfELrQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m6+JpUQenSk2gmtCrWeMpEH0VpBqJLlmvUeoG1r1jMVximEsXRUIHfYWRia1P5fpM
	 n9MXnR4n7F/KlmzyV0SG/N3+tPOSFPQR25rbHqNWOpq5XU1YiN40mE5jlA91lTZkS2
	 QYHPjl/uZXU8Vv4rSXSvt7cj+gSNlaZgICfipqgq7JPII/2xvBFb5jEahP24V0n9qL
	 2AtPi8aNujI0mGfQ5n09zgsmtTksAHhC9datsJitZEcnLUTI/hX+IrdKnaYkQ/dCpq
	 dsvI44TKZYpiXg0OFTvRXSWcd20yJxpI/Jh9HZHSiHozGH6F5ybU4lhRQRLioOJ3UN
	 H+xV+UMyVCkfA==
Date: Fri, 13 Oct 2023 16:15:30 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Rohit Agarwal <quic_rohiagar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	gregkh@linuxfoundation.org, abel.vesa@linaro.org,
	quic_wcheng@quicinc.com, dmitry.baryshkov@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, kernel@quicinc.com
Subject: Re: [PATCH v4 0/5] Add USB Support on Qualcomm's SDX75 Platform
Message-ID: <ZSkfyl757VXnfIjw@matsya>
References: <1695359525-4548-1-git-send-email-quic_rohiagar@quicinc.com>
 <ZSkb9ajLZGpD46Ik@matsya>
 <b88cc301-52db-4401-8364-7056f0e10149@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b88cc301-52db-4401-8364-7056f0e10149@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_034537_708665_A426E655 
X-CRM114-Status: GOOD (  16.57  )
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

On 13-10-23, 16:08, Rohit Agarwal wrote:
> 
> On 10/13/2023 3:59 PM, Vinod Koul wrote:
> > On 22-09-23, 10:42, Rohit Agarwal wrote:
> > > Hi,
> > > 
> > > Changes in v4:
> > >   - Replaced the v5 offsets with v6 offsets as per Dmitry's suggestion in patch 5/5.
> > > 
> > > Changes in v3:
> > >   - Removed the unnecessary change introduced in v2 of patch 2/5
> > >   - Added Fixes tag in patch 3/5
> > >   - Rebased patch 5/5 on Dmitry's cleanup patches.
> > >     https://lore.kernel.org/all/20230911203842.778411-1-dmitry.baryshkov@linaro.org/
> > >     https://lore.kernel.org/linux-phy/20230824211952.1397699-1-dmitry.baryshkov@linaro.org/
> > > 
> > > Changes in v2:
> > >   - Dropped the new dt schema introduced in v1 for sdx75 usb3 phy
> > >     and reusing the bindings.
> > >   - Rephrased the commit message of patch 3/5
> > >   - Removed stray lines from the patch 5/5
> > > 
> > > This series adds support of USB3 PHY support for Qualcomm's SDX75 Platform.
> > The phy patches fail to apply, can you please rebase the three patches
> > and resend
> Can you please apply these two series. This series depends on it for
> successful compilation.
> [1] https://lore.kernel.org/all/20230911203842.778411-1-dmitry.baryshkov@linaro.org/

This one has a pending comment bw Konrad and Dmitry..

> [2] https://lore.kernel.org/linux-phy/20230824211952.1397699-1-dmitry.baryshkov@linaro.org/

This one is already in -next

> 
> Thanks,
> Rohit.

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
