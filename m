Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3F19CCA462
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 12:13:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PvY+vzJLUXaM7Kn7wcyjPjWarV1dLBctgSiOqHBnQRs=; b=h4qMJ1mPAUKnCA
	2ilvALX3Xu5DAhxV9EQY7cVvXiuQnMPmRNsMrhoC4i8EDVwUVT4aA6Xy3hJL/KNg8xmg5Mq4HuL0V
	SJYH6Bmg5/TdrjPJ9h78lo7KDsaokCxsfnsXoWvHpWI9hod0eQ/c6i43zMXrfGw5E6+HOAs3g3p6D
	YV5NzcWRPhpeYX/9VkLIzbAylTEzHKroJy7/ajQI42sUK1Fegc+8b4PMQefIFvoyfYF1GgvFKwPEb
	XDYpafNWZd3mDbtLDgBNqJCcKB+3TS0ysKOd/1IAaVD0aeA4Vq4d+37Vi57CgendIBogCGSw1Sz+C
	kEdY2DYyebufmnm0uz2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHgoa-00000002pda-1NNr;
	Fri, 16 Oct 2026 12:13:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHgoX-00000002pdE-2KNM
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 12:13:34 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69GAALG12403284
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 12:13:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2ftWXraDk9QDVAMxNPvnX3+vFGzgyBKZIXYyP3mhWOg=; b=mOZBAvNqrETlTo5t
	oLXQdt8d3iOaBaEl1nkvyHEMF4pAOblVuA/fagfV2eefOEmZsSNV3zGcfF3FyOHE
	MQQWf6qOJ3OkhTsPhs13Q0VSwi8lTZdUGA8VTjIyIbC2dRB7MBNgLIlvTHaeSdYZ
	oWjQCE4TImGjAQnCXRg23KtSPXJzIBxf7omIeKiWtDQFDRfaWk9KTfhLdCRVfsKL
	fVwFCEEdvRp87bb6noRdrMXrkX/yRWR7m1WQoC6uefKkZN+OR3HukJXwEJ0C76Ol
	GfjDngAV/FBpbQDlTtdRaxnuriCAmxLzjPsikQefDXAfB9J03TgN075A5x9S3klV
	GYVg3A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hb19m4bkg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 12:13:32 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-92eebb130dcso118432385a.1
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 05:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792152812; x=1792757612; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2ftWXraDk9QDVAMxNPvnX3+vFGzgyBKZIXYyP3mhWOg=;
        b=X4sih8LVU5xA0LlYUUUoyt6UsW9p5dzsV4cOmsFJIFAkIqI6OAHy2JV3Eh8FGwZe5e
         tGfq/dHn9toHUBfx22cVbqTzGRQQtcEqfuAZxhA3zoq1WbZr8P6id7rTlRh+StRNAn4j
         +A4x4pzwWBXiUf8ZzXvJUo5TJVkd8iBwYth/s2M3Mhos5TpK6YWqPF0xb5FRdFQD/mxR
         s+UA/8O0ucORrbtlmshz7zZA/+P+NuwHL+2JGP46cDs/YSGPEiQ8IsuwnXqY8suwllBh
         IOisQlP6Mxbh1gk4yt+oOsz75iQksf06Vs56naM7/SnJkEiFBXkRW9IiGsshT36+R1MV
         igOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792152812; x=1792757612;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2ftWXraDk9QDVAMxNPvnX3+vFGzgyBKZIXYyP3mhWOg=;
        b=DhLmd/Ho+YErkR9FAxalFCC5I/+5oMFivqZeVWFKPU4OqS3nuCNX1aQuMGpSHHcmy/
         zuKNUrBjQSrHKhRI1x6acwOlnJW38pRp1cxgrnDbhjH1dlcYBmhk1IOX2nw37xcYl1rJ
         VZa2sCFS/cs9Dzi6xxK9GjqERA5fetW5bSeeJW0SoFEQE4FdhvKGzJiBhLl8VmC7zpMe
         qILHmKHXC2Kjb9qO6bWWQM7UIjLKm6wiOp4CDnY8tTdG9EkxmSGhLRirf93rGQEHE9sN
         IA5gzlZzJU4LGlVl3afz00ZVkD3hmmL5frPj+FdFgkPkX2DuM+yiAQRlFXb8knlkkILC
         MftA==
X-Forwarded-Encrypted: i=1; AKwUvBxFmHLsZh0U/9fADDu3hCtc+bBTvv8ElezpSdSVS/kPYejzzenC2/3pfudHSdMtQjltoDghnfwqjl4=@lists.infradead.org
X-Gm-Message-State: AFq9FYLq0pJFPq9IWQGq5uVbgFcdLyJcpcLJroxxY26NEnyhp8Z1zNS6
	1hfwaYtWtbKBQmyxYmD2NhKrTQG6DbiCbOP68ijQmkqPddvGfObSFxeMuh9R4hBBEj9k0BYiPoH
	aYeAce8Cbub56T9/LM0WQwhZQmpty5zvE3Nbm/iCzFaZgLfQ7pj+cr6z4P2fJ3wpICR0W
X-Gm-Gg: AYBFou20bbg3jpSikwQWF5VJsrI9feV7nuIglKer8p6/uLIgEWN7BY9Ujo34824UCPE
	kkzTTnpnhBGrKrLRH21fIoBDtzfgL3glS+DhUdOWOwHDBg9KhwWmUMETtSsFKFbTXx6/yOuVWHM
	98198m+JI78zflsGoNcrj6dZOSK5tW6ld3nJeDKowjxeUVxQ6ouWw9wu3bc2aPPPLnuBbgwt0lT
	tUkMHtpIt1B0l4yqOnJeYwtP4bo4e7B1wEZgnW9FH5/ILziSP5qNyTlvdVHj7kdkVdlczl5cLCo
	byPj6sdSPrPmO/q8b7JnWZ3V2zRRc4Ts3aR5PboT5vp1c9U/XB3H6ryb0VaomsO06r0e9mksq1C
	IS6yKqvA1N0pGFHC4DUpDoA==
X-Received: by 2002:a05:620a:3186:b0:939:8bc:8826 with SMTP id af79cd13be357-93ebd10c0e2mr4177425985a.2.1792152810805;
        Fri, 16 Oct 2026 05:13:30 -0700 (PDT)
X-Received: by 2002:a05:620a:3186:b0:939:8bc:8826 with SMTP id af79cd13be357-93ebd10c0e2mr4177421185a.2.1792152810265;
        Fri, 16 Oct 2026 05:13:30 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c4090dcf35asm65905066b.19.2026.10.16.05.13.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2026 05:13:29 -0700 (PDT)
Message-ID: <c1abd9d4-98ef-4469-b4f3-94a8dcad9d0b@oss.qualcomm.com>
Date: Fri, 16 Oct 2026 14:13:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qualcomm: qmp-combo: Differentiate clocks related to
 the USB block
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, jason.pettit@oss.qualcomm.com
References: <20260930-qmp_phy_usb_clks_v1-v1-1-d4dccc9eb263@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260930-qmp_phy_usb_clks_v1-v1-1-d4dccc9eb263@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=aLdlOr9m c=1 sm=1 tr=0 ts=6ad214ec cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=p9KmNGLgWT_GFA4DS74A:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: TOP8Jij5GgHveQzdcFD2T9vNFnJrPv3l
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE2MDA0OCBTYWx0ZWRfXxXLFOhfmUDB5
 0Lut163Sva+3A7MbS+sOoEATwETScNr1EcE1hRtwaJsdY9AlDX/MrBjVDe78hlnmpaDvWSdR1WM
 IY8I5MVm75hKkJo3ZJDochbFChcGpoA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE2MDA0OCBTYWx0ZWRfX0O+FeJZ1qlwN
 XBi3ptBL+PL67YGTLxCJIoMP3LFdYMNHNd7QzuhpcifO9q+uJjDaiFwmtegDT5IXqqqJwxN1xTx
 bcvthxf3+Tv6RRmjiALkvSkkDvp7kNEVh5r+1PoGOYzgm9SoF1PX1xzmSNfDVL/iYs5frEMbv3M
 KG5nLFfdON371I/HoMpeU0RT3/9rQNqaQnsquxa30ETG/ZBegiGxQV76sC6GhHi9fJRkn0UdiOl
 z33gcyRY47kbxmQePvQCyzIGCq2QEQmwvPwYgkByWIzPkCn+EQGdUCe2skX4b6xAFA+TMixZYOE
 /TA4lm9BpEscJkIMYnHXYtXSdSqR5tUUjTh7Xv4CiuKxwEvBK/Evg2l7+yh5QKo7WsQ3sAEEOsz
 y7Ij8V0FelfNMYjK6e3Lw+cVhiApeT8OSwqkz2QzkNLE2o7GaI4qI5ccpFJgn1wHkj4QyZInzHx
 o6KlBbLPyyHmSDsdfWQ==
X-Proofpoint-GUID: TOP8Jij5GgHveQzdcFD2T9vNFnJrPv3l
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-16_01,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 clxscore=1015 malwarescore=0 adultscore=0
 suspectscore=0 spamscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610160048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_051333_735713_859681E6 
X-CRM114-Status: GOOD (  13.41  )
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

On 10/1/26 3:16 AM, Wesley Cheng wrote:
> The Qualcomm QMP combo PHY has a USB and Displayport block that is
> sourced with different clocks.  In situations where the USB path is not
> utilized, and only Displayport is active, unnecessary clocks are enabled
> and not used.  Split the current clock list into USB specific clocks,
> which will be enabled whenever the USB initialization routine is
> executed.
> 
> In addition, move autonomous mode control specifically when USB is
> active, as its primary purpose is to detect RX detection and LFPS
> signals, which occurs only when USB is active.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---

GPT has the following concerns:

[P1] Don't disable USB clocks that USB init didn't acquire
drivers/phy/qualcomm/phy-qcom-qmp-combo.c: USB init/runtime suspend

When USB4 is active, `qmp_combo_usb_init()` takes its early return and
increments `usb_init_count` before the new clock-enable call. Runtime
suspend then uses that count to disable `usb_clks`, although that path
didn't acquire them. This can unbalance clock references; the count
needs to reflect actual clock ownership, or the USB4 case needs
separate handling.

=> the USB4 state machinery is a bit fragile.. but perhaps an if or
   two will solve things

[P2] Unwind clocks if USB-clock resume fails
drivers/phy/qualcomm/phy-qcom-qmp-combo.c: runtime resume

The patch enables the common clocks and `pipe_clk` before enabling
`usb_clks`. If the latter enable fails, it returns without disabling
the earlier clocks, leaving them enabled after a failed resume.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
