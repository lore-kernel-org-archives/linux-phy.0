Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58D13C44516
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jul 2026 09:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WFMfZwqu+fICu38kZouK1oY2cfDGpElA+RbX3Hh+ivE=; b=Ywutj8AdCuxXbf
	tMMhe4ooUCtxZOOO5eDVDbFGdZ9FG65Q2CYz/26spq6LiQtGGpriz79lcknpeC7KCYjC2n0kVVc+t
	bk4k3IwBpAX/45oMSaIFUrmRxBiHuVfy/KRXgVrYN+hKQbe5NNLqUAIMKHmy4FZHvlynLxD5Z9UPL
	AeP/33RICqJFZmBP6d+PaYd/Qg4RZuUHoNysMRhxCS2OdL2CP83/+5pIxDi4Ke/EC+8bl0msRkyEb
	Kgl9JiWFvC2d3M/vg9hlq/766Mvw7GMK28GzxFK7gPZV5qgXixkZBbVK4BwqOjNbYJYmuDGz/l0Zq
	e1atcFXm2v9F+nj0Btfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkfLA-00000001tjc-3nVN;
	Fri, 17 Jul 2026 09:58:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkfL8-00000001tiY-16Re
	for linux-phy@lists.infradead.org;
	Fri, 17 Jul 2026 09:58:43 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66H6cOOw1161416
	for <linux-phy@lists.infradead.org>; Fri, 17 Jul 2026 09:58:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=8k0JwyDVq9pQhEGw3nEGQr
	d1JhB0VfPP1D53y+nXTNQ=; b=f91NlvzW7TLjlhV49ikl7QWEaHtp+dj5r7CFp9
	0mneO7MIRHAOIBZ8/jUbPp86zCElnfBo+2zKMP4drtBsGF23/zVl0Nbc4EMe0Y1d
	0P8a1IMVCZVWVNOjgqdYG++sHmNLJ3MTWJ+q/Gg/vvEjy3tDQpHwnkHszhBnbNcI
	pDnPS3pAlQM0jVFh4lJNzKThd0CrvzJgVX0d9dzctlZXGUi2rJNuNV316HnZDQjr
	gmoRdp7AJAUyVlocBZ0/zC6U0Zb4z/MLn6Z8L9XoGkFlF/TG9HtIELPzjRtj1d7X
	557uSJiufWzV2odQ2P65kQvBlW7OsrIhjkjsFgiNmG35lYKg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ffd3as84g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 17 Jul 2026 09:58:40 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-38dde0df80bso9755193a91.3
        for <linux-phy@lists.infradead.org>; Fri, 17 Jul 2026 02:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784282320; x=1784887120; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=8k0JwyDVq9pQhEGw3nEGQrd1JhB0VfPP1D53y+nXTNQ=;
        b=QqaEEeVu08abtIAZ4t1+n/rQFao2/eukCjx226Uui0RWWneC532omWEdBkPFog8nvg
         SFNler4E4MRWHh/ewmydyRZJemCtRWoCnhKF8X4GBFF/RDGgf1X/x+lZ380Pk6eT6Uk5
         KibZq8Q+bC33ulOxYAjJaE2tyvKOgBoW0ONUiA7Nh/y/ZQeBzek5V2ymB+SDMTnp2kPo
         Rn2HIYIAvh66DVwknnNs5FMeEDnnt6AfUsCeZVad0miYLCmecQSj6kfMDqD2LDRHHX3r
         lKp8yZdNE4kcdDsApQPZ9sajq/Ll6eTTyEL3dkDVRcWisqOBgfQqstzybT7Hh7+R9umc
         D79g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784282320; x=1784887120;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=8k0JwyDVq9pQhEGw3nEGQrd1JhB0VfPP1D53y+nXTNQ=;
        b=XbaTyWg7omXvOhaiNrDIFhQog0DePk+bBjrtfZm6DdNkG7aYC2qWh4ZmLE8EBI+XoE
         EvKHAuoki4aJlqLyqLMzBhNE+g9Iepwt/JBJ8wiAZL9+3y8J3Bjbq3u1EPeSkUNTj28n
         2NtmCOCBRio1pL/XMPR3ZJvXKx81clwuFvrlhNAvHS+EQ5Scw0vCMLvKxGjoFDfcLaqm
         jZaw4ywoTMXxoszBenqNwgxs4OZN9oLWlyA+bW4MsGAluMc0CAbTlFSEsmRb9m/m8kme
         7vHA0GF8Ei++rpq3hazg3aqFLBzjBTqo/sPMkGTjop93H8biDYN63oLjN3Gi3weNL0K3
         CYPg==
X-Forwarded-Encrypted: i=1; AHgh+RooF1BImxtQD3VcNCEqMaiV1knkJ0NkN3S5RFA36aLDMMFtFxYRCsPBEkCX1Kw2PsubsgNkRr/CU1k=@lists.infradead.org
X-Gm-Message-State: AOJu0YzHY0eXkC8rn7AUePWaKONAU3rMwzR6bFmbkKch2+314WL2L1l8
	NH9fFOHUV0uKCy9IpCRc4SbGHRmByN6P1GVbDYHQYx1gYfWd5BGYGEi/xZbadsUfmx9M04ukOT/
	z2+Ns+04IggOanWeT9j+AhnNV1D9Mplwf9pRyWiFQUzyqT6WK40noLChwxUWEx3Cn2ikg
X-Gm-Gg: AfdE7ckzIQ9UcOz6AF8lV57JtRGt6Sr3UsaEXu+QduMqIy1pLtv60rFj7goM9pvgaBP
	WKkNEiNnZMTbSNG0DzwNAALKApoV4Yy6MFJMOpUFVFDkp7mNCoIua3du5YFvSfNd7mdqeLkR7Zz
	zIFBGhOvR3J+/u5GqdYl7stdX4PPLQEJ+5dlDfszq984y4+K/srpPbOho3Ipuf6c9o9Tsp3gs35
	rHGTW2GJiYS3EvjXdqwPAZRWolwFCfqLJvnKSBQavisuvL2FKwe8dUmBt/2O8P8xMQgvIOOmOJ0
	1xJxyRNn8y6C5Uvq0/8fAy2eDYXnYaf2z4FXOIZWLXvJn1Yl+ov0wPkGDRgSNM7WTBfv7hpRedL
	T6JhD1wR2U1TdH8Ac9I+nN5w+SzAjbRGHYyWUKGNev0ZjUJg=
X-Received: by 2002:a17:90b:1a90:b0:37f:9cdf:f0af with SMTP id 98e67ed59e1d1-38e4b5627f8mr1625505a91.30.1784282320313;
        Fri, 17 Jul 2026 02:58:40 -0700 (PDT)
X-Received: by 2002:a17:90b:1a90:b0:37f:9cdf:f0af with SMTP id 98e67ed59e1d1-38e4b5627f8mr1625479a91.30.1784282319784;
        Fri, 17 Jul 2026 02:58:39 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3142a02b7f2sm5586375eec.13.2026.07.17.02.58.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jul 2026 02:58:38 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: [PATCH v5 0/3] Add QMP PCIe multiple link-mode PHY support
Date: Fri, 17 Jul 2026 02:58:32 -0700
Message-Id: <20260717-glymur_linkmode_0717-v5-0-4f9e87a61463@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAMj8WWoC/yXM7QpAMBTG8VvR+Ww1aia3Imnm4HgZbYjk3g0ff
 089/wscWkIHWXCBxZ0czcZDhAHoTpkWGdXeEPM44TJKWDue02bLkcwwzTWWfpRMclS64akSWoC
 /LhYbOr5sXvx2W9WjXt8W3PcD/yFkLHgAAAA=
X-Change-ID: 20260716-glymur_linkmode_0717-70eacf08a5c5
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Qiang Yu <qiang.yu@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784282318; l=4954;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=9FeTXPQw+cQm9ysf+FsJrEpss3asU8i8cBWSUkWk0wM=;
 b=+Ap6TS7LJgX+5IelteLmIEpAzkNnSpPY5SsEbl87UBdtcznLcX1XlkXmtndQHcqKug8aOsv/w
 CC6OMcJB0WWDnlYn5tJQX1+7qDZ1QJ0Z3kYxLAKHSWQ4VBoqdpzE6eB
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzE3MDA5OSBTYWx0ZWRfXxkWZPgrfLHjj
 IGgss1EHYzHg9XV+ML6VIRbuBy1KbylzNENpNHznicsYVG0LLE3rr/G1t+ZCCmObfxiFhcF1bmZ
 5Gry1/Ul3mmUZxAwWZycMoG+YipO9g4=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzE3MDA5OSBTYWx0ZWRfX/5aVg5vjLXYH
 HjA3re4zfsvpHzK6h4ki8ZxzrwhBvLNqfEBzPXHkgQOeu+O6Y4+wIF6E1utkWoktmlPXN/T7bt3
 lHpvd1zBuCmkvyfhLo5HHx80orbHp4w22bIVE0hIYK7Ft0vKNYNatbG31UhC8vWkfeiDjDi+S0C
 PjoBRrQtu2Rd+rsBLz1Y5lcCfMv3p24tz2qlEDhR7Vpob33tXNnCWjoK80QKSpzyR/J60etxuts
 3FvmML/qvrGrNCang8Vm9m+Dcr7r6VqvIxfe7PJ4Hl+lxNZT4xmxWsJSil+HZud01c31ZyrrC30
 6tnqt0fCBQo5hVFJ3He8JRUJ8ZwrVByBekrBe0dEyFttiRJzQDDXKxqOLkV0gpRbOK7xM0zv91g
 TYBw/aLsuTJ61TSp43bEka1YB1it7DuuWC+pTDhoDW1XnDxIO2/Dnpr1yP6zAlWrqBJwP7Z6IwJ
 hnQAhc2Gyyg2KhTsthw==
X-Proofpoint-GUID: 5QBShwlhcJBHZQUNXS-x5R_y3A7TGr9L
X-Proofpoint-ORIG-GUID: 5QBShwlhcJBHZQUNXS-x5R_y3A7TGr9L
X-Authority-Analysis: v=2.4 cv=e/M2j6p/ c=1 sm=1 tr=0 ts=6a59fcd0 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=JfrnYn6hAAAA:8
 a=uHxzPtsY3S2Ib2_9k84A:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
 a=cvBusfyB2V15izCimMoJ:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-17_02,2026-07-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 spamscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607170099
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260717_025842_320668_01E6588E 
X-CRM114-Status: GOOD (  17.90  )
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

Hi all,

Some QMP PCIe PHY hardware blocks can be configured through a link-mode
register into different link topologies, such as a single wide link, or
multiple independent narrower links (e.g. x8 or x4+x4 mode on the Glymur
PCIe3 PHY).

Earlier revisions tried to extend the existing single-instance
phy-qcom-qmp-pcie.c driver to cover this hardware. That added a large
amount of conditional, multi-PHY logic to a driver whose data model
assumes one PHY per node.

This series adds a dedicated PHY provider driver,
phy-qcom-qmp-pcie-multiphy.c:

A single PHY provider node describes the shared hardware block. A new
"qcom,link-mode" property points at the TCSR syscon register that reports
the active topology; the driver reads it once at probe. #phy-cells = <1>
lets consumers pass a logical PHY index to obtain their sub-PHY. Match
data is indexed by link mode, and each link mode has its own array of
per-PHY config tables, so one shared provider exposes a different set of
logical PHYs depending on the active mode. The driver inherits the PHY
settings and link mode already programmed by UEFI, so only the no-CSR
reset is used, and no PHY setting tables or related structures are
defined. Each sub-PHY owns its register regions and power domain, so in a
bifurcated mode the links are brought up, and powered independently.

The driver is implemented and validated on Glymur, and is intended to
be extensible to other multi-mode QMP PCIe PHYs.

This series depends on a prerequisite patch by Krzysztof Kozlowski:
https://lore.kernel.org/r/20260420133616.88740-2-krzysztof.kozlowski@oss.qualcomm.com

Thanks,
Qiang

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
Changes in v5:
- Split the Glymur multi PHY binding out of the shared qcom,sc8280xp-qmp-pcie-phy.yaml into its own schema.
- Reworked phy-qcom-qmp-pcie-multiphy.c into a standalone driver instead of extending phy-qcom-qmp-pcie.c with conditional multi-PHYlogic.
- Dropped the "link mode value" cell from qcom,link-mode.
- Removed the QMP_PHY_SELECTOR_0/1 dt-bindings macros.
- Link to v4: https://lore.kernel.org/all/20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com/

Changes in v4:
- Replaced the static bifurcation probe model with a link-mode
  architecture: the active topology (x8 or x4+x4) is selected via a
  new "qcom,link-mode" DT property and written to a TCSR register at
  power-on. This replaces v3 patches 4 and 5 with four new patches
  (driver refactor, secondary PHY clock/reset lists, link-mode probe
  infrastructure, and Glymur config).
- Updated dt-bindings to describe "qcom,link-mode", #phy-cells = <1>,
  per-mode validation rules, and added a new header with
  QMP_PHY_SELECTOR_* and QMP_PCIE_GLYMUR_MODE_* macros.
- Patches 2 and 3 (multiple power-domains, multiple nocsr resets) are
  unchanged from v3.
- Link to v3: https://lore.kernel.org/r/20260412-glymur_gen5x8_phy_0413-v3-0-affcebc16b8b@oss.qualcomm.com

Changes in v3:
- Add description of each power-domain.
- Add 64bit prefetchable memory range required by some EPs eg. AI100 ultra.
- Move PCIe3a after PCIe3b and move PCIe3a PHY before PCIe3b PHY.
- Link to v2: https://lore.kernel.org/all/20260323-glymur_gen5x8_phy_0323-v2-0-ce0fc07f0e52@oss.qualcomm.com/

Changes in v2:
- Remove pd_list from qmp_pcie struct as it is not used in phy driver.
- align clk-names on "
- Link to v1: https://lore.kernel.org/all/20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com/

To: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Philipp Zabel <p.zabel@pengutronix.de>
To: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org

---
Qiang Yu (3):
      dt-bindings: phy: qcom: Add Glymur QMP PCIe multiple link-mode PHY
      phy: qcom: qmp-pcie: Add QMP PCIe Multi-PHY driver
      arm64: dts: qcom: glymur: Wire PCIe3a/3b to shared Gen5x8 PHY

 .../phy/qcom,glymur-qmp-pcie-multiphy.yaml         | 176 +++++
 arch/arm64/boot/dts/qcom/glymur-crd.dtsi           |   8 +
 arch/arm64/boot/dts/qcom/glymur.dtsi               | 336 ++++++++-
 drivers/phy/qualcomm/Kconfig                       |  11 +
 drivers/phy/qualcomm/Makefile                      |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c  | 770 +++++++++++++++++++++
 6 files changed, 1300 insertions(+), 2 deletions(-)
---
base-commit: 59ccadbf59aedee486fce5b4a5486a07c3f4b5d3
change-id: 20260716-glymur_linkmode_0717-70eacf08a5c5

Best regards,
--  
Qiang Yu <qiang.yu@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
