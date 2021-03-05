Return-Path: <SRS0=UbcY=ID=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 300AFC433E0
	for <linux-phy@archiver.kernel.org>; Fri,  5 Mar 2021 10:30:25 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B174D64F5F
	for <linux-phy@archiver.kernel.org>; Fri,  5 Mar 2021 10:30:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B174D64F5F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zEp0GDHVNQvh1UR15upy5hmc/iwNiEXpQboCdYe20UU=; b=P0MU7Cg+mPract/nUtvH6I6W+
	bCScXlcqeYL4VodOcxfDsPoGF2My+hA+CsxgMiPRDKAk2RYdL6QeVMbiDeN1SlHb37EazwIls09JB
	wuigaCm1Ry+JYpgbZbW2lq0gkNFu/zhfttKEjlNvxxP6EqAZAGt0B2Yeh2uk7QhnRIqwb3S5V2G7o
	WJQ4v/i/liBc9YJQOjevoZid8W+sjVBIMU22/oxJ67pg+vKhxCU+MTvUJlX0Msycpp2Q6kDbJtmKV
	PORDJchNxr+az0XeHkhCoMZGni+ii30WA7hQnGkrJkd0+V/4AmnDQYCmZRxWFCMzLtecT5BfStzEy
	3FeMmwaNg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lI7ir-00EZKz-6Z; Fri, 05 Mar 2021 10:30:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lI7ij-00EZIL-VM
 for linux-phy@lists.infradead.org; Fri, 05 Mar 2021 10:30:14 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0081064F5F;
 Fri,  5 Mar 2021 10:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1614940208;
 bh=YDvvFL3cI6/LYE8gxya57Hjtdll5eRILg43TuGqUT4I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=n5I9sbqc4ZTOm3zoZx14rtxo0yykIfZmTNYN9IFr+Q9/HtpBjhflhZl6l6dDuDAWU
 hT/B+To3kpIEHVr/Yj7RU+EoaAlRa1Vuq9LqnmMOoQQaanzIf60caFFipQBf0hUU2D
 I3GzdNhVmzcXPuEYHxbCw4TJPmWPCzz41g0reJo0=
Date: Fri, 5 Mar 2021 11:30:05 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: stable@vger.kernel.org, Linux Phy <linux-phy@lists.infradead.org>,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: Commits for 5.11 stable
Message-ID: <YEIILa2FLKBCcs1S@kroah.com>
References: <YD4LfQEXWawk2b4C@vkoul-mobl> <YD4NINW6u28SxedJ@kroah.com>
 <YD4SlyXIVFZQYip5@vkoul-mobl> <YD4WTn1mdE+RBoR1@kroah.com>
 <YD4su5gWILbbrd0z@vkoul-mobl> <YD4un+98ZK7yLJNV@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YD4un+98ZK7yLJNV@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_103012_001468_DE275481 
X-CRM114-Status: GOOD (  18.32  )
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

On Tue, Mar 02, 2021 at 01:25:03PM +0100, Greg KH wrote:
> On Tue, Mar 02, 2021 at 05:46:59PM +0530, Vinod Koul wrote:
> > On 02-03-21, 11:41, Greg KH wrote:
> > > On Tue, Mar 02, 2021 at 03:55:27PM +0530, Vinod Koul wrote:
> > > > 
> > > > HI Greg,
> > > > 
> > > > On 02-03-21, 11:02, Greg KH wrote:
> > > > > On Tue, Mar 02, 2021 at 03:25:09PM +0530, Vinod Koul wrote:
> > > > > > Hi Greg,
> > > > > > 
> > > > > > Please include these commits for 5.11 stable series
> > > > > > 
> > > > > > 9a8b9434c60f phy: mediatek: Add missing MODULE_DEVICE_TABLE()
> > > > > > 25e3ee590f62 phy: phy-brcm-sata: remove unneeded semicolon
> > > > > > 6b46e60a6943 phy: USB_LGM_PHY should depend on X86
> > > > > > 36acd5e24e30 phy: lantiq: rcu-usb2: wait after clock enable
> > > > > > c188365402f6 phy: rockchip: emmc, add vendor prefix to dts properties
> > > > > > 88d9f40c4b71 devicetree: phy: rockchip-emmc optional add vendor prefix
> > > > > > aaf316de3bba phy: cpcap-usb: remove unneeded conversion to bool
> > > > > > 39961bd6b70e phy: rockchip-emmc: emmc_phy_init() always return 0
> > > > > 
> > > > > Why take these?
> > > > > 
> > > > > What problems do they solve?
> > > > 
> > > > Sorry I should have provided the context. I had sent these as fixes for
> > > > 5.11 but that was bit late so we merged it for 5.12 [1]
> > > 
> > > I still do not have any context :(
> > 
> > Please see the discussion we had in https://lore.kernel.org/lkml/20210210091249.GC2774@vkoul-mobl.Dlink/
> 
> All that means is that you felt some of these needed to go into 5.11 but
> did not make it.  That does not mean that all of the above qualifies for
> stable backporting, correct?
> 
> So can I have a list of ids, in the order in which they should be
> applied, that you feel should go into 5.11, and any other older stable
> releases?

And again, not all of the above are relevant for stable kernels, and
some have already been applied, so a list of needed patches would be
most helpful here.

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
