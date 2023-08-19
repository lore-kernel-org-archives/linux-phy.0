Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C45DFEE49A8
	for <linux-phy@archiver.kernel.org>; Sat, 19 Aug 2023 12:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AfIsZsVO6VApYwthb2Pc6CSI/Ji7wPK1fRrk52gYp4o=; b=0fDrYxh1bvqnb6
	qtep3gAE0Yh0hR78r2OgCt+B2uvMexyBu1P8mmNUCYNgguGKWqlYOm3eU5T7iUD4hq7IkjtL+HHWF
	47EUgEVz6+gjkPJz22v4AFDO/sWolNEuY1/h/gDTa80rRi7//Fc0GUA8xbMSwYBJ8vX+pUopLCzQz
	xIeqirtJTbyuQCdyDxujxL2Yukiazgq/f5PHsSONzhHPWV02Hd6mqhzBtPA1pX0+aoFx3toYQQQNg
	A+esgpdKTKeftbmnOpnXwdV6wzmUXesLh0f48cpXgG9kABprkW9JnAbL+7mfCdZB8xbL9vzVtiZoP
	YPEwGeF9iFcJ30fela0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXKgo-00AsgR-1Z;
	Sat, 19 Aug 2023 12:04:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXKgl-00Asfz-2P
	for linux-phy@lists.infradead.org;
	Sat, 19 Aug 2023 12:04:21 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37JC44lr032173;
	Sat, 19 Aug 2023 12:04:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=/uFbC3XuxeiXr2z4Pwbh6x+HCf1Dvw7Bev63Yg2q2Z4=;
 b=PSnXOLjjw7TlYnRnnWhIzv/aZQm+Hl2KntY5oiavU9p6ZH1upO0VdR4bY5xa28FqVvop
 qBxoxEL6TsYLBxDyNwdKjfeU06/9P+XiA/KrHkdelbooNphexKCHAH+4SH2mdgEc54AO
 TXqiekzfkvVjE95NSmQ+IlYDimS94P3nCneujDOMIJfKjf5XIPGYoEYIPP3JzZfzKfY2
 Ei+cg3RQAK8Rj3cgi5lP5fXXkqeNhtk1D4rGhDLMX8rfoKJ7SrKr0QizOn5V7hUCJ9Ob
 OZL4kPhyheA1JAn/gGNpkFmuOkdvl5cwjId3p3ODMDSfwpNODZYV7ByXJs2fZ4rLtJJZ iw== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3sjny90k4u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 19 Aug 2023 12:04:04 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37JC43MM011961
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 19 Aug 2023 12:04:03 GMT
Received: from [10.216.10.185] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Sat, 19 Aug
 2023 05:04:00 -0700
Message-ID: <bf8f20a7-3bc0-6f0e-c08f-410842000267@quicinc.com>
Date: Sat, 19 Aug 2023 17:33:55 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH V1 1/2] dt-bindings: phy: Add QMP UFS PHY comptible for
 SC7280
Content-Language: en-US
To: Krzysztof Kozlowski <krzk@kernel.org>, <andersson@kernel.org>,
        <konrad.dybcio@linaro.org>, <vkoul@kernel.org>, <agross@kernel.org>,
        <kishon@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
References: <20230816154841.2183-1-quic_nitirawa@quicinc.com>
 <20230816154841.2183-2-quic_nitirawa@quicinc.com>
 <82252735-f75f-8f09-0088-46f216ff1720@kernel.org>
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <82252735-f75f-8f09-0088-46f216ff1720@kernel.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: cfafCRD1rt43SsQsaQ8h2uWpv07zr4uI
X-Proofpoint-GUID: cfafCRD1rt43SsQsaQ8h2uWpv07zr4uI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-19_12,2023-08-18_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 suspectscore=0
 malwarescore=0 mlxlogscore=619 clxscore=1011 adultscore=0 mlxscore=0
 impostorscore=0 priorityscore=1501 phishscore=0 bulkscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2306200000 definitions=main-2308190115
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230819_050419_794072_F2E0B50E 
X-CRM114-Status: GOOD (  16.81  )
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

Hi Krzysztof,

Sorry for the inconvenience . I have addressed other reviewers comments 
and have resent the latest patchset to all the intended To/Cc entries.


Thanks,
Nitin


On 8/18/2023 4:04 PM, Krzysztof Kozlowski wrote:
> On 16/08/2023 17:48, Nitin Rawat wrote:
>> Document the QMP UFS PHY compatible for SC7280.
>>
>> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
>> ---
> 
> Please use scripts/get_maintainers.pl to get a list of necessary people
> and lists to CC. It might happen, that command when run on an older
> kernel, gives you outdated entries. Therefore please be sure you base
> your patches on recent Linux kernel.
> 
> You missed at least DT list (maybe more), so this won't be tested by
> automated tooling. Performing review on untested code might be a waste
> of time, thus I will skip this patch entirely till you follow the
> process allowing the patch to be tested.
> 
> Please kindly resend and include all necessary To/Cc entries.
> 
> Best regards,
> Krzysztof
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
