Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32DF1C83F1A
	for <linux-phy@archiver.kernel.org>; Mon, 14 Jul 2025 08:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UqM+RTGfWND83VrEbaXbOwpl0trqllASBJH7sttJGCg=; b=KSWS66Se08Y+Oz
	paeLZRgQH+mWaR5V7wTHzEXSNXEeLWnZyDaad0xjp+Cg7IHxv+OO47KeH65F0poEPBPj/jLhooezJ
	bIpuhMf+IqEPl5TBxP54yWcGdroOxiNP8yvAPb86NQV/85BoftGHlecJwFqOrMkXjKbK7AC7bZtmE
	B/207CYZ8uk3cjqf1a610qyy3iF+mBaXlKKB9vM3TBq9rxE8lfLHSbW8ucHOs0LVoGKWdqgDkjFJS
	kWR1+aZA4v/lRVrY15tX0S9BdWW6fatzOMFE0s6XsiGJQYxSVqs+38HP2olQbYmxVYHehxPuzfm3V
	rNhXLRWOei+kZgpmlAXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubEUL-00000001dTU-3jF5;
	Mon, 14 Jul 2025 08:24:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubELf-00000001b1W-435s
	for linux-phy@lists.infradead.org;
	Mon, 14 Jul 2025 08:15:46 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56E67U0j005599;
	Mon, 14 Jul 2025 08:15:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=RZr8xRqmhXh+Ssrh2y9hkF4my5RlRW+8nic
	pY+RLZLc=; b=RDQTXOKvcbcMXrdstm92x7RwmXqbpdmx19ORtrkK0rwbGgVeIk9
	a976ZVz79fd8tCvix1sOlMYnra/PFuPIr+1VJVAjPSgyltvlIkw9ANH1fsZSuA4j
	ghugastju+Utql+FDTfDUhdHqbA/Y8Zoc68yB1XJwh1lw3mt0IGznarcPhjE+bnr
	SGSPldKpCtPYhMuUC5aDDONdV5riUgxWbRCqQ5GTwq+X7K4zyBkTsYtnBx24+TVT
	QFqLt18QNnF6rNuu43Ddu8ioWtPD/yw4meSIjpQjF2u9Ul6/Nlut0xdlBPChnHX1
	Wf4q2iIHuG6AJZSxtLlhnwqEU+xjwWQEKMQ==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47vvb0rcaq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 14 Jul 2025 08:15:35 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 56E8FXu8021303;
	Mon, 14 Jul 2025 08:15:33 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 47ugsm5xje-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 14 Jul 2025 08:15:33 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 56E8FWWW021291;
	Mon, 14 Jul 2025 08:15:32 GMT
Received: from cse-cd01-lnx.ap.qualcomm.com (cse-cd01-lnx.qualcomm.com [10.64.75.209])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 56E8FWMN021285
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 14 Jul 2025 08:15:32 +0000
Received: by cse-cd01-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 09E5720F21; Mon, 14 Jul 2025 16:15:31 +0800 (CST)
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
Subject: [PATCH v8 0/5] pci: qcom: Add QCS8300 PCIe support
Date: Mon, 14 Jul 2025 16:15:24 +0800
Message-Id: <20250714081529.3847385-1-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: EPt3KMEO6iFgZiazfAgruWwvilFxpKrz
X-Authority-Analysis: v=2.4 cv=B8e50PtM c=1 sm=1 tr=0 ts=6874bca7 cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=QyXUC8HyAAAA:8
 a=MByrn4WnkjAl5ObW7ywA:9 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: EPt3KMEO6iFgZiazfAgruWwvilFxpKrz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDA0OCBTYWx0ZWRfX/ISqbV7EJklm
 EgZ4gvkV3+H/wlEIXqY2R7o3zpOQ3LcHg21E4S5LazbrHE7NA8l+9vH8OJ9Bt/ztJt3U10zdQtN
 iVHFTn5NKkWqhBMn3mhIDp47nzwrb0L+vAUHKCIyfq2ro5Jbeszsrm3brpKj3lzglwTi5fXJAJV
 bWXvFJAWxwDZ1gog8TFmqQdiZQyXBJSE/DjVu8OW0ZhGsvBramGvHLnSs0Te17RGOjX5T3kSyTU
 vmMB/PhewBOZCSpadtrLmYiG5+dckxNU31BQclGJFllI6pSgV/G1Hymxru3xKf3EvzYa3vq2ayR
 e14Yxzn6Fboshk0gfZIR8U4KMJCIRau5wYmfl25qfpd9FzpaJGPDXzxasqGWHTSwZf9+IbgxS1p
 dqCJ/JcjJSSspHFHUAncXDcCckul7go7TKNsxopysmvxxFWFl8M8BW4XcrWGNkgIC48uys97
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_01,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 bulkscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 phishscore=0 priorityscore=1501 impostorscore=0 mlxscore=0 suspectscore=0
 adultscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507140048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_011544_045189_708A4C33 
X-CRM114-Status: GOOD (  14.28  )
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

This series depend on the sa8775p gcc_aux_clock and link_down reset change
https://lore.kernel.org/all/20250529035416.4159963-1-quic_ziyuzhan@quicinc.com/

This series adds document, phy, configs support for PCIe in QCS8300.
It also adds 'link_down' reset for sa8775p.

Have follwing changes:
	- Add dedicated schema for the PCIe controllers found on QCS8300.
	- Add compatible for qcs8300 platform.
	- Add configurations in devicetree for PCIe0, including registers, clocks, interrupts and phy setting sequence.
	- Add configurations in devicetree for PCIe1, including registers, clocks, interrupts and phy setting sequence.

Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
Changes in v8:
- rebase sc8280xp-qmp-pcie-phy change to solve conflicts.
- Add Fixes tag to phy change (Johan)
- Link to v7: https://lore.kernel.org/all/20250625092539.762075-1-quic_ziyuzhan@quicinc.com/

Changes in v7:
- rebase qcs8300-ride.dtsi change to solve conflicts.
- Link to v6: https://lore.kernel.org/all/20250529035635.4162149-1-quic_ziyuzhan@quicinc.com/

Changes in v6:
- move the qcs8300 and sa8775p phy compatibility entry into the list of PHYs that require six clocks
- Update QCS8300 and sa8775p phy dt, remove aux clock.
- Fixed compile error found by kernel test robot
- Link to v5: https://lore.kernel.org/all/20250507031019.4080541-1-quic_ziyuzhan@quicinc.com/

Changes in v5:
- Add QCOM PCIe controller version in commit msg (Mani)
- Modify platform dts change subject (Dmitry)
- Fixed compile error found by kernel test robot
- Link to v4: https://lore.kernel.org/linux-phy/20241220055239.2744024-1-quic_ziyuzhan@quicinc.com/

Changes in v4:
- Add received tag
- Fixed compile error found by kernel test robot
- Link to v3: https://lore.kernel.org/lkml/202412211301.bQO6vXpo-lkp@intel.com/T/#mdd63e5be39acbf879218aef91c87b12d4540e0f7

Changes in v3:
- Add received tag(Rob & Dmitry)
- Update pcie_phy in gcc node to soc dtsi(Dmitry & Konrad)
- remove pcieprot0 node(Konrad & Mani)
- Fix format comments(Konrad)
- Update base-commit to tag: next-20241213(Bjorn)
- Corrected of_device_id.data from 1.9.0 to 1.34.0.
- Link to v2: https://lore.kernel.org/all/20241128081056.1361739-1-quic_ziyuzhan@quicinc.com/

Changes in v2:
- Fix some format comments and match the style in x1e80100(Konrad)
- Add global interrupt for PCIe0 and PCIe1(Konrad)
- split the soc dtsi and the platform dts into two changes(Konrad)
- Link to v1: https://lore.kernel.org/all/20241114095409.2682558-1-quic_ziyuzhan@quicinc.com/



Ziyue Zhang (5):
  dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings
    for qcs8300
  arm64: dts: qcom: qcs8300: enable pcie0
  arm64: dts: qcom: qcs8300-ride: enable pcie0 interface
  arm64: dts: qcom: qcs8300: enable pcie1
  arm64: dts: qcom: qcs8300-ride: enable pcie1 interface

 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |   2 +-
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts     |  80 +++++
 arch/arm64/boot/dts/qcom/qcs8300.dtsi         | 296 +++++++++++++++++-
 3 files changed, 375 insertions(+), 3 deletions(-)


base-commit: b551c4e2a98a177a06148cf16505643cd2108386
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
