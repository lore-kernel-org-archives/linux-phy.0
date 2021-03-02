Return-Path: <SRS0=5tgH=IB=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 629D9C433E0
	for <linux-phy@archiver.kernel.org>; Wed,  3 Mar 2021 18:56:53 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DEDA664ED7
	for <linux-phy@archiver.kernel.org>; Wed,  3 Mar 2021 18:56:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DEDA664ED7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZPOlYZA0SRTZZkQqOgaDYhJOMpxylRD9CEE5RL+nd6w=; b=ZLMULLjzrQDXuYZaNSfQCm5Fv
	IT074a2AdL+dBO6Hs4HCijCVzumPPXx19eEiosRD5qrWkZPwZomQIYbhYfkq2gif5x79EubeyCqnM
	8HSP9zW+kuiSehv/qFdz1eZ7jHVQuVBmbWQ5OFDzncd5O/53u85A6nvGBdi6Jjk+DEiIcoDDs5KUF
	jEcibo4ZFxxp3FJOiqfOShvluLeah1DGZyQ+4k0tFVrAf/CMPvbF2APppXcayJeCzB446brU0QcvM
	TslTnj0d27IEwQG/xAFuV6AczdaraJCig4RGsPvCmrZ87sPbXdsO3RzZsMrFiP25kt3kmHDQzMYC1
	tJisIaxKQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHWfw-0066sa-CF; Wed, 03 Mar 2021 18:56:48 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHT1y-005HXe-Oy
 for linux-phy@desiato.infradead.org; Wed, 03 Mar 2021 15:03:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=q8pNg5ZYBQg7sePAv3cIeE9LDTar2nvb6PeioP+QGRA=; b=KPc73KxoRQDWCJVM7ZDxEF6dHs
 YjhzVEpHb60buTSjBR3fqzndpFiLGaHqR6kXvh7WcqBlK0ZaDXkdD/N1z31sTBgz5CHul2ylH3B0A
 zEK3WqtCUuM1h2y8QLOyZf/fCIxwEFHn1IBBVr3uKnlyq+kjO0t7RWA1pHFkkp2R2pZvgGV6oNi9v
 UkadbOKqEyEp9I9TVv/0q9SHQRi04FjhrHGtqOhQ2kjrbmeBMC0Mt0J9qMS47G8Y0w9rz3j5ELXEQ
 IH14dMIow0dGRQyKlJun8e42RxCCquRLZjnJhXW5MBkt06Al1i8kIU4NLG6BpSe0rWGt3QJZACqhv
 ECqHI0pA==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lH45P-00H63l-U4
 for linux-phy@lists.infradead.org; Tue, 02 Mar 2021 12:25:13 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7BE8B64F14;
 Tue,  2 Mar 2021 12:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1614687906;
 bh=Aldm8YMvXG8WVX+mOd7bcdqNQnSYW9wkuny25CHQMo8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BqY+FnncddCy86MsJfCwxtqZlVd+QhCG/KBo2bHMBnoKIn+sGYVxmZKOw7FoI1H5n
 PbQf6AemFCsRZ8F1Dt8iwo6t58tu/kKXdaFf/EvwaIkxJdN1DPSYGMXt9MLgK6LCuf
 h11SgPfPU/QkmOWIjuxcyzJs09Ypzrw/u1iJx0Ik=
Date: Tue, 2 Mar 2021 13:25:03 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: stable@vger.kernel.org, Linux Phy <linux-phy@lists.infradead.org>,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: Commits for 5.11 stable
Message-ID: <YD4un+98ZK7yLJNV@kroah.com>
References: <YD4LfQEXWawk2b4C@vkoul-mobl> <YD4NINW6u28SxedJ@kroah.com>
 <YD4SlyXIVFZQYip5@vkoul-mobl> <YD4WTn1mdE+RBoR1@kroah.com>
 <YD4su5gWILbbrd0z@vkoul-mobl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YD4su5gWILbbrd0z@vkoul-mobl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210302_122513_860434_3F923FA7 
X-CRM114-Status: GOOD (  12.11  )
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

On Tue, Mar 02, 2021 at 05:46:59PM +0530, Vinod Koul wrote:
> On 02-03-21, 11:41, Greg KH wrote:
> > On Tue, Mar 02, 2021 at 03:55:27PM +0530, Vinod Koul wrote:
> > > 
> > > HI Greg,
> > > 
> > > On 02-03-21, 11:02, Greg KH wrote:
> > > > On Tue, Mar 02, 2021 at 03:25:09PM +0530, Vinod Koul wrote:
> > > > > Hi Greg,
> > > > > 
> > > > > Please include these commits for 5.11 stable series
> > > > > 
> > > > > 9a8b9434c60f phy: mediatek: Add missing MODULE_DEVICE_TABLE()
> > > > > 25e3ee590f62 phy: phy-brcm-sata: remove unneeded semicolon
> > > > > 6b46e60a6943 phy: USB_LGM_PHY should depend on X86
> > > > > 36acd5e24e30 phy: lantiq: rcu-usb2: wait after clock enable
> > > > > c188365402f6 phy: rockchip: emmc, add vendor prefix to dts properties
> > > > > 88d9f40c4b71 devicetree: phy: rockchip-emmc optional add vendor prefix
> > > > > aaf316de3bba phy: cpcap-usb: remove unneeded conversion to bool
> > > > > 39961bd6b70e phy: rockchip-emmc: emmc_phy_init() always return 0
> > > > 
> > > > Why take these?
> > > > 
> > > > What problems do they solve?
> > > 
> > > Sorry I should have provided the context. I had sent these as fixes for
> > > 5.11 but that was bit late so we merged it for 5.12 [1]
> > 
> > I still do not have any context :(
> 
> Please see the discussion we had in https://lore.kernel.org/lkml/20210210091249.GC2774@vkoul-mobl.Dlink/

All that means is that you felt some of these needed to go into 5.11 but
did not make it.  That does not mean that all of the above qualifies for
stable backporting, correct?

So can I have a list of ids, in the order in which they should be
applied, that you feel should go into 5.11, and any other older stable
releases?

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
