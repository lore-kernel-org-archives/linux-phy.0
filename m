Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C059CA5FC7
	for <linux-phy@archiver.kernel.org>; Wed, 30 Sep 2026 14:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b6HPpao9NBaPVi8xMoKdGjfV9/mKpIM0KJbvVgsOvDY=; b=wqJxsOIsC1xLOB
	oRlwqMCMDHNglrpcQftSPGinR08EJPo2FgTb49ez13QqPkW2sKWgMeSXrwEoJKKWjXUWvaOSi6KQY
	fqMv3zc8YMxQtg+eNg09u8levIgC5HCqTyZsxGUQMt1mAuzbX+zDPU6Bk4i1ue1SnuQEsFzu419SH
	XRQYYeRf72WptXrITWcAls1QnnzMcuSHZEZWYl3K09AyJSsehJ7whUfi3fpT09LpGT6xwv6vPrN3j
	6zLfq53DpO38Zg3dPV7jtmF3HNPza/PZjqLnVdaMp5iBea2uOikMOPOV3Zld1goH20AIbBSE0xPGz
	aJTHWO4G0oPOsFAOdlgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBv8Y-00000006HEF-2Ude;
	Wed, 30 Sep 2026 14:18:22 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBv88-00000006HAD-1tQN
	for linux-phy@lists.infradead.org;
	Wed, 30 Sep 2026 14:17:59 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68UE03qC2970672
	for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 14:17:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IHynm5lLmvt6eNbo8aMZmXzLWs0hWbVYmgJcOHD1D9c=; b=imuhky6HWATxTqQG
	UczYTQK1lNKfCgqlUjHzAvWkewbXt5P1GBb3lKCGJvSNwTGvciGXJvXvqcCVH+XV
	Vgrr14v7smBQzbrtwLLM49IR6nTVSWE+4KFld96DmpQuIli8H61gZXHFVfF6e88Z
	rs1IK9IS6mTqfDqdN5FtiT1pjOIl+J6+ea+XA+DgrI1bigCIurL1LgYLTTkSxKmW
	S3zpKJoFYqHPiLriAYJQBxKyDOXaNWW1uexf9wFZM+49u6HZXPm1z3mvf0Kcsv4I
	YsrVRFaxqNz6rpw3wpLz4DRL1X1cym59n/OrZdfKPnv3qUV0scqRd8naVreWaOdC
	d2rd7Q==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h0rhek7yg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 14:17:55 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-cc4c1fc9ceaso3295665a12.3
        for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 07:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790777874; x=1791382674; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IHynm5lLmvt6eNbo8aMZmXzLWs0hWbVYmgJcOHD1D9c=;
        b=bQw2XUj71emmBVKvvNs0xrWsT81XTfmh4KlwKXCqeVPwmaY5tai7Ro1wO0YQK9pGZN
         sHnMP31Osc/IUpz0VMG4LLq3TyaMsY0x58qEfiAQUv1F6vJIhJo0a4Mm/7y93DAtf2OG
         8PU2ItZPLgb/XWF8BHIioARhxFVGUqhQz8owozicGs37IZclvRxIwafYz9BQ8YPmpQa/
         c5+Dxucv7On1si2AfPakg3vFHHeNFMku+BEqu7/NahG1gUW8VFXsxHHgPr8CSyffR4Bo
         lcJ8ipbPICU1kwxbZQnOZrpxBDuNMAxUPtNjHo0ODq1LPFWaGe7g0sr+Cm2SbcW6sH5w
         TFfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790777874; x=1791382674;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IHynm5lLmvt6eNbo8aMZmXzLWs0hWbVYmgJcOHD1D9c=;
        b=Bd0fKO9kLmKAzZRDlE0kfD52mvkrZH5YDpn4EzKWWAB7jYH1VZ267G1NTznQ5+wWGc
         7Mm74Ev2gzNgNkxLhfpQnNicKJQLo/9kSVNMqy+by8UU38g35qCdgNZ8y33bkZ7TA8YU
         xiUWjsa4EswNYWqvJFfoc8XSlx/a5IeMIo5CukCvNsln5AUuB7fEPIf+fZXEwN8ch+Vw
         8V7QgvsK6V+fF3waQIWrdKPFdlJ76WlGGUvBQAtV856uSDNorusHkAvNzad8X6gSXsR0
         klN20uJkPM4O+xHiQCu13/45aighewH0mW2tWGkZX2rPLTgkFKoV4F4aKYRbaAPCF5J4
         oSmw==
X-Gm-Message-State: AFuF++ls3DFibvbPhuiWWVlYnq8C64o7Gjxlm2UujfzGSYYyMsKV+RGs
	+dtTlc+WpWvYK7HevkNky0byj1lOCkWdMOYhiP2DVJIyVMREcgC8zbg5DognsGxcryymizfCv8B
	BHcAAEqkGPICYWGXFHlyk/4zX3dwcdMaH+Gi/AkTmxzQmG8zXJJXeZ4179MjAQ6JM7c6F
X-Gm-Gg: AYBFou2U9yvRh4cTkGJojIHcolLiRWIuMLBaBbAll2DZfTSFVFY7727UrZEyFTYJjjM
	/Tz7eZVm7S3ClxtrmzSevzVBd+6Dm3BqB6Dyzww1dU6A9hUXdySBclxY4Mf+31YUkWD5f23gS9M
	bIKZriw3Xo51t7bhR9qs4KmTqFYlnI0XixCDauYuMXQvbpLqMUOyUinlqEIlokMkc0aP3cYehq/
	64Hb9vVXtX+sg1a8kk/gVUYw5z6Rszmmnea0sL0jRnq4jxbGYAxRKWLKjKwtv2HbtafK8V8zXUu
	IjGSLGQXU7cMpTXQDm0ZQTtv8BrDnh0Awu0/pid2dMX19PgBpnN4j87SjzZv9y0spwOKoHzzwiP
	Jd0U6hFXDCnlILac1JkK163wEsv1EvH+7qu+r6ZxGzz+aYtVMktRAR9gbHqzrrc4=
X-Received: by 2002:a05:6a20:9c17:b0:3dd:e2e3:30fc with SMTP id adf61e73a8af0-3de9e7ad978mr1665744637.49.1790777874454;
        Wed, 30 Sep 2026 07:17:54 -0700 (PDT)
X-Received: by 2002:a05:6a20:9c17:b0:3dd:e2e3:30fc with SMTP id adf61e73a8af0-3de9e7ad978mr1665719637.49.1790777873995;
        Wed, 30 Sep 2026 07:17:53 -0700 (PDT)
Received: from [192.168.1.6] ([117.143.161.217])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cc7d9f160b7sm1040104a12.3.2026.09.30.07.17.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2026 07:17:53 -0700 (PDT)
Message-ID: <dd0ddd6b-f2a3-4f10-9baf-7420e66d6a5d@oss.qualcomm.com>
Date: Wed, 30 Sep 2026 22:17:46 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v17 09/11] arm64: dts: qcom: kaanapali: Add CAMSS and
 CSIPHY block definitions
To: sashiko-reviews@lists.linux.dev
Cc: linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org,
        media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org,
        devicetree@vger.kernel.org, olteanv@gmail.com
References: <20260928-kaanapali-camss-v17-0-dcf3fd37f76c@oss.qualcomm.com>
 <20260928-kaanapali-camss-v17-9-dcf3fd37f76c@oss.qualcomm.com>
 <20260929061112.51F2C1F000FF@smtp.kernel.org>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <20260929061112.51F2C1F000FF@smtp.kernel.org>
X-Proofpoint-GUID: 4Ca9asEaVEI_Iger9-mocu0Yo8nNfW4L
X-Proofpoint-ORIG-GUID: 4Ca9asEaVEI_Iger9-mocu0Yo8nNfW4L
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTMwMDA1NiBTYWx0ZWRfX94RWUlv7Z9lu
 q1Ck+HhOhHS4X5Roe8HX+7qWPD+XR0uRaCWA18IAT/t1lmBmChahpRga6FJQ4Ib1Qoshzcx6k3m
 wG3AbV2JrAYoZV7tDXmRkvPyPTmX5SyCKPEJR9hRRm0d17OnqfS2XKrGtlzyXfnKB0VlA1ZmdXL
 yrAl4edA8GcqZfwg52AxTCslJV+whWiE0yAZdj9TRly72IUYp5W7KfLJp8tF6llEe4CYZ/wpjCa
 PgFJvXSokzLFFf4exUz1aJLKF+5XmtMKDd4rWwQXq1hpcedKAUICzTfvxpjmNym4vCTdBggd4k+
 CokHD8zQxSyxAQnM6mHORRgRtreO95pDr3XxRgjnjSANH+j7p2pl1zadkjWroT0C+15tFf7L3/K
 EjvWeb6YKclRk5PY10P+7vwNAm+/kJ6nQLPR539KU9FrCsHinZ7Zb9wBZSE7R0FgkQalImTx2FL
 LLrdpDm/0Ih3wle+jiQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTMwMDA1NiBTYWx0ZWRfXx0llyU/yAGiu
 p6mSzU7kDkUD+Eglju+CGO3YXSbNaJVw4eQmtEC98oAn4gJOAexhgwu+o2cf1JGnUYXUnXTeC6Q
 hy5IEVP/tDkGOQcf1qIJX5aC4xrswqc=
X-Authority-Analysis: v=2.4 cv=Tu1zFzXh c=1 sm=1 tr=0 ts=6abd1a13 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=K/RrOd38U9TixX+j9hIN8g==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=aJNJXID8IE6Oa3qSs_0A:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-30_03,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 malwarescore=0 suspectscore=0 phishscore=0
 lowpriorityscore=0 adultscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609300056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_071756_712921_3E446B52 
X-CRM114-Status: GOOD (  16.79  )
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

On 9/29/2026 2:11 PM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Medium] dts: missing #phy-cells in CSIPHY nodes breaks phy lookup
> --
> 
> commit 0d5dc943d2ac26c65efdf11a56970db1bd7ff6f9
> Author: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> 
> arm64: dts: qcom: kaanapali: Add CAMSS and CSIPHY block definitions
> 
> This commit adds device tree nodes for the CAMSS and CSIPHY blocks on the
> Kaanapali platform. These definitions enable camera pipelines to be configured
> and used by board-specific device trees.
> 
>> diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
>> index 3e63e62251089..7a80438bde570 100644
>> --- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
> 
> [ ... ]
> 
>> @@ -3595,6 +3596,307 @@ usb_dp_qmpphy_dp_in: endpoint {
>>   			};
>>   		};
>>   
>> +		camss: isp@9253000 {
> 
> [ ... ]
> 
>> +		csiphy0: phy@9523000 {
>> +			compatible = "qcom,kaanapali-csi2-phy";
>> +			reg = <0x0 0x09523000 0x0 0x2000>;
> 
> [Severity: Medium]
> Does this node need a #phy-cells property? The generic PHY framework requires
> this for consumers to successfully probe.
> 
> The qcom,kaanapali-csi2-phy compatible binds to a generic PHY provider via
> devm_of_phy_provider_register(dev, of_phy_simple_xlate). When a consumer
> calls phy_get(), the PHY core invokes of_parse_phandle_with_args() to parse
> the reference.
> 
> Without #phy-cells = <0>; in this and the other csiphy nodes (csiphy0 through
> csiphy5) in arch/arm64/boot/dts/qcom/kaanapali.dtsi, the translation will fail,
> leaving the consumer devices non-functional.
> 
>> +
>> +			clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
>> +				 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
>> +				 <&camcc CAM_CC_CORE_AHB_CLK>;
> 
> [ ... ]
> 

This node style aligns with the x1e80100 example:
https://lore.kernel.org/all/20260917-x1e-camss-csi2-phy-dtsi-v7-4-1a63eb35838b@linaro.org/

Best Regards,
Hangxiang

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
