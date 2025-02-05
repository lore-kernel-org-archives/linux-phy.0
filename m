Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33F01C02192
	for <linux-phy@archiver.kernel.org>; Wed,  5 Feb 2025 11:42:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k+yHyFBzpIoT1hRimAGs+cFzsboHrvsGcsMztjT83WI=; b=cs+LWFk3yPjYhK
	olujD4M+Eoisz9rfTveYoHl2kPyhi63ZPrcle+1BF0Z06ACuJO0eZd1UcY8vZYpKEyVE0UB7xViKG
	uPp8m3VX0vd0z5iw1qEvENzmpAWPtt63WGXi1M125Bq+sQOY5erjaOYAdTOVkFgCl5GIB+pH8pk0H
	S8WNlioXLdWXzwawqYY8eOCRdevI7b7JXkX7IOTUlfXWDXhuSklAvQHDL0VxjdQgGLDbDq2jOa9Tb
	EuwpS8agUVLzIsRXXrgbyo1LjPJe0CM9/Q8HefS0xmPl7xgyGsI4/rcQgagZdmNY0070Rxgnz1T21
	NoGD/jC/v6mb7M/eeHAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfdnp-000000035Zc-3qMt;
	Wed, 05 Feb 2025 11:42:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfdme-000000035Hv-2D6B
	for linux-phy@lists.infradead.org;
	Wed, 05 Feb 2025 11:41:33 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 515670bq028606;
	Wed, 5 Feb 2025 11:41:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gJW2wTzYmsHqx4B86jwIraVpK/tuRPJ5kg7vAlsnOoU=; b=bKKdUXbETXEKCqgK
	lTl/LBDNTpKICKfP/ZYuHIK/godyWTdYrbCaufm23UwgZDsEsMhv7ffZg+7UDc0O
	6AZPTpuMgF2MrkL3ikOQzPNj7N+s7ByBwIBF3Su/N14LLrd7PqkvQqUybx1x5KLh
	oEnwlmki4Rr86vD1L0S1JJozNv6YbxNrdjykVD3yJUhniiHFRiU1iQ4epc8Z2qHZ
	cvB0kF6gP6BPHLVgLZOUpgGPNsd8jD8AxQHeLxj4oTSqJeVewMeyGkh/JpdvL1FT
	F+NJXHdaS+9R4GH91RU09tGubuMJlZAsOxF5cFeNt7aECIchLNYTiyYRIAVFrql8
	rfhA1g==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44m2ea0r1e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 05 Feb 2025 11:41:26 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 515BfOUN007965
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 5 Feb 2025 11:41:25 GMT
Received: from [10.218.7.247] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 5 Feb 2025
 03:41:18 -0800
Message-ID: <fdc8f80c-ea7c-4bb3-a0f5-06353f2d32f5@quicinc.com>
Date: Wed, 5 Feb 2025 17:11:14 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] phy: qcom-qmp-ufs: Add PHY Configuration support for
 SM8750
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Alim Akhtar
	<alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche
	<bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Andy Gross
	<agross@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        "Satya Durga
 Srinivasu Prabhala" <quic_satyap@quicinc.com>,
        Trilok Soni
	<quic_tsoni@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
        Manish Pandey
	<quic_mapa@quicinc.com>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <20250113-sm8750_ufs_master-v1-2-b3774120eb8c@quicinc.com>
 <vry7yib4jtvyc5baruetqb2msy4j4ityv2s6z5smrz6rqjfb5l@xoharscfhz5n>
 <6873e397-dbc0-4c30-8c08-a65ee7cd6e01@quicinc.com>
 <CAA8EJprjxMtkefY+90cLGVgz-bDf=VXnaa0eH4ESAC6nf5vrLA@mail.gmail.com>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <CAA8EJprjxMtkefY+90cLGVgz-bDf=VXnaa0eH4ESAC6nf5vrLA@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: E6W9CvTyEzzFTvMhI20owqA81mW0pP4z
X-Proofpoint-GUID: E6W9CvTyEzzFTvMhI20owqA81mW0pP4z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-05_05,2025-02-05_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 bulkscore=0 malwarescore=0 suspectscore=0 lowpriorityscore=0
 priorityscore=1501 mlxlogscore=999 impostorscore=0 clxscore=1015
 phishscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502050094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250205_034132_709520_449878FE 
X-CRM114-Status: GOOD (  11.96  )
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



On 2/4/2025 7:06 AM, Dmitry Baryshkov wrote:
> Hello,
> 
> On Mon, 3 Feb 2025 at 10:03, Nitin Rawat <quic_nitirawa@quicinc.com> wrote:
> 
> Your email client has corrupted all quotation levels. Please fix its
> configuration so that you can not compose HTML email. Or switch to a
> normal text-based email client like Mutt or Gnus.
> 
> No additional comments can be provided to this email.
> 
>>

Hi Dmitry,

Sorry for the inconvenience. After software update seems there was some
issue with email client configuration . I have updated the configuration 
and resent my reply.

Regards,
Nitin

>>
>> On 1/14/2025 4:19 PM, Dmitry Baryshkov wrote:
>>
>> On Mon, Jan 13, 2025 at 01:46:25PM -0800, Melody Olvera wrote:
>>
>> From: Nitin Rawat <quic_nitirawa@quicinc.com>
>>
>> Add SM8750 specific register layout and table configs. The serdes
>> TX RX register offset has changed for SM8750 and hence keep UFS
>> specific serdes offsets in a dedicated header file.
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
