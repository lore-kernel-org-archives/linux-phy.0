Return-Path: <SRS0=N/27=M5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0392BC4338F
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 11:44:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BCE3060EBC
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 11:44:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BCE3060EBC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u4EaI6hl2i5eG4iffiqUdC+0xA2ER3kpICUJPMGJsJo=; b=FhbSnpyHipX5YB
	dWszFs/d2x0vKN1TMb3hK37zIwp3/5yF2uGbKKTwiFb31wAifb9zH85iV/KrhZW2Rl8X8PIYcjlLB
	vorJEswdmrXfpyJGqhp+NQnPUyAQfJWBC/88O9CvG552zlFhUbmekB3Z1y+GFq+mPXdVpdqA+6/vO
	fy0SCF4QH6lv5Tgu+WYnVgRIMchwOHpydnyQM9inZI4H9KvECGRTV+ogZxy72wl1wjTP2NNeoLE9K
	2DP/nhOF/WQbG+YsmWDUv88Al3HnBTva4iCR5dNmIMPlsEmOWi0V+Z3IrwOo8Udmg5GnJwHgrwDSK
	gNxadUvSUaAwklkBASPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mByHY-00CN1w-2n; Fri, 06 Aug 2021 11:44:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mByHV-00CN18-LK
 for linux-phy@lists.infradead.org; Fri, 06 Aug 2021 11:44:54 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4053660560;
 Fri,  6 Aug 2021 11:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628250291;
 bh=ylElM3/2TB5KabnQxPRU8uY/y3PWqs7tryeGz7oBMiU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rUOrN3Y/Kc814zvi012b8DI+SWu9Ob59xRcAmMBdjbgUq/u5LCL0Ui4lOCZ1vZPLA
 SVc+jTHxtNhLEcc5l4n4XSU8cIwAldW+4ZzdI6pFYYeW9mgKruXO0C5A/s4T4QUlnD
 s0Jm/RmPQf61id64HtYf5K0+B54/6vmYqXFbbVNX2PuNOmkHu+E7BwSU1vSt6aJ1aR
 o7e00tR/gaPFYFltzN0pzdKZEJHGWVoNHTZnyymVvJQRSNlWzTGH+/K2kQAV0DSUTQ
 vb/LcucDxgeVNVJ1uo5TMU7q4vcCWmq6DrN1BhoQ6PBDVQEwNgSJxUpSj1HPsKLGqU
 Kcm3r0h8T/71Q==
Date: Fri, 6 Aug 2021 17:14:47 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Stephen Boyd <swboyd@chromium.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qmp: Provide unique clock names for DP clocks
Message-ID: <YQ0gr/DkhecbPKn9@matsya>
References: <20210722030738.3385821-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210722030738.3385821-1-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_044453_810645_95B3970D 
X-CRM114-Status: UNSURE (   8.49  )
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

On 21-07-21, 20:07, Bjorn Andersson wrote:
> The USB/DP combo PHY exposes the "qmp_dp_phy_pll_link_clk" and
> "qmp_dp_phy_pll_vco_div_clk" clocks, that are consumed by the display
> clock controller. But for boards with multiple enabled QMP USB/DP combo
> instances the hard coded names collides - and hence only the first
> probed device is allowed to register.
> 
> Given that clocks are no longer reference globally by name and it's
> possible to replace the hard coded names by something unique, but still
> user friendly.
> 
> The two new clock names are based on dev_name() and results in names
> such as "88ee000.phy::link_clk" and "88ee000.phy::vco_div_clk".

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
