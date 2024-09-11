Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF1F3EE01F6
	for <linux-phy@archiver.kernel.org>; Wed, 11 Sep 2024 00:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gkWvRSjtl+3tdq6c411u7lITK+ntvDz0K43HqsMVhzQ=; b=dy7+5+4CWQ5siM
	ffM6pZv79h2x9bqLcguFVrw3fjhOdXMZOaeCmLGFIkzzIigpWx4fEwPtTVLBE9FPrlcYD/Ac5iYah
	eVG9f0lzwLWI8F98LKww/dX2EYSlRqPzruLRVPk+In/W2boZjtPmWvWJFPb6M4W0kleSF7gtMeNij
	UcdyyjS76TlYO/abd7NHG3OUtHHPCCDVlhiBt0i/aI56kodGCg93ApERmizQSi3n7JLfZbusV4dxx
	/UYXTes6kJx36+NqenduGFerQIEa5EdjSKiMpllrq8Gauvb7z3DIY+lM1EqDjnYzEAyLKyJOcfCwA
	d466ysp0hDoo15Ky+iIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soB9D-00000007ZcS-2DcP;
	Wed, 11 Sep 2024 00:23:51 +0000
Received: from gw2.atmark-techno.com ([35.74.137.57])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soB9B-00000007Zc1-0g3M
	for linux-phy@lists.infradead.org;
	Wed, 11 Sep 2024 00:23:50 +0000
Authentication-Results: gw2.atmark-techno.com;
	dkim=pass (2048-bit key; unprotected) header.d=atmark-techno.com header.i=@atmark-techno.com header.a=rsa-sha256 header.s=google header.b=VLJEk70p;
	dkim-atps=neutral
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by gw2.atmark-techno.com (Postfix) with ESMTPS id 519AF6C1
	for <linux-phy@lists.infradead.org>; Wed, 11 Sep 2024 09:23:45 +0900 (JST)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-207510f3242so7438765ad.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Sep 2024 17:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atmark-techno.com; s=google; t=1726014224; x=1726619024; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xWAl5lGM4zIiLjsv0PKGGyk+U6ZWLatC9GMlGoP1sOY=;
        b=VLJEk70pKnK9UE7x0JDVsX9/486k67b+Vpou+Fv3ncWJuSb/noEpoO0PmXuDzgH4TB
         BWhkdUzWpBgVHSEo2JNIoZbYvrcPrP1WVVbowxA+FdL+hes6kKYCOJqjLhtG4TK2KpuO
         izGvToFf/EZoNNvfARmDzA38jdxo1TthjRVFNe3tNxkRTQ7v3uD24SPIOmHjxyBa6fWp
         UTkG3nUW152Q0iNPGcasKvKeTYlKrvJ3fYkAfE2MzdjTLjqW4AWgqslDaQQwfmiIoShV
         c6tz9yvnYb6OXWcng5e7f0YcFCC5EE63M93tdJ237kARfgkAH113w+pLhxKzbSC0PnPq
         tPvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726014224; x=1726619024;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xWAl5lGM4zIiLjsv0PKGGyk+U6ZWLatC9GMlGoP1sOY=;
        b=tUsu2Ry/rU8xSd44HgN3CLh4pLaKcDRVodyVswyaha2tbGrZvzrM65UOe3JS00MnNI
         M5rXAGdg84zNBh/SvmwffaiBeFUNJv4GYytPkw4h2DihwyygZqby6IfXZuWd3D1nGc8D
         7yHJWqeqx9p0RewkFhLAVgoulYcblVIeegb956a+a2+XhhvadZMQEa+ADOtrtalgbpOg
         aVYi4SXHe1tk8cpZIGTNsRgjm1rdX6erv/YqnAJTg33mjGkR0oxdv+gn5u55BF1RwtyQ
         5k0FqGfBi1P0WyZXSI9faqCatJhdu2donwds18I2HQzYmEyT2pjhhN5qu2P91+YZi7DQ
         FaLA==
X-Forwarded-Encrypted: i=1; AJvYcCUFaJYHszXzcgE5SIvFcmC84NJWcYgFoH5mWcg+P15FWsMcIOe92OX8i42n86CgZ8tkGmAw4yfxyLA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyWWy4WMlS0kRepRnOVzqdBKJVaxXnKJxDSQF0r3STLwqo916vY
	zQChLqCOuUkBf/VrAQLKNDp6jss9m3vM7msnEY6wH8FaEWHweA2fsSuG+WbnoTw8J1F2JgxUhO9
	ewbOoNHX0nmLv7Ox7Z01RmstyACeTSWFnIiRzTuDU5e5Czptax19ZbPxEt2DpXjm6
X-Received: by 2002:a17:903:41c3:b0:205:68a4:b2d9 with SMTP id d9443c01a7336-2074c70ec52mr32126165ad.48.1726014224073;
        Tue, 10 Sep 2024 17:23:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH6qhOJonASH42vWnoWDp8Di47y4f4/0X2Q+DYlOavyzi2Fm4h1OKvu1K9Sn/u2x1rhAnod7g==
X-Received: by 2002:a17:903:41c3:b0:205:68a4:b2d9 with SMTP id d9443c01a7336-2074c70ec52mr32125895ad.48.1726014223636;
        Tue, 10 Sep 2024 17:23:43 -0700 (PDT)
Received: from localhost (178.101.200.35.bc.googleusercontent.com. [35.200.101.178])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2071a6109cfsm48806255ad.175.2024.09.10.17.23.42
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Sep 2024 17:23:43 -0700 (PDT)
Date: Wed, 11 Sep 2024 09:23:31 +0900
From: Dominique Martinet <dominique.martinet@atmark-techno.com>
To: Frieder Schrempf <frieder@fris.de>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Vinod Koul <vkoul@kernel.org>, Adam Ford <aford173@gmail.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH 0/2] Extending PLL LUT for i.MX8MP Samsung HDMI PHY
Message-ID: <ZuDjAwPxHeJTvXAp@atmark-techno.com>
References: <20240910181544.214797-1-frieder@fris.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240910181544.214797-1-frieder@fris.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_172349_334820_D10DACE1 
X-CRM114-Status: GOOD (  16.72  )
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

Frieder Schrempf wrote on Tue, Sep 10, 2024 at 08:14:51PM +0200:
> [2] https://codeberg.org/fschrempf/samsung-hdmi-phy-pll-calculator/src/branch/main/pll.py

Great work! Thanks!

I was curious about the existing table entries, recomputing existing
values doesn't yield the same values. For example, the first entry is
{
        .pixclk = 22250000,
        .pll_div_regs = { 0xd1, 0x4b, 0xf1, 0x89, 0x88, 0x80, 0x40 },
}
but computing it yields
{
    .pixclk = 22250000,
    .pll_div_regs = { 0xd1, 0x4a, 0xf0, 0xef, 0x10, 0x81, 0x40 },
}

I assume there just are multiple ways to generate the same frequencies,
which is fine in itself, but it'd be great to be able to "back-compute"
the entries as a sanity check.

I've played a bit with your script and spent more time on it than I'd
like to admit, but something like this seems to do the trick, plugging
in the regs from the kernel:

---
pll = FractionalNPLL(freq_ref)

regs = [0xd1, 0x4b, 0xf1, 0x89, 0x88, 0x80, 0x40]
# assume fractional
if not regs[0] & 0xD0:
    print("reg[0] missing 0xD0")
    sys.exit(1)
pll.freq_frac = True
pll.params["p"] = regs[0] & 0x2f
pll.params["m"] = regs[1]
pll.params["s"] = (regs[2] >> 4) + 1
pll.params["n2"] = ((regs[2] >> 3) & 0x1) + 1
pll.params["n"] = (regs[2] & 0x7) + 4
pll.params["lc"] = regs[3] & 0x7f
if regs[4] & 0x80:
    pll.params["lc"] = - pll.params["lc"]
pll.params["k"] = regs[4] & 0x7f
pll.params["lc_s"] = regs[5] & 0x7f
pll.params["k_s"] = regs[6] & 0xbf


f_vco = int(pll.params["m"] * pll.f_ref / pll.params["p"])
if f_vco < 750000000 or f_vco > 3000000000:
    print(f"f_vco {f_vco} out of range")
    sys.exit(1)
f_calc = f_vco / pll.params["s"] / 5
pll.freq_int = round(f_calc)
print(f_calc)
sdc = pll.calc_sdc(pll.params)
frac = pll.calc_f_frac(sdc, pll.params)
print(frac)
freq = pll.freq_int + frac
print(freq)
pll.print_reg_driver_data(freq)
exit(0);
---
yields this back (comments added manually)
---
22500000.0 (integer part)
-250000.0 (fractional part)
22250000.0 (summed)

PHY Driver Table Entry:
{
    .pixclk = 22250000.0,
    .pll_div_regs = { 0xd1, 0x4b, 0xf1, 0x89, 0x88, 0x81, 0x40 },
}
---

so if I find some time I'll whip some loop to check all other values...




That aside, I see no problem with this, just one meta-comment about
adding a link to the script in an external repo: I see some other
drivers have python scripts in their trees e.g.
drivers/comedi/drivers/ni_routing/tools/*py
drivers/gpu/drm/ci/xfails/update-xfails.py
drivers/gpu/drm/msm/registers/gen_header.py

would it make sense to commit the script here instead of linking to a
repo that might be lost in the future?

I'm not quite sure what policy the linux repo has here, so leaving that
as an open question.
-- 
Dominique

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
