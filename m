Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93F1AC54798
	for <linux-phy@archiver.kernel.org>; Tue,  5 Mar 2024 16:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T1jS9ojheNzlruWj2F3OGYHlPZ6qonKZiAQLlRVjBv8=; b=1a5rn9gEfGd7If
	NdH8mJSHgHY7L7iZfYzzZzfbgaEHKuMHGpP2ZZvnNcJi/MUXY/MCt9CxNvavVABYwTwNGkO4bbcts
	D4AOg529r4kSl+o4y8IywWzsZfHacpjVKCYvlr5HvbCoSlv6bzTLGZswC7tAZ89DGDHACapg1o+tQ
	L/0N8vCqNkLNBhfUTcsGmiDBMG98yYMm00proCsvc31o6DU8RWDejT8ROb02giTyyowkOYYfsL+du
	gnPmnLZkA0Fliu9/PzqgrEjs6VY7eGmkjzsLqyFvuYNNnV0CT6wRGe5U434KuZ2iWVAt7c+xRUbY4
	lyDQQWO/+axUD98yieuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhY7R-0000000EabJ-0aHb;
	Tue, 05 Mar 2024 16:58:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhY7N-0000000EaYg-1y4M
	for linux-phy@lists.infradead.org;
	Tue, 05 Mar 2024 16:58:19 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 425DlDGp015519;
	Tue, 5 Mar 2024 16:58:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	from:to:subject:date:message-id:mime-version:content-type; s=
	qcppdkim1; bh=kOc4mqW7YqT2IuvMfdIuROMR2Y3JLVuf7pv+QEnyKJA=; b=ld
	wkflPvMNeMySBy4sXWklzfreoNf63GQosctJsOYWtu6qa1UBB+ylYHjhCGKjuduD
	FnxymjUfg5Vkn241FPhki3CeVhxA2zuVRsdFCE2xceI9F7RuSN2HBhCgrdkcHMUd
	w8Ksm5muoeD1UlX9WxlCcXesYU2UsHqvkrGBcGKgwOBDoZPPb2cTT5FnB8DrWhku
	K2Wuh80OVzliDvzGo8PuMDi/RWz+TyBKxUlmCvN2Ud7i4FA9Z/1VTu/l9U5eLGdz
	AIxuY6riTmoGVwSUEdwzHG89uDsvGNwkIkhcmEJJZ+WYdQQkLdfPEoJrTrav3klM
	9v3cull930UUqhl26Dew==
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3wp04612rf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 05 Mar 2024 16:58:06 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 425Gw4hl022108
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 5 Mar 2024 16:58:04 GMT
Received: from sriramd-linux.qualcomm.com (10.80.80.8) by
 nasanex01c.na.qualcomm.com (10.45.79.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Tue, 5 Mar 2024 08:57:57 -0800
From: Sriram Dash <quic_sriramd@quicinc.com>
To: <andersson@kernel.org>, <konrad.dybcio@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <quic_wcheng@quicinc.com>,
        <Thinh.Nguyen@synopsys.com>, <p.zabel@pengutronix.de>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <quic_psodagud@quicinc.com>,
        <quic_nkela@quicinc.com>, <manivannan.sadhasivam@linaro.org>,
        <ulf.hansson@linaro.org>, <sudeep.holla@arm.com>,
        <quic_shazhuss@quicinc.com>
Subject: [RFC 0/3] Enable firmware-managed USB resources on Qcom targets
Date: Tue, 5 Mar 2024 22:27:35 +0530
Message-ID: <1709657858-8563-1-git-send-email-quic_sriramd@quicinc.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: f2fMK1kDVeAoNQXzg53S1juzVV-xWszD
X-Proofpoint-GUID: f2fMK1kDVeAoNQXzg53S1juzVV-xWszD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-05_14,2024-03-05_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 priorityscore=1501 malwarescore=0 mlxscore=0 adultscore=0 mlxlogscore=934
 bulkscore=0 suspectscore=0 clxscore=1011 lowpriorityscore=0
 impostorscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2402120000 definitions=main-2403050136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_085817_687162_26F04FE2 
X-CRM114-Status: GOOD (  12.04  )
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

Some target systems allow multiple resources to be managed by firmware.
On these targets, tasks related to clocks, regulators, resets, and
interconnects can be delegated to the firmware, while the remaining
responsibilities are handled by Linux.

To support the management of partial resources in Linux and leave the rest
to firmware, multiple power domains are introduced. Each power domain can
manage one or more resources, depending on the specific use case.

These power domains handle SCMI calls to the firmware, enabling the
activation and deactivation of firmware-managed resources.

The driver is responsible for managing multiple power domains and
linking them to consumers as needed. Incase there is only single
power domain, it is considered to be a standard GDSC hooked on to
the qcom dt node which is read and assigned to device structure
(by genpd framework) before the driver probe even begins.

fw-managed dt property allows the driver to determine whether
device resources are managed by Linux or firmware, ensuring
backward compatibility.

Establish the channel and domain mapping for the power domains to connect
with firmware, enabling the firmware to handle the assigned resources.
Since these delegated resources will remain invisible to the operating
system, ensure that any references to them are removed.

Sriram Dash (3):
  dt-bindings: usb: qcom,dwc3: Add support for multiple power-domains
  USB: dwc3: qcom: Add support for firmware managed resources
  arm64: dts: qcom: sa8775p-ride: Enable support for firmware managed
    resources

 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        |  74 ++++--
 .../bindings/phy/qcom,usb-snps-femto-v2.yaml       |  49 +++-
 .../devicetree/bindings/usb/qcom,dwc3.yaml         |  37 ++-
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts          |  96 +++++--
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c            | 290 ++++++++++++++++-----
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c      | 213 ++++++++++++---
 drivers/usb/dwc3/dwc3-qcom.c                       | 259 +++++++++++++-----
 7 files changed, 801 insertions(+), 217 deletions(-)

-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
