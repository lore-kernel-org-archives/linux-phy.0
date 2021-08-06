Return-Path: <SRS0=N/27=M5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 844EFC4338F
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 12:48:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 26920611C5
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 12:48:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 26920611C5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fo1yhTZa1jOaKAE4SW/aIIKxlOMOLK0MeLERFuSdoww=; b=olyOeXA19AgcgD
	2p6RAlj1fUO0orkJa/BLemUxxRUvdNVX04PALjx2mhVBnxlZHl9K3r67S7dX5w0VjH/AkM64dpk1n
	JmFnTGtpXhX6eR3xWFUWnZgyXdIZ/0PVUk5IhMN6sWWeJ1A5SdQVawKF/5ynAv3zMWvRqvao7mjpM
	ALUTh/byUMtaQugFXgz0jd7iUBh17uyXwt840auAA3RrZION19KpsFC+wJm3QNJNeDZk/lwG4MbTG
	Kn3qhqKG6FrssRKxtHLZo2sTUnXJQusruh+hxku5mTPmRtttkZtpmIKrpMUzp5JiMzEFl5+n0pmtr
	eMlmWHkdP+lcK0MEnN7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBzHE-00CVcS-H5; Fri, 06 Aug 2021 12:48:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBzGz-00CVZs-GD; Fri, 06 Aug 2021 12:48:26 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0A3D261181;
 Fri,  6 Aug 2021 12:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628254105;
 bh=b/bL5U8oRfw9K2rvpOxRukG6+MpqFpdlJFgnTeAUI7s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=k6zl6Pqf9LGixgcugEhcjqLxx3OxIgIGkP9ayZdpxvTI4TR9jVr0/AV00F4Sa2nwO
 Fxng7ETGRoegqD5poO1xaxdCE+5voY/S4ZFxIe5J3mTIszLatN1JgCXvsqmvSx42dp
 sLbE4JqDdx33okp8Zskrnqq7YTLGvPX4bnTV8xftXOPu/kARFMWGF1HFFMgiGwki50
 T87ou5IcNGHTNc11Fwos0WpDBZcGT22pw/oKX6G+JPvkK+Oee9a4cvnqevPfbNF9Q1
 PxTgg0db2rkjmgG20IernlJ9Qw1BjqnVvgm7FSu8UYg+4W9+A7NbgjNHLT2VyszKaf
 f/TQjM+6W5vlQ==
Date: Fri, 6 Aug 2021 18:18:20 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Baruch Siach <baruch@tkos.co.il>, Rob Herring <robh@kernel.org>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>,
 Kathiravan T <kathirav@codeaurora.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Robert Marko <robert.marko@sartura.hr>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/6] arm64: IPQ6018 PCIe support
Message-ID: <YQ0vlNekc289LqJl@matsya>
References: <cover.1620203062.git.baruch@tkos.co.il> <87o8acxtqm.fsf@tarshish>
 <20210805094237.GA18330@lpieralisi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210805094237.GA18330@lpieralisi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_054825_594216_3DD4A186 
X-CRM114-Status: GOOD (  17.19  )
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

On 05-08-21, 10:42, Lorenzo Pieralisi wrote:
> On Thu, Aug 05, 2021 at 09:58:57AM +0300, Baruch Siach wrote:
> > Hi Lorenzo, Rob, Krzysztof,
> > 
> > On Wed, May 05 2021, Baruch Siach wrote:
> > > This series adds support for the single PCIe lane on IPQ6018 SoCs. The code is 
> > > ported from downstream Codeaurora v5.4 kernel. The main difference from 
> > > downstream code is the split of PCIe registers configuration from .init to 
> > > .post_init, since it requires phy_power_on().
> > >
> > > Tested on IPQ6010 based hardware.
> > 
> > It's been 3 months with no comment. Would you consider applying the dwc
> > part (patches #1 and #2) for the v5.15 merge window?
> > 
> > I tested the patches here successfully on top of v5.14-rc4.
> 
> You need an ACK from the respective drivers maintainers. We look into
> overall pci/controller drivers structure and common code, it is up
> to drivers maintainers to review and ACK your patches, I will certainly
> pick them up when that's done.

Also is there any dependency b/w various pieces, if not consider sending
patches to respective subsystems...

Too many patch series these days are adding cross subsystem stuff even
if there are no dependencies. Yes it all needs to come together to work
but that does not require a common series to be posted!

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
