Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DFB3E94108
	for <linux-phy@archiver.kernel.org>; Tue, 30 Dec 2025 09:03:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WvJrIGTpDECKem8G+xq/IoSpq+NsE99KlCO6FyZNZVw=; b=yCYN80uge7Edgt
	pAPrBZP2zcjNCRqO2Lya/R/jR1JQg7fMk7RUTO3NI68hVclbdrLBw1TKuqBfhwD8DLFDxON0OXiGG
	xdDqQ93AdPWWkkXDWwTyJq98lqJs3lbLSW514NLTxtZbwjYJAX99ARc8Kis1BAHzTC4o/HGoWS3F5
	Tg6+Q5AEarfZZEPo0OreQowtqJ0bBHrqO2MhNhpPgy24Q8d+qDW7yqHFuZPr/Mkl8Nhr9ugGs2zjG
	zKlMm0NeLw4TxpvmFH9kdMdVb7CTgnjhOZ18KHu/9ULFAxXm6Rlxq4nJvpgE4ERTTc72m0mBJqXtI
	fFOLpcrw8tF1Z6FE5VLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaVdO-00000004cSn-30xH;
	Tue, 30 Dec 2025 09:03:18 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaVdL-00000004cSI-3f0E
	for linux-phy@lists.infradead.org;
	Tue, 30 Dec 2025 09:03:16 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BU5S9lc900113
	for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 09:03:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DZ1ZUU929l28kU0e3CGefBDE6aEb96VXDtF+iVlBDlo=; b=GuHBd3YA/Jvc5Qp/
	hq/XuTVq0m0wQkwKecnV2wxcu3KmErUz1T1cqUUabjQ2dHM4MnWfxi1KW7BHNRE2
	37YQ/Kw9YEXKErrcXTSgktOMNhPaMW7RLv15yt4K0EihUGDokK7K7/DKHDXmnlxf
	XsKqidtNeGj7fWGPwCCiMfr9wx5gzfEbWIF5RTX4Og3/WoRE6WjHH7NaVLeOyWin
	0umS0myHLkf8G9HYhcqMMRiwHO6aCq2MrsB2yF9e+eJFfT1hDXdiQQ7Fy5bW73wz
	y0U7Jd+2vexuI9zyaNmanlh149ZkhRQ0hqbfVNIdmGj08cVWtIcCMz5TmddRWRId
	EV8bEA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc8ky0fhf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 09:03:15 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c1d27c65670so4964563a12.1
        for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 01:03:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767085394; x=1767690194; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DZ1ZUU929l28kU0e3CGefBDE6aEb96VXDtF+iVlBDlo=;
        b=WQTXcyDFYjb2RIiKEFR+ay52yInp0Tb2stD/UO5H+soLPRBnAKpssOvqM9ksxAWVM7
         sbMjmUWUBWM+foEyj7UNK6a9u6gEo2Z1QmBPmVjt2krBLpoLYaDbIDbqlI8jdL03wIPk
         kLQGhdafRv89PcTPo8oKVAXa5aHABsHFn+oiftXrb63Z9j8OkHKqX0i4u2XzZgDoykng
         DKTTTBnFvfPIjooXp+7h05pTAur8LOukcXO+IWGaO6DhUFaqYXcrMcv9MJ2gY5Grt1gi
         MpdUeJ3OLETr0WWxb7qDsPo+lYrXCLao+s6iboKdJTXWXL2wYFQE88n8084ZGFpQztq3
         072Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767085394; x=1767690194;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DZ1ZUU929l28kU0e3CGefBDE6aEb96VXDtF+iVlBDlo=;
        b=vXmPwKMcXd99Tqi7HRO/FPpWO+36+/LyvaZI+xjkiHIY+/XyyvEynp4zRnQ4fOFPaA
         vSuUr+PEb6qfOrt2nS8cpYIVAIhoFlBf18yuUp5+sGVRWgyaE0uOblx8TT0/RQAmR9Sr
         kM8wkOqUwNbyyBLWsMZaBmkWELR3byRV6gWZ5twZ3O/UTBHT34tKf4rmKyxA0gojQyjy
         4wV+Ei7dv6SI9a+vc//evXyLkpLLEEGTVBbfu7Y2Z6ZfVPl9Gn2Jun0oyMLwKkRhCyTg
         47X0wJHw/TmiKM4CoXMbXlgETiB6s0Nj6N5ny31xACQppZnntmGuoYGfHx6E0NRt8MjG
         iXXg==
X-Forwarded-Encrypted: i=1; AJvYcCWEwBspGPoL5okFhAmHQxwqRRPaJDrgb6jU14Kv8W+p4Pr71+moxM3FweimiDcAgNvu6gb1i/fu850=@lists.infradead.org
X-Gm-Message-State: AOJu0YyFvRsH2EA50i7RnL7+6WgCn3Lm5z/niIatSCmUJq/mdLbxhDqS
	RQYnibKCX2g8r/xwRDysph+ia+t8KHwEAHt3HYjcO7zQbTAKXhSo91KCdXUvzLOBkj1n1SHmRQ5
	tDrK25YfzpYMX2KWONIkAhhhriifqG43ATqQFCYHWM30x0xRgzGu5BopD/JwgA3LjE6i0
X-Gm-Gg: AY/fxX5weCiwOiWyW2lzhJYdhjHTHEkEDZMRuOQoN/jkpzvJKNgqen5GkCYiAarVyyp
	V6okmYLyADByffEQVaAVDga+AgGKWxGkB40Xp7iUMZe4hHYdEFxe/xKbA1QtXfCrbwDEQFwEFPL
	24weWHgllQBuUkc/IrNpzQuEa1y4le8c8ZkQRWyDE7ZJCGab2F42Fuw7/7E3Lqt08BvjloMei44
	X1iz24eB8j0rNkFDx1PccTcbl5sxBQQTAvI5xF++rEFc11BiEP95N3xZwqvLpSpDfD5uUqqo5J+
	7P6r95A6cnFJEmiZ+ORSY6sP4E/OxJOl7uAjx9iNgHgmq+X1hoxwTh0h5im05NU5Fslju39Cfu/
	p3YiP2v4ytJzaU/3J1lejpdt+qt9urh6p948lixp0Gs5UfsXSCqM=
X-Received: by 2002:a05:6a20:1588:b0:366:14b0:4b18 with SMTP id adf61e73a8af0-3769ff1a89amr34483842637.35.1767085394482;
        Tue, 30 Dec 2025 01:03:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEbAGF2db+VKOhlDQMrg8j2Qk0RrNBOlo/z6NG5BVl4tukVcG15xd/QngN7ITvfdf94rAAulg==
X-Received: by 2002:a05:6a20:1588:b0:366:14b0:4b18 with SMTP id adf61e73a8af0-3769ff1a89amr34483814637.35.1767085393974;
        Tue, 30 Dec 2025 01:03:13 -0800 (PST)
Received: from [10.217.216.105] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7961fbb9sm27338846a12.2.2025.12.30.01.03.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 01:03:13 -0800 (PST)
Message-ID: <28751331-d298-4cd6-b98a-c125e3f75eda@oss.qualcomm.com>
Date: Tue, 30 Dec 2025 14:33:07 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 3/4] arm64: dts: qcom: hamoa: Add UFS nodes for hamoa
 SoC
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, vkoul@kernel.org,
        neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, martin.petersen@oracle.com, andersson@kernel.org,
        konradybcio@kernel.org, taniya.das@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
References: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251229060642.2807165-4-pradeep.pragallapati@oss.qualcomm.com>
 <986facd7-92e7-4d29-a196-d49cd9f3d35f@oss.qualcomm.com>
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <986facd7-92e7-4d29-a196-d49cd9f3d35f@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDA4MCBTYWx0ZWRfX3lwCHWZHtoq9
 CnLUpO4u5PxUv1f16LFBy6F9ODzchsZa5qaU7B62anoTMUqp+b7qsa443UjvCIGEZNNdRvT9Pmm
 BrJubFss+IO6Fo50yHx5zTLzkwGNqED8gGSLr/0VDfYeVVPXGt5VKZ8W+tvv7CGtSMJXSm7i8Ia
 bU8Y/Cmw5SUOlPqBIgIACgHDj9ArokvGISznvLYGrymCY0VWBAllcKSXHUYTI26lav73luFGeGo
 TtGShZ40fr0ZaQDd1XdvZxrqXj9He8KsIJwnZ6Hh+vkiPLY5yEb6Y3tvT0KWToSdKLo4e3cF/Om
 wITz91aOnmX+lrhJkcdvWRiqKwf5fz3WRRPB9a8Pce7O1LS/CGtpZUQ+t+f6WGJvvZ1n53NIgf7
 wQ3CqRVJp3nRgyHkBzCNoyvvYBrSVDwjQR20DhjPXLh3GJddDNjoxWRIJkPbu0/5oA/+zz24fmf
 5shO2qFl6td0nAG1zHg==
X-Proofpoint-ORIG-GUID: JU1CXwVTUPtFFd6Udrt6Whlbx5VIHDTB
X-Authority-Analysis: v=2.4 cv=BuuQAIX5 c=1 sm=1 tr=0 ts=69539553 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=XVHmVgbNHDG9-czVeNYA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: JU1CXwVTUPtFFd6Udrt6Whlbx5VIHDTB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_07,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 spamscore=0 adultscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512300080
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_010315_918472_5ABA9E51 
X-CRM114-Status: GOOD (  16.95  )
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


On 12/29/2025 5:45 PM, Konrad Dybcio wrote:
> On 12/29/25 7:06 AM, Pradeep P V K wrote:
>> Add UFS host controller and PHY nodes for hamoa SoC.
>>
>> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/hamoa.dtsi | 119 +++++++++++++++++++++++++++-
>>   1 file changed, 118 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
>> index bb7c14d473c9..340b907657be 100644
>> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
>> @@ -834,7 +834,10 @@ gcc: clock-controller@100000 {
>>   				 <0>,
>>   				 <0>,
>>   				 <0>,
>> -				 <0>;
>> +				 <0>,
>> +				 <&ufs_mem_phy 0>,
>> +				 <&ufs_mem_phy 1>,
>> +				 <&ufs_mem_phy 2>;
> This patch cannot be applied as-is (needs GCC bindings changes first)
> which you didn't mention in the cover letter.
>
> If it were picked up, we'd get DTB valdation errors.
ok, i will mention the link to GCC postings in my cover letter in my 
next patchset.
>
>>   
>>   			power-domains = <&rpmhpd RPMHPD_CX>;
>>   			#clock-cells = <1>;
>> @@ -3845,6 +3848,120 @@ pcie4_phy: phy@1c0e000 {
>>   			status = "disabled";
>>   		};
>>   
>> +		ufs_mem_phy: phy@1d80000 {
>> +			compatible = "qcom,hamoa-qmp-ufs-phy", "qcom,sm8550-qmp-ufs-phy";
>> +			reg = <0x0 0x1d80000 0x0 0x2000>;
> Please pad the address part to 8 hex digits, so 0x1d80000 -> 0x01d80000
>
> [...]
ack. i will update in my next patchset.
>
>> +		ufs_mem_hc: ufs@1d84000 {
>> +			compatible = "qcom,hamoa-ufshc", "qcom,sm8550-ufshc", "qcom,ufshc",
>> +				     "jedec,ufs-2.0";
> 1 a line would be neater, perhaps in the node above too
sure, will update in my next patchset.
>
>> +			reg = <0x0 0x1d84000 0x0 0x3000>;
> Similar case as before
ack. will update in my next patchset.
>
> lgtm otherwise
>
> Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
