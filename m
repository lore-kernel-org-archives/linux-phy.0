Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8274ED7497D
	for <linux-phy@archiver.kernel.org>; Wed, 30 Oct 2024 07:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cwT9YVPOF7Wpl9Aips6gXpvQsKeBfbTRZM+fhjDy+zU=; b=AIuCifnA8vl/ZQ
	6MMCuGQuVFeR2xaOUgEsrJtWB71YxLAw1/Lmw86rRXiHI29eeT4079FmPORmx8WPRz06VUywsTyYi
	OwanpjguIFn4YWPc6QHeKAmuhrNj7Oew/+QceHno8cZUEaq1yDdO2zlxEyuzdVTDjy7uCtNNQ0Uap
	/CCEm6oCd3XYXdeJRa79LUve2+4m9lnf4bsBzcECv26MqrdvYXdMqC2tWtwQo6v2bOtRYupe7OrHo
	XD6/4UB6hhBKTYYTl9nyR0l2ZuZWMqkzNrrMb+w130VmE0pe41rHeekZb1IxNzNzAwlOw5ZDPasgS
	N9KYEVulSQ57szXzRNOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t63aJ-0000000HDVH-3knw;
	Wed, 30 Oct 2024 07:57:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t63Za-0000000HDPJ-2tTw
	for linux-phy@lists.infradead.org;
	Wed, 30 Oct 2024 07:57:00 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49TLJk7B009006;
	Wed, 30 Oct 2024 07:56:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jzy6NjUhpqgplvP6dO3x/nvFG3N0AVPu8SNofLcz4Hc=; b=NBKYc8AKdAoc6cQb
	m26okJRdHgGm2oHFADZdq1KTIfSvotELmMf4DftVqdtVGndYkbVMsz/6X3TMG/vL
	Vy78aC8Or01vYeBUtK0B1TDbnrJxMGjpeBmFD68++PtYAc0wYUi5QeK2bLIHKhxo
	McXw4coCS5p8Gt6GYWzhRd+iSc/k6TlQAlt1Bvg0K35klquE5ot/OLR5HvvttZ6r
	CA0YdDuNfdrV2s247C1lkk7ZxsWVAmD+1htVqfauvyJP8s+LdE5YJ/IuH99gk6ha
	D+lUTfjwA9XrODer/4WFCJgyn2DzzlAJrEqpuw8rtfS4tI5S7ADK2wnBm62nEAg1
	o/G68A==
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42gsq8k41w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 30 Oct 2024 07:56:52 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 49U7upce020939
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 30 Oct 2024 07:56:51 GMT
Received: from [10.239.29.179] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 30 Oct
 2024 00:56:45 -0700
Message-ID: <58e5dbbf-7c35-49ae-b2ff-954fc0e3fe48@quicinc.com>
Date: Wed, 30 Oct 2024 15:56:42 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 6/7] PCI: qcom: Disable ASPM L0s and remove BDF2SID
 mapping config for X1E80100 SoC
To: Johan Hovold <johan@kernel.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <andersson@kernel.org>, <konradybcio@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <abel.vesa@linaro.org>, <quic_msarkar@quicinc.com>,
        <quic_devipriy@quicinc.com>, <dmitry.baryshkov@linaro.org>,
        <kw@linux.com>, <lpieralisi@kernel.org>, <neil.armstrong@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-clk@vger.kernel.org>,
        <johan+linaro@kernel.org>, <stable@vger.kernel.org>
References: <20241017030412.265000-1-quic_qianyu@quicinc.com>
 <20241017030412.265000-7-quic_qianyu@quicinc.com>
 <ZxJrUQDGMDw3wI3Q@hovoldconsulting.com>
 <91395c5e-22a0-4117-a4b5-4985284289ab@quicinc.com>
 <250bce05-a095-4eb3-a445-70bbf4366526@quicinc.com>
 <ZyHc-TkRtKxLU5-p@hovoldconsulting.com>
 <20241030071851.sdm3fu6ecaddoiit@thinkpad>
 <ZyHjSCWGYLDu27ys@hovoldconsulting.com>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <ZyHjSCWGYLDu27ys@hovoldconsulting.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: D5Cb7mxE4A_JpgHN_bxxcjll1VkaFGrq
X-Proofpoint-ORIG-GUID: D5Cb7mxE4A_JpgHN_bxxcjll1VkaFGrq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 bulkscore=0
 adultscore=0 mlxscore=0 priorityscore=1501 mlxlogscore=865 impostorscore=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 spamscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2410300061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_005658_778844_3AD51C24 
X-CRM114-Status: GOOD (  10.48  )
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


On 10/30/2024 3:42 PM, Johan Hovold wrote:
> On Wed, Oct 30, 2024 at 12:48:51PM +0530, Manivannan Sadhasivam wrote:
>> On Wed, Oct 30, 2024 at 08:15:05AM +0100, Johan Hovold wrote:
>>> Also, are there any Qualcomm platforms that actually support L0s?
>>> Perhaps we should just disable it everywhere?
>> Most of the mobile chipsets from Qcom support L0s. It is not supported only on
>> the compute ones. So we cannot disable it everywhere.
>>
>> Again, it is not the hw issue but the PHY init sequence not tuned support L0s.
> Right, this should be mentioned in the commit message.
OK, I got it. Will write this into commit message.

Thanks,
Qiang Yu
>
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
