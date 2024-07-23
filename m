Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6694AC3DA49
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jul 2024 18:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3smtfaqIstK9qSysMouMCtCP5RF65jXJRspV70t7GxE=; b=EZShyZsL8dn9Aw
	UPtg1LT+R7a2oVXaltyL+NPKAadGAWllqKQKEshWguxC/xBWmsU8WbHJ3KUTK+uyOpcCRoaB6TeQ3
	bKOXAUgMRfUyH72yZ8brlDxQr7ISIlAAGAcmPqgU0QinZ0Fj5m50NJGGir9ZqiEB/TkU8fOkCwLf2
	P2EnoO89XibyhVxK1SGRzOj5Ar8KjfyaJcx3OcCq97VOue/Qwrow4H501mcBScue/NUdxnDWSMYnA
	Gdkb2qpvuHX9EKY9xQjq+GHoOvPdg0xPXu8akXe+i2taertVnWpWYsD9lj2l6DKuM9F5nYpzukXdX
	A3B0GvWyhZGw6VvtLglA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWKPW-0000000DG1J-2IJp;
	Tue, 23 Jul 2024 18:38:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWKPU-0000000DG0R-1Ly8
	for linux-phy@lists.infradead.org;
	Tue, 23 Jul 2024 18:38:53 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 46NI0VLp032597;
	Tue, 23 Jul 2024 18:38:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	k3eldlb7fsJM17KzwjmHwLhkIgAAH9V6Wt/2reC8uZw=; b=WH6hnazc2q57tnwn
	OOCTvo0uC3Gj9QPS5GdTlwGSt41pJVx61XrfyQ3xC/40Ox+XuAecDNks2Rjo/BKj
	2onMUxppNtp/zIKRKxA81ZuzOVqFTh9ea/TFb2n0YxXQhPV9gxpT58LGxf50WIS+
	n+1eDK/sysBAOgYC0SEfC0RLZqPoN5oOLZlWnrgd0ArM5HnD3LR9QbDKeGy48hAp
	kywHrRlz9NY3D3b3wqTf2m4z4Htu8lJfbr4fYKI8Urb9IY9NS9gScydjNIJKfreJ
	AySyS2V8IJ38RU+OYcVrfhaiJZ9ttKuoVIQnMUJYpigF/m2nCcmBBHfJHbDDPJp9
	6eCi4w==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 40g6h8ytpm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 23 Jul 2024 18:38:50 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.19/8.17.1.19) with ESMTPS id 46NIcnI8008544
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 23 Jul 2024 18:38:49 GMT
Received: from [10.111.176.36] (10.49.16.6) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Tue, 23 Jul
 2024 11:38:49 -0700
Message-ID: <cb9ddcaf-1ba2-4e1b-9c56-6658919e7d22@quicinc.com>
Date: Tue, 23 Jul 2024 11:38:48 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: broadcom: add missing MODULE_DESCRIPTION() macros
Content-Language: en-US
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <kernel-janitors@vger.kernel.org>
References: <20240608-md-drivers-phy-broadcom-v1-1-f070f84cc3f0@quicinc.com>
 <171821471999.586907.11914023851963096437.b4-ty@kernel.org>
From: Jeff Johnson <quic_jjohnson@quicinc.com>
In-Reply-To: <171821471999.586907.11914023851963096437.b4-ty@kernel.org>
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01c.na.qualcomm.com (10.47.97.35) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: YfEGAusxmHkCJCzXeV9AjVLIOmqUf8Pl
X-Proofpoint-GUID: YfEGAusxmHkCJCzXeV9AjVLIOmqUf8Pl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-23_09,2024-07-23_02,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 adultscore=0 mlxscore=0 malwarescore=0 phishscore=0 bulkscore=0
 mlxlogscore=999 suspectscore=0 lowpriorityscore=0 clxscore=1011
 impostorscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2407110000 definitions=main-2407230129
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_113852_400943_FFEE59CB 
X-CRM114-Status: GOOD (  10.98  )
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

On 6/12/2024 10:51 AM, Vinod Koul wrote:
> 
> On Sat, 08 Jun 2024 23:17:05 -0700, Jeff Johnson wrote:
>> make allmodconfig && make W=1 C=1 reports:
>> WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/phy/broadcom/phy-bcm-ns-usb2.o
>> WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/phy/broadcom/phy-bcm-ns-usb3.o
>>
>> Add the missing invocations of the MODULE_DESCRIPTION() macro.
>>
>>
>> [...]
> 
> Applied, thanks!
> 
> [1/1] phy: broadcom: add missing MODULE_DESCRIPTION() macros
>       commit: ea09ba7653bb53252ed96ec524991c55a38bcd0f


Hi Vinod,
I see this landed in linux-next, but is not currently in Linus' tree for 6.11.
Will you be able to have this pulled during the merge window?
I'm trying to eradicate all of these warnings before 6.11 rc-final.

Thanks!
/jeff

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
