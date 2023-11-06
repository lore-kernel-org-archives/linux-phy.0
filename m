Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82585C4167D
	for <linux-phy@archiver.kernel.org>; Mon,  6 Nov 2023 11:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qJyxdgQ0rcIKRY3LfaZ1y1miFLzvZo9AeVO0l5WPX2M=; b=3jYUMgmepKLoPh
	pXwCoJNDmfTZy4BpxJ6ABFVojOqOjpDvCHGSeCD6jc6kvn8+nt4ZzoGfHsjCdOtSzTVxCibsTBJLQ
	1KAgi3NQDo3WlOgZ6KnmiA7EsuTB2aL/8q0SudoOtRQj+5V3zAKJNVd28+UGzJio7HidL0996iJoi
	ByFkdLuNz3sJ8qHdUi+HKh0tMs3Nxvz4JRkXIMAmsJk4uf8XeInMIW63fN6xtZD9qmkYtttKYP9TV
	QsGYPrAybHskGDW1beFvCpDmqW1lBsabcrp9ZTV4VKPBMExacSLcBtyh4oZooqyvIDgpeRsnTlUCK
	6j9SXyKZag/7C4Y4Tf8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qzxix-00GNVw-0Z;
	Mon, 06 Nov 2023 11:24:55 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qzxiv-00GNV6-0R
	for linux-phy@lists.infradead.org;
	Mon, 06 Nov 2023 11:24:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id C8063B80F01;
	Mon,  6 Nov 2023 11:24:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C904C433C7;
	Mon,  6 Nov 2023 11:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699269890;
	bh=YkEv2EZkQXxEy3IB6Z8hqcYQpz7j5UfPVeWSu4+609Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jeONS6MKrztCYfQmThd6yaLlb5+OCEHxmsTOZ+KR45Ud3a+PBLw6pMOFZ5hsQbmlV
	 4uuY3IhQsnAPAFc/f8jdHratGJr/+itpyLAm/ezOGJWrImzPzGv3jfNZTywYhuQ4iA
	 C8ThKcYvqJGeUPAbERSsji7RNHzQXUKg5mFtZPOfMf5SGdJCo7kjBiULomxIbFSwQP
	 skJt/nYedGg1CKPicr1RI5UAKvlnVQe17zHD3/LYI6Cc2N9+vefA/OCjKtzBY5X0NX
	 Uwld7gfbPsukoJ980zxHOeuZTHMPRvM8Kxyox2/NWSt32csFcSNRmDdHGjfv/eg3XP
	 urNhL4m7CwxmA==
Date: Mon, 6 Nov 2023 16:54:45 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Johan Hovold <johan+linaro@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH 0/3] Revert "usb: phy: add usb phy notify port status API"
Message-ID: <ZUjM/VEliT5c8H4C@matsya>
References: <20231106110654.31090-1-johan+linaro@kernel.org>
 <2023110623-pointing-stump-643d@gregkh>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2023110623-pointing-stump-643d@gregkh>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231106_032453_336494_3400F56B 
X-CRM114-Status: GOOD (  18.38  )
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

On 06-11-23, 12:15, Greg Kroah-Hartman wrote:
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

Not sure why, they didnt go thru phy ss!

> 
> > Preferably these should go in through Greg's tree for 6.7-rc1.
> 
> I'll be glad to take this if I can get an ack for it.

Pls do drop this:

Acked-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
