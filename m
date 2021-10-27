Return-Path: <SRS0=D930=PP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5608AC433F5
	for <linux-phy@archiver.kernel.org>; Wed, 27 Oct 2021 15:47:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2BB6A610A3
	for <linux-phy@archiver.kernel.org>; Wed, 27 Oct 2021 15:47:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2BB6A610A3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1FQ2LfiQMvHXR2onM0uPH6HGO+C16Sp+TUDXBiPOkkE=; b=GiJCqg2SpJGI/1
	mm37g9HFaHQlaT4cWPAv1Tr76+KTQosZgYCdUmaIPiGrelxJnnpwEvk5olCLY5ZLCv9D7v7zkeiO5
	MRyE49+HcHeLl9fnRK4bePhAvH7nRF894FniR16saI4+Q8KCJaF7Yau918OlLXCyV9THF43Y8X0F7
	+B0HAYCm/PRNgorOyrZ1vtg1M8A5zMSeNkOJ6nC0j/WrDSPNZJliN2eSTLbD2Gy2z9LU/OWyc4/2l
	GmmiD8wB48CL/QUgd6KOjCMqg3TcplKgf6WDs9wnyCOHdbe5fhi87Y2NSaQ5JDwaAE/65FdlbcLtf
	ED2PnQAFxdxNliVQ9DUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfl9X-005MqH-N3; Wed, 27 Oct 2021 15:47:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfl9U-005MpF-Ef
 for linux-phy@lists.infradead.org; Wed, 27 Oct 2021 15:47:45 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E74D260F5A;
 Wed, 27 Oct 2021 15:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635349662;
 bh=aTtw2uuC6CpY4xMdUG/U8/RM3KeAbIdMgX0hAKq4sg8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XJYGQJ/iioEhy6liAUbepY/wfKHUhd5FfwYGP+DxJDXZInRNffl5DcVljfLNt6tfc
 SJK5z/UsCPwMit71nsHOmFYGeyRhjUk8nHgl9GDDnXTzD1FxclEQ92+qhVKZ9zEXlv
 lUmy/Bt9YuiCIygrKIAoE3kWCtMevfDOBLKB8MQ2/HxKLgzEK2/vR4rOk8dZV7OkR8
 mX/UK0Xa/j2Ga0ligOujmlb1J3VI4azVl2WAmXq3GTmgratnhRUVErEB63209wBkcz
 eWx/fnILiKYmf4vVOWCwagiLd77RwTe4FI8eq4FGSnLyFh4QM9g/KNxFgC8sW78abA
 eWlmK7ekEhJqg==
Date: Wed, 27 Oct 2021 21:17:38 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Linux Phy <linux-phy@lists.infradead.org>
Subject: Re: [GIT PULL]: Generic phy updates for v5.16
Message-ID: <YXl0mv4RnQ1XgTEo@matsya>
References: <YXlQowNL5biZTq59@matsya> <YXlnfQn0uFqwdHzD@kroah.com>
 <YXlpTSs+dBIn1voD@matsya> <YXlp+5NNHd6p7tqy@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YXlp+5NNHd6p7tqy@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211027_084744_532905_0E701506 
X-CRM114-Status: GOOD (  18.48  )
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

On 27-10-21, 17:02, Greg KH wrote:
> On Wed, Oct 27, 2021 at 08:29:25PM +0530, Vinod Koul wrote:
> > On 27-10-21, 16:51, Greg KH wrote:
> > > On Wed, Oct 27, 2021 at 06:44:11PM +0530, Vinod Koul wrote:
> > > > Hello Greg,
> > > > 
> > > > Please pull to receive Generic Phy updates for v5.16. This includes
> > > > couple of new driver, new device support and updates to bunch of the
> > > > drivers. The changes are already in linux-next.
> > > > 
> > > > The following changes since commit 6880fa6c56601bb8ed59df6c30fd390cc5f6dd8f:
> > > > 
> > > >   Linux 5.15-rc1 (2021-09-12 16:28:37 -0700)
> > > > 
> > > > are available in the Git repository at:
> > > > 
> > > >   git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git next
> > > 
> > > That is a branch, not a signed tag with information as to what is in the
> > > pull request :(
> > 
> > Sorry the tag was pushed and somehow my script ended up taking the
> > branch :(, not sure how that ended up...
> 
> That happens if the tag is not public yet, usually there is a lag
> between pushing it and the script being able to be created from the
> public url.

Yeah that is plausible. I should have noticed though!

> > Here are the detailed with the signed tag which was pushed earlier:
> > 
> > The following changes since commit 6880fa6c56601bb8ed59df6c30fd390cc5f6dd8f:
> > 
> >   Linux 5.15-rc1 (2021-09-12 16:28:37 -0700)
> > 
> > are available in the Git repository at:
> > 
> >   git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-for-5.16
> 
> Now pulled and pushed out, thanks.

Thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
