Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED65EC433EF
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 10:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NGm8LEJJjNw+EP9Y3hkAm699UdsA2wgFvMJUShwJ/dM=; b=dCvv5+2b2RjUDv
	NPbHpBFkN/8FfDhqbGunIWJvh7ZR0NisB1tRI6MZUfYRUjYk8GrKpOYBwZ9UDP8/kWzZNXeyiRGI2
	FMfxLglLgLEaGw1YAYCAJdXNviaYlZ7vonIahCn4AGnhklSmmkDQCKaWcePA3kWP3jhMSaUjusVHx
	wmQGCzzJ++ZYiI4gcWFuZH+xLJTnDnu31G2GzI6kOpzhx1bANoZej36XpFD2whqkSSKExWQBEpuOk
	y7MBg1khmp1I2QomMxZw9j5akMq2bhT2Ad6YICcBva24pRyfckrhDisE2DH5dBMWbMe9uIX5ZVuV8
	OMZGq8repJIzPirXzfpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGIhN-006Obz-Bt; Sat, 05 Feb 2022 10:53:45 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGIhK-006Obf-LS
 for linux-phy@lists.infradead.org; Sat, 05 Feb 2022 10:53:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1F3BC609FE;
 Sat,  5 Feb 2022 10:53:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAB0FC340E8;
 Sat,  5 Feb 2022 10:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1644058421;
 bh=Bs3PE2C2PmOqVsXMufBkS2BmmK5Kdzd1Zcv7lGl18Do=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lyxOhvJ1j3ks+usCZ4ITWDUT4xyN2rUR0B5QEuIghXP9hf1j4cYsR4H85Ziecmdxu
 UkK70EYBzthqgjDBrqa14XfbiC0L1f3TOGE+USHJn/qni7+KqWFstT8r5iOaDH2a73
 QzKJv4yZGFQEfJZDfllVn/POXFRMDbdG+LABQWLc=
Date: Sat, 5 Feb 2022 11:53:23 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Linux Phy <linux-phy@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
Subject: Re: [GIT PULL]: Generic phy fixes for v5.17
Message-ID: <Yf5XI5yvRrYVLVDc@kroah.com>
References: <Yf1YqcqUmResNevN@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yf1YqcqUmResNevN@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_025342_760081_704BA687 
X-CRM114-Status: UNSURE (   8.68  )
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

On Fri, Feb 04, 2022 at 10:17:37PM +0530, Vinod Koul wrote:
> Hello Greg,
> 
> Please pull to recieve the fixes for v5.17 for Generic phy subsystem.
> 
> The following changes since commit e783362eb54cd99b2cac8b3a9aeac942e6f6ac07:
> 
>   Linux 5.17-rc1 (2022-01-23 10:12:53 +0200)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-fixes-5.17

Pulled and pushed out, thanks.

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
