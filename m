Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02AACFEFB6E
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 18:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbyvvc23LVWpH4q/qwfjvlE4oDcP28vnbD5MibfkmHk=; b=A6aXrpe0f5hjz2
	ziZ/VNIDrUEjzjj9Fsk90tGfczpZ+Ylo1RTmTk3nBMw7s2RFCoOK/BQHNXKV+w2B0c6bgJ0uHE/G8
	++nIZNbKbUEZ69LIpCDTS2RUO31V0bi1H2qwkSB5r0D6AwGbaCwKBGeDMqOxM4H5/R7g9JUzFscPT
	MyAj68y1WwALC3jtsa5vhjpBRZbV4HJvWpkpzFSnbZhrCO9lpiTYTnPTdVGq8LJx59AF4qypy3daG
	XpsLlcqZzR95qaaq/pKSHdavzopbAi43zgCj/MNar/4ETEvr8E/sUJqb98AVJxPhf/BuyF8qYMOET
	NFUv83Vo0KSK9bq2D+Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw2Fr-00000008tZV-1rPx;
	Fri, 27 Feb 2026 18:07:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw2Fo-00000008tYW-1IoF
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 18:07:57 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61RH0GHb3495709
	for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 18:07:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	823dFt7zxIlJX1RAw6gWs/3BdC5rgbHfxffaZTtrSPA=; b=Pijuw8w1Vc98imyY
	/KVVjkXvM8rbMbYQcidn6Tiv7F6p2amOiEnWwtzo4jkNJbKv7yvhOJBBGEaGSxbu
	7iYi4pelTqePnJotrbqGL7c+QcHz61/58L6E6tnnq8Edf32Nh5fb/Gf7kO7PqgmN
	B2JPQMkEKbyJiSFc0BcuFjWZGWQGKzh6h02sbhvTDtOe1zDo8rLajpJDcKlc1VUh
	DDSiOPLMuXy6jP8WqrPvMSIULjo8HlNcoa1HiQPeDA7dBVGJ4zhoIo03zJIz2IKy
	wivusYmXwGziijs7nuevCHxeoLNAZBNn2hfdgBKq8EGLycAx1K1PCYEp4Tc/iA0T
	YG17nw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjt99vqav-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 18:07:55 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb5a76f13eso160839685a.2
        for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 10:07:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772215674; x=1772820474; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=823dFt7zxIlJX1RAw6gWs/3BdC5rgbHfxffaZTtrSPA=;
        b=FW1cAJ6WIwNK4W3DNW8wJJH44B5ofBXuENU8W5vdv+MxYlvThydZx9iSpALGuezQuM
         es9weoVAp8kp0qqjfScERqUxb2qurR39A4BKqz3mRqToH/t2ejo18YYl+XhZ520uZQMe
         smtyz2dv+pQoQtisNJc9htqzzIPDOn0pW60r97ORQQdvt4RaqiK5BgF9hMwlwBxBVoEL
         tFxFQScmU2/krQ11LhEbIXXg39k5iOEclyPu4uTAPy1C2ueFAo7b9mSi28z6jBof+QpC
         3sk14HkigeBF3fR77PcyAy6qgEX9FivLcuvdzlpQ1bhuHAqo0JtmWtBMXTMRtshYQr7y
         uwhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772215674; x=1772820474;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=823dFt7zxIlJX1RAw6gWs/3BdC5rgbHfxffaZTtrSPA=;
        b=rbJ64pGou8ku+GpJQ3ju4teJzsu1FFCqG9lKfjAjVbRLc5ua9eK6wPQBQWluTl7een
         PYtFRb1D5LPBURf6rVqkjC9kdxvStrzbqEvePsjv8pr+sOWAopmVKCqwKRdtTRCuwq4z
         I+R1u9K+EnBCjC4TjuaS8Y9/cjLyUIKpVL4un+lF9o9dqFDiIdeNFwVk3boL5ctDn/kP
         eTn62ysBTOOQtIzMb4ExIRo0WaNVxQsx01saDbKFixNdPrmAtlmTWQiuA+D/cXk08HOJ
         bDRbOwqmwA6LmFVEhE6pz31ieVjqzzDBklPaPrOPRcp7ETONLKDDTbR2MpbkbEWOD9sG
         PIqg==
X-Forwarded-Encrypted: i=1; AJvYcCUb65ZZEtRglDqKbDSyMQUDhw7vAZRFiqV+B+GtQWFGobdDSRl4+mQHmQ+T/RH005IInSWFl5U3i/c=@lists.infradead.org
X-Gm-Message-State: AOJu0YxAtC1aqVhizEfhlZfpjWAZi3p9hjaRGJuCUrs5jXI9iNZAnRjS
	zagLL4WXbmzIBJb9etoZE5PLGJg7bqIN1Zfw0gAv04HdcdJpw9R6KV7RlmNLrIleSQJMLMZFATL
	GRn9EaPFi5L7WMOVtq5LDo0wkuAbyljRTSP9dwzaE7u1Dx8z6craLstXn2Y8hmzmIpQEm
X-Gm-Gg: ATEYQzyeTfHXS+uBe/CnZr+El+Hq7YmOXvG5JwlhjAt7H3+gJlsZr6hjwYpGGQz3dcp
	AfJZBDR+r7Wt0JgxqMXnD4zXjFB6Bu0V/y+z+dLiZ96x3qKNsZZsmc3z9mOw7VM/knI3pciBxGh
	5tRR3MKsUNfgmTYjg6ks/vz1jep17mSiIRx1v5U0s5L+CwX9Gbnn8BR8aFHg78KYjQ+ytxl1mfz
	+y+P/HEMJHGR+Mi9we8f0XJ3se7xYdCpku24aUJlMws5wTNWwDWw7flMo9YoBI/rIWTjooqdu2E
	SkvDAbs8UOmW6IgDyBCaq0shV2wrYXrcXKkfmcoc9+IJTNJDwEbNWQxkuist93YOTDf30AkGlQS
	udx7yBzdAMaKdWSOJVWbZbXWRxM8Kw2EhO5ylafptwL7iwGnvHG8W5aDMpRk7If7Oo0Whu6ft5a
	AUAX4=
X-Received: by 2002:a05:620a:4004:b0:8c7:1b40:d096 with SMTP id af79cd13be357-8cbc8e79d8bmr361202185a.9.1772215674122;
        Fri, 27 Feb 2026 10:07:54 -0800 (PST)
X-Received: by 2002:a05:620a:4004:b0:8c7:1b40:d096 with SMTP id af79cd13be357-8cbc8e79d8bmr361196785a.9.1772215673496;
        Fri, 27 Feb 2026 10:07:53 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fabd4664asm1487000a12.11.2026.02.27.10.07.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Feb 2026 10:07:52 -0800 (PST)
Message-ID: <389ca5d3-a698-4dac-911c-39ba057e3d17@oss.qualcomm.com>
Date: Fri, 27 Feb 2026 19:07:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom: qmp-combo: Move pipe_clk on/off to common
To: Val Packett <val@packett.cool>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20250927093915.45124-2-val@packett.cool>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250927093915.45124-2-val@packett.cool>
X-Authority-Analysis: v=2.4 cv=IZWKmGqa c=1 sm=1 tr=0 ts=69a1dd7b cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=NMrB2pzdCxszCODCV5UA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: 32B7R7mZJsZRt-IPMt3H9Ix3TbxeScCr
X-Proofpoint-ORIG-GUID: 32B7R7mZJsZRt-IPMt3H9Ix3TbxeScCr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDE2MCBTYWx0ZWRfX+Gb3ERtWjZm7
 wnmfLqHg1yhA/Ps2win1SBE71Czv2hfYavQGkc0TWk/UR/tKJBJWk8yuZfkMkuf0F2Ug5O5WY+s
 Aa2XHHQ7zr07XblcQj6mgS0/RIpBqBqPQGT3GPcBca6b1NUPJ5ObDpWvfpy7LZIyw8/nlXSS2qp
 zfO5xQ260B82o4OeyGk0km0o53TApX6jRP4o6Sw9/pBrgxx4eCxsCQJpk2NvT7NTzWEqqJqOHft
 UwDEn1RX+3pP70nGnPq2P0Jsq0Oi3ghrQVdsHNXx2BVFKyQFIRXrEdwlXTq9+wlo47Dv0gxWVx2
 DquMfyIFMF832X70VWO/f1Vun/tu+Z5vcVqdVWrk2NipZ6Mh3iBSoQXlLUwqNigQqhvHRDGMDuf
 mcvh1I1SXQBHRtcevAjsTtNKNb3331RfO7XEGqic4sXsdqSSjoRH1WiAvvJhlzrmC5mCZ4nUeGT
 4795ukasnuJP2gZlFSg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270160
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_100756_367569_EB25AF15 
X-CRM114-Status: GOOD (  34.41  )
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

On 9/27/25 11:17 AM, Val Packett wrote:
> Keep the USB pipe clock working when the phy is in DP-only mode, because
> the dwc controller still needs it for USB 2.0 over the same Type-C port.
> 
> Tested with the BenQ RD280UA monitor which has a downstream-facing port
> for data passthrough that's manually switchable between USB 2 and 3,
> corresponding to 4-lane and 2-lane DP respectively.
> 
> Note: the suspend/resume callbacks were already gating the enable/disable
> of this clock only on init_count and not usb_init_count!
> 
> Signed-off-by: Val Packett <val@packett.cool>
> ---
> o/
> 
> Just got my hands on a perfect test device for DP alt mode: a monitor with an
> on-demand toggle between 2 and 4 lanes. (Started digging because I thought
> I needed 4 lanes to use its full resolution and refresh rate, even though
> it turned out to be the dpu adjusted mode clock check rejecting the modes,
> patches for which are already posted.)
> 
> In [1] Konrad mentioned that "the hardware disagrees" with keeping the USB
> PLL always on. I'm not sure what exactly was meant by disagreement there,
> and I didn't find any specific code that touches that PLL in the driver,
> so I decided to just try it anyway.
> 
> Before the changes, 4-lane mode would actually kill the USB 2.0 functionality
> on the port, no recovery until reboot.
> 
> With this patch, I can switch the monitor between 4-lane and 2-lane modes
> (with an unplug-replug cycle..) and the USB 2.0 devices attached through
> the monitor keep working! (I verified the number of lanes used via dp_debug).
> 
> I'm sure it might not be that simple but from my limited and uninformed
> understanding without any internal knowledge, the "sneaky workaround"
> might actually be the intended way to do things?

+Bjorn, Wesley I wrote a wall of text for you, hopefully it makes sense

I now think I have some more knowledge about the setup.

The PIPE clock is an *output* of the PHY that feeds back into GCC, which
provides a XO-PHY mux, which then has a gate/branch downstream of it.
(that's 100% sure)

That branch (e.g. GCC_USB3_PRIM_PHY_PIPE_CLK) then feeds into the
destination core (PCIe, DWC3..) (that's *almost* 100% sure.. it's
surprisingly difficult to fully confirm)

Both msm-5.10 (and older) and upstream decided to keep that clock within
the PHY device though, and that makes.. some.. sense, because you're
not really supposed to turn it off (at least on recent chips), so much so
as switch its source from PHY to XO. That of course needs to happen when
the PHY is going to be disabled, as otherwise the PIPE clock is absent..

I can't really find information about when that branch is supposed to
be *disabled*, but one can probably assume with reasonable confidence
that if the PHY is offline (which generally only happens if the controller
is offline), that may be disabled as well.


The only remaining question remains then, where does the PIPE clock
come from? It's most likely not derived from the DP PLL.

The PHY has some slow onboard always-on clocks (for USB4 wakeup and
USB3 autonomous mode), but those are waay too slow to be driving PIPE
(which runs at 125 MHz @ SS, 312.5 MHz @ SS+).. so only the USB PLL
remains.

But then, in DP-only mode, SW_USB3PHY_RESET is asserted. The
documentation uses some imprecise wording with regards to what that
entails, but there's not many options left other than it may be
leaving the PLL in tact, while halting other parts of the USB3 logic.
Conversely, usb3phy_(nocsr_)reset is explicitly promised to reset the
USB_PLL.


I think the PLL also happens to be disabled when entering either of
the aforementioned sleep modes, since the table tells me the required
RPMH level is 'retention', which surely isn't enough to feed a big PLL.


The solution of teaching DWC3 how to switch clock sources is a little
involved, since we (to my understanding) have to/should omit programming
the parts that are conditional upon superspeed capabilities, and doing
that at runtime would probably realistically require making it type-C
aware (I don't think we want to go that route plus micro-b/MHL edge cases
*sigh*), or we could count on the suspend/resume work making it magically
click into place (since the dwc3 core does quite some re-programming upon
any sort of sus/res today anyway, it seems). If the latter happens, we may
end up reverting this patch as it may then turn out no longer necessary.

Today, i think this commit resolves this immediate issue and I think it's
the fix we should take (bumping my request of reordering the clock disables
and resubmitting..).

On an interesting note, if we take for granted my hypothesis about the
soft-reset not impacting the USB_PLL, this seems like an oversight in
programming guides, because USB4 transition sequences explicitly mention
the names which refer to resets coming from GCC, while DP/USB mix-and-
matching explicitly suggests using the soft-resets, but that might have
gone unnoticed, since dp-only hasn't been much of a prime use case for
in the past, as most of these chips were targetting mobile.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
