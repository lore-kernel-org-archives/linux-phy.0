Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B63CCCDB483
	for <linux-phy@archiver.kernel.org>; Fri, 13 Oct 2023 10:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RzCI/HfXn/edAzL9SYlUxBS+ifjE3vYNv9xWxI6nSuA=; b=ii1iLYNbQ/HHE8
	CGwewMcB+SJjxzBnruJl3BkU31ihICwQVs7Kkd/JqtHwfN0m1+At9RO1pS2/+6uw6xsldWeK+xQSI
	437wcDUXBt1+k6+zd9h8ga5zfsOlOxDXrGLxIg7pBdtN7zSfVh3JQ3k8mQAxXSxC8Go1A+0TPY5xj
	j5h0rUhPJRyCbLo0wY84e8Mk5uJ/oq7LCJE5ZeXkHtM9IMYbTkVPNgMvKdjQDl+scemaVBEBizh7t
	O6ZIwRow12EcXNpVteZ1pixjIscAz50LuNCoB0AbxFmh/qAjHidLM5kuaCFKaN4RP3N5kQK0G1v7h
	VneeY8+vmEqh2KGEBdvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFe3-003EAm-1N;
	Fri, 13 Oct 2023 10:43:51 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFe0-003E8p-0w
	for linux-phy@lists.infradead.org;
	Fri, 13 Oct 2023 10:43:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 3F440CE30B2;
	Fri, 13 Oct 2023 10:43:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44322C433D9;
	Fri, 13 Oct 2023 10:43:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697193825;
	bh=XYLpwKUL8qMIh/EQMQr/uGImOVYyaUVK/fZkpasK5JE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=O5EeFIvzC1VAynzxayVEvE6G+yy5PN8Qupf+PM7jMDRN3oG9Bmp+UUpSYO3WaE2LX
	 6CXbnE+MncG9ZCs0mlwrjiDpLu1xKtJ3ip+mcnaX+4Ni/2KqbzTIjnBxX6MeKncozo
	 RDEJaPZj4VP5KaGUHbnfuYW7qE+PTi9uieZcmEBgg0Wpn/zhcDr2GKaGhoxzwitNgj
	 BHNwVh/+0X2Q6jsU6z4LI81ciY6DnHxTiCw8KMuyyGnFAfaTdhojSwq7livAWsUvbq
	 LfIDDUmpI+o6aUEKWttd+Q0buQUAoWVZ05D/om7NO3rYpr1US6aFugZhy7MCsllsQr
	 hmICMAESHygIg==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org
In-Reply-To: <20231011081817.257113-1-yoshihiro.shimoda.uh@renesas.com>
References: <20231011081817.257113-1-yoshihiro.shimoda.uh@renesas.com>
Subject: Re: [PATCH 0/2] phy: renesas: r8a779f0-ether-serdes: Add
 Re-initialize code
Message-Id: <169719382387.165658.2498971113931936275.b4-ty@kernel.org>
Date: Fri, 13 Oct 2023 16:13:43 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_034348_526697_1DD00DF2 
X-CRM114-Status: UNSURE (   4.99  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On Wed, 11 Oct 2023 17:18:15 +0900, Yoshihiro Shimoda wrote:
> This patch series can re-initialize this PHY after called phy_exit() and
> phy_init() again. Such re-initializing the PHY will be needed for system
> suspend/resume.
> 
> Yoshihiro Shimoda (2):
>   phy: renesas: r8a779f0-ether-serdes: Reset in .init()
>   phy: renesas: r8a779f0-ether-serdes: Add .exit() ops
> 
> [...]

Applied, thanks!

[1/2] phy: renesas: r8a779f0-ether-serdes: Reset in .init()
      commit: aa4c0bbf820ddb9dd8105a403aa12df57b9e5129
[2/2] phy: renesas: r8a779f0-ether-serdes: Add .exit() ops
      commit: 1a5361189b7acac15b9b086b2300a11b7aa84c06

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
