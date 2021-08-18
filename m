Return-Path: <SRS0=m+Tr=NJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48BAFC4338F
	for <linux-phy@archiver.kernel.org>; Wed, 18 Aug 2021 10:14:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0E4716103A
	for <linux-phy@archiver.kernel.org>; Wed, 18 Aug 2021 10:14:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0E4716103A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wn7uUiFQGkg00Dm9yAxWEW4Acvwa+urgP2Kt7N07pDU=; b=Qgd7mYPc7FUxb0
	rXlgqNz2rTk595Qhhd6jFOQ2wEzRk0QK674bScqO6/5PlvxxxRQSupVfhBPhJDAcX0Ft0/t9xEa/5
	eMgcJpFrTxNw5fseCQgfLPYzUdhmQisvpYhXcfkKCdkJVrSWcrdO2H9aR/pCMg1dW0LDGSSeDGu3b
	ABgkT/h7dnxlJoAh4aDTXAfgFtkXkF9DljHCfY9QydtPVnavAaFmakSqnq0/DDE2V93yu5izl0IWg
	gN8eJpcz/cdHlWEcXH1j90Pgo7MaTh2ixT91EQFT41t8rhLDKJwujPaZtYVLZ9X2D+ns14rsrDtHk
	UU27vgSNq6Jtw8GamMwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGIap-0054AD-Hx; Wed, 18 Aug 2021 10:14:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGIaZ-00547S-FC; Wed, 18 Aug 2021 10:14:28 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 304766103A;
 Wed, 18 Aug 2021 10:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629281667;
 bh=tSa4UfX6taJAkSS7owvbJwaNxPRi5jLQkSw4pv2Xy+Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FrFwm41e7xZps5Og0gBIZtz4nZ96QNsMb1ezizhS0MztMhekopHyvliFdnCL8xM91
 jwS6eEQPe8TUyktbA7+RI8JmsDXuZVKq8k7Cl4/WODTiWTygpl2RLIryWcrVscdHN/
 /RR+HPwodnTmF0/GIcOrknsey2gDP4zf6F/X2fJKYXmFOn1oVqWGELwOZlmAncrsAn
 mVJ3argszSchO5Zfd4mqLyimxv5nC8yYH69LujWgorAsW6vIMG8GUNECXhbVb9rHDI
 daEa1mFHloHEL7vhg8CqXP+7RmkfKRd7tSvtt9CWh4HK1uoqO9GGef87gE+seSkGmO
 uVhTOcvcDbyEA==
Date: Wed, 18 Aug 2021 15:44:22 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Piyush Mehta <piyush.mehta@xilinx.com>
Cc: laurent.pinchart@ideasonboard.com, kishon@ti.com,
 michal.simek@xilinx.com, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 git@xilinx.com, sgoud@xilinx.com
Subject: Re: [PATCH] phy: xilinx: zynqmp: skip PHY initialization and PLL
 lock for USB
Message-ID: <YRzdfsnntGf9ebU/@matsya>
References: <20210818084311.2643986-1-piyush.mehta@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210818084311.2643986-1-piyush.mehta@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210818_031427_547237_E0C0DDBF 
X-CRM114-Status: UNSURE (   5.85  )
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

On 18-08-21, 14:13, Piyush Mehta wrote:
> PHY initialization for USB is required on linux boot or when
> gt lane is changed from the current one and it is applicable
> on PLL lock too.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
