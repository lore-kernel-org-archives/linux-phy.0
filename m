Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33355C4167B
	for <linux-phy@archiver.kernel.org>; Mon,  6 Nov 2023 11:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SqFTqjXSfWOZuEVojq6a3Mn1mLr+OGM4SlkyMBHigRg=; b=pLCzI/1/bym2Yj
	7PzKN6BkYrN/1uQqmQsupqzYMf0i6aTG+BWAdj8qvwpn6rk/Er+kpJoIs9UZ/I0Uwj2Aa5DdHcAao
	aZcQ8AEYDPlX6lVf3cePODWv+egXGGTz/q7xT5UYc0fcjSuQ4kuKtTFc5Ylvyq82tFCXf70HjtdG8
	96UP19GqhytcfgFCwMFupof/0MYk4X4LB4lzeMOtrWAcVRBCVGNTAPFSJ6hUJZgbbkiQugFjP/5QH
	KAVFhHbwfAeUkzm7ysN56tltcMw4Q2PjBSLLXKHkQYbQHxYDFxzkfnr8zkurm7S8P0W6Wjee3RmiJ
	tG3nF0nDzb1dJwgJXUOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qzxiv-00GNVP-2n;
	Mon, 06 Nov 2023 11:24:53 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qzxis-00GNUp-2D
	for linux-phy@lists.infradead.org;
	Mon, 06 Nov 2023 11:24:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B63A560EA7;
	Mon,  6 Nov 2023 11:24:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6557CC433C8;
	Mon,  6 Nov 2023 11:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699269889;
	bh=mT8MYz/hw3XGXo1S9UTkvU5JcCYiuGY/Ocu62M/gtpI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UaMZYp7ab6jBn6ILZn9hw3b2gL485DAFB41hS97dDm1izt5S0I6BA91feLBww5KfU
	 UHRlCpgqrpxf+0b7IuAnsZ4e7FegOspROtjnCqJ+dPWQIMCQVc6SNkPlDPFeuaQcM7
	 Av0PaHoUECFwbHvFyqG0Ni87Q0mDj7J/4GvycRdjk50cLdYgg/vzGIguZlm80ZTNQ1
	 abaIrxQMShDsepBhk3DwE8BPI2ERLDO8ylOZN7sTQVmTXGEbYuw1AaQkcF6k3B+YRO
	 QGN0DBz3fPeajNqMmHgQFufBjia6QMygMKO1AiZ33ihL7VP15L6x2Ossn5wJLXdO7R
	 aBp65NDkbNIHQ==
Received: from johan by xi.lan with local (Exim 4.96)
	(envelope-from <johan@kernel.org>)
	id 1qzxja-00089V-2P;
	Mon, 06 Nov 2023 12:25:34 +0100
Date: Mon, 6 Nov 2023 12:25:34 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH 0/3] Revert "usb: phy: add usb phy notify port status API"
Message-ID: <ZUjNLj-sKBogTKcd@hovoldconsulting.com>
References: <20231106110654.31090-1-johan+linaro@kernel.org>
 <2023110623-pointing-stump-643d@gregkh>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2023110623-pointing-stump-643d@gregkh>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231106_032450_782943_19565F2A 
X-CRM114-Status: GOOD (  20.13  )
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

On Mon, Nov 06, 2023 at 12:15:59PM +0100, Greg Kroah-Hartman wrote:
> On Mon, Nov 06, 2023 at 12:06:51PM +0100, Johan Hovold wrote:
> > The recently added Realtek PHY drivers depend on the new port status
> > notification mechanism which was built on the deprecated USB PHY
> > implementation and devicetree binding.
> > 
> > Specifically, using these PHYs would require describing the very same
> > PHY using both the generic "phy" property and the deprecated "usb-phy"
> > property which is clearly wrong.
> > 
> > We should not be building new functionality on top of the legacy USB PHY
> > implementation even if it is currently stuck in some kind of
> > transitional limbo.
> > 
> > Revert the new Realtek PHY drivers for now so that the port status
> > notification interface can be reverted and replaced before we dig
> > ourselves into an even deeper hole with this PHY mess.
> > 
> > Note that there are no upstream users of these PHYs and the drivers were
> > only included in 6.6 so there should still be time to undo this.
> 
> No users of these phy drivers yet?  Why were they added?

The devicetree bindings were also merged in 6.6 (and are left in place),
but there are no devicetrees that actually use these new bindings in
mainline yet.

> > Preferably these should go in through Greg's tree for 6.7-rc1.
> 
> I'll be glad to take this if I can get an ack for it.

They went in through your tree, but note that you may now get a conflict
with 

	7e909370a5cd ("phy: realtek: Replace of_device.h with explicit includes")

in the phy tree.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
