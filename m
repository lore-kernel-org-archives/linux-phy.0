Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C195C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  2 Mar 2022 17:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+K/q/dC9yNe+jCFDiZt50LBHeHLat+t8oK34gPDCCa0=; b=4mipb60VmLV6It
	yl1w6PXYiI3EahBCCgkGGM0ZG1Fj3nuaQrDm+0qggQx5nsKDQdf6wGCycIQuxn+6u+6jP4eIOfYFQ
	0nK+2NLyLPX7lMHUCdFZ+JXsNrYsOOj0YT3l1BZZ+6ZsGs+7x3+STNswPYffXWMyfBb08rIhg3wwq
	ga5PymsFP3M3YT8YUIAnBCPMdk4vRLMm1G0yRIeMOv/3D+PgoUlY2ryuV2eX5cKLxly8WTk3MvMjs
	rJiekK82iG3htDAx9NNnpzwRzY/A9DUNaHbOocOPSfQz9p7iq7zAQ0xpDrVK5BaL7LDf0Wy8aodRd
	w87PA6SgDwQJk1SmlI0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPSYn-003Usf-1X; Wed, 02 Mar 2022 17:14:45 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPSYZ-003Uo6-2G; Wed, 02 Mar 2022 17:14:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id A9D02B82020;
 Wed,  2 Mar 2022 17:14:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75300C004E1;
 Wed,  2 Mar 2022 17:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646241268;
 bh=SOwFFF1Iq+bs3gvz8AxW8+ACa2Xzt/OHDUy2LcN4t4Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VVXBqVqWvkyQdraxGqpHYbW56m0sDK6dga0TJE2eCl12sXOukgforDdWC+PmmXqiV
 yLUqxyNmZ8Yh0nM9+UWYn2xspcy0vF3WB5RcIfXRMiNgci9w0K7tqELjZ/TOB7f4FH
 wVR90qm+bWO81OQ9sqNcpcqeYu9qrWDsTjNFNNbaLBejlLfMREfmqC4y75qM5QVZ2j
 AP52UGmGXuoXBWlbxabP5tpObaKrlrzhz2Ouvp5ykFMpvaePKPKi8udcmVHLDNekrX
 K43O+pe3eeEvIguILzcbK07en58thnRRb9Xenro9plN3zTpnzJmR7/8TvwGmbYctrm
 ToPC4c+sZFgIg==
Date: Wed, 2 Mar 2022 22:44:23 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Rob Herring <robh+dt@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Peter Geis <pgwipeout@gmail.com>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>,
 Jianqun Xu <jay.xu@rock-chips.com>, Tobias Schramm <t.schramm@manjaro.org>,
 Michael Riesch <michael.riesch@wolfvision.net>, devicetree@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: Revert "dt-bindings: soc: grf: add naneng
 combo phy register compatible"
Message-ID: <Yh+l7+7zDvI/9e6n@matsya>
References: <20220302143427.447748-1-vkoul@kernel.org>
 <CAL_JsqJMZ8PHqJk6drNbNHprmfeV9UvJzJnech7sz_JwcdbckA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqJMZ8PHqJk6drNbNHprmfeV9UvJzJnech7sz_JwcdbckA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_091431_287512_F892A918 
X-CRM114-Status: GOOD (  14.96  )
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

On 02-03-22, 11:04, Rob Herring wrote:
> On Wed, Mar 2, 2022 at 8:34 AM Vinod Koul <vkoul@kernel.org> wrote:
> >
> > This reverts commit b3df807e1fb0 ("dt-bindings: soc: grf: add naneng
> > combo phy register compatible") as that was wrongly merged, so better to
> > drop the wrong patch
> >
> > Signed-off-by: Vinod Koul <vkoul@kernel.org>
> > ---
> > I am applying this to phy-next to fix the issue
> 
> Reverting will just cause a different warning that it is undocumented.

Right, but a patch for that would fix that

> The fix in the other thread won't apply either if you revert.

It is not applying for me, so that needs to be updated anyways..

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
