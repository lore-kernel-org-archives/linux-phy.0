Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50A8EE8FDB1
	for <linux-phy@archiver.kernel.org>; Mon, 29 Dec 2025 12:15:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sqOTU7uCxUKuFVNlHkjKabH9Nptl9NBHdPq3ZlEPze4=; b=wFdHGKDTpsdtfv
	wH1I90dLevN/po/TfheuuIgLBBCRyxoKvQOAUhYX2+KhHivtkaawmwxhQf67iDty/ip6b1b1NC9fM
	nSZ6a4tal1WaLv5vL/V6ylBsaSQcIIyCDUaOv3bdUttClYBvUoEAc3x/+qt913vW7uL3S1bxfkNu2
	yalfFSyaobrw3DlPapdItXR0ROQ8pXJpAwcyqxWm8pjTBXbQmjmwHghJYhqcQWEeiqi+xsUduX8qX
	ToBx25TcUA+WehTHm3YeY47cm9u5eQROGwYuZm60INZPZyqa2RGQK2oGUL7Ts/pTCzcwRs4Yp89z2
	i7fX1Z/WICLn+OpnmHPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaC9v-00000003ekZ-3OOI;
	Mon, 29 Dec 2025 12:15:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaC9t-00000003ek3-0iMU
	for linux-phy@lists.infradead.org;
	Mon, 29 Dec 2025 12:15:34 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTAHLjh4101488
	for <linux-phy@lists.infradead.org>; Mon, 29 Dec 2025 12:15:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EJCt4lPjw6KmIb+ngELMM2BDiXywmMuaIOQ6cPcLXAk=; b=F2a218qy0azcykWN
	+CMKY0piGxxBLYPyILE+dZLmhfgZ9MZxsh35nimDMjSbYZ4VhA6kDffMOnWtbCMM
	45NoMkBFciBHGXvL0iVLQx8nYYDgRrb68XtTdhpS7AWi1f4oTcW6PfRd50ht0aEQ
	aSRoCX3haFXNn1CSEFB46UIoUbUo0JqnjMSnXE4GJ3SUKFQXTLZf/+DnKuNvLMvm
	peCCVymBUHyl52A82TWYNmlgj3IonKI3B3nlzwfYUy425vG8ZDPiVqjdZdrZCa8S
	NVBSBqMxURnBONkoej2W937Zl5pXNI58C4G1FFJTfcfXrnzZsbDNDkaLeCBLHs68
	7Sq8FQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba87bv9vv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 29 Dec 2025 12:15:31 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee07f794fcso36059121cf.2
        for <linux-phy@lists.infradead.org>; Mon, 29 Dec 2025 04:15:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767010530; x=1767615330; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EJCt4lPjw6KmIb+ngELMM2BDiXywmMuaIOQ6cPcLXAk=;
        b=RonxDRlfJHfkWn34lf0xebfPGga/VplICW5Ya+qNcKMkWcm5y88saGJfpy83A7wCyc
         ftndd8mkTJ5ewUfkthdFxZEPsWSCEMCPlSU8iukm4ba3Gn6SqBBGAY39BE6X1038uEay
         jIrMdUync4QS6lC0yaZKWjW3/aup1h4eMQ+5md1fiyrPF2bGHrxtzP16rGLFNUIXqp/O
         vBNPUJtee6VUdgWiOH2NS6ayKYaKDTDmtdy0xPXKZGijbrly/BVXWmIJXmDNvggzfjoj
         DxOAl3J8wGxNFZmVNzIoBpyptJ/B1nrdQm4lOh5UbGohy+blz5A52CQuAjOU+E+SqQdA
         qxHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767010530; x=1767615330;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EJCt4lPjw6KmIb+ngELMM2BDiXywmMuaIOQ6cPcLXAk=;
        b=xBaCRUfyNbqVZr1Ed19mnBmZx50yPHZ4rVlMTsRHtaSVQ/EpLxtjWmdE4vfB80lYLw
         H3xekvhEyzYb/UprbtFVH69H/XgpQP8hpTMT1N2VHg7MCHe4htWEG+TKcGqd6VcoumU3
         dHa9A5KZ1Pihsr7xeoaKvi+U30uWJO6AyogeezEWkX5vkprZ/XrPbuJLTknYr3EjTF8X
         pBsrnoYqR+QrKqU+4hglVd+cw6zqC9xtWazWKeGt9zsjSzouJesTM1t5iJb/CCeDWmp0
         VuGoXIXKxHcAFC/5mha1xYwya5uvDVpPBzMeDTFneU9xy4mGmXyk5a2zzTf4N9t1R+3u
         dlpQ==
X-Forwarded-Encrypted: i=1; AJvYcCVqezjY5959h/o8IIfWlkJxdItTzFkW5q4343aL7bwLr0tCsIz1MsdRvc+s609Rrp/webLzgyChefE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxHkEOjY34fGtan3RMgEbaQlovgRxdZfoEXI5NyeO2jXpcE4LMQ
	IIwlyfUfxbaOvXBbawCcqpRwUXng99vLN/ToYwE9nWnasmex9tppv/ZHg+67cNxMuN8TTvL+pC/
	4hVBqttlm9W2/GiZaILPmXu7mQ6cGcp+bguK8x55+Fv6xH6+pJZ2vlYu7UtcZWKXNGSkm
X-Gm-Gg: AY/fxX7iHvbot4k97pBXTZdr5KOqbcR6079pRkQF6D6lSDisKy4qaD1aHOP6/7/YmQM
	neYBTgUnSyhSE22Qk/gVPi0/9sbPB5Ic82nevx2f7O6yRdgGyePl2lwolIwnpnj/54SGwxUeMNR
	dSdsj8cMIGu27k/8Y5w6twmetlc6Ij/sCGf1egoDqeRmfrUll/hBwDeDCY/OcOJ7X+rC3QQJ7lx
	8cnK5Hrgcs/7ZWwirBu1fYlvg+CgJMIeAGU2qhFipL016O+R0bCKjcqwezs0WkgYpSYFDWxMBlr
	xTMXcy2wa1Rk+npT3YIfD1b1nGxWCHe2lnGnfiatrYlY+HRy05Q/LD9OJKKHWqz3nnvQUuwwfla
	v5sDqrY/ZqTOt5gXmFIJO3XNi5BcC+NBWu19R682QJGFc+SrHZXNlem6R6kX6harrCw==
X-Received: by 2002:ac8:7c49:0:b0:4ee:1a3:2e79 with SMTP id d75a77b69052e-4f4abddcae9mr337101601cf.8.1767010530340;
        Mon, 29 Dec 2025 04:15:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF0CRP5YKUbuz4LklS5fWci45SfW7k+U5Srf1XjxAOKfl5vUeEtjpXgFXb/++nvYwG74VA0lA==
X-Received: by 2002:ac8:7c49:0:b0:4ee:1a3:2e79 with SMTP id d75a77b69052e-4f4abddcae9mr337101111cf.8.1767010529850;
        Mon, 29 Dec 2025 04:15:29 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037a614b7sm3353313766b.1.2025.12.29.04.15.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 04:15:29 -0800 (PST)
Message-ID: <986facd7-92e7-4d29-a196-d49cd9f3d35f@oss.qualcomm.com>
Date: Mon, 29 Dec 2025 13:15:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 3/4] arm64: dts: qcom: hamoa: Add UFS nodes for hamoa
 SoC
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>, vkoul@kernel.org,
        neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, martin.petersen@oracle.com, andersson@kernel.org,
        konradybcio@kernel.org, taniya.das@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
References: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251229060642.2807165-4-pradeep.pragallapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251229060642.2807165-4-pradeep.pragallapati@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: EUqETSdmDOU3ax1cgBu9xsOAGKy1SmY3
X-Proofpoint-GUID: EUqETSdmDOU3ax1cgBu9xsOAGKy1SmY3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDExMyBTYWx0ZWRfXxR3YiPZ0LxyL
 8z3nSkDufeI4xcbsu51xpuw2UmrYMrSDFnwDEKv1rnLjlaBy7sB+lMcbZSeBPx80tTY3snyrwLw
 OFGNp9XiBa9iHF9cF4As/Donl4oustKfqDf7Yz42mp7Y30kjeiSoahdxb4dDwY+h93IBCD6AQ5C
 haWWqv1sckMYtdujiI/ux23qT/wA509tLy4aecW/Xi1dPwaDdm5xf2/xobpUalqqbGQKzotRL7/
 1SmNby6arOSY4unu1UrbS3Tod80WKdzPNw+qgFcuBBQsUBV+DEIEibLmSo6ntO3OGXCIl6Tnz2N
 BlYcRPu+1JoX3p29i0qEMv+eOacOmCcAKCWNkokKzgN+FkoOc9kxTbjH6AYPlwDUTzmETRl+Pye
 j43Saw67Qs8WzEuMBp9lqgef3WT4/kY3/lM8MKiGUsN4PZLXHKNLWiVDcVwXghTSHPP3Rah+nvb
 TpFkQiDD9zVvhTdhLMw==
X-Authority-Analysis: v=2.4 cv=do7Wylg4 c=1 sm=1 tr=0 ts=695270e3 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=_zFdHPcPyFEXsBemdwwA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_04,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251229_041533_221462_17A8843D 
X-CRM114-Status: GOOD (  16.11  )
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

On 12/29/25 7:06 AM, Pradeep P V K wrote:
> Add UFS host controller and PHY nodes for hamoa SoC.
> 
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa.dtsi | 119 +++++++++++++++++++++++++++-
>  1 file changed, 118 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> index bb7c14d473c9..340b907657be 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> @@ -834,7 +834,10 @@ gcc: clock-controller@100000 {
>  				 <0>,
>  				 <0>,
>  				 <0>,
> -				 <0>;
> +				 <0>,
> +				 <&ufs_mem_phy 0>,
> +				 <&ufs_mem_phy 1>,
> +				 <&ufs_mem_phy 2>;

This patch cannot be applied as-is (needs GCC bindings changes first)
which you didn't mention in the cover letter.

If it were picked up, we'd get DTB valdation errors.

>  
>  			power-domains = <&rpmhpd RPMHPD_CX>;
>  			#clock-cells = <1>;
> @@ -3845,6 +3848,120 @@ pcie4_phy: phy@1c0e000 {
>  			status = "disabled";
>  		};
>  
> +		ufs_mem_phy: phy@1d80000 {
> +			compatible = "qcom,hamoa-qmp-ufs-phy", "qcom,sm8550-qmp-ufs-phy";
> +			reg = <0x0 0x1d80000 0x0 0x2000>;

Please pad the address part to 8 hex digits, so 0x1d80000 -> 0x01d80000

[...]

> +		ufs_mem_hc: ufs@1d84000 {
> +			compatible = "qcom,hamoa-ufshc", "qcom,sm8550-ufshc", "qcom,ufshc",
> +				     "jedec,ufs-2.0";

1 a line would be neater, perhaps in the node above too

> +			reg = <0x0 0x1d84000 0x0 0x3000>;

Similar case as before

lgtm otherwise

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
