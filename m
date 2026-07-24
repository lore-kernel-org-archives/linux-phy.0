Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0CA1C531FA
	for <linux-phy@archiver.kernel.org>; Fri, 24 Jul 2026 10:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KHYmgEBwnXPOyYoNmxcwmDJJgeSVxPJrdTvcodntwLY=; b=oSoUmCeS/+Rztc
	DhfMQ+hsNJntPRkc32Z3Ru0NG9t89+eVpykHSCiQJwzZm+EB8gcooUloa56p6B+GL3A2Ds2FljWt4
	XZgxVj0zV436bMynYIY7iPOx9KoVjRHV27PPITgsREQKEVW9uCLfN/sPnzQYDW0Dp0mnNJ1e2BISJ
	UT/03VNdAKMVt7lSlSRizqYrVdBJ2mokgVY6QNx8xWK1zLPXwwBA3hVSQ8Jbanp7C2V5/9KoKSEbl
	tY6X/I9nth89MBC7s1j2GxJA8xCICs3h48CLqhEg3uQfucPXIe6LQEfxV3+L/hTi3MVU6cNpWDhwQ
	iJRAdbV3xpPF2TtMNfxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnCj0-0000000G215-2Vtw;
	Fri, 24 Jul 2026 10:01:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnCiv-0000000G1yI-3v5S
	for linux-phy@lists.infradead.org;
	Fri, 24 Jul 2026 10:01:47 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66O4lHc01992168
	for <linux-phy@lists.infradead.org>; Fri, 24 Jul 2026 10:01:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=/2JQ099oQdzraMS/tGsy/5
	kEGHTpxIWzBEXjEGB/ewU=; b=enJuLXUDA+a0f+eg/tB18/mQUm1MOPJhOg9ykp
	2+3luCO9GjG+eyJ/ILb6JBoZiFTpBf9iFmP43cR8rJKOVm4/QUvoPSmJyoKiZd1J
	mce80LmoEnqdG9Svgx//S0W7tudzSOFR10OjX77qXD4C0SMOrj3HdjHCQqw1DxdN
	j6fRz5027DgOqNEsICBI6iZ/hzqUfJIaoo08fBOC8aDXsEGslbXC1sEi0XtVvloQ
	nhSQs4vKCKEhPrqcUPD2K3KaIbGctF1JmZhctkbFqaPOv/Ev/W1cSrtMyi5KyJsp
	niqDxfBzDPSWPxqxoOcsP2q6OtYk7+iLlKObGi0dNYgnrqEA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fm0p5180p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 24 Jul 2026 10:01:43 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-84e1da97175so403379b3a.0
        for <linux-phy@lists.infradead.org>; Fri, 24 Jul 2026 03:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784887303; x=1785492103; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=/2JQ099oQdzraMS/tGsy/5kEGHTpxIWzBEXjEGB/ewU=;
        b=P+lzL4lGHdTTeRUvjpJ9LJLxlM7/zWWMCGSB+K/y/0fcTCQC8SFU874QzRItf7pMdv
         IBIRo/RNjiEc5NkPGcwUyMbTyKGEUoOJCMRrjAK9mZhfqbz2+lBOVuxU5oWQziTj2I64
         iQbn2JKdKOuKUD2Gr7b3kAiF/PIF7+WLua0ShVGyNi3mbrkpq4q1zzWvZbILGUkY9qht
         7TpeC809bCmDGU9poduogCT2bclT0TCU/D1vU52B1E4Q7hjyai4Xb7fdgdEWCvxFxtgO
         j7nlYNgo+T14wJ69SEU5oj+us5VRMm2qa/9Czj1f8g/SwzNqQ1b/4VikUx7SGWrC3DKP
         Zr4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784887303; x=1785492103;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=/2JQ099oQdzraMS/tGsy/5kEGHTpxIWzBEXjEGB/ewU=;
        b=crhzXR9TGsrkCSGeXQ1srthPqzeGIpdPG94WoCuAukyeod7r8jUhxdcWiEOACCxV3s
         wBZLiBhozrYELPFPF4hCxDy/h9K0QmR1AtaBn9paI1JMswOLWCzj2sJjZ79tUgoHnUhA
         WHAe2Vx7zz0X1e1m72mA+FnyAV3wM4IrVmIwV9vd67Pc3P/r060f5XPTbTS1X5+2iJnN
         AU+aXJDZDfxDbq1WjSSsWacP4ChGNr/KIJUX7rAwhH1jHhKi92R46+9/f+dKbB1m1T2+
         HP5T2eGMVymCz8W+Z88cBjR7a3Q+/EGWzuNPLn7ILlRQNmDNf9iZ3fRJiFC7X/Y1KH5V
         3r4w==
X-Forwarded-Encrypted: i=1; AHgh+RpRUlQDTAxzlCq+2FSiBqGCdx8b9Ov/x3JlnVhdcNN445lr4BnNU4rcijWE1m50NWdbD4zyuAdVDAE=@lists.infradead.org
X-Gm-Message-State: AOJu0YwKJLgXxCeZuhkAtvdvr4Qqn53t6vqNIv2Ewn1yZl9gWRgMx7fC
	BvNSTn7d8ivSzRHfwWmZpAF9luJw0N1HzjRQ7/QyT3f2YlWCeBnaPagJEKbkEghKh91UntaxEP1
	z/3dNACQczoqzjfcUy9hLp1KC4zSDtQczwAk6aLUkXsS0/u/3ePg5jlWH7uxiKLODeNuu
X-Gm-Gg: AR+sD10enHnaBA+Q0G6KpBUj7RbOHiHQPxSQnKTzXlyM68Jx/+Tj/gs1KgvTbVnlEaM
	x0zxnDzcpdJ1NqVEoGmVfzENKFba2UwFdMRwPoyXXjxwKodPcvXO4UVq9mGkQh0OxXNgf7+0ba6
	DiE/ATd2ZMM4IFHKWa7an59GthVl6qRQfFcxWJVp+nxPOR5HDbFJVwXVr6V91sV8t22zoOF8nvp
	Z0VO2E8AJskrpRbIRbW2TIYHOsO9++Lmmzedxxbbn/nwOVx8bKm470pq4Fjpjoi/f6POwRLlu/e
	yUG5Z6WeKs4ecPNf4fdjW5bMHPHibRsp9RCxLpXTCpGbLskRvNyp0cl3CanDJKCJWTZCgvmq3A8
	vXbR2oojgUyzAd/VMkCuTTblc0/fF5/L7r8mct3p1SuEBTE8=
X-Received: by 2002:a05:6a20:c78f:b0:3c0:9c19:65b1 with SMTP id adf61e73a8af0-3c44b28fa1emr7787066637.73.1784887302739;
        Fri, 24 Jul 2026 03:01:42 -0700 (PDT)
X-Received: by 2002:a05:6a20:c78f:b0:3c0:9c19:65b1 with SMTP id adf61e73a8af0-3c44b28fa1emr7787026637.73.1784887302279;
        Fri, 24 Jul 2026 03:01:42 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3147e1c9289sm29515427eec.29.2026.07.24.03.01.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2026 03:01:41 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: [PATCH v7 0/6] Add QMP PCIe Multi-PHY support
Date: Fri, 24 Jul 2026 03:01:18 -0700
Message-Id: <20260724-glymur_linkmode_0724-v7-0-65c8469c6b65@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAO43Y2oC/yXMWw5AMBCF4a3IPGsidUttRUSowbiUtAiR7l3x+
 J3k/DcY1IQGMu8GjQcZWpRD6nsg+0p1yKhxBh7wJEh5xLrpmnddTqTGeWmw/EYM40TIsI1FJcB
 dV40tnV82L36bvR5Qbm8LrH0AjAfIingAAAA=
X-Change-ID: 20260724-glymur_linkmode_0724-e3569c3f59a9
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
        linux-kernel@vger.kernel.org, Manivannan Sadhasivam <mani@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784887301; l=6821;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=Ws+/V9u2biizU4r4uBqT7Test8WqYB3ENS4IQxXb+KU=;
 b=tur3EG17CjJaE7HCArVUygrz7CgvfFeiQZum5ubJQfQyoZ1M5G8qttHZyzJgbfPvrtV+AmhBx
 eCf6Uble7nICirfFK2CRkYaa5S/pZIU6UxgamyMsVcjqRDcfFUxp+XB
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Authority-Analysis: v=2.4 cv=Pq6jqQM3 c=1 sm=1 tr=0 ts=6a633807 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=JfrnYn6hAAAA:8
 a=aO0DoCCV54Ih_QmUJo8A:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
 a=cvBusfyB2V15izCimMoJ:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-GUID: sZkqougtvau5f-aHXXIHTncCATPltbuO
X-Proofpoint-ORIG-GUID: sZkqougtvau5f-aHXXIHTncCATPltbuO
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI0MDA5MSBTYWx0ZWRfX8CnH4l9FhLfM
 +Y5HfcmT+yYTPqU8xWbgxIIj1veAwhIbcv3PgULeAllWBDx3gX/OZKk2+xBiGTyX/07EqXBSb3l
 vNCXSpB07HQRbG6ygu0sLH3hDgQUNJ0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI0MDA5MSBTYWx0ZWRfXynHj1+a8WRJl
 W6ak99WX3wwHorBveSmsexREUlt3jUTaZK4wPQJiupJ31lUT1a9Lp4bYcrcUNEKt4Og+9E0CJCJ
 6fSrANxvFSIMM5pqV8ZFcgrTESA+btTDs+TzoGWxldrZK8GK3eo2I3SVKv9/iJF4QYzlKB+P1yF
 7Exu3L6QR86zZcC0AW/EeG4/3RR26Da1ZO0zOQb+gW4GTbfIIVUvBqg5eNJcLUq7Y9qw236y4gi
 +ChlpkWtv2CzxY/kTmK0v/emYkOFsqNJ9AFZHRWNF7Et36fuLkM1y9yo5X6gWfmPJbrL+bCRnJ0
 Ih5gquQp6FfuyiiPJrpe7x1tvWbcey/HtksFDMmWA/HTQH4gVxS2p7mkvIlWJ5bSUB9ykqhg6KW
 myEj4jkpQCANVQsyL3biYqmVyn/IWL6uxtpmVK3kUU50tDVsXxDjvpqViWEieIbP4PcIgaHfpjK
 ZNKJYGzBGuwtM8vUq2w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-24_01,2026-07-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 lowpriorityscore=0 adultscore=0
 bulkscore=0 clxscore=1015 impostorscore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607240091
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260724_030146_098516_C3787E6C 
X-CRM114-Status: GOOD (  23.24  )
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

Thanks,
Qiang

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
Changes in v7:
- Pick up Mani's Reviewed-by (driver), Ack (binding) and Krzysztof's Reviewed-by (binding).
- binding: fix commit message to reference the actual filename.
- driver: rename Kconfig title to "Multi PHY" and driver to qcom-qmp-pcie-multiphy; PHY_INIT_COMPLETE_TIMEOUT -> _US;
- Print errno in error messages; reverse-xmas-tree probe locals; handle NULL power-domain with IS_ERR_OR_NULL()/-ENODATA.
- glymur.dtsi: reword subject to adding PCIe3 PHY and PCIe3a controller nodes; node -> pcie@1c10000; drop num-lanes; add pciclass to pcie3a_port0; fix 32-bit MEM range identity mapping.
- Link to v6: https://lore.kernel.org/all/20260722-glymur_linkmode_0722-v6-0-bba8156b8cbb@oss.qualcomm.com/

Changes in v6:
- Remove dependency description since it was merged
- Rename the binding to qcom,glymur-qmp-gen5x8-pcie-phy.yaml
- Drop redundant minItems on reg, clocks, power-domains, and resets
- Rename phy_a/phy_b reset-names and power-domain-names entries to port_a/port_b (port_a_nocsr/port_b_nocsr for the no-CSR resets) match reg-names.
- Add a description for #phy-cells explaining the sub-PHY index meaning.
- Drop the unused "pcie3_phy:" label from the binding example.
- Drop the year from the driver's copyright header.
- Fix a pm_runtime refcount imbalance on the qmp_pcie_pd_power_on() error path by switching to pm_runtime_resume_and_get().
- Split the DTS patch into a SoC-level patch and a board-level patch.
- Add two patches for Mahua, which only has PCIe3b wired up and no shared Gen5x8 PHY block.
- Link to v5: https://lore.kernel.org/all/20260717-glymur_linkmode_0717-v5-0-4f9e87a61463@oss.qualcomm.com/

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
Qiang Yu (6):
      dt-bindings: phy: qcom: Add Glymur QMP PCIe multiple link-mode PHY
      phy: qcom: qmp-pcie: Add QMP PCIe Multi-PHY driver
      arm64: dts: qcom: glymur: Add PCIe3 PHY and PCIe3a controller nodes
      arm64: dts: qcom: glymur-crd: Add PHY supplies for pcie3_phy
      arm64: dts: qcom: mahua: Replace pcie3a/pcie3_phy with dedicated pcie3b_phy
      arm64: dts: qcom: mahua-crd: Add PHY supplies for pcie3b_phy

 .../phy/qcom,glymur-qmp-gen5x8-pcie-phy.yaml       | 177 +++++
 arch/arm64/boot/dts/qcom/glymur-crd.dts            |   8 +
 arch/arm64/boot/dts/qcom/glymur.dtsi               | 336 ++++++++-
 arch/arm64/boot/dts/qcom/mahua-crd.dts             |   5 +
 arch/arm64/boot/dts/qcom/mahua.dtsi                |  89 +++
 drivers/phy/qualcomm/Kconfig                       |  11 +
 drivers/phy/qualcomm/Makefile                      |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c  | 754 +++++++++++++++++++++
 8 files changed, 1379 insertions(+), 2 deletions(-)
---
base-commit: 9eebf259d5352b87080d67758f483583d9e763d7
change-id: 20260724-glymur_linkmode_0724-e3569c3f59a9

Best regards,
--  
Qiang Yu <qiang.yu@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
