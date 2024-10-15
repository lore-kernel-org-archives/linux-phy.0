Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10325CFC271
	for <linux-phy@archiver.kernel.org>; Tue, 15 Oct 2024 07:04:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M5xolsoG6U05KEjQ9kg02J0qmEqel+iVI0Su3I48+ps=; b=qqiv7cm9Hfbq6w
	QHM00hlCNflQslmUc9vGcSCMXb4x/oIixPjoMN1HVA28tbBe79emgyoocRM+D0uIr/rB2ncmgBRre
	hrfa5/kwFpHz8mYjs44Bt5JEkJCGmTRVtxUm5ohfvw5a+Oe1JJ9c9Yg5sf9lyB3t8MAMfSAog5cPq
	3MK6+35C+y+GtfqcjBVviGG2PqsyeLsWvFKpTdo5oTPJxDxllVqu1EK6LhbF90S2Kd7ll4QFey4AV
	qOY4vCS3vqBFTXy8iXVcbRLU4I8n+M6ghUwqBErQtREam9WXIU50Ip+8YJtcEmXG68bqUqQtJfSZP
	XggU/BEVo1xcOO1pTFeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0bbk-00000007Ih0-2wOA;
	Tue, 15 Oct 2024 07:04:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0ba3-00000007INk-1M79
	for linux-phy@lists.infradead.org;
	Tue, 15 Oct 2024 07:02:56 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49F0nqXK028943;
	Tue, 15 Oct 2024 07:02:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MNxcovHaCZr4YyZwbkPjdIHNQ44b3u3Z8IXuc9mgySg=; b=gHO0KrzvEjmG+I38
	XvZ3iZIgIEfDAGnxjJ9THEildcaXiNRUlTLyVIepkEyRPRZZB/BhJ6aTkmlh+dKc
	lkXIZZhlBCyJh6JrIoUlQMeI0v3ED9EBc85hCtalLswsLq213f0gGeUC1V5ZGeqP
	fd9maBH5bwIn6Wl/dXbXaXVWSf7dIlIypsimDAK7XSsmFT73qFBihmy/hD0Ujvfb
	NMsxq9yox3t9yLuwgpkFA0b82hY5sbL6PfYsI735xRObr0+oNQ13HDtn6y5CVNTw
	9hS+4UCrYCX2c7s0YnnWEFhSmcT50V2IzUa/tCVlRAWyj8NakRNGgtnCRBg5Gj1q
	9Im+FA==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4292evjdhm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 15 Oct 2024 07:02:46 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 49F72io5000952
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 15 Oct 2024 07:02:44 GMT
Received: from [10.204.67.70] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Tue, 15 Oct
 2024 00:02:36 -0700
Message-ID: <2a2b1373-6cb4-4813-8736-dd7b12c90c0a@quicinc.com>
Date: Tue, 15 Oct 2024 12:32:33 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/5] Add support for DisplayPort on SA8775P platform
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <konradybcio@kernel.org>,
        <andersson@kernel.org>, <simona@ffwll.ch>, <abel.vesa@linaro.org>,
        <robdclark@gmail.com>, <quic_abhinavk@quicinc.com>, <sean@poorly.run>,
        <marijn.suijten@somainline.org>, <airlied@gmail.com>,
        <daniel@ffwll.ch>, <maarten.lankhorst@linux.intel.com>,
        <mripard@kernel.org>, <tzimmermann@suse.de>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <quic_khsieh@quicinc.com>,
        <konrad.dybcio@linaro.org>, <quic_parellan@quicinc.com>,
        <quic_bjorande@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <dri-devel@lists.freedesktop.org>, <freedreno@lists.freedesktop.org>,
        <devicetree@vger.kernel.org>, <quic_riteshk@quicinc.com>,
        <quic_vproddut@quicinc.com>
References: <20241004103046.22209-1-quic_mukhopad@quicinc.com>
 <CAA8EJprNz-Byy6T3qkkUyZnTkyb_7osyuevP8E-xYzzPSmQjUw@mail.gmail.com>
From: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
In-Reply-To: <CAA8EJprNz-Byy6T3qkkUyZnTkyb_7osyuevP8E-xYzzPSmQjUw@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: sX5TkqqPVxeTca0Ty3eh-82zg5gY4O8X
X-Proofpoint-ORIG-GUID: sX5TkqqPVxeTca0Ty3eh-82zg5gY4O8X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 malwarescore=0 mlxlogscore=999 lowpriorityscore=0
 phishscore=0 adultscore=0 bulkscore=0 mlxscore=0 impostorscore=0
 suspectscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2409260000 definitions=main-2410150047
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_000255_405574_B95D2F81 
X-CRM114-Status: GOOD (  14.85  )
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


On 10/6/2024 8:30 PM, Dmitry Baryshkov wrote:
> On Fri, 4 Oct 2024 at 12:30, Soutrik Mukhopadhyay
> <quic_mukhopad@quicinc.com> wrote:
>> This series adds support for the DisplayPort controller
>> and eDP PHY v5 found on the Qualcomm SA8775P platform.
>>
>> ---
>> v2: Fixed review comments from Dmitry and Bjorn
>>          - Made aux_cfg array as const.
>>          - Reused edp_swing_hbr_rbr and edp_swing_hbr2_hbr3 for v5.
>>
>> v3: Fixed review comments from Dmitry, Konrad and Bjorn
>>          - Used a for loop to write the dp_phy_aux_cfg registers.
>>          - Pre-defined the aux_cfg size to prevent any magic numbers.
>>          - Added all the necessary DPTX controllers for this platform.
>>
>> v4: Fixed review comments from Dmitry and Krzysztof
>>          - Updated commit message.
> For which patches? How?


We have removed the "reviewed by" and kept only the "acked by" for patch 
1. We have updated

the commit message of patch 5 , to mention specifically about the 
validation of 'only' MDSS0 DPTX0 and

DPTX1.


>
>> ---
>>
>> Soutrik Mukhopadhyay (5):
>>    dt-bindings: phy: Add eDP PHY compatible for sa8775p
>>    phy: qcom: edp: Introduce aux_cfg array for version specific aux
>>      settings
>>    phy: qcom: edp: Add support for eDP PHY on SA8775P
>>    dt-bindings: display: msm: dp-controller: document SA8775P compatible
>>    drm/msm/dp: Add DisplayPort controller for SA8775P
>>
>>   .../bindings/display/msm/dp-controller.yaml   |  1 +
>>   .../devicetree/bindings/phy/qcom,edp-phy.yaml |  1 +
>>   drivers/gpu/drm/msm/dp/dp_display.c           |  9 +++
>>   drivers/phy/qualcomm/phy-qcom-edp.c           | 74 +++++++++++++------
>>   4 files changed, 61 insertions(+), 24 deletions(-)
>>
>> --
>> 2.17.1
>>
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
