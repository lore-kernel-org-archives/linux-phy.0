Return-Path: <SRS0=D930=PP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67274C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 27 Oct 2021 14:51:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 261C960F21
	for <linux-phy@archiver.kernel.org>; Wed, 27 Oct 2021 14:51:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 261C960F21
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kGfYFoVQKdWqxpXk2BbfGKDP02DhqXZiYJPaDkxcy7g=; b=wBsqdnhQle6w5j
	HnROdl6iMgTjzXx4LR9I9R/5jcK5lebTAI+i6auO4oIaPuIy6KWEuW4s3xgeJrO4Q7VDH00DmNgfp
	rirrvtVh8k17Q9xxEalYMQGucuSHrubiG6cgpzfLjau5zBLDOCGL5QH04q0x9YUHHtI9nVUjzTMgQ
	tCp4PWXbzZ559w7d4ft3o6Rjg6Jb6FtYmIHq6fCaX5hYUctCRbc516L+zqgp60UeWlCPm5Yek+shb
	/R0ccKsDR1zgvcBTNukhdFbHRAU+YGap2RnODxq6bt1wlIYfOExMFd4H1CAW63MwweIvTrLygQxkW
	anCjvHscmsaOwlf0KOYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfkHK-005CSn-Jo; Wed, 27 Oct 2021 14:51:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfkHI-005CS8-71
 for linux-phy@lists.infradead.org; Wed, 27 Oct 2021 14:51:45 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 58DFC60F21;
 Wed, 27 Oct 2021 14:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1635346303;
 bh=B7i6b6BVsR4LTIU9zHWGKANNr2uHUBODj6cXZGPRuvY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=exqvcKySIWfIeeZYt4/68GrgZJmv09VZyxMos+dsvHeo+TkeGKaxIYWd9MW+7ONsD
 rnzxU4Vwfen3qZX30JiOgMi4ZhmqYNp8gEKogikfB5yX0rx3Q0Il582k9dQa0iFQce
 ZYp2P5KknpmylgpCkJ58oaV416mXitDrYWRcYWQE=
Date: Wed, 27 Oct 2021 16:51:41 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Linux Phy <linux-phy@lists.infradead.org>
Subject: Re: [GIT PULL]: Generic phy updates for v5.16
Message-ID: <YXlnfQn0uFqwdHzD@kroah.com>
References: <YXlQowNL5biZTq59@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YXlQowNL5biZTq59@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211027_075144_297829_65B3A90D 
X-CRM114-Status: GOOD (  10.45  )
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

On Wed, Oct 27, 2021 at 06:44:11PM +0530, Vinod Koul wrote:
> Hello Greg,
> 
> Please pull to receive Generic Phy updates for v5.16. This includes
> couple of new driver, new device support and updates to bunch of the
> drivers. The changes are already in linux-next.
> 
> The following changes since commit 6880fa6c56601bb8ed59df6c30fd390cc5f6dd8f:
> 
>   Linux 5.15-rc1 (2021-09-12 16:28:37 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git next

That is a branch, not a signed tag with information as to what is in the
pull request :(

Can you fix this up and try again?

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
