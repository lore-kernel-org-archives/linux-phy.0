Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97644C47073
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jan 2024 13:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mAKx80+EkAV5aBFuDm3lLVla0VL5mPbStiK2Xub9a9Q=; b=UZMNf1rTystZiw
	CJOg4HQ+aS3zdVs0ws7gPgiZkxdJhXa7XBiDrhPROsZeU7Bwl0ZGMzU22Fh7nOLSPtVkktwR8RZeN
	NFBDt6+nZp0s2TqZ4tJ+k9U+oPYG0oAGlDH8kOpYXJcJvdJJejS5m+IBDnSz2dzT+QIOxXFwcu2Gw
	LWnhd4HOXoK58OyjI4xHS5JYqN+OMA222Ne4QwjiaElbSGz8sSFN72I0oT3zTuf/Y/ZbkVAPLEriM
	mhw7Dk3M7QKXMKA9VCSXIVr/OZXg9CMPbPmMoN4xmSPQJ36pI0RP2mcQY9xQUcB3kmg/lsNAGOgA2
	x6hf9Q0bE19UgNXoQhYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL1hw-00B1ng-16;
	Wed, 03 Jan 2024 13:54:56 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL1ht-00B1n4-2J
	for linux-phy@lists.infradead.org;
	Wed, 03 Jan 2024 13:54:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=B6mFRE7y+AFa7z4uxe9OX4CxoJLcZgIi5f2fGVeY1X4=; b=fz03eCtEYIROoSjL2PoKk34UaN
	nWIZ8y3I80Du2ekglxO782pzI84U2yxmPVHbGBKyPrlBb4wGHiThgnDXehKr0g5e9aXpbOPednXbl
	ZSyJQX7p4d5D2KRI8j5iC887n8AO8prjw8AF3WmTtSMYWvC1lUr6u3DO4OHTWaSTP7ts=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1rL1hV-004G7n-7m; Wed, 03 Jan 2024 14:54:29 +0100
Date: Wed, 3 Jan 2024 14:54:29 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Yajun Deng <yajun.deng@linux.dev>
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
	pabeni@redhat.com, olteanv@gmail.com, hkallweit1@gmail.com,
	linux@armlinux.org.uk, przemyslaw.kitszel@intel.com,
	rmk+kernel@armlinux.org.uk, kabel@kernel.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH net-next v2 0/2] net: phy: Use is_phy_driver() and
 is_phy_device()
Message-ID: <46528573-b584-4e37-82c9-f8fc4e0428d9@lunn.ch>
References: <20240103025334.541682-1-yajun.deng@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240103025334.541682-1-yajun.deng@linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_055453_755079_1CB4FC8E 
X-CRM114-Status: GOOD (  13.90  )
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

On Wed, Jan 03, 2024 at 10:53:32AM +0800, Yajun Deng wrote:
> There is only one flag that can be set in struct mdio_driver_common and
> mdio_device. We can compare the probe of the driver or the type of the
> device to implement it. Hence, these flags in struct mdio_driver_common
> and mdio_device can be removed.
> 
> Introduce is_phy_driver() and is_phy_device(). Use them test the driver
> or device.

I'm still not convinced this is useful. Please expand your commit
message.  One things which might convince me this is useful is if the
PHY drivers can make there struct phy_driver structures const.

Also, please break this patch series up. You should be able to add the
helper is_phy_driver() and make use of it, without changing
common. You should be able to add is_phy_device() without changing
common. So do these little steps first. The current code is hard to
review because these changes are all mixed in with everything
else. Once you have done the preparation steps, you can then do the
mass change.

    Andrew

---
pw-bot: cr

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
