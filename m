Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05F4BC54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 06:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ojLd6PDza4cZFZH6YBPfYLL4QUSh4OGLQNci3d6E8BU=; b=xPKCcw67tKjZM/
	MP32BPVuye9kXPmPMedPS7MYCyHfR9nIl/xPGSy2p0O18UYYF6kjuJF9puCWozYU83KxWmIoW646i
	rz7EBLY7bNzMq0DNguEM+tvGt/uf3YK+z86YXPSBFSJjtXNmKN+qLeVbfDBsIccwX+i2EggaDJNdk
	3QEvKua1u06iK6mvH7XZfNp7cg5rfCtUPHMuiVdC5TOxpZdCiS6TXZO8yvrd8C5X4ZmUsfnoOtFOF
	P2Tnxm0GqyzdxfwVCvIwvoqGCR/SNcuapAm3Z03xuf+kq76OGS2BdYvlLjJmNICSBTfUwNF7O0wSP
	MDRiECAZDQwyDGLcixAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaX2A-0017wU-CM; Tue, 20 Sep 2022 06:47:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaX27-0017ur-Bn
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 06:47:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BA2D5620EE;
	Tue, 20 Sep 2022 06:47:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CA29C433B5;
	Tue, 20 Sep 2022 06:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663656422;
	bh=SvXI7Ba7eKmCawLmelygwSy8WdDRklUMauHJ8UCmQGE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LFmRt2FQfMHGJdtALu4/WlD8sRwoSENvlyWtrUk+nHQQcy9/1T1A936ja4g5inMBZ
	 YymRVL6yAr4PXEtv1+wUwpYOXJLq36mF8abOihxKgHVHMF6jqSyM5HmUtpNjRXkdFN
	 uQc+7lFAfaHMtwckoKTcsaO+DQdY+6+2b7XDkhm18JZmtXilPhh+4jH+/5uAmY/1p1
	 TvpglsTrPsZ4PWo2IjoGUCGAzZhpEmVOVFGDHR1kmf6XF09ufLPS0TWFAymQqJhJam
	 n2fz1hfJPCBwNjAZZVp8R0YmIoO4x8Dcd6vvlGrdyRucJ7XaE/jSgQEzzQl1ORZEq4
	 IIrCOM+SKhiGA==
Date: Tue, 20 Sep 2022 12:16:58 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Matt Ranostay <mranostay@ti.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	rogerq@kernel.org, vigneshr@ti.com
Subject: Re: [PATCH] phy: ti: phy-j721e-wiz: stop name conflict if multiple
 serdes are initialized
Message-ID: <Yylh4oW21zD4jUQf@matsya>
References: <20220909200026.3422-1-mranostay@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220909200026.3422-1-mranostay@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_234703_815320_9632C4CF 
X-CRM114-Status: UNSURE (   6.68  )
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

On 09-09-22, 13:00, Matt Ranostay wrote:
> When multiple serdes instances are initialized the first will succeed but
> additional will conflict over clocks names and probing fails.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
