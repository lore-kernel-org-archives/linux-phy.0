Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3F25EFCE56
	for <linux-phy@archiver.kernel.org>; Thu,  5 Mar 2026 01:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kck8ovkB61yZdlNOfJNUpQPEVu2lYiQU8oer4bs/A/U=; b=YffJ7IeEsoVPFN
	Tn4C3FU7MCmsiUjUpbMrTFBIStx1kcq7XFValDyXjO6bo+/AB7UE/kkL+TdlxnPDXwGrtYltxUr60
	FOgw6TitTDjIsBM/9dUlkqgiXdvKPVT5lAE5F8X4z2p6HYy2JAt/Izpm+pR3Q4+bgIKjzq7BHgYzx
	AQLx6vygg7VViT/G+bOC8T1MNynsA0U4kUKjcckLeJvbgN4eaJj2DwsRLu7rlbYKjbLxwbbZsMs9r
	XjZDdc4RiJgQSbjOSY4KXqE77BReTYi1sFtwIqOInybiUP7+uKJ2rIarCRo4pZGkoDtuz9/mdxHxj
	+DK+uFviH0Lz5TLxIVTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxxwr-00000000lZo-1tgD;
	Thu, 05 Mar 2026 01:56:21 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxxwq-00000000lZA-214K;
	Thu, 05 Mar 2026 01:56:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9207561339;
	Thu,  5 Mar 2026 01:56:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7454C4CEF7;
	Thu,  5 Mar 2026 01:56:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772675779;
	bh=7f9FrJn1QE1Ys6n+lCWljrWlaMQba/yHYK2P2Vp47yo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=AD88mOdVAEzXpXhiJiSgq7SVc/mtFICynd6q/ArWcmpp6lYu5I9Qq/yo+45DrgBI9
	 6IACN8SqaZcht2gCmkz0858h03LSFSRHkjJCR2OTMOBy8vf65edEwDHamH0VJHiRsO
	 DtQxFTQXx3ya8il/2YSY/x/vFTsewZsqGVJf6huhe4m/pWJAjoMgGydLxc/FhUA9rl
	 GUA/5TSiJYxc9uo+ZKM5NAryp2NusjQQRdYWlrCZl5IpKM71HbUtAoW0ZZRzBwPF2z
	 ytbQ4N80Vu5+kj+fkQlk7svM5XfaduqHZ1yELL+22Grfcc6PBvDXbeX1YRl/GM1Emu
	 M79q3lJivjyww==
Date: Wed, 4 Mar 2026 17:56:17 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: "Russell King (Oracle)" <linux@armlinux.org.uk>, Andrew Lunn
 <andrew@lunn.ch>, Alexandre Torgue <alexandre.torgue@foss.st.com>, Andrew
 Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, Mohd Ayaan Anwar
 <mohd.anwar@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 netdev@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>
Subject: Re: [PATCH net-next v2 0/7] net: stmmac: qcom-ethqos: further
 serdes reorganisation
Message-ID: <20260304175617.3974d064@kernel.org>
In-Reply-To: <aacD3osfaZkLsGxm@shell.armlinux.org.uk>
References: <aacD3osfaZkLsGxm@shell.armlinux.org.uk>
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

On Tue, 3 Mar 2026 15:53:02 +0000 Russell King (Oracle) wrote:
> This part of the series focuses on the generic PHY driver, but these
> changes have dependencies on the ethernet driver, hence why
> it will need to go via net-next. Furthermore, subsequent changes
> depend on these patches.

Hi Vinod, given the dependency on the existing stuff in net-next
are you okay with patches 3-6 going to net-next without at tag
you can pull?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
