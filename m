Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F050C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 27 Jan 2022 05:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aPsWYK1QLuU6bVKoAbgCj5322ZHd1jMqO96ak9+aiXA=; b=wWzQ2kjGbqgxX4
	hgoIGizPQMdKytJCvI9lkTm0J4sZA/Su/T6fo2SvJIJV+gx8u9JtbEwlKa1x+U54JwlyRCQCqyiLV
	KOt1C2CgpYrxgJk/M12TjwYjrfHe9d1mBJE1cZRMmLt09A3uGSwoml6WD6WOpWmqjBYfLf8+xPutB
	8uLmOObZjDVb3nlzD1CXMYaeEeMKX4yoC91o6emkVSw4DF5cNq9mB7AEumvgXSZtIBL9AbCeuHM2I
	bWyufuKMdvxx/ne0avbALDx+0boFuDA8VFGjtuit122zQLdaoMeFbLDYh8tcF//EJqIJbRhBNU+iv
	2T1l+l2LSi3n5syieZgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCxHz-00EOVe-4K; Thu, 27 Jan 2022 05:25:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCxHw-00EOUy-Mq
 for linux-phy@lists.infradead.org; Thu, 27 Jan 2022 05:25:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A07F76184D;
 Thu, 27 Jan 2022 05:25:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EBDCC340E4;
 Thu, 27 Jan 2022 05:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643261139;
 bh=hcV1Z9fUWPLol2Qgw61iA8s7HhASLHXNjON5ZKRHxNo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z8FiyElGFWixMqeL7PNY/Mh6tV+QUC80Od/aSnqB0FVT3DMwDi54COlJJfyDaNVu9
 w4l+drvtUfu1fnGBIu5x6MVaOHlS5FY47Ya5tD8Azk+576/Kb0TyOSYcCrQE5gbW0B
 guPXkcky4l826C6drJDUc92xYayEw8Flyg9c128TsFm0sO0ycMyGcvQoY0wey5Zr0s
 thfkluRTbayg/NjA8irMFo5SzypsWCOyTIefvReZkcgVofk1FqCII5mZhzNjrEvRyX
 RDbM+oYAJmMh/Q34VqmrPfIoEPz/2nXYfC74bDlxrfqPKrEVfdNZekfwW7Z4aTlmx8
 29BgppVkenldQ==
Date: Thu, 27 Jan 2022 10:55:34 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Robert Hancock <robert.hancock@calian.com>
Cc: linux-phy@lists.infradead.org, anurag.kumar.vulisha@xilinx.com,
 laurent.pinchart@ideasonboard.com, kishon@ti.com, michal.simek@xilinx.com
Subject: Re: [PATCH] phy: xilinx: zynqmp: Fix bus width setting for SGMII
Message-ID: <YfIszlhQ6YARCyaW@matsya>
References: <20220126001600.1592218-1-robert.hancock@calian.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220126001600.1592218-1-robert.hancock@calian.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_212540_825318_6EB8656E 
X-CRM114-Status: UNSURE (   9.37  )
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

On 25-01-22, 18:16, Robert Hancock wrote:
> TX_PROT_BUS_WIDTH and RX_PROT_BUS_WIDTH are single registers with
> separate bit fields for each lane. The code in xpsgtr_phy_init_sgmii was
> not preserving the existing register value for other lanes, so enabling
> the PHY in SGMII mode on one lane zeroed out the settings for all other
> lanes, causing other PS-GTR peripherals such as USB3 to malfunction.
> 
> Use xpsgtr_clr_set to only manipulate the desired bits in the register.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
