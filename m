Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67646EB8FA5
	for <linux-phy@archiver.kernel.org>; Wed,  6 Sep 2023 05:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3wIdFriCFo6sI2DR6HT31bkMxvrCG4K9QE+hCwGoshE=; b=NMnJ2+H5je0Sor
	KIGAR9NGseFovq+eKDpyO64rcDWrkqSEu6+3HfwGQWvu1Vanav9KcVaablyJOnlCbVJTzzrDwrHOY
	XabfZ/C74XRFIrsQ9SXMb2fFpsPoFZVhpXOQdMHZF6QqLMd95K5FCPmjFXV3zN4sISF9dIUlIjQZz
	OtkV2NbY5Y1ZEaMtX5z5GQEu7i0tRKkRI2ZPUj6rKVKvSEueXzVh/ZSvsww7oUHc8nj5XPV6yCK4s
	nA/ufSZU2NVfoNjcBQRtqCqRU4dhPkOz6kXFCo2c2pFTYyKPGxqVQAVJmbm/I4r/77d+5Qq2nwlqf
	nQWAzUP8896kvJSHkS6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdlMI-007JTe-0J;
	Wed, 06 Sep 2023 05:45:46 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdlME-007JSK-2o
	for linux-phy@lists.infradead.org;
	Wed, 06 Sep 2023 05:45:44 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3865jcC4003863;
	Wed, 6 Sep 2023 05:45:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=YjwBTbzCUUk3nM0bXPUAJHG7ws0zjRLanM3m5nzw0tw=;
 b=irndMFwWB0ZGOiRXn9F1auO0ZxVhL08dWBjkcyxzm7ubbvBGJTpHlUFkdCQjGXt3phV/
 pvkP77oLk7gm4Mc5GGqT0fWEtLxdSFcdfq5jSPi4x7mP0Qica18djHCM/0vmhOFBb6Dq
 XtTVu162wgD4LeDQLdpZ1//GdkzmpDhItY3Lo6dVZu/24J1sDILND9KRHl2Bvm8bFBKG
 RxNJ2v8yCI9KM+TM7dmNcwRs3i3jjVcfRZcejj35AqCRld6mY+o2bvjGZbemD6R6yi4B
 IT71DObculLzpDWDbNPK7CdIrG5yGSN8azkOoq/2t4DqU2Gf4lyurXIlk92H4cOyS8yT IA== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3sxgk2r9fn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 06 Sep 2023 05:45:38 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3865jaeN027916
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 6 Sep 2023 05:45:37 GMT
Received: from [10.214.66.58] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Tue, 5 Sep
 2023 22:45:28 -0700
Message-ID: <0abadf59-e94c-a358-98a0-6e2d6233ff1b@quicinc.com>
Date: Wed, 6 Sep 2023 11:15:25 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH v2 2/5] dt-bindings: phy: qcom,qmp-usb: Add SDX75 USB3 PHY
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <abel.vesa@linaro.org>,
        <quic_wcheng@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <kernel@quicinc.com>
References: <1693909838-6682-1-git-send-email-quic_rohiagar@quicinc.com>
 <1693909838-6682-3-git-send-email-quic_rohiagar@quicinc.com>
 <37fe0c7e-60ad-4c27-b40f-471cc3d92e1c@linaro.org>
 <ea9df6f3-dfde-ea7a-af22-2a0839d82d32@quicinc.com>
 <1838845b-9586-6f8c-a4d6-ef052e0a12db@quicinc.com>
 <CAA8EJpqK1FzD2+c6TsicP-fjP+vKJGNWKZ2UodphkROb0WkX1A@mail.gmail.com>
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
In-Reply-To: <CAA8EJpqK1FzD2+c6TsicP-fjP+vKJGNWKZ2UodphkROb0WkX1A@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: y9zKDggDgvJKhoJVLxnLTzV13dQtc3t1
X-Proofpoint-ORIG-GUID: y9zKDggDgvJKhoJVLxnLTzV13dQtc3t1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-05_13,2023-09-05_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 malwarescore=0
 mlxscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 mlxlogscore=999 impostorscore=0 spamscore=0 bulkscore=0 adultscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2309060051
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_224543_062537_BB4B5B5F 
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


On 9/6/2023 11:09 AM, Dmitry Baryshkov wrote:
> On Wed, 6 Sept 2023 at 08:26, Rohit Agarwal <quic_rohiagar@quicinc.com> wrote:
>>
>> On 9/6/2023 10:52 AM, Rohit Agarwal wrote:
>>> On 9/6/2023 2:04 AM, Dmitry Baryshkov wrote:
>>>> On 05/09/2023 13:30, Rohit Agarwal wrote:
>>>>> Add dt-bindings for USB3 PHY found on Qualcomm SDX75.
>>>>>
>>>>> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
>>>>> ---
>>>>>    .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        | 40
>>>>> ++++++++++++++++++++--
>>>>>    1 file changed, 37 insertions(+), 3 deletions(-)
>>>>>
>>>>> diff --git
>>>>> a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>>>>> b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>>>>>
>>>>> index f99fbbc..5725620 100644
>>>>> ---
>>>>> a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>>>>> +++
>>>>> b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>>>>> @@ -20,6 +20,7 @@ properties:
>>>>>          - qcom,qcm2290-qmp-usb3-phy
>>>>>          - qcom,sa8775p-qmp-usb3-uni-phy
>>>>>          - qcom,sc8280xp-qmp-usb3-uni-phy
>>>>> +      - qcom,sdx75-qmp-usb3-uni-phy
>>>> I think the ident is wrong here.
>>> Same. Somehow, your reply has the issue but original not able to see.
>>>
>>>>>          - qcom,sm6115-qmp-usb3-phy
>>>>>        reg:
>>>>> @@ -38,9 +39,7 @@ properties:
>>>>>        maxItems: 2
>>>>>        reset-names:
>>>>> -    items:
>>>>> -      - const: phy
>>>>> -      - const: phy_phy
>>>>> +    maxItems: 2
>>>>>        vdda-phy-supply: true
>>>>>    @@ -75,6 +74,7 @@ allOf:
>>>>>              contains:
>>>>>                enum:
>>>>>                  - qcom,ipq9574-qmp-usb3-phy
>>>>> +              - qcom,sdx75-qmp-usb3-uni-phy
>>>>>        then:
>>>>>          properties:
>>>>>            clock-names:
>>>>> @@ -122,6 +122,40 @@ allOf:
>>>>>          required:
>>>>>            - power-domains
>>>>>    +  - if:
>>>>> +      properties:
>>>>> +        compatible:
>>>>> +          contains:
>>>>> +            enum:
>>>>> +              - qcom,ipq9574-qmp-usb3-phy
>>>>> +              - qcom,qcm2290-qmp-usb3-phy
>>>>> +              - qcom,sa8775p-qmp-usb3-uni-phy
>>>>> +              - qcom,sc8280xp-qmp-usb3-uni-phy
>>>>> +              - qcom,sm6115-qmp-usb3-phy
>>>>> +    then:
>>>>> +      properties:
>>>>> +        resets:
>>>>> +          maxItems: 2
>>>>> +        reset-names:
>>>>> +          items:
>>>>> +            - const: phy
>>>>> +            - const: phy_phy
>>>>> +
>>>>> +  - if:
>>>>> +      properties:
>>>>> +        compatible:
>>>>> +          contains:
>>>>> +            enum:
>>>>> +              - qcom,sdx75-qmp-usb3-uni-phy
>>>>> +    then:
>>>>> +      properties:
>>>>> +        resets:
>>>>> +          maxItems: 2
>>>>> +        reset-names:
>>>>> +          items:
>>>>> +            - const: phy
>>>>> +            - const: common
>>>> Could you please point us to the actual DTS patch adding this PHY?
>>>> I'd say, it is highly likely that you are trying to bring in the
>>>> unnecessary change.
>>> I have not posted the dt patches yet. But sdx75 uses these resets.
>>> GCC_USB3PHY_PHY_BCR, GCC_USB3_PHY_BCR
>>>
>>> These are same as sdx65 and sdx55.
>> Ok I see in your patch
>> https://lore.kernel.org/linux-phy/20230824211952.1397699-17-dmitry.baryshkov@linaro.org/
>> you are updating the resets name. Fine, this change becomes unnecessary.
>> Will rebase my change on your patches.
> Well, even without my changes, GCC_USB3PHY_PHY_BCR is "phy_phy", just
> judging by the name.
Yes. Ok.

Thanks,
Rohit.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
