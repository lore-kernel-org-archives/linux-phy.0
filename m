Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9EF5C5CFC1
	for <linux-phy@archiver.kernel.org>; Tue, 11 Aug 2026 11:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=igMK5EyaciNz/wLnCYyELtU/5xyLpRZYES32XyOURe8=; b=NY8+Pf7KRFPaC0
	YkKaSnyOf3WqQTDBSTFShTp9m7k9Lslovk4XQHVKALpOUBOS2sf5IksJ4w+I1HdXOrJv+3ok1aVlG
	fs+t/Q5viCC3BAmTNwB//paY3j4sTCUOa+OkhAoHtCbwnzhd2PQ/j5Du8vATIYoS8dC9jU4VvB6jZ
	ZRLp1QLeTL6ftbbahJa76tfjkW24vvCEsP+f1H62ZCXwyM8mcRk77L425+b2NGPO/xUxfa9AZekHW
	b0fVLlbsH/UqMNPegL7vJkO5rryyFdzbiB+KINO6PLmOdIYFkK9kAScVwnDPpQ6z3dC8U1bmOz8QE
	yBl97khlSAvnxSwqJo0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtkar-0000000Dvat-1wF3;
	Tue, 11 Aug 2026 11:24:29 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtkaq-0000000DvaL-0pbk;
	Tue, 11 Aug 2026 11:24:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1E7B6600AD;
	Tue, 11 Aug 2026 11:24:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15E361F000E9;
	Tue, 11 Aug 2026 11:24:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786447466;
	bh=AOlRdH/L92fb7OOyEUdkTjMrylhg++68RVW1YX5mrjg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=PucfnLls9TjGXNjOI3mFfEldnHv1DViAqfpQ0uTVvPSXNUbvmG8qWZycxToZ/U/Y0
	 ffn43ED4fW0PZkmJ/wd7PrnKD9vZeZTUIKZpVZTE3Ue0KLhQV6kPHoGRFMFHIzGcpw
	 kCAd+SfBAAK2JYbkyFbdGschAsqD2CAkqN5QblWrSoS9NrynFIlxNAKXE2G+e9rRvK
	 kyFq8b30z4XajvPvX+CiYlnzAgUb7gYmiBemgoFr/3uHSvV2JRAN2e8rrcY2UKw93R
	 l11azPzStzs0DIWW7kpM1W3PbqFZ5Iy+fotfAJ45oUyBdh+Fq4gOkw3hx3lO2nYbve
	 xeVXWFuOLUn0A==
Date: Tue, 11 Aug 2026 16:54:23 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Algea Cao <algea.cao@rock-chips.com>,
	Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Sashiko <sashiko-bot@kernel.org>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v5 02/10] phy: rockchip: samsung-hdptx: Prevent
 divide-by-zero when computing clk rate
Message-ID: <ansGZ9LUA7ItYHe7@vaman>
References: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
 <20260723-hdptx-clk-fixes-v5-2-8e786067865f@collabora.com>
 <qe6i5bvrn32xmwncl4zq3f5w6twpwfwvq5alaacsceq3vxn3nt@mbeytagr77j3>
 <605f96b2-709c-49f6-9446-49ed3bff7d96@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <605f96b2-709c-49f6-9446-49ed3bff7d96@collabora.com>
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

On 07-08-26, 17:19, Cristian Ciocaltea wrote:
> Hi Mani,
> 
> On 8/7/26 3:56 PM, Manivannan Sadhasivam wrote:
> > On Thu, Jul 23, 2026 at 10:41:45PM +0300, Cristian Ciocaltea wrote:
> >> Calculating 'sdm' fraction in rk_hdptx_phy_clk_calc_rate_from_pll_cfg()
> >> could trigger a divide-by-zero, as it uses div_u64() with a denominator
> >> read directly from hardware: the values ropll_hw.sdm_deno,
> >> ropll_hw.sdc_deno, ropll_hw.sdc_n, and ropll_hw.sdc_num are populated
> >> from PLL registers which, in theory, could be left by the bootloader
> >> uninitialized/misconfigured.
> >>
> >> Provide the necessary sanitization to avoid trusting the hardware state.
> >>
> >> Reported-by: Sashiko <sashiko-bot@kernel.org>
> >> Closes: https://sashiko.dev/#/patchset/20260611-hdptx-clk-fixes-v3-0-67b1b0c00e16@collabora.com?part=1
> >> Fixes: 3481fc04d969 ("phy: rockchip: samsung-hdptx: Compute clk rate from PLL config")
> >> Tested-by: Diederik de Haas <diederik@cknow-tech.com>  # NanoPC-T6 LTS
> >> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> >> Reviewed-by: Andy Yan <andy.yan@rock-chips.com>
> >> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> >> ---
> >>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 11 ++++++++---
> >>  1 file changed, 8 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> >> index 710603afff86..44e99343f249 100644
> >> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> >> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> >> @@ -2270,10 +2270,15 @@ static u64 rk_hdptx_phy_clk_calc_rate_from_pll_cfg(struct rk_hdptx_phy *hdptx)
> >>  
> >>  	fout = PLL_REF_CLK * ropll_hw.pms_mdiv;
> >>  	if (ropll_hw.sdm_en) {
> >> +		val = 16U * ropll_hw.sdm_deno *
> >> +		      (ropll_hw.sdc_deno * ropll_hw.sdc_n - ropll_hw.sdc_num);
> >> +		if (!val) {
> >> +			dev_dbg(hdptx->dev, "Invalid ROPLL hw state: deno == 0\n");
> > 
> > If the hardware state is invalid, why can't this be a hard failure?
> 
> This is an internal helper called from the .recalc_rate clk_op, which tries to
> compute the current rate by reading back the hardware state. 
> 
> Since .recalc_rate returns unsigned long, we cannot propagate errors to the
> caller.  However, per the clk_ops documentation, the driver is expected to
> return 0 if it cannot figure out the rate.
> 
> Moreover, this condition isn't really fatal, as it only means the PLL
> configuration currently stored in hardware can't be translated into a rate.  The
> next .set_rate should program a valid configuration and help with the recovery.

This is a good explanation which may not be obvious to everyone. I would
think that it would be good idea to add a comment for this here

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
