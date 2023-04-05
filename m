Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8328BC7619A
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 06:49:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JX++DgBd6UFXIw9Ae075pxpey4voafy5bYDI06pHrbY=; b=x4ClSav9JtSRHx
	2GeVYMWoXzLDKG7VjmLZjt5/GNTn8YUa4SDmjihPfBKaOfCMwqRH0FjIQGJVe8O4zzYYJZLGdgdld
	nuXK8MydSuAwlDs7uPrncSHM68tCx5FoPdX2x7GOtKDo2meacjnUwHJAK7O60/e+cgcCR058S2ylJ
	/BX8nZKaZ45V1OkyQ0dZAQ4wQtXmZnBxKqBPmyT3mv1mbWTLc+hvFuogBh9qz+kP5LnTylTezbkUQ
	Yoko+F4khR+GtevdHBnEX3UH6LK8vsHLhwflXyxzDP6ASy2KNbS4vInBjkkVZQZPA7jpwFIO7ai4d
	VtYwZkQaHuj3nqTJOMCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjwxh-003YCM-3D;
	Wed, 05 Apr 2023 06:49:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjwxf-003YBP-0g
	for linux-phy@lists.infradead.org;
	Wed, 05 Apr 2023 06:49:40 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3352kRaO027864;
	Wed, 5 Apr 2023 06:49:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=pMTTUCHHU6j3fjUG90RslcWOMROfMOqXcVOf9G9/XRM=;
 b=BPknAJ7Be8hKELDGzf3Gqaj5HBOSlrMJgbZ5zGSNLyTBTl0L6EOw079LlhPjbj4EWsvb
 GotY0hgj8bxe5/U7hsmvYeNC5PrUZ7QVVqEjlOlZzOewIzFuqb2c5Gt9KZL6dwnUgc7s
 STxFLxOQkKM+EECpZ1dSyZ8WWn70FTdbhTeuJLMHNelHTtJcsPQN28OdbJfbj5INwNl7
 6CjZ/RNELGUXBgi2ZpOOsIxXRTDJgQeJwi/mhJUxjWuYIxNqpdO7ZRD2M7xBCYcZkaSd
 /S6HhqmmLAHxqg4nV8gNUcSUEE/8xWYb2cxg037T5ynxLahM6Dkx0PreFdUyS5HoCgh3 Jw== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3prnusj2qn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 05 Apr 2023 06:49:30 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3356nTiA021503
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 5 Apr 2023 06:49:29 GMT
Received: from [10.216.45.139] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42; Tue, 4 Apr 2023
 23:49:18 -0700
Message-ID: <bb21ed09-2a05-4499-d544-db5d6d32cb31@quicinc.com>
Date: Wed, 5 Apr 2023 12:19:09 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH V2 3/9] dt-bindings: phy: qcom,qmp-pcie: Add ipq9574
 bindings
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <lpieralisi@kernel.org>, <kw@linux.com>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzysztof.kozlowski+dt@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <mturquette@baylibre.com>,
        <sboyd@kernel.org>, <mani@kernel.org>, <p.zabel@pengutronix.de>,
        <linus.walleij@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-clk@vger.kernel.org>, <linux-gpio@vger.kernel.org>
CC: <quic_srichara@quicinc.com>, <quic_gokulsri@quicinc.com>,
        <quic_sjaganat@quicinc.com>, <quic_kathirav@quicinc.com>,
        <quic_arajkuma@quicinc.com>, <quic_anusha@quicinc.com>,
        <quic_ipkumar@quicinc.com>
References: <20230404164828.8031-1-quic_devipriy@quicinc.com>
 <20230404164828.8031-4-quic_devipriy@quicinc.com>
 <26194da1-95ad-ad04-ae14-319d3e309c1c@linaro.org>
Content-Language: en-US
From: Devi Priya <quic_devipriy@quicinc.com>
In-Reply-To: <26194da1-95ad-ad04-ae14-319d3e309c1c@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: UC-dauBy1p-eblLdW3dmnQoNa4NmyKn8
X-Proofpoint-ORIG-GUID: UC-dauBy1p-eblLdW3dmnQoNa4NmyKn8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-05_02,2023-04-04_05,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 impostorscore=0 suspectscore=0 bulkscore=0 mlxscore=0
 clxscore=1015 malwarescore=0 mlxlogscore=775 adultscore=0 phishscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304050062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_234939_365419_6B651D9D 
X-CRM114-Status: GOOD (  12.55  )
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



On 4/5/2023 12:16 PM, Krzysztof Kozlowski wrote:
> On 04/04/2023 18:48, Devi Priya wrote:
>> Add bindings for the PCIe QMP PHYs found on IPQ9574
>>
>> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
>> ---
>>   Changes in V2:
>> 	- Added the ipq9574 bindings here as the phy nodes in the DT
>> 	  are modified to follow the latest style (without child node)
>>
> 
> The amount of changes and optionality of few properties suggests this
> should be new binding.
Sure, got it. Will add a newer binding for ipq9574 in next spin
> 
> Best regards,
> Krzysztof
> 
Thanks,
Devi Priya

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
