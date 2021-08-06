Return-Path: <SRS0=N/27=M5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10D06C4338F
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 12:00:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C4C9561154
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 12:00:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C4C9561154
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HOd2vBJ1Nm0OHisgvEkxZESATZ5aMIfvvuk1yeERhZU=; b=sLCmUXjIwuZCO4
	b1mph1fx/OcH6DQh2F3sWr7Nwx4+fW8PRm7WkiJLh2kYg74U/Q9qSPuUkKbeT8Wc0RdDT8WWnkP18
	RJ5KCObUFd1bgQL0YFWdIP1LX0bThUASscmPUcqW7A9EfWLHH7oS3SG2DGv512u8SBvD3kFYCyPWy
	n1ALTJcG10TN2QXjLFOZ5ci1g5c8JfelBlTFqVRwsQ22kj45r7hpgcyOf4bI9aeE9F0WNNhC1qa78
	Atud/pUllYLLf5aHdlhX9fyWRyO/I4AxX/1F5Iyh+CvO5E9QqTToL+CU7Unrq4XA6fH1PcOpCl3au
	LMMrBVKm/zwmgCr5b6iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mByWN-00CPSP-2M; Fri, 06 Aug 2021 12:00:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mByW9-00CPLM-N9; Fri, 06 Aug 2021 12:00:02 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 568EF61102;
 Fri,  6 Aug 2021 12:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628251201;
 bh=8CWEa5pug1TqjU/0+6MgZWQeHoGlugaUWEqNFqlUCL4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RDSN6L+kPd4HfYFQhwnsZqxDGut6rHSipG3b2BU+aVZiPXU/OSzSP0jMtsp8oTe/V
 oA5ypb5sWtsk9GbVmMWG9AaUDsULpVWGmIrV+U8QCEn1fgTzzr9aH47vKrluUtsTg+
 W0zPEtZTT0TQL27yD/QOcV4ft7ivU85W5og+M2Mm0IQmSBGbGgtYIPYGtZhfWuSIl6
 d0ohNqLAJe6uNGlPoxlCFnqeAXUYqm7hHtHTp/XGBdOBmNBuFAH22Zq7BeKAN13u+1
 mhRM9Dba44N0Ih+zx/bwD4M3epNZP3FFvmAu3Mjpviuf5k1TVZmZ+bg+qXJjSIUnHo
 nKZOBZdLZemDw==
Date: Fri, 6 Aug 2021 17:29:55 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eddie Hung <eddie.hung@mediatek.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: phy: mediatek: tphy: add support
 hardware version 3
Message-ID: <YQ0kO7ZWO3y0Xmne@matsya>
References: <1627028562-23584-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1627028562-23584-1-git-send-email-chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_050001_819175_C21BAA52 
X-CRM114-Status: UNSURE (   9.10  )
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

On 23-07-21, 16:22, Chunfeng Yun wrote:
> The PHYA architecture is updated, and doesn't support slew rate
> calibration anymore on 7nm or advanced process, add a new version
> number to support it.
> Due to the FreqMeter bank is not used but reserved, it's backward
> with v2 until now.
> For mt8195, no function changes when use generic v2 or v3 compatible,
> but prefer to use v3's compatible, it will not waste the time to
> calibrate the slew rate, and also correspond with hardware version.

Applied all, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
