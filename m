Return-Path: <SRS0=azk1=QD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85FB2C43217
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 10:40:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4C06261A58
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 10:40:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4C06261A58
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ytU1UOGIma24kwjn4IdAO4JMDFaES1wL9hlC3pBgyzw=; b=T/TY9IVgnu9L1S
	A2HoecBu/SYeGjFIdFkQxjc5rc2+pfwhnxtYGEpvN2Hd8YyQLWBvEVkyeSE+g8Kp/I1FBqKxNMXPn
	tVmTIQ2Ix8Rh2AYMvUkB3LOQiKy7cBI+ous806ExcJcSMmG0z8RwYN9HBlXiOp97yUdC9ylENMgsA
	pckoeQdh4ao+5WAuHtQSNdtMx5YNuVgofzHYK9dQr+DLVqgD9tqaIsXIMON7nViHHbV+RQs/8rhyF
	g07vmb19R35qmjZEEKY6hrzfgdApF9StdnxddiY3e+1Zwpd5QI14yjWNQH2ZeZi0Kri+q/5G34igW
	znvOnsUt7wNlUVPuoUoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmvtI-001FA3-Ge; Tue, 16 Nov 2021 10:40:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmvsu-001F3Y-Mn
 for linux-phy@lists.infradead.org; Tue, 16 Nov 2021 10:40:17 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 87C0363213;
 Tue, 16 Nov 2021 10:40:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637059216;
 bh=vq5+K85pB1PFui0mQEetA92k/TvPf421WEIxiyypjvA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=M4uysUtvFckb2XzbGlPw6TUu6LG5TjRIx43g94jZcWHmg74ZJ8DhiQ+N8Osgj2fOQ
 09nyX6mpHJsrXssA3V6hoVaSEO14Jej1sDoMJMARl6A+NF/cSJxwQVWEWC47zsxBSo
 7oADKfj6ttckFz8hQ01D9EhVVTU15F+o0V44iXsukNC5Q8Lw5lAtiSBeC/YQHRquda
 f2Hp9OXl3rKquMRYwZXgLcMWztxyODxsqTotjV9S8AeJ6NuL2+P4IPrLsW/qIE+8Wt
 Vk3JEKHI6TdFDoIyk4/Vuob79mX/QHQ0ToqD9KzUc8MChn1BBzIaMRm+zdl+M/+G1r
 nx3qh3rip7HXQ==
Date: Tue, 16 Nov 2021 16:10:12 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Randy Dunlap <rdunlap@infradead.org>
Cc: linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org
Subject: Re: [PATCH] phy: ti: report 2 non-kernel-doc comments
Message-ID: <YZOKjDoOR0s/fKV4@matsya>
References: <20211115030559.13994-1-rdunlap@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211115030559.13994-1-rdunlap@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_024016_789505_AB51A80F 
X-CRM114-Status: UNSURE (   5.67  )
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

On 14-11-21, 19:05, Randy Dunlap wrote:
> Do not use "/**" to begin a non-kernel-doc comment.
> Fixes these build warnings:
> 
> drivers/phy/ti/phy-am654-serdes.c:3: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
>     * PCIe SERDES driver for AM654x SoC
> 
> drivers/phy/ti/phy-j721e-wiz.c:3: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
>     * Wrapper driver for SERDES used in J721E

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
