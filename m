Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37F69E77173
	for <linux-phy@archiver.kernel.org>; Sun,  8 Dec 2024 16:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/PRl8VVbZswEj3qA7fNFaUyEQwIwLDoxJlQDEovlxDU=; b=V/qGHqSHl7HxRg
	nTuIck/ZC9r5x2t0zOsvlvr/dLY9kGcfopcsTLfFzV6+lqcdPHWn56hN1gfVrEHrf2Hc3aNN1fr+d
	0sP3dhrzfxXcG9jrkdZHAA9TQbjPh2KbE3kjvMka0uk45QmomARQvKs7ZjCucN4B92C1G8JuPiyVY
	1H7OClnjQbZZOtzi3HOdG7kx13Gp6CnQGkOaDdoNaHtGAsBsBzX9YUqoVFXnRuvGAAkx2xtimuutT
	YatWJaUhrIKaktlmnxCsaD3prtvdVEtHGFSNxLIx7qaR+nHTdSz/srOfnirGL52W0HMZ2hNpvr30G
	VrCuAyRG2BIyxz6DdFXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKKcO-00000005b5P-2gWd;
	Sun, 08 Dec 2024 16:58:52 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKKcL-00000005b50-2PqP
	for linux-phy@lists.infradead.org;
	Sun, 08 Dec 2024 16:58:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 217D25C4A2D;
	Sun,  8 Dec 2024 16:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABAD6C4CED2;
	Sun,  8 Dec 2024 16:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733677128;
	bh=5IOKo9J5hlH0BhVeG4p+x8nwui+eCYe8Qq9H8/+LkJI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=jdvflYg/xJqwFRt8RlUDaSP13DIYB4X7lTg2Mr9Tpen2HV7fEIkFDO9DCF9AKbq/c
	 ztWtYi87mHJRv2igmUvupW5C+HFikgWhcAqpXgPpaivfr6dvF9Z1gbRgeNcT4atBSD
	 dItH9FCWKZ9bB8tecImDI3wElbcTdVDP65e9jRbiQ1OcrNftSf0FlcbuHBKPjegL2e
	 e5FsXJ6X13DW5ZYgy8fMnQ/N12JB1ZI0c712eeB97VU9qS1yMWu+wZrjpUlHveJwCd
	 XLc4ltqplUfc+BPKWb3qGootBeJZzbVoRP9UeqZNaw459TV65Yn+iFBQw7dhd3qtqC
	 QGt7FnChGm3uA==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, Justin Chen <justin.chen@broadcom.com>
Cc: f.fainelli@gmail.com, kishon@kernel.org, 
 bcm-kernel-feedback-list@broadcom.com
In-Reply-To: <20241024213540.1059412-1-justin.chen@broadcom.com>
References: <20241024213540.1059412-1-justin.chen@broadcom.com>
Subject: Re: [PATCH] phy: usb: Toggle the PHY power during init
Message-Id: <173367712623.1031947.1651840155290171990.b4-ty@kernel.org>
Date: Sun, 08 Dec 2024 22:28:46 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241208_085849_673006_B6ED6495 
X-CRM114-Status: UNSURE (   5.08  )
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


On Thu, 24 Oct 2024 14:35:40 -0700, Justin Chen wrote:
> When bringing up the PHY, it might be in a bad state if left powered.
> One case is we lose the PLL lock if the PLL is gated while the PHY
> is powered. Toggle the PHY power so we can start from a known state.
> 
> 

Applied, thanks!

[1/1] phy: usb: Toggle the PHY power during init
      commit: 0a92ea87bdd6f77ca4e17fe19649882cf5209edd

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
