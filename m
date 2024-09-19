Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C363CF3942
	for <linux-phy@archiver.kernel.org>; Thu, 19 Sep 2024 13:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b/floe1z6g/woDLQntUwkWbkVpoVIdFmClbLnUt2LPI=; b=ydd66wRYTMFQ7s
	qnRsrbbaPdudXa9sEcByyGeF+Xwih5ujYDIxbK6YSkCIn1dfwhrPowV0y+xGwAVpKsWX0TDb9TcTI
	GWkQISI4RtDnEgRE7jIt3ECNfMv7tHE4IYdwW6SSxlywczt1uIadhO4+BLakf3tj8y3K3ovbmmLk9
	Udo5QotbbU8+g0yw0lr/sObskYMV6L4coYLZ9Dr/zvoyEcRNOOSgFXeKwOfmhLjO8qxfuTY0JJv9e
	UyVkhiv3a4ePLQOcdiVkfWaxTQuussNqPs16GK7K4KYQu+NlZVyFpCUngr8HNsPgj4S/xgplnfPWz
	jrVMbAPh8Gy7uOixY2Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srHVz-0000000AMwO-3j27;
	Thu, 19 Sep 2024 13:48:12 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1srHVw-0000000AMvM-3pbd
	for linux-phy@lists.infradead.org;
	Thu, 19 Sep 2024 13:48:10 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48J9LYej024791;
	Thu, 19 Sep 2024 13:47:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hDBCaMgpGL9eOfWjmuYLuKpODfSFLLqQaCiE5cxk4WY=; b=cNI8GUnYLteAkbbj
	KG7YRa+uwnPcyizs6Lc7JFvOs3ACVbsVm0f96sf1r8zy3IgakX7v7GiEAUaImfhv
	ij+XZgFpUfUt+r3nW+251H9kZeZK9yYwmNxwxccwR1k2Kg+qScPsCv49xDh1NpsO
	iTdGHoLB3MPWZNT3r9wZFDINgPDPUqFPh4xpa+lEm13fRxkR9Lb88Iq9raeR1BWQ
	DGVt80PnNQKJICZCSXoyQofw4Wu7hMVK+Xx7hioJYXWq4Xj3zT+w/YOscxtJodId
	k1l4gfsuFxNU5eBuAhD4sEq0PCesBFwXQJGYc+VjOe8qRpi/6RDXUAyWNYNNQnCF
	EWlDGg==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41n4gedc32-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Sep 2024 13:47:57 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 48JDluPJ002844
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Sep 2024 13:47:56 GMT
Received: from [10.253.37.179] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Thu, 19 Sep
 2024 06:47:52 -0700
Message-ID: <1dff17e3-580b-4829-b889-0c559db64f26@quicinc.com>
Date: Thu, 19 Sep 2024 21:47:29 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the X1E80100 QMP PCIe PHY Gen4 x8
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <andersson@kernel.org>, <konradybcio@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <abel.vesa@linaro.org>, <quic_msarkar@quicinc.com>,
        <quic_devipriy@quicinc.com>, <dmitry.baryshkov@linaro.org>,
        <kw@linux.com>, <lpieralisi@kernel.org>, <neil.armstrong@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-clk@vger.kernel.org>
References: <20240913083724.1217691-1-quic_qianyu@quicinc.com>
 <20240913083724.1217691-2-quic_qianyu@quicinc.com>
 <20240913133751.2yegqbobvfzbogxc@thinkpad>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <20240913133751.2yegqbobvfzbogxc@thinkpad>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: UZwaA9CQWVSHI1Ll4zedF_4M1zgh8_7H
X-Proofpoint-ORIG-GUID: UZwaA9CQWVSHI1Ll4zedF_4M1zgh8_7H
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 mlxlogscore=999 impostorscore=0 bulkscore=0 clxscore=1015
 lowpriorityscore=0 adultscore=0 phishscore=0 suspectscore=0
 priorityscore=1501 mlxscore=0 spamscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2408220000
 definitions=main-2409190091
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240919_064808_992907_1332EF19 
X-CRM114-Status: GOOD (  11.86  )
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


On 9/13/2024 9:37 PM, Manivannan Sadhasivam wrote:
> On Fri, Sep 13, 2024 at 01:37:20AM -0700, Qiang Yu wrote:
>> PCIe 3rd instance of X1E80100 support Gen 4x8 which needs different 8 lane
>> capable QMP PCIe PHY. Document Gen 4x8 PHY as separate module.
>>
> Nit: please use 'Gen 4 x8'
Will update in next version patch.

Thanks,
Qiang
>
> - Mani
>
>> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
>> ---
>>   .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml    | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
>> index dcf4fa55fbba..680ec3113c2b 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
>> @@ -41,6 +41,7 @@ properties:
>>         - qcom,x1e80100-qmp-gen3x2-pcie-phy
>>         - qcom,x1e80100-qmp-gen4x2-pcie-phy
>>         - qcom,x1e80100-qmp-gen4x4-pcie-phy
>> +      - qcom,x1e80100-qmp-gen4x8-pcie-phy
>>   
>>     reg:
>>       minItems: 1
>> @@ -172,6 +173,7 @@ allOf:
>>                 - qcom,sc8280xp-qmp-gen3x2-pcie-phy
>>                 - qcom,sc8280xp-qmp-gen3x4-pcie-phy
>>                 - qcom,x1e80100-qmp-gen4x4-pcie-phy
>> +              - qcom,x1e80100-qmp-gen4x8-pcie-phy
>>       then:
>>         properties:
>>           clocks:
>> @@ -201,6 +203,7 @@ allOf:
>>                 - qcom,sm8550-qmp-gen4x2-pcie-phy
>>                 - qcom,sm8650-qmp-gen4x2-pcie-phy
>>                 - qcom,x1e80100-qmp-gen4x2-pcie-phy
>> +              - qcom,x1e80100-qmp-gen4x8-pcie-phy
>>       then:
>>         properties:
>>           resets:
>> -- 
>> 2.34.1
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
