Return-Path: <SRS0=+fGD=NP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PULL_REQUEST,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4771C432BE
	for <linux-phy@archiver.kernel.org>; Tue, 24 Aug 2021 13:46:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 85F416103B
	for <linux-phy@archiver.kernel.org>; Tue, 24 Aug 2021 13:46:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 85F416103B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CxGGpktuL/tuDSCFZN/pwz9uk1iRfNh3jSEVe/47d5Y=; b=aAQZ4bF4l9PhY2
	yElzy+r1okEnx7qq91eWnzqoh9O8spy6Jz1T31NhGeZQgxI7PcEMW8BWQPQxqvW947RQNzP8mf1Ih
	jA0yR+LPY3LANnyaIg4MBEYCzVU2aFHr23VSrQadNcAOkuzj6YsaKTmiw4PwQ3XoPtsr9r3XjTtUa
	QWjYSNaTa1++qBqBNiBgdyF0YMlxz7uKYGQqDHDbTbzovxUmTQcUMTGZGF3f59TxmmCgfLcjZJ+ed
	ECQaWdO0di65OcWlyFgi2RzqBVyBoyAF7bD/BvidTq5RPUiLA3piBxF8ASTHlgjtzjLnNhFg94yf/
	gzD/XA1I1Vm4da/+z9ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIWkd-003Hpz-2E; Tue, 24 Aug 2021 13:46:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIWkX-003Hob-Oh
 for linux-phy@lists.infradead.org; Tue, 24 Aug 2021 13:46:01 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 79F1D601FF;
 Tue, 24 Aug 2021 13:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1629812757;
 bh=gbyfwyBl+3sjTR1TrDd8LA5MAl4lkrvpI+04lctKP3o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=isjmp9rvh2NKkrEuFjZiN0Vu1ULLzvhpJp+3u/slKfxRzbwm+RuUiaOC0oMYFayqS
 sNiAmL+/ieEt3vaLtGtwjwtGeq3TbPwuiS+EUo/ak4G/nfYBRg8Jcv3TPTi5QlHqNw
 6pTWcmVh/NV31xr9j9q+45iD+ob632ManldTBa0Y=
Date: Tue, 24 Aug 2021 15:36:02 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
 Linux Phy <linux-phy@lists.infradead.org>
Subject: Re: [GIT PULL]: Generic phy updates for v5.15
Message-ID: <YST1wr4RGKnt9RDK@kroah.com>
References: <YSR/UHNxE6iu3GBc@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YSR/UHNxE6iu3GBc@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210824_064557_877329_B6E00C02 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
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

On Tue, Aug 24, 2021 at 10:40:40AM +0530, Vinod Koul wrote:
> Hello Greg,
> 
> Here is the update for v5.15, sorry this time it is bit late than
> normal. Will make sure this hits early next time.
> 
> The following changes since commit e73f0f0ee7541171d89f2e2491130c7771ba58d3:
> 
>   Linux 5.14-rc1 (2021-07-11 15:07:40 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-for-5.15

Pulled and pushed out, thanks.

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
