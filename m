Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5C78C79F99
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 13:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qMlnsLcUKQ7gM8Km4c3bidTk5yJQp579w2Gp7b4Ww9Y=; b=r9jwkBw5cRGuFt
	GeNFuL88H+s+wE5s/G6Y3w367O0he4AIRF/GfF+0sJgg5/an/wfHIbViRe0XQDC35fNDmpnMjGIZQ
	QXemEqh9f702uHuGvSTeP9XGbbRtxNuQbeOaAaaHmuMYMmhxFxWYFFrQpAott0ZjgO8PUBDRTJLtv
	4+IfDEGH9qUHEYeyaNVCG+8iYeqrdUzpnzkUwovoa9COb45jvcRo4+K1TbfeY4EU0YqedjhFvDhTL
	KaRoOLUx9iDRDZQUDOtjHYP1neRIfic9gYVoJQxx39kJX9RfgW2sNq/BZRjqcGv3qRO19qMr7oQnl
	zm507hbmQA/wwexOiq1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3vjF-000000098Lz-04Dd;
	Tue, 08 Sep 2026 13:19:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3vjB-000000098LX-2C1g
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 13:19:10 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 688CkeqW3033380
	for <linux-phy@lists.infradead.org>; Tue, 8 Sep 2026 13:19:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7+HRkriuVzWqqqsg8EA57IGDloRqI/G0+65px0QRHcc=; b=kYj0hJomTc8vS9pd
	acc79svyiqXIqmKuKOKq7HqPOsiLMxuEGgRC+qr/OJvzAik0ajJGDVZdNXQ+W91G
	wlk3EmOsxqCG+vRvsrjMxvDrMEqULUo3r9/TVGVhu/HtAPalh9e9OJQCZWIqpgJG
	4h//LoPWuLO1ASAgcvqNuqGltixZIF3uxHQoxqkganVxixLI3zRjNAek8ljOXRmp
	awqgiOqwWBXqTA9Diz7hvHiFU8rHBasLhmkKQ5r80IkTTrRuTWSjj7mO91T2F+UY
	lrYH9RcDUuquAh8AIXD191FgI0WCJf7SYpfYHH9ULa0c3NNonFysNduJAY7o+lIg
	ZHD1HA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gjhkj0cmc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 08 Sep 2026 13:19:08 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93918756165so769088485a.0
        for <linux-phy@lists.infradead.org>; Tue, 08 Sep 2026 06:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788873548; x=1789478348; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=7+HRkriuVzWqqqsg8EA57IGDloRqI/G0+65px0QRHcc=;
        b=i0ixH+h4uj6IYAkMf6tv920dfOLqAFS1wIbIxKfVKuhlY1LW5kZ/wWJQhvAHXwLmJV
         rB+ccXuB8xaPIDJbbaZSPZ3EjrgHS9rz/O8Zbua1l8+PnAtgXDMI/Ru/u7mjUTKDW9yR
         0rwAQXhWX86zqKFvZg018rarKscDJR3NRNKMO66CNDmvsA4k6wJYxyYt6Y8dhd7HAiOD
         Hwuc7TLGV6hJAeiBjebUaV0w128S/gPJDBfhIn38X9B8yDC6IWNd8AaTxwKmF+NW8WoX
         6WtdmBQrkvyz0Xym+Zrg2e3ccj/qlPnQ913VuWGCVEfoaa/7XeAdBBLDrV23zuqv9SiT
         SO0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788873548; x=1789478348;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7+HRkriuVzWqqqsg8EA57IGDloRqI/G0+65px0QRHcc=;
        b=CSbRlBrUIqKKwVII47gmsV46p5UbLycCfUUg/qtRSbugNJtoR588zAi76KtkzPm7JH
         LrG7s8V71wqRY+hnLcdErStkqCTCw7dE0VoAtB0hND/r3sX4FXnhPI02ywC35/KA9tmW
         p8+Wble36GKvpw4+L011a442VZK0LM2/XrUsFRUJxtDjKEqy1U9nRAB5ndIJb5KkTesy
         M8lgSBs4He436zHgUUMATpBWhRZxQCvuKDcjg7yuzuXYWOPuEOiXRZH/N8I0Gfv1W5E4
         qxbac5fSfHHeDh6l8npVKpjqkFKqHC1K+BZqEbfJibTkvYjCkyShrf0kuT9DIJq4sF1g
         o/Sw==
X-Forwarded-Encrypted: i=1; AKwUvBy1RJna/4/So1vNN50Klkwuvg/sQfRV0uaNBs4+0uEsxUYHjlSrrnESxyeuWb9rTsygO/x4yreNjVo=@lists.infradead.org
X-Gm-Message-State: AFuF++l9PqN8IzMpo1mEGFP0ELsI5gAbVGWoP9hpGoDUc5omIaOIvEGE
	rCfycNVHtiV4w6HQD3yOaKVQez9PlPew8jJwFT0I7tW0xTpZLb4mMym1iIcQmdjLZlZ0IoCAt2n
	bDGc+bu11jsrlZHxN2Ke8HBv59MwOWh3IlQ+ewW+2GsbAYbg+vgjT7MU/Yn5CFjVeVsjN2QzeOb
	fR
X-Gm-Gg: AYBFou2Mw85D9GDUkmLuedm/owl83TPjnQsHNOuflbrSg85CzdAitFMfOsGi03dm60G
	XghlO3pfOfz8Ipd3HpdW1s8gVTkYlRgF0PAJ1mWqvS+wSB5oi1F40TZyl2VwW6Y9vy8eBbLOvMe
	vVl8X+CdZqTMQ10U6SoLb5sX8AQnDhM8AhPTmO2JDbAkZZ5OZR6tsVme2sZmFDT3wzknFEJRNnY
	JTde6oCb+pKQ672MF9Vpp/d+KrvuPOUyZ/BanSrv4TcPDyrRUbzjNbaW/w16nS2r01vfqMWUMkG
	C2w3PMx8cfWK3H0Gz5G3r2bzuTeYQX5X1hodm3W7hQVTrtOneQqM/vULXkRPWGZG2W2WmW2SGD2
	h3+YMbwhGO0Gy1js8L9s6FuKpjt2f
X-Received: by 2002:a05:620a:17a4:b0:939:6de6:9517 with SMTP id af79cd13be357-9398049f91emr3268240585a.46.1788873547549;
        Tue, 08 Sep 2026 06:19:07 -0700 (PDT)
X-Received: by 2002:a05:620a:17a4:b0:939:6de6:9517 with SMTP id af79cd13be357-9398049f91emr3268232985a.46.1788873546917;
        Tue, 08 Sep 2026 06:19:06 -0700 (PDT)
Received: from [192.168.1.110] ([178.197.219.214])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49ce554d52esm335727855e9.3.2026.09.08.06.19.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Sep 2026 06:19:05 -0700 (PDT)
Message-ID: <771390d1-b7c9-4c13-8849-c71a922825f8@oss.qualcomm.com>
Date: Tue, 8 Sep 2026 15:19:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC/DO NOT MERGE 10/12] drm/msm/hdmi_phy_eliza: Add
 support for Synopsys-based HDMI phy on Eliza
To: sashiko-reviews@lists.linux.dev
Cc: dri-devel@lists.freedesktop.org, neil.armstrong@linaro.org,
        robh@kernel.org, devicetree@vger.kernel.org,
        linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org,
        conor+dt@kernel.org
References: <20260828-drm-msm-hdmi-eliza-v1-0-67843277de17@oss.qualcomm.com>
 <20260828-drm-msm-hdmi-eliza-v1-10-67843277de17@oss.qualcomm.com>
 <20260828141923.8E5F81F00A3A@smtp.kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20260828141923.8E5F81F00A3A@smtp.kernel.org>
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA4MDE0MiBTYWx0ZWRfXz1p2yUCmve9d
 IxSSqPeFPfh6YuWOCAnKnn2r9jxyqLecDvTSPCAZYKlfloBVXep53IvMJfibw+N+d1k92aqlLGQ
 li9UBID8MYKHzC2Jhs8bSYED9YG+jvs=
X-Proofpoint-GUID: Yz87GRX3N2HXCsB8TLPBbPmlPnyyEPai
X-Authority-Analysis: v=2.4 cv=VYjH+lp9 c=1 sm=1 tr=0 ts=6aa00b4c cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=+bKQE0WJfmhK2875HamI0Q==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=rwc4GHvP-eKwHY9TLAEA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: Yz87GRX3N2HXCsB8TLPBbPmlPnyyEPai
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA4MDE0MiBTYWx0ZWRfX8mtdp5JQeGCG
 pCxmcA2iwf9WckwqNSxZGoK+WgSSquw3B0klY5VYJX8f97szhpSKVAS9q5QIoPvO1zcdJJMF766
 lC3qDJ2jYyWRzMgQ1GbGjkgzyRMI4tRHIRWmk0663iWEilYTxIMaTnCgtIPODAjJLQIMNmZQWv+
 6x78lduSxfqMAjGfHdjAZTFZhEPd7qqU/PVMOfjIWIAZmTeEyFir4kjCE+Q9IoSMvgZlCAMD05O
 MYiUUP01S2DJEGhgVLAeJbK9ddWmPCbrmY5gje9lHaXuUEagsQGWHMu10DCHuoQ4g8nz4ihohgu
 gzq0KvrGB1l3x5tDHhFc5hgrWQJywFaouEzjmLeToypPVXw2v0UAmyxf+tcXFOo5AQWbyW8yho+
 AIL3xfgNmSRV8LSRgnbu0oKhJ472gGeigGOXYxwdHs1CssHRvzOmNA1QzUBTzxtoZFve5x7UukO
 HR2ceFNJjvD/we+6yMA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-08_02,2026-09-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0
 priorityscore=1501 suspectscore=0 spamscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609080142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_061909_572123_9F3A5AC7 
X-CRM114-Status: GOOD (  38.24  )
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

On 28/08/2026 16:19, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 10 potential issue(s) to consider:
> - [High] Silent truncation of 64-bit integers passed to `gcd()` on 32-bit architectures leads to incorrect clock calculations.
> - [High] 32-bit integer overflow during PHY bit rate calculation causes incorrect hardware configuration for high-bandwidth displays.
> - [High] Deterministic division by zero during CCF clock registration due to uninitialized configuration.
> - [High] Severe CPU soft lockup risk due to excessive 3-second busy-wait loop using `readl_poll_timeout_atomic`.
> - [High] Premature integer division causes precision loss yielding incorrect hardware PLL parameters.
> - [Medium] Data race on PLL configuration state by bypassing Common Clock Framework (CCF) synchronization.
> - [Low] 64-bit division using '/' and standard division macros causes build failure on 32-bit platforms.
> - [Low] Unsupported floating-point literals used in integer calculations.
> - [Low] Use of `mdelay(8)` wastes CPU resources in a sleepable context.
> - [Low] Fragile design conflates the presence of PHY regulators with the name format of device tree memory resources.
> --
> 
> commit 9c53defce3c459b1740fbff4f2434baad5c70aee
> Author: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Subject: drm/msm/hdmi_phy_eliza: Add support for Synopsys-based HDMI phy on Eliza
> 
> Add driver for HDMI phy block from Synopsys used on Eliza SoC. Adjust core
> parts for handling HDMI phy initialization sequence.
> 
>> diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_phy.c b/drivers/gpu/drm/msm/hdmi/hdmi_phy.c
>> --- a/drivers/gpu/drm/msm/hdmi/hdmi_phy.c
>> +++ b/drivers/gpu/drm/msm/hdmi/hdmi_phy.c
>> @@ -168,13 +171,17 @@ static int msm_hdmi_phy_probe(struct platform_device *pdev)
>>  	if (!phy->cfg)
>>  		return -ENODEV;
>>  
>> -	phy->mmio = msm_ioremap(pdev, "hdmi_phy");
>> +	if (phy->cfg->num_regs)
>> +		phy->mmio = msm_ioremap(pdev, "hdmi_phy");
>> +	else
>> +		phy->mmio = msm_ioremap(pdev, NULL);
> 
> [Severity: Low]
> Does this use a fragile heuristic? This logic overloads the presence of
> power regulators (num_regs) to guess the format of device tree memory
> resources. These two hardware properties are orthogonal, which could break
> if future device tree bindings diverge.

Ack

> 
>> diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_phy_eliza.c b/drivers/gpu/drm/msm/hdmi/hdmi_phy_eliza.c
>> --- /dev/null
>> +++ b/drivers/gpu/drm/msm/hdmi/hdmi_phy_eliza.c
> [ ... ]
>> +static int hdmi_eliza_pll_calculator(struct hdmi_pll_eliza *pll,
>> +				     unsigned long rate,
>> +				     unsigned long parent_rate,
>> +				     struct hdmi_eliza_phy_pll_reg_cfg *cfg)
>> +{
> [ ... ]
>> +	s64 precision3 = 1e3;
>> +	s64 precision6 = 1e6;
> 
> [Severity: Low]
> Are these floating-point literals supported? Scientific notation defaults
> to double literals, which relies on compiler implicit conversion to integers.
> The kernel strictly prohibits floating-point types.

Yeah, that's not really a kernel style but downstream pattern which I
did not clean up.


> 
> [ ... ]
>> +	/* expon = floor(log2(4.999999e9/base_rate)) */
>> +	utemp = 4.999999e9;
> 
> [Severity: Low]
> Are these floating-point literals supported? This is another instance where
> scientific notation will evaluate as a double literal.
> 
>> +
>> +	expon = fls64(utemp / base_rate) - 1;
> 
> [Severity: Low]
> Can this cause a build failure on 32-bit platforms? The direct 64-bit
> division operator triggers a dependency on __udivdi3, which is unresolved
> on 32-bit architectures. do_div or div64_u64 should be used instead.
> 
> [ ... ]
>> +	/* multiplier = 2*(floor(bit_rate) * 2**expon / ref_clk_int) -16) */
>> +	multiplier = DIV_ROUND_UP(vco_freq, ref_clk_int);
> 
> [Severity: Low]
> Could this also trigger a 32-bit build failure? DIV_ROUND_UP performs a
> native division, and since vco_freq is a 64-bit value, this requires a 64-bit
> division routine that is unavailable on 32-bit builds.

I got build warnings on this and remaining 32-bit, so I'll be fixing these.

> 
> [ ... ]
>> +	if (aux2 == 0) {
>> +		cfg->remainder = 0;
>> +		cfg->denominator = 1;
>> +	} else {
>> +		cfg->remainder = DIV_ROUND_UP(aux2, gcd(aux1, aux2));
>> +		cfg->denominator = DIV_ROUND_UP(aux1, gcd(aux1, aux2));
> 
> [Severity: High]
> Does this truncate 64-bit values on 32-bit architectures? The gcd function
> takes unsigned long parameters, which are 32-bit on 32-bit kernels. Since
> aux1 and aux2 can hold values requiring up to 36 bits, they will be silently
> truncated when passed into gcd, feeding incorrect fractions into the PLL
> configuration.
> 
> [ ... ]
>> +	/* stemp = (REF_CLK_MHZ/2**ref_ana_mpll_div) */
>> +	stemp = (REF_CLK_HZ / 1000000) * precision3;
> 
> [Severity: High]
> Does this premature division cause a loss of precision? REF_CLK_HZ is
> divided by 1,000,000 first, which drops the remainder before scaling. With
> REF_CLK_HZ at 38,400,000, the result truncates to 38 instead of preserving
> the 0.4 MHz. The error is then squared later, propagating significant drift
> into the PLL analog parameters.
> 
> [ ... ]
>> +	cfg->cp_int_holder = DIV_ROUND_CLOSEST(stemp3, precision6);
> 
> [Severity: Low]
> Can this result in a build failure on 32-bit architectures? 
> DIV_ROUND_CLOSEST triggers native division on s64 variables, which will fail
> to link without __divdi3.
> 
> [ ... ]
>> +static int hdmi_eliza_pll_prepare(struct clk_hw *hw)
>> +{
> [ ... ]
>> +	/*
>> +	 * This Synopsys PLL does not have a PLL lock-like register, thus there
>> +	 * is no way to tell when the PLL actually locked.
>> +	 * Returning now, would lead to stuck pclk or iface RCG clocks at off
>> +	 * (disp_cc_mdss_hdmi_pclk_clk status stuck at 'off'),
>> +	 * thus obviously the professional solution is to delay.
>> +	 * 8 ms was figured out during tests, not based on any datasheet.
>> +	 */
>> +	mdelay(8);
>> +
>> +	return 0;
>> +}
> 
> [Severity: Low]
> Is mdelay strictly necessary here? Busy-waiting the CPU for 8 milliseconds
> wastes resources in a context where sleeping is fully permitted. The prepare
> callback can safely yield the CPU using msleep or usleep_range.

msleep should be fine

> 
> [ ... ]
>> +static u64 hdmi_eliza_pll_vco_freq(u64 ref_clk_hz, u32 multiplier, u32 frac_quot,
>> +				   u32 frac_rem, u32 frac_den)
>> +{
>> +	u64 num;
>> +	u64 den;
>> +
>> +	num = 32ULL * 65536ULL * frac_den +
>> +		(u64)multiplier * 65536ULL * frac_den +
>> +		2ULL * ((u64)frac_quot * frac_den + frac_rem);
>> +
>> +	den = 2ULL * 65536ULL * frac_den;
>> +
>> +	return mul_u64_u64_div_u64(ref_clk_hz, num, den);
>> +}
>> +
>> +static unsigned long hdmi_eliza_pll_recalc_rate(struct clk_hw *hw,
>> +					       unsigned long parent_rate)
>> +{
>> +	struct hdmi_pll_eliza *pll = hw_clk_to_pll(hw);
>> +	u64 rate;
>> +
>> +	rate = hdmi_eliza_pll_vco_freq(REF_CLK_HZ, pll->cfg.multiplier,
>> +				       pll->cfg.quotient, pll->cfg.remainder,
>> +				       pll->cfg.denominator);
> [ ... ]
>> +int msm_hdmi_pll_eliza_init(struct platform_device *pdev)
>> +{
> [ ... ]
>> +	pll = devm_kzalloc(dev, sizeof(*pll), GFP_KERNEL);
> [ ... ]
>> +	ret = devm_clk_hw_register(dev, &pll->clk_hw);
> 
> [Severity: High]
> Can this lead to a division by zero during probe? 

Ack

> 
> When devm_clk_hw_register is called, the Common Clock Framework immediately
> invokes recalc_rate. Because the pll structure is zero-allocated,
> pll->cfg.denominator is zero. This zero is passed into
> hdmi_eliza_pll_vco_freq, which results in den evaluating to 0 and
> triggering a kernel panic in mul_u64_u64_div_u64.
> 
> [ ... ]
>> +static void hdmi_eliza_phy_tx_lane_config(struct hdmi_phy *phy,
>> +					  unsigned long pixclock)
>> +{
>> +	const unsigned int bpp = 24;
> [ ... ]
>> +	if (pixclock * bpp >= HDMI_PHY_MAX_BIT_RATE)
>> +		hdmi_phy_update_bits(phy, REG_HDMI_ELIZA_PHY_TX_COMMON_CONTROL_0, BIT(2), 0);
>> +	else
> 
> [Severity: High]
> Will this calculation overflow 32-bit bounds before the comparison? 
> 
> The pixclock parameter is typed as unsigned long, which is 32-bit on 32-bit
> kernels. For high bandwidth displays, multiplying a high pixclock by 24 will
> exceed the 32-bit integer maximum of 4.29 billion. This overflow will result
> in a smaller wrapped value, breaking the conditional check and incorrectly
> programming the PHY for high-resolution displays.
> 
> [ ... ]
>> +static int hdmi_eliza_phy_ready_poll(struct hdmi_phy *phy, u32 reg, u32 mask, u32 val)
>> +{
>> +	u32 state;
>> +	const u32 sleep_us = 2000;
>> +	const u32 timeout_us = 3000000;
>> +
>> +	if (readl_poll_timeout_atomic((phy->mmio + reg), state,
>> +				      ((state & mask) == val),
>> +				      sleep_us, timeout_us)) {
> 
> [Severity: High]
> Does this present a severe CPU soft lockup risk? 
> 

Ack, sleeping should be allowed, so readl_poll_timeout


> The readl_poll_timeout_atomic macro disables preemption and spins using a
> udelay. Looping a 2000 microsecond delay for up to 3,000,000 microseconds
> (3 seconds) violates scheduling rules and is very likely to trigger watchdog
> lockups if the hardware fails to respond.
> 
> [ ... ]
>> +static void hdmi_eliza_phy_init(struct hdmi_phy *phy,
>> +				   unsigned long pixclock)
>> +{
> [ ... ]
>> +	hdmi_eliza_pll_configure_pll(phy->pll, 396000000, 19200000);
> 
> [Severity: Medium]
> Does this bypass the Common Clock Framework synchronization? 
> 
> Directly invoking hdmi_eliza_pll_configure_pll here forcefully mutates the
> shared pll->cfg state locklessly. CCF invariants generally mandate that 
> clock state modifications are protected by prepare_lock. Concurrently
> reading the clock state from sysfs or debugfs could hit a data race.

Ack, but then programming guide will be violated.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
