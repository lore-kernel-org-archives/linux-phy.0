Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB4B3CFC26E
	for <linux-phy@archiver.kernel.org>; Tue, 15 Oct 2024 06:22:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DTzo+LZJZYbkS6i71CSDln737W3L2I3YOSVhhzJ1m7Y=; b=rApq7bcsl+++tH
	AHhYXkNitZI5wvW5W/vKStx/h1kV34NKClB/djhtRZC68S33Z+iAxHUeHJwS9EhTFJW/nzAZ81Yjn
	/tXs5IjaM3Wncw6xuM0+unYenJSKbhWY/VI0XTYJ2t7kfmsj6Wk/NlbRQnrfk9fs79cmMJqU30VNM
	bS80cIaHrF0//NqCxucZq0MGlxnZ/Wirwp+GYDwpXWTuM5d+GdfKz9f2LcBTucKDn8uOBPq1IeK5d
	DAvHPMbV7ya4eSoIz9XyB7za3AjovddNopiZHiF0apC7pHUVAkCkCUTOYSz+R4oFIsB5/pj8eMSvh
	KaxhUZgB9Op7TnEgLqmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0awe-00000007CGO-1Bv9;
	Tue, 15 Oct 2024 06:22:12 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0awc-00000007CEu-0mDL
	for linux-phy@lists.infradead.org;
	Tue, 15 Oct 2024 06:22:11 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49F60ccs022241;
	Tue, 15 Oct 2024 06:21:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	g8emflX/OpMc2gjb7urs+l6mNv4BW0vVjUVUTl7rJLI=; b=jsXb/0aBv/Aesf0/
	tq39kVisjauBOVeQz4Uw7BBcETyXIxNMpWP50RicMzOEbxTMr2vVK/egypv6qVil
	+916QPutprqAzJTOgVKXvRitRJJRONQ+1WAd+o3D3SrUnfP8bfM0QAbJ3RQ3IuYw
	hI9mezoqqqe+53zdW7sc1KF7w7ym4Et5tbIMYzrUyZf7whoLmqTf87L4eBMRZg9k
	8xToJmaY7TfRuIyA0kWRUH+ueZvuvSwr6/aJjHNcGDVZa0pwmo2a49jQN89rRXf5
	dCHtbq/URLolg2hwlMpEX65CxinA/KKZVGNzZe8grKpgs2EOvlxY2048w/o5Yk1a
	d8kYUA==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 429jrf81m9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 15 Oct 2024 06:21:54 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 49F6LrW4006749
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 15 Oct 2024 06:21:53 GMT
Received: from [10.64.70.122] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 14 Oct
 2024 23:21:47 -0700
Message-ID: <b2f027d1-5b4a-4b73-aa26-a332df2a561b@quicinc.com>
Date: Tue, 15 Oct 2024 14:21:44 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] dt-bindings: net: qcom,ethqos: add description for
 qcs8300
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: Vinod Koul <vkoul@kernel.org>, "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        "Paolo
 Abeni" <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bhupesh
 Sharma <bhupesh.sharma@linaro.org>,
        Kishon Vijay Abraham I
	<kishon@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        <netdev@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <quic_tingweiz@quicinc.com>,
        <quic_aiquny@quicinc.com>
References: <20241010-schema-v1-0-98b2d0a2f7a2@quicinc.com>
 <20241010-schema-v1-3-98b2d0a2f7a2@quicinc.com>
 <da45vocnwnnnlo6nrxh6x4xwmnsgdp5axfvomzniw5vxlmerer@6ntl3ae4q2ci>
Content-Language: en-US
From: Yijie Yang <quic_yijiyang@quicinc.com>
In-Reply-To: <da45vocnwnnnlo6nrxh6x4xwmnsgdp5axfvomzniw5vxlmerer@6ntl3ae4q2ci>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 5LP9lC2ukrn9cy7hIl7Qu-Uv4jFT_NPG
X-Proofpoint-ORIG-GUID: 5LP9lC2ukrn9cy7hIl7Qu-Uv4jFT_NPG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxscore=0
 spamscore=0 malwarescore=0 suspectscore=0 phishscore=0 impostorscore=0
 clxscore=1015 mlxlogscore=890 priorityscore=1501 adultscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410150043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_232210_395436_0DAE7A40 
X-CRM114-Status: GOOD (  13.17  )
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



On 2024-10-10 14:15, Krzysztof Kozlowski wrote:
> On Thu, Oct 10, 2024 at 10:03:45AM +0800, Yijie Yang wrote:
>> Add compatible for the MAC controller on qcs8300 platforms.
>> Since qcs8300 shares the same EMAC as sa8775p, so it fallback to the
>> compatible.
>>
>> Signed-off-by: Yijie Yang <quic_yijiyang@quicinc.com>
>> ---
>>   Documentation/devicetree/bindings/net/qcom,ethqos.yaml | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml b/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
>> index 8cf29493b822..3ee5367bdde1 100644
>> --- a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
>> +++ b/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
>> @@ -23,6 +23,10 @@ properties:
>>             - enum:
>>                 - qcom,qcs615-ethqos
>>             - const: qcom,sm8150-ethqos
>> +      - items:
>> +          - enum:
>> +              - qcom,qcs8300-ethqos
>> +          - const: qcom,sa8775p-ethqos
> 
> This block should go before earlier qcs615, to keep order by fallback.

Why this block should positioned before qcs615, given that it comes 
later in alphabetical order?

> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Best regards,
> Krzysztof
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
