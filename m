Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3973C2BD09
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jul 2024 01:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bG0gP6aSBNw0ShcDHkufwKz23LaxCZFvrahpvysz/7Q=; b=jNudNpYSzSmjTd
	LEEDixAVNHVcaHPOr8+EcnxFXStThMNiX5vF+3qBZU/cnH6l0GiDaPl3IaaWBbJoAtaQBqIk1Dqui
	ZtAmNScDyHFyh+2Gz6QolXNCbVMNBBw7l24LOikUqJiiGgf/SDYb6KCKaAHKnPqSWy3k0MrITtNNQ
	zKSe+LqKn9blM2UsfyI2K8QBEhbdJaZ+C+fyHbzV2vBUgUDt/B4QkGu1hroAuig/kx+7cwJ4BEncs
	oi5VLO75An/osB19oLgkI6LdZXU4P4yVaFVJcIdzpb8Upp40EP0VIM0SWSnBcxBsj1CzF1jDxNmpb
	fyopnjKbg+Qz3FGEXRIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPB3m-0000000BqLD-1cl5;
	Thu, 04 Jul 2024 01:14:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPB3h-0000000BqKh-3Qvq;
	Thu, 04 Jul 2024 01:14:51 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 463J5REs004615;
	Thu, 4 Jul 2024 01:14:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uRpXLfcsvuxp+p8SsgPzPXaUhVpL09CJ831wMJ2Y/vg=; b=I0UgO50rDrjeRMJF
	BILIdUuwdLmbrSNFIfaTFtwmz/KxMj7Dr6CWyrNVYFR0TFK8Y5yzTbDVbOCv5vEy
	CR1zZtsFcUGSEiHucqt04C6VOIk7bXUZL9ciyCgE5LRCW/mmjBzqzBI+9PkFWx90
	ZyNCgKv1Hb+HsiZs5zKItolFMIsURCjHg+RhnXW6j4kIVi4Xo2MPbz5ve5e/jayg
	l8qtMhya6USe188vSIG2yyCNddQSRJxXlrblHfo8Zz3nPJRYJwI5lXEOq++PbpTe
	Da6XnoIOhmWzfwIsVmhuhwfea12Ni235a9aIxG0PY/fidynTiw7q/iIpYMXM621n
	xXSQkQ==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 405cg28gk6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 04 Jul 2024 01:14:23 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.19/8.17.1.19) with ESMTPS id 4641EMjB015598
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 4 Jul 2024 01:14:22 GMT
Received: from [10.239.132.204] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 3 Jul 2024
 18:14:01 -0700
Message-ID: <f4162b7f-d957-4dd6-90a0-f65c1cbc213a@quicinc.com>
Date: Thu, 4 Jul 2024 09:13:59 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 29/47] dt-bindings: net: qcom,ethqos: add description for
 qcs9100
To: Andrew Halaney <ahalaney@redhat.com>
CC: <andersson@kernel.org>, <konrad.dybcio@linaro.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <djakov@kernel.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <jassisinghbrar@gmail.com>, <herbert@gondor.apana.org.au>,
        <davem@davemloft.net>, <manivannan.sadhasivam@linaro.org>,
        <will@kernel.org>, <joro@8bytes.org>, <conor@kernel.org>,
        <tglx@linutronix.de>, <amitk@kernel.org>, <thara.gopinath@gmail.com>,
        <linus.walleij@linaro.org>, <wim@linux-watchdog.org>,
        <linux@roeck-us.net>, <rafael@kernel.org>, <viresh.kumar@linaro.org>,
        <vkoul@kernel.org>, <edumazet@google.com>, <kuba@kernel.org>,
        <pabeni@redhat.com>, <mcoquelin.stm32@gmail.com>,
        <robimarko@gmail.com>, <bartosz.golaszewski@linaro.org>,
        <kishon@kernel.org>, <quic_wcheng@quicinc.com>,
        <alim.akhtar@samsung.com>, <avri.altman@wdc.com>, <bvanassche@acm.org>,
        <agross@kernel.org>, <gregkh@linuxfoundation.org>,
        <quic_tdas@quicinc.com>, <robin.murphy@arm.com>,
        <daniel.lezcano@linaro.org>, <rui.zhang@intel.com>,
        <lukasz.luba@arm.com>, <quic_rjendra@quicinc.com>,
        <ulf.hansson@linaro.org>, <quic_sibis@quicinc.com>,
        <otto.pflueger@abscue.de>, <luca@z3ntu.xyz>,
        <neil.armstrong@linaro.org>, <abel.vesa@linaro.org>,
        <bhupesh.sharma@linaro.org>, <alexandre.torgue@foss.st.com>,
        <peppe.cavallaro@st.com>, <joabreu@synopsys.com>,
        <netdev@vger.kernel.org>, <lpieralisi@kernel.org>, <kw@linux.com>,
        <bhelgaas@google.com>, <krzysztof.kozlowski@linaro.org>,
        <u.kleine-koenig@pengutronix.de>, <dmitry.baryshkov@linaro.org>,
        <quic_cang@quicinc.com>, <danila@jiaxyga.com>,
        <quic_nitirawa@quicinc.com>, <mantas@8devices.com>,
        <athierry@redhat.com>, <quic_kbajaj@quicinc.com>,
        <quic_bjorande@quicinc.com>, <quic_msarkar@quicinc.com>,
        <quic_devipriy@quicinc.com>, <quic_tsoni@quicinc.com>,
        <quic_rgottimu@quicinc.com>, <quic_shashim@quicinc.com>,
        <quic_kaushalk@quicinc.com>, <quic_tingweiz@quicinc.com>,
        <quic_aiquny@quicinc.com>, <srinivas.kandagatla@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-pm@vger.kernel.org>,
        <linux-clk@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-crypto@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <iommu@lists.linux.dev>, <linux-gpio@vger.kernel.org>,
        <linux-watchdog@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>, <kernel@quicinc.com>
References: <20240703025850.2172008-1-quic_tengfan@quicinc.com>
 <20240703025850.2172008-30-quic_tengfan@quicinc.com>
 <u5ekupjqvgoehkl76pv7ljyqqzbnnyh6ci2dilfxfkcdvdy3dp@ehdujhkul7ow>
From: Tengfei Fan <quic_tengfan@quicinc.com>
In-Reply-To: <u5ekupjqvgoehkl76pv7ljyqqzbnnyh6ci2dilfxfkcdvdy3dp@ehdujhkul7ow>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 2ToY-VFWJVX4PxSXMxm7v7m6lN_KrTeg
X-Proofpoint-ORIG-GUID: 2ToY-VFWJVX4PxSXMxm7v7m6lN_KrTeg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-03_18,2024-07-03_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 adultscore=0 spamscore=0 mlxscore=0 bulkscore=0 mlxlogscore=915
 malwarescore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 phishscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2406140001 definitions=main-2407040008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_181449_902358_C0104AB9 
X-CRM114-Status: GOOD (  17.14  )
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



On 7/3/2024 11:09 PM, Andrew Halaney wrote:
> On Wed, Jul 03, 2024 at 10:58:32AM GMT, Tengfei Fan wrote:
>> Add the compatible for the MAC controller on qcs9100 platforms. This MAC
>> works with a single interrupt so add minItems to the interrupts property.
>> The fourth clock's name is different here so change it. Enable relevant
>> PHY properties. Add the relevant compatibles to the binding document for
>> snps,dwmac as well.
> 
> This description doesn't match what was done in this patch, its what
> Bart did when he made changes to add the sa8775 changes. Please consider
> using a blurb indicating that this is the same SoC as sa8775p, just with
> different firmware strategies or something along those lines?

I will update this commit message as you suggested.

> 
>>
>> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
>> ---
>>   Documentation/devicetree/bindings/net/qcom,ethqos.yaml | 1 +
>>   Documentation/devicetree/bindings/net/snps,dwmac.yaml  | 3 +++
>>   2 files changed, 4 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml b/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
>> index 6672327358bc..8ab11e00668c 100644
>> --- a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
>> +++ b/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
>> @@ -20,6 +20,7 @@ properties:
>>     compatible:
>>       enum:
>>         - qcom,qcs404-ethqos
>> +      - qcom,qcs9100-ethqos
>>         - qcom,sa8775p-ethqos
>>         - qcom,sc8280xp-ethqos
>>         - qcom,sm8150-ethqos
>> diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
>> index 3bab4e1f3fbf..269c21779396 100644
>> --- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
>> +++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
>> @@ -67,6 +67,7 @@ properties:
>>           - loongson,ls2k-dwmac
>>           - loongson,ls7a-dwmac
>>           - qcom,qcs404-ethqos
>> +        - qcom,qcs9100-ethqos
>>           - qcom,sa8775p-ethqos
>>           - qcom,sc8280xp-ethqos
>>           - qcom,sm8150-ethqos
>> @@ -582,6 +583,7 @@ allOf:
>>                 - ingenic,x1600-mac
>>                 - ingenic,x1830-mac
>>                 - ingenic,x2000-mac
>> +              - qcom,qcs9100-ethqos
>>                 - qcom,sa8775p-ethqos
>>                 - qcom,sc8280xp-ethqos
>>                 - snps,dwmac-3.50a
>> @@ -639,6 +641,7 @@ allOf:
>>                 - ingenic,x1830-mac
>>                 - ingenic,x2000-mac
>>                 - qcom,qcs404-ethqos
>> +              - qcom,qcs9100-ethqos
>>                 - qcom,sa8775p-ethqos
>>                 - qcom,sc8280xp-ethqos
>>                 - qcom,sm8150-ethqos
>> -- 
>> 2.25.1
>>
> 

-- 
Thx and BRs,
Tengfei Fan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
