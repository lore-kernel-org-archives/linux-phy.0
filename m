Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C264DCDB47E
	for <linux-phy@archiver.kernel.org>; Fri, 13 Oct 2023 10:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oeHsMkSbhBaavco333htLPb22nAJOki8bviYhezdIXQ=; b=bmD4+WVGWp5c30
	16vs7ra7sgfRNrBoodVYHmQJENaXyTNAwL7O2b9u7gUGrG6Q4OzQToxM65OpfNFO+iMWOJGGnGAlF
	JheRSwh2UUPribOLc7+a5azUMAdLLWxQEWGE4mBednLnoErxgyypfQ59BRC0lCD6N/gn41CGZ5Hwk
	ybcNvZh+VvsPw6FNHba3VeWeeqsZYI0sx5iyPTdZnS3H5mZButwpcO1xXIPfCxjLSwCokNY2COYtF
	dSvX5rPm/SmZv0n0vLSgo5b5k3aD3waG0Ja6nslWL2O2I4Q/k/68WKZK2FS7NgJotg46eSTe5Qbc7
	yOh1JxNbEHdWmmcUDIaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFZh-003BeF-18;
	Fri, 13 Oct 2023 10:39:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFZd-003BJe-2z
	for linux-phy@lists.infradead.org;
	Fri, 13 Oct 2023 10:39:19 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39DAco1P026746;
	Fri, 13 Oct 2023 10:38:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=ChhIVyXy/0SXa2i6PYFsBV+c//2U9kjNCT4GsWSF2hA=;
 b=fz977hvzFdPHng24xJPkBoPLwMEApaV9iBijh4dKsJbxbD394lC8Pv6QvO/65sqCnnt5
 KpfoOxeHXYK4Jp5fB0Ath78rkcA+RylaW3efJ2f7oNyrnUBmfn9NX+bK7xsBTT5gV/fZ
 R2syZKllHZdpQGYgL8i88IVANECHi5CO7/F2MjimZlMG3Y75oiMb1sLrcHLWYi1OnDJb
 GXWKjaWPFERGB8Ej0rMZKtNA3oNza51SoREe01LU9waOnpX21aTKnzgHfqhqA0xkQLCo
 83pLgcStfhlwm9pBKeO1okxp1vS3NlxVtgrLKMohZmoW1Ov3CCj9sRwu3Eny7B0KAuqT 2w== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tpt109dvd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 13 Oct 2023 10:38:50 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39DAcn1R028179
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 13 Oct 2023 10:38:49 GMT
Received: from [10.214.66.58] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Fri, 13 Oct
 2023 03:38:41 -0700
Message-ID: <b88cc301-52db-4401-8364-7056f0e10149@quicinc.com>
Date: Fri, 13 Oct 2023 16:08:38 +0530
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
 <ZSkb9ajLZGpD46Ik@matsya>
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
In-Reply-To: <ZSkb9ajLZGpD46Ik@matsya>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 3YptFoY2CrZmLjVuXVRhUvmpFLviItT2
X-Proofpoint-ORIG-GUID: 3YptFoY2CrZmLjVuXVRhUvmpFLviItT2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-13_03,2023-10-12_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 adultscore=0
 spamscore=0 bulkscore=0 suspectscore=0 mlxscore=0 lowpriorityscore=0
 priorityscore=1501 mlxlogscore=577 phishscore=0 malwarescore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310130087
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_033917_973032_C05C7E34 
X-CRM114-Status: GOOD (  14.55  )
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


On 10/13/2023 3:59 PM, Vinod Koul wrote:
> On 22-09-23, 10:42, Rohit Agarwal wrote:
>> Hi,
>>
>> Changes in v4:
>>   - Replaced the v5 offsets with v6 offsets as per Dmitry's suggestion in patch 5/5.
>>
>> Changes in v3:
>>   - Removed the unnecessary change introduced in v2 of patch 2/5
>>   - Added Fixes tag in patch 3/5
>>   - Rebased patch 5/5 on Dmitry's cleanup patches.
>>     https://lore.kernel.org/all/20230911203842.778411-1-dmitry.baryshkov@linaro.org/
>>     https://lore.kernel.org/linux-phy/20230824211952.1397699-1-dmitry.baryshkov@linaro.org/
>>
>> Changes in v2:
>>   - Dropped the new dt schema introduced in v1 for sdx75 usb3 phy
>>     and reusing the bindings.
>>   - Rephrased the commit message of patch 3/5
>>   - Removed stray lines from the patch 5/5
>>
>> This series adds support of USB3 PHY support for Qualcomm's SDX75 Platform.
> The phy patches fail to apply, can you please rebase the three patches
> and resend
Can you please apply these two series. This series depends on it for 
successful compilation.
[1] 
https://lore.kernel.org/all/20230911203842.778411-1-dmitry.baryshkov@linaro.org/
[2] 
https://lore.kernel.org/linux-phy/20230824211952.1397699-1-dmitry.baryshkov@linaro.org/

Thanks,
Rohit.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
