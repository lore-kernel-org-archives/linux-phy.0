Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 585DFD167F3
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jan 2026 09:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1bjZPX29GvagfwoHD6FX6nzBu1q5HoaRYEYG6D+w8ak=; b=wXJmMoblrvmKvY
	cc0uc9YK3wQFbDHv4TIuTa9GJ/sR01d1ZYFkMHFZzixtSq+Nc21EOHsa/XAV1iqcmXrfM2pwxivqw
	zFUn1SXmAMsmdJ5uk7MXNwR5Z+9Hjq9cyvJR3LcT5Tpoh/yxZCNInH6AQg3Baya+POA19ahX+/QOP
	yNUSFMPw48rng7estxV6W+1iehyKF7TuxHQpaUIDSYNGMeR9fwW4y/lgWboHJ/+hzdQTVw5jVM0zk
	Z11F6tOoOcZ4ymlRXqTo202/hl4AgKBYnW7DSH6/Mv+UPAlLQVv4R7zDSbB06U9Ti5flZTrKU067R
	v8KzVpc/zWE1G8NiRlbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve9Gi-000000024kc-33SO;
	Fri, 09 Jan 2026 09:58:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve9Gh-000000024kN-1JxF
	for linux-phy@bombadil.infradead.org;
	Fri, 09 Jan 2026 09:58:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=+6GsV1dZl9kT6hAIcgcGDP9q3jtz6hmBU4iyqq4JbUw=; b=MpR40NuTAhnaW6oQQHIrOtKQNm
	As+crVtmlBzqLkeVRG2QsA5DrYbhPshG79/jsYvjCpCv2xfFYSqHSbhlfrzo/3AX22q9YzNejKWZX
	aeLhQWW6FtipTjMbdy5XSX+wT5mrVXbdiYUdCQlO/Nitfwo9rshIoRR+z67T75umatJ0OTpA13cbs
	pv8+IAXdSYxppPreHslsGRtzdkUMH695Ak4n3SC/Yg226exIerJaRhqZ6JY9GNj+73d2G1l8k4GEA
	+OQCKW77K03vezxPyxuEQa5sjcPUjCu2njeQg0CSNWSJsQmsqT6FoJms5JbnVmiOKsQCWzu/s7nmj
	SOr2rZYA==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve9Gd-0000000ExEQ-38aV
	for linux-phy@lists.infradead.org;
	Fri, 09 Jan 2026 09:58:54 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60987mlS3625832
	for <linux-phy@lists.infradead.org>; Fri, 9 Jan 2026 09:58:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+6GsV1dZl9kT6hAIcgcGDP9q3jtz6hmBU4iyqq4JbUw=; b=nbEMBRmbowbFIPrz
	LxLtlsDhO3Nko65fxamFApMmkJMr9DFazbkvVpDaAPrjon+BVwBbPNkvKLGcJXG7
	U34k75zv7tNcJgXthddZ2o/ubrp7bV4Au1sGif3KXRLQjGjfuPHALpLTXXy1lMha
	/YZvW4FX6b0Ipr6E8rDaLqhIBh7K7T7/MmSl2OTOFfuB/u6ldq+7VX+6BXdIZ32P
	tmuObfPVE0q7YzL0NUDys0qxqRjG3A7Wh4whHAZCvhOqTeh+NP7L5yqrH5cyM0sA
	E0mmN/Zd0vY9Uu34VbbppXr5txc3b2VqnYC95D5CH8FgRlOQ7cPxXVAuL7EjnTUJ
	fzYTPQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjj8j27dj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 09:58:47 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee23b6b6fdso10532351cf.0
        for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 01:58:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767952727; x=1768557527; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+6GsV1dZl9kT6hAIcgcGDP9q3jtz6hmBU4iyqq4JbUw=;
        b=R3BYa6I93tt/rfs/rtIBDysPnP04VktVrQJfZmwZk1a2qLWyDTPs3bdmDUGb2WsCb0
         osG5p5qgBxK2ThLtlPz4zAEINnpTQakaOXOeNSCvHD/3FYEi6KhG5a8uaQB+IVz8yH7h
         WZX1G/L1HnQ0EIOEsQKD57OeEAVmAcTWbplK4EswELeD9hhSdaMPQkxssEIn85Twhmyy
         rCwmFW5MUZ7cghPdTNIzzFVVxnZIQW2jW7C8VZcEOi60vfxfBYRtTccV+joJg5WvSLQc
         cNtYB+9jr+zy47k9zfGWGRkR9QB3lpjbBQz9HqlNRyiubPkJoqrZHeaZMb09GE0OwpgE
         iyMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767952727; x=1768557527;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+6GsV1dZl9kT6hAIcgcGDP9q3jtz6hmBU4iyqq4JbUw=;
        b=BWzI9feRmuyPonpZso49bLueMjy51TpMx5L7q78A2we9jIgGLvCwv8oPWy4VdRmlAS
         BsnuXE0KPrhL8v1P6+OMQvJ+TsL/LkA6+gQvuLDK0QGy6xSHdUtpSdq24cHafEOr+/nD
         6aLjnSoBI7wARfA9LMogVSeMKdsofDZPeJIbewBFBZqQ8zSFhnP6qu6tabxfCi7zcmw4
         b9qdHrf8Vea3vB43ATOH6RzWNkxI3dZCyYoPrrqXo8kNaTu5fA2FnSiKYeywLaBAo3EU
         GEbS72t2RUHdBb6ZrCkpZFbc5vFdWqaLsWbOWq0n11ircM6dh6vwG6LFMJTmTIo9523i
         hUQA==
X-Forwarded-Encrypted: i=1; AJvYcCUnJjwv1kT9F0luA6qQrbMGiLxJlEcG361f8CbWVOJCvkAp+S/Un876HWpXqbsPcO6gRhVck+2Tvdo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxUm4kqc8Xqd/A5vy22H9ZgWvR6GkEejQ4tWBGGmINYRhMY649c
	ZBHJn6IqNQ2KiVRKF1XTN3NdcyiQeLB9CTXm/3YpevsfDQCwsHoFFKT9VdzGIS0NDdJxXivoIjc
	LLIPtVzIQbEe0PieBIbrNLyCas7kS9Hmud4cDP+iY5FoimJkmU8H8RdiPt64q5cuu1xod
X-Gm-Gg: AY/fxX4Xt8ekErR7mEabDfLEp59hqdpo1zHv3Ge3Um2SfRXoy9L+RH8Kqd3hdW+G9US
	A35ak8BoH/JJERELRRYOWuycQQyjqvNqmHX/EDDbNmrBIhy/n/gx7oHNjITzA7PPt1anCZd+jdh
	mzxdVoR8bCCQz7+jMQmaJmVRVpk14Y+PAgOo3fw/XqxbX/d2RB/8HJ9PCTNMlTRGcdWT1el0VVH
	JDq8b3M0bOfiFISHtvSSIJdo24FJ9MSB5LuV1Tcpzw1bDIcsKKJ2BBx1XjrlZ7CCH9x6pGgH1Nt
	5Gko9AntFdsImP6RZg/9ioqRJ3fwd6gOTI/VNbR6RMFo6p4ypyZYxBDHmMgw1E3v8V1M8GBrHbn
	n7bYB8ymwR3T/jcJE9YUiMSQ78oEesSYwOk2alzDnyPNC8ScSXVlfE2SCKeMEjE0LeeQ=
X-Received: by 2002:a05:622a:2cb:b0:4f1:b580:fba8 with SMTP id d75a77b69052e-4ffb48d3b42mr101362391cf.3.1767952726961;
        Fri, 09 Jan 2026 01:58:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG8E29q2sylMSnFtakEPUUAJV/nWkQMkdMPAuEzQOehQkivxBC9D4DqYRshBbwS0yUI9YREWg==
X-Received: by 2002:a05:622a:2cb:b0:4f1:b580:fba8 with SMTP id d75a77b69052e-4ffb48d3b42mr101362231cf.3.1767952726379;
        Fri, 09 Jan 2026 01:58:46 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a564e05sm1099326566b.65.2026.01.09.01.58.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 01:58:45 -0800 (PST)
Message-ID: <5187dc04-a1a1-4537-9c80-aaa100dd0033@oss.qualcomm.com>
Date: Fri, 9 Jan 2026 10:58:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/msm/dp: Correct LeMans/Monaco DP phy Swing/Emphasis
 setting
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260109-klm_dpphy-v1-1-a6b6abe382de@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260109-klm_dpphy-v1-1-a6b6abe382de@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA3MSBTYWx0ZWRfX1mKUo9NXl3p8
 jAnWJkbVGPpb9NA0rc9/f/ay9TPUIrufTXNuh7vS0nlc598P4qc84bloQ3AMGm9UKT/fB/ygqq0
 uWhMUPYmu16wsaD7otpKFCl+Ael3rgE0C9X7H1o0eacFe48CY2sXwibXTkiMSocLQ9XDZQ7MCMb
 h4Tw+2CGe2xLEzZYRNqUhtUzUBSFRVtyilRiN9VQdlSAQ3A0hKLC1Z7Mn/wzi/VTR6W49V9RTh6
 QDvRR/6YKaUHVInGWPRK0fbrbZLhIZWfTwh9clrD/H3Dsn2DZun5UpQMRBU4nwhoZmEAK3ZimEk
 7YLTEBXwZwPxiWUxcWTBGEHrF+dpV+ijJAlldgSuYIgBAdPsf1ErG8xX3xFHX5xnn0YHcWmSOC3
 Vu4EoI7sA19BaKfjNpTu/VRvhM7slcVqO41Az+fQFMWRUF5WOfy6X5ia739yQuGcRGGoBIlQjLR
 GDWK4syG8d9Yjs9lDoQ==
X-Authority-Analysis: v=2.4 cv=JIs2csKb c=1 sm=1 tr=0 ts=6960d157 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=QeOGaa-XQxNk_RVdTJwA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: IvpwPTL1BgcC_bzcsWmGREWjBwYZvoS8
X-Proofpoint-ORIG-GUID: IvpwPTL1BgcC_bzcsWmGREWjBwYZvoS8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_03,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 priorityscore=1501 lowpriorityscore=0
 impostorscore=0 bulkscore=0 adultscore=0 spamscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601090071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_095852_399077_E91703A9 
X-CRM114-Status: GOOD (  16.23  )
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

On 1/9/26 9:30 AM, Yongxing Mou wrote:
> Currently, the LeMans/Monaco DP PHY operates in DP mode rather than eDP
> mode. Per the PHY HPG, the Swing and Emphasis settings have been corrected
> to the appropriate DP-mode values.
> 
> Additionally, the HPG specifies that the LDO value should be set to 0 when
> in DP mode. These misconfigurations can lead to link training failures on
> certain dongles.
> 
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 27 ++++++++++++++++++++++++---
>  1 file changed, 24 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index 13feab99feec..5b0d774bd715 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -122,6 +122,13 @@ static const u8 dp_swing_hbr_rbr[4][4] = {
>  	{ 0x1f, 0xff, 0xff, 0xff }
>  };
>  
> +static const u8 dp_swing_hbr_rbr_v1[4][4] = {
> +	{ 0x07, 0x0f, 0x16, 0x1f },
> +	{ 0x11, 0x1e, 0x1f, 0xff },
> +	{ 0x16, 0x1f, 0xff, 0xff },
> +	{ 0x1f, 0xff, 0xff, 0xff }
> +};

For these platforms, I see 4 tables of settings:

(Low/High) Swing/Pre-em for (Low/High) HBR

None of them exactly match your change 

[...]

> -	ldo_config = edp->is_edp ? 0x0 : 0x1;
> +	ldo_config = !edp->is_edp ? 0x0 : 0x1;

You'll notice that this is further wrong, because for eDP, it should be
0x81 at low-swing-high-HBR and 0xc1 at low-swing-low-HBR, and 0 at both
cases of high-swing

Please split the LDO change into a separate commit because it touches
more platforms

Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
