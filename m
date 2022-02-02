Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6560DC433EF
	for <linux-phy@archiver.kernel.org>; Wed,  2 Feb 2022 04:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Szu95sYdHVyEGUMfN+n4TWxTNDQtNdv1KKl0GpD38ic=; b=II2Z5Nrsgosboy
	mge0VNeqyx6NyS9py2szh686hN3YPoh5KHseGmmFmpGSGO01S9ZgcQjRvzuZi2QRi7Tt8dpGktLP3
	SnW+2bJ6/LgWJ1Yee+Y/GjqtZ48A6CQoc9sJAj3pwcZtKM4GadWKe3O4w4fBkjMTS98BRhKQEV6mw
	J6XnSPLCDGHA1R56mdfk+CYlaRvk2DzmY2FtaU72uKezbzzab9ZqBrKemtJpEORV3zxh7mzhrTLT3
	ROQNtz804CebbZYmXV3ABPkWCQ3iXjFvz6gAE78dSo9cjy3h4rD6aOQDQi4HLWr2l+iqADK8625LY
	dsoabG9hpAzzi4BDRDIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nF7hi-00EBZy-Na; Wed, 02 Feb 2022 04:57:14 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nF7hf-00EBZ5-Hb
 for linux-phy@lists.infradead.org; Wed, 02 Feb 2022 04:57:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 3BC5FB82F79;
 Wed,  2 Feb 2022 04:57:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C979C004E1;
 Wed,  2 Feb 2022 04:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643777828;
 bh=23nZgFb5tUueCp7n8vqZWYPUV1GmtHwgiRqqg11GQCs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Fh9fsVhseNFcE/j2rOzvvdxkgkrp82cC6RQAxWX5GNgcbN/zMnyQ4GVQQYBlg469O
 TZvTZ3vsnMjHGEhbcMn340rfrBl2oy9nLVjvSM2Zf3thWhasDO4sw7WkaWg01lRil/
 YacJd4WtUH7jX0Q5rxh/4gNMdc1ZZDnI0j0sB5RQ+Mnu7euGfIWh6Y6nd5ehGP9SbI
 D31V5lG3t54mQAoZ2yVyhTA2CnEEyzXbU+pZkYL96EhP4CmhxO6GOvOrtVjVqIOoOR
 c4BuTRJDUh31mKsYZbgm27S2MpeDR2jG/xqld/ppSt26j6RBfnJota0M2iqF+mLjAC
 Iv2yPll0iUySw==
Date: Wed, 2 Feb 2022 10:27:04 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Cc: Al Cooper <alcooperx@gmail.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH 0/3] phy: phy-brcm-usb: Fixes for phy-brcm-usb driver
Message-ID: <YfoPIGfs5Q3IwrPm@matsya>
References: <20211201180653.35097-1-alcooperx@gmail.com>
 <7cbb745e-8b95-1eed-0903-44070a112ec0@gmail.com>
 <Ye0/8MSBRVNuBr3L@matsya>
 <e801d672-bedf-b08b-d27b-2b0cdd476a6d@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e801d672-bedf-b08b-d27b-2b0cdd476a6d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220201_205711_739833_EB16064A 
X-CRM114-Status: GOOD (  14.52  )
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

On 27-01-22, 17:01, Florian Fainelli wrote:
> 
> 
> On 1/23/2022 3:45 AM, Vinod Koul wrote:
> > On 19-01-22, 15:26, Florian Fainelli wrote:
> > > Hi Vinod,
> > > 
> > > On 12/1/21 10:06 AM, Al Cooper wrote:
> > > > A few fixes for the phy-brcm-usb driver.
> > > > 
> > > > Al Cooper (3):
> > > >    phy: usb: Leave some clocks running during suspend
> > > >    usb: Add "wake on" functionality for newer Synopsis XHCI controllers
> > > >    phy: broadcom: Kconfig: Fix PHY_BRCM_USB config option
> > > 
> > > Are you able to pick up those patches? Thank you
> > 
> > Applied phy patches to phy-fixes, thanks
> 
> Thanks! I can see patches 1 and 3 there but patch 2 is not in phy-fixes or
> your next branch. Can you pick it up if it is satisfactory? Thanks!

That is usb patch right. I wont pick unless Greg acks it to go thru phy
tree

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
