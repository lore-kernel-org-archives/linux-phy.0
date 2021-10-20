Return-Path: <SRS0=T9my=PI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F12A2C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 17:57:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8540161355
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 17:57:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8540161355
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LPpJK7ZL/KoDIqu5d08pkOG65tGtgecsER6rAale7zY=; b=CqG2AylmApAxrt
	ImtPhiLs5/aF5wsHM+fSVOT9tj0JsTh9aPRY3FKvqO9tcxRYTjbER58m8Iwit3eOJz92qXCOTHlQM
	TWMGcEiO2gsV7wpOiAVTlmNolgFWeS/Q5JateId/5iqetrDiAxmbQBps/UaC46x3bkF8lmPkpoD9c
	klmlw9e/ZZON6rlF1VG1HxOkdIqPEd3/XTpuReOROA3NYlFbaF9IEV7wckSyP8CC0d0fQyHMP5iBk
	gyBKkK23CHnoqfs+VHjsOTxFsbsy2avqqtfDDvz+MoIqtUWLsteOY4o6WJHAYeTEXow4I5UxszVO0
	03fCyo69Q9fFXxWYQd4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdFpw-005MCP-0O; Wed, 20 Oct 2021 17:57:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdFpt-005MBg-ND
 for linux-phy@lists.infradead.org; Wed, 20 Oct 2021 17:57:10 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id EA5DD61260;
 Wed, 20 Oct 2021 17:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634752628;
 bh=XQzcmxRtmpTtwLEmhDRGGu/vVrNymCgV6elsUAeO/hM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MmF2wRMGxunC7sIHQ8p6+oKzruLFtHoFBaGOdwUhByocaotRmDd0N5yoS0djAgeKI
 dC/3bVbwpUDK5yTIBfJJcJxLRi8eGiQf5Pt26S6HTySFd+7zAhNxvyaf+5JcljSqo7
 NqSP49J8YZyleU0ti2UzQThHKJAnSbN7mJRqwjUL59v89qaaSrVCXTQ5RN5WPuHRSI
 zsWmm8hOBgoDTuaku/wWJNjr9ELEkt6u8V6fTAF/fBdZ+zlsqFA4BqegvkPiB+Z0DF
 /THJ7MWz1X5tuZswLxtGt1T14R0iN2fe9lELzOOldYWy4wPHvgDPXTQjibx3BsdiU1
 SCbjqLoLtAdQQ==
Date: Wed, 20 Oct 2021 23:27:04 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Swapnil Jakhade <sjakhade@cadence.com>
Cc: kishon@ti.com, robh+dt@kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 mparab@cadence.com, lokeshvutla@ti.com, a-govindraju@ti.com
Subject: Re: [PATCH v2 0/4] PHY: Add support to output derived and received
 reference clock from Torrent
Message-ID: <YXBYcOeydTf4xj4H@matsya>
References: <20210922123735.21927-1-sjakhade@cadence.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210922123735.21927-1-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_105709_801443_496FBA37 
X-CRM114-Status: UNSURE (   8.59  )
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

On 22-09-21, 14:37, Swapnil Jakhade wrote:
> This patch series updates reference clock driver implementation for Torrent
> by adding support to output derived as well as received reference clock.
> When reference clock driver is enabled, either derived or received refclk
> is output on cmn_refclk_p/m.
> 
> In derived reference clock mode, cmn_refclk_p/m outputs the refclk derived
> from internal PLLs while when received refclk is selected to output on
> cmn_refclk_p/m, this is the internal reference clock driven on the
> pma_cmn_refclk_int.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
