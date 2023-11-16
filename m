Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35385C54FB9
	for <linux-phy@archiver.kernel.org>; Thu, 16 Nov 2023 11:46:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u84cKvLYkvZgzkdL16QKiLFpQRO9lw2NU0avNxmJqJc=; b=EDv/x86uncgyjp
	QSbBj5sBTpt4JHylKXm6B/s4iYYTEYGGgpEhgY0D60mLKsVQR+hRXrzLGJMrwcSiginTlS0O9/fql
	pqlygMzjF1WfSAhWgIzmvbOlqdoIE1RLnVgxAEId7x+e8irnXEsUHXqIaxc8tsfsVRuzh8HdI8xd+
	UVoUZj3uFHgkNfLTxGkkfdWzaVhFhH4HoolzvFcFanK8IikpRZnzhTAb3UJJQbw6ZJXciXh/fMlZj
	3vM2CEn55psgBr9iR1io/cbHYI+zZW6AkHK+0b/v30RLSAizUTkFlEymY+Y0oya0DnGka9QEO63jg
	CUYzoyHuosSe2smAOQdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3apk-003LbD-31;
	Thu, 16 Nov 2023 11:46:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3aph-003LYd-39
	for linux-phy@lists.infradead.org;
	Thu, 16 Nov 2023 11:46:55 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3AG6igJ0001558;
	Thu, 16 Nov 2023 11:46:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=sir0+eneV2xIHi9nVtsWBdneY+FrJAcNPgoNfvc/zdo=;
 b=fS9gHpO9TZ1+r0jyqyW+b2Mef+niEIpA3gHuYswMsd9eLT6r1TUJWI7jCv233h3Zn9sE
 6+nHtrSkA47qowWP/tQ8b/eZdXoa++3zp0VV0xFn1uTl4NxrLYReHgGm2GzdiTTpHv10
 m3tgTuR3TrK2muKzwTVjafcK59fD+drjyTwwHHYnu6M24I5ab5fFh1de4rj/lMmgxx9O
 ELeme9PTMnSR1MFVWNOPDHCmEy+78xdrnXIsVarDqNfbonIMOjnvBtPDNuG3pBGu2MNo
 /o8mRa+RQyyF+6bfOMMquenTljShVRW1CZnjbcJtRCCra03UjUR37ETom9Lr8vEV6hp5 Sg== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ucu27u6v8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 Nov 2023 11:46:50 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3AGBknrA031629
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 Nov 2023 11:46:49 GMT
Received: from [10.216.58.70] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Thu, 16 Nov
 2023 03:46:45 -0800
Message-ID: <ed39f944-790f-4964-a89e-f63816c7d195@quicinc.com>
Date: Thu, 16 Nov 2023 17:16:44 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] phy: qcom-qmp-combo: correct sm8550 PHY
 programming
Content-Language: en-US
To: Vinod Koul <vkoul@kernel.org>
CC: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross
	<agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>
References: <20230911203842.778411-1-dmitry.baryshkov@linaro.org>
 <aabb8345-7b5d-447d-af79-1e5743465315@quicinc.com>
 <CAA8EJpoQ0k_4GSQyrziLYn1v942ppzNOvwxN55sLkZUUDWLe4w@mail.gmail.com>
 <67518705-cfc2-4ae0-9cd2-0c33146cf48b@quicinc.com> <ZVX+wxvOnK1fUTki@matsya>
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
In-Reply-To: <ZVX+wxvOnK1fUTki@matsya>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: a4YRsQ5bbH3baNbKlIf6MyGlmWoclNJf
X-Proofpoint-ORIG-GUID: a4YRsQ5bbH3baNbKlIf6MyGlmWoclNJf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_09,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 phishscore=0 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501
 clxscore=1015 lowpriorityscore=0 suspectscore=0 spamscore=0
 mlxlogscore=255 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311060000 definitions=main-2311160094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231116_034654_129436_4AC3CB59 
X-CRM114-Status: GOOD (  11.29  )
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


On 11/16/2023 5:06 PM, Vinod Koul wrote:
> On 06-11-23, 15:11, Rohit Agarwal wrote:
>> On 11/6/2023 3:07 PM, Dmitry Baryshkov wrote:
>>> Hi Rohit,
>>>
>>> On Mon, 6 Nov 2023 at 08:46, Rohit Agarwal <quic_rohiagar@quicinc.com> wrote:
>>>> On 9/12/2023 2:08 AM, Dmitry Baryshkov wrote:
>>>>> Fix several small issues with the QMP USB+DP PHY programming on the
>>>>> Qualcomm SM8550 platform.
>>>> Hi Dmitry,
>>>>
>>>> Can we have a conclusion on this series?
>>> Yes. Version 3 of this series was accepted by Vinod:
>>>
>>> https://lore.kernel.org/linux-arm-msm/169719381727.165658.9377101716537787206.b4-ty@kernel.org/
>> Thanks for the update!!!.
> You need to rebase your series as send
Yes. Will do it.

Thanks,
Rohit.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
