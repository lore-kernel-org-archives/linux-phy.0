Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92D6DCDC196
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jan 2026 13:00:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3geOg6Erj6PYWamTHvAMUvDsg5wN4eFjnp4OCYoCKDE=; b=ntYp2P9z1Fwu0S
	ZzATLO+s21rsu0lsXO5RTo3ow872oM0WAGbqaHsxnT1lAeBzlSN+6eE/j6ccjYurhhlYwH+fGiPRJ
	+3oSPiQHR4/s6d5PAgrLBKZROj6mc7Jsk2d8jykG2+TO7840gF3qoRqDw1zUFJ9Q8cC8vmtaylpPs
	GmRNAM0HU5j/qfEaCX7kmqJu/kJgwUXWVnEJTeFbc0w16GQ9L22GYNQEZJsKyZXiBcf1SgWS5blJw
	/7A7dGBEsUNt3xSHdJBoKfEu1+F2162tjSO7XJ96WBc54h8/5DAjx8nlozGoBTj2mspr7kOkPdqYe
	k+f7sbeU5qpW2o3/PFuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6fZ-0000000D2NZ-0WDC;
	Tue, 06 Jan 2026 13:00:17 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6fX-0000000D2N2-12ms
	for linux-phy@lists.infradead.org;
	Tue, 06 Jan 2026 13:00:16 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606CAGSN4048847
	for <linux-phy@lists.infradead.org>; Tue, 6 Jan 2026 13:00:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	huXgOWlwMM/3UBQ256PZnVk2f03NpWBmmvrJXgXD0Ak=; b=TRS+iD206qbp/Mkt
	9OdYG4UisDFYd5ntCFRwFJ4HZaVAhjc73UvHfPF2sV+0KWWDWhvhgyWgDcwdyrFi
	npyzzP2A3ZGUZCfZ7K73l9nknH5H270HR0PikxT3sSj89UrAvmch17byE5+eJrWo
	K6dU/LjC/EhbcKwUXp+Vpr6Z+JuEqJ5aSm1NPdKL5zRJatwEuFbF1324Dxvi8gBK
	RQEoWDurhc0bIm7C1OWOg2KSqyOyHSPF/BfrqeiRpS2Z/9vTBcQktf6a2m+kSeTs
	KFjsgT8XqSNzHrMx3zERwRSrsV8iU/X0YHJzuvfFjOQAPZvmo+Kh/zDGTM10ymWg
	ZxVtVg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh25rr48h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 06 Jan 2026 13:00:14 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b993eb2701bso975672a12.0
        for <linux-phy@lists.infradead.org>; Tue, 06 Jan 2026 05:00:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767704413; x=1768309213; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=huXgOWlwMM/3UBQ256PZnVk2f03NpWBmmvrJXgXD0Ak=;
        b=hvS3DbAP6cJ09dj1ANUWB9OBGc/JctPtFDas6anFFZ2ljoMgeHySdQ9mhaXtSPR7op
         S0O3IpLEFZRI8YQInYYWAQ60x5LaNskcGL8Z4wTHsGfNgtHwVr1RZtGwMlYZlnJQ9L5I
         rsFnhPcTZmytzg0zetSSx5v2epGtGXau47Ln42opp1taigZvBGocQ+8fYCag2dRBuc2c
         5wG/rMZcF4N/1mW0SRyEvsXSRTfP4py/aDjCUjTmioTmiC63wAVk/SvVf8RWGAjLBpfD
         K7L72qsTNpKa7aXLOabOiVzUlCmtCaQYr0nK5pIhC2qnjYWrnb0R9E+2PsmnxWlyhIGp
         w29A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767704413; x=1768309213;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=huXgOWlwMM/3UBQ256PZnVk2f03NpWBmmvrJXgXD0Ak=;
        b=WGer7QrgIMfBB6TLOSs9ymMM9U9MV55IeO6bPoEDCkI/ZWPpjR23hUZAQ65ueorAPP
         S+NgedIsctWCxR8dxLMYah0n8eiFbfHKge7ctKUNw2IPgsyzckGxREU7EPrAO+CHcNV9
         zW6K4QCdcZQF774G5bHFj9wbuCt5L4mzcCRJarpiTSRaqSUtIwdD/wcBzH705x+kZ7iw
         khzPPOauK9AFg9y0sezuspF+vSeo/28RAAs12Y7AWAWXuLNVxrnzZJ6NXGijcEuBSBy+
         OV54kPsxLEUl17FJRJFwsPxcS2NLZ/x7N8Iio11nKuWTrRRpShYLbdZ94h9Q3gfOnQW/
         hwnQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6CGWWv083qB5gxIRg4Xvgr2FW/t4GfF9RkdnVke+DBbCPNrsfVThfCuI5qdKTRnF8zCsKzukkzYc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyLSjJlpLH6yEP8dHyrDMKL940ne66NTFcALuSOHFPdBYwiTl+7
	rK7AAk+axqGSjpFzsqGgCEP7IpqL0OzhbEYscxxsb8fxaXvYz1BVsHmf7QEgGQzNBF5grIzlpOk
	utOi5eDu+4fs0BZWRTUwven82c4QKDgUtKDE74BXKUnolJ0GdeD2MIJb99OXAkQGEyxba
X-Gm-Gg: AY/fxX6lHFMklh8Q6e9wkhlQIS29A07qPivehaKhzoNWFI9X/pt5w2sGyRfvhJ0yojg
	2GvDBYZEoaJPK7UBlIsa/FfRtuT5sx3DSP+8I+b3MoalPu1T0XbcDZpd1JQYWuculbXtyKCLyXU
	pcHp7vKxS931+DAacn16rnMac9pIupoyrUOTNgwx/VWBdkTkCDcIyrxwb+cZSNvo/Dry2oYEWxN
	JJj6epiDzWUgjwcMVqmUX+kwZmeLrS1ZaLuSqzdy78XaW8lAuAoLrNcer68z0i4xmm2DW2pWn+j
	c4otOmmkZKN4X1fiifCyqcR5mHbdLsAicQAB3uF58i7SlKHT2QIZnwmidcnZMyJDRIB1UnV5pR4
	fO+j4FaRDiL2FluYsfrp0zBVnlcdc2huhgC6k/KDDX63JLS1nuvc=
X-Received: by 2002:a17:903:1a08:b0:2a0:8f6f:1a0d with SMTP id d9443c01a7336-2a3e2d4a754mr28039975ad.61.1767704411955;
        Tue, 06 Jan 2026 05:00:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEj1eTxDDzV+0Q9BC5FCCAwWShTr88gsLB31ddtNM4i8U1yoesSaOsi/0lEA1kMP18LZTgfqA==
X-Received: by 2002:a17:903:1a08:b0:2a0:8f6f:1a0d with SMTP id d9443c01a7336-2a3e2d4a754mr28039695ad.61.1767704411315;
        Tue, 06 Jan 2026 05:00:11 -0800 (PST)
Received: from [10.217.216.105] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc8803sm22780885ad.71.2026.01.06.05.00.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 05:00:10 -0800 (PST)
Message-ID: <e396bef2-e5bf-4e6d-98f4-37977d5d93ec@oss.qualcomm.com>
Date: Tue, 6 Jan 2026 18:30:05 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 3/4] arm64: dts: qcom: hamoa: Add UFS nodes for
 x1e80100 SoC
To: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Konrad Dybcio
 <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
References: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
 <20260105144643.669344-4-pradeep.pragallapati@oss.qualcomm.com>
 <7gi7sh5psh5v4y5mrbgln6j2cjeu5mogdw2n3a6znjtqyjcyuk@kxpe566v57p3>
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <7gi7sh5psh5v4y5mrbgln6j2cjeu5mogdw2n3a6znjtqyjcyuk@kxpe566v57p3>
X-Proofpoint-GUID: GxiwZNfhCSD8VuVy4D5Eh2tvCqhaFuZV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDExMiBTYWx0ZWRfXzuTBcSOQEmZ0
 msb7EOWWNwVTWlUuZGW73tUQbxcRaFLnX1VLoVDdVQ2QXSw74wSImgB06NTS5VRr1i1kDtkfHtB
 xhOgKlR0l15xBRwI+/TNQfdSd3XFc+xwgwKyFxOjn4VOgoLPnijb/CrXoHvNolBKeKpuFbOJkYc
 e8YaxR/fYz391nMLwyvBOWPpzDPF5T/IaHv6L5cHrFNaHu2j9YcXA8oKyBAgxu5cESkQI4/luxs
 yh3mlmbMx7W5rOHrqs2HWsU5YGpDl9BusWtUz9OgDquZgQbzmDSuOee8zFc9cZfA6hyUX+vTcGx
 u5NzcEfZnTCCi1e+Ekuex928G6Zz+3WQoHKV8H9sMnPxEeVpPi3hX+Nt6p16pQeZPmzrVxaHFMF
 WkXVqYDO6A9l+kG5zic9odkMHuksTPCTNAy2PyJALTKFTWd9jwysxQ2jkQbZPvfa822A1JBulj2
 QDF7o2la/rxUHcrwHpg==
X-Proofpoint-ORIG-GUID: GxiwZNfhCSD8VuVy4D5Eh2tvCqhaFuZV
X-Authority-Analysis: v=2.4 cv=G48R0tk5 c=1 sm=1 tr=0 ts=695d075e cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=CRlJY8YO9k0lXNWMlzEA:9 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 spamscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_050015_321610_C4482AC7 
X-CRM114-Status: GOOD (  16.58  )
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



On 1/6/2026 1:36 PM, Manivannan Sadhasivam wrote:
> On Mon, Jan 05, 2026 at 08:16:42PM +0530, Pradeep P V K wrote:
>> Add UFS host controller and PHY nodes for x1e80100 SoC.
>>
> 
> Minor nits below. With those fixed,
> 
> Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
> 
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>> Reviewed-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/hamoa.dtsi | 123 +++++++++++++++++++++++++++-
>>   1 file changed, 120 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
>> index f7d71793bc77..33899fa06aa4 100644
>> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
>> @@ -835,9 +835,9 @@ gcc: clock-controller@100000 {
>>   				 <0>,
>>   				 <0>,
>>   				 <0>,
>> -				 <0>,
>> -				 <0>,
>> -				 <0>;
>> +				 <&ufs_mem_phy 0>,
>> +				 <&ufs_mem_phy 1>,
>> +				 <&ufs_mem_phy 2>;
>>   
>>   			power-domains = <&rpmhpd RPMHPD_CX>;
>>   			#clock-cells = <1>;
>> @@ -3848,6 +3848,123 @@ pcie4_phy: phy@1c0e000 {
>>   			status = "disabled";
>>   		};
>>   
>> +		ufs_mem_phy: phy@1d80000 {
>> +			compatible = "qcom,x1e80100-qmp-ufs-phy",
>> +				     "qcom,sm8550-qmp-ufs-phy";
>> +			reg = <0x0 0x01d80000 0x0 0x2000>;
>> +
>> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
>> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
>> +				 <&tcsr TCSR_UFS_PHY_CLKREF_EN>;
>> +
>> +			clock-names = "ref",
>> +				      "ref_aux",
>> +				      "qref";
>> +			resets = <&ufs_mem_hc 0>;
>> +			reset-names = "ufsphy";
>> +
>> +			power-domains = <&gcc GCC_UFS_MEM_PHY_GDSC>;
>> +
>> +			#clock-cells = <1>;
>> +			#phy-cells = <0>;
>> +
>> +			status = "disabled";
>> +		};
>> +
>> +		ufs_mem_hc: ufs@1d84000 {
> 
> ufshc@
ok, i will update in the next patchset.
> 
>> +			compatible = "qcom,x1e80100-ufshc",
>> +				     "qcom,sm8550-ufshc",
>> +				     "qcom,ufshc",
>> +				     "jedec,ufs-2.0";
> 
> Drop jedec compatible as Qcom UFS controller cannot fallback to generic ufshc
> driver.
"jedec,ufs-2.0" was set to const in dt-bindings, dropping now will lead 
to dtbs_check failures. is it ok, if i continue with it ?
> 
> - Mani
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
