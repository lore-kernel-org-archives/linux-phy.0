Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C903AC87FD1
	for <linux-phy@archiver.kernel.org>; Mon, 28 Jul 2025 08:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wo/kHbOVpWW5F4wqWeIcm90gSE3ypNJhyCCNw7EW5iQ=; b=apFJWcf2pgwFeB
	iiIzXTls6x0kTbC+IhAI/koomdCqV8/XO0dcuI3wooroQvwdfGgSIlEmKeaUv7rWt61pV/7weVhTO
	ZMXRNkXfmfE/grTMZQcvH8MG6O5TXskT+U7ZnSIfWkHRVKGXfgpUuIb/oG0FVsKEbggUq3YMqgEJz
	kYd7fqE0lUS8OUsUB1cdpqufqaEvzg+JenBDtT/agddumE5V/UKkK/gVs8snZaL4LE2MBvgeJ8G+v
	70lMnGqiJ8QxPlmAfiRXXQ4Xk8BWryECtypLCWmTXZIFj8j/ujZgiot5UbiQ1JH3+Ri4c/KomyEup
	b/FHQHhAm+UKowEkrc/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugJ87-0000000DxwZ-1Vmh;
	Mon, 28 Jul 2025 08:22:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugJ5R-0000000DxTJ-13fO
	for linux-phy@lists.infradead.org;
	Mon, 28 Jul 2025 08:19:58 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56S4rXqx019703
	for <linux-phy@lists.infradead.org>; Mon, 28 Jul 2025 08:19:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c3/V22c4H9/4N87ToxYjpj2YTnx67TDaYm5Xeu+qWco=; b=ZqJ3vKw/3GvY4XkR
	u3CP1JJjp9JwcIxipYoHGHzZEbT+MvMBKeBaTicf7yJuUihKYUhTyE2SeRM0bA4i
	hht87B7LURdJ1xM0YJ+76Xn1V7YNMBA8ZTDupifYtDmK4sTM6vw+pZAVjHfwLRuJ
	sJQzQXG79WLFWma44upEaDxFSrKYEIhduEUkGSbeAftU1HlXVq+Bk30iF+YV7wQx
	XmN3ssE54IOxsp45/O1nmgVeLCoXXVMuF/t0lkWiDan60me4LLzjz7+wVxGsRyPU
	2ycHzt++gelNTdIQUJe3wRptMKuSZ0kwRV2IBn38EQg3yrmTG3+uR3+++n3PAVZG
	K/RKfg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484r6qkqud-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 28 Jul 2025 08:19:55 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-748f569321eso547991b3a.0
        for <linux-phy@lists.infradead.org>; Mon, 28 Jul 2025 01:19:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753690794; x=1754295594;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=c3/V22c4H9/4N87ToxYjpj2YTnx67TDaYm5Xeu+qWco=;
        b=LUP+8sSDkTgCxg7TaIpj8g+apQOlR03bsrhNUu/VSIAbSUSXkH8DZDyz9CA+L3VcXv
         crsEiY0K2XrXbVY5bL8hJTfan9waWxxHVSTsHGOpCkQsowCPYCGk0iw7PGdGwxf4gRYT
         aDB3mG9elxae7VfD7feo78I3aiQhyzzPLcggXnRQTNqA/DFv8EtTM4/bSj4eiCmFoVEr
         xsMNoGH/E0oVQzpOjRQY/HXN74jbowpIr7rGa72vmOzJKPR+jDK4z7u9IAjokCUqUXsd
         P0SnTMTpgctqx/wy5RpZ/Nqs4tIwD0MCZA5he9vKubMeUgOWzLMmBYVn7bGsCikQRFj0
         J1Jg==
X-Forwarded-Encrypted: i=1; AJvYcCWWpDG6EpDeLaKL8VResN+CO9/sAJjRq0wQjA3v9LcV7LWQcY9trRXfRxdkTpD8lJvtNqR/kJVxUoQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YwpaHVmkAjF5oWDv6o4Yn8qJ49wLWL8GkkAu808sJCUv+7jWaDA
	ZG9jgvzLoEWzUbQoTlVU4dwiFj2bQ5w8lzWa0kR1mbvd6+hswMnfKo74QcTCDczNnCnX4JB/J/i
	IiWHi1CMjxH5BeQODLcjTr6iWZAwnybg5DiaLx8fEELKeh9sdv9VAvs+xx5om1wFG/8fE
X-Gm-Gg: ASbGncsA4utnB2nXeT0FuqLn7KyKRDumj/8qEGk+x/xfXIUmEMEZDfvr4VfSfVnRl5B
	e0A3+FwYH9T+Tfy4pkSomhxn4Tbnh6vIXNM25tKNZ6z4opwfJPVZaSa4RMvwGM+kPTyWuUvye0h
	84X+/Apgo07GOrBIocjD7har4xDZsJIDFsxF8rne1v2QhVHz13Xvy5GS0an0sASs91Bxvh9jb2Q
	knrP+6O8wG6sHTByL/QlJFg8nQSRc6sNwGMPqnB4pyxBMibWB63SIUM1w+VViX9enkLXpK6UQMZ
	UapXpup+xzcDy+T2rAk6uZd8U7ApCNXCIYG1ccpbUkCLezUJDJft2C2feG4+PyOYaPiGSyrT9NQ
	WEEf0OddmVc2U75SW9sOAvCs=
X-Received: by 2002:a17:902:ea0d:b0:240:11be:4dbe with SMTP id d9443c01a7336-24011be58b5mr24214705ad.8.1753690794470;
        Mon, 28 Jul 2025 01:19:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGBHlvf/+jz4Co0OGrxgZgJllWx8x018fZVsC0zcR7Ey8G6AtlwbI1UqIOOzans4FRj4G1N0A==
X-Received: by 2002:a17:902:ea0d:b0:240:11be:4dbe with SMTP id d9443c01a7336-24011be58b5mr24214525ad.8.1753690793917;
        Mon, 28 Jul 2025 01:19:53 -0700 (PDT)
Received: from [10.133.33.112] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23ffdd687aesm28379815ad.67.2025.07.28.01.19.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jul 2025 01:19:53 -0700 (PDT)
Message-ID: <c3f191f1-1b83-4284-b164-64c5b3e3fd43@oss.qualcomm.com>
Date: Mon, 28 Jul 2025 16:19:44 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 12/13] drm/msm/dp: Add DisplayPort support for QCS615
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        fange.zhang@oss.qualcomm.com, quic_lliu6@quicinc.com,
        quic_yongmou@quicinc.com
References: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
 <20250722-add-displayport-support-for-qcs615-platform-v2-12-42b4037171f8@oss.qualcomm.com>
 <bca68e7a-cb36-4903-bde9-15cb1945c71e@kernel.org>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <bca68e7a-cb36-4903-bde9-15cb1945c71e@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI4MDA2MCBTYWx0ZWRfX5JE1MPBjObIO
 +G2AzVUw8A4IuiecbzVN8c6TEUhR4fNrr9K8SOERcQWlO2Ma8HdWxeKg2yGLW36yL5PJhSVUI11
 NqXuc4Uq+9kd9z/yz+qI+wW4+/0ELvfxyJhr1cT2R+QLnn1kl8fCpa+g9FndZubHVbcDrcmRyCI
 Tk3rYjpQzI1orbFrR5T78QgOkHWQL4bDcVtS1GpmWBcGeOO2cMcAF7e5E5WdPI2JqK5VTpBa/Ts
 o4FtZdKrYbcq//+xlkUySN/QfCu9OuiFSRhgDYaa1/tYPuUDWOJpJ+Ky+zsbyhjiOaUmjSApq/x
 9U+5Z1QNKBbWe+GDSLjEFCAiFJRWti6A16kYcXy76fYmupfd/MBlWInZ6Zy2B6nyllXYNM9Gbuq
 gkKXhWjzF5I5T8PbJYLqstyZWUd/fU17Y6Fry2SFmTM7LRDKbr8oXt9mIGuZxbe801Dq1d9b
X-Proofpoint-ORIG-GUID: 64XjWxcvgks27r434wm3plLSJGaynNbe
X-Authority-Analysis: v=2.4 cv=ea89f6EH c=1 sm=1 tr=0 ts=688732ab cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=E4FQgNMW2-BcOtG67-8A:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 64XjWxcvgks27r434wm3plLSJGaynNbe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-28_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0 phishscore=0
 malwarescore=0 suspectscore=0 bulkscore=0 adultscore=0 clxscore=1015
 spamscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507280060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250728_011957_310364_D2D2B940 
X-CRM114-Status: GOOD (  15.77  )
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


On 7/22/2025 5:21 PM, Krzysztof Kozlowski wrote:
> On 22/07/2025 09:22, Xiangxu Yin wrote:
>> The Qualcomm QCS615 platform comes with a DisplayPort controller use the
>> same base offset as sc7180. add support for this in DP driver.
>>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  drivers/gpu/drm/msm/dp/dp_display.c | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
>> index d87d47cc7ec3eb757ac192c411000bc50b824c59..ddb22b50490035779904d4cab20e2fee7e0f9657 100644
>> --- a/drivers/gpu/drm/msm/dp/dp_display.c
>> +++ b/drivers/gpu/drm/msm/dp/dp_display.c
>> @@ -196,6 +196,7 @@ static const struct of_device_id msm_dp_dt_match[] = {
>>  	{ .compatible = "qcom,sc8280xp-dp", .data = &msm_dp_desc_sc8280xp },
>>  	{ .compatible = "qcom,sc8280xp-edp", .data = &msm_dp_desc_sc8280xp },
>>  	{ .compatible = "qcom,sdm845-dp", .data = &msm_dp_desc_sdm845 },
>> +	{ .compatible = "qcom,sm6150-dp", .data = &msm_dp_desc_sc7180 },
>
> So devices are compatible? Why are you adding this entry instead of
> expressing compatibility?
SM6150 uses the same DP driver configuration as SC7180 via msm_dp_desc_sc7180, but its hardware lacks features like HBR3.
Implicitly relying on msm_dp_desc_sc7180 may cause compatibility issues for SM6150 if the msm_dp_desc is extended in the future.
This is consistent with how other SoCs like SM8350 are handled.
> Best regards,
> Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
