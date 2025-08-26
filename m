Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB0FBCA0EFA
	for <linux-phy@archiver.kernel.org>; Tue, 26 Aug 2025 11:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/aZPYsPdMUEkjgtzaf/xatliHXyWDC1x9lj6oRg/Ezo=; b=wIIqwVLTEnkuep
	N2arE+lZNLZCZSWWhKSdPiCs4mkRZWv4ge5RX3ANgRKTNosluxqC60iAVo13FSDngfq4opCIBo6KH
	q+PSXcVYSm8h/x0bQRvxjyWEaeUkq8Y4lRM1xSsJx/lhJ846UfRM0xF0d5jgCvcdvH/2gPtfAIBK/
	ZY+m6YbIUxdbxLI97h9G9wbjrElUrmqrrUaMxpSmt/9fc06Fcg/X7gSHucOexLr0R10KpCPr95DYR
	1nWMSnt0XArybNtKzh5W/DWUPJC0iGpO09uT88LvLNIQiViqrstnm4iwEnsJY5nR/gTOMU87ynYr+
	ubg4gEMMuAXHz0H+VudQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqs77-0000000Bpuo-2aNr;
	Tue, 26 Aug 2025 11:45:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqrSA-0000000Bhz5-2YYZ
	for linux-phy@lists.infradead.org;
	Tue, 26 Aug 2025 11:03:03 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57Q9UCia026012
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 11:03:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=x9+0v50NQTkfI3P1V23OCP
	NTgsTLPjdF6d/vJu77srg=; b=YQbJgUWtzh9VARKrz6Y2d8IqYx5EfroBLX25cY
	oVV82xflgoLeCUiI0VlKW0KJbTq8GI3ksgpk4ZPbXWMdua+nz9FysRxE8f4pB5QK
	BoGfpEyXt0nS96doNvPficDHoKBnWzzR/v6X1N+NOb1sauJgV2a4D6nzFoHjRhCE
	dp0XSKXlY/IwIseEbe4OyddYVrpqF/HitUgPYSSOFFp0+cwBU/J0beelHo4YM8Gz
	Ea09s9ZnmKN/1MtZyUKPdisI3uFNt9Gs8xN91AN7UGOrPZeyNCIbGSEvrpCNYAvY
	mqOT+jwpStf+5KNoebVEJO8gTtRfI4jNPLtjQk7dwDVei0oQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48s2euhn15-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 11:03:01 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3252a37fda8so3171208a91.1
        for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 04:03:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756206181; x=1756810981;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x9+0v50NQTkfI3P1V23OCPNTgsTLPjdF6d/vJu77srg=;
        b=LkxKekMfAN+gji+3f7tc3EkH7Y5N+j60YJJ0j7fCH+lqczk7eNN1/ltXo8NgDZfcMk
         ayX0UWoC9kCPwhfKLsZe+W0Vix997IEiMxlzsLSdnGFSHoQaH/d8teZtNy9udARj+bSI
         8y1e14dnlSpDF4L2WE3KxI2pNOdAtFk4sThNNVJr5EIozB6ItedvhnXBbprZMcYRRVjb
         8HK+YANBXwV+dnhflsF5jtDzNflfcebdVMjhiAU/zyEGRyIH5+FX/bX9FeNQejNhNxVJ
         96R9DRSpHwS5p8IPw5QITi7tGdSV8EIEuAgbJIMVgyo9stJxDX/ZG29FIXk5GsqQ0Mkr
         C++A==
X-Forwarded-Encrypted: i=1; AJvYcCV3n9JMC2yCKlIAJAeyouFa6cyLyjvk4RAOtgh+hir6/WpuxmIMLs7WUZHn4r0YTwc7pqhdYbQspS0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyFsKWZ3VLg4JaqIInO7je62yRaRd/p6o77+dK4OU4hJTnNoK74
	0cMPjOem7LUDLrd7D92nmgGlu7gCe5OLvj6xV+tF6gf951/FUVxWeBQtt6Doi5DibJQto2rnT22
	N1xhCeZx4G4EKDzHDr8iUTDScER6UZv5drneEaVqfCWsnoxrd19Mh0pT5fY67++1zca4Y
X-Gm-Gg: ASbGnctVBiLlhfBrrYRMGi8tOL9fiUaFnnNlivVAdN64Fw5Wiw0RVAfqdHaMbg18mPf
	HM3WSDvakX0KAwwZKfVtInJ+kPbBvAfuHV2t3F9+gJMZblpZFz42VUQ0nV/pxMbOLV8+P3ldktg
	T0DL0Ce6+bK5l4IdyfmOtkvfFgnT7uYdXFP2BCAFlQFVxN9Ygx3jBQMSps71HurfbZgH8uxtAiz
	IylcRsNB2lRTz+wPxbztdzUTLgtjqKvD2D97W0RMJzg3pKkxt02PHlmgkrkNjqXYXwm7ycbtDFq
	NeQGQB5JE/lkyGK1ASxbAKp23fgaOXWtkHfxZg0s2co7/t8H89CAgizKCCTki2wDsfegt413ZZ4
	=
X-Received: by 2002:a17:902:e5c7:b0:240:640a:c576 with SMTP id d9443c01a7336-2462ee02b9bmr194581015ad.15.1756206180752;
        Tue, 26 Aug 2025 04:03:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH9KK2j15pPMLTu9NzWYSjjBpeWDIhm+qorXqLMJG7JM0/T+BAcp2bQtDU3K0U3p+/axC0CEw==
X-Received: by 2002:a17:902:e5c7:b0:240:640a:c576 with SMTP id d9443c01a7336-2462ee02b9bmr194580485ad.15.1756206180270;
        Tue, 26 Aug 2025 04:03:00 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-246688a5e5esm93207955ad.161.2025.08.26.04.02.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 04:02:59 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH v3 0/3] arm64: dts: qcom: Add PCIe Support for sm8750
Date: Tue, 26 Aug 2025 16:32:52 +0530
Message-Id: <20250826-pakala-v3-0-721627bd5bb0@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAFyUrWgC/22MQQ6CMBBFr0JmbUlboaAr72FcDKWVRqTYaqMh3
 N2BhTHRzSRv8t+bIJrgTIR9NkEwyUXnB4LtJgPd4XA2zLXEILksec13bMQL9shkiZUWbdtgXQK
 Nx2Cse66h44m4c/Huw2vtJrF8fxJJMM6wsUIXQlEIDz7G/PbAXvvrNacDSynJL1uqjy3Jrgorr
 OKqUlr9sed5fgPes0x74QAAAA==
X-Change-ID: 20250809-pakala-25a7c1ddba85
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756206175; l=2165;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=dTps1W7yFBJgnc5AYKWxbmGHLBztW+e3CUQk4PYJS9c=;
 b=ORqzFVgp5adXJHIasbs9RHwU+iRtAM2wzhkSNTggapOaGM92dybSlm70kFk+mRAXNYgbs2HQc
 wFAt8sJbAseCRHkXVO0dDHAgFAkVcsMb39uenW1ggc6JKPRlsrUj2/T
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: lnRQk_PdetMYRfd4gLRcuvvNE-s_ZjJi
X-Proofpoint-GUID: lnRQk_PdetMYRfd4gLRcuvvNE-s_ZjJi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI2MDAwMSBTYWx0ZWRfX9mNqVZcxsDIf
 QA6HL3ltcgpynnX6rVU+hl2R7wb/rWzObCGknRXbwc+6ArPKO65TweUfYqFxDAp5csFNYx6D5Hx
 hZGBoiswFWuSWR5Z8TAgzB0wZaYMzP5lccywnk4mvRtv63jxo0ynm4yO9ndkRs+KthKgHx5coD9
 GhcfYH6u9h1xbSTqhhCnJcR9rmn0Y4WAPDWE8u7ihVJAaCXqlyNxO2Dldq96zZnR3pr80xOZ0Om
 eFdEZ8yBdduQDDgP9ZvhLIOhIGKdoxhnZAClh/h7zQNQ8dcvqWFCheaRKsdLiGDaD8XImvwr+LW
 oo1uW3JZt7owz281v15PoVoshMRTSxS5GmopRHxGzj/qUhWekDWW5fBUYKyYx2IO0wdMimpTi1M
 OnJqKCGi
X-Authority-Analysis: v=2.4 cv=PJUP+eqC c=1 sm=1 tr=0 ts=68ad9465 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=l8mvWsQ0dvX29tmygDoA:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_02,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 phishscore=0 priorityscore=1501 spamscore=0
 adultscore=0 clxscore=1015 malwarescore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508260001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_040302_658829_2159BA6A 
X-CRM114-Status: GOOD (  14.32  )
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

Describe PCIe controller and PHY. Also add required system resources like
regulators, clocks, interrupts and registers configuration for PCIe.

The qcom_pcie_parse_ports() function currently iterates over all available
child nodes of the PCIe controller's device tree node. This includes
unrelated nodes such as OPP (Operating Performance Points) nodes, which do
not contain the expected 'reset' and 'phy' properties. As a result, parsing
fails and the driver falls back to the legacy method of parsing the
controller node directly. However, this fallback also fails when properties
are shifted to the root port, leading to probe failure.

Fix this by restricting the parsing logic to only consider child nodes with
device_type = "pci", which is the expected and required property for PCIe
ports as defined in pci-bus-common.yaml.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
Changes in v3:
- Use device_type to find pci node or not instead of node name.
- Link to v2: https://lore.kernel.org/r/20250826-pakala-v2-0-74f1f60676c6@oss.qualcomm.com

Changes in v2:
- Follow the x1e80100.dtsi pcie node description (Konrad).
- define phy & perst, wake in port node as per latest bindings.
- Add check in the driver to parse only pcie child nodes.
- Added acked by tag(Rob).
- Removed dtbinding and phy driver patches as they got applied.
- Link to v1: https://lore.kernel.org/r/20250809-pakala-v1-0-abf1c416dbaa@oss.qualcomm.com

---
Krishna Chaitanya Chundru (3):
      dt-bindings: PCI: qcom,pcie-sm8550: Add SM8750 compatible
      arm64: dts: qcom: sm8750: Add PCIe PHY and controller node
      PCI: qcom: Restrict port parsing only to pci child nodes

 .../devicetree/bindings/pci/qcom,pcie-sm8550.yaml  |   1 +
 arch/arm64/boot/dts/qcom/sm8750.dtsi               | 180 ++++++++++++++++++++-
 drivers/pci/controller/dwc/pcie-qcom.c             |   2 +
 3 files changed, 182 insertions(+), 1 deletion(-)
---
base-commit: b6add54ba61890450fa54fd9327d10fdfd653439
change-id: 20250809-pakala-25a7c1ddba85

Best regards,
-- 
Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
