Return-Path: <SRS0=m+Tr=NJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07E3C4338F
	for <linux-phy@archiver.kernel.org>; Wed, 18 Aug 2021 10:38:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 801CC6108F
	for <linux-phy@archiver.kernel.org>; Wed, 18 Aug 2021 10:38:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 801CC6108F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=33qHkdzdf+jYPDVXMsn4cBGBZsVHQHuvzchHJO9C4xE=; b=0ohshEwyIfjhGA
	aSV7eQ/S1jEX1IJE0M81A7Mwdr6JrgEyf1vNkxT7eSU1LZG3g1Nk5/4m1k5sc9eb10ZmL0A2RwXj4
	6PEBfvzFp43GNN2SyqK5HJZTjHtveq5tpBskZxR0yDFyoqSvWqDK83dOgG3c6OggkTEeGVoJp3PHI
	oq8wk+8PkDotPeMvhnJLXDSZVzxDLHPCbSduhF8unmTRRmL4Hv9yBr50Cb1dKs9yODG/rpgq0UdPc
	TXEa6aIUCn68q4giDHMjGYp783UiW+KQgJ5YZ29apjWT6T8fKXdHrDovy/BzALjHhPHi31Hi9pY+i
	nlAC2TcL+K11szCmDefg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGIxS-005BDl-Ni; Wed, 18 Aug 2021 10:38:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGIxO-005BBG-7V
 for linux-phy@lists.infradead.org; Wed, 18 Aug 2021 10:38:04 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D337060EB5;
 Wed, 18 Aug 2021 10:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629283081;
 bh=c82u97ew4Crm1pKl6m89vOH9xM0DBu4AvuwoDSaTMtA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=I6nOA7Sal3sT3pfQiX+r63/k9sY5wKVY8rL2fejingbEPdAhn0kVdtJqn9qDBmyrU
 JLLKYdF23tycwwAcOhDxFvsoMZGfF6Y6zvIGhJgK45axQB2bdtnG8s4Wvd+Bi+b5Rw
 TrmoKiCJB3kgKfHNmpY1WzUNVjK4dznUsXIAk+MpeyNuQ1/8r2go3r9NBfoFojIClp
 tE+VFpVb9n6bjaMsq8nAwLzUN9VAJuwBA1Yc4Y81opAnnd0wzcsNK5rsGr9PzkMRST
 YuGwaxJMo6DVj0UZS2tj8fMtHI4w9otrkOe00402wkr0q2Icq4yfNOIhdLyBw8hkMo
 +pHuGvmP5fTJg==
Date: Wed, 18 Aug 2021 16:07:56 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>, linuxarm@huawei.com,
 mauro.chehab@huawei.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v11 01/11] phy: HiSilicon: Add driver for Kirin 970 PCIe
 PHY
Message-ID: <YRzjBOGsehbHAGJv@matsya>
References: <cover.1628755058.git.mchehab+huawei@kernel.org>
 <7788c5ead6d6f5a6f9e5faaee4460eb2149967c4.1628755058.git.mchehab+huawei@kernel.org>
 <YRuSnXHSZHhBC40r@matsya> <20210818110123.33eba838@coco.lan>
 <YRzck9WqerFtu846@matsya> <20210818123037.2adef2de@coco.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210818123037.2adef2de@coco.lan>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210818_033802_349862_2FD2A7DA 
X-CRM114-Status: GOOD (  10.69  )
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

On 18-08-21, 12:30, Mauro Carvalho Chehab wrote:
> Em Wed, 18 Aug 2021 15:40:27 +0530
> Vinod Koul <vkoul@kernel.org> escreveu:

> > Okay sounds fair to me, I think fixme should be left but the c99 style
> > code commented out can be removed
> 
> Agreed. I'll replace it with:
> 
> +       /*
> +        * FIXME: The enabled clocks should be disabled here by calling
> +        * kirin_pcie_clk_ctrl(phy, false);
> +        * However, some clocks used at Kirin 970 should be marked as
> +        * CLK_IS_CRITICAL at clk-hi3670 driver, as powering such clocks off
> +        * cause an Asynchronous SError interrupt, which produces panic().
> +        * While clk-hi3670 is not fixed, we cannot risk disabling clocks here.
> +        */

sounds good!

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
