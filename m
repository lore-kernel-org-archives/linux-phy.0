Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C670ECAAD5
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 05:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZMPVmWemRmh6SC4M/LlUnNuaGntf88kU1a603oIyylk=; b=VT/9Tg+RF7lPTk
	ZeBKrdWkjUoxQ0ImxOxVrpi4DdIHFeo93SHGRMPnNddC3o/HC/ax17ULCxCYMP5q55SAPA9YmrpW2
	jFYE/GipEKtvXuCN7RJHpMJO8p2881VoNnIgVfgMp1AND+1enrhS1gAsVE3WUW3QRlrczksxFbYiK
	lSNuhL/bfojzn11Wyp0KHVFsbFdEB0K/v5dPPXYVo7SMz4le6zMVzBDEoIljHpblLntDPzfjk9bDU
	yFjetL6307qhUBGoUZo9PcD4RQGlRKmxgxWRyswVIB/4jRPTu6DsE8OthFznb1qULoLQrYdQfUqhL
	irmqo2h7cF4PEToGm44g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oStZN-00E8ov-RK; Tue, 30 Aug 2022 05:13:58 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oStZJ-00E8o9-Iv
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 05:13:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 0A95BB811B2;
	Tue, 30 Aug 2022 05:13:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECA73C433D6;
	Tue, 30 Aug 2022 05:13:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661836422;
	bh=75LehKyfg/TMPpwAfNi4DyQ4TNo6iyN0d+FUfBzGa+c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qMzo0MkmqRBfQPGtXsosqLcP7p5VHih/9Q3XnhajUMs0P0JizUEv5OmJ0eWmdjF15
	 hyGw76aYuNqtaVvcdFjZLKsWbWqMOdQyGD49gQ2z+ikm9taaT65meDox687jjcfixG
	 d8TPr/NFWJ/qjG8Oe47Nf5pzKo2rPlgpB6ofZ1K2WWslIoPWnjGnBNNdArg1EWqQ3h
	 WdMjC4GHZnc3cimpMGwPAI/vX8joJIR3b21/GzDMgH8v3qHJaJ9HlLhMA9UrYRfkLX
	 MqBCXyUaEBzXjz1PwbNWAe78yMQ3LBSIIQNUDOd+2vkhVWmebUcVqozNYD3dWagvW0
	 PUtGIAOpCjg+w==
Date: Tue, 30 Aug 2022 10:43:38 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Roger Quadros <rogerq@kernel.org>
Cc: kishon@ti.com, vigneshr@ti.com, t-patil@ti.com, sjakhade@cadence.com,
	s-vadapalli@ti.com, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 0/7] phy: ti: phy-j721e-wiz: Add support for j7200-wiz-10g
Message-ID: <Yw2cgthIiLONb/+Y@matsya>
References: <20220628122255.24265-1-rogerq@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220628122255.24265-1-rogerq@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_221345_782584_22B8DFDA 
X-CRM114-Status: GOOD (  10.68  )
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

On 28-06-22, 15:22, Roger Quadros wrote:
> Hi,
> 
> The SERDES in J7200 SR2.0 supports 2 reference clocks.
> The second reference clock (core_ref1_clk) is hardwired to
> MAIN_PLL3_HSDIV4_CLKOUT (100/125/156.25 MHz).
> 
> Add a new compatible "j7200-wiz-10g" for this device.
> 
> The external clocks to SERDES PLL refclock mapping is now
> controlled by a special register in System Control Module
> (SCM) space. Add a property "ti,scm" to reference it and
> configure it in the driver.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
