Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDD36C54F54
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jul 2026 05:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OftLS86aOVhp0aSV48LJWHapK0qYtUsIv7YC7NNvCo0=; b=31HjV2LeySuU7P
	eVCSsaBna6/7PrtbjwBgzfxeITpRYmwEDutjRqeWgqtdQhCO3edYdC91UtwSIHd3G9kXJV9jxMQ+1
	BsJrRPA5ful9FPTHDCwzUgSq5rWnaNBA6NLyzD+5pZIdZGUcPGfqbJPGZaBsL7DgkziJhqzEnkAsG
	ZhS1e1YWSXIYw/wBwlXE0gGIO9Gk+XQPDRbUzUjQgJ2rHTsNK/pdbHHtLAQDo5ke0QORC+iQoEgls
	cfE8ex/xQA2M+KlFaLnPc4YnxOyP7myjweLS4C5oFVLC4GYyNvI98zQkQlStyY0yqJDXi6j0aAu03
	IbcmeFoqq8wUHnqlTyZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpfZH-0000000Bmm9-0vEw;
	Fri, 31 Jul 2026 05:13:59 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpfZE-0000000Bmks-2ljw
	for linux-phy@lists.infradead.org;
	Fri, 31 Jul 2026 05:13:58 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66V5DDow3038431
	for <linux-phy@lists.infradead.org>; Fri, 31 Jul 2026 05:13:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=DUM6Xx2nDD0pRgVVTZdtJ3
	3gz1FNMpBpwUsxKl5N3lI=; b=gwUFw+S22jb9N55HLFwpOaTwikyCXHlw8s35Hw
	9jYjtgZ8jUI0m9NEKlCjLWWIbyego2sFlfAe5uwpIh9KwuFjL9hp8IVI1On0+W2r
	PPVpkIUHdhRi+3G8UXvz9G9nhcEInVQmyXCvLk7s06aquRSY0znMp1AE+on7LePk
	+28BRYPo4rlKF4l7dZzYXDtJegPvFjtOYQWHkH/ec6SSs/nLYphbYoVxP8Y/Hx3d
	DGTmSikfw9yIEN4A27lrnfnRA9UkaJR2kyD+KI8bYqWyD+uAXfPTpxnEHe55kiVs
	OYIrYChxW92tSWJ+grurApLZfCEzHyFjpgguKwwpXDl7H9Dg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4frnc9002d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 31 Jul 2026 05:13:55 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2cacf17c7e0so7259795ad.0
        for <linux-phy@lists.infradead.org>; Thu, 30 Jul 2026 22:13:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785474834; x=1786079634; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=DUM6Xx2nDD0pRgVVTZdtJ33gz1FNMpBpwUsxKl5N3lI=;
        b=GRbkAIyBCoJJnb1w3yy36Kqgl4aouS4DuxPNqzTwHTM6yZYihpkxu0bXBk4q6Vljrj
         8BTqln59jGWS84wQE7nW1B4e5qS7lQAXPZT2qokjsmG53Ki+A2q1uyJfNkZHFFlmFz8X
         0lOj26SfQ9myREdbaJKkJaOLK5k7jww9etq60tvNDLzlAnIwbplu/tDb9bFMPHZQstE1
         HP6icRLOFQsXklJwsh4BRVzQ5PkixDQvRC1PzwDgGMHzSSrtsUQe8YXLxdPVVhNLbuZI
         0OQk2IBlm3IdzoGDWq1A8DMkmtwSoK0uguG8Xtcbo2dh4XqAC1gj+67ByytwiNrJ7lca
         OmPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785474834; x=1786079634;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=DUM6Xx2nDD0pRgVVTZdtJ33gz1FNMpBpwUsxKl5N3lI=;
        b=cOqpr9KbNKHY3YjTRQovfy0ZCVfT/Nl+SdrYtxPAPVmU7aeOf54eTmN/epZPPhyA1U
         4wfJ2vjVWlkBouccYU2Ixbvi7Gtle5YsKaaQjy8Igih9/FBUzFgDNY6LCd7nHhJ6yTYx
         exubo0cOMNDBHjWZTwY5cKcVHYwBMl/uuizcTnlcu+t6ve6oDT6+UZhcfgOsq+eH52+s
         GMoE8A/b9Qst+OdXzThwcc6J5VxgSHpuAmJLW/wLSSNChi5zXr/NtGSG5YL4ZmKwRi0F
         eKQGRfak6qV1MmP7dQvavjvBiw9FjvunIf0MT7oshT8cmJe6ekQiJ2rdOPpSD4Ol1Shk
         kUzg==
X-Forwarded-Encrypted: i=1; AHgh+RruMYPkbgWOavUG9uKkGZ/z58ZFXIysfMSRYGjdNcpKd/23K5Dp2y9Gf2haKR8qLWSZlqQiToTuOhU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz+D4X7nW7snPLN20RRECanLtC0V5B3mzU2v/tLgNxGzrbbPcKK
	6ZTZpbl4YCqIuxYCkM8HCfu4/eSwXSDu5nuXh20hHKco1Ss8GJOn2nmvHIYYVvbWy5LRw+DSsXH
	wXISLLzEdy//7r80jL89zY0m1eLRK5r2aDTU8ZsfXllYHTJElAc8hXj5RerQd4ps1H3sU
X-Gm-Gg: AR+sD12q6hCdMyphmKr6VdtiTizURXuh8zKrscf6GdKLzZKhRk5dbDLj85quQo0mFjf
	9c8uNzbUR7EY3/F0R4lPVELW210hdHPwDykm8Kho8LMeI9b5kzIDQEhkwsd3B66cj7VcmpadBQF
	o+40oaNGMtZl9caJQzsjnETZz0wx6n44ONGw0UQBemZlL92D7vltu3p8W2pz79Jo10LPJyEiWFu
	H9pE4MQyd/jRe22T2MCrUkPK3j2Yli8iTHMnXbnChaG3694ysZXyLtNuntO0SSdLwgx0jmbXu9e
	iYNxc2iNxE5FznpJnXBEDAFWb2dDL+xFodOwQrJrupdz3LpL14BQMVMsU1+VFALceUYKdSgWjrK
	vSDdH5FOAk3gti+ofnGVGEucjhxfY0KIHTVHNYCRZPyIMkAE=
X-Received: by 2002:a17:90b:5343:b0:38e:7268:220c with SMTP id 98e67ed59e1d1-38fb1478b99mr695648a91.32.1785474834237;
        Thu, 30 Jul 2026 22:13:54 -0700 (PDT)
X-Received: by 2002:a17:90b:5343:b0:38e:7268:220c with SMTP id 98e67ed59e1d1-38fb1478b99mr695629a91.32.1785474833637;
        Thu, 30 Jul 2026 22:13:53 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3153e06f88fsm976435eec.20.2026.07.30.22.13.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2026 22:13:53 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: [PATCH v8 0/6] Add QMP PCIe Multi-PHY support
Date: Thu, 30 Jul 2026 22:13:49 -0700
Message-Id: <20260730-glymur_linkmode_0731-v8-0-a455265ad8bf@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAA0vbGoC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyLHQUlJIzE
 vPSU3UzU4B8JSMDIzMDc2MD3fScytzSoviczLzs3PyU1HigoKGusbF5qomRmXFickqSElBrQVF
 qWmYF2NjoWAi/uDQpKzW5BGSWUm0tAM0sWy94AAAA
X-Change-ID: 20260730-glymur_linkmode_0731-337e4263acdb
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
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785474832; l=7297;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=UyhLpfykTmK3dTE2VuC0t6Px3l/t2rU5T/jSFWGRnaI=;
 b=HLyQCsyBJBvihi5JmFMiNiRmNVtlNsFpyUQn2+YIi3ZmndgQkuikj+ELQrPyLUOeuaLAy8/VY
 p4Q4qMqE9ukAosxHuZ4tYHghlg+tGwttc8A6FWjaZBKGL4F41CCcijT
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzMxMDAzMiBTYWx0ZWRfX1fQYdtRJAluf
 b7EvV5mFc5OTKj+tkbNPk8ZNX0zEodfXrwqau826MoHrXyEmpTrc8BegtP+27qwSCE/ssOXbW4e
 /wXiN2n5bqwfaHVFGQBIX8miCviYJ3T7VpLvjJ/6jtj4ux14LIS4IMdGBIV3lDI171rG+oAPazx
 axTKjIB37Q06FED5n5taN9xMjRfSTjm8MMgq9pQWq4WY6wTpmDo4bdPwtnhXGeFfd37KadjzsDN
 P3x/S+fHDEurKeJyjYw0nLcytWUDbvyxajpY6kRCBJXzzhSUM2W32f6KzFzdKNR7b4pMjmNI7Ax
 P7FSvX7ST9ZQZI3cIue767zkqDFHlH4RAlOtXJcGudtYG2UofYJ0/N5JK6dVtYfXFXUEoB25JTM
 vqClKsT/Sk55BvVk/0EpmUCLBEm/wZzkX1CJSzsqrprRfOhlSW8r3F8cUpJUh+hRd7qPfLqKEkS
 sqs8GG4Sjlo/+3ZMtfg==
X-Authority-Analysis: v=2.4 cv=GfknWwXL c=1 sm=1 tr=0 ts=6a6c2f13 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=JfrnYn6hAAAA:8
 a=qMU6Vhuv4BxmAn6ANj0A:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=cvBusfyB2V15izCimMoJ:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-ORIG-GUID: BfWIm_O7F9E8boQ0sdnrnfRrPo-n_QC2
X-Proofpoint-GUID: BfWIm_O7F9E8boQ0sdnrnfRrPo-n_QC2
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzMxMDAzMiBTYWx0ZWRfX0Yevox70IZPH
 uQDHBFvrhkzYQ9Gy3DJMaV8IUlJ8KwpxHpUdfnJNVhH+VGOcElIRdJmy7t6hP0/KeM+hHOasGhD
 wwHk3Pyt1onALegqp/GzjL1LjIABC6w=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-31_02,2026-07-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 malwarescore=0 phishscore=0 bulkscore=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607310032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_221356_822381_2C813155 
X-CRM114-Status: GOOD (  24.98  )
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
settings and link mode already programmed by firmware, so only the no-CSR
reset is used, and no PHY setting tables or related structures are
defined. Each sub-PHY owns its register regions and power domain, so in a
bifurcated mode the links are brought up, and powered independently.

The driver is implemented and validated on Glymur, and is intended to
be extensible to other multi-mode QMP PCIe PHYs.

Thanks,
Qiang

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
Changes in v8:
  - driver: drop the always-true fixed_rate check, the impossible
    num_pipe_outputs < 0 fallback, and the unused pipe_clk_fixed field;
    collapse qmp_pcie_read_link_mode() to return regmap_read() directly.
  - glymur.dtsi: use GIC_SPI instead of a literal 0 in pcie3a interrupt-map.
  - Pick up Konrad's Reviewed-by on patches 2-5.
  - Link to v7: https://lore.kernel.org/all/20260724-glymur_linkmode_0724-v7-0-65c8469c6b65@oss.qualcomm.com/

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
 arch/arm64/boot/dts/qcom/glymur.dtsi               | 336 +++++++++-
 arch/arm64/boot/dts/qcom/mahua-crd.dts             |   5 +
 arch/arm64/boot/dts/qcom/mahua.dtsi                |  89 +++
 drivers/phy/qualcomm/Kconfig                       |  11 +
 drivers/phy/qualcomm/Makefile                      |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c  | 744 +++++++++++++++++++++
 8 files changed, 1369 insertions(+), 2 deletions(-)
---
base-commit: 95d6a9ccef99117115e41e9adb271243bd5e985b
change-id: 20260730-glymur_linkmode_0731-337e4263acdb

Best regards,
--  
Qiang Yu <qiang.yu@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
