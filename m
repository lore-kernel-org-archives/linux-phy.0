Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8FE8C77B7F
	for <linux-phy@archiver.kernel.org>; Tue, 16 May 2023 14:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ntepxsa+ErertnL3lJw0NLBt1DRoKjtnV7rrtS1vEAE=; b=CIHZV2w26VHVow
	lHfKSBEaBFga1kEtJeTXBDNpijdJlrTZ/Jxi0O3fM/iI4G2UwEc1uAu7A1f8V8kZ83tXFZhoS1BRs
	9vEPYoDwva+IBWaPgMIaOW0lo/nC71IcBLzrXhlGU5vzE/KrM27eNgycEO5ufYWHlcPOhoxnOIoGn
	C/S60N4iOTSSskn0ZLuHL2wsxDH8UvUVt+5OXzFg1vw+H8xQAPG30VNjwSO0BUHTXR+FRvkHJZom+
	1x092Qq79NDrS3T48qxTCp9kk3qVhwUFdYSHKATJKxkbn/tf3+4oF7LsBXrrKGqM5Rfyy/QF4qKgq
	IzSfJA5+2SBBX+Z01FZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyvif-00666o-12;
	Tue, 16 May 2023 14:32:05 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyvic-00665i-0M;
	Tue, 16 May 2023 14:32:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 84262634E0;
	Tue, 16 May 2023 14:32:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6109FC433D2;
	Tue, 16 May 2023 14:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684247521;
	bh=H7zehSHe6OxhJ9CICtzRIHG3toGkV9epwmeZGTu5uoI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m5zR2HT2O31WqtGq/ArnyvhZGdDpe4Is3e+stzeh6btOST4n5CRTjuZTamGm5oxHF
	 ztBVjhziUEG7BIUzBPeBkHHuzf2Swsw+PIdgl25PVr1gAkOEAURGuWR7MOcJHxzdvw
	 tBvijbYpY+pYJBUsvrHpyqrA/DTWSbTr8OSrwzrugY1cIpRKhMq8tCv4Xr5fhw2L5k
	 laGpt92F4BtKQBIXaa2eJfcK5r1SUPKH4iB5uE6BFSJS6RBow5puERlIyLJksme+gq
	 D0EqeBurZFyySCvUY1Xc8UXIgw/VbeqYKoGEG+dusY6tNg70Pq0LaAq95zSXXIwMWe
	 Kcq6i9irp4pbQ==
Date: Tue, 16 May 2023 20:01:57 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: kishon@kernel.org, rogerq@kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	srk@ti.com
Subject: Re: [PATCH 0/2] PHY-GMII-SEL: Add support for J784S4 SoC
Message-ID: <ZGOT3Y/tzkv4i9uV@matsya>
References: <20230331062521.529005-1-s-vadapalli@ti.com>
 <ZCbhRQ2B8+RrSh5z@matsya>
 <8d159cc9-ecdb-b96f-052a-42377a549839@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8d159cc9-ecdb-b96f-052a-42377a549839@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_073202_196317_C8A76F27 
X-CRM114-Status: GOOD (  12.77  )
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

On 31-03-23, 19:19, Siddharth Vadapalli wrote:
> Hello Vinod,
> 
> On 31-03-2023 19:03, Vinod Koul wrote:
> > On 31-03-23, 11:55, Siddharth Vadapalli wrote:
> >> Hello,
> >>
> >> This series TI's J784S4 SoC. A new compatible is added for the J784S4 SoC,
> >> with QSGMII mode enabled. Also, the CPSW9G instance of J784S4 SoC supports
> >> USXGMII mode. Thus, add support to configure USXGMII mode.
> > 
> > Sorry this fails to apply for me, pls rebase and send
> 
> This series has to be applied after the following series:
> https://lore.kernel.org/r/20230309063514.398705-1-s-vadapalli@ti.com/
> as mentioned below.

Okay applied now

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
