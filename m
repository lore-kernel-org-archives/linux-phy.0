Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2A5CD6EBF2
	for <linux-phy@archiver.kernel.org>; Fri, 29 Nov 2024 10:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pe9TSf1+RvyYa5lLO5fAZy0G7jlCEkkmQSUBkRFfMVc=; b=4ozjdcB+t2h4SX
	SckW7RgwPGrWYQz1EYmjhGU5+jEVJ38iLyhYryY+cOBriXg4BSmkAVj0PJF5voNIdHuWC09z2nvTD
	b5yhOqS7mta9U91fJMhjTnKxLpFEMdq54tHX+zp7si7/mMsChaJsQCee2MxFZ5+YDYO8tokcde7Yl
	qFd4iwpy/SMQ4N6zO3ayrfTFOPd/1IjUJdK0gBeUJsVrMXICcldpFMZJcYEm5EjdjkG6HU9+mlYjc
	l8ua6GNCg84xqBGUW2b+kEhT7FXk0deRrvaxH8kRhVyQoUTOvy7nkvG004tVnwT4/zw8RlGMnVgyW
	8XYzezqbF+qxjKEtjSlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGxw6-0000000HP3K-3YJL;
	Fri, 29 Nov 2024 10:09:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGxw4-0000000HP2V-1oke
	for linux-phy@lists.infradead.org;
	Fri, 29 Nov 2024 10:09:17 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4ASMlgBB000409;
	Fri, 29 Nov 2024 10:09:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3EG/L0w96RHJGaT0NUhLKqWsFaz54juEmpm/S1SYB/I=; b=L+KbsDQOtbRz8Wc/
	wDESm58YXfAQ1nz/Ra/UeQBWIbT7AJE+To0y/lWJQC/7GYzoH5d57amiLKCP+tZL
	KEfVg0IDstg30i4vwZQYQi+PWVPvgNiH33dPNc/fC/B5/OGH6/ml7hXNBSqeTO7a
	2sA8S/V587/H7902tgh/o642lLK8/4r+xRPtHRS0uHqsQEqMZpj8dKtj4oZBEVqU
	IG4jIStluedRwIZ1ZFWOOoJCLafgZqQRK8I2oSFp7NDrcyYedmEL4LGVPdAJQwl3
	wK/UqZZahmz5cnsCHBuMuDpBNddrLiXW1PGSiQpV7RJ2jJi/oqs6OxuwB2h/tpK7
	p21wTw==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4366xvn5qj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Nov 2024 10:09:08 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4ATA979l026533
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Nov 2024 10:09:07 GMT
Received: from [10.64.68.119] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Fri, 29 Nov
 2024 02:09:00 -0800
Message-ID: <db3aef25-07d3-495c-9f10-ca08e4e4ed5f@quicinc.com>
Date: Fri, 29 Nov 2024 18:08:57 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] dt-bindings: phy: Add eDP PHY compatible for qcs8300
To: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov
	<dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten
	<marijn.suijten@somainline.org>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <dri-devel@lists.freedesktop.org>, <freedreno@lists.freedesktop.org>,
        "Ritesh
 Kumar" <quic_riteshk@quicinc.com>
References: <20241127-qcs8300_dp-v1-0-0d30065c8c58@quicinc.com>
 <20241127-qcs8300_dp-v1-1-0d30065c8c58@quicinc.com>
 <3729bdcb-5f3d-4845-8f96-dbb0616b88f4@kernel.org>
Content-Language: en-US
From: Yongxing Mou <quic_yongmou@quicinc.com>
In-Reply-To: <3729bdcb-5f3d-4845-8f96-dbb0616b88f4@kernel.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: L7mUXApJfYPtRlOvYNn8u4IqV_60xJ35
X-Proofpoint-ORIG-GUID: L7mUXApJfYPtRlOvYNn8u4IqV_60xJ35
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 mlxlogscore=997 clxscore=1015 adultscore=0
 lowpriorityscore=0 suspectscore=0 mlxscore=0 spamscore=0 impostorscore=0
 bulkscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2411290083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_020916_623688_CF3A60C5 
X-CRM114-Status: GOOD (  10.18  )
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



On 2024/11/28 2:28, Krzysztof Kozlowski wrote:
> On 27/11/2024 09:15, Yongxing Mou wrote:
>> Add compatible string for the supported eDP PHY on qcs8300 platform.
> 
> 
> What is supported eDP PHY? Can it be unsupported? Anyway, this repeats
> the diff. Say something useful instead, like why this is not compatible
> with sa8775p.
> 
> Best regards,
> Krzysztof

Actually,for edp phy,it is same with sa8775p, so will reuse it's driver 
in next patchset.so this patch should drop it..Thansk for reviewing.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
