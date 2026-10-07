Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8047DCA5FFC
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 11:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C2/gpqUwTf9oh7EaE/jGe2dSPK7ke4prkPFhrSoa/P8=; b=mla/pDAjjQUE+m
	8jLGXIiquCNWQhDmcJcsKwXu+kQezQyzrMTmdFetGj3sgDrGkBkggJcoiIlJSj2UN7rSX7I4G6+hN
	GYVxZAIfRKoykxUQX/wU6nf/m1u3sf3MqojkaHIPDUgZ10ve34Xu0WtZpA6UsDZLUkfYgj7OHDAwq
	MBkBiMTKt+4ieClf7aqsrNkN5Wu70COAs7cGf1AF+Fzhlnl6kK1Zoes98N0vRQnmJcdCw30CZoxR2
	v3c+tQnjwBP/b7U6GoB2rjDgrKKK02PfiI1HvzfQupaU7cJQy2mtHo4x+yS38S1/cF6+mfanjEk4T
	2cpoUQMvZgmlBs6IXQdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPwH-00000002L6Z-40lf;
	Wed, 07 Oct 2026 11:36:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPwF-00000002L4w-0vtu
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 11:36:00 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 697BVHUL2970016
	for <linux-phy@lists.infradead.org>; Wed, 7 Oct 2026 11:35:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vwMGznIBtX6JOyPsmXPb4KjWaatKQQ2Lg+WeL8PpwXY=; b=Fqe920MoUb00VojP
	VxM7Zr9DtCCPA+MLKhmyBzW1bET0goGGUG+BSz0SCGa9dPUtnKLhEE/AX5/8m1tS
	S/8jlVyUslhkzIctWeOFmwB7Qvp/nhcZ5XsIURt3SPEi9k7BayJ8YcBwfqtYagOO
	enleDw5jOlxChb1okef7cCNUD6B5dmFiPSO61r1HCvXkjusgfAERKk1BI0hZOzDl
	Z+zr3DukhTK0rygpS8+z4iyUOkZ7e7o509lSyAMzYbwZjYixtBOJ4WAu8eg2shD0
	L8ecDSJ0jcmo6oM47s9ftcM3t221of1VOSc1JImhfNrCHRdsgaFERcvdSn82pM5W
	v71Jqw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h5c6u1v61-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 11:35:58 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-38f97b3f853so5254276a91.3
        for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 04:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791372957; x=1791977757; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vwMGznIBtX6JOyPsmXPb4KjWaatKQQ2Lg+WeL8PpwXY=;
        b=PuO7L8BOofrzXSGXO60ExMvGv8DHtM9yLzZ8sOHF0vKy0BS/DYveCNXCkmRbn9jN2b
         ESYKhd2jv98q4qkQRYSTWAG//gYGSektrtlNfHxioGaM2NRkjWL6VDxtM0gqCSihGxKv
         ZWxrkl+QedLKiQxTRzZMfhT33FJxZL1SFoeMzZWJM70qSYDG8bYliEes+iILbW+XtG5s
         bOIpeMsYr2+7x/mJ0tUJGolKPP8XZFhn0sUZ7t+34FP9X9y4Ns+hKzIxP0Fd3IacembP
         02LVuK3/iYHQa6M+PuJ3xDslzOjZFHvIfsMqAKJ4bafF3wRCab/VlOqxTL6tbY7RwrqF
         jaRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791372957; x=1791977757;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vwMGznIBtX6JOyPsmXPb4KjWaatKQQ2Lg+WeL8PpwXY=;
        b=DuA7uEZEfsIFmshrNMbm/sNDY6evXBCufW6ZqXgLBtOWJhnILwspoqYaXvu0sUWqCl
         kdCat845dNulqPP7Sv216b8DlCZd3IkH9LBvyp1ZiEIxigUrLHuAQNVkJcgOs5JSjCKD
         NSAEeG6ciDWq8fjHkcmNVDocaN+OqY5VNnXp33OXq0/pWTIPI5LmuXRPTf6/tFG0FIOD
         3Cavq9GDmXpPjqN8eJdKW3YYACWruPzXYlfDslcJq3gLZCv+YoYuBhB619+2m3oUygx+
         DMStIAtOH/r8e8YBxlBJhv8IPA0o3reGGzRuJqGb+MLptfYCGSxTUFlBdAKCFqy96Lbo
         2d9w==
X-Forwarded-Encrypted: i=1; AKwUvByBfjkhuqxuC2SGsqYHKXTzt+QR752WOY4xcRC7LAULxP7N86va0YKcLkxDWfx2cd+pAEcwmMVHjeg=@lists.infradead.org
X-Gm-Message-State: AFq9FYIdDNtvCUXatpWSO/x06x+WWBVFb34MdE31J3lXhoJlDRnoO6KO
	bErp25uops/vI/rhhpjFCvAi3s51LjmRZXQ5XT8ynAmiluqZgUj78OmMTkcCTCO6+bjOEdA2b7a
	HqqbC4LlN9Ali9Ku7BiLcOAfsIj2tezcJKE8PoJJzimAlkkxJqThB5EPpo1jEAZNAceLU6QG6aY
	19
X-Gm-Gg: AYBFou26Gm86BfZdIjlTCR63SkBcay0XAc9HrP+QI6df45DU9mKEq1mlvYXTquMpU+P
	a/+KDyjhoKRB0KrNuABsMEUvTr3mqVmtdpDoSnlzWKjViThwBjmWIKC2VvU9raiuoWou8yfxKrw
	9uOBy+OM2l3Gll0WZl9SDn8KiESWTYTwKOEO2Mn3MGCkXttD0eIw5JHyi6zNDdM4Nk+hTLNinqG
	1NsGqAHjiO+t5WFXfH39nu8+Nf4odXleSHvXicDp4OUVv3982MjqyJDtzL3kVhyW/VZ71Qf5nOp
	2yqU0n5L6+8I6+9OBhIgISgoD4sacCudaryXk9OKduo/9SpDJphfAuQlmNX7UgoB741eoH8tduB
	GaM1c3xwJKSsnmyxgNcZpOVacl4ZjUkp/GU/xBwafQ6glr9MFJ8+8D24JMGXPMD/Y7GBNuyMZkk
	ie23yyCDviWMw86GK1mA==
X-Received: by 2002:a17:90b:5746:b0:3a4:b2e7:f01e with SMTP id 98e67ed59e1d1-3a8a1188428mr1499313a91.52.1791372957112;
        Wed, 07 Oct 2026 04:35:57 -0700 (PDT)
X-Received: by 2002:a17:90b:5746:b0:3a4:b2e7:f01e with SMTP id 98e67ed59e1d1-3a8a1188428mr1499263a91.52.1791372956413;
        Wed, 07 Oct 2026 04:35:56 -0700 (PDT)
Received: from [10.79.116.227] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a851630206sm9675364a91.0.2026.10.07.04.35.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Oct 2026 04:35:55 -0700 (PDT)
Message-ID: <c5f4e404-c03c-43ae-9785-7be1d8b25fe4@oss.qualcomm.com>
Date: Wed, 7 Oct 2026 17:05:45 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] arm64: dts: qcom: glymur: Add UFS nodes
To: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@sandisk.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        nitin.rawat@oss.qualcomm.com, sibi.sankar@oss.qualcomm.com,
        Taniya Das <taniya.das@oss.qualcomm.com>
References: <20261007-glymur_ufs_qcb_enablement-v3-0-84cf4f861415@oss.qualcomm.com>
 <20261007-glymur_ufs_qcb_enablement-v3-3-84cf4f861415@oss.qualcomm.com>
 <a5p5gszuadvnvqcwffg6y55khdfhacwhegaxmmiwm72sfid6ex@cdwuo6sdmkgy>
 <297690cb-64d8-4e7d-9d97-66680f6a2b99@oss.qualcomm.com>
Content-Language: en-US
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
In-Reply-To: <297690cb-64d8-4e7d-9d97-66680f6a2b99@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA3MDA0NiBTYWx0ZWRfX9WaUjVsPoJSV
 IajGXvmqeOv3cPiBNJa7ca56fDmjMN4TaUJLvBYXRS9WsJAr0drKCeauMqgolkJjcKZ1+EmXYLn
 WLJFc8jFGynnAp1k4s5mSO565XYRoyo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA3MDA0NiBTYWx0ZWRfXxOXk4cXAzpGS
 691uTmXsNxq+Qn/oh8XESCZGS+5ebqEZf4kCIOWl+cw8zZUb2bnn75e6CZH/RS603AdjpjJYD3Z
 PA0PD8LFO/DMvnCnGQuMdOO9291qd0NK5phSrfzBRSFAdBH8yHaiDa+EKqeaFgNmcWnRjm2p3P7
 b4zXqa206QbHewuBEQ8XC2ZoaJ+/hCWnYfVf0Fge5kp/+A89LOlbUBozt/KDG4/nFqZPxFubm30
 Z7ubFEOMjFh5flJ6dulT6lOSPX4kbKGGxXxjF4VeV9+EIhsyMz7Agtf3g75IQQNE4rsW0YI51Bh
 Tc2VJlBjtYTAZv41/6BH1Bin0qkja327tXU1mUmlxodgTgtAjsFT0Jw0UWoyO1nJht0Wyrj97eS
 x/rhulHmVAQWqrgfCEBRxtTCdsOOllkLVoS6CrVwMfiW2nbsyD7QsxVupWzhA5SH3ZlzdXweBhM
 l1sxjfPhCChaYaYHL9g==
X-Proofpoint-ORIG-GUID: Zke9rDqstrQJFYiX8LPQLxQRvDhyl-kH
X-Authority-Analysis: v=2.4 cv=T5EZ3PKQ c=1 sm=1 tr=0 ts=6ac62e9e cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=P-IC7800AAAA:8 a=EUspDBNiAAAA:8 a=1LCiuseMYk0cAX_2M9wA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-GUID: Zke9rDqstrQJFYiX8LPQLxQRvDhyl-kH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-07_04,2026-10-06_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 clxscore=1015 bulkscore=0 adultscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610070046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_043559_284044_78A710FD 
X-CRM114-Status: GOOD (  16.54  )
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

On 10/7/2026 4:30 PM, Pradeep Pragallapati wrote:
> 
> 
> On 10/7/2026 1:13 PM, Dmitry Baryshkov wrote:
>> On Wed, Oct 07, 2026 at 11:59:36AM +0530, Pradeep P V K wrote:
>>> Add UFS PHY and UFS host controller nodes for Glymur SoC.
>>>
>>> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>>> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
>>> ---
>>>  arch/arm64/boot/dts/qcom/glymur.dtsi | 125 ++++++++++++++++++++++++++++++++++-
>>>  1 file changed, 122 insertions(+), 3 deletions(-)
>>>
>>> @@ -4102,6 +4102,125 @@ rng: rng@10c3000 {
>>>  			reg = <0x0 0x010c3000 0x0 0x1000>;
>>>  		};
>>>  
>>> +		ufs_mem_phy: phy@1d80000 {
>>> +			compatible = "qcom,glymur-qmp-ufs-phy";
>>> +			reg = <0x0 0x01d80000 0x0 0x2000>;
>>> +
>>> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
>>> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
>>> +				 /* UFS and PCIE4 share the same clkref */
>>> +				 <&tcsr TCSR_PCIE_4_CLKREF_EN>;
>>> +
>>> +			clock-names = "ref",
>>> +				      "ref_aux",
>>> +				      "qref";
>>> +
>>> +			resets = <&ufs_mem_hc 0>;
>>> +			reset-names = "ufsphy";
>>
>> power-domains = <&gcc GCC_UFS_PHY_GDSC> ? Or is there
>> GCC_UFS_MEM_PHY_GDSC, which is simply not described in gcc?
>>
>> If there are none, it should be reflected in the DT bindings, together
>> with the explanation in the commit message.
>>
> Yes, Glymur SoC does not support UFS PHY GDSC. Sure, i will update the DT-bindings accordingly and include the explanation in the commit of next patch series.

The support exists? I can see the gdsc in gcc-glymur.c
https://elixir.bootlin.com/linux/v7.3-rc5/source/drivers/clk/qcom/gcc-glymur.c#L7768


> 
>>> +
>>> +			#clock-cells = <1>;
>>> +			#phy-cells = <0>;
>>> +
>>> +			status = "disabled";
>>> +		};
>>> +
>>
> 
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
