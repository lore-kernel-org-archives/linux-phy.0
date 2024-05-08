Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F272CC04FFE
	for <linux-phy@archiver.kernel.org>; Wed,  8 May 2024 06:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eL+tYcEzMg7XGb87bgI5DXZPwVvhyViW9q+EcA8P5q4=; b=n+Zn3bcaGNvkq29gmdepBopczW
	CjvZUZ6QYP9hmOXYsO2fpP864hhNch+MynUUYlZEWfDds3qzWmFPgN0azSVN6UotHt+0AIhGV/e1Y
	/CIrO4UdppRnTEZZ22btthdsVdK3sF/BUG12RIENn/v3/K7n5gp3Ss2SGYtzTyITSGyNkARFA+B7e
	BFFvgsGAJcKIQdcTPi71RPMitROiCuMBpibxwbAAjEZWFVHc16TbugFDyymzaUnExDUfw0MFjd/KW
	pypU2A5wZfL8k6BGBvNCW9XRHboMbNtCuhR8riuKn+FBPpQWxpgnjHKb5VRt4JvnreNtKvxc7l8KN
	eqNyoGow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4ac8-0000000EDWp-2cpc;
	Wed, 08 May 2024 06:17:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4ac5-0000000EDW6-0t44
	for linux-phy@lists.infradead.org;
	Wed, 08 May 2024 06:17:15 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4482UVXT017982;
	Wed, 8 May 2024 06:16:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=4ZVMtsvIKFQutqFB7Piu+yfh0WtTdxIprL8802CV5CQ=; b=cq
	uS4GkGH/1VtQf8/4bvbKHdcC3OrR8Uq2Ic5QeMHf9EjDjknZBsc+Stk/xE6dZYK6
	DRIoL6h1IFNT2tqV1gAJUWmyNX/aNeG9871NVqWMjTVAupbAwEm7dX6bNDkVPSVD
	0AtBctHrTGY0yy+kiMuv4OQQbuN/AvFrkdySkn0blquWj3H2Y/cbyqn2bhA+lxXo
	UByYJx/3PJqJoIj3lJ0X7U7L/F37v77X3ma4EtE/cntHvIcuiJzIMCmXLR7uNUH/
	mwxYDppaI8ceSa6cbCh6tCqZMKatfjGApUYDSy6iO6hHjtxzt+AyXkEqeHSTFEs0
	MN/K1lrsadW84A/ZtqYw==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3xysgc93up-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 08 May 2024 06:16:57 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 4486Guic001987
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 8 May 2024 06:16:56 GMT
Received: from [10.50.20.203] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Tue, 7 May 2024
 23:16:49 -0700
Message-ID: <569087fe-e675-41a4-b975-2d01d95b6d3c@quicinc.com>
Date: Wed, 8 May 2024 11:46:40 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 RESEND 0/8] ipq9574: Enable PCI-Express support
To: Alexandru Gagniuc <mr.nuke.me@gmail.com>,
        Bjorn Andersson
	<andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Lorenzo
 Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
	<kw@linux.com>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas
	<bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
	<conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I
	<kishon@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen
 Boyd <sboyd@kernel.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-clk@vger.kernel.org>
References: <20240501042847.1545145-1-mr.nuke.me@gmail.com>
Content-Language: en-US
From: Devi Priya <quic_devipriy@quicinc.com>
In-Reply-To: <20240501042847.1545145-1-mr.nuke.me@gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: H7iKy63Y87Fd912I5jpplZxuUVmXEYRT
X-Proofpoint-ORIG-GUID: H7iKy63Y87Fd912I5jpplZxuUVmXEYRT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-08_02,2024-05-08_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 priorityscore=1501 impostorscore=0 adultscore=0 bulkscore=0 suspectscore=0
 spamscore=0 mlxlogscore=999 mlxscore=0 lowpriorityscore=0 malwarescore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2405010000 definitions=main-2405080045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_231713_307475_D36A5328 
X-CRM114-Status: GOOD (  19.61  )
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



On 5/1/2024 9:58 AM, Alexandru Gagniuc wrote:
> There are four PCIe ports on IPQ9574, pcie0 thru pcie3. This series
> addresses pcie2, which is a gen3x2 port. The board I have only uses
> pcie2, and that's the only one enabled in this series. pcie3 is added
> as a special request, but is untested.
> 
> I believe this makes sense as a monolithic series, as the individual
> pieces are not that useful by themselves.

Hi Alexandru,

As Dmitry suggested, we are working on enabling the PCIe NOC clocks
via Interconnect. We will be posting the PCIe series with
Interconnect support [1] shortly.

[1] - 
https://lore.kernel.org/linux-arm-msm/20240430064214.2030013-1-quic_varada@quicinc.com/

Thanks,
S.Devi Priya
> 
> In v2, I've had some issues regarding the dt schema checks. For
> transparency, I used the following test invocations to test:
> 
>        make dt_binding_check     DT_SCHEMA_FILES=qcom,pcie.yaml:qcom,ipq8074-qmp-pcie-phy.yaml
>        make dtbs_check           DT_SCHEMA_FILES=qcom,pcie.yaml:qcom,ipq8074-qmp-pcie-phy.yaml
> 
> Changes since v3:
>   - "const"ify .hw.init fields for the PCIE pipe clocks
>   - Used pciephy_v5_regs_layout instead of v4 in phy-qcom-qmp-pcie.c
>   - Included Manivannan's patch for qcom-pcie.c clocks
>   - Dropped redundant comments in "ranges" and "interrupt-map" of pcie2.
>   - Added pcie3 and pcie3_phy dts nodes
>   - Moved snoc and anoc clocks to PCIe controller from PHY
> 
> Changes since v2:
>   - reworked resets in qcom,pcie.yaml to resolve dt schema errors
>   - constrained "reg" in qcom,pcie.yaml
>   - reworked min/max intems in qcom,ipq8074-qmp-pcie-phy.yaml
>   - dropped msi-parent for pcie node, as it is handled by "msi" IRQ
> 
> Changes since v1:
>   - updated new tables in phy-qcom-qmp-pcie.c to use lowercase hex numbers
>   - reorganized qcom,ipq8074-qmp-pcie-phy.yaml to use a single list of clocks
>   - reorganized qcom,pcie.yaml to include clocks+resets per compatible
>   - Renamed "pcie2_qmp_phy" label to "pcie2_phy"
>   - moved "ranges" property of pcie@20000000 higher up
> 
> Alexandru Gagniuc (7):
>    dt-bindings: clock: Add PCIe pipe related clocks for IPQ9574
>    clk: qcom: gcc-ipq9574: Add PCIe pipe clocks
>    dt-bindings: PCI: qcom: Add IPQ9574 PCIe controller
>    PCI: qcom: Add support for IPQ9574
>    dt-bindings: phy: qcom,ipq8074-qmp-pcie: add ipq9574 gen3x2 PHY
>    phy: qcom-qmp-pcie: add support for ipq9574 gen3x2 PHY
>    arm64: dts: qcom: ipq9574: add PCIe2 and PCIe3 nodes
> 
> Manivannan Sadhasivam (1):
>    PCI: qcom: Switch to devm_clk_bulk_get_all() API to get the clocks
>      from Devicetree
> 
>   .../devicetree/bindings/pci/qcom,pcie.yaml    |  37 ++++
>   .../phy/qcom,ipq8074-qmp-pcie-phy.yaml        |   1 +
>   arch/arm64/boot/dts/qcom/ipq9574.dtsi         | 178 +++++++++++++++++-
>   drivers/clk/qcom/gcc-ipq9574.c                |  76 ++++++++
>   drivers/pci/controller/dwc/pcie-qcom.c        | 164 +++-------------
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 136 ++++++++++++-
>   .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h   |  14 ++
>   include/dt-bindings/clock/qcom,ipq9574-gcc.h  |   4 +
>   8 files changed, 469 insertions(+), 141 deletions(-)
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
