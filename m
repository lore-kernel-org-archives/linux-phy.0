Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9009ECAAD5
	for <linux-phy@archiver.kernel.org>; Fri,  2 Sep 2022 16:57:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1EGErO3WA/TeVC4RGsXm/ZHDyDi/IEgfU3PIbZuixw4=; b=N1MZd/8uhfQaV0
	1M+faAclerCqx9Fr+gC7uFy9dlvS6Fov7+q0rFvHcGo8/59vhKJ9/3+5bY2VfJQtUU+4raRRTXfIj
	/scKGkPGjf4oCXbd8HrxOKkIic6YKSAg0Lc3XIvsAUpLaUJyDHXNbpdRYYEnrPYFRYY8IzOekmsi6
	3hgjgl03SvcKiL52pibft/QrjUP8hfRBR8Pxms0IXSmsz5B0STMC1MqX5zbPnf2sHkzixhPibWduJ
	4UnoBdGM+dMhzzjheUVHu6cOnzTKiqiTm6dhEOPWeyky9dTr1rs84oSOJHLXFKhpPKaIzaPBlNwz7
	aT/a2vkUSYNalJxiXeDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU9zR-007XDZ-5p; Fri, 02 Sep 2022 16:57:57 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU9zO-007X6X-87
	for linux-phy@lists.infradead.org; Fri, 02 Sep 2022 16:57:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 956EA621AB;
	Fri,  2 Sep 2022 16:57:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20911C433D6;
	Fri,  2 Sep 2022 16:57:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662137873;
	bh=nSblD5UqCy74QFKWkUWbtw4B/a+G4x9PFaaqP+ffbgw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iPUdkaN3kUxA4RJQedVLuYLtMrsfxJftBpL4EPU+1fJxwKKxW61Xi50vSAoR4GWM7
	 zz1tTvHGM2AoGE/zFxY0c0q15dBYUcLJy44sjYfLj9eR+oW9O7nCYJ4QqfvjpEKUfn
	 8QL+W7GxCY7z7JtLxIS5w/9gPZymevv3G1wVVbGEjpt1KZH2XxFj7b9tZGcJNH1m82
	 /LzVuO9qK/gTCWSlPfneEh+ZfZxpWfUfJJbQc1UTIg7IlayRZsM6RNMdOxVaINJkS6
	 DejLnhK0LFzn2ps4j/C8nQLXp5VW5F9YbxDNPqVJVmp3I7w1oXXCmlS0jTAPzC6azN
	 D/maxdqIpDiXg==
Date: Fri, 2 Sep 2022 22:27:47 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Stephen Boyd <swboyd@chromium.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	johan+linaro@kernel.org
Subject: Re: [PATCH] phy: qcom: edp: Postpone clk_set_rate until the PLL is up
Message-ID: <YxI2CyoBNnV+q22W@matsya>
References: <20220805154432.546740-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220805154432.546740-1-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_095754_343962_BAAED49F 
X-CRM114-Status: GOOD (  10.46  )
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

On 05-08-22, 08:44, Bjorn Andersson wrote:
> When the platform was booted with the involved clocks enabled the
> clk_set_rate() of the link and pixel clocks will perculate to the
> children, which will fail to update because the PHY driver has just shut
> down the PLL.
> 
> Postpone the clock rate updates until the PLL is back online to avoid
> reconfiguring the clocks while the PLL is not ticking.

Applied, thanks

This gave me a conflict which I think I have resolved, pls do check

Thanks
-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
