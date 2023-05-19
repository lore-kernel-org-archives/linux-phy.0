Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53FA8C77B75
	for <linux-phy@archiver.kernel.org>; Fri, 19 May 2023 09:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UYQfceSzULvwObfm8w7kit1jSdlllUXBm7X7LSd12us=; b=LSM4YDsulqw4y8
	beLPtvYoMIexKRmTZ5mODVR5iQWONl6eERL75+jh/uhSyu1mXzDRvigwXI0O0yUMkCihAqlF7ODIM
	qpCNj5boeRa3Ohg2m8gLJ1mqwViZIp4uU34gfH81zY7FXVOno8U1kLClwvbdEeK6ySm+6gw7VN53T
	hEqWm1ni0iUv4cq3CpNLpj5skzsxM+Eu33cLSvKexx0IqrHi4dyKUwSDkaPWnbCP+ZbuzlxNgdCfZ
	nMkRvv8rgshAgQ7rOWVLNcQIYIFuleBkvMD2QfB6d3Nqvh7IxjkVwJVgQqGZeLC0HbxtYV6muoKlv
	NIpkqXmzqCS3/ywh/O0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzwTi-00Fj49-2y;
	Fri, 19 May 2023 09:32:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzwTf-00Fj3A-2h
	for linux-phy@lists.infradead.org;
	Fri, 19 May 2023 09:32:49 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34J8HWdT019195;
	Fri, 19 May 2023 09:32:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=7MrAXfkaHJRG2+gJIQBBVWcJlXg0VFzqvF/nx5Zn7p4=;
 b=EDpTiLb6m98sBuAk6PXTyn38Ja4urLSbK2dAYqI9tchkr1Obv9c/841xbfSQrUSmoPjn
 MCvMQsR6Iba5BKhOiSVCKsNrIgspiL65TeR4SttxUHBb7syfoSmUs8/0muKaTlWEOFD0
 cAw8399O4r7MdYrUc0mSXmATZTLiajeTys+JkQo9PrODHqTPLxWSGth0g0ijiTso+oWD
 QQpj2gQQ8hCeIzwL67hzjiHZ8dWagLPo6i6q9yM0u0zZYGt1QY4L0w1CIqG7iuuSgUEZ
 7lW6VIdkTLQaSB76Z6CrQwWOJlAqOVoV66OcrXmd1xadZgWsbTvvRQL9vzcG4uzqK3LQ 5A== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3qp0gk8qkd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 19 May 2023 09:32:41 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 34J9WdoV025568
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 19 May 2023 09:32:39 GMT
Received: from [10.50.31.193] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42; Fri, 19 May
 2023 02:32:34 -0700
Message-ID: <83afe19f-6f5e-988a-de0b-9f9de9a7733c@quicinc.com>
Date: Fri, 19 May 2023 15:02:25 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH V2 1/2] dt-bindings: phy: qcom,qmp-pcie: Add ipq9574
 bindings
To: Rob Herring <robh@kernel.org>
CC: <andersson@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <vkoul@kernel.org>,
        <quic_srichara@quicinc.com>, <krzysztof.kozlowski+dt@linaro.org>,
        <quic_sjaganat@quicinc.com>, <quic_anusha@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <quic_ipkumar@quicinc.com>,
        <kishon@kernel.org>, <quic_arajkuma@quicinc.com>,
        <conor+dt@kernel.org>, <quic_kathirav@quicinc.com>,
        <konrad.dybcio@linaro.org>, <linux-phy@lists.infradead.org>,
        <robh+dt@kernel.org>, <agross@kernel.org>
References: <20230519085723.15601-1-quic_devipriy@quicinc.com>
 <20230519085723.15601-2-quic_devipriy@quicinc.com>
 <168448818232.3014347.12687378726384996026.robh@kernel.org>
Content-Language: en-US
From: Devi Priya <quic_devipriy@quicinc.com>
In-Reply-To: <168448818232.3014347.12687378726384996026.robh@kernel.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: uvUx_OxTzKM4ubTS1uhlTCtY9att-qsA
X-Proofpoint-ORIG-GUID: uvUx_OxTzKM4ubTS1uhlTCtY9att-qsA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-19_06,2023-05-17_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 lowpriorityscore=0 spamscore=0 clxscore=1015 malwarescore=0
 mlxlogscore=999 priorityscore=1501 mlxscore=0 phishscore=0 bulkscore=0
 adultscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2304280000 definitions=main-2305190080
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230519_023247_995470_A741DF24 
X-CRM114-Status: GOOD (  20.48  )
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



On 5/19/2023 2:53 PM, Rob Herring wrote:
> 
> On Fri, 19 May 2023 14:27:22 +0530, Devi Priya wrote:
>> Add bindings for the PCIe QMP PHYs found on IPQ9574.
>>
>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
>> ---
>>   Changes in V2:
>> 	- Picked up the R-b tag
>> 	- Did not convert the clock IDs to numerical values as the clock
>> 	  header (dependent patch) is merged in latest rc1.
>>
>>   .../phy/qcom,ipq9574-qmp-pcie-phy.yaml        | 90 +++++++++++++++++++
>>   1 file changed, 90 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/phy/qcom,ipq9574-qmp-pcie-phy.yaml
>>
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> Error: Documentation/devicetree/bindings/phy/qcom,ipq9574-qmp-pcie-phy.example.dts:29.26-27 syntax error
> FATAL ERROR: Unable to parse input tree
> make[1]: *** [scripts/Makefile.lib:419: Documentation/devicetree/bindings/phy/qcom,ipq9574-qmp-pcie-phy.example.dtb] Error 1
> make[1]: *** Waiting for unfinished jobs....
> make: *** [Makefile:1512: dt_binding_check] Error 2
> 
Sorry, The PCIe clocks are added part of the below series:
https://lore.kernel.org/linux-arm-msm/20230519090219.15925-1-quic_devipriy@quicinc.com/

Thanks,
Devi Priya
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230519085723.15601-2-quic_devipriy@quicinc.com
> 
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
