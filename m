Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94A3FCCD185
	for <linux-phy@archiver.kernel.org>; Thu,  9 Oct 2025 11:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZuDTGcR3wy1Tr0l2VceWjvkwgVSpzbBfhZR9eGafy7s=; b=GQYI+OscKU5145
	xAdZehcw61WwCogcMsLge4Uq7wGDzy4Wlj8epXMe5DQtONq6oJB+ZDtBV7R9YYWb1O8PEPXBsLdRf
	B2d6nfEShMDMGczI2wbY+wsVIYG5pAKE7/IQyQRekVflVHIJ0W0migdkcihsf1RmTJPARkSwIWpli
	aiPB7MtwbB3+uUP66yJn68uYfGlsm3zuZSDEUvVpBFI5PV2jxosucX/a1aZLG4KsD4HlutkgumAea
	iq9rB4l1+rZTGXqOPJIaCpkRZws0K1b5934KXLKTly0XEmmFkcjSdUw2XKpuZoqO4mjI1F4/lGVrT
	qD1dKgJbvClNQkYeg5dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6pBx-000000061xz-1XGa;
	Thu, 09 Oct 2025 11:52:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6pBu-000000061xI-0tle
	for linux-phy@lists.infradead.org;
	Thu, 09 Oct 2025 11:52:15 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EIew022299;
	Thu, 9 Oct 2025 11:52:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NKvuQhGcUEq6F1dym/+rBYs2bVe5arKDIgYghOvq8XE=; b=iH5NI9sBcPbQOAJw
	/ncTo4Yg4PBtygak9hgrl5Qr3DPh1d2UVsPNUAIZ/1vvBKJBHuNhB+AV0mJ4+jnd
	wAfUlSzqcCcPjiAiKC4oE8Pa9unbedkB1mkKJ+Ae4A7FLB2gt7Ju1q10B/GALd5k
	MeK2dyLqBUgzZVBVNwnhtlGikEH2/RmsVoHtP4mr3E5U5k0ubiuol/2LQNqB00nj
	IiDS6LLcfH4Ke83PSvvp0CZF7lGShjV5I4ZxTYWa7OZiiKDDy5oGDx1FCV88cBqP
	X+fclCmnbbNTbieA1176zqLjEOQBH6UPHWFHWAGbumS1u8r3is82HFUh/Cd8AxsP
	UUfSsw==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4sjmd4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 09 Oct 2025 11:52:03 +0000 (GMT)
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 599Bq2Rr010848
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 9 Oct 2025 11:52:02 GMT
Received: from [10.206.96.75] (10.80.80.8) by nasanex01a.na.qualcomm.com
 (10.52.223.231) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.24; Thu, 9 Oct
 2025 04:51:53 -0700
Message-ID: <c4051862-508b-47ed-8bd5-c84d20f7002a@quicinc.com>
Date: Thu, 9 Oct 2025 17:21:19 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] dt-bindings: phy: Add edp reference clock for
 qcom,edp-phy
Content-Language: en-US
To: Krzysztof Kozlowski <krzk@kernel.org>, <robin.clark@oss.qualcomm.com>,
        <lumag@kernel.org>, <abhinav.kumar@linux.dev>,
        <jessica.zhang@oss.qualcomm.com>, <sean@poorly.run>,
        <marijn.suijten@somainline.org>, <maarten.lankhorst@linux.intel.com>,
        <mripard@kernel.org>, <tzimmermann@suse.de>, <airlied@gmail.com>,
        <simona@ffwll.ch>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <quic_mahap@quicinc.com>,
        <andersson@kernel.org>, <konradybcio@kernel.org>, <mani@kernel.org>,
        <James.Bottomley@HansenPartnership.com>, <martin.petersen@oracle.com>,
        <vkoul@kernel.org>, <kishon@kernel.org>,
        <cros-qcom-dts-watchers@chromium.org>
CC: <linux-phy@lists.infradead.org>, <linux-arm-msm@vger.kernel.org>,
        <dri-devel@lists.freedesktop.org>, <freedreno@lists.freedesktop.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-scsi@vger.kernel.org>, <quic_vproddut@quicinc.com>
References: <20251009071127.26026-1-quic_riteshk@quicinc.com>
 <20251009071127.26026-2-quic_riteshk@quicinc.com>
 <24dd250e-f2a3-47ea-af21-b0e418ed8028@kernel.org>
From: Ritesh Kumar <quic_riteshk@quicinc.com>
In-Reply-To: <24dd250e-f2a3-47ea-af21-b0e418ed8028@kernel.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 8W0NO6wX4ddzZqqUKXulVpHfq3jqmCAz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX4MfVA5eqJenJ
 SFoLlHKeZyCgjwHRrmXhe1UOiAarvRftESHdj26qrzNQCdFoCNRRMd84b28OArEOIxPYVxuuaSY
 NgHGawCK+DI5jgHcy1OyoTXtzAffBr6qzq+EYYJwmRoT+91ZvMd8yUK3MRHPKZO6+EFZfQh6qy4
 6A26OnJshQsRTn3CGKEKPnzyP2s0/XRqK6AKTFbRpgx2RiX8Q2KYmdNxiUn510hOLzAr1O+BZwe
 zWn9azHesL+aT03hyQlhnDY7RsXf7Q8j37VtqJKChno9N8fzM9GwwlgirW4Je6uGpG+CvxQdtYc
 fEzKvLJhxL3nI6VPZXbKutxME9P8dwV09VOWHMd+O1NTQp5GVbKPbEvsGjj3lozBgw4vhSbT12B
 Oul8iRNB1bKCBOAsIjkNWyc1/9U6LQ==
X-Authority-Analysis: v=2.4 cv=SfL6t/Ru c=1 sm=1 tr=0 ts=68e7a1e3 cx=c_pps
 a=JYp8KDb2vCoCEuGobkYCKw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8
 a=KKAkSRfTAAAA:8 a=c7tAmdlyf66g_q6FNG0A:9 a=QEXdDO2ut3YA:10
 a=cvBusfyB2V15izCimMoJ:22 a=nl4s5V0KI7Kw-pW0DWrs:22 a=pHzHmUro8NiASowvMSCR:22
 a=xoEH_sTeL_Rfw54TyV31:22
X-Proofpoint-ORIG-GUID: 8W0NO6wX4ddzZqqUKXulVpHfq3jqmCAz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1011 malwarescore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_045214_502707_CC680320 
X-CRM114-Status: GOOD (  11.24  )
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


On 10/9/2025 2:57 PM, Krzysztof Kozlowski wrote:
> On 09/10/2025 16:11, Ritesh Kumar wrote:
> > Add edp reference clock for qcom,edp-phy which is required
> > to be enabled before eDP PHY initialization.
> > 
>
> No, you need to first look what is happening in community.
>
> https://lore.kernel.org/all/20250909-phy-qcom-edp-add-missing-refclk-v3-1-4ec55a0512ab@linaro.org/

Thanks for the patch. I will pick this and add support for lemans and 
post v2.

>
> Best regards,
> Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
