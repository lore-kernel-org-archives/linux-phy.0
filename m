Return-Path: <SRS0=nTb1=PJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBFCAC433FE
	for <linux-phy@archiver.kernel.org>; Thu, 21 Oct 2021 17:49:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AE258613E6
	for <linux-phy@archiver.kernel.org>; Thu, 21 Oct 2021 17:49:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AE258613E6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/5qEDR692AR2vLaYKdQi/QImkfGnvmOebSbQBoPq0zM=; b=Hj/Z+RskXPWiFh
	3rKX6u9ezFztOlgetJC923UvzlE1/ANvS2+YiX5mHPbGUZ5Q8V7XVPhnfVGoyo5EIYL9OKiKp05gu
	QdFHzA6xwgGtPRX5Exa+gtLNiEZBhDsYW0uJNoiNVMDzSLyeoxhkpiPkdFgdpyqRPXbdLuj5olqe6
	O1/JaGdEk0UXjw4b8fZwZiJKAWiEXlb/7e02eQNygu8dKBrZCJyz3xlhavp+3/duP/30INN0TF7TG
	EB10nbj3ew2utgYy8GVuyj5CNQNn0Wn8RigQCv9z2fpAOSCpaTbdj3CcDiiTyw1oynZlxegrFeCyK
	0XlLTzEBhKAhtcHz87yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdcBt-008Yve-6s; Thu, 21 Oct 2021 17:49:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdcBr-008Yv6-6v
 for linux-phy@lists.infradead.org; Thu, 21 Oct 2021 17:49:20 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id DB6BA61251;
 Thu, 21 Oct 2021 17:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634838558;
 bh=971Dp8XXlkN81iFinRf4MvIWoZp9k1Gvl8mpn3B/FJM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B0SmXacw38IY46Rk14ueq7FjGmEv8PJXxLy0fjVD/gZqDGFeUgfgh3SKEv35gXVHq
 P0+LGyZG7If1VcoDILrzmcZ5Y8S/945OqoMYscHeXHlav+QOVgqTm+qE0ByODvyLf7
 wPoX91RrERqcRRelEGWzUBsHOBoPGzLnHw7509MKdTuInkYbY1YPRaiLPtSEyvaEFI
 nUYh8Tegr5WavWY8kE2n+sbmi+21G94MxpQfqFBDlCctrY5cHHG+XDvAWua1SgJTIi
 s9bZOk6uGMjXAAif5jbF6eqSPhjXd9kczDqgwqdFFG4/CWXvFHERPj0MSI6WX6OpVz
 jT+4u4dsg6YYQ==
Date: Thu, 21 Oct 2021 23:19:14 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, kishon@ti.com,
 robh+dt@kernel.org, andrew@lunn.ch, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] phy: Add lan966x ethernet serdes PHY driver
Message-ID: <YXGoGtbFeKa+TVk2@matsya>
References: <20211015123920.176782-1-horatiu.vultur@microchip.com>
 <20211015123920.176782-4-horatiu.vultur@microchip.com>
 <YW8HIHTCVgB+URJ5@matsya>
 <20211020091733.fxph2pq3xa3byvry@soft-dev3-1.localhost>
 <YXA3VVUGEjUR4HDC@matsya> <YXA6lZBTeA6aNxVD@piout.net>
 <YXEEcJHuEdFLPyCU@matsya>
 <20211021091032.ffaoncg5jjdwdeyg@soft-dev3-1.localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211021091032.ffaoncg5jjdwdeyg@soft-dev3-1.localhost>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211021_104919_296208_62DF5743 
X-CRM114-Status: GOOD (  13.44  )
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

On 21-10-21, 11:10, Horatiu Vultur wrote:
> The 10/21/2021 11:40, Vinod Koul wrote:
> > 
> > On 20-10-21, 17:49, Alexandre Belloni wrote:
> > > On 20/10/2021 21:05:49+0530, Vinod Koul wrote:
> > > > > > > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > > > > >
> > > > > > Any reason why this is dual licensed, why not GPL only?
> > > > >
> > > > > No reason, I think I copy this from a different file.
> > > >
> > > > Please have a chat with your lawyers on the correct license this should
> > > > have!
> > > Dual GPL and MIT was Microsemi's policy, I'm not sure it carried over to
> > > Microchip.
> > 
> > That is why they need to talk to someone and decide what license
> > applies :)
> 
> I have changed it to be the same as the one on sparx5 because also
> sparx5 is a Microchip product. On sparx5 we used:
> 'SPDX-License-Identifier: GPL-2.0-or-later'

Has the code been copied/derived from somewhere/auto generated from
scripts/tools or entirely written by you?

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
