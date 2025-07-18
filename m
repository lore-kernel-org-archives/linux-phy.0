Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61770C87FC3
	for <linux-phy@archiver.kernel.org>; Fri, 18 Jul 2025 08:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5moq9ykWGnIBKGZFn1diF9tj5aUDumGrFucgkrKuh5E=; b=3Th/VD9pMEOhdB
	G/it1ARQj7FRRk8hxVfx+wf9ESdgq0W86j2UpKEylFeYSFFQCuUT6z7QtqeDMj6zcPqv3SPEfOwfk
	ErQKTwMx2bpp5z3hosNQZO0ES3bZptmreXVOnt0G7PIU5yl2rWa+3gAH3j53KeCpuAq7EHEwl5O8e
	8TXKIcxbYhwBb+maJ98yQMLEmHRbYlo2k3K1NTLgW/o0pH+cPw75Q6Jj9ffuVO+qA+q8oUHe9RCyQ
	oj/tA1KK6bc+RxnBD47ZVhDGz+Lu7B74bDQGM43zBL0/HmkG0oZxNXbCuPfldjf8vNPqeBaJZR8y7
	VjoPkulf39mDsUbUQrnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucgT3-0000000C2Aa-0Zm5;
	Fri, 18 Jul 2025 08:29:21 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucgHd-0000000C0CZ-2z7H
	for linux-phy@lists.infradead.org;
	Fri, 18 Jul 2025 08:17:35 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56I7g5F9032260;
	Fri, 18 Jul 2025 08:17:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=zgBS2MhajMN2+QNHiURetzr/7oqOIp4hfRB
	oUaurHH0=; b=TsXza3NL8qGNqJ9fcPhqULSn8Pqh2OemIY4Njhed03gQUq4SuUW
	0OG5O99ReMHubgG5jKR9DlLn62VaG00SsGLSmej7OhHetiZPzWoR+glcpZ2DFCXQ
	lRJZ8T37uZLlh9xZL+2fvxdo+GwH/q1G9HQ4E7Vc1NJc3iNqB/gZXSC080bKEkXA
	tY6AC70oPnqMEcS1iRLxNDmGWJRoBQiEQvQFkiYL0i143Y57qjMPWF/FyiDVzbSQ
	l2zd8idD+NDogU2gQXX3R14fRzAxijGhIkoIkiph+k4AHmNqvA5IOE2qCbDv3ENu
	IR3Yi4DlrVVpkJpiL+bwZPI458GwUrr/i7w==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ug38avm3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 18 Jul 2025 08:17:24 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 56I8HMZF025160;
	Fri, 18 Jul 2025 08:17:22 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 47ugsn10hr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 18 Jul 2025 08:17:22 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 56I8HL7v025150;
	Fri, 18 Jul 2025 08:17:21 GMT
Received: from cse-cd01-lnx.ap.qualcomm.com (cse-cd01-lnx.qualcomm.com [10.64.75.209])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 56I8HLgM025147
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 18 Jul 2025 08:17:21 +0000
Received: by cse-cd01-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id C3C0F20EA1; Fri, 18 Jul 2025 16:17:19 +0800 (CST)
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: [PATCH v5 0/4] pci: qcom: drop unrelated clock and add link_down reset for sa8775p
Date: Fri, 18 Jul 2025 16:17:14 +0800
Message-Id: <20250718081718.390790-1-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDA2NCBTYWx0ZWRfX+WScg3V6bQJ5
 52TQ/l1M6Jinxd4ntDXHGGQAsfRPk39e8C975QhJsVhLOq+vkWTfqLuDGZOaXJr64UxItYE+hS/
 ZjW1lSJGwzxAP09dXlV2BGQHrd/CTOzAfap+Cu8mSwUqkQ4D7wpofOr4l5WaF7PiRvmTL6yKaOw
 yRFtRs00F7Hji2tpLvRpHZiEdjUV18j5yCs1ongPZRo7Lz1NgZLYKafn6WZ+/EdWT4hcFlFwkoj
 67rp6x9CSW1y4hJV2nasVQExq3hM0WqKpDAYxFjcQ6Due8Nc1RSE496a1owWzLIxsgSDusApzKl
 8S10hpATOmLZS9SG0ROY8zUL7nL4ikhzSrzaEaO1zL1d3+WwrJ8JO4TsB7B8v1vRd4gloqKsdwi
 etRq85b6yozOAdHzjli0gHBYEjjz1cChWgMDELag6Pxt9SxavRA12ogWYxXcYco77cTV1Y0N
X-Proofpoint-GUID: 1NrsIdLYSXwFVWRuuTNTBiL4qej9YqUF
X-Authority-Analysis: v=2.4 cv=SZT3duRu c=1 sm=1 tr=0 ts=687a0314 cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=5rr6ixAOVb5IYiBHoQ4A:9 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 1NrsIdLYSXwFVWRuuTNTBiL4qej9YqUF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_01,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=999 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 impostorscore=0 malwarescore=0
 phishscore=0 spamscore=0 suspectscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507180064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250718_011733_876506_872B72DE 
X-CRM114-Status: UNSURE (   9.37  )
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

This series drop gcc_aux_clock in pcie phy, the pcie aux clock should 
be gcc_phy_aux_clock. And sa8775p platform support link_down reset in
hardware, so add it for both pcie0 and pcie1 to provide a better user
experience.

Have follwing changes:
  - Update pcie phy bindings for sa8775p.
  - Document link_down reset.
  - Remove aux clock from pcie phy.
  - Add link_down reset for pcie.

Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>

Changes in v5:
- Update phy bindings(Johan)
- Link to v4: https://lore.kernel.org/all/20250718071207.160988-1-ziyue.zhang@oss.qualcomm.com/

Changes in v4:
- Update phy bindings, and commit msg(Johan)
- Add ABI break commit msg
- Link to v3: https://lore.kernel.org/linux-arm-msm/20250625090048.624399-1-quic_ziyuzhan@quicinc.com/

Changes in v3:
- Update phy bindings, remove phy_aux clock (Johan)
- Update DT binding's description (Johan)
- Link to v2: https://lore.kernel.org/all/20250617021617.2793902-1-quic_ziyuzhan@quicinc.com/

Changes in v2:
- Change link_down reset from optional to mandatory(Konrad)
- Link to v1: https://lore.kernel.org/all/20250529035416.4159963-1-quic_ziyuzhan@quicinc.com/

Ziyue Zhang (4):
  dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings
  dt-bindings: PCI: qcom,pcie-sa8775p: document link_down reset
  arm64: dts: qcom: sa8775p: remove aux clock from pcie phy
  arm64: dts: qcom: sa8775p: add link_down reset for pcie

 .../bindings/pci/qcom,pcie-sa8775p.yaml       | 11 +++--
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |  4 +-
 arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 42 ++++++++++++-------
 3 files changed, 36 insertions(+), 21 deletions(-)


base-commit: 024e09e444bd2b06aee9d1f3fe7b313c7a2df1bb
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
