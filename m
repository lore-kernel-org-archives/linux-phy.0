Return-Path: <SRS0=5tgH=IB=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F23B0C433DB
	for <linux-phy@archiver.kernel.org>; Wed,  3 Mar 2021 18:01:26 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 86CD2614A7
	for <linux-phy@archiver.kernel.org>; Wed,  3 Mar 2021 18:01:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 86CD2614A7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RJ8cK5LtzMjCIyJ/5dqCuqt3GCK7AEuMzW44KNbjN7M=; b=hNWCj17bGDFeoqsmhpolwZW9t
	WJzd+8ES3GZr/iGIQxb2XStuaoIvkw+5hf1XQRXjsQ7uEGeFcR1uh/u4lKrXJoF4BswFB31aDI01G
	TjfvQi48k8zXzvVr0kPrzpCot+09Z/wKY7Oe0+AkDip128g5DsEiAIvVVFFNsSbs2RBzIJtKM8WRC
	wEx0gho21wtupZXtuXrS0Rdm0cp80Lt1yR+I9VNFIUhC++o40kpmFIVjaeXkp5MVZGuTc+pbfA41t
	7a2ufKa5nrm5hL2K8PIISVKwPLFHvzZEu/LWab/FWahYmPHfoBvlKhCEG4jz7XoHSFpEVzUEW5Fzp
	x28QGoCHQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHVoK-005vVj-2U; Wed, 03 Mar 2021 18:01:24 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHSyD-005GJS-Ej
 for linux-phy@desiato.infradead.org; Wed, 03 Mar 2021 14:59:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=22gJ7xYWFCgk9sKl6MrprSYUDWt71S2aITh2pWg80ec=; b=t6rLA2XwgUBYxBmZD08J8ySYVh
 2AKUUJ2p6sVzeaoW1P3IV/wtqhV+XojGNJQ2PVrGmofOWz9VU9muQ8LhlGuiaSMNnD/kzF3kTpq9q
 mkmioIHkMvaYUsRKGWv080xaCWsXX3OxGz3Phf+1jYS5LtVr77u1J3wTs6DJBgEAaDgyvCQpkPJ05
 v3U22D+8d9d4hLOGC9frIzuDbcEMEWYwtrzsCBw2HQIpsfNrz9Es9Ih+cIB7LZqnXD0r0sJ8NVDin
 4aIy54yGgbzVmIHW2zOm4jSP8Orge/LITC0bTVTqs+Y6UtlOLDLv8L9FvAYaE7OcAncPwbSsN10Dd
 oZsYOdhg==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lH2T8-00GxRW-Me
 for linux-phy@lists.infradead.org; Tue, 02 Mar 2021 10:41:40 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 721C864F04;
 Tue,  2 Mar 2021 10:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1614681681;
 bh=ppLyOzfn75hvjWPuiyp3XKquj3xU0eG3AVxg3I9CdH4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KYCQvqP+gfX+J8q1ekAnFFL0J6zpc2cpp4OJXM8IL7grGLEvAJY94U/n2KSUwArza
 hib5OLK100mpjbQPrH4gnHq/4Ja4+h54bkjBOXp0WkCUU+jh6kLidKCMAxTBkPSn3M
 TzUxNgDqwcYS6TuYW32pukx7czo4XDLUNU0ObVhk=
Date: Tue, 2 Mar 2021 11:41:18 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: stable@vger.kernel.org, Linux Phy <linux-phy@lists.infradead.org>,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: Commits for 5.11 stable
Message-ID: <YD4WTn1mdE+RBoR1@kroah.com>
References: <YD4LfQEXWawk2b4C@vkoul-mobl> <YD4NINW6u28SxedJ@kroah.com>
 <YD4SlyXIVFZQYip5@vkoul-mobl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YD4SlyXIVFZQYip5@vkoul-mobl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210302_104140_016591_E11A2964 
X-CRM114-Status: GOOD (  11.01  )
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

On Tue, Mar 02, 2021 at 03:55:27PM +0530, Vinod Koul wrote:
> 
> HI Greg,
> 
> On 02-03-21, 11:02, Greg KH wrote:
> > On Tue, Mar 02, 2021 at 03:25:09PM +0530, Vinod Koul wrote:
> > > Hi Greg,
> > > 
> > > Please include these commits for 5.11 stable series
> > > 
> > > 9a8b9434c60f phy: mediatek: Add missing MODULE_DEVICE_TABLE()
> > > 25e3ee590f62 phy: phy-brcm-sata: remove unneeded semicolon
> > > 6b46e60a6943 phy: USB_LGM_PHY should depend on X86
> > > 36acd5e24e30 phy: lantiq: rcu-usb2: wait after clock enable
> > > c188365402f6 phy: rockchip: emmc, add vendor prefix to dts properties
> > > 88d9f40c4b71 devicetree: phy: rockchip-emmc optional add vendor prefix
> > > aaf316de3bba phy: cpcap-usb: remove unneeded conversion to bool
> > > 39961bd6b70e phy: rockchip-emmc: emmc_phy_init() always return 0
> > 
> > Why take these?
> > 
> > What problems do they solve?
> 
> Sorry I should have provided the context. I had sent these as fixes for
> 5.11 but that was bit late so we merged it for 5.12 [1]

I still do not have any context :(

> > How does 25e3ee590f62 meet the stable tree rules?

And all of these really are needed for stable?  Again, how does this
above commit qualify?

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
