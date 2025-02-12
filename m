Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36353C021A5
	for <linux-phy@archiver.kernel.org>; Wed, 12 Feb 2025 12:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kmGDy5ZCO6u0T1vk6JFnZiOXY68XeheGpj44CIN2GNs=; b=bVL6uvIetbKEEI
	/WRFUWA11uDofJuFbPm/qWVNqQDqqCRwerKzu16Um6oLvvSTuKBog8/1PZLdSuTxPaNqK92xxDp8i
	5IlkUA9XSSvYmOl0dtcJlAZOkTRcqZdFEMiojwc+JXqMRBycNe1qwcg65EHXcPKZq2gFWsDO/TDN1
	+aCYay72+73TvVUZpfu4hgRgo7vPp7ygNUP9NITBgpYHPgVbbmv31A1eCMMXeRkTKqYxe/rV5b+Nq
	uVZ9u9ZPYD/Sw4YmYS759bwoM+/N9kpdGBc/3ydK+BOgv3WERpv63QPC5nP7DrN6fpHA7CcyV4eYz
	sLjo8QfxSewRwSDRT5BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiBvf-00000007MZ5-38wd;
	Wed, 12 Feb 2025 12:33:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiBtg-00000007MDA-2K7S
	for linux-phy@lists.infradead.org;
	Wed, 12 Feb 2025 12:31:22 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51C8C47f006587
	for <linux-phy@lists.infradead.org>; Wed, 12 Feb 2025 12:31:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	z9QWP7el2uTNGDTDFC9ZQXgQQlgrevRr41237WlNeGk=; b=JWXfI/ggiqNKNmS/
	YWsRJn++HeoY5nZRTzyAIfcML1aGECSLeVlvdpeX9Kl8X78XWd2PG+UUq9rbpmbH
	IFnJVocRbbLJaj4Q0FbSfs+y8kMx0cqyzSmSHqAFNORcr7QWXB7RgSkvyBIjqOAj
	mnRdsxadBh6Ul5Cy4MAdswc/egdbPZXiR7jrkv+F4B5Bl2Yn/snujutJcftTR5pL
	azAgMCtsUJGJDhDENTX7j5oB+OSW+HEPWVjuv2RTptQ9plvuf5C7EavRPowkIS5R
	topsOqGrkHNVfpkLe1MRVOEV5K+mbp64auKR49LxaBmOw7JZtENPqFELlTTFouYB
	0Js1NQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44p0gv34h9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 12 Feb 2025 12:31:18 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e448963aafso15326966d6.3
        for <linux-phy@lists.infradead.org>; Wed, 12 Feb 2025 04:31:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739363477; x=1739968277;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z9QWP7el2uTNGDTDFC9ZQXgQQlgrevRr41237WlNeGk=;
        b=ImsQE+Gk8GP9x1SQsxzmocS2wYH8P67FDyzUbQoSVxp64g3Y+l+pJnNC3fuO7hkGJu
         9cTlFWzr54pekVYMucu6TDx3TAh3g2JPqIfyyMHF33lw7AgZWVmOu28GQu5CaznK7XjP
         9duK8OFaOgh/jLCDBfVKF6K/Bvmch1oYX0qO4fUNnJcQNJix6mQBVdjumMvSbdOfexQv
         eZDrlQQSQ80OhoPkwJdZfUQxnUlvwIjoutB3UMluccHqXh20NVE+7tgoeJF0+7Asg5vR
         1jUhQm6VoB3lvuXYHvqx2U42MRXhpSQlb9BFreqHTyZu0upxRahLcBIC7IA5P7zhXNRz
         dGVg==
X-Forwarded-Encrypted: i=1; AJvYcCV+Rc1yF+rLb2MFbmmQngObcqA3lRzgkMXmXRbeoEqusNE1l/HJACy/vYs+eLeWG+E9ZkNERrVrAEA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyOmuyBj9KN8rSs4LYD9M3IyXkd9oTfaCu6kJBTxBdpU7uLyw1O
	HmY+vU1jWLakKixJ8yJ7V0eH+7gktRj9HireVxO4j91c197zwI+9/geFQhvilixwmYAJ/kRqK8x
	1muowJNmhZi6yZIHBOa1fZZa1pVQzJTnv6bxbqHeHz+SA9x+DBt7E7wwAeIYwXCEX
X-Gm-Gg: ASbGnct3+Wh4bAfqJW3hMt4m86O6sEs8viuB9eZMtLN1qPPAW77GnOfTbio5DAd4mnj
	G2tasp5ccdVLAhX5PSIlIZQtwZgMl3tN7XOmHmRqbPdMEgtQR5rheP7+XeV9Y2my+zFxJw4qj2w
	bMjDdCeLT13ZqzJHfIZRz9LkZrwAsUgHfA2/veDEu1GTRD7LlUJWZbpyviE3cb2F91jAK6+HUo3
	35Ax++YG+f9XxL7S/oomDtm4oMTBa+MhBv1IL+f2sicMNlbsOC2Yh29ID5kAa45k3pwyWn8RkYp
	mfekv4OMmJVojipxJ3f+Mh1JUwqh/kF475Vudl5k9CUPR2hRiAHolhv2wic=
X-Received: by 2002:ac8:5e12:0:b0:461:6599:b9a with SMTP id d75a77b69052e-471afed742emr15470411cf.11.1739363477350;
        Wed, 12 Feb 2025 04:31:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IErWOtL+nvjIK8RRyMck6iXi+gOM2odNA1cVHLBMNOsJmA3Eug1vozAeeSyQTd4pelT5p9Ang==
X-Received: by 2002:ac8:5e12:0:b0:461:6599:b9a with SMTP id d75a77b69052e-471afed742emr15470061cf.11.1739363476836;
        Wed, 12 Feb 2025 04:31:16 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab78aab804csm1101878666b.3.2025.02.12.04.31.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2025 04:31:16 -0800 (PST)
Message-ID: <93f1f01e-e6b4-4dc2-9485-aba168c6d88c@oss.qualcomm.com>
Date: Wed, 12 Feb 2025 13:31:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] phy: qcom: pcie: Determine has_nocsr_reset
 dynamically
To: Philipp Zabel <p.zabel@pengutronix.de>,
        Wenbin Yao <quic_wenbyao@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, dmitry.baryshkov@linaro.org, abel.vesa@linaro.org,
        quic_qianyu@quicinc.com, neil.armstrong@linaro.org,
        manivannan.sadhasivam@linaro.org, quic_devipriy@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20250211094231.1813558-1-quic_wenbyao@quicinc.com>
 <20250211094231.1813558-2-quic_wenbyao@quicinc.com>
 <6c38b6e028858662aa5d45f4a14b993860b73cc0.camel@pengutronix.de>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <6c38b6e028858662aa5d45f4a14b993860b73cc0.camel@pengutronix.de>
X-Proofpoint-ORIG-GUID: PGFHEppyK0aTpNQO1WhMyDL2PnfsvizB
X-Proofpoint-GUID: PGFHEppyK0aTpNQO1WhMyDL2PnfsvizB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-12_04,2025-02-11_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 phishscore=0
 clxscore=1015 adultscore=0 bulkscore=0 mlxscore=0 spamscore=0
 mlxlogscore=999 priorityscore=1501 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2501170000 definitions=main-2502120097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_043120_794765_28B38647 
X-CRM114-Status: GOOD (  14.32  )
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

On 11.02.2025 10:53 AM, Philipp Zabel wrote:
> On Di, 2025-02-11 at 17:42 +0800, Wenbin Yao wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> Decide the in-driver logic based on whether the nocsr reset is present
>> and defer checking the appropriateness of that to dt-bindings to save
>> on boilerplate.
>>
>> Reset controller APIs are fine consuming a nullptr, so no additional
>> checks are necessary there.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
>> Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
>> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>> ---

[...]

>>  static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
>> @@ -4203,11 +4196,14 @@ static int qmp_pcie_reset_init(struct qmp_pcie *qmp)
>>  	if (ret)
>>  		return dev_err_probe(dev, ret, "failed to get resets\n");
>>  
>> -	if (cfg->has_nocsr_reset) {
>> -		qmp->nocsr_reset = devm_reset_control_get_exclusive(dev, "phy_nocsr");
>> -		if (IS_ERR(qmp->nocsr_reset))
>> +	qmp->nocsr_reset = devm_reset_control_get_exclusive(dev, "phy_nocsr");
>> +	if (IS_ERR(qmp->nocsr_reset)) {
>> +		if (PTR_ERR(qmp->nocsr_reset) == -ENOENT ||
>> +		    PTR_ERR(qmp->nocsr_reset) == -EINVAL)
> 
> Why is -EINVAL ignored here?

If the NOCSR (partial) reset is missing, we can still assert the "full" reset
and program the hardware from the ground up. It's also needed for backwards
dt compat as not all platforms described it when originally added.

> Without this you could just use
> devm_reset_control_get_optional_exclusive(), which already turns -
> ENOENT into NULL. That seems to me the correct thing to do, as from
> driver point-of-view, this reset control is optional.

Good point, I forgot _optional_ was a thing in the reset framework

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
