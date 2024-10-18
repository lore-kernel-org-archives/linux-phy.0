Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A083D3C528
	for <linux-phy@archiver.kernel.org>; Fri, 18 Oct 2024 06:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+yO1QgHePhMj0bgMX1Ja6kpETP7jWSYyTV4SPZw+5jY=; b=gCZ0PAAI7AOvYm
	53G+9pn0RDaS8YJ5rP5/FK0PSPKdjTqpp0tjJjYiq5NDoG4UCjze0nAlv0qfLytsgmWyxIJi1udTz
	1WqDcjDOoXMNCmMfbrUwK8P7ogIKygvOJ/qb7De8SzbUUXNF6QEwlqRKb3AubMtnbqoipXuouHt8q
	CgZ9vDYwHu+Fa3l7u2/89NVlbZhjxlgl+4Nm1MzV92CsALBW1STIef1hBXQ1gqWeIgZ3+hr/rHDW4
	UDx31fa1qoydWr1tWVPc90RhNpy9vcpG5edgA7N7Gu5I3I8O6XFwzbKeYE1qjjoBf9ceBWXPZ+OuE
	RVC5G+jwOF29+meHyK9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1g6V-0000000H5Wy-3Omb;
	Fri, 18 Oct 2024 06:04:51 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1g56-0000000H5Cx-2KBC
	for linux-phy@lists.infradead.org;
	Fri, 18 Oct 2024 06:03:36 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49I5VHB5008326;
	Fri, 18 Oct 2024 06:03:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KXLpKYN49y4rKL7G0LbS+Vl1+kkbYLJz03m+GIhkGZA=; b=hR3YEgz9Sw7yBxt8
	V6SBWIJCPVneiLo7ZrHj8si8jwE7idiuLHCUX2162ce4+hukEbKodPOOgRV4DgZ0
	v2F1lAzlNkIxaOnve1eE3rqxkzicvqP03broGhaP3D522My0cejJNtGpIT6Ngw5p
	xgUwMSKstIRnfP2XIemBL9vRPSBrryH/gVUG4vjndEjrTA0rPhShCJLgEqKNbuUf
	GX+korqXURFQVl4xxXACHmyE/m04wmrvRXicWo0YJFd/tXJAXoiBI7dqLqcA8Mwo
	LXZYsTyRgk3t5WgJZWu0MrmQTdvhisD/b4Z6CU8egDLRmVmMZX6BPcdX5VIh/+qv
	ckFdmA==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42b5hssxrg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 18 Oct 2024 06:03:18 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 49I63H0Y009481
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 18 Oct 2024 06:03:17 GMT
Received: from [10.233.21.53] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Thu, 17 Oct
 2024 23:03:14 -0700
Message-ID: <c57c31bd-401b-4d98-a514-df53fd1775c1@quicinc.com>
Date: Fri, 18 Oct 2024 14:03:12 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] dt-bindings: phy: Add QMP UFS PHY compatible for
 QCS8300
To: Vinod Koul <vkoul@kernel.org>
CC: Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, <quic_tengfan@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        Xin Liu <quic_liuxin@quicinc.com>
References: <20240925-qcs8300_ufs_phy_binding-v3-1-c1eb5c393b09@quicinc.com>
 <ZxEp2Aca037br2yt@vaman>
Content-Language: en-US
From: Jingyi Wang <quic_jingyw@quicinc.com>
In-Reply-To: <ZxEp2Aca037br2yt@vaman>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: PR67CZ2qxF5FRD1eZQSP6ZeiUL4Pmojb
X-Proofpoint-ORIG-GUID: PR67CZ2qxF5FRD1eZQSP6ZeiUL4Pmojb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 impostorscore=0
 mlxscore=0 malwarescore=0 mlxlogscore=349 spamscore=0 adultscore=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 phishscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410180036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_230324_915295_A2FFA944 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 10/17/2024 11:14 PM, Vinod Koul wrote:
> On 25-09-24, 15:34, Jingyi Wang wrote:
>> From: Xin Liu <quic_liuxin@quicinc.com>
>>
>> Document the QMP UFS PHY compatible for Qualcomm QCS8300 to support
>> physical layer functionality for UFS found on the SoC. Use fallback to
>> indicate the compatibility of the QMP UFS PHY on the QCS8300 with that
>> on the SA8775P.
> 
> This does not apply on phy/next, can you please rebase
> 
patch rebased, link: https://lore.kernel.org/all/20241018-qcs8300_ufs_phy_binding-v4-1-261c7c5fb8ff@quicinc.com/

Thanks,
Jingyi


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
