Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6C3CD0BB5E
	for <linux-phy@archiver.kernel.org>; Thu, 24 Oct 2024 06:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TUHCXGucQDAOzehmUu5gSmDliAoEGkfByUQ0BUdwASU=; b=wEqAag8sT5XW9L
	tFnffDpXA4Ga0zzuZ79dFOwJBCkrymlb93+kzIO9W+9+Fv0dNFDH76gN9IV+BDUTEXigOV5EyQDGt
	w0+flkMefWQEa45IruFfHOVBFaZKojDB6JcDBnSBvpFYvE4Oi3KUNK0oo+Cpiw3IzWVOnVzgfABj2
	XHVVqsVRtcrBxmIPV2ivoEuP0BsNaoFLkYm+09bNig1XaltOLH+8blTV2KrdCySppmd3KuCaCITS+
	tDhNSoZcVwhZsKQwOEl0+FPNiAdHsApaaw8PBoI/cnneLNEc/OOU87OiRQKzN1zpT2B18vfzqSD2P
	74ylTPpBbK4ObHqxXpDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3rYc-0000000Gwzn-1hqG;
	Thu, 24 Oct 2024 06:42:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3rYY-0000000Gwyz-2d6h
	for linux-phy@lists.infradead.org;
	Thu, 24 Oct 2024 06:42:52 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49NLlpbi020224;
	Thu, 24 Oct 2024 06:42:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MOui3FkqthLLxDG8jF1710A76nx3b/xntWLvkRqfo2o=; b=Cljcn1xoP8JShVp3
	AazyhMbIbtcyGGi2TV15QQFaSwqoUitCmzV/gcoXNcch1hiBZqnCgt0x8nMCBpm1
	XgmvibGoN8b3HS4+WN/fBzL0/7Tr3Vq76G3wX4RvcUPwkxblFu72gY7OTzlHny75
	f1W1gDAEXsNSVZcPdRU0paiAb3lja2IgTDb3/z7yQWjN4x6ZqdboSqy1GSBnPjkn
	wZB3VqzfXz0TZlOeQUDWx2hcCRPyAOYX7DKKwypg68CRw3elD1+Bt5iV7z0rtTpi
	0ZfO/6aOcvuKhMuN1MJTkIIxdCzfkYTprKKXN8TkTnaKdpiagmBg4pr/+IeWQmvs
	5hu/gA==
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42em3xmr0m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 24 Oct 2024 06:42:44 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 49O6geY0026399
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 24 Oct 2024 06:42:40 GMT
Received: from [10.239.29.179] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 23 Oct
 2024 23:42:35 -0700
Message-ID: <91395c5e-22a0-4117-a4b5-4985284289ab@quicinc.com>
Date: Thu, 24 Oct 2024 14:42:32 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 6/7] PCI: qcom: Disable ASPM L0s and remove BDF2SID
 mapping config for X1E80100 SoC
To: Johan Hovold <johan@kernel.org>
CC: <manivannan.sadhasivam@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh@kernel.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>, <abel.vesa@linaro.org>,
        <quic_msarkar@quicinc.com>, <quic_devipriy@quicinc.com>,
        <dmitry.baryshkov@linaro.org>, <kw@linux.com>, <lpieralisi@kernel.org>,
        <neil.armstrong@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-clk@vger.kernel.org>, <johan+linaro@kernel.org>,
        <stable@vger.kernel.org>
References: <20241017030412.265000-1-quic_qianyu@quicinc.com>
 <20241017030412.265000-7-quic_qianyu@quicinc.com>
 <ZxJrUQDGMDw3wI3Q@hovoldconsulting.com>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <ZxJrUQDGMDw3wI3Q@hovoldconsulting.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: gagmCVtlOA3uf-nAqE7_D-lcVsNj_yVZ
X-Proofpoint-ORIG-GUID: gagmCVtlOA3uf-nAqE7_D-lcVsNj_yVZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 phishscore=0
 impostorscore=0 mlxscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 mlxlogscore=656 malwarescore=0 priorityscore=1501 adultscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410240050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241023_234250_705516_F5A4803C 
X-CRM114-Status: GOOD (  16.51  )
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


On 10/18/2024 10:06 PM, Johan Hovold wrote:
> Please use a more concise subject (e.g. try to stay within 72 chars)
> than:
>
> 	PCI: qcom: Disable ASPM L0s and remove BDF2SID mapping config for X1E80100 SoC
>
> Here you could drop "SoC", maybe "ASPM" and "config" for example.
>
> On Wed, Oct 16, 2024 at 08:04:11PM -0700, Qiang Yu wrote:
>> Currently, the cfg_1_9_0 which is being used for X1E80100 has config_sid
>> callback in its ops and doesn't disable ASPM L0s. However, as same as
>> SC8280X, PCIe controllers on X1E80100 are connected to SMMUv3, hence don't
>> need config_sid() callback and hardware team has recommended to disable
>> L0s as it is broken in the controller. Hence reuse cfg_sc8280xp for
>> X1E80100.
> Since the x1e80100 dtsi, like sc8280xp, do not specify an iommu-map,
> that bit is effectively just a cleanup and all this patch does is to
> disable L0s.
>
> Please rephrase to make this clear. This will also allow you to make the
> Subject even shorter (no need to mention the SID bit in Subject).
>
> Also say something about how L0s is broken so that it is more clear what
> the effect of this patch is. On sc8280xp enabling L0s lead to
> correctable errors for example.
Need more time to confirm the exact reason about disabling L0s.
Will update if get any progress

Thanks,
Qiang
>
>> Fixes: 6d0c39324c5f ("PCI: qcom: Add X1E80100 PCIe support")
>> Cc: stable@vger.kernel.org
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
