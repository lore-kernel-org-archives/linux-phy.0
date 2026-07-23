Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80944C531CC
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 20:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I7xqwre4CAiqw1oPPTFKGc1nMOo+kkjidS5WMdYXCgI=; b=zG7qQxmK0J2vdR
	S2o8p+oJFXPFXl3IDNvs7MTE+xyeJK0u43CjM27FT83uaEMnYQroC985NgUumFNUItTYo/jRYJqvk
	CLjgg1blTiYQVwfrc12uu4vYYvU64xX0DE7XossexzLw5IYtoQF12zkDz2r724ouMwvunz1Fv58/n
	p/Ofs7/vM4ynVb/v+bCvlgApt8iRjewHzx6Y019XMxkbiAq1TeR24piudWS5hHwdycvaAoSrrvoa6
	FVXOqzFFhEHr8CRv/7wiCZwClHD1Qi+9NLLyuXKCOlQaDbQvxdPBj+eoGCw/SYyXIyJbZpsxIMaD6
	CydDFFMZBO5eZIycfTig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wn0Mo-0000000F4gp-0lpg;
	Thu, 23 Jul 2026 20:50:06 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wn0Ml-0000000F4gM-2DfN
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 20:50:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784839800;
	bh=h48RRP+WBLX/GfXrAjAcXLBZDmUiZ2vByVtC1Gnqa1k=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Z4rWdMJ0DeDE+Ty7Dwk/qE5PkJhR6WnqU6TGv+wcgXiV/FgWpPP4ZNPsW4PSgEsho
	 tSyenojjsWYevPjgly16JnezLa2k13HoGfTCc/Gxar1q8Eo7OgefpoZ12U2rVx5Crj
	 gMTzvbODFQRSw3UFnvCWoAlAvze3FMxEkMyngKO2uNqIZZRGSJQFaJITj6+1ANHPcW
	 woOIjTBka0/QLAXrI6ml4svTCfJg0tA+IYSxYs0nCR6tChPoVzxThs/e6njzxB8ccJ
	 B8yNB27gUqnnvmoZlgzpFyyfjDPRg1LWbDCqQ+0Ane+dPLST2MJBTJgiNGjm/d4ey0
	 W4ZW0qFP/iMrA==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9B21017E0676;
	Thu, 23 Jul 2026 22:50:00 +0200 (CEST)
Message-ID: <b6b26c56-b6be-4e70-adef-0fea3fb25ed8@collabora.com>
Date: Thu, 23 Jul 2026 23:50:00 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 06/10] phy: rockchip: samsung-hdptx: Drop TMDS rate
 setup workaround
To: sashiko-reviews@lists.linux.dev
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com,
 neil.armstrong@linaro.org
References: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
 <20260723-hdptx-clk-fixes-v5-6-8e786067865f@collabora.com>
 <20260723195420.840511F000E9@smtp.kernel.org>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20260723195420.840511F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_135003_729715_37A52E9C 
X-CRM114-Status: GOOD (  19.53  )
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

On 7/23/26 10:54 PM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Medium] The commit claims to drop the TMDS rate setup workaround but fails to remove the corresponding CCF-based rate adjustment fallback, leaving the cleanup incomplete.
> --
> 
> --- Patch [6]: [PATCH v5 06/10] phy: rockchip: samsung-hdptx: Drop TMDS rate setup workaround ---
> commit 0f64c3b5ec0d09a00473e1362200c7598b861f9d
> Author: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> 
> phy: rockchip: samsung-hdptx: Drop TMDS rate setup workaround
> 
> Since commit ba9c2fe18c17 ("drm/rockchip: dw_hdmi_qp: Switch to
> phy_configure()") the TMDS rate setup doesn't rely anymore on the
> unconventional usage of the bus width, instead it is managed exclusively
> through the HDMI PHY configuration API.
> 
> Drop the now obsolete workaround to retrieve the TMDS character rate via
> phy_get_bus_width() during power_on().
> 
>> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>> index 792eb57755eb1..31abff5ada9e3 100644
>> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>> @@ -1660,22 +1660,6 @@ static int rk_hdptx_phy_power_on(struct phy *phy)
>>  	enum phy_mode mode = phy_get_mode(phy);
>>  	int ret, lane;
>>  
>> -	if (mode != PHY_MODE_DP) {
>> -		if (!hdptx->hdmi_cfg.rate && hdptx->hdmi_cfg.mode != PHY_HDMI_MODE_FRL) {
>> -			/*
>> -			 * FIXME: Temporary workaround to setup TMDS char rate
>> -			 * from the RK DW HDMI QP bridge driver.
>> -			 * Will be removed as soon the switch to the HDMI PHY
>> -			 * configuration API has been completed on both ends.
>> -			 */
>> -			hdptx->hdmi_cfg.rate = phy_get_bus_width(hdptx->phy) & 0xfffffff;
>> -			hdptx->hdmi_cfg.rate *= 100;
>> -		}
>> -
> 
> [Severity: Medium]
> Since this patch drops the TMDS workaround here, should we also remove the
> corresponding CCF-based rate adjustment fallback and the restrict_rate_change
> state tracking?
> 
> Looking at rk_hdptx_phy_clk_determine_rate():
> 
> drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c:rk_hdptx_phy_clk_determine_rate() {
> 	...
> 	/*
> 	 * FIXME: Temporarily allow altering TMDS char rate via CCF.
> 	 * To be dropped as soon as the RK DW HDMI QP bridge driver
> 	 * switches to make use of phy_configure().
> 	 */
> 	if (!hdptx->restrict_rate_change && req->rate != hdptx->hdmi_cfg.rate) {
> 		struct phy_configure_opts_hdmi hdmi = {
> 			.tmds_char_rate = req->rate,
> 		};
> 	...
> }
> 
> Leaving this block behind seems to leave dead code, as the removal condition
> (the bridge driver switching to phy_configure()) has been met.
> 
> Does this cleanup belong in this patch as well to ensure the workaround is
> fully removed?

No, this is handled separately in [PATCH v5 08/10] phy: rockchip: samsung-hdptx:
Drop restrict_rate_change handling.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
