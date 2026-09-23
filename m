Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E8D2C982EA
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 10:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hkvvx5rdvMYLiV4NFraHQFHwjUlwZ2vS9rmYiT0UoYQ=; b=Z0pBn8KGftQNz3
	eImFZC7Flpkwcp9rN5Wd/IORl0xSS0xLtI8JaIIR7cAbIyXqicjTVDjWQkJNsDOP4gfygM7+j0fqt
	QZdrVY6x6vJtL2083yzVDPKPan7eP5Qi0xExx0cB/D1jY/ppkpdloqSsbJMx1HNi9X1YbXp4l9Nw/
	yG8BuR4Db8GOWtptvQhHhFBQLE5T5KpHZDZtdo55OIjm94s8sJUmJ1LrNHhjtLZjWO4U7zmzo9J0E
	iNEfkqvkyq810TA2it1F2coh1yW3mJH4ihyyii+RpF6DJrZ8Bo+DeLsvZZMSuac7f24KVC/mzYCyO
	IZ0CMk9PpFjodzKWekxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9K2h-00000007sHS-28Xa;
	Wed, 23 Sep 2026 10:17:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9K2e-00000007sGt-0puj
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 10:17:34 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68NA38jh3209656
	for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 10:17:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CkYoHcJPz+rso7SJkc9SF8LO31/cRTOGFpw9v5udueA=; b=GstYEKl6e7NVVYY/
	vDZMKaqplJZJUpuhDcZFPcVsn98JNSCcXJQ+yzXcC10FA+aD2l0ljinl4rWoxBg7
	O9d6zz5P8w73JjZL9R7tTRFhsaWR/l6YJ/3IG+VbSnZGfkLsywJgCZ7bN9ViBndn
	ZLvYNQCH5iKZg3stQtfGkf1DO6Sdi7OJemNLgghkyHX1jhxDrWNQ79+GQROUveoz
	zGPWM4oMCuOUFWfLgHkBagUmP00kIcvSFQCOCdZQtUwkf3vVHNWxtzONGxuQjsQM
	0ARkpPe18yWd7vg7WN0EkPz5dRjjmND+jBLkgs1BGKC9DvY48Pf+bD0VYhJuD+Q9
	Gv39eQ==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gv78n1fa1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 10:17:30 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-32850005b6bso902917eec.0
        for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 03:17:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790158649; x=1790763449; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CkYoHcJPz+rso7SJkc9SF8LO31/cRTOGFpw9v5udueA=;
        b=CS04pUrLjxrDLMPGcK3QHNHqVxl8c2jn+YGMTJNg1YESEnt+4wgm4/n+w2YXWVXVmH
         CaboUt6yNubTPP54+K5g7NNKqgWx4DSQHl5LgQT6kCsMDjWeDCmACS3ML34j8xc2YpVi
         Gky5WA1gzCi9Ai9MPONzer13oLkYQa+5lrvZXXlGdrVKprsIMbY7z9N1kx5ztH1BFmRy
         XsWS3rWJb3m3kyFHmobDvb9qmTERfRNShmaTXMptyuJbZI81dcEz4LtwTrFDnQ9IlyZr
         qnk2notjBJ9vqEDK24KW+n1poaNtrVY509iiYsJHG5ltQ2DVNBM/ZNraZwnenYsLeRn5
         Uj9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790158649; x=1790763449;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=CkYoHcJPz+rso7SJkc9SF8LO31/cRTOGFpw9v5udueA=;
        b=CZvvydk9ChCZDLDNVnFoR3VsWHUoKqwZDN7jCp7aPPQ4+tqdYTeRgGqXQ16/J1r7CW
         Cb5coBgGKqTxlEC6CgT6CO38ctdQ4HISujen6S2MucCQpRhKFay9sMY0l70QSmNg+w6F
         peGyfMXB5TjYbozSZOOZqbCbHgFJVCQzyCKaYcb3tXPUrlaYk5uIFCx3T2/wzBt22Q2m
         lO0omAPQmh2b/ZgTRCJS+bX/iq+oIttBfXdEuNx35qxjre10vP8FuIb/0ZhlH9HTMCeN
         mWbhpfoMrT65MvAvBcftjK4BUNLH2pcsyosiaZstVxVVGKdkuSUCzk46JW0zdBSe0jEX
         paMA==
X-Forwarded-Encrypted: i=1; AKwUvBwP96NsUAogzN936P85bcRqNEuF6lTI1iYm/SNA0DfrUIdjreqf4+8cxYTBbT+aBnPaP7ufslVJR8o=@lists.infradead.org
X-Gm-Message-State: AFuF++lCZNdv1ffjBDo/BlPd1M3lgLWeCyDbihqo9HFztxaQah4tJmbL
	dCL0cdsikCVszZxIXzW2BVtIfQdsPFyHT57nLZhsTagwuvNoJN0nzT3DNF0Ja5z//jkkI7Sm4AE
	clj7ZXWI4M/N7UOa8fnLeUjJ7H399ZGnx7P57r4puPo9qrgrX3KAxW2bES0JmRf+dHIUh
X-Gm-Gg: AYBFou3HTlQx7RvAnhEZn55/4eVpRKxa23AaECKGPtwLahRK3t+hzVNNHxr+r4L3WIR
	yZcE10aZziqYk4koMYyljp+TlQDEEswTgFKpxIpDetfRLu8APTUmX2Yn7iCpGlLdbVujR4jIafD
	DIDuCEGemxeCXRsVnar7C2OWBVa3exYRwQzv9wJ3Dmfe9KcNrt+o1JruB8ifqiKlIwP/s5pgba2
	qgRuwRtmia4KHVIQh7ocEyWo657RBqqATQgh0AztdacnRsgZkW7Ozu4Zn+H1Bx2J/h1S4BO+CDh
	6H+WOO7c/LKAFV7++UL7DNE+c5slxF3L2bWwUDivkvWprFDOWhJBmRLmsUYetQkR6UfIka9ZdbA
	pYSMXFwVgkNh/DeD/wTX804+XJTMQ
X-Received: by 2002:a05:7300:b2a6:b0:33b:afc9:caa9 with SMTP id 5a478bee46e88-33e8e2b7ddfmr2231499eec.38.1790158648969;
        Wed, 23 Sep 2026 03:17:28 -0700 (PDT)
X-Received: by 2002:a05:7300:b2a6:b0:33b:afc9:caa9 with SMTP id 5a478bee46e88-33e8e2b7ddfmr2231455eec.38.1790158648295;
        Wed, 23 Sep 2026 03:17:28 -0700 (PDT)
Received: from [10.218.7.34] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33e939fdd91sm5885830eec.4.2026.09.23.03.17.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Sep 2026 03:17:27 -0700 (PDT)
Message-ID: <ee9c9173-96ac-4507-8b42-3cd12898bdbe@oss.qualcomm.com>
Date: Wed, 23 Sep 2026 15:47:18 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] mfd: qcom-pm8008: Add support for PM8010 PMIC
To: Lee Jones <lee@kernel.org>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Guru Das Srinagesh <linux@gurudas.dev>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mfd@lists.linux.dev,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        Dhruvin Rajpura <drajpura@qti.qualcomm.com>
References: <20260907-glymur_camss-v2-0-75f7982dc983@oss.qualcomm.com>
 <20260907-glymur_camss-v2-5-75f7982dc983@oss.qualcomm.com>
 <20260922093327.GA2308615@google.com>
Content-Language: en-US
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
In-Reply-To: <20260922093327.GA2308615@google.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIzMDA0MCBTYWx0ZWRfX8c5oBRP4cD3R
 DwtLE5andvHPxQHj8jf34y51MF+CQlzVDpH3ujlU8VoN3Vfz4liDNjesgMLazf65XP3uzcJU1qs
 YWG9FeLcjI7/aYRDCdYw4rkiypmu6qQ=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIzMDA0MCBTYWx0ZWRfX5ygIzO95B3i/
 drNV28CzX41+CHOT33I131LVws//6QGGlyFpcK5dkTNrN8O6gKO4DZDtfcIXOd1Oqa2MIUDv/R5
 czKhKh2skvgEoJ7DBX634oHyimdrgrrR41ACx1ML4TlPyUscaQKLAVVyy5aweSvWQaDByVDswBy
 s1wEMYGgFuyEHqdAddp4yTmfVqtM8Fzg+xFnjlnJ06mI62yDi4tY/6iCI06fpzuSJyvkYs07aI3
 6KTsbikZi/HSD70xyVY81s7tbxWN2pDki3NjzET5HrLS2kg9I/GKtuZ4j7ymASUWMNLc8Lbhlz1
 QW1aKAqfNqRG02nWJ7FWzW1MD9ZsMHSTEPsv6QzeiFW1dZVyd+T6QJtuGycO/wGtPWtB+yrWgzW
 LDKuUxUSx4DQgwVTNv7h4GQVSgrV8rm4iFelXb1kH1KFBV9Nz8ZHq2xlyVFnGwcAm+87Meehn5n
 eXFiBIkM7FAgam7g1rw==
X-Proofpoint-ORIG-GUID: 6J6RdeFmCpkJqd6aEfAZjw7S0cv6gdcq
X-Authority-Analysis: v=2.4 cv=aNFlOr9m c=1 sm=1 tr=0 ts=6ab3a73a cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=pTjQE-TItn96KZd9_6QA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-GUID: 6J6RdeFmCpkJqd6aEfAZjw7S0cv6gdcq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-23_04,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 spamscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 phishscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609230040
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_031733_008400_5BAC65C0 
X-CRM114-Status: GOOD (  30.04  )
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

On 9/22/2026 3:03 PM, Lee Jones wrote:
> On Mon, 07 Sep 2026, Nihal Kumar Gupta wrote:
> 
>> From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
>>
>> The PM8010 is a variant of the PM8008 PMIC with a slightly different
>> IRQ layout and MFD cells. Introduce per-variant match data (IRQ chip
>> descriptor and MFD cells) selected via the new "qcom,pm8010-i2c"
>> compatible string, and support probing without an interrupt line by
>> falling back to a reduced set of MFD cells when the client has no IRQ
>> assigned.
>>
>> Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
>> Signed-off-by: Dhruvin Rajpura <drajpura@qti.qualcomm.com>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
> 
> Who are all of these people?
> 
> Did they all work on this?  If so, where are their Co-developed-bys?
> 

Hi Lee,

I had split out the PM8010 support into a separate series, which you
have now commented on:
https://lore.kernel.org/all/20260918-pm8010_i2c_support-v1-0-de33d78fad9d@oss.qualcomm.com/.

I missed mentioning it earlier in the mail threads on this series,
sorry about that.

I have fixed up the attributions in that series. I have also noted
your comments on this patch and I'll address them in the next version
of the above series.

>> ---
>>  drivers/mfd/qcom-pm8008.c | 140 ++++++++++++++++++++++++++++++++++++----------
>>  1 file changed, 112 insertions(+), 28 deletions(-)
>>
>> diff --git a/drivers/mfd/qcom-pm8008.c b/drivers/mfd/qcom-pm8008.c
>> index 60204cc9a2dc60cc1fe1b64030f5d803100e7874..28532cef7908ef3409a3dfc0779aae3b1a3885b9 100644
>> --- a/drivers/mfd/qcom-pm8008.c
>> +++ b/drivers/mfd/qcom-pm8008.c
>> @@ -34,6 +34,7 @@ enum {
>>  	PM8008_GPIO1,
>>  	PM8008_GPIO2,
>>  	PM8008_NUM_PERIPHS,
>> +	PM8010_NUM_PERIPHS = 2,

....

>>  
>>  static const struct mfd_cell pm8008_cells[] = {
>>  	MFD_CELL_NAME("pm8008-regulator"),
>> -	MFD_CELL_RES("qpnp-temp-alarm", pm8008_temp_res),
>> +	MFD_CELL_RES("spmi-temp-alarm", pm8008_temp_res),
> 
> Why is this cell being renamed from 'qpnp-temp-alarm' to 'spmi-temp-alarm'?
> There is no mention of this change in the commit log, and if intentional, it
> should be submitted in its own separate patch.

This was incorrect, it is not done in the separate PM8010
series I have sent the most recently.

> 
>>  	MFD_CELL_NAME("pm8008-gpio"),
>>  };
>>  
>> +static const struct mfd_cell pm8010_cells[] = {
>> +	MFD_CELL_NAME("pm8010-regulator"),
>> +	MFD_CELL_RES("spmi-temp-alarm", pm8008_temp_res),
>> +	MFD_CELL_NAME("pm8008-gpio"),
>> +};
>> +

...

>>  
>> +static const struct pm8008_match_data pm8008_data = {
>> +	.irq_chip_desc = &pm8008_irq_chip,
>> +	.mfd_cells = pm8008_cells,
>> +	.no_irq_mfd_cells = pm8008_no_irq_cells,
>> +	.num_mfd_cells = ARRAY_SIZE(pm8008_cells),
>> +	.no_irq_num_mfd_cells = ARRAY_SIZE(pm8008_no_irq_cells),
>> +};
>> +
>> +static const struct pm8008_match_data pm8010_data = {
>> +	.irq_chip_desc = &pm8010_irq_chip,
>> +	.mfd_cells = pm8010_cells,
>> +	.no_irq_mfd_cells = pm8010_no_irq_cells,
>> +	.num_mfd_cells = ARRAY_SIZE(pm8010_cells),
>> +	.no_irq_num_mfd_cells = ARRAY_SIZE(pm8010_no_irq_cells),
>> +};
>> +
>>  static const struct of_device_id pm8008_match[] = {
>> -	{ .compatible = "qcom,pm8008", },
>> +	{ .compatible = "qcom,pm8008", .data = &pm8008_data },
>> +	{ .compatible = "qcom,pm8010-i2c", .data = &pm8010_data },
> 
> We do not allow data from one registration mechanism (MFD) to be piped through
> another (OF).  Please pass through an enum identifier instead and select the
> cells and IRQ chip in a 'switch()' statement?  Also, why does this compatible
> carry an '-i2c' suffix when the existing device is just "qcom,pm8008"?

Yes, I'll use this method here in the next patch series.

We use "qcom,pm8010-i2c" here instead of "qcom,pm8010" because
"qcom,pm8010" is already used for PM8010 over SPMI in
Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml.

It is also mentioned in this patch in the latest series:
https://lore.kernel.org/all/20260918-pm8010_i2c_support-v1-1-de33d78fad9d@oss.qualcomm.com/.

Thanks,
Jishnu

> 
>>  	{ },
>>  };
>>  MODULE_DEVICE_TABLE(of, pm8008_match);
>>
>> -- 
>> 2.34.1
>>
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
