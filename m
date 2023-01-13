Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C636C54EBD
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jan 2023 18:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=av3kTQQDfbzcdOKbMKetKHGrpskV2Tbm+2mBmK5KQio=; b=aFtoJoQ3MOriAG
	a+SMkHmZl8/CmKqA84/VqTk/adMotfTYqzdbyAAXTOo35oil+QhZVm3Fso+zieNUjh6xwijCFvkQr
	aK3r1hVhz3RoxzoVXC/JfQ/KECOLR+HvbahYtjzlKfWBywMfXh+tyJSkI/1+I9e+l6lsZ08aPqbYL
	Ftg02NaZ5TzMLPeyzQ/YN22flQQLzz3xd7/U9GM1zi9S2l3FQtrUGxuo5DCbV8Zuccx9ZsUHOYYJZ
	IPdRFdA1wOCz7svzWy3zErn5MFxFss7rTN1MhMFMTopootNNnZwTDHsAxmZirVvllNaf/hmIXm+6B
	RQhFt4rA+IA93xXSZTXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGOPe-003wKX-Uu; Fri, 13 Jan 2023 18:04:22 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGOPU-003wFe-6F
	for linux-phy@lists.infradead.org; Fri, 13 Jan 2023 18:04:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 82748B8211D;
	Fri, 13 Jan 2023 18:04:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92971C433EF;
	Fri, 13 Jan 2023 18:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673633049;
	bh=bVMIBW9jGyd5k0cfhXoMsLYS7NcAAXWLrQcEnGyvVoo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kY2MC2HkJNNo1glxII3qKTVcUxepV8hPZbJUYoGTxwO8TGHkyduMHYPSYzFoADHzI
	 aKXQE+4+Q0QFrOOGKJILx52g54LZ+mfaPFty3CieViuWz2cjRndZ2LCCgVEJyKvetp
	 ++FJKKQ3VmXnqSBFnTDI7SNtaGm4z99VNzRccmb61GJ39VzKd2/bxjMkNU53V6hW/z
	 sJLWcldVgNAV91iwwyOp5yWjw5y9XgS7QNN9MGtxOQi5+wQJw/dlgqQyNPh6dI14Fo
	 u+UJB+AXrtOfAMmXa/hpUfICZS4rwqdNwTnDkfvR+URBTGYeFSsnTFFMdbAXj5Qxt5
	 sSq3/GQWw5bSw==
Date: Fri, 13 Jan 2023 23:34:05 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: kishon@kernel.org, linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH 0/2] phy: renesas: r8a779f0-eth-serdes: Add .power_on()
Message-ID: <Y8GdFaQ94xb06Adr@matsya>
References: <20221226065316.3895480-1-yoshihiro.shimoda.uh@renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221226065316.3895480-1-yoshihiro.shimoda.uh@renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_100412_399111_9A385FA3 
X-CRM114-Status: UNSURE (   6.93  )
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

On 26-12-22, 15:53, Yoshihiro Shimoda wrote:
> Add initialization function for each channel from step 9 or later on
> the datasheet. Otherwise, the rswitch driver cannot initialize
> this SERDES hardware correctly.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
