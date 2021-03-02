Return-Path: <SRS0=5tgH=IB=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A5CEC433E0
	for <linux-phy@archiver.kernel.org>; Wed,  3 Mar 2021 16:22:29 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A12F364EDB
	for <linux-phy@archiver.kernel.org>; Wed,  3 Mar 2021 16:22:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A12F364EDB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Iv/OvObkhw9qYrEn48dC7U8A2kqyb3hzXzSbdoO1x7I=; b=iDfHgphnV4SmgFi5HAXIJj1bY
	QQk6JmVabiVGmCnP4d+d8TIEtsrlokCoX0xkpM/LayzNywPuwX6qsBmev18rz3IHfVEl4yrjygEYd
	2V8O/PffMlUs30jhvam1bG0tQn+myW+UfxxSMCNj7NUHONJqCSg6odfsDRtJC7iNWRnlF9nE14AhW
	g8GhOmW622LSqSKFIpcHh1Qh+FbSRR+4khvNihs+PcJDK0bCkZgEaR3JcLQbEl5q4SVbEv5XwRBqp
	H2vJeL/bfA9sA4FbHjvvDd/3m7rGn8A2lEVWkzim4EXDf0S5lu/SOBt5zKnWZEPzlMPFc9MvFDhPz
	GHU8FIydw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHUGW-005aAt-A4; Wed, 03 Mar 2021 16:22:24 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHS8n-0053Lq-JR
 for linux-phy@desiato.infradead.org; Wed, 03 Mar 2021 14:06:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=LhxoSIrPmexO3q+lsFcuTETIhkrM5n5JpfqHogXTOLo=; b=frIisfhiwFqdEUcpYWrJWKpWyC
 CMOZKKowYC3HP+HuvMWoMFjzAY++R5rhPHur3SkqYWcWcvrDcd/tXBAE1Ij0DxyOHfwNyTcRIyk48
 Qc9FdXSjXjC39ZWSwvm1drPjjDYb+1p7xjmuU7ObJG0kfwtbbLAU0EuvX1aypbtyeyUTSmt1I62gR
 nlms2JHFnNgb6RP/ooqA0Sv58V6vUnxXTwH7OeGRbmXEtgCqdyrxrduhJBlArlWQhNeswkciG0t3j
 pZHkKklytB1xu8AGfNx218JJB7/NxuEMwG1vzuhbWI3fotZfY6vkuHt80g7cAWSacEwJrRQktZ12J
 fcYJFpnw==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lH3xj-00H5IH-27
 for linux-phy@lists.infradead.org; Tue, 02 Mar 2021 12:17:16 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 70AF064EE8;
 Tue,  2 Mar 2021 12:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1614687424;
 bh=j+EW1OpeEGqnjxAWRy/nEAc13Opcu64hp99OwkFNGeY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nUJawHx7j2x5RwlZCd44KkjByldc+6v5K2G+GMcKx/6FwRi6lRB3nmVZww1aNqeoc
 jVk1NxQubw8bg2CRtwMsCpxVMcmvLc9K24PzvugAJ0P84KAwNlC5rDAVM9lwc/wr8T
 +odC8ZSNf5rwUnGLTHhRDbI6FMu20p+EiSvjHmJq24QcL/k1wcJHmEwcZHu99Hr6LP
 4/r++QdesS0ZNSeviK5g6eANZhL26CV4RY+FGyV4XtX2TUsfvMK/xs0pRRsUbIkqRp
 Q8gCROAA+PlGz6GL9HfI9Vo2jLZU1cKBMaulpgvgQtV4LdhQyF0btQuXhk6moK7yd2
 HFJ5EVOTMS3+Q==
Date: Tue, 2 Mar 2021 17:46:59 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: stable@vger.kernel.org, Linux Phy <linux-phy@lists.infradead.org>,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: Commits for 5.11 stable
Message-ID: <YD4su5gWILbbrd0z@vkoul-mobl>
References: <YD4LfQEXWawk2b4C@vkoul-mobl> <YD4NINW6u28SxedJ@kroah.com>
 <YD4SlyXIVFZQYip5@vkoul-mobl> <YD4WTn1mdE+RBoR1@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YD4WTn1mdE+RBoR1@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210302_121716_024545_B734B112 
X-CRM114-Status: GOOD (  13.13  )
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

On 02-03-21, 11:41, Greg KH wrote:
> On Tue, Mar 02, 2021 at 03:55:27PM +0530, Vinod Koul wrote:
> > 
> > HI Greg,
> > 
> > On 02-03-21, 11:02, Greg KH wrote:
> > > On Tue, Mar 02, 2021 at 03:25:09PM +0530, Vinod Koul wrote:
> > > > Hi Greg,
> > > > 
> > > > Please include these commits for 5.11 stable series
> > > > 
> > > > 9a8b9434c60f phy: mediatek: Add missing MODULE_DEVICE_TABLE()
> > > > 25e3ee590f62 phy: phy-brcm-sata: remove unneeded semicolon
> > > > 6b46e60a6943 phy: USB_LGM_PHY should depend on X86
> > > > 36acd5e24e30 phy: lantiq: rcu-usb2: wait after clock enable
> > > > c188365402f6 phy: rockchip: emmc, add vendor prefix to dts properties
> > > > 88d9f40c4b71 devicetree: phy: rockchip-emmc optional add vendor prefix
> > > > aaf316de3bba phy: cpcap-usb: remove unneeded conversion to bool
> > > > 39961bd6b70e phy: rockchip-emmc: emmc_phy_init() always return 0
> > > 
> > > Why take these?
> > > 
> > > What problems do they solve?
> > 
> > Sorry I should have provided the context. I had sent these as fixes for
> > 5.11 but that was bit late so we merged it for 5.12 [1]
> 
> I still do not have any context :(

Please see the discussion we had in https://lore.kernel.org/lkml/20210210091249.GC2774@vkoul-mobl.Dlink/

> > > How does 25e3ee590f62 meet the stable tree rules?

Sorry it doesn't. My mistake on picking this for fixes. Lets drop this
one

> And all of these really are needed for stable?  Again, how does this
> above commit qualify?

I relooked, expect this one, rest should be added for 5.11 stable.

Thanks
-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
