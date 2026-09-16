Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CF2FC982C3
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 14:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y7J0n/YvnPQAWVjCYfOPeaTKTb+hCqX1k7Be6ayLpeA=; b=FwfXj/n7kYX+8s
	PQiQ38qAU7PDZ6LHbB7SdRY+E+8+ZgJauQDVZ5PXWGvC3d/4dsnVrvaJBAVCvdJz+SWKSZrPOqRQV
	HIp3scRieoSmSgCV7MIZmRcBjoA6YOMWjvKaDmmzRmJ8nrBicj/HFeSCgXV4Y/KlmMHiwKALE1oGn
	P0q8NWZVj2JMi9xm6BR3aV65LjYsvWgCvfI/RJDb8jYjEE+npd3CZ94NUVmplK0DiS20D6JjfAcoM
	pM+yvhPvEojYWBWsCJRDWJfMZy98ZWZoVEW0L+tjeFUW5MbvohwzUIteUTDumn+kWHpFYuzuoQh6w
	+4WgeUyA2e7ORMX5SPOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6qwt-00000009TBl-3xFk;
	Wed, 16 Sep 2026 14:49:24 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6qwr-00000009TBJ-0GdS
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 14:49:22 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68GEYup93556268
	for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 14:49:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eVgsS+87a5iYDHDygC1JoIvqJU8Cv/bwBlYzt+34NeM=; b=V2CHnqjgat6GNaGW
	PUiSEBlK9OoycpqiH+iMn2DtXGeysLP8DOfPagpjh3clUXFrf2P3DQenl7zPA7n+
	/hK2pcewtQH2lpSn4Jf9TPttzNfyTvr3dFaLY0jC1bh87cDIXHaWFk8IcqugaQ6j
	QGKfpKex3zeYRKsgZH+jjQ7ZfXuNKX4oNh0V4uy/RHIFYJggz55ei6QGumBuuaNs
	e7XUHauS2GaFjIRfE824O63zI4dqe7wj6AP6wnw3UkJiNm+Ovl/uxC9G9SKVvG+W
	3X1WGWuD01rHOMxdjKs+RxU/bJ5FSeeEvQSokZvPvDBX78rBeQxkVGwLITp71YqF
	hNJOEA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gqfvfkcgb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 14:49:19 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-39533bb224cso7892381a91.3
        for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 07:49:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789570159; x=1790174959; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=eVgsS+87a5iYDHDygC1JoIvqJU8Cv/bwBlYzt+34NeM=;
        b=ehBWcTrTibw1IQi+IkAD9dvb9w12bLWEIN+0eI6xjfI6+KMqBVpO9NEfEiVP1gH60I
         tNvHBhJ0KZK3guah0QAn0z9rTTi5e8947qHsQ1dKy4udz21faR/8xHXD5Af69kiTtWDL
         vtM6edEh6x3Jj6SoRzmmwdWcLg9C9JFj35dLhjt4mzrkFIXeC2FMbI4N1VUPO7asMNxE
         SMZL33QMu1xBxazebDcImR5WIUnqJFKnxqBmss8xeeR0C9esTQIb3XkC6lxSYqKu6WZh
         WariKIA9O5ewsypis5dWlmpJlX2mMO35SVBZH8X0IDhx0Pu7tDSiuALyqK5h42oMoAzQ
         dNrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789570159; x=1790174959;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=eVgsS+87a5iYDHDygC1JoIvqJU8Cv/bwBlYzt+34NeM=;
        b=lomi/wkwjUW7tvPX5tEiCVkJuIoHV7ImvRB7mmt+tssuwuV/guq/PnZNRWVtaSLw+s
         XGmo9M7DqszqPmKkhAPSHZ1Cn7OxIH0/1Pb7REJjSgoY5bfcuB9mkZYdcE4O09wS2Ah/
         BUA1zW9muEFHbw26KIS3gdqAmDPTwitAZudjFWPUkasG9W/SjJaUttg5lxdirYM1YGKj
         ISilPAux28/dkbZt/H1FTGLzwpnmuLKLw2+MZW1bygVQuCypc7MBNyB6nJhuQERZft7R
         am8/kUPH18vvbC/qvLJYZPcgnRoBAit3Eir4uU46awR/Ew0LxGEPgmUbBP7cA6sREJu5
         jEtw==
X-Forwarded-Encrypted: i=1; AKwUvBx+HIcUyKZYEZD+OMV1L2I9WH8ZxuZE6Vh+ktXsr1GXA6hmto4UjnwEKB7JIfNS7l28pZ5lFlfrORc=@lists.infradead.org
X-Gm-Message-State: AFuF++m8yJJcfGWFVteZO/fF+AKIMJYAGJdCz2LKiK+uaXOpJYdNZQzb
	zftOclRAoPSMEsnHYqVKJc/sYCQYJ54CCkO/fsv/zR7Q2FPo1j5qYFmM0Jgwq1nTn71Bvbf+Eh7
	GP+fvmInmcQ/l5+WrPGvHeUb8aYqRAlp6re7OI925jijCpZ51fqq8TjN0Js3k10DD9yMB
X-Gm-Gg: AYBFou2kRy8kbBspUt1y3NbBaXjSt2LAOVKSmOQOofc/0iOivJd2y7PHdx5Pz2yHjD4
	0F05YhFLe+CsYGqcXeykK+vYE25QaMrfHL0c9R5MxZSpvV+AWdPP8l7q4WmfWjeVB+4VWlcR2go
	Buv8jB9i8xAYxYBhMmAgka+LgDHtsjabfNkwZZBvdBp+gZjTDgNicCxTIVn/Es3BN+4l3kha5WX
	rBxVBu5NYIHvsu8FSHu+67osnhvG1xkZO4BXPTIhHENjEZsCVC7Qtl5GilGJBdiST39zVKhWb0h
	nDqQm+aSazmX+sCheIjpaUSerFpzLYWpBpz6iUpWVVNIj8INfkByAGkMAYnwPE/uQzXOOg1p+cH
	sVzypBxTG+R3JSAH+iW9m1iMI5wgvPYGdYyTA4QzI
X-Received: by 2002:a17:90b:2885:b0:398:d132:ba76 with SMTP id 98e67ed59e1d1-39e1e502f25mr6913672a91.21.1789570158604;
        Wed, 16 Sep 2026 07:49:18 -0700 (PDT)
X-Received: by 2002:a17:90b:2885:b0:398:d132:ba76 with SMTP id 98e67ed59e1d1-39e1e502f25mr6913598a91.21.1789570158156;
        Wed, 16 Sep 2026 07:49:18 -0700 (PDT)
Received: from [10.216.41.130] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39e1bbfdd49sm5493700a91.11.2026.09.16.07.49.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2026 07:49:17 -0700 (PDT)
Message-ID: <6f5d5266-75b4-4f65-a19e-8fc27ca9d3ef@oss.qualcomm.com>
Date: Wed, 16 Sep 2026 20:19:10 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: glymur-qcb: Enable UFS
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@sandisk.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>
References: <20260911-glymur_ufs_qcb_enablement-v1-0-b9fc5e2ee99a@oss.qualcomm.com>
 <20260911-glymur_ufs_qcb_enablement-v1-4-b9fc5e2ee99a@oss.qualcomm.com>
 <c3bc5b6c-f929-4576-9d7a-d5fb9cc80aef@oss.qualcomm.com>
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <c3bc5b6c-f929-4576-9d7a-d5fb9cc80aef@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=JYkpPkKV c=1 sm=1 tr=0 ts=6aaaac6f cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=Z03_-bexLPcab5i0-bQA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE2MDIwMSBTYWx0ZWRfX/c6Sz5c5Ut3U
 Bnb38YYKodAp03mhAwY9SKzh7/L2tV6VR+Tz7x8jS2WsO2rBR55RRDqOoYdfCK+6zk4VvmqbqAF
 f5kVCsI2zrTyWy/uQRgMoeXPLCxNN5bET6cAb0qUUi9j5NrDZJ4yYximvIEunW7b6WiM/guIZcB
 54RYZfHK9CZgJX6Ij5vA4AelTxqgvJSSYHIg5Q8FlWWS8h+Q5GxRw0waR24Ym+KdNsXhYp8dXoJ
 J5BJSUPc8zCocZFFLIt/XOvs5VsyzRz+8hUjB+1q2Phk5i05BiK/C8gZ2mopptYcxX+ufC/t1Xw
 KE47g1G2gUOmH/h4dEHBKS8w/Zojm2s+NK8JR9slKCPAuevHFAj8POsFo1suWPYCfIgqk0+Exjf
 c9jR7CKFBbsuowd6BAxpZTvDlIPh9mTp0/7aqXILd17Vu629f9Dw5eokLDZEfi50euCrDBubGQG
 ugZn3FegY8Y/IE+PrDw==
X-Proofpoint-GUID: X0-F9MVe7rmgM0EvpXeSrwq-uPW5pcjX
X-Proofpoint-ORIG-GUID: X0-F9MVe7rmgM0EvpXeSrwq-uPW5pcjX
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE2MDIwMSBTYWx0ZWRfXwgTKQnVy6TOJ
 nJsgrHE8mc5S0SRIL5p71DkVNotCZkPQj0WbgIi8aX42U571/38M2AerJMNkqxbVZ+k6q8ILgLQ
 jRPmDzbXVNuJbRRLhbfmzVyrhGmjRCo=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-16_02,2026-09-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 impostorscore=0 priorityscore=1501
 spamscore=0 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609160201
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_074921_279844_11CC7A92 
X-CRM114-Status: GOOD (  13.31  )
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



On 9/14/2026 2:44 PM, Konrad Dybcio wrote:
> On 9/11/26 6:47 PM, Pradeep P V K wrote:
>> Enable UFS for glymur-qcb board.
>>
>> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/glymur-qcb.dts | 18 ++++++++++++++++++
>>   1 file changed, 18 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/glymur-qcb.dts b/arch/arm64/boot/dts/qcom/glymur-qcb.dts
>> index 17d8ff3aed23..b6e384024dff 100644
>> --- a/arch/arm64/boot/dts/qcom/glymur-qcb.dts
>> +++ b/arch/arm64/boot/dts/qcom/glymur-qcb.dts
>> @@ -697,3 +697,21 @@ bluetooth {
>>   		vddrfa1p8-supply = <&vreg_pmu_rfa_1p8>;
>>   	};
>>   };
>> +
>> +&ufs_mem_phy {
>> +	vdda-phy-supply = <&vreg_l1c_e1_0p82>;
>> +	vdda-pll-supply = <&vreg_l4f_e1_1p08>;
>> +
>> +	status = "okay";
>> +};
>> +
>> +&ufs_mem_hc {
> 
> Please keep the label references sorted alphabetically
sure, i will sort it in my next patchset.>
> Konrad
> 
>> +	reset-gpios = <&tlmm 250 GPIO_ACTIVE_LOW>;
>> +
>> +	vcc-supply = <&vreg_l17b_e0_2p4>;
>> +	vcc-max-microamp = <1200000>;
>> +	vccq-supply = <&vreg_l12b_e0_1p14>;
>> +	vccq-max-microamp = <1200000>;
>> +
>> +	status = "okay";
>> +};
>>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
