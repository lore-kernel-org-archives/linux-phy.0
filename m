Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE28AC001B5
	for <linux-phy@archiver.kernel.org>; Fri,  2 Sep 2022 17:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uFcbE0asblZcoHQKZWw8PeelyZ0/FeBl2nWQzmlYZFc=; b=sod5DejY4SCLAi
	a12WCcPfF3le93ir7/QAglUGzcZESdt2qRuMvgiojVknEHOhP01ELbpfeBNzuaxmcfJ2YqSFXrKJr
	FfwXfNi4YCxt86m320z/PU8EBDJW0Xvg3QHvsl10w+7DQDkFFUq+GFxRDdf2mxgmXXZXjPNq2QbJT
	aF4tDs+GaNKIPYNBS4I7omYs/vGDnbGP8LmXAYVk0+9GRXqNcj3V4K/zso1XwZxDH5bsu47CERu3G
	Egx/0IGJ1J6JROGTReYo6mJWV5BOE26UMkbdiAj4i1cfmalW/xZMXTEUSvI19Vzwul+TyDUrM0041
	uyz6cOt392BTzgl3UtaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUAjm-008O4e-8U; Fri, 02 Sep 2022 17:45:50 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUAjj-008NwF-5S
	for linux-phy@lists.infradead.org; Fri, 02 Sep 2022 17:45:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 74FD962214;
	Fri,  2 Sep 2022 17:45:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08C9BC433D6;
	Fri,  2 Sep 2022 17:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662140744;
	bh=IAX/zbZD+Vj6cEmd6Mj31B+0iUEHFKmq5HZH2ntSm9k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BFpYYFpS7E6zXL2r+ybhCdFPf+ESX9GfBgobUjrFUW6TdCQCvIs+wEW00xIRUOAxW
	 /LXZABLpGh5p5rredDWN/3h9FYjoyKpiAwb3YcaAricxURN67CcIPJKmcU6M1Wwqn3
	 6j4iTOB1csYzMve5Dvm2qyG0AlGtjMgokJC8Dd8hTFQWx3jow5DRMu+Q2v86AMMFJY
	 DZNIye6lNJz+iy9Ef9A71cNMSJ5HAfNfS0ZUJJCfUoRNrzGRttrTJAn8jo2/OwTTMB
	 jf6+vMZ9SD47eZ6v7PIK9469L5P3azPRKV+vkahq7nKOuN8NfX/PB/yf7mq/5phVxR
	 5KfzeSQd0IQ2Q==
Date: Fri, 2 Sep 2022 23:15:40 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: mchehab@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, kishon@ti.com,
	sakari.ailus@linux.intel.com, hverkuil@xs4all.nl, jacopo@jmondi.org,
	laurent.pinchart+renesas@ideasonboard.com,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-media@vger.kernel.org,
	kernel@pengutronix.de
Subject: Re: [PATCH 1/4] phy: dphy: refactor get_default_config
Message-ID: <YxJBRNk8bqs6QmQ3@matsya>
References: <20220818143307.967150-1-m.felsch@pengutronix.de>
 <20220818143307.967150-2-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220818143307.967150-2-m.felsch@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_104547_251428_E8098DB6 
X-CRM114-Status: UNSURE (   8.43  )
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

On 18-08-22, 16:33, Marco Felsch wrote:
> Factor out the calculation into phy_mipi_dphy_calc_config(). This is
> needed for the follow up patch which adds the support to calculate the
> timings based on a given hs clock. No functional changes are done.

Acked-By: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
