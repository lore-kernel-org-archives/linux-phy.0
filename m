Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D5A6ECAAD8
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 07:30:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5rT+btVHxEcEI78Bb+/yCxH005amMDPkclNYMsArX+w=; b=Dgn2U9QHyWCFKU
	crImUONf2zjqW/laJ/OuZqTXFXcHZ5X5pnk2LSpw1/Q6iAeCUCX/chnqQjJ5gHhhiGf7WQex+NUtS
	nVXbQEg40Ct2mTvI/x+jKYtlAieNluQ33a+pQ4IjAtQTG97aRTFhKYCxKuqGMzUN26Ty2oJxI5/mw
	uv4gFxbY7IIdLAtzALVBEcxB8J2KB1ZC//9f8MpoEawA2LVwtnH/x/pCmlF2sqdR03oiVuTlQxkiV
	55mHbxiATrou65N0YSYuoauMZaqKyeUup3Uri53dkJI6zVXyiLnzjKWSgyMlJNXnZlde07R/hRHzD
	qPCQ63R/RU8LL1Ix9tFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvhx-00ElcH-8y; Tue, 30 Aug 2022 07:30:49 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvht-00ElaG-Ok
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 07:30:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 32011B816AA;
	Tue, 30 Aug 2022 07:30:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62140C433D6;
	Tue, 30 Aug 2022 07:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661844643;
	bh=yxaD30kiK8sn86tWcBr0/VotZNzimgXDeGSr6pKwkP4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XUatUZcBjOih6PU1OM6mlpdFMMzM+DZHiclqrUJ/eeHpkcvMLLvFU/UwadK0smemN
	 AbK7CVuFaGOTP/01iNoL5PE9692oI6jEPb0s+tDY/kA+Hq6BajStKM7jB2b5SAjb83
	 UA+CM5uOAIkBpnkVO/BgLcjX76O2yN9YDlRqvjIccUGUcmVpq1DRbClDVtQbeenPiS
	 o+4vSODpJJUq1BwUT9ANhYvKuB3LXQMW7PW+d9a31f7sfaKoHb1RconLriQ8o4QNWq
	 ZXZhp7eyilNzd9MCp1XuEdxQ5WEDN3WgOgv3KSNSbZZmkK4G2aCTPi0anaPnUrbd6X
	 G3cJztijV6yWQ==
Date: Tue, 30 Aug 2022 13:00:40 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: JC Kuo <jckuo@nvidia.com>, Kishon Vijay Abraham I <kishon@ti.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org,
	kernel@pengutronix.de
Subject: Re: [PATCH] phy: tegra: xusb: Only warn once reset problems in
 .remove()
Message-ID: <Yw28oH9eGOEhzw9J@matsya>
References: <20220716145403.107703-1-u.kleine-koenig@pengutronix.de>
 <20220718075300.u6yxlwebwnh6gymi@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220718075300.u6yxlwebwnh6gymi@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_003045_986944_2110E8A1 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 18-07-22, 09:53, Uwe Kleine-K=F6nig wrote:
> Hello,
> =

> $Subject ~=3D s/once reset/once about reset/
> =

> . Should I resend, or can you fixup when applying this patch? (Assuming
> you're otherwise happy with the change of course.)

Applied with updated subject :)

-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
