Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D32FEE499C
	for <linux-phy@archiver.kernel.org>; Wed, 11 Sep 2024 18:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ShHiFJ6+m6+hbCZhWDpCFLCs6SxwAdr+gNXlzjCBsZQ=; b=2TxY52838HWdNc
	k+CuDKjKtfpeggVbHos1aaEZv1Kl/wzvBsIAwJBVeqih2OXZk7EEh3dvaCjaxlgQauIMz0I47kU8V
	zhqsWetNoGrmGs8tE/ma1sxHn4I7dSsgRwDzVDMeaWeZIwoD8hnW6oJPe4RoZrLtjyeZ2u1L0I2Tt
	O+i0R4KVv/IiVWi4mP/S9vJrD00Gr4VaiP8yETmrzZ9V7QuR4POK4RhMEAn7nahBaSvYYusQfQ5iu
	3pLk3wQB0lowXDsCTcGSIr+o2fZdbQ47Jx+L+PEVpAES5U9OztiC5eU8uzs3BJJqhnKVEoG2OQ8ty
	h/R/GVkj/V/5YGbU3ngg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soS1R-0000000AduF-4Bpu;
	Wed, 11 Sep 2024 18:24:58 +0000
Received: from mail.fris.de ([2a01:4f8:c2c:390b::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soS0n-0000000AdmG-0UHj
	for linux-phy@lists.infradead.org;
	Wed, 11 Sep 2024 18:24:19 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 608D8BFB13;
	Wed, 11 Sep 2024 20:24:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=dkim;
	t=1726079047; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=bd5kfu1lfYDdnGDwmz0B1LTYsoKWQmAbDw3iHaIKZAc=;
	b=dUm2ZynB4YIQRe0wOsBcUyNLb2QXBygt9N78hy1j09mBf8jDVH8PHq2losnvTYKEJi6LMD
	v2gu/BI1fNfRiHfvWnZ34XXqqP2OFUyRshdijqnXgnWywF0dJaLIB6bOPBoNDieorlAgG2
	WEZUi2NjlPwb1nCOLgrZBzH4VYp8L8U60r4WQxBCvmqyI30J60/LBumVDd983egRzAiCea
	U7NO7tT3zShjl+171kgJRKfdjkqn/94HDF1ShKUGDtTAghkdAdJnpopI2oxW+Gzh7WfAct
	AOtlhc2yRLVcweO0NdyyIX+8fQG+Ln29VNv30B2OYFNByJ8l1JS5uDLGUtonqg==
Message-ID: <074fc86c-6e6e-4dbc-857a-21e9abf965ac@fris.de>
Date: Wed, 11 Sep 2024 20:24:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] Extending PLL LUT for i.MX8MP Samsung HDMI PHY
To: Dominique Martinet <dominique.martinet@atmark-techno.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Adam Ford <aford173@gmail.com>, Lucas Stach <l.stach@pengutronix.de>,
 Marco Felsch <m.felsch@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
References: <20240910181544.214797-1-frieder@fris.de>
 <ZuDjAwPxHeJTvXAp@atmark-techno.com>
Content-Language: en-GB, de-DE
From: Frieder Schrempf <frieder@fris.de>
In-Reply-To: <ZuDjAwPxHeJTvXAp@atmark-techno.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_112417_698379_6B2CE26A 
X-CRM114-Status: GOOD (  27.57  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 11.09.24 02:23, Dominique Martinet wrote:
> Frieder Schrempf wrote on Tue, Sep 10, 2024 at 08:14:51PM +0200:
>> [2] https://codeberg.org/fschrempf/samsung-hdmi-phy-pll-calculator/src/branch/main/pll.py
> 
> Great work! Thanks!
> 
> I was curious about the existing table entries, recomputing existing
> values doesn't yield the same values. For example, the first entry is
> {
>          .pixclk = 22250000,
>          .pll_div_regs = { 0xd1, 0x4b, 0xf1, 0x89, 0x88, 0x80, 0x40 },
> }
> but computing it yields
> {
>      .pixclk = 22250000,
>      .pll_div_regs = { 0xd1, 0x4a, 0xf0, 0xef, 0x10, 0x81, 0x40 },
> }
> 
> I assume there just are multiple ways to generate the same frequencies,
> which is fine in itself, but it'd be great to be able to "back-compute"
> the entries as a sanity check.
> 
> I've played a bit with your script and spent more time on it than I'd
> like to admit, but something like this seems to do the trick, plugging
> in the regs from the kernel:

Thanks for the feedback and the additional code. Yes, the script yields 
different results for the existing table entries.

For the reverse operation I used the spreadsheet (pll.ods, also in the 
repo). Actually I wrote that before the Python code and used it for 
verification.

> 
> ---
> pll = FractionalNPLL(freq_ref)
> 
> regs = [0xd1, 0x4b, 0xf1, 0x89, 0x88, 0x80, 0x40]
> # assume fractional
> if not regs[0] & 0xD0:
>      print("reg[0] missing 0xD0")
>      sys.exit(1)
> pll.freq_frac = True
> pll.params["p"] = regs[0] & 0x2f
> pll.params["m"] = regs[1]
> pll.params["s"] = (regs[2] >> 4) + 1
> pll.params["n2"] = ((regs[2] >> 3) & 0x1) + 1
> pll.params["n"] = (regs[2] & 0x7) + 4
> pll.params["lc"] = regs[3] & 0x7f
> if regs[4] & 0x80:
>      pll.params["lc"] = - pll.params["lc"]
> pll.params["k"] = regs[4] & 0x7f
> pll.params["lc_s"] = regs[5] & 0x7f
> pll.params["k_s"] = regs[6] & 0xbf
> 
> 
> f_vco = int(pll.params["m"] * pll.f_ref / pll.params["p"])
> if f_vco < 750000000 or f_vco > 3000000000:
>      print(f"f_vco {f_vco} out of range")
>      sys.exit(1)
> f_calc = f_vco / pll.params["s"] / 5
> pll.freq_int = round(f_calc)
> print(f_calc)
> sdc = pll.calc_sdc(pll.params)
> frac = pll.calc_f_frac(sdc, pll.params)
> print(frac)
> freq = pll.freq_int + frac
> print(freq)
> pll.print_reg_driver_data(freq)
> exit(0);
> ---
> yields this back (comments added manually)
> ---
> 22500000.0 (integer part)
> -250000.0 (fractional part)
> 22250000.0 (summed)
> 
> PHY Driver Table Entry:
> {
>      .pixclk = 22250000.0,
>      .pll_div_regs = { 0xd1, 0x4b, 0xf1, 0x89, 0x88, 0x81, 0x40 },
> }
> ---
> 
> so if I find some time I'll whip some loop to check all other values...

If you look at the second sheet in the pll.ods file, you can see that I 
already started to create a table for verifying the existing values. I 
gave up at some point when I saw my calculations were giving reasonable 
results and continued with writing the script. But it's easy to extend 
the first columns with the values from the driver and copy the other 
columns to provide the calculations.

> 
> That aside, I see no problem with this, just one meta-comment about
> adding a link to the script in an external repo: I see some other
> drivers have python scripts in their trees e.g.
> drivers/comedi/drivers/ni_routing/tools/*py
> drivers/gpu/drm/ci/xfails/update-xfails.py
> drivers/gpu/drm/msm/registers/gen_header.py
> 
> would it make sense to commit the script here instead of linking to a
> repo that might be lost in the future?
> 
> I'm not quite sure what policy the linux repo has here, so leaving that
> as an open question.

I was thinking about this as well and I really have no idea what is 
preferred by the maintainers. So I will just wait for some feedback here.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
