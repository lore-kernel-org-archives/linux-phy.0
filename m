Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EB1EEB3644
	for <linux-phy@archiver.kernel.org>; Mon,  2 Mar 2026 23:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jHthmhpiLNm48lL3/A/i00N1m2x8vf3jLw6DYgHERfo=; b=ij9K43kW+llRs/
	IFbTS8k/0OGikeuK4DHUoD2dHRMpbz5gpDGCm/6c7SgluHRVGq2Y7K7KHw6gAz1it7yjUl3izZGjg
	AW0TY85fZB0ypNUuqdiAjG140oSxgWNnNYWP5WTV7mDgcuasi3ZHoclUC6aty8iJAytQ0DDrLoJkb
	xygmDT3iphMTARp+kHQmwzdksuqOiPJur1fTWPs6+eRsuyA2XCny4d37hsfm1GVRHC9nUdmnmbAkF
	FVhsPaVPPee5WnJR+sENLDrffAABK6a3hCqUjoaHwDjfc5ZyP+ehpn24GXf5jkWiIhp/83DeBWjf4
	KtviFH3kImqyby696e4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxD8v-0000000EEiv-3wbD;
	Mon, 02 Mar 2026 23:57:41 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxD8t-0000000EEiS-2jem;
	Mon, 02 Mar 2026 23:57:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id BDE69600AE;
	Mon,  2 Mar 2026 23:57:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFF81C19423;
	Mon,  2 Mar 2026 23:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772495858;
	bh=IubmTnHFo+goc2jOm+xUKkKIOIMV2WE1IuL5F2YSGnA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=oRrec1jlC7VP17kgin4gOxh8gT2N4YTIjFvXSK8bee1hl7mDmrDck+QcBuuEpckES
	 cvydx8LeRwdpHrCDNNXSAzUM04+uaYn5/3XJRnZ2jXEw0jRAeKS+BGS1lfz6/V7V+n
	 mrHaijq/06TMyEU4xL2IMbUkBG0VJXeYzbjmlQc9Fe02I6bjNO4hfeZc4ulNXkytUb
	 8fRV+qVISvI5qrbS9fawBe52+rHkY7IJuYyGiFlNVMci2VXGUMK5yid2T2JEZ3+La1
	 QBQWtyW9kDJVb8/WrK1ZiW7Zo+jbA2XUVzDFrTmpIx5wafFzIhV96RCjJCy5G9hRHJ
	 Vt/N6Mx+lgGbA==
Date: Mon, 2 Mar 2026 15:57:36 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>, Neil Armstrong
 <neil.armstrong@linaro.org>, netdev@vger.kernel.org, Paolo Abeni
 <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH RESEND2 net-next 0/8] net: stmmac: qcom-ethqos: further
 serdes reorganisation
Message-ID: <20260302155736.1fd2980e@kernel.org>
In-Reply-To: <aaRBjWhP4-7Kru9D@shell.armlinux.org.uk>
References: <aaDSJAc-x2-klvHJ@shell.armlinux.org.uk>
	<aaIysVxy-WxbiJz9@shell.armlinux.org.uk>
	<20260227165556.5cf9e844@kernel.org>
	<20260228083111.5df8550c@kernel.org>
	<aaRBjWhP4-7Kru9D@shell.armlinux.org.uk>
MIME-Version: 1.0
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

On Sun, 1 Mar 2026 13:39:25 +0000 Russell King (Oracle) wrote:
> On Sat, Feb 28, 2026 at 08:31:11AM -0800, Jakub Kicinski wrote:
> > On Fri, 27 Feb 2026 16:55:56 -0800 Jakub Kicinski wrote:  
> > > Yes, that's what I thought but then I saw the other thread..  
> > 
> > Trying to apply this now but stmmac parts don't apply on Linus's tree,
> > and Vinod wants a tag :( What do we do?   
> 
> The problem will be that this series has dependencies on the first
> batch of qcom-ethqos patches, particularly:
> cd0aa6515350 ("net: stmmac: pass interface mode into fix_mac_speed()
> method")
> b560938163db ("net: stmmac: qcom-ethqos: pass phy interface mode to
> configs")
> fb42f19e671f ("net: stmmac: qcom-ethqos: move SerDes speed
> configuration")
> 
> which enables the change in the third patch of this series - and
> without the third patch, none of the following patches in this series
> can be applied.
> 
> I'm not sure what to suggest either.

Alright, I think the best we can do here is to merge patch 2 
in a "stable tag" way. The rest will have to go via net-next.

I applied patch 2, Russell please rebase the rest on net-next 
and repost. Patch 2 should disappear. I don't want to merge it
now as is without an explicit nod from Vinod. He did ask for 
a tag and we won't provide one.

Vinod / Vladimir, to merge the "stable tag" of patch 2:

tag_name=phy-qcom-sgmii-eth-add-set_mode-and-validate-methods
git fetch https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git
git tag $tag_name 0e8147f4da00
git merge $tag_name
git tag -d $tag_name

I think this should work.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
