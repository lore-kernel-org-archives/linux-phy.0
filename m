Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69E3BE936ED
	for <linux-phy@archiver.kernel.org>; Thu,  5 Oct 2023 02:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vVuIztK//giGLBjpVpofx+1YBpfScqoVxHostN21jrg=; b=jBeKLE1ZAIDBI7rkNCzXABbMdL
	lpk/HJ2130/HTyDgWgu4C+HMQ+D3sXBPrz+FMVBmRIlSXza6Q+o4/y+q46IKYSDeiTlMxNw+RZRI6
	iQJ1o8DsvhpD9Hp8eJtu4Wan6Atl3WJLlOjNkwc92zBvjy42nhhuBInT6punIipfuKYznFUiCbbHF
	Gj083kOQwm5KANYiBwL0erAHQReps8oQMXzgzHbmViC7C8UjFWqbik+pBeh49/6LSC3NEFmxsZPT8
	FwxitDbFrlm2j+7tIc62FNBHaUAcaRKC9PZ6g/G4nLXStwtjEexfXMGDYWD2TFEDvKqgVQWoby9Mj
	wNqZ3Hjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qoEUh-001GPT-04;
	Thu, 05 Oct 2023 02:53:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoEUc-001GOc-2x
	for linux-phy@lists.infradead.org;
	Thu, 05 Oct 2023 02:53:41 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3952fMpg014041;
	Thu, 5 Oct 2023 02:53:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=t2VKfZO3kaUydr1C8UHvRTAhUAaI59kgNGZmiU5iSQw=;
 b=ZVzbzDBvRjg/6Id8Gi63jMlR9FTP5+qsuIx5xcOS/cXU1PTId+D76+lTILukyL1neuHb
 gthGRfZion4nudW86OLnQ1EzpfFX7qKHDTjxfLOgaNS3DZTX/q8dqpkUzCQB5GyZCPoR
 lbRTxVV/ltBJrUJIoKMWGuwsimCIAAwFDHc/Jiv7YPq7pYXLFUx5FdbzC18ruMvg/Ipb
 HqQRH1Z8ZHvE/nVmz/oxfE7EUZIDSpeLcS8xzraJhSX4MyrcC2I2yksuMC817L/HkksK
 ntWKkiYdR3ilAY7ox6LDLEs+YsnIcCoOSUXbNOoo93kDnI43UfInwum47o2//Fb5to/H 3Q== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3th2gq2njh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 05 Oct 2023 02:53:18 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3952rHx2005537
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 5 Oct 2023 02:53:17 GMT
Received: from [10.50.3.48] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Wed, 4 Oct
 2023 19:53:10 -0700
Message-ID: <d4ea5877-b2e8-4cfe-9129-7fdae30adf20@quicinc.com>
Date: Thu, 5 Oct 2023 08:23:02 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] dt-bindings: phy: qcom,uniphy-pcie: Document PCIe
 uniphy
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <lpieralisi@kernel.org>, <kw@linux.com>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <mani@kernel.org>, <p.zabel@pengutronix.de>,
        <quic_srichara@quicinc.com>, <quic_varada@quicinc.com>,
        <quic_ipkumar@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
References: <20231003120846.28626-1-quic_nsekar@quicinc.com>
 <20231003120846.28626-2-quic_nsekar@quicinc.com>
 <4bc021c1-0198-41a4-aa73-bf0cf0c0420a@linaro.org>
From: Nitheesh Sekar <quic_nsekar@quicinc.com>
In-Reply-To: <4bc021c1-0198-41a4-aa73-bf0cf0c0420a@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: Lhri4GHhApCv2WP1UNSg7ujlNiVXSe8W
X-Proofpoint-ORIG-GUID: Lhri4GHhApCv2WP1UNSg7ujlNiVXSe8W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-04_13,2023-10-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 lowpriorityscore=0 phishscore=0 mlxlogscore=999 mlxscore=0 impostorscore=0
 malwarescore=0 suspectscore=0 clxscore=1011 bulkscore=0 adultscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310050023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_195338_960784_20A5262D 
X-CRM114-Status: GOOD (  17.95  )
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


On 10/4/2023 12:27 PM, Krzysztof Kozlowski wrote:
> On 03/10/2023 14:08, Nitheesh Sekar wrote:
>> Document the Qualcomm UNIPHY PCIe 28LP present in IPQ5018.
>>
>> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Thank you for your patch. There is something to discuss/improve.
Sure. Will learn and improve.
>
>
>> ---
>>   .../bindings/phy/qcom,uniphy-pcie-28lp.yaml   | 77 +++++++++++++++++++
>>   1 file changed, 77 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/phy/qcom,uniphy-pcie-28lp.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,uniphy-pcie-28lp.yaml b/Documentation/devicetree/bindings/phy/qcom,uniphy-pcie-28lp.yaml
>> new file mode 100644
>> index 000000000000..6b2574f9532e
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/qcom,uniphy-pcie-28lp.yaml
> Filename should match compatibles and they do not use 28lp.
Sure. will remove the 28lp. added it based on the file name.
Is "qcom,uniphy-pcie.yaml" good ? Because this will be used for other 
SoCs as well which will have different compatibles. So i did not include 
the SoC name, lane and speed info which i have used int he compatible 
names.
>
>> @@ -0,0 +1,77 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/phy/qcom,uniphy-pcie-28lp.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm UNIPHY PCIe 28LP PHY driver
> Driver as Linux driver? Drop. Describe the hardware instead.
>
>> +
>> +maintainers:
>> +  - Nitheesh Sekar <quic_nsekar@quicinc.com>
>> +  - Sricharan Ramabadhran <quic_srichara@quicinc.com>
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - qcom,ipq5018-uniphy-pcie-gen2x1
>> +      - qcom,ipq5018-uniphy-pcie-gen2x2
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    maxItems: 1
>> +
>> +  clock-names:
>> +    items:
>> +      - const: pipe_clk
> Drop _clk... or even drop entire clock-names. Not needed for one entry.
Sure. Will drop "_clk" part.
>
>> +
>> +  resets:
>> +    maxItems: 2
>> +
>> +  reset-names:
>> +    items:
>> +      - const: phy
>> +      - const: phy_phy
> These are absolutely terrible names. If you have third one, it would be
> "phy_phy_phy"? Drop or provide something useful.
Sure. Will update.

Thanks,
Nitheesh

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
