Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15C0BC3ABC0
	for <linux-phy@archiver.kernel.org>; Wed,  7 May 2025 10:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=64k4M9H1TRIDXp+nXnl4jwVxaEP18kCDG305ChZq8H4=; b=gkWCUB0T/9qQ7J
	khHuMskr6B03dnzBL5xmSRUGXsfAGBaLxXcK699yXI8b8hOMzJfYz2bVmJKrnBfhvCyKy6iiMcLGU
	JGCvv4Al2q6leRtyuXtTLdHcX4erop2ooDJCRFeTpaIiiBXzk4jL0DRNiTG4O93EWGyXmib+riHhy
	Isvfvx+2NK71GQckEbkv/57j5mxtW4ZBy/vFs6D5wj6vWsTNg+hCP/yI7r9/fsZoHvYPgMK1kL0DN
	4RDACx+waEt0paJm4fXJDrBaeMZ7w5CIT+m9S+gCzncC3jRXtJCnz9PHu8jBP4BAViLdihV6GP82Z
	9dPN9tlb6M1HX6HJU6XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCbbw-0000000F3b6-3Rza;
	Wed, 07 May 2025 10:02:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCbW8-0000000F28j-2wdC
	for linux-phy@lists.infradead.org;
	Wed, 07 May 2025 09:56:45 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5471H8o6021660;
	Wed, 7 May 2025 09:56:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i3WjVEP76mf0rqTTBuk0vFXV+/2ZlGwZiVlYgOnFqxA=; b=JMe13eXEg2+Y46NC
	KoMLRzOMY8Ja4LHmwpF2M/9yWvze3sx1kTIaGboAoKB+QUS93YOL1fvXIBZrWVI/
	hDr5ywtIBXI5TomzdiUzpMhZaaezHt23mDWqB0DqvPBSylGfN6xYZBU/tl1N7QWb
	bwectKQ2O0Ddkqq2KWp57vS4Obtf1svihx5MZ8ASd7ituMK3y2UXI8E3cSMnc4fK
	tFBEIC8j9fuuLd2xj7w323+jZv2fmwBl0EgNvrN/mQ+c3v1zAGypQ52reGUOEbbM
	nhMXeYsM6vgsUI6T0eFQ3LZ+jC7xWND845oYcP7sQH/TlNiOoQLy089UfJCRompF
	uB3PKg==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46fdwtv2k4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 07 May 2025 09:56:36 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 5479uaAP018854
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 7 May 2025 09:56:36 GMT
Received: from [10.239.29.178] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 7 May 2025
 02:56:28 -0700
Message-ID: <c91c5357-464b-4ecc-96a5-c617048f73e5@quicinc.com>
Date: Wed, 7 May 2025 17:56:12 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/6] dt-bindings: PCI: qcom,pcie-sa8775p: document
 qcs8300
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Ziyue Zhang
	<quic_ziyuzhan@quicinc.com>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <dmitry.baryshkov@linaro.org>, <neil.armstrong@linaro.org>,
        <abel.vesa@linaro.org>, <manivannan.sadhasivam@linaro.org>,
        <lpieralisi@kernel.org>, <kw@linux.com>, <bhelgaas@google.com>,
        <andersson@kernel.org>, <konradybcio@kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <quic_krichai@quicinc.com>,
        <quic_vbadigan@quicinc.com>
References: <20250507031019.4080541-1-quic_ziyuzhan@quicinc.com>
 <20250507031019.4080541-3-quic_ziyuzhan@quicinc.com>
 <20250507-quixotic-handsome-wallaby-4560e3@kuoka>
 <8fef4573-0527-44d8-a481-f3271d9ffa33@quicinc.com>
 <01b06e36-823c-4f28-8db5-dc0ee0b4c063@kernel.org>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <01b06e36-823c-4f28-8db5-dc0ee0b4c063@kernel.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=VPPdn8PX c=1 sm=1 tr=0 ts=681b2e54 cx=c_pps
 a=JYp8KDb2vCoCEuGobkYCKw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8
 a=dLDUmFIFFNY9evZcgTYA:9 a=QEXdDO2ut3YA:10 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: SVOMAAcLwkbfVUfj6PlgHnCuWn07ExSi
X-Proofpoint-ORIG-GUID: SVOMAAcLwkbfVUfj6PlgHnCuWn07ExSi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA3MDA5MiBTYWx0ZWRfX6c1iUg6TOczc
 fkYFtN9r5Ec7tWrDVYsgmT4sPG/QUC3BaDEK0u3D3KRy7QjzXZQHFSwaJ4Ht6ozHiEGCUOkGhNG
 uwNyO9kgdzZNivNepBNY14MZn8qV4zq0RS7+4USXV2HIYREtAgfrLAbZbQUgbjVUNVR3bJFi1t4
 3IF449tvQURByGxxeVGrU+Be8umFC+jIUHf6QMAFgaSeKl9avP2PmQLrAI3rhemvSb3YWPPxbDh
 GwyOxL2pzTLy036OsDOykgJPzLXKdhJSQUuyslSuHmDntuWb2WwLgvka8/PfKzBCusP9FCssKa0
 noY9EUuiKprTdpB2Cy1n0wPWnl0zK8nE5ZeVOe3jmp+8Fi/TjT2NtH7wUFJCQtKTSTbjIlAqzIs
 pm9fhNMAXpmT2eWbSkmgDxKTNKo0qlCcdqF7MtwJkB0zVjkH8XySFQCYkkPwUufrUjNCFLIN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-07_03,2025-05-06_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 suspectscore=0 adultscore=0 mlxscore=0
 bulkscore=0 clxscore=1015 lowpriorityscore=0 impostorscore=0 malwarescore=0
 mlxlogscore=995 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505070092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_025644_750964_5C440D04 
X-CRM114-Status: GOOD (  17.59  )
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


On 5/7/2025 4:25 PM, Krzysztof Kozlowski wrote:
> On 07/05/2025 10:19, Ziyue Zhang wrote:
>> On 5/7/2025 1:10 PM, Krzysztof Kozlowski wrote:
>>> On Wed, May 07, 2025 at 11:10:15AM GMT, Ziyue Zhang wrote:
>>>> Add compatible for qcs8300 platform, with sa8775p as the fallback.
>>>>
>>>> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
>>>> ---
>>>>    .../bindings/pci/qcom,pcie-sa8775p.yaml       | 26 ++++++++++++++-----
>>>>    1 file changed, 19 insertions(+), 7 deletions(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
>>>> index efde49d1bef8..154bb60be402 100644
>>>> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
>>>> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
>>>> @@ -16,7 +16,12 @@ description:
>>>>    
>>>>    properties:
>>>>      compatible:
>>>> -    const: qcom,pcie-sa8775p
>>>> +    oneOf:
>>>> +      - const: qcom,pcie-sa8775p
>>>> +      - items:
>>>> +          - enum:
>>>> +              - qcom,pcie-qcs8300
>>>> +          - const: qcom,pcie-sa8775p
>>>>    
>>>>      reg:
>>>>        minItems: 6
>>>> @@ -45,7 +50,7 @@ properties:
>>>>    
>>>>      interrupts:
>>>>        minItems: 8
>>>> -    maxItems: 8
>>>> +    maxItems: 9
>>> I don't understand why this is flexible for sa8775p. I assume this
>>> wasn't tested or finished, just like your previous patch suggested.
>>>
>>> Please send complete bindings once you finish them or explain what
>>> exactly changed in the meantime.
>>>
>>> Best regards,
>>> Krzysztof
>> Hi Krzysztof
>> Global interrupt is optional in the PCIe driver. It is not present in
>> the SA8775p PCIe device tree node, but it is required for the QCS8300
> And hardware?

The PCIe controller on the SA8775p is also capable of generating a global
interrupt.
>> I did the DTBs and yaml checks before pushing this patch. This is how
>> I became aware that `maxItem` needed to be changed to 9.
> If it is required for QCS8300, then you are supposed to make it required
> in the binding for this device. Look at other bindings.

The global interrupt is not mandatory. The PCIe driver can still function
without this interrupt, but it will offer a better user experience when
the device is plugged in or removed. On other platforms, the global
interrupt is also optional, and `minItems` and `maxItems` are set to 8 and
9 respectively. Please refer to `qcom,pcie - sm8550.yaml`,
`qcom,pcie - sm8450.yaml`, and `qcom,pcie - x1e80100.yaml`.
>
> Best regards,
> Krzysztof

-- 
With best wishes
Qiang Yu


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
