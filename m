Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77E52C7EE23
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jun 2023 11:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GrSUCelx+y0eqUNO47M09xiEe7BuOvUze+qq0YfBFck=; b=lcBQi2Ipl0Vwta
	AfspNzviRs0l4ZNLWnjTgauunbBH92DZ+G0Cqdr7WYf0ugEVJBML3zAOnjJKecgwZ5LSlBdYpCZxj
	mqk6ffZ6qzKX1mvPOMQ9WscCWusX4n01fILZDFf5cN4MNKhqvkNscUb7Uq2YOU6ga96G+62p7Sk9U
	tyvW8AHMUl1+HfZnWv8mKmH6T1B3EZs+24nhBXRizZyFbQE50rF+8Wf3B7BopH0zsmfVtiMwp56BO
	jbtZOAAW54qWeFL7GeNee7zl34F3jTBveaZBf+PF5mlZ/5tTAiF/WAOrrTcjwK8weZ7LTg3+Wumf3
	6xkN86uL6R60IRsIxsBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7E81-009DZX-0Q;
	Thu, 08 Jun 2023 11:48:33 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7E7x-009DYj-1x
	for linux-phy@lists.infradead.org;
	Thu, 08 Jun 2023 11:48:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id AA74560302;
	Thu,  8 Jun 2023 11:48:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52451C433D2;
	Thu,  8 Jun 2023 11:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686224904;
	bh=ugZB4JpowTSw5maVY2a7prvIYR/oQ04BV7q0yRRRuls=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=boJKNZpfHyX0Pb4WgHrFV1UsYZ6msrh4OLUMaQP9nJ98IrGgPfTGVm5H03J/JBb2p
	 SLhwn+nYzroyktEFi4LMh/Kh0J0bZHlvcV9geFOwv2Vnshdo7kQG7Bgtl4Ed/YDkM+
	 ysaDAIOBVk/BCwFTjteUAa7tAaW8OSDMLEU4DHQEcypW1FBPCZbyWDopxad4nXN448
	 boenL5l8QYJQY4ZkI75hv6Furka5OLj3sWCnbM1BU/ri6NtT7KQmUw+Xh766Cjd31w
	 ItfIAJs0xGH8RHGowJv/c+7USPmJxxTEbvPVspsls02rycaVazddqCIXzWS1bhasfD
	 f0AFOVYMU8ESA==
Date: Thu, 8 Jun 2023 17:18:19 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Haotien Hsu <haotienh@nvidia.com>, JC Kuo <jckuo@nvidia.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org, Wayne Chang <waynec@nvidia.com>,
	EJ Hsu <ejh@nvidia.com>
Subject: Re: [PATCH v2] phy: tegra: xusb: Fix use-after-free issue
Message-ID: <ZIHAA6QwRkQ+lS45@matsya>
References: <20230508100320.345673-1-haotienh@nvidia.com>
 <e7ae22f4-52c1-62a1-e5c2-71732bcb04b2@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e7ae22f4-52c1-62a1-e5c2-71732bcb04b2@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_044829_702110_8F47CC9B 
X-CRM114-Status: GOOD (  22.84  )
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

On 06-06-23, 10:39, Jon Hunter wrote:
> Hi Vinod,
> 
> On 08/05/2023 11:03, Haotien Hsu wrote:
> > From: EJ Hsu <ejh@nvidia.com>
> > 
> > For the dual-role port, it will assign the phy dev to usb-phy dev and
> > use the port dev driver as the dev driver of usb-phy.
> > 
> > When we try to destroy the port dev, it will destroy its dev driver
> > as well. But we did not remove the reference from usb-phy dev. This
> > might cause the use-after-free issue in KASAN.
> > 
> > Fixes: e8f7d2f409a1 ("phy: tegra: xusb: Add usb-phy support")
> > Cc: stable@vger.kernel.org
> > 
> > Signed-off-by: EJ Hsu <ejh@nvidia.com>
> > Signed-off-by: Haotien Hsu <haotienh@nvidia.com>
> > ---
> > V1 -> V2: Remove extra movements to clarify the change
> > ---
> >   drivers/phy/tegra/xusb.c | 1 +
> >   1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
> > index 78045bd6c214..26b66a668f3b 100644
> > --- a/drivers/phy/tegra/xusb.c
> > +++ b/drivers/phy/tegra/xusb.c
> > @@ -568,6 +568,7 @@ static void tegra_xusb_port_unregister(struct tegra_xusb_port *port)
> >   		usb_role_switch_unregister(port->usb_role_sw);
> >   		cancel_work_sync(&port->usb_phy_work);
> >   		usb_remove_phy(&port->usb_phy);
> > +		port->usb_phy.dev->driver = NULL;
> >   	}
> >   	if (port->ops->remove)
> 
> 
> Are you OK to pick this up now?

Changes looks good to me. But title should describe the change, so if
Haotien can change title to reflect the change in patch, I would be
happy to apply

> 
> FWIW ...
> 
> Acked-by: Jon Hunter <jonathanh@nvidia.com>

ofc this should be carried too

> 
> I believe Thierry already ACK'ed V1.
> 
> Jon
> 
> -- 
> nvpublic

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
