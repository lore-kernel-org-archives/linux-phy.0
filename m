Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54125C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 07:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zr/Tuujrl6ZLabG7Q6VV1YtF8d6stHf/AnNDiRPby9w=; b=s3B5FAKjhKYaBY
	DICZfAIo/cq3HZpMBxKxBbq3aV5b0QcLW2NELkPjozKI/CsoUXhNosOems6b+35P6dBuw4S2DJ5Jn
	TcJGMNbxJpWX2eZSTIWkQ6A4jfLEdxUXiyBdNW/y94/t452DBM6e+ffyyYgNqfsKY7cZQYsX96jTG
	K9/22PwPQjmDc5FSxM9RWpc5JkV3BhWD6At6gVScDzUOx9Br26eO7nubXgiGTKx90tw+hwghzRr62
	avnereF1m1vpmiongczKJ7TeGMoPvCdLWRYZUC5w6QKvsOUW5mVyT5I8BfC1yCUSbjeM/+lRCD/gE
	qjizjGpto5DZEcxQJK2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot1e6-003jfi-Nj; Thu, 10 Nov 2022 07:06:42 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot1e3-003jfN-Jv
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 07:06:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E856D61D85;
	Thu, 10 Nov 2022 07:06:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB825C433C1;
	Thu, 10 Nov 2022 07:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668063998;
	bh=JILYWmRHeQlrFq3PO1cP1RJjbl5/5CrcYkqjDHCWjWM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OvfqSv4r75YqGPVAWeAToKYtQyQHg+n+KTDxH/3plnKdhLUGzxYO/n2shTUdfeyIk
	 dX0l5eY8w8A12HUS5pTskACnnAE5WSipi+7K8nQDnbhvlDqGYEgMT4bjG0MsQAdZal
	 o0hDOkZ/hEJbovax1KCOTMfD+M0QIMg+c73VXdJIoKwPmxeknXizqNHX81dgy+so1N
	 5ia/jXhV94zCopqmhxRG87vvC6/gHFjy12+ni80KISw1dSyD3RiYp94NB612NNWSv2
	 3JvzUpsZNc6Z8Tv/wyBL3LmF+pThWNqGdMIkW1VHNLLW6Xle8rcMzncpxY4hz9SS9k
	 4yj2zqnrEaQUQ==
Date: Thu, 10 Nov 2022 12:36:32 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: "kishon@kernel.org" <kishon@kernel.org>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Subject: Re: [RESEND PATCH v3 2/2] phy: renesas: Add Renesas Ethernet SERDES
 driver for R-Car S4-8
Message-ID: <Y2yi+PRyupPGCB9k@matsya>
References: <20221027134006.2343164-1-yoshihiro.shimoda.uh@renesas.com>
 <20221027134006.2343164-3-yoshihiro.shimoda.uh@renesas.com>
 <Y2ZzowD2eAxBFcwR@matsya>
 <TYBPR01MB5341DC696FCF3B7D4E139006D83C9@TYBPR01MB5341.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <TYBPR01MB5341DC696FCF3B7D4E139006D83C9@TYBPR01MB5341.jpnprd01.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221109_230639_764198_3AB72452 
X-CRM114-Status: GOOD (  20.04  )
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

On 07-11-22, 01:50, Yoshihiro Shimoda wrote:
> Hi Vinod,
> 
> > From: Vinod Koul, Sent: Saturday, November 5, 2022 11:31 PM
> > 
> > On 27-10-22, 22:40, Yoshihiro Shimoda wrote:
> > > Add Renesas Ethernet SERDES driver for R-Car S4-8 (r8a779f0).
> > > The datasheet describes initialization procedure without any information
> > > about registers' name/bits. So, this is all black magic to initialize
> > > the hardware. Especially, all channels should be initialized at once.
> > >
> > > Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> > > ---
> > >  drivers/phy/renesas/Kconfig                 |   7 +
> > >  drivers/phy/renesas/Makefile                |   1 +
> > >  drivers/phy/renesas/r8a779f0-ether-serdes.c | 416 ++++++++++++++++++++
> > >  3 files changed, 424 insertions(+)
> > >  create mode 100644 drivers/phy/renesas/r8a779f0-ether-serdes.c
> > >
> > > diff --git a/drivers/phy/renesas/Kconfig b/drivers/phy/renesas/Kconfig
> > > index 111bdcae775c..68f160b0e8ef 100644
> > > --- a/drivers/phy/renesas/Kconfig
> > > +++ b/drivers/phy/renesas/Kconfig
> > > @@ -32,3 +32,10 @@ config PHY_RCAR_GEN3_USB3
> > >  	select GENERIC_PHY
> > >  	help
> > >  	  Support for USB 3.0 PHY found on Renesas R-Car generation 3 SoCs.
> > > +
> > > +config PHY_R8A779F0_ETHERNET_SERDES
> > > +	tristate "Renesas R-Car S4-8 Ethernet SERDES driver"
> > > +	depends on ARCH_RENESAS || COMPILE_TEST
> > > +	select GENERIC_PHY
> > > +	help
> > > +	  Support for Ethernet SERDES found on Renesas R-Car S4-8 SoCs.
> > 
> > Sorted alphabetically please and not at the end
> 
> I intended to sort alphabetically about the prompt strings:
> 
> <snip>
> "Renesas R-Car generation 3 USB 2.0 PHY driver"
> "Renesas R-Car generation 3 USB 3.0 PHY driver"
> "Renesas R-Car S4-8 Ethernet SERDES driver"
> 
> However, IIUC, should we sort alphabetically about the config strings like below?
> 
> config PHY_R8A779F0_ETHERNET_SERDES
> config PHY_RCAR_GEN3_PCIE

We sort them based on config symbol and not the prompt string
-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
