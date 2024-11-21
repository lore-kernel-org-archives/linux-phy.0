Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41AB5D75BCC
	for <linux-phy@archiver.kernel.org>; Thu, 21 Nov 2024 07:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4cJCd06nISeP2OFxZpQMqj0SItvNUvKAR1cOOcx4FY=; b=dUIEoctPXEVD0I
	byNQMQ+4r6By6ZUYc+4REmQ+21SBxsRsNbcMWBxHW1yTHs/Qsw1I1D4yn/ihlBIDIduh4OQpulvr6
	NbTWPrDIRbR8ocDPQ1g6/gK5qwvlA43uDp1drHHHWFpwe4PqqfyA+5G0ai+nufc86ci/+M2oCPEXa
	9HSvHTJTM3PKC+SvLAcNvFnsCfwASUg8zvDk8Xf1C+d1F5Q5dZbXsGllRBzla1XQ2+CLlDXKfNWVl
	t6xirPSe7RTRD3mk38g0DZTncrUsCTzrvOveDZpYMkisVzj7TN8Ifmr0X+r2PW5Lp0gRGIcIW+0Ho
	vQIw+uoQR/0y7hKUUiPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tE1Wz-0000000H0DU-3z3v;
	Thu, 21 Nov 2024 07:23:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tE1Wx-0000000H0D6-1eUS
	for linux-phy@lists.infradead.org;
	Thu, 21 Nov 2024 07:23:12 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AKL25jU007912;
	Thu, 21 Nov 2024 07:23:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OgQUtubfOBG5geImrHXZ4Dt4bTICf1nzS3URNUfWFoM=; b=FMOHRkVQFWf81SnA
	lKLlpeg/cBpnSurK2+5Vow0tRB1TKnlIPoEFGm3dGNiJUKGNbOUlAu5/PJBQlM3q
	Qp2TZ1J4w1jiuZYgY/XH+LW7kgyUSwarqIH7q66ul5wwayWVxyhjl75fBGwm2PmY
	X+2m5qndRrk5fHfHMccgcyzqDoClVEGCVfIh0DxYRfsBn8mMrM5KJAGrEG4/fOs9
	8/n8U8Y3A/4kVeSh1lnLo6qcIUc6EpoYkJHY6NZEX7rLXFsbu/N5SOAEP+NESXL5
	i4TlV2MtKvNRadEiP9wydoHSMqPOUIDRyjxmj68FK4uYDIxt0nOEJ0woeNIqYkOc
	WTf6vQ==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4318uvkk21-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Nov 2024 07:23:02 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AL7N1w6014582
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Nov 2024 07:23:01 GMT
Received: from [10.64.68.102] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 20 Nov
 2024 23:22:49 -0800
Message-ID: <4226d136-034f-4b7f-a82b-e370ef265958@quicinc.com>
Date: Thu, 21 Nov 2024 15:22:46 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] dt-bindings: PCI: qcom: Document the QCS615 PCIe
 Controller
To: "Rob Herring (Arm)" <robh@kernel.org>
CC: <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <quic_shashim@quicinc.com>, <kernel@quicinc.com>,
        <quic_tdas@quicinc.com>, <quic_aiquny@quicinc.com>,
        <quic_qianyu@quicinc.com>, <quic_tingweiz@quicinc.com>,
        <neil.armstrong@linaro.org>, <andersson@kernel.org>,
        <linux-kernel@vger.kernel.org>, <kishon@kernel.org>,
        <manivannan.sadhasivam@linaro.org>, <kw@linux.com>,
        <lpieralisi@kernel.org>, <bhelgaas@google.com>,
        <linux-phy@lists.infradead.org>, <conor+dt@kernel.org>,
        <konradybcio@kernel.org>,
        Krishna chaitanya chundru
	<quic_krichai@quicinc.com>,
        <vkoul@kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <quic_kaushalk@quicinc.com>
References: <20241118082619.177201-1-quic_ziyuzhan@quicinc.com>
 <20241118082619.177201-4-quic_ziyuzhan@quicinc.com>
 <173192264707.1449621.6365585789543415603.robh@kernel.org>
Content-Language: en-US
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
In-Reply-To: <173192264707.1449621.6365585789543415603.robh@kernel.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: YtXgdrAzVmuJomfqdKrzYyl1mIDXDO4y
X-Proofpoint-GUID: YtXgdrAzVmuJomfqdKrzYyl1mIDXDO4y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 bulkscore=0
 priorityscore=1501 phishscore=0 adultscore=0 malwarescore=0 mlxscore=0
 lowpriorityscore=0 mlxlogscore=999 spamscore=0 suspectscore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411210056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241120_232311_559182_5A4E25D8 
X-CRM114-Status: GOOD (  16.14  )
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

The dependency is missing, I will update in coverletter

On 11/18/2024 5:37 PM, Rob Herring (Arm) wrote:
> My bot found errors running 'make dt_binding_check' on your patch:
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/pci/qcom,pcie-qcs615.yaml: properties:resets: 'anyOf' conditional failed, one must be fixed:
> 	'minItems' is not one of ['maxItems', 'description', 'deprecated']
> 		hint: Only "maxItems" is required for a single entry if there are no constraints defined for the values.
> 	'minItems' is not one of ['description', 'deprecated', 'const', 'enum', 'minimum', 'maximum', 'multipleOf', 'default', '$ref', 'oneOf']
> 	'maxItems' is not one of ['description', 'deprecated', 'const', 'enum', 'minimum', 'maximum', 'multipleOf', 'default', '$ref', 'oneOf']
> 	1 is less than the minimum of 2
> 		hint: Arrays must be described with a combination of minItems/maxItems/items
> 	hint: cell array properties must define how many entries and what the entries are when there is more than one entry.
> 	from schema $id:http://devicetree.org/meta-schemas/reset.yaml#
> Documentation/devicetree/bindings/pci/qcom,pcie-qcs615.example.dts:24:18: fatal error: dt-bindings/clock/qcom,qcs615-gcc.h: No such file or directory
>     24 |         #include <dt-bindings/clock/qcom,qcs615-gcc.h>
>        |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> compilation terminated.
> make[2]: *** [scripts/Makefile.dtbs:129: Documentation/devicetree/bindings/pci/qcom,pcie-qcs615.example.dtb] Error 1
> make[2]: *** Waiting for unfinished jobs....
> make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1442: dt_binding_check] Error 2
> make: *** [Makefile:224: __sub-make] Error 2
>
> doc reference errors (make refcheckdocs):
>
> Seehttps://patchwork.ozlabs.org/project/devicetree-bindings/patch/20241118082619.177201-4-quic_ziyuzhan@quicinc.com
>
> The base for the series is generally the latest rc1. A different dependency
> should be noted in*this* patch.
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

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
