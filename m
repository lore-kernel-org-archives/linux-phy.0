Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB48EC43217
	for <linux-phy@archiver.kernel.org>; Sat,  5 Nov 2022 07:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T1O5ecmvbepeqkaUByEtwB+3vX6L2KxihA5wu/lS7+c=; b=ZKmaKqcNKtNMHg
	NeQr6siu6HmpQBCPQwTJSfARfEfqceGzS/dS5KFTk5bnEPMZ9Iwd3D+JyyIDV0HKr9e5+egc7uQOi
	Tb6FB9Ld4USABEFvn1F/OyxjsWvBNloolnCy/I0NCCCHFA/A7Qv7Qj2pSVMt1Opmxx+W2ovz4QzoL
	BBI+5+C54inAMtnwqPpvLqI1NFzqUILGFa6LkKs5CFvSBkeS5HSZbMGb+/8U8Is+RVbH4MhUIkjNB
	VFXNOvv/xb3MHP+QlrMA4n5sx3+I13w3Z/cCcYVxHqM0J2QVA+yaIZLIpp1Yo4LoSD+Jgu/veobMj
	R9peNwckaG8Nw7XmNRzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orDeZ-00610E-5u; Sat, 05 Nov 2022 07:31:43 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orDeW-0060zN-9W
	for linux-phy@lists.infradead.org; Sat, 05 Nov 2022 07:31:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 23A2DB81253;
	Sat,  5 Nov 2022 07:31:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40265C433D6;
	Sat,  5 Nov 2022 07:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667633496;
	bh=+e82QwnlQfSIsUJDjMJySUyMNXUabk+lGetzUjH2/bU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OLkEs9ppKFjVxwCh1LIIULE/4g2VkqNadV5dzy3Kw2FC+Tj6CycZpmvRuCD2gvgTd
	 PAYFatyZ1ip/KXUsA5P6ngc81eJVbDp947/4OcuG6PhfY+NlqK3Xpr/FEsyXaWUX2p
	 asUNDQBqhSrC3d8zunfsfRsXUB8UHVW6spxJ0qESjcg8WFOPalHT6uTkMxNLXmY+5J
	 J2JtVatseguai4EmOh2ja+PpJYL2AV/NlbCAIKVIeIyQZ32fVF7xBXd/614/tYTn+e
	 YUzAfEmBq7c3wlnLSwqqrSzGBut8OM9mU9RwVwr2iveXBpFPl3QxNZsdCgoDfNPdeF
	 rs9SfSESxoRIQ==
Date: Sat, 5 Nov 2022 13:01:32 +0530
From: Vinod Koul <vkoul@kernel.org>
To: John Thomson <git@johnthomson.fastmail.com.au>
Cc: Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	=?utf-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] phy: ralink: mt7621-pci: add sentinel to quirks table
Message-ID: <Y2YRVBMqtSVDum8l@matsya>
References: <20221104205242.3440388-1-git@johnthomson.fastmail.com.au>
 <20221104205242.3440388-2-git@johnthomson.fastmail.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221104205242.3440388-2-git@johnthomson.fastmail.com.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221105_003140_492721_26DF20BC 
X-CRM114-Status: GOOD (  10.03  )
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

On 05-11-22, 06:52, John Thomson wrote:
> With mt7621 soc_dev_attr fixed to register the soc as a device,
> kernel will experience an oops in soc_device_match_attr
> 
> This quirk test was introduced in the staging driver in
> commit 9445ccb3714c ("staging: mt7621-pci-phy: add quirks for 'E2'
> revision using 'soc_device_attribute'"). The staging driver was removed,
> and later re-added in commit d87da32372a0 ("phy: ralink: Add PHY driver
> for MT7621 PCIe PHY") for kernel 5.11

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
