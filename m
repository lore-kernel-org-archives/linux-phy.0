Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F1B9C4167B
	for <linux-phy@archiver.kernel.org>; Mon, 27 Nov 2023 11:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3zn1QE7AfTzhUKeyQbW7dLxHLSgwqEbNgodWv4kgK9U=; b=BbVybvH1yKtzOB
	fEEG7wvNMW3PjuJdcN/JRAbKtBNrCd9rmo3A1kHHhdwF8gOEkP9U9pZsG3qRkwwjjpb13O5we8u5p
	JLq+eRLveYdMMPhHbXXnSLJz4p3vPcOwZcBPsO5wrdNt1DGNrQr2JDQpOA7JsZqq36dupSRoaXQrK
	XzS7OzuiKc9paBcoEkn/tw+SBj4d8VDGsm30w41HKaOq0u8FHpF42LpJmYriR824vUAVA+yEmRfye
	BpfzgIV3igFkZuyapjZpkjCL1BW84qgJDUxda+UGZ+EUqp+3G/6+dXNMkPrBKPKd0NZa2zphFdIin
	F2zGXvdims6DJfPlRhSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7a7D-002Kdo-32;
	Mon, 27 Nov 2023 11:49:27 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7a7A-002KYy-0u
	for linux-phy@lists.infradead.org;
	Mon, 27 Nov 2023 11:49:25 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3ARB3G7R023323;
	Mon, 27 Nov 2023 11:49:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=oUuLdVyesXk1FBSpoe8O/kpXBhAsMocetEcxPvq3ts4=;
 b=jWS0lV+zkBQBf+bXkaKipIaaycwYTucVNASnd0mYpw3k1Vo6F+7GLEA82Xbj2HnDRhmx
 mQshqioI1OoYMBjvriowTAbA4v9y/3RrOnxF2C3B4NbOflKViejGz+m+jsEVcqNatCRw
 28bYTVnymgWGJhZcZm4xRIjhgELYzjbLiACI108MIPiZ+9ciLTadjhiIX2nsUcEu2Fs4
 NfJ8rUWqEeFSBlCNFFWuzUU0qTvWQjxM82WqZ/bq1UXs233Cp+v/nfwqH5Qlp3qZMvEs
 TnrbiK4Kue8hC6J8KxQXBy4xjPJXTxzT8GlxITUjwbsJu0ey1D5mgi020Gan40RMI4wK jg== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3uk9adm17p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 27 Nov 2023 11:49:15 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3ARBnEat016991
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 27 Nov 2023 11:49:14 GMT
Received: from [10.217.219.216] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Mon, 27 Nov
 2023 03:49:08 -0800
Message-ID: <1341f3d2-f20f-af2b-fd6e-bfe63a32630f@quicinc.com>
Date: Mon, 27 Nov 2023 17:19:05 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom,qmp: Add PCIe
 qcom,refclk-always-on property
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>,
        Dmitry Baryshkov
	<dmitry.baryshkov@linaro.org>
CC: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <quic_vbadigan@quicinc.com>,
        <quic_ramkri@quicinc.com>, <quic_nitegupt@quicinc.com>,
        <quic_skananth@quicinc.com>, <quic_vpernami@quicinc.com>,
        <quic_parass@quicinc.com>
References: <20231107-refclk_always_on-v2-0-de23962fc4b3@quicinc.com>
 <20231107-refclk_always_on-v2-1-de23962fc4b3@quicinc.com>
 <CAA8EJpqvCJsft3Y-m2ZYORBg=6P7EhT-PsCSkuQ4xaxuf3KOwA@mail.gmail.com>
 <20231108-surgical-yelling-7314b68c0289@spud>
From: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>
In-Reply-To: <20231108-surgical-yelling-7314b68c0289@spud>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: oB4cY0b_PFjbrYAkkiRiYVDtEAB4y0-X
X-Proofpoint-GUID: oB4cY0b_PFjbrYAkkiRiYVDtEAB4y0-X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-27_09,2023-11-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 mlxscore=0
 clxscore=1011 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 phishscore=0 bulkscore=0 mlxlogscore=999 adultscore=0 impostorscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311060000 definitions=main-2311270080
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_034924_453708_6BFFF9BF 
X-CRM114-Status: GOOD (  19.13  )
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


On 11/8/2023 9:22 PM, Conor Dooley wrote:
> On Tue, Nov 07, 2023 at 03:01:47PM +0200, Dmitry Baryshkov wrote:
>> On Tue, 7 Nov 2023 at 14:26, Krishna chaitanya chundru
>> <quic_krichai@quicinc.com> wrote:
>>> Document qcom,refclk-always-on property which is needed in some platforms
>>> to supply refclk even in PCIe low power states.
>>>
>>> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
>>> ---
>>>   .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml        | 7 +++++++
>>>   1 file changed, 7 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
>>> index 2c3d6553a7ba..263291447a5b 100644
>>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
>>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
>>> @@ -93,6 +93,13 @@ properties:
>>>     "#phy-cells":
>>>       const: 0
>>>
>>> +  qcom,refclk-always-on:
>>> +    type: boolean
>>> +    description: If there is some issues in platform with clkreq signal
>> nit: there are some
>>
>> However this still doesn't describe what kind of issues with clkreq
>> you observe. I mean, clkreq is just a GPIO pin.
>>
>>> +      propagation to the host and due to that host will not send refclk, which
>>> +      results in linkdown in L1.2 or L1.1 exit initiated by EP. This property
>>> +      if set keeps refclk always on even in Low power states (optional).
> Dimitry's issues with the property aside, putting "(optional)" in the
> description is meaningless - qcom,refclk-always-on isn't listed in the
> required properties section, so therefore has to be optional.
>
> Cheers,
> Conor.

I removed the optional flag and updated the description.

- Krishna chaitanya.

>>> +
>>>   required:
>>>     - compatible
>>>     - reg
>>>
>>> --
>>> 2.42.0
>>>
>>>
>>
>> -- 
>> With best wishes
>> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
