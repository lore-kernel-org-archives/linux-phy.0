Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 830C2C04FF6
	for <linux-phy@archiver.kernel.org>; Fri, 19 Apr 2024 14:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WErkVeZiYkhajkbBHTf/9xi52hWbnrhU5Sp2DWbqBTg=; b=o18zW6/dSA8tERZRnCkOERj64g
	cMYnoip5QsunZ/rZizPC/axqJrpFFuOVn+TRuovlb3hhsaKfkb9yRn2W+NTgfZ75IzHzOviJNFfOs
	CUek0W8FNnvdbfQPFmforTcGx1h8b1Ac/H7uvvImMQT2I8UjvFKme5Rf+VGEt8DBLO2ElejohN0X0
	MGWrJPNVMuGXur54lc3HcSGIjOpcfTFdvyqtj1Wgz8x0AAvwDHh4DtOz+4AytvW2KWBnsxv6pS9B3
	yIcnFVvCdqpHLHH8ly4cWn/36zd/jnokb+MIIhOdMdT7DmvJ5LbIro9pXgbwWWBnnEFWg5SBtOdDk
	RymwSi/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxpEI-00000005yh4-0mud;
	Fri, 19 Apr 2024 14:28:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxpEF-00000005ydi-2gOz
	for linux-phy@lists.infradead.org;
	Fri, 19 Apr 2024 14:28:41 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 43JD629E017627;
	Fri, 19 Apr 2024 14:28:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=/7AD6EwruIBOLZzV5oOINOaZDwI2eqymeSzVhuKzQpE=; b=CG
	zj7yAjeTYIKlJiJJQI0tO4qcKFU7GuUcwUEwtkUcsUvhUavs9TkZPFggqACOreAb
	4bWREDIo+WThsQg1Px+oBKzPUhuZS4r/antob7rPievHyz4dPEizvq6E1ED5qtkT
	3XGtcksOEJdE7tjB65Sqo2Oef6uToIPIlW0Vv6cj70aXBjE08ND6U4AGenY72/dd
	Xe9451BsEbN+Lwh0tdVvItLgv3xfdqQm+Z0EWPlS+VPKp17emLSxEZG6H06Lel9Z
	F964EEhJLpUcEfqpbY7CQIVKYE1INxqMXYL3p17F1s53CVftBP89tO2Ezil1Jtus
	OLlh4SsOYtXwqPDNW+pA==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3xks6s8550-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 19 Apr 2024 14:28:22 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 43JESL0M014875
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 19 Apr 2024 14:28:21 GMT
Received: from [10.216.17.233] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Fri, 19 Apr
 2024 07:28:13 -0700
Message-ID: <4a83afeb-8e82-4f95-b44e-74d39d55f448@quicinc.com>
Date: Fri, 19 Apr 2024 19:58:08 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/7] ipq9574: Enable PCI-Express support
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
References: <20240415182052.374494-1-mr.nuke.me@gmail.com>
Content-Language: en-US
From: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
In-Reply-To: <20240415182052.374494-1-mr.nuke.me@gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: f5HZFmDXBrCPKCpPNSOydsESSpTxuWBO
X-Proofpoint-ORIG-GUID: f5HZFmDXBrCPKCpPNSOydsESSpTxuWBO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-19_09,2024-04-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 impostorscore=0
 priorityscore=1501 bulkscore=0 adultscore=0 suspectscore=0 spamscore=0
 mlxscore=0 lowpriorityscore=0 mlxlogscore=999 malwarescore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2404010003
 definitions=main-2404190108
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240419_072839_775898_D4527904 
X-CRM114-Status: GOOD (  19.46  )
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



On 4/15/2024 11:50 PM, Alexandru Gagniuc wrote:
> There are four PCIe ports on IPQ9574, pcie0 thru pcie3. This series
> addresses pcie2, which is a gen3x2 port. The board I have only uses
> pcie2, and that's the only one enabled in this series.
> 
> I believe this makes sense as a monolithic series, as the individual
> pieces are not that useful by themselves.
> 
> In v2, I've had some issues regarding the dt schema checks. For
> transparency, I used the following test invocations to test v3:
> 
>        make dt_binding_check     DT_SCHEMA_FILES=qcom,pcie.yaml:qcom,ipq8074-qmp-pcie-phy.yaml
>        make dtbs_check           DT_SCHEMA_FILES=qcom,pcie.yaml:qcom,ipq8074-qmp-pcie-phy.yaml
> 
> 

Alexandru,

Thanks for your contributions to the Qualcomm IPQ chipsets.

I would like to inform you that we have also submitted the patches to 
enable the PCIe support on IPQ9574[1][2] and waiting for the ICC 
support[3] to land to enable the NOC clocks.

[1] 
https://lore.kernel.org/linux-arm-msm/20230519090219.15925-1-quic_devipriy@quicinc.com/
[2] 
https://lore.kernel.org/linux-arm-msm/20230519085723.15601-1-quic_devipriy@quicinc.com/
[3] 
https://lore.kernel.org/linux-arm-msm/20240418092305.2337429-1-quic_varada@quicinc.com/

Please take a look at these patches as well.

Thanks,
Kathiravan T.


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
>    arm64: dts: qcom: ipq9574: add PCIe2 nodes
> 
>   .../devicetree/bindings/pci/qcom,pcie.yaml    |  35 +++++
>   .../phy/qcom,ipq8074-qmp-pcie-phy.yaml        |  36 ++++-
>   arch/arm64/boot/dts/qcom/ipq9574.dtsi         |  93 +++++++++++-
>   drivers/clk/qcom/gcc-ipq9574.c                |  76 ++++++++++
>   drivers/pci/controller/dwc/pcie-qcom.c        |  13 +-
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 136 +++++++++++++++++-
>   .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h   |  14 ++
>   include/dt-bindings/clock/qcom,ipq9574-gcc.h  |   4 +
>   8 files changed, 400 insertions(+), 7 deletions(-)
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
