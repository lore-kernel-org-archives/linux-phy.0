Return-Path: <SRS0=D930=PP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77DF2C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 27 Oct 2021 15:02:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2FD9060E73
	for <linux-phy@archiver.kernel.org>; Wed, 27 Oct 2021 15:02:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2FD9060E73
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=olpd9Ea39dyYGAamDkHkorXbsOJOZ7En54m5ylKbH6k=; b=OheYprEHt2rodF
	b3iDHh+faoAPL/mNumpe36PeYtpCDJY4J0Ngg7QCwaC1cFcgpMI/a+Vb6qMIxSe7+IpikgpMT1rGJ
	dATjw/j3IVb9Sm+PeyF4PXtMzdmM1TFOXvf7XPTnJiagKUd+Ky1sQbLrM9YsDDgeuqSA0Q6nreDeX
	RaIvIfinLRj/jQs/Qm3QSb9IlKkrif4Mj8EHQnOmoKrqWSKOpBLfdsdqa8L9GYNKKv3aIjZ2aMigS
	rHEsA+mTQ7vDPNU+NFDkSmu8BNHDOsLgRAUtzEyW4R2tsOWS9RvN3I/CQBEDCwQe5d2W1EGEZU3YD
	OrHfNvz5Go6tBvFJ2f3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfkS5-005EQi-NL; Wed, 27 Oct 2021 15:02:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfkS3-005EQK-Nk
 for linux-phy@lists.infradead.org; Wed, 27 Oct 2021 15:02:52 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id DF76A60E73;
 Wed, 27 Oct 2021 15:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1635346971;
 bh=CXNpwxwp324InyWnF0+YTt09r8ispFDwFY5qCxQF04A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=x+SCeG2ocGOEs/v7aNdFSSMc0QbHfeUJnj2W9OIOR89VmF50e2YHbnncyP18wnr+O
 blw/OvfNaFQlO6VyUo9uHlXveaxOLlSKt7odA1ICz8fY1MxMRcViKeAT1iwRqNyRgE
 eWzvSWAw1SBbnoKritA5G4bPOW4byjAf+L5kj1OI=
Date: Wed, 27 Oct 2021 17:02:19 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Linux Phy <linux-phy@lists.infradead.org>
Subject: Re: [GIT PULL]: Generic phy updates for v5.16
Message-ID: <YXlp+5NNHd6p7tqy@kroah.com>
References: <YXlQowNL5biZTq59@matsya> <YXlnfQn0uFqwdHzD@kroah.com>
 <YXlpTSs+dBIn1voD@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YXlpTSs+dBIn1voD@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211027_080251_815919_E4D298A4 
X-CRM114-Status: GOOD (  16.62  )
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

On Wed, Oct 27, 2021 at 08:29:25PM +0530, Vinod Koul wrote:
> On 27-10-21, 16:51, Greg KH wrote:
> > On Wed, Oct 27, 2021 at 06:44:11PM +0530, Vinod Koul wrote:
> > > Hello Greg,
> > > 
> > > Please pull to receive Generic Phy updates for v5.16. This includes
> > > couple of new driver, new device support and updates to bunch of the
> > > drivers. The changes are already in linux-next.
> > > 
> > > The following changes since commit 6880fa6c56601bb8ed59df6c30fd390cc5f6dd8f:
> > > 
> > >   Linux 5.15-rc1 (2021-09-12 16:28:37 -0700)
> > > 
> > > are available in the Git repository at:
> > > 
> > >   git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git next
> > 
> > That is a branch, not a signed tag with information as to what is in the
> > pull request :(
> 
> Sorry the tag was pushed and somehow my script ended up taking the
> branch :(, not sure how that ended up...

That happens if the tag is not public yet, usually there is a lag
between pushing it and the script being able to be created from the
public url.

> Here are the detailed with the signed tag which was pushed earlier:
> 
> The following changes since commit 6880fa6c56601bb8ed59df6c30fd390cc5f6dd8f:
> 
>   Linux 5.15-rc1 (2021-09-12 16:28:37 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-for-5.16

Now pulled and pushed out, thanks.

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
