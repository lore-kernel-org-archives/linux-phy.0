Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 806DCC77B61
	for <linux-phy@archiver.kernel.org>; Mon, 10 Apr 2023 06:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=en0/DGwg0duS5VXUns3t4Yh6wkD+GSyVucai8y/8Jv0=; b=BhcB/TlMRGZY7N
	0baWfcixaogHAL5TVmeg8igm3aKsjTazmwfq5H2vPhNpr42BqcVLUeeY7Wlk+mHLD7JN7zewB8C1P
	H0w8AyM2ZbPU9Jq1/e13AsnKS/3Q7VCheCNdPcXr18UV2oO8maV3JqpV6Joz7H86c19pbztxF7v18
	X+UWlaY3Ow4gSKkl4RxBaEi6KVrxeY0DoXKdxFrarmWnl+tN62Bsfm7Y2f5Qh2KSm/0YiyjRFZ7hF
	ktkqNHGdB+JsZm51jWWFauWbS60qkYQPua6POmso7ilnwXpOVkI9RExxXZ7G20NF6ZBJePRF8UiWX
	3uOUw7oSRCapPYw11RLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pll76-00EfJp-04;
	Mon, 10 Apr 2023 06:34:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pll72-00EfJF-2i
	for linux-phy@lists.infradead.org;
	Mon, 10 Apr 2023 06:34:50 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33A5tI9C012895;
	Mon, 10 Apr 2023 06:34:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=Hclue6ug/7B1tehPsDnrLRVAC5+IwS28gpXRNRQ59eY=;
 b=L4SWaNAtgyzPMgy2W/nju2PEwQdLPkIgDEu3gTr0/13wEdHpZVcMzwQ1jTLcf2zxIPeN
 Couofl3KKCcL0nPUSjLk0Bqpt+AGEafqm+T2M48ZZECHO5zrqMwVrGSoGpaXNJrFcPdh
 m8AVrAjwGjzJg+7mO+WA3/9fwIRYNRxHlcEcTZhDvaKcVNaVN/olRlWlFZtHKStHiHKS
 NNNTtukVDwR8huJB7SZ4z/F4KDtE7q+fsDklIj+8aAfCfxaXL23AC4lT5abHDM5jv0IP
 brbWcxh/lnaAyyPepe7VijPf8f7DT32E1yagKT6jSfT+E2E5xP6kE9ITX6+alExOgJmV HQ== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3pu0c32bhp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Apr 2023 06:34:37 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 33A6YaVq022406
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Apr 2023 06:34:36 GMT
Received: from [10.216.3.168] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42; Sun, 9 Apr 2023
 23:34:26 -0700
Message-ID: <858e8459-75bb-c507-5cbb-146d56e1ad27@quicinc.com>
Date: Mon, 10 Apr 2023 12:04:17 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH V2 6/9] dt-bindings: pinctrl: qcom: Add few missing
 functions
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
 <20230404164828.8031-7-quic_devipriy@quicinc.com>
 <445ed49a-9ea6-0851-b0c5-bdd1d420689e@linaro.org>
Content-Language: en-US
From: Devi Priya <quic_devipriy@quicinc.com>
In-Reply-To: <445ed49a-9ea6-0851-b0c5-bdd1d420689e@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: DaHnYsZOODC7SRrBMg0JxUu9a5NB5J05
X-Proofpoint-ORIG-GUID: DaHnYsZOODC7SRrBMg0JxUu9a5NB5J05
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-10_03,2023-04-06_03,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 priorityscore=1501 bulkscore=0 lowpriorityscore=0 phishscore=0 mlxscore=0
 suspectscore=0 clxscore=1015 spamscore=0 malwarescore=0 adultscore=0
 mlxlogscore=580 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304100055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230409_233449_024501_32FF32B2 
X-CRM114-Status: GOOD (  13.01  )
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



On 4/5/2023 12:28 PM, Krzysztof Kozlowski wrote:
> On 04/04/2023 18:48, Devi Priya wrote:
>> Added the missing functions cri_trng2, gpio and removed the
>> duplicate entry qdss_tracedata_b
>>
>> Fixes: 5b63ccb69ee8 ("dt-bindings: pinctrl: qcom: Add support for IPQ9574")
> 
> Fixes are either separate patches or sent as first in the series. This
> is not really related to PCI, so it should be separate patchset.
Got it, will post it as a separate patch
> 
>> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
>> ---
>>   Changes in V2:
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Thanks!
> 
> Best regards,
> Krzysztof
> 
Best Regards,
Devi Priya

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
