Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E76ADC02198
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 11:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jPuEXVkbIH9guBSm7gi1FmfxrTePqJWlyVA1BvGoTEU=; b=rXT7z5Hi+RnPvY
	MiD8POzFxklp3lk6e3+gpAc9KTvL/xm6t02jnqKyIUToCFysJUmM4lkvCAZHYngUSkkp7R3AruOxL
	zUFH0mSN3R8/OHkPfWW/V0zfg2F7oaF9jl/sR+JSA7QFbn10+xodotyIKPvSDMFDrWsYOILxnYi76
	rhpXkbcH9pvFTEBIhmGfYCr5LPYCDh9bCXhJurLGniowUgoBxAbElPuaN7DvMpQWUVuYFoyjNbYnN
	YEEuy9OUSx08eMam+RawO7k1YLSFktP+YmhFV697XDM4nRsibbf6RJtuxlTqWZv1yfbWWG0ewH899
	I3+u1K/d3I8j7tvGrPbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thRzK-0000000HDlk-2x8m;
	Mon, 10 Feb 2025 11:30:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thRfB-0000000H9pF-2Wdm
	for linux-phy@lists.infradead.org;
	Mon, 10 Feb 2025 11:09:18 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51AA7axe003521;
	Mon, 10 Feb 2025 11:09:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ggBUKbTWnZ2Htvo1oilHaJI1DyEA5fb4ePZIIAtLG2w=; b=LbTsaX1Ejs6VpnLq
	UM1hJK8+3iuKDJKQeKh6AItSyWUKG8CwybY0ku2Y+Jo+WNJJMKBzmLe7CEoDCBCa
	5RIDoC+Au7JFq344Qbesl3jBxZ8ZnGxk1dmoXR+V1uywbEo68Ps8zBzgWOCJbtlQ
	Z+4ny81sMgg4v8ur5BvD3U249BUBaoOQmk9qru80jXTgayEjn0N+w0ejKT5JQuo8
	pAbzlPHPFE/96xLcN2ecfm5isxofO8PvuqeZdOdlkhHPgIB8/DiJUd9E7pUGrMGR
	w+uzeS5BKLAWGQMn/LQ7tRKPf0Xe1FrRPGW+JJ9swDJhUf130/xOF/j11MGeX58S
	Y/s+pg==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44p0dym2ne-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Feb 2025 11:09:09 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 51AB98Gt022894
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Feb 2025 11:09:08 GMT
Received: from [10.218.7.247] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 10 Feb
 2025 03:09:00 -0800
Message-ID: <e7381931-aa58-4fe9-b96c-4f4226e02371@quicinc.com>
Date: Mon, 10 Feb 2025 16:38:56 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] Add UFS support for SM8750
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        <neil.armstrong@linaro.org>, <quic_cang@quicinc.com>
CC: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Melody Olvera
	<quic_molvera@quicinc.com>,
        Vinod Koul <vkoul@kernel.org>,
        "Kishon Vijay
 Abraham I" <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Alim
 Akhtar" <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        "Bart
 Van Assche" <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        "Andy Gross" <agross@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        "Satya Durga Srinivasu Prabhala" <quic_satyap@quicinc.com>,
        Trilok Soni
	<quic_tsoni@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
        Manish Pandey
	<quic_mapa@quicinc.com>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <c6352263-8329-4409-b769-a22f98978ac8@oss.qualcomm.com>
 <20250209152140.cyry6g7ltccxcmyj@thinkpad>
 <ae9ba351-53c8-4389-b13b-7b23926a8390@linaro.org>
 <20250210101338.boziqlrxl2cei775@thinkpad>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <20250210101338.boziqlrxl2cei775@thinkpad>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: tf5xNFri-tkr3gQKi4kRaPgBcrEAm_IK
X-Proofpoint-GUID: tf5xNFri-tkr3gQKi4kRaPgBcrEAm_IK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-10_05,2025-02-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 clxscore=1011 lowpriorityscore=0 impostorscore=0 mlxlogscore=999
 mlxscore=0 priorityscore=1501 spamscore=0 adultscore=0 phishscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502100093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_030917_669052_F726198D 
X-CRM114-Status: GOOD (  23.62  )
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



On 2/10/2025 3:43 PM, Manivannan Sadhasivam wrote:
> + Can (for the MCQ query)
> 
> On Mon, Feb 10, 2025 at 10:39:04AM +0100, neil.armstrong@linaro.org wrote:
>> On 09/02/2025 16:21, Manivannan Sadhasivam wrote:
>>> On Fri, Feb 07, 2025 at 11:47:12PM +0100, Konrad Dybcio wrote:
>>>> On 13.01.2025 10:46 PM, Melody Olvera wrote:
>>>>> Add UFS support for SM8750 SoCs.
>>>>>
>>>>> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
>>>>> ---
>>>>> Nitin Rawat (5):
>>>>>         dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Document the SM8750 QMP UFS PHY
>>>>>         phy: qcom-qmp-ufs: Add PHY Configuration support for SM8750
>>>>>         dt-bindings: ufs: qcom: Document the SM8750 UFS Controller
>>>>>         arm64: dts: qcom: sm8750: Add UFS nodes for SM8750 SoC
>>>>>         arm64: dts: qcom: sm8750: Add UFS nodes for SM8750 QRD and MTP boards
>>>>
>>>> You still need the same workaround 8550/8650 have in the UFS driver
>>>> (UFSHCD_QUIRK_BROKEN_LSDBS_CAP) for it to work reliably, or at least
>>>> that was the case for me on a 8750 QRD.
>>>>
>>>> Please check whether we can make that quirk apply based on ctrl
>>>> version or so, so that we don't have to keep growing the compatible
>>>> list in the driver.
>>>>
>>>
>>> That would be a bizarre. When I added the quirk, I was told that it would affect
>>> only SM8550 and SM8650 (this one I learned later). I'm not against applying the
>>> quirk based on UFSHC version if the bug is carried forward, but that would be an
>>> indication of bad design.
>>
>> Isn't 8750 capable of using MCQ now ? because this is the whole issue behind
>> this UFSHCD_QUIRK_BROKEN_LSDBS_CAP, it's supposed to use MCQ by default... but
>> we don't.
>>
>> Is there any news about that ? It's a clear regression against downstream, not
>> having MCQ makes the UFS driver struggle to reach high bandwidth when the system
>> is busy because we can't spread the load over all CPUs and we have only single
>> queue to submit requests.
>>
> 
> There are hardware issues on SM8550 and SM8650(?) for the MCQ feature.
> Apparently, Qcom carries the workaround in downstream, but I got tired of
> pushing them to upstream the fix(es).
> 
> Maybe Can Guo can share what is the latest update on this.
> 
> - Mani
> 

Hi Mani,

I have already replied to konrad mail earlier in this thread.

The LSDBS workaround is only applicable for SM8650 and SM8550.
SM8750 and onwards doesn't need this WA anymore as it is fixed in HW.

Regards,
Nitin


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
