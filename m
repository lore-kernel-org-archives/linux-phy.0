Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E691EC83F33
	for <linux-phy@archiver.kernel.org>; Tue,  5 Sep 2023 07:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MfOz7CBDXk8BUn1YgSGBgNmImbGcezbGaIvwsb2bZtw=; b=EUu0rd+Y2Ce4+O
	eZGVy2YK+XbleOyg7wbTJCpHAkVUwZW2DAFa1bbxT/j5kAQK0db2+ausqDIWRSqIBs1W491YV1wrq
	y+dPOZEPuqgxfWuuBqwVzRlfv7O5kwwiyc15+sRvgph3+yPQHlHEoIFYMtbfCPJnp2bvPYifhin+A
	gOfo20rK6UoaUwvHO8kcy5GdTl5H0hW1r/IcID1QE3J6XIAk5DnsNkzjikVFyywOSWTe9VR5vSVPE
	XpQviLyWxzl++6GmJQ2SWeJrNYVTZL80+U4xR+QdLi2HdOLHyKgaSvhfBylj02xtkn9OyKFJchQ8a
	7NeQbvAp9c//U3az9lLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdQDJ-005Qo1-21;
	Tue, 05 Sep 2023 07:11:05 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdQDH-005Qng-0X
	for linux-phy@lists.infradead.org;
	Tue, 05 Sep 2023 07:11:04 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3856YYvi029908;
	Tue, 5 Sep 2023 07:10:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=CicEJnznBAhMloNzVL9Wyk+0gAikM4+YSKPIwH/GY3I=;
 b=XFpwLYQjzHNGih18/OTEsHtfqNvjAWfNU6VYiygLgKMrsfEJ57vG2Us4cgzJ0Vd5hx0C
 hUBQoPb/ItRJx+Lew2f4L6W00alHJHXmwSK6zsFWxPAWgg8P40/IlBQMhBuZuuISmLWb
 4Ak1fQlou20NzMjhDuiZN2s1HvkmGSfRS1t0XbUmioZPIzzNyPLokuoiNaS8B+LGwC3Q
 Cb76r+1ZgcMDk97iLzF2sW1dOBgAYqZm5M8KUO6iAiOrX5CiE2gcY+ZcsPdirsNu0cEk
 26qjFvEsdg7Kzqi6o8CrH8NWF3R6MfyV+aMC8Xek6hHhpmAhCroick3ajzS4XM6uP9es Ww== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3swpr6gqck-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 05 Sep 2023 07:10:57 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3857Autu012502
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 5 Sep 2023 07:10:56 GMT
Received: from [10.216.59.199] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Tue, 5 Sep
 2023 00:10:47 -0700
Message-ID: <e864890e-89cc-a37a-99c1-73a521790673@quicinc.com>
Date: Tue, 5 Sep 2023 12:40:42 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH 3/5] dt-bindings: usb: dwc3: Add missing SDX65 compatible
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <abel.vesa@linaro.org>,
        <quic_wcheng@quicinc.com>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <kernel@quicinc.com>
References: <1693889028-6485-1-git-send-email-quic_rohiagar@quicinc.com>
 <1693889028-6485-4-git-send-email-quic_rohiagar@quicinc.com>
 <96c76c55-d5d4-e4ef-e7c3-ee35b2d7ad78@linaro.org>
 <b8bb019d-6832-a956-b314-e7861748d188@linaro.org>
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
In-Reply-To: <b8bb019d-6832-a956-b314-e7861748d188@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: sHU1DPaVwMOgJiexu9Pdp_UmQwFjUnyJ
X-Proofpoint-GUID: sHU1DPaVwMOgJiexu9Pdp_UmQwFjUnyJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-05_05,2023-08-31_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 spamscore=0
 lowpriorityscore=0 malwarescore=0 suspectscore=0 bulkscore=0
 impostorscore=0 mlxlogscore=668 clxscore=1015 adultscore=0
 priorityscore=1501 mlxscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2308100000 definitions=main-2309050063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_001103_325821_A093A3B0 
X-CRM114-Status: GOOD (  12.88  )
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


On 9/5/2023 12:21 PM, Krzysztof Kozlowski wrote:
> On 05/09/2023 08:49, Krzysztof Kozlowski wrote:
>> On 05/09/2023 06:43, Rohit Agarwal wrote:
>>> Add missing SDX65 compatible for specifying the clocks used.
>>>
>>> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
>>> ---
>>>   Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 1 +
>>>   1 file changed, 1 insertion(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
>>> index 5c13229..fa51f50 100644
>>> --- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
>>> +++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
>>> @@ -186,6 +186,7 @@ allOf:
>>>                 - qcom,sdm670-dwc3
>>>                 - qcom,sdm845-dwc3
>>>                 - qcom,sdx55-dwc3
>>> +              - qcom,sdx65-dwc3
>> That's not a complete change. Update the rest of the file.
> Hm, your subject is confusing. The SDX65 is not missing and you do not
> add missing compatible.
Sure will rephrase the subject for this.

Thanks,
Rohit.
> Best regards,
> Krzysztof
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
