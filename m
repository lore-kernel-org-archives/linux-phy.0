Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D5BBCD4F49
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 14:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fTGsfuYrUIObHc01OfOeq/aM7gVbeKT4HhhwuAkhRZg=; b=Xn5PoYijjK1efN
	rZeeYdjEOj3gsxcezNIFLXbmxQTEqPaad5wpkU1AWgEpdHBtG82oPy2LLhfxozqO38Y9vrR/NekS9
	vOTv9ddgJH6z4iDjtvdlrCltB3fOfonUNPj2wsh98TzkG68T+dFC/qD+J9miTjj9/fv5cFLm65488
	GYFx/ETVTqq6nZh3k5PFwdHstf4jNHBKeZRl2wzC1SK83MAzSCoATO9CX6nyrAlevaISrHMe/kUT7
	vypBGSGKTEPDakkkzxnknb57K0Y5thFAZkWIUVaRwxh6ywWMKuiBWg8uZetuemzX+3jJT7gc/TGq/
	HIgSbYlLtqYUdztjUsCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOykg-0000000FwlB-2NR7;
	Mon, 18 May 2026 14:15:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOyke-0000000Fwkb-0v0p
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 14:15:25 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64IDOKwL2188790
	for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 14:15:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tl5cNuX7Q/EbJEBDKEJHU8Nft3cHRScimLTBtlsFjco=; b=IJ9b7bFAeMpd+FjF
	HnelMReAhJzkanlPDuAR+teQUGers9J7Zm+ABfthhX07bh1Vc9NxWJ6LodphBJlC
	kalNdJjr4FWUtP8gxZVN7XZdimWtPEQFDFylsCWPljAECp+cK504vDcpbzHSwg27
	ciL1j398fRSEi/OjY1q0cHY1LOryCmqztZLsYSjMUWunnWr+CJOG0gmGE1zq2UQN
	YIXnXeR+yjSWx/Hqn9DuyAeX8yj+Zlw6cxXS5E9HYLv1iJdZW7qhYpP4mcl1GfzC
	CmI2BrqrSnry+0cUDS+09kki8WVyQFg/tqW8mg6wm76oTtbYsQ+RF5fAvloNPAGq
	FlO5dQ==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e7xkuhkp7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 14:15:22 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-63126f42441so104254137.3
        for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 07:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779113722; x=1779718522; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tl5cNuX7Q/EbJEBDKEJHU8Nft3cHRScimLTBtlsFjco=;
        b=j5OKvNcJfT84KoimJZYsEPjsTp35QAkb1S7qDdfk2W7OxQniHKkEU3dOU2qjOyHZmf
         ax89I4iuNSDcQyKEPbsqvgawChfu2629htXZ02NjPmcDCueAd6jOXnOs4GsbgSTc2Wdo
         6YLYcyCCWhlrXEzdkGFZp0/FFg1vg1MEkxigk/OIPz5Ibbo8Vk/10GFPQ6XZBfAhrvDV
         zXNNNF7WXlwDEfIM9HG+dF2dX3XPhLjG0lXuxyW0e+KTT882fV6PP60kQL07nmSkqJmF
         8Z8dZkyIpOLyjjrsQrSuEANlcEwdytikfdmB1eBK5dvBdi+ti5dXSsSpyRGYaDIHOqaM
         rOhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779113722; x=1779718522;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tl5cNuX7Q/EbJEBDKEJHU8Nft3cHRScimLTBtlsFjco=;
        b=QteeUUpfp5QB0Vr1rRSGxZD3auZTAIofCUb0rJDUZTbEGJc0qWgiHOei2yuPF7Yu8U
         XXsZWyIAFHr2MBpWYrFWJoBOItDI4aesyx0jF3AfJG41SFL2TviSaE5oWrPVKA7VZrI9
         8ld+j02F5V/LXRTOTtw/9F5tMMiSIzkzne0kWBVGgtlgIEiqbYiYLwN34GVx6soRWf8H
         msfiP8tpuVe5X6+UJMHHN8tINh/qxYajPl/hX96gtYqIL7dEQOl7jzNdG3HrjN4LIJxV
         lPPMqzu3FhqP3bR++bhSqICnmZ2s9DvIXbWV4BmHRzpogrR+k+tm0gZTn4DssYpqDNFQ
         6+nQ==
X-Forwarded-Encrypted: i=1; AFNElJ9kFVHh2cbCHrVANLrHI2BEj+jRUG0ttsOhf+r+mGBghFDgM2qlmrE/u7PVeCJVCxEo//53QF21MAM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz6xPRy7tcKiNSDYg/8PudjKGmbzmJMPn9xKsYqUOcQBAPu3ksb
	6bgBTfFs6d8BBAlTlb3XiPZYbyDTyWiFuHt0Ej1ZBesagbCP+AWNhHRgEC6mOzrxRN82bMxLMRa
	Yf9h8yBj/pvaEgDu101m1W6hSn+sBKOxjZ2NWf9Hu3lzx+r7v8HUlN2LhfoW7bmQKt1y9
X-Gm-Gg: Acq92OF5rsPjLxoJekLrh5ekQg45twRVsFNF2zARl/o+8JGnJ/LNgIv98XAI0PRyVOR
	QA3D6IU7A+RyUrZ2Yf12jUlNFAafI+OxokrlHHkbE1+KlqvpqnnDbAehkfAwZOMH5H16xxTmA2i
	JzH5gIA2KAWU2YIkoTRbwOeXL90qBgtVMfOqyAaM11MRBspD4e7SG2/t4yc/6r5N9RKiTGkfw8H
	mqTIVBbEbN8gbyyCzQwqabJDFd0A+AstfvGmEH5NTNJLJt+zp8eK1lQagXtztnrzz2sQKChPYDE
	i+Ft1Q3X9hPDeK5k7HnGgL6v2UU44hJeXb9TbRfToMJSJXuSl5qqhiWFcE0v/psvmoyMO9lcdNo
	6IR25XU4ZAtHu74Dj3L2vhz2shjT8k3/oa5jpNlzsdc3zYsmzru788yM27mGoFNnij1awkSLSc1
	Tsdpw=
X-Received: by 2002:a05:6102:1242:b0:62f:46c:40bb with SMTP id ada2fe7eead31-63a402a0379mr2115115137.5.1779113721957;
        Mon, 18 May 2026 07:15:21 -0700 (PDT)
X-Received: by 2002:a05:6102:1242:b0:62f:46c:40bb with SMTP id ada2fe7eead31-63a402a0379mr2115097137.5.1779113721214;
        Mon, 18 May 2026 07:15:21 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bd7bbae7a93sm132624466b.22.2026.05.18.07.15.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2026 07:15:20 -0700 (PDT)
Message-ID: <9aad8e45-b0a5-4c59-8793-8c0747d8fafa@oss.qualcomm.com>
Date: Mon, 18 May 2026 16:15:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] phy: qualcomm: qmp-combo: Add preliminary USB4
 support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, usb4-upstream@oss.qualcomm.com,
        Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>,
        Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>
References: <20260518-topic-usb4phy-v1-0-71d827c49dca@oss.qualcomm.com>
 <20260518-topic-usb4phy-v1-3-71d827c49dca@oss.qualcomm.com>
 <4nqlpu7qfptekyn77sd7sdn446stgn3v3lw2356bvizrnvjgnr@czqgivemigt5>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <4nqlpu7qfptekyn77sd7sdn446stgn3v3lw2356bvizrnvjgnr@czqgivemigt5>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE4MDEzOSBTYWx0ZWRfXwJwolrG/41f0
 OcLuDLJAK6Hp6dcSZonbWEg6UyfFxHd36ItsZoF6ikBgPzIowDFFRrKQFI1MLYiwoqm3Hx3dOPb
 ruyvhByl4zs5Cr/Yq2n0V+fAlmjy434jO3tqU9tV3U3VNvanar36fqFaPapxk3ofWogpEFD5ZM+
 ivp/9XLjigYGO6H4IGUEJJaRELS+QNRGasgI4Op6lw9elG3qOtuZDRJ1RdqB+i1XhLHoURJ5UFg
 8BCxLynW9HUWHymZAfzMQjt7rt/s6mwKFTFRMasaF363fD8HN28IxJJVObn8qqazPpxUFXYgvvW
 XCPL/gzgoB9JH1dDTedSOdLAl+V5icJvKfbe9QCrvw3Of2cca8ofpEbpdBIqYGOn/yaOZoKr0lC
 FNnE5OjuDigwTWrpAg7/wPbUZKwZSsS5O48I1xxLSecPNl2eoX1SmOjy+0Sjc1db5LqS/gzYkY2
 dtBicyvr5u3hDi3aurA==
X-Proofpoint-GUID: KjKCOPkQxNGGG0ynBDVPNHyHbtrI91Pu
X-Proofpoint-ORIG-GUID: KjKCOPkQxNGGG0ynBDVPNHyHbtrI91Pu
X-Authority-Analysis: v=2.4 cv=FsY1OWrq c=1 sm=1 tr=0 ts=6a0b1efa cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=KUSMMZrqeANCeUtcB44A:9 a=QEXdDO2ut3YA:10
 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-18_03,2026-05-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 clxscore=1015 phishscore=0 priorityscore=1501
 malwarescore=0 impostorscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605180139
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_071524_385420_D31B8AA6 
X-CRM114-Status: GOOD (  20.98  )
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

On 5/18/26 3:57 PM, Dmitry Baryshkov wrote:
> On Mon, May 18, 2026 at 12:29:50PM +0200, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> Some Combo PHYs (so far only on SC8280XP, X1E80100 and Glymur), come in
>> a flavor called USB43DP, which as the name implies, features USB4, USB3
>> and DP signal processing capabilities. In that architecture, USB3 and
>> USB4 PHYs share the same USB_PLL while featuring separate logic spaces.
>> The DP part is roughly the same as on the instances without USB4.
>>
>> The USB4 and USB3/DP operation modes of the PHY are mutually exclusive.
>> Only one USB protocol (and flavor of pipe clock) can be active at a
>> given moment (not to be confused with USB3 not being able to be
>> tunneled as USB4 packets - that of course remains possible).
>> The DP PLL is still used for clocking tunneled DP links. It may be
>> turned off to save power when no tunnels are active, but that's left as
>> a TODO item for now.
>>
>> Due to the nature of USB4, the Type-C handling happens entirely inside
>> the Host Router, and as such the QMPPHY's mux_set() function is
>> nullified for the period when USB4 PHY remains active. This is strictly
>> necessary, as the Host Router driver is going to excercise manual
>> control over the USB4 PHY's power state, which is needed by the suspend
>> and resume flows. Failure to control that synchronously with other
>> parts of the code results in a SoC crash by unlocked access.
>>
>> Because of that, a new struct phy is spawned to expose the USB4 mode,
>> along with a .set_mode callback to allow toggling between USB4 and TBT3
>> submodes.
>>
>> Thunderbolt 3, having a number of differences vs USB4, requires a
>> couple specific overrides, pertaining to electrical characteristics,
>> which are easily accommodated for.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 392 ++++++++++++++++++++++++------
>>  1 file changed, 322 insertions(+), 70 deletions(-)
>>
> 
> Overall it looks good. The major question (after looking at TODOs), do
> we need a separate submode for USB+DP / TBT+DP?

The problem space is as follows:

After a TBT (collectively TBT3+ and USB4) link has been established and
we have a link partner, we may (based on the HW capabilities and user
config, such as kernel params but not only) start or stop a DP tunnel at
runtime. On Qualcomm hardware, the PHY is kept in USB4 mode and its DP
AUX lines are not used (instead, the encapsulated DP AUX packets are r/w
entirely within the USB4 subsystem via a pair of FIFOs that Linux sees
as a separate DP AUX host)

Then, on hamoa/glymur specifically, any of the 3 USB4-capable DP hosts
can be muxed to either of the 2 DPIN ports on any of the 3 USB4 routers
(and each of these routers is hardwired to one of the PHYs).

To underline, we have 3 DP producers and 6 consumers. If there's e.g. a
super high-res display at one of the physical ports, or a long
daisy-chain, we may need to use 2 DPTXes to service 1 receptacle. Then,
we would only need one of the PHYs (associated with the router that's
wired to that port) to provide a DP clock.

This, along with the normal (logical or physical) present/absent status
can change at runtime. My plan is to use phy_set_opts(dp_tunelling=true)
or something along those lines to toggle that bit as necessary

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
