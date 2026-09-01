Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93C83C624D4
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 13:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7PUA0TxmNGE4P0WThBsNjMUnb49cmPiQAH9ydVy1e1U=; b=OUQomsea4O8aXZ
	f+eeUJCVVN1rLR+BPmFtZW2VsWKsUxKg1kRneZHDiGztOKOp5o5+rz3TpPJBclslfoaB0iQvzvpPK
	Uh1tZaYiVpz/UkRlKSW8YX/xlr3YORkAoznzN5c/eKX/D7fc8zRMb33r5WO/5IHc5IptTZtJVAb+R
	4LLdCJJdAy281FhygoD/aGNREyJaCbfCd8pGO2icx3R/MJr35MzUSDUKSMFEIVQQ86arWj1NrHGLx
	yoAs2DJ2eM7Ju9XLSkUkkWlqRi1oVEqDYC7G7UJadtTH0Q7EP96owHT99jH+zQS8G/7yuyEnqBnZC
	SL+qxu5Je7ZK9m5IEV9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1ONG-0000000CC6u-1FSH;
	Tue, 01 Sep 2026 13:18:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1OND-0000000CC6A-3ZTB
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 13:18:00 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 681AJBm11641398
	for <linux-phy@lists.infradead.org>; Tue, 1 Sep 2026 13:17:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BOER/48Fz+cCbdlM/AT+CckMCyjyIwiBkZBX+c/Jivw=; b=Uc1AAPkCq8yaPHNb
	K1v5peehXwLRGrA91Ar2dWf73/ZrMNfIqgFj04Cvkzo+qj7RAbUoGXUiYuQb+CD4
	Fm2OxH9BmijnVtpvFkMq2FH0i8v3K7c+Dy93rnZGxUQ9+3u5pcKSq6+ykSWt1kMZ
	3JGcj8C8tmt4+r1lRDeqOm0DHNfraXlQeSqPXmAdzZA5Y8xpIT0nZx5dWtsVjbVy
	dsLzsHJhdJ7br9l6Q3a8q1loCUuaYlRFwk04pSiUCQYmFS8SbH6RT1NmFs9E+LiN
	HYnH3v09g4IJiwaLgwOkVMPZTWTB47AhXEgFxgw5LIXZ3J7iQgCKKRlBz2fxkj21
	RsqITw==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gdnk8ts2h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 13:17:59 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-784f9401a7dso127064137.2
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 06:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788268678; x=1788873478; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=BOER/48Fz+cCbdlM/AT+CckMCyjyIwiBkZBX+c/Jivw=;
        b=auAyAnuWbSmNa8kKM0R70FWXHQJVTT2YS19Gpl3psCm0iqBXqw0cgY0MuQq5wV4YJo
         JPYiqHybxIsPBoMAFr3opQlA1MGx8vPISyfgMduneZeFUmkkCySyeA9dcFVAy4ZFAI5f
         No5vHkSmuIi2dUuJ3G4zSyECb1H4UlNOzyjoRzTDhqmVLpo//gkJ8J5BwMQu5kvIwJaZ
         ftFm9vFLqdsL08fZmIimpkFWYjdziVHPGQr7kwC7tdFfjgdD0FqCiXfrvqGu8imm9yNm
         hxjrlRTrdXFhT5FAQzsF/+z86ZrIHQgtf6qYFG+p3njUM1R10pM3fScbjpXY5ob9bZ/7
         B5cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788268678; x=1788873478;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BOER/48Fz+cCbdlM/AT+CckMCyjyIwiBkZBX+c/Jivw=;
        b=siuCh0u7P2YROsOSTecjDaNpmT9HWzXMwTeQmRTHlf6okzcPkG0hQszSW2ykO7OOac
         SSZI04aa3gdPl2Za7OWbfntxVJhSh5O4LeCviSAI5IKsVxKdxEPqbIBPkT+bUC6psRyu
         ShGcQPkMLdydAiIdDN6FNgT+WhYd+JXYw1OXSxmPna2HF1ySUvAHX22ZD6FYVOoGaDn/
         lX/UYcMmiiNkBRMeS2MWfrxIIBmZ7C8j00GHEALi31bMRszLJwkN6YhG5NdsPdM3ubB2
         RjARcNG3cB42WCrTIPLJAvVFKbbc2C/Z5duYh6c76exnh3139dodWW8jimHShBpWE3FE
         DF6w==
X-Forwarded-Encrypted: i=1; AHgh+RroZnNUlBeU8iZG8xy3WCluw128p9Psk/RtV4Co6HEO3dpW7Kl0tPuxZFei/JZw2D/4lNJxRDeaEec=@lists.infradead.org
X-Gm-Message-State: AFuF++kSsiVKqk1CE1IOZuYmlRGAcdY5kKfwP8520Vhrb+yWQTpAJHOd
	yuaOxCteWcQPRbqdBFe0Da2Hib+iuWj0BfXQci101swKzBh/2T67o65wSfCBjkv6rVvvSMCTnsD
	HN9RHZAJaozO9qU/0lcs07eqp52zd+WyUPh6LfnHQtR2f2ZY9d3YEpl+UMLTZB+ehZBco
X-Gm-Gg: AR+sD110sgBXHJlk5hKOYZW47oRYoWxufiTnx0dUBChz3Rb8nuMJqseq+MidSGpADro
	ANKc7dk/0XgqOmxAI2OkswqaJ2gF9R1bgq+ES//eAYKVIxfgXYFWlj+oNqKTUpA5wU9Uf4IPWr8
	5GQAS/O+LXlZ76DfFB6ryW/VgL7E3wTCGme5CjZemcRL4PlgJ72JfpMypMGm8KF3QsxD+ekmfsn
	lsL9/1rqGhY7g8kTu78LskfjPpoTKsrRmafKNbY0mdPBVtsnlYNUjFrdo13UjPk3/CxF0FiAAzZ
	aRVT43rsajfybSULNTFEbtjW3sI5B0RrpNOZRrKAG9hDWZbZuMVkB91f2YApTVU5pYZRB+hDAjM
	kuKOotPkvswlNtnqqYJHS8g==
X-Received: by 2002:a05:6102:f84:b0:779:7d3b:1398 with SMTP id ada2fe7eead31-78593425615mr4422337137.0.1788268676414;
        Tue, 01 Sep 2026 06:17:56 -0700 (PDT)
X-Received: by 2002:a05:6102:f84:b0:779:7d3b:1398 with SMTP id ada2fe7eead31-78593425615mr4422313137.0.1788268675877;
        Tue, 01 Sep 2026 06:17:55 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b5e89d3e06sm2866547e87.26.2026.09.01.06.17.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2026 06:17:54 -0700 (PDT)
Message-ID: <5e7cc36d-73d6-4040-b62f-88fe2819ab1d@oss.qualcomm.com>
Date: Tue, 1 Sep 2026 15:17:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 06/12] phy: qualcomm: qcom-uniphy-pcie-usb3-28lp:
 Improve error handling in power_on
To: george.moussalem@outlook.com, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Praveenkumar I <praveenkumar.i@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Nitheesh Sekar <quic_nsekar@quicinc.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
References: <20260825-ipq5018-usb3-v3-0-39be0955a6aa@outlook.com>
 <20260825-ipq5018-usb3-v3-6-39be0955a6aa@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260825-ipq5018-usb3-v3-6-39be0955a6aa@outlook.com>
X-Authority-Analysis: v=2.4 cv=f6p4wuyM c=1 sm=1 tr=0 ts=6a96d087 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=UqCG9HQmAAAA:8 a=xCqKcKfuVhzOl_WxAlwA:9 a=QEXdDO2ut3YA:10
 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAxMDExNyBTYWx0ZWRfX8O2Z20UEcBM/
 ot6jDb/6iBvAk/5RD+IijsPBm9YjaCKzsqkvtdwinEoDi5UIF+SsoWTcDHWnrDbwlFTHb6uo/nz
 1UsDDDAQNlaeUa76Uovs5t8CgaUnw8N7CQNwR2aFLfcVHZ8e33VCtqQSzzOBg9F7dJHOSI1Ltsn
 2zPhSl10AR5cH8+3h7rQcLhPGy6Hh1zxSb3gIMyRHAxxcj3/YAFMVEi/hEmrmxNAi3tMe0KLsKi
 RBZ3j9mxcuzniEyzG0qQL5HrZY9HOqNkMfD6EuNojrxz5UVrtruWX8HUxOVXpNHfUvMP+AP2hlA
 SI2uPV6HPBzBdlyg59chVllqi6xbxLpY6P4Ap5NSQDo1EPErlUDd7grJNq6w8qjLlxi8WGhbQDI
 h15UL68c3q9niceGmHzEG51aUzSFxz8r0g8BhKFSW5SWfAaGwuFLpF7h3e2ypncXawRX9r3xqIr
 sjrlHFQabI4PextJB1Q==
X-Proofpoint-ORIG-GUID: rVTWclD8VlCPgpQrygZOVTJnRaLvaEdq
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAxMDExNyBTYWx0ZWRfX9QYR1cKUGXXD
 4u5inYNvH/8mR/6bSiq60/ab80D6/QY5JvV/nE7nrUhnhKM+m136MKgNBGYFtJgC7JOLn75MLKH
 K+CcXPS+3mW25LyAfwoVmE9d2l0q1e8=
X-Proofpoint-GUID: rVTWclD8VlCPgpQrygZOVTJnRaLvaEdq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-01_03,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 priorityscore=1501 suspectscore=0
 impostorscore=0 spamscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2609010117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_061759_908686_89A38454 
X-CRM114-Status: GOOD (  13.07  )
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

On 8/25/26 2:37 PM, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> When the PHY fails the enable clocks, it leaves the PHY out of reset.
> Fix this by asserting the reset before returning the error.
> 
> In addition, language correct the error messages.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---

[...]

>  	ret = clk_bulk_prepare_enable(phy->num_clks, phy->clks);
>  	if (ret) {
> -		dev_err(phy->dev, "clk prepare and enable failed %d\n", ret);
> -		return ret;
> +		dev_err(phy->dev, "failed to enable clocks: %d\n", ret);
> +		goto err_assert_resets;

This is a single-use goto for a single line, just inline it here

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
