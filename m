Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A61EC282DE
	for <linux-phy@archiver.kernel.org>; Mon, 10 Mar 2025 08:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fCQ71KDG8WrhjBzi8b3Dofd/faVE+hu4Ivyt+k0pQR4=; b=umOB24QJruJTZxlz0oqXK43G6c
	QknhTPSXOb789SJdwgMhukGS4cbaDHVnRu7v7h8HdGhF7rAhx6LE/oCKHSnF2JVVXHxUuHCgLh9f4
	ShmVtv1xWYua5C3Ve5QgxDFMTfDp4Er1lWC6r47D5+lA2oG0br2JJOuYe13y4tPX0rRfYrLzOP+dg
	eVfz3e4iA1xjtWz1hIQj5vJaTgnmYWtieLACnPOfUZW4qR1/xmbhyLWC2/a6xV1n/ffCXMglF1hcn
	Gbq9IYvm+qrPPVqn4LENtbHNHGhq+xHzW5RXduheqjjTDvedR/+txG7yoyJPuuiGplLZBkQeDjTxa
	tvqwD14Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trYzO-00000001zGa-1cBI;
	Mon, 10 Mar 2025 08:59:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trYyL-00000001zBM-1UdF
	for linux-phy@lists.infradead.org;
	Mon, 10 Mar 2025 08:58:54 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 529MIZZ1010474;
	Mon, 10 Mar 2025 08:58:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	m2upaeJf0rzuqnQovlmbtPWsRA0OgIqAkIFQGolBRPI=; b=Pb2Ky157GjAGMryS
	Y/qoSHlos2TE3uVvKC5+RVCkkUJMXfZ1VaF8X85HZ0udYub00Ep9CyA2wm8lyQ5e
	nz5vv23a6cvCiSVNa8b76HKjoJovsDz8XjKAJLp24NVX0ZTaXHk1zis6Xk7E1G8s
	Zwai01MI2UnZBryHF4Xd2puXRecycz7F5VG2PKJVQlRkUhpfLYIh1w5Jt/2c+yTb
	J+cOVML3HuexY25Gr4nanARPFXzikA/DOEeuC6TRholHFVJZ3+fRZUVRNfALJ6jn
	Zbs1Sofwn9+NlzFT3gt2geBlUx6qsAQH/4XGigtDODYsebMzuXD9xYDKE+jKQVaE
	tczxzw==
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458f6ac8ks-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Mar 2025 08:58:48 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 52A8wl9C023922
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Mar 2025 08:58:47 GMT
Received: from [10.239.28.138] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 10 Mar
 2025 01:58:44 -0700
Message-ID: <e556e3c9-93ee-494a-be35-9353dc5718e4@quicinc.com>
Date: Mon, 10 Mar 2025 16:58:42 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/2] phy: qcom: qmp-pcie: Add PCIe PHY no_csr reset
 support
To: <vkoul@kernel.org>, <kishon@kernel.org>, <p.zabel@pengutronix.de>,
        <dmitry.baryshkov@linaro.org>, <abel.vesa@linaro.org>,
        <quic_qianyu@quicinc.com>, <neil.armstrong@linaro.org>,
        <manivannan.sadhasivam@linaro.org>, <quic_devipriy@quicinc.com>,
        <konrad.dybcio@oss.qualcomm.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20250226103600.1923047-1-quic_wenbyao@quicinc.com>
Content-Language: en-US
From: "Wenbin Yao (Consultant)" <quic_wenbyao@quicinc.com>
In-Reply-To: <20250226103600.1923047-1-quic_wenbyao@quicinc.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=WsDRMcfv c=1 sm=1 tr=0 ts=67cea9c8 cx=c_pps a=JYp8KDb2vCoCEuGobkYCKw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=7YptvZ3fydEw2Y-QB6AA:9
 a=QEXdDO2ut3YA:10 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: j-lWSNpmGh4X7HbiHVLoRMxg8XcSMW_8
X-Proofpoint-ORIG-GUID: j-lWSNpmGh4X7HbiHVLoRMxg8XcSMW_8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-10_03,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 adultscore=0
 impostorscore=0 phishscore=0 mlxscore=0 mlxlogscore=999 clxscore=1015
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503100070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_015853_404963_45ED02C3 
X-CRM114-Status: GOOD (  19.98  )
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

On 2/26/2025 6:35 PM, Wenbin Yao wrote:
> The series aims to skip phy register programming and drive PCIe PHY with
> register setting programmed in bootloader by simply toggling no_csr reset,
> which once togglled, PHY hardware will be reset while PHY registers are
> retained.
>
> First, determine whether PHY setting can be skipped by checking
> QPHY_START_CTRL register and the existence of nocsr reset. If it is
> programmed and no_csr reset is supported, do no_csr reset and skip BCR
> reset which will reset entire PHY.
>
> This series also remove has_nocsr_reset flag in qmp_phy_cfg structure and
> decide whether the PHY supports nocsr reset by checking the existence of
> nocsr reset in device tree.
>
> The series are tested on X1E80100-QCP and HDK8550.
>
> The commit messages of this patchset have been modified based on comments
> and suggestions.
>
> Changes in v5:
> - Add a check whether the init sequences are exist if the PHY needs to be
>    initialized to Patch 2/2.
> - Link to v4: https://lore.kernel.org/all/20250220102253.755116-1-quic_wenbyao@quicinc.com/
>
> Changes in v4:
> - Add Philipp's Reviewed-by tag to Patch 1/2.
> - Use PHY instead of phy in comments in Patch 2/2.
> - Use "if (qmp->nocsr_reset)" instead of "if (!qmp->nocsr_reset)" in
>    function qmp_pcie_exit for readability in Patch 2/2.
> - Use goto statements in function qmp_pcie_power_on and qmp_pcie_power_off
>    for readability in Patch 2/2.
> - Refine the comment of why not checking qmp->skip_init when reset PHY in
>    function qmp_pcie_power_off in Patch 2/2.
> - Link to v3: https://lore.kernel.org/all/20250214104539.281846-1-quic_wenbyao@quicinc.com/
>
> Changes in v3:
> - Replace devm_reset_control_get_exclusive with
>    devm_reset_control_get_optional_exclusive when get phy_nocsr reset
>    control in Patch 1/2.
> - Do not ignore -EINVAL when get phy_nocsr reset control in Patch 1/2.
> - Replace phy_initialized with skip_init in struct qmp_pcie in Patch 2/2.
> - Add a comment to why not check qmp->skip_init in function
>    qmp_pcie_power_off in Patch 2/2.
> - Link to v2: https://lore.kernel.org/all/20250211094231.1813558-1-quic_wenbyao@quicinc.com/
>
> Changes in v2:
> - Add Abel's and Manivannan's Reviewed-by tag to Patch 1/2.
> - Refine commit msg of Patch 2/2.
> - Link to v1: https://lore.kernel.org/all/20250121094140.4006801-1-quic_wenbyao@quicinc.com/
>
> Konrad Dybcio (1):
>    phy: qcom: pcie: Determine has_nocsr_reset dynamically
>
> Qiang Yu (1):
>    phy: qcom: qmp-pcie: Add PHY register retention support
>
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 86 +++++++++++++++++-------
>   1 file changed, 63 insertions(+), 23 deletions(-)
>
>
> base-commit: bcf2acd8f64b0a5783deeeb5fd70c6163ec5acd7

Hi, do you have any futher comments?

-- 
With best wishes
Wenbin


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
