Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C656CC3DA6E
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jan 2024 14:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ppFoY8M4Rig+Z3RGZDrVXAt/mYpHGFaMl4kLnAw2XoM=; b=3AwvmjaKhblbDW
	MXQUJCaPt0Xm0e6hcOxNCijprl3UoEQ1F/pc1GVo1Qn0hkrcbfJ1zwwFx1Ry04pkcO0Y4RSB0NDoe
	6CV3cbUufkn6eZENoDMQrI5mZBKlZWfAZRIOxzgdqPk7r3t6/TTglgpiW7WbxVf8/M1Q7TUPa2sfU
	xEB/udpVp9uwe7nUwk4s9IAjFyvr8suPMm+wpH/sUOrMPHDiZCGzHhCwyyimYCdRSAGyqi4JZ2zp4
	ZrhMxkh8LpJyUhfzhX700TeWsT1OBB6yIYhGfnCB6EU+AsZgrdAKW3Hif/FzE2a22GP7kAjaxJvsv
	6Nas+MO9ZpIwEt9JPlCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL1nl-00B34C-1l;
	Wed, 03 Jan 2024 14:00:57 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL1ni-00B33H-2T
	for linux-phy@lists.infradead.org;
	Wed, 03 Jan 2024 14:00:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=AsG33UPNYjYCjVVsF0qY80s0GE26xn+JI/RSCas0qdI=; b=Kofrjrnmvk2RLHNCJnjXC/iFyX
	U+oxOjVpJ8MVWuF0Uv0DCO9lH8BHbvzcmEN2EqKeNReOvuPsXS0/zwyH7hr/bcZ2q1+2t/pCTatBM
	Zzbo8ZEu5O1IK1wGpQPprU+rAhWg4IpzXMVFUno0xWaWJG8euRPpUNDkc7xlYTSa+T2tqEealWgWr
	slVgv9J+H5JIJNkYp6OMlG21uNDUnsv3jPLSPZ3ssz2RpgePDWNtGB9XNxYPsOS0ypkurs2VLf/jX
	VTp1udt8Oe9TPYTm+kz3CQHUthFrSZRtPe4qi4F0Js0+8SrZ0W+zCYOc15dMpmZMT2AwEQaaDk8CU
	umBF3lLQ==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:36860)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <linux@armlinux.org.uk>)
	id 1rL1nM-0007X5-2r;
	Wed, 03 Jan 2024 14:00:32 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1rL1nM-0006QC-I6; Wed, 03 Jan 2024 14:00:32 +0000
Date: Wed, 3 Jan 2024 14:00:32 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Yajun Deng <yajun.deng@linux.dev>
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
	pabeni@redhat.com, andrew@lunn.ch, olteanv@gmail.com,
	hkallweit1@gmail.com, przemyslaw.kitszel@intel.com,
	kabel@kernel.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH net-next v2 0/2] net: phy: Use is_phy_driver() and
 is_phy_device()
Message-ID: <ZZVogCGYu9pIR620@shell.armlinux.org.uk>
References: <20240103025334.541682-1-yajun.deng@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240103025334.541682-1-yajun.deng@linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_060054_806643_6033A294 
X-CRM114-Status: GOOD (  14.45  )
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

It is not a good idea to post a new series while discussion of the first
is still on-going, even if it has been 24 hours since you last posted a
patch. If discussion is still going on, then we don't need the
distraction of yet another series to duplicate the comments to.

I remain completely unconvinced of the merit of these changes. IMHO,
it is pure churn for churn's sake - there is no _real_ benefit. It
doesn't fix a bug. It doesn't make the code easier to read. It only
satisfies some ideological idea that all drivers should look the same.

Unless a very good justification can be found, I am not in favour of
changing these drivers.

There _may_ be good merit in is_phy_driver() and is_phy_device(), and
as Andrew says, that should be done _first_.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
