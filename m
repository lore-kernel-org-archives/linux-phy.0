Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0936CDB482
	for <linux-phy@archiver.kernel.org>; Fri, 13 Oct 2023 10:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5PnoDRmyw3b3KwSvxJRr7Ok7VfhTdchcLu+bnV0x+Lk=; b=PVGCHdpcqh3MEO
	OknG22RaQq1M3Gx4jaSIhF9tgDkAslDYftCEvGA0WFnDY9KxJpkZzGouNci/briXbuMP8GDez3rtw
	I1AmqoPsPubcY916dwdkPIXNXWwo5BmBXpD+EidqvE1PGIW55KmxDJMaPXHR054WXDFBe+MQCczqF
	jzBVXbxYoEbDqOS4Gkrx4pcVM0SZaodqNC1bke4n9ue0FmeVLdIsUKSmc5WFYAKELf9WNoMnyLPig
	j0SU905sE1YDCtzpVge2BR/KawwlDzKibU29OkhYEATdR1tc/l6xLvtxYT2O0z3su6yGgMDfh9+fr
	NHIs8rNR5eGNg0bcQZQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFhp-003Ens-1Q;
	Fri, 13 Oct 2023 10:47:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFhm-003EnO-1o
	for linux-phy@lists.infradead.org;
	Fri, 13 Oct 2023 10:47:44 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39D5PQxO016976;
	Fri, 13 Oct 2023 10:47:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=5CeX+GyTnqbIkFTWtzQtGHiN8bC34N+qdq/3IRn0plY=;
 b=WTH5BM7cXFORw+zslxHDt0s/G20TN0xP/f/XMps1frpyE0Gz+MBKDxrEtoHoJCL+f9s/
 qCLbCOQ4eDDp80c2VnvuQV07MCNFqekC6oz5evXV53/T60RjxGk9dC/umbic9/nciKdJ
 Ityua9yN1an7gq3WqgP4FlBSDwBPJiTL1RVsHE+yC4/Np79NGC7ZX5meYUyrwf2ofqkB
 RudeWS7v4d665CqP5Dc7Ni8Ufi6uCyXjwF0MOVunWKgvLYPI/+gFx3PL3qiYOSSabh1g
 EHxK72w87asfuqpygRtJbM1RlQMf7JlkkojCxTiaENu7cQdf6WyME0U+FvrWGiSX2XH3 +Q== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tpt0x1exr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 13 Oct 2023 10:47:35 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39DAlYa8008892
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 13 Oct 2023 10:47:34 GMT
Received: from [10.214.66.58] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Fri, 13 Oct
 2023 03:47:26 -0700
Message-ID: <86f1c597-0a29-482b-bb21-b305373bbc6c@quicinc.com>
Date: Fri, 13 Oct 2023 16:17:23 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/5] Add USB Support on Qualcomm's SDX75 Platform
Content-Language: en-US
To: Vinod Koul <vkoul@kernel.org>
CC: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <abel.vesa@linaro.org>,
        <quic_wcheng@quicinc.com>, <dmitry.baryshkov@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <kernel@quicinc.com>
References: <1695359525-4548-1-git-send-email-quic_rohiagar@quicinc.com>
 <ZSkb9ajLZGpD46Ik@matsya> <b88cc301-52db-4401-8364-7056f0e10149@quicinc.com>
 <ZSkfyl757VXnfIjw@matsya>
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
In-Reply-To: <ZSkfyl757VXnfIjw@matsya>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: xF6WC4y7vr9bHQzCGv6VVNHikIZoqEiB
X-Proofpoint-ORIG-GUID: xF6WC4y7vr9bHQzCGv6VVNHikIZoqEiB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-13_03,2023-10-12_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 impostorscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 mlxlogscore=645 phishscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310130088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_034742_605075_5ABFF1D0 
X-CRM114-Status: GOOD (  15.18  )
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


On 10/13/2023 4:15 PM, Vinod Koul wrote:
> On 13-10-23, 16:08, Rohit Agarwal wrote:
>> On 10/13/2023 3:59 PM, Vinod Koul wrote:
>>> On 22-09-23, 10:42, Rohit Agarwal wrote:
>>>> Hi,
>>>>
>>>> Changes in v4:
>>>>    - Replaced the v5 offsets with v6 offsets as per Dmitry's suggestion in patch 5/5.
>>>>
>>>> Changes in v3:
>>>>    - Removed the unnecessary change introduced in v2 of patch 2/5
>>>>    - Added Fixes tag in patch 3/5
>>>>    - Rebased patch 5/5 on Dmitry's cleanup patches.
>>>>      https://lore.kernel.org/all/20230911203842.778411-1-dmitry.baryshkov@linaro.org/
>>>>      https://lore.kernel.org/linux-phy/20230824211952.1397699-1-dmitry.baryshkov@linaro.org/
>>>>
>>>> Changes in v2:
>>>>    - Dropped the new dt schema introduced in v1 for sdx75 usb3 phy
>>>>      and reusing the bindings.
>>>>    - Rephrased the commit message of patch 3/5
>>>>    - Removed stray lines from the patch 5/5
>>>>
>>>> This series adds support of USB3 PHY support for Qualcomm's SDX75 Platform.
>>> The phy patches fail to apply, can you please rebase the three patches
>>> and resend
>> Can you please apply these two series. This series depends on it for
>> successful compilation.
>> [1] https://lore.kernel.org/all/20230911203842.778411-1-dmitry.baryshkov@linaro.org/
> This one has a pending comment bw Konrad and Dmitry..
Ok, Will wait for this to get resolved.

Thanks,
Rohit.
>
>> [2] https://lore.kernel.org/linux-phy/20230824211952.1397699-1-dmitry.baryshkov@linaro.org/
> This one is already in -next
>
>> Thanks,
>> Rohit.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
