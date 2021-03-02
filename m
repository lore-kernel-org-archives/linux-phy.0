Return-Path: <SRS0=GGdd=IA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F82C433E0
	for <linux-phy@archiver.kernel.org>; Tue,  2 Mar 2021 10:02:15 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 63F8564F12
	for <linux-phy@archiver.kernel.org>; Tue,  2 Mar 2021 10:02:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 63F8564F12
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nFiAmtQBpMM1F3THUfjHRrCJzsK3SBcZJM6o/jlLwv4=; b=yqk4ZYSJ2vD6LxzELFAZh9y+B
	5HpzYLwOXuEqDAOnGDZb0ZeKcAfJtP82x9C/aKWy/Y+XIYOKOwwoaJEZfNJXtnXx2+sg9VhDAMk2d
	v9i3PbmZyAS7MdLoRcykI4vY88iPTJIA3Ce82TiNHcsePLlWh6Sv4yvhe19LYDaoOB9fQE4lkWoa+
	aog+0KHZKBWXeec2GdHDYuAvEnOXqWTAE+im0WeQI4R1Q3rGUleI7Fgp6fYJVMRWpHhGwBh9EvKnX
	5yWP+n7y824K+1svTjVI51QkbCmDRURqrsoYPEEqx/kqV7QIPmpRN+mISUIQ8Jz8w+fseeKA8o1xw
	pTiXvlDnA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lH1r4-0007Zy-IV; Tue, 02 Mar 2021 10:02:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lH1r2-0007ZI-Mf
 for linux-phy@lists.infradead.org; Tue, 02 Mar 2021 10:02:13 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 79FE564F0E;
 Tue,  2 Mar 2021 10:02:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1614679331;
 bh=RKLx782e+Xbs66tKtfF0TwGnkvj1uSMgxxXztn0zNhQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MydUhbCxW8C4PzG75K7fHOUMq/uxhmeU27MwfyrQqw8ZOH57fkPScbeI1rFEGCbED
 aB5DnNe7/YY0tKrPo3qHt8oHxfhcbHv2ttX51b2mNzwi38kNdyUZoxyLrftnSP1VdS
 u4qv/3tlC2LMwggFpc22ir3Qsuc1rgWosyGif8cg=
Date: Tue, 2 Mar 2021 11:02:08 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vinod Koul <vkoul@kernel.org>
Subject: Re: Commits for 5.11 stable
Message-ID: <YD4NINW6u28SxedJ@kroah.com>
References: <YD4LfQEXWawk2b4C@vkoul-mobl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YD4LfQEXWawk2b4C@vkoul-mobl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210302_050212_832772_1E943F29 
X-CRM114-Status: UNSURE (   7.61  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Cc: Linux Phy <linux-phy@lists.infradead.org>, stable@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue, Mar 02, 2021 at 03:25:09PM +0530, Vinod Koul wrote:
> Hi Greg,
> 
> Please include these commits for 5.11 stable series
> 
> 9a8b9434c60f phy: mediatek: Add missing MODULE_DEVICE_TABLE()
> 25e3ee590f62 phy: phy-brcm-sata: remove unneeded semicolon
> 6b46e60a6943 phy: USB_LGM_PHY should depend on X86
> 36acd5e24e30 phy: lantiq: rcu-usb2: wait after clock enable
> c188365402f6 phy: rockchip: emmc, add vendor prefix to dts properties
> 88d9f40c4b71 devicetree: phy: rockchip-emmc optional add vendor prefix
> aaf316de3bba phy: cpcap-usb: remove unneeded conversion to bool
> 39961bd6b70e phy: rockchip-emmc: emmc_phy_init() always return 0

Why take these?

What problems do they solve?

How does 25e3ee590f62 meet the stable tree rules?

> Please note that below commit is applicable for 5.7+
> 36acd5e24e30 phy: lantiq: rcu-usb2: wait after clock enable

So for 5.10 also?

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
