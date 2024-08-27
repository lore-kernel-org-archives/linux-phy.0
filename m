Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 232C1C52D6F
	for <linux-phy@archiver.kernel.org>; Tue, 27 Aug 2024 06:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GASXxG/+6I7CEOvAncQ3g8jyIj+1/j5Qr52aTcoM1VM=; b=BnA+GtrBYw5H8F
	sc0KtjGuWv9gylMb+vViZFwuld4BfydG4BJHoSm/2isdbny2gWLLoS/Rhnukot6heJAEvZE/aiHp5
	L5x/F9m5g4gxKwse9VKwhFz6PKU54JjAiltVLApKhYWm9/z2XyZnjrh5YsHfiKhGQsqL/XwYcYW91
	/lUedGOFVodfzk/cLcQjqR8DbZfrYnkhro8XEuPHfRJWByqhUMi1YGO5HbQPC/1/0oLslD+IkfQtK
	7tzpE91i45HTsqxJ1g0sS6YlGzP8zjoSAp+JqRIY4wFfGdzkdsu9szKYNZcWTY1OFxDVIllAd3IaJ
	jRhOcvgm5TkjCXnPWoyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sipp8-0000000A2eL-3KhJ;
	Tue, 27 Aug 2024 06:37:02 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sipp3-0000000A2bR-1XJq
	for linux-phy@lists.infradead.org;
	Tue, 27 Aug 2024 06:37:00 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47R1wrBv005068;
	Tue, 27 Aug 2024 06:36:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=STiRUIeQcRQxOq45psitmNN/9+D78+cydM8
	/r9NcrOs=; b=LNUyjfe0PZ1pS/nFOyaTYpbdHeP//vU7RMQCzxIZN7yVWbXC1Dg
	wKU+FHMNXvXZXJ5+7wd0b+rB4lvhTHPlbUwh41BfLD1GPc4LDpXHhsqDSPKS/jPm
	t8BfUxLnWgJ89cLeJPdzBaFGv5DdJpX814RtYIf/D3X5aTh0PQrlFepQB678Zlv3
	h8xam616/7i3Ks80opWj9XdmuBJvqKqpui1g1hwL+D5yDq6weWuy+1zaVlWZftPW
	JDs8AjdbXaiwNu1Q7ckhtUtqtn8Lhip2t1aFdBao/bnNjLZpFFh/0NV6nH/bmLR9
	rLPmIy4NEDT+r4navQgYYvWMz+IDEi6X4mQ==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4195kq8jtj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 Aug 2024 06:36:45 +0000 (GMT)
Received: from pps.filterd (NALASPPMTA01.qualcomm.com [127.0.0.1])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 47R6IV75000976;
	Tue, 27 Aug 2024 06:36:44 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by NALASPPMTA01.qualcomm.com (PPS) with ESMTPS id 418uqwxr4e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 Aug 2024 06:36:44 +0000
Received: from NALASPPMTA01.qualcomm.com (NALASPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 47R6TpR3023742;
	Tue, 27 Aug 2024 06:36:43 GMT
Received: from hu-devc-lv-u22-c.qualcomm.com (hu-qianyu-lv.qualcomm.com [10.81.25.114])
	by NALASPPMTA01.qualcomm.com (PPS) with ESMTPS id 47R6ahKE006254
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 Aug 2024 06:36:43 +0000
Received: by hu-devc-lv-u22-c.qualcomm.com (Postfix, from userid 4098150)
	id A1DED64E; Mon, 26 Aug 2024 23:36:43 -0700 (PDT)
From: Qiang Yu <quic_qianyu@quicinc.com>
To: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org,
        robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
        sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
        quic_devipriy@quicinc.com
Cc: dmitry.baryshkov@linaro.org, kw@linux.com, lpieralisi@kernel.org,
        neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org, Qiang Yu <quic_qianyu@quicinc.com>
Subject: [PATCH 0/8] Add support for PCIe3 on x1e80100
Date: Mon, 26 Aug 2024 23:36:23 -0700
Message-Id: <20240827063631.3932971-1-quic_qianyu@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 4xFp7q55GvlXzYXFXY7WdbXka_FMOjgS
X-Proofpoint-GUID: 4xFp7q55GvlXzYXFXY7WdbXka_FMOjgS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-27_04,2024-08-26_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 priorityscore=1501 spamscore=0 clxscore=1011 suspectscore=0
 lowpriorityscore=0 mlxlogscore=972 impostorscore=0 phishscore=0 mlxscore=0
 malwarescore=0 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2407110000 definitions=main-2408270048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_233657_574920_6EBA4181 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
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

This series add support for PCIe3 on x1e80100.

PCIe3 needs additional set of clocks, regulators and new set of PCIe QMP
PHY configuration compare other PCIe instances on x1e80100. Hence add
required resource configuration and usage for PCIe3.

Qiang Yu (8):
  phy: qcom-qmp: pcs-pcie: Add v6.30 register offsets
  phy: qcom-qmp: pcs: Add v6.30 register offsets
  phy: qcom: qmp: Add phy register and clk setting for x1e80100 PCIe3
  arm64: dts: qcom: x1e80100: Add support for PCIe3 on x1e80100
  dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the X1E80100
    QMP PCIe PHY Gen4 x8
  clk: qcom: gcc-x1e80100: Fix halt_check for pipediv2 clocks
  arm64: dts: qcom: x1e80100-qcp: Add power supply and sideband signal
    for pcie3
  PCI: qcom: Add support to PCIe slot power supplies

 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |  18 +-
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts     | 116 +++++++++
 arch/arm64/boot/dts/qcom/x1e80100.dtsi        | 205 +++++++++++++++-
 drivers/clk/qcom/gcc-x1e80100.c               |  10 +-
 drivers/pci/controller/dwc/pcie-qcom.c        |  52 +++-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 222 +++++++++++++++++-
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v6_30.h    |  25 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_30.h |  19 ++
 8 files changed, 657 insertions(+), 10 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_30.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_30.h

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
