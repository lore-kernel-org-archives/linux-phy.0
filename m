Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 386D9C7EE22
	for <linux-phy@archiver.kernel.org>; Thu, 27 Apr 2023 16:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KUILW6wCDAm5coZpt2O/33IYkfJ/y4bvQ74j8fOpcPY=; b=d2JsBHSThXZfE6
	fwfh9gBGhgoqfA+jDUk/2Jkn44DoKod/Y5qW4KM36aXnQqCG7QxgQ/VHk/P+jdBOqbRBi/NLCCwD0
	UGJj4h4LBl+woj6cpK8yXP/KQyioZvURduSYCXQQdihk4kDL8wmMLD8d9vEDtpG9hDRuVzCSYud8Q
	EUxDDFw2VW7ytNvQBwwvW+NC+pj/ZcWPUaNlhsHwKKBlFW0TGPwaUGWJM1eSbHYoMsvA1ODarnQXW
	GfC7goNsFPOy7j69B09VTcRCUe1KS4gVldj+wCrye4al+qFaZdWSU+Hd5/TGPQ6dp3piOvI7HHbEI
	ZdiAlhLazwr5Od1yr9mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ps4n9-0071wq-2m;
	Thu, 27 Apr 2023 16:48:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ps4n5-0071vc-36
	for linux-phy@lists.infradead.org;
	Thu, 27 Apr 2023 16:48:21 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33RGRbXp027771;
	Thu, 27 Apr 2023 16:48:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=3Bz1s2bPw4j0xZ78jaBtwrdzGbGcQMA+0N4JXTzlnEU=;
 b=kkyhEW0E+TycokSMd1xoCE5rbADjXcldTMjxTq7Ddu8xPZ+LQZ2pu4k5NX8crLvH80jV
 ZH6mlokAiuzgZ+r/42vQLsT3ehXVWXIaSal6+6FOzqTr4NtRe/Sxjk/s37HEYQ2jaQJW
 PAT2giJfsiaCjfN/jwJvRKgvF5VwE4EqqWggHbvpfL2uqb132UMMpJ63xS7A2Py/3xqU
 IsQzgaE+57fLv9BOL7Y11JH8TGmWOMKFyrt9gGJ9YWquV3B2bonyoB4bNA7GWgLn5DqP
 T1sO3a+HReQenzcb5P06UtvZ/+N73JNlTmvUq7PHpFK6veurRBw/i84WvU+yxl3AZWPe Gg== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3q7thv0fw0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 27 Apr 2023 16:48:13 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 33RGmC8U022338
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 27 Apr 2023 16:48:12 GMT
Received: from [10.216.5.230] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42; Thu, 27 Apr
 2023 09:48:07 -0700
Message-ID: <5a49421b-d5a4-f8fe-cb54-2fd3b73a146b@quicinc.com>
Date: Thu, 27 Apr 2023 22:18:04 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v1 1/6] dt-bindings: usb: qcom,dwc3: Add bindings for
 SA8775P
Content-Language: en-US
To: Rob Herring <robh@kernel.org>
CC: <agross@kernel.org>, <andersson@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        "Kishon Vijay
 Abraham I" <kishon@kernel.org>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>
References: <20230421133922.8520-1-quic_shazhuss@quicinc.com>
 <20230421133922.8520-2-quic_shazhuss@quicinc.com>
 <20230427142205.GA2979206-robh@kernel.org>
From: Shazad Hussain <quic_shazhuss@quicinc.com>
In-Reply-To: <20230427142205.GA2979206-robh@kernel.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: XHMhw1OkXmM3D2FZrFPVbxw6H46lefbZ
X-Proofpoint-ORIG-GUID: XHMhw1OkXmM3D2FZrFPVbxw6H46lefbZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-27_07,2023-04-27_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 bulkscore=0
 malwarescore=0 lowpriorityscore=0 suspectscore=0 mlxscore=0 phishscore=0
 spamscore=0 adultscore=0 priorityscore=1501 mlxlogscore=632
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304270146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_094820_134834_7D8F0F50 
X-CRM114-Status: GOOD (  14.25  )
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


On 4/27/2023 7:52 PM, Rob Herring wrote:
> On Fri, Apr 21, 2023 at 07:09:16PM +0530, Shazad Hussain wrote:
>> Add the compatible string for SA8775P SoC from Qualcomm.
>>
>> Set minItems to 3 for interrupts as usb2 i.e third usb port supports
>> only high speed mode and does not require ss_phy_irq.
>>
>> Signed-off-by: Shazad Hussain <quic_shazhuss@quicinc.com>
>> ---
>>   Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 5 +++++
>>   1 file changed, 5 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
>> index d84281926f10..3ae02cffae49 100644
>> --- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
>> +++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
>> @@ -23,6 +23,7 @@ properties:
>>             - qcom,msm8998-dwc3
>>             - qcom,qcm2290-dwc3
>>             - qcom,qcs404-dwc3
>> +          - qcom,sa8775p-dwc3
>>             - qcom,sc7180-dwc3
>>             - qcom,sc7280-dwc3
>>             - qcom,sc8280xp-dwc3
>> @@ -180,6 +181,7 @@ allOf:
>>                 - qcom,msm8953-dwc3
>>                 - qcom,msm8996-dwc3
>>                 - qcom,msm8998-dwc3
>> +              - qcom,sa8775p-dwc3
>>                 - qcom,sc7180-dwc3
>>                 - qcom,sc7280-dwc3
>>                 - qcom,sdm670-dwc3
>> @@ -443,12 +445,15 @@ allOf:
>>           compatible:
>>             contains:
>>               enum:
>> +              - qcom,sa8775p-dwc3
>>                 - qcom,sc8280xp-dwc3
>>       then:
>>         properties:
>>           interrupts:
>> +          minItems: 3
> 
> Now 3 interrupts is valid for qcom,sc8280xp-dwc3?
> 

Hi Rob,
I was under the impression from [1] that usb_2 for sc8280xp has only 3
irq's, but it seems it does required all 4 irq's.
I would take care of this in next version of the patch. Thanks for
pointing it out.

[1]:
https://lore.kernel.org/lkml/20230405125759.4201-7-quic_kriskura@quicinc.com/

>>             maxItems: 4
>>           interrupt-names:
>> +          minItems: 3
>>             items:
>>               - const: pwr_event
>>               - const: dp_hs_phy_irq
>> -- 
>> 2.17.1
>>
-Shazad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
