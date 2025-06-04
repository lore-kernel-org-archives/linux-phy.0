Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D80DC5B543
	for <linux-phy@archiver.kernel.org>; Wed,  4 Jun 2025 07:37:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P0TPRYa1EMgLIvIy828xZAZP1dOxfYl6Qs2i9mtxX6U=; b=K4dlsGaDL2pjpQ
	A6p70xkLZ8qF/QCTva5b2WsKrn9XXMEcpENkIpTc4r42AZxzMmuUqtn5xTBOY6DNS9MdMUPovmN8S
	G9okcp5I9qVLBipsCLBJDmhnUtd0fi5zQMDI1JQ3gKZQo90J5OGUiHedGCb6ten+fIprUtCrMsn/L
	oawYDdFlB0Zc5+6YXcwJ4G7YPPcaQh5Zz/nBWfddYfftmm61rpZk+jH9sbr/rKyQrzMH8BBja8jOA
	MLetqgJKiOZq4OCNwh5uofC8KzspKmGpEnOhpK3DTx8r/PmboiE+y0lDvYWc6NC04VT82c5n9DXXP
	ujJC4YCOb4ElhovGWqdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMigy-0000000CmOZ-1zwF;
	Wed, 04 Jun 2025 07:37:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMigv-0000000CmOH-2mQh
	for linux-phy@lists.infradead.org;
	Wed, 04 Jun 2025 07:37:42 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 553KjETM000708;
	Wed, 4 Jun 2025 07:37:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HKX4WDJqubHxp7Yn6Vt7HnreGzdd0WNVbOxinOMb4No=; b=nEs+0H0BGadvCB3Y
	nwwUUy8Nikf5/TJbqAJZg73SYdNIdnhJHB/Z6ob2ilUlV/+uVwBTEAsWL1kwL86/
	VY8R1CB2oNaE1bTFefnhozJN6RyXS3Npiw6N0SX9pLmOcelrtXVi0JEtwAqyfM8F
	cWnmJtnPbp5EQEV8Eq3aQ0ZcsT+cUVYyfXvj7ge+p6ZaW7M08yLLYNf7DFIG9eha
	HOkDm2aG5RXdyKStrfolkC3QT3td2hLWv12+otsdFlVEm++AEY+9iKVXGlFEb8XL
	famucgZiKfZLctkAM/CXotXWrUlhwXm/MjaNe90EnvsVkP45LCgBgcIdkI3NpYOB
	BWPQHA==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8q5845-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Jun 2025 07:37:24 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 5547bND3005620
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 4 Jun 2025 07:37:23 GMT
Received: from [10.218.7.247] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 4 Jun 2025
 00:37:18 -0700
Message-ID: <c2b9dfbf-9163-4df5-bd0d-25c5bb43cfb5@quicinc.com>
Date: Wed, 4 Jun 2025 13:07:15 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V6 00/10] Refactor ufs phy powerup sequence
To: "Martin K. Petersen" <martin.petersen@oracle.com>,
        Vinod Koul
	<vkoul@kernel.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>,
        <manivannan.sadhasivam@linaro.org>,
        <James.Bottomley@HansenPartnership.com>, <bvanassche@acm.org>,
        <andersson@kernel.org>, <neil.armstrong@linaro.org>,
        <konrad.dybcio@oss.qualcomm.com>, <dmitry.baryshkov@oss.qualcomm.com>,
        <quic_rdwivedi@quicinc.com>, <quic_cang@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <linux-scsi@vger.kernel.org>
References: <20250526153821.7918-1-quic_nitirawa@quicinc.com>
 <yq1a56xiir9.fsf@ca-mkp.ca.oracle.com>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <yq1a56xiir9.fsf@ca-mkp.ca.oracle.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: R5W1pYtVDuT2Wkt5a18owf9FwqP_-su4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA0MDA2MCBTYWx0ZWRfX4U4OUDfnd8XZ
 3DQ/sN3MXN9sqoZJUV8eCj2ylWg75+1Pr48k/Ub8YO4CV5Jksalhm+EOCOqeKvl2Gm9tl7qID2W
 yOA/LmeAlpjEIG+XJ0ld0jMERkKIxMXDuZQlWKuVBx9KFEdXlFsOkbwuC0XT5e8/Ob8yQ9s+jQL
 hOuQbgBKAHXS0vWgiOLia9GGansxi6xFzXQP/MAQFvvVG3RdFu6MlQKKbGId2iyMZtEs6rDXYg9
 BuXY9Dy9NvO1C47FbjwNK/htNWW674BnASV39D5AgMcLR9cONcpPKp8YH2VnXRvmXniFfD6Lxzl
 7cd6sP/gxdy289aGgTCvk5S4JsdMNVNSdgNOE5DWPUyJmtbkmW3rBrHxvdYR7v8EyqZoOlMAuLj
 g3wrposRtic3jZYSghOTjwGdK7vnKkgRH9m9dnPWDepnjjSO/Xt4kJ/0563l8NvpfWgpDyq6
X-Proofpoint-ORIG-GUID: R5W1pYtVDuT2Wkt5a18owf9FwqP_-su4
X-Authority-Analysis: v=2.4 cv=PrmTbxM3 c=1 sm=1 tr=0 ts=683ff7b4 cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10
 a=MvDHQgU3c1KqSIzCRgcA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-04_02,2025-06-03_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 mlxlogscore=999 mlxscore=0 lowpriorityscore=0
 impostorscore=0 malwarescore=0 spamscore=0 clxscore=1015 adultscore=0
 suspectscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506040060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_003741_822557_ACC0BC28 
X-CRM114-Status: UNSURE (   8.56  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 5/28/2025 7:45 AM, Martin K. Petersen wrote:
> 
> Nitin,
> 
>>        Patch 1 is a fix for existing issues, which doesn't have any
>>        dependencies on any other changes.

Hi Martin and Vinod,

For the remaining patches (Patch 2 - Patch 10), since Patch 2 (SCSI 
Patch) depends on PHY patches, can these patches be merged through the 
PHY tree?

Regards,
Nitin




> 
> Applied patch 1 to 6.16/scsi-staging, thanks!
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
