Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81659C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 30 Dec 2021 13:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vn7rXCUNWaU1qf7vXqabzvMtjtbrSuJXO7LhSO9s0vE=; b=OJJIv2QqhPFmYT
	pPDepoOVZIKRA2zDZ1qcnvTl4rYbk6QMAWiCWDEKXfy+XczUq6q7zy02oiz4/qjwI3yh1yw5FyxlW
	jlHZgx5M3jzKAaLGcTbDABWBErMFHegtyDGwtunOHCzM24NTl/AWp7I2MgUfVdLAOD+i42uZ0GBFN
	xVHgO4gINxfzi4bp9kMvgwLAgWijSPfLJ1OXN2/cuzt/PiXuFnT6DMTiWKsPGVXgCL3CwLtkI0jF/
	7R4RIpGCdPdVGj1amesA6PjVCiSWvdboOCA2wj1u541CZp5oYIwg/luIe6GGd1u9CZOHZfm7vNb55
	DC2saNAfqd3G6YmWS7+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n2v5t-004QWe-Un; Thu, 30 Dec 2021 13:03:45 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n2v5r-004QW8-K4
 for linux-phy@lists.infradead.org; Thu, 30 Dec 2021 13:03:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id C58B6CE1BC5;
 Thu, 30 Dec 2021 13:03:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78C6AC36AEA;
 Thu, 30 Dec 2021 13:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1640869420;
 bh=jvoJiCrpybBHSirhemDwLWE6AVj7Q98gYoxNdt5jj4Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FXvLM9SHUE9scKq7xK6FTG0HArvcHAyknmHh8GVTH9Od69X8RMy/F/19DMtJUeert
 5HJRn3oC7zpEXP08A9S2Zu8JqFwX2l2mzccG31AE/O9TjNOhxwtEEGVVVJb00XIkBK
 rsRm/dq0BFTiK+LTFr7YCIgV2SJlk+5jh1Dtm4+M=
Date: Thu, 30 Dec 2021 14:02:45 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
 Linux Phy <linux-phy@lists.infradead.org>,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [GIT PULL] Generic phy updates for v5.17-rc1
Message-ID: <Yc2t9dV0JF2RDcHe@kroah.com>
References: <Yc2e40P2pQrCl1Gn@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yc2e40P2pQrCl1Gn@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211230_050343_862503_CF3A0029 
X-CRM114-Status: GOOD (  10.89  )
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

On Thu, Dec 30, 2021 at 05:28:27PM +0530, Vinod Koul wrote:
> Hello Greg,
> 
> Please pull to receive Generic phy updates which includes a bunch of new
> driver and new device support.
> 
> The following changes since commit fa55b7dcdc43c1aa1ba12bca9d2dd4318c2a0dbf:
> 
>   Linux 5.16-rc1 (2021-11-14 13:56:52 -0800)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-for-5.17

Pulled and pushed out, thanks.

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
