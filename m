Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CC55FC72A8
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 07:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=j3yOdfx8sL58lWuzCyAzkD8onaViqlqbONK5ApuRxLU=; b=jEk3IN0PcLJrdR
	yY79c3z0HHqtD2bmZMpZFYFdtfxO+8OKgfQmoeaC+CfBFSTfj/KCnq2+KlMYqjFc5C9uX2lmomV+h
	lrCAfqWFpTxgSVffCMd5yKB98cEuF3XrSyxurLNNJYGSSxObx30poRvl/HUqqcwSd2qN4NjYVmgGK
	WKNpspFJlMP48XXZNU++YAdQxIYgpQLYicpBcvA+N2PGBcyv6c/I1ZU3GP75G71o02BR93jzmkun2
	5J0NBUrEqD/j7UB2gjLy0ejefIlYW7nZZS8f24Z1D+noXSw2Ogz4C8Lj5GKS/l3uYjVdnoukTEKfx
	SO+Ov9vO6W7n51hDKJ8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4ZVl-0000000GAr9-0uHi;
	Mon, 23 Mar 2026 07:15:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4ZVg-0000000GAnX-1UXF
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 07:15:37 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62N6nvUJ2044226
	for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 07:15:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=C0E4FZGh3Z/6gO71aQ5vJ0
	JrLCz1wkkdI/+bpz/bMEI=; b=iGAXKBz/bvz5KM2WOF0dMTBvkUNlIMyQzWzliA
	wWHZFbNdsBKOirGa+sPjvXtss75CcSKyoQn6IqCRM6NR9dhzRpwiGkEoc590E/bZ
	pepvEvmlmTDjU7sfEXeCeCAK2Br9vM+s9low6su2XCpJbnn7vfZoQJmoerrzER5f
	0hqcaD05nCLL7E8Injo2pKR2YpreTy0GUAiNQ86faWNE0nPZM3YUKRGpBx+nT41R
	IlvKK4XaduTnq2YtlaunzOsN6C78qbi+Qo+Cwrks4CIT0nwQdM8+THOieA+8qzOC
	u0fEZUpB6PW01JjseS0eciVGzH6/T6O+kFsl5Lj28MeFqTTw==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d1jb5mb1b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 07:15:33 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-126e8ee6227so2182113c88.0
        for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 00:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774250133; x=1774854933; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=C0E4FZGh3Z/6gO71aQ5vJ0JrLCz1wkkdI/+bpz/bMEI=;
        b=LKmGfqzHa1aG+lbN2e0g8UkgQUTxQ97IuQ6IzJj/y0W6YAb33t0IrFpJye8FZuYB1K
         S9zwRHKjJaoEw8pc6woNt6Wgog9auvT+olytj+KAVK6SCn0nlrlvFpi5A3bf1cRJ/26/
         YwkLoinOKfGEGJa9R17NqudQ82Jr4yGlLXwMDchliurFjnaxLC+gUSiYbdG/kQ0w7+mI
         LP8nwZQb1Ve/YZ0E89ajatxjcqorHd89mgFywtXLqVPsf/JnT540kn/JaCe42D2YRWQc
         59ItcletHUc72+U1oHYNfXBXPpnODr9RxUVu9pJFHE6XQI4z6RymoTctiCmjUX/qvmp5
         xoeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774250133; x=1774854933;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C0E4FZGh3Z/6gO71aQ5vJ0JrLCz1wkkdI/+bpz/bMEI=;
        b=hK5f3nO6hAhlLKY2xnn/uJoXeWV16i5Bd36qH/qhHIjMzInyyUloB8x5dAHubRHz4P
         Us9MGnEzL6MSfQS5jNOrc2IjZc8Ms8TdVGR7SQ+yRZBmmZBMwLRygg1vSTrVA8hk1gyP
         TB62vD2j/zlYqAszcVlWztZw0gFO37ucyYGeNsO4HsP5eRpdy/kIx+sV37vq+EzHgauU
         3pMHLnx10tCcdJlfOSQlpfOHsA7oNcOivzd7kBIc+Qfw+KMqPLVAKXFMuhZipVSNSR4h
         SOjNAcWrwmYcZcxToAprZug16BZxS+YKe4qyKhwFL3izV1ejB8rSEL3Le60V2Oi9ZicX
         WdiQ==
X-Forwarded-Encrypted: i=1; AJvYcCVI1Qlj03d70WT65UhUQtBpQ5sqZBjcNAHkMPgmD3TrJjut84Tu67hZ1/Y45o3VXrlzlUoB3rlBBjw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzk6qMxBbd1i8tWam3XwIP3cVxEBZy2iLEALkoZ4/j4Lo8XWJ9A
	cgpUYYJ2JdDGE+6Jz+IiJnSJiJLCSoaBnDlOGT5AEVrk4hjj+ifVWvP1X/mOe03yNUV6nC2jSqP
	TtVt5Flrxm8tGuhyP/2M+9vSKJSqQvlMH653wz8DOVv58kMy/FtsaixPMFVQUI4hm8uzI
X-Gm-Gg: ATEYQzy0pCqNf6VuJ1KocgiFAfgVhABoEo+hNGm8a0Stdu4i9gBK6OlVexVacxU9Nv9
	haArGQsOHWWG6yn7JO+kMnjM3mgprvFTviMGVYdzSNNSKt5Fq7vbTVuv/H+LuCv7strWqNj2z6O
	zDUatrJXJMXCo8KrKEcI9AxqH8q1ceKkvdSEFaXhq8szsaw1REjDdLK60o0CmFI+T6Y1o5x9Kgo
	0egsyQXbh0wrmYH3uZvHbJ0+h1SMCxFOWWxQfJIVOV6UpT4ONQqhDcoCEs2sC/kTr5W5Y7GZhGb
	pW5VM/0+Q/XbHxjS/vfk99desn58bcjrbEuJIlH05l8fUO8aaTtzo4+1duweObe/qUNvG1B9oRy
	vQasqZ5XSuAt4j9ufT6H5tkXVhmlQlUMoyMObPQ5/tMrFoYnJktBi6Qpk58n+Bd8ecctO
X-Received: by 2002:a05:701b:2503:b0:12a:7f25:44fd with SMTP id a92af1059eb24-12a7f254723mr1222964c88.41.1774250132615;
        Mon, 23 Mar 2026 00:15:32 -0700 (PDT)
X-Received: by 2002:a05:701b:2503:b0:12a:7f25:44fd with SMTP id a92af1059eb24-12a7f254723mr1222948c88.41.1774250132003;
        Mon, 23 Mar 2026 00:15:32 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10b14cadbsm13997886eec.3.2026.03.23.00.15.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2026 00:15:31 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: [PATCH v2 0/5] phy: qcom: qmp-pcie: Add PCIe Gen5 8-lane
 bifurcation support for Glymur
Date: Mon, 23 Mar 2026 00:15:27 -0700
Message-Id: <20260323-glymur_gen5x8_phy_0323-v2-0-ce0fc07f0e52@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJDowGkC/x2MWwqAIBAArxL7nVBrL7pKhFRutlAWSmFEd0/6n
 IGZBzw5Jg9t8oCjiz3vNgKmCUzLYA0J1pEBM6wyiSjMem+nU4ZsGRp1LLeKWgqpy7EoUFZ5rSH
 Gh6OZwz/u+vf9AGpE931oAAAA
X-Change-ID: 20260322-glymur_gen5x8_phy_0323-3d5b4423617d
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1774250130; l=2842;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=61ZFZYnPKPd8FLwR4ye7hovbdEpgjUJh1k35p+MDMkU=;
 b=KkZ7rLhZr79BzD4FxmnR/UMUXo1EuSRdH5F3WzfxpQBXVfKd9V6gb/4cq7V64bXkY0jpkLRkX
 XnM4aKoeuFZDdSTIRouyHc9pR+L1A2WIoFPdmEkAHDMCFHqA5/AtHJt
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Authority-Analysis: v=2.4 cv=aJv9aL9m c=1 sm=1 tr=0 ts=69c0e895 cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=pO9I23orwyiV47DujX0A:9 a=QEXdDO2ut3YA:10
 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-GUID: 1fgHc8zl2U3h4csqFILmahNuLkXJfUXp
X-Proofpoint-ORIG-GUID: 1fgHc8zl2U3h4csqFILmahNuLkXJfUXp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIzMDA1MyBTYWx0ZWRfX08dv4dyEjxsP
 Df9kQhBpNUfzn6k7DQQzs9HJQcNZW4KQm1SP7TlGw7NlDLu5rhQAOVO59zcViN8JXYbSetkQIGF
 XyGwbR11twHAKlwCFmx3rhs3JqIKsN0AscGyoCgwQyp7P5bggmtTiewSl1E+DbfuZI6HFZyiXGF
 yefEnP71bOhJQQVAuKTafWzddJud5whbq1mXPNF+Vi8FLlwJ8H0qVSsdF2BR7CSdwq1y+7vq8AH
 Y0njYLs9EE6L1OmBciJJSI02uD2Yf+gjqZ4CGUwRx3/FHOiPcIHuk8hzPFOGypOKjLbIWbRhAZl
 W3nHBztrzQlPtjHKTSvM4u3Bj2PE11jEOrz8uTr6JX7t5kpbG/1mII5bt7wNAxtJ0G8pCdb/To7
 Uqa7qOUksqGAVPjHURcpQfNd8dE00Dz7WNc1M1lk/ccr5zT/5tNtvhtfdsQzzOjR/FNWh0E3Hht
 kZKZrgH4r+NDItlIqZg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-23_02,2026-03-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 priorityscore=1501 spamscore=0
 impostorscore=0 clxscore=1015 bulkscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603230053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_001536_545784_E1EC8F0E 
X-CRM114-Status: GOOD (  15.37  )
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

This patch series adds support for PCIe Gen5 8-lane bifurcation mode on
the Glymur SoC's third PCIe controller. In this configuration, pcie3a PHY
acts as leader and pcie3b PHY as follower to form a single 8-lane PCIe
Gen5 interface.

To support 8-lanes mode, this patch series add multiple power domain and
multi nocsr reset infrastructure as the hardware programming guide
specifies a strict initialization sequence for bifurcation mode that
requires coordinated multi-PHY resource management:

1. Turn on both pcie3a_phy_gdsc and pcie3b_phy_gdsc power domains
2. Assert both pcie3a and pcie3b nocsr resets, then deassert them together
3. Enable all pcie3a PHY clocks and pcie3b PHY aux clock (phy_b_aux)
4. Poll for PHY ready status

Changes Overview:

Patch 1: Updates dt-bindings to add qcom,glymur-qmp-gen5x8-pcie-phy
compatible string with proper validation rules for the unique clock
sequence and multiple power domains/resets required for bifurcation mode.

Patch 2: Extends the QMP PCIe driver to support multiple power domains
using devm_pm_domain_attach_list() and enables runtime PM for proper power
domain control during phy_power_on/phy_power_off operations.

Patch 3: Adds infrastructure for handling multiple nocsr resets by
introducing num_nocsr_resets and nocsr_reset_list fields to qmp_phy_cfg,
allowing the driver to manage arrays of nocsr resets using
reset_control_bulk APIs.

Patch 4: Implements the complete Gen5 8-lane configuration for Glymur by
adding the glymur_qmp_gen5x8_pciephy_cfg with proper reset lists, clock
configuration.

Patch 5: Add PCIe3a device tree node and required system resources in
glymur.dtsi. PCIe3a slot is not present on Glymur CRD, so there is no
changes to glymur-crd.dts.

Changes in v2:
- Remove pd_list from qmp_pcie struct as it is not used in phy driver.
- align clk-names on "
- Link to v1: https://lore.kernel.org/all/20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com/

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
Qiang Yu (5):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add support for glymur Gen5 x8 bifurcation mode
      phy: qcom: qmp-pcie: Add multiple power-domains support
      phy: qcom: qmp-pcie: Support multiple nocsr resets
      phy: qcom: qmp-pcie: Add Gen5 8-lanes mode for Glymur
      arch: arm64: dts: qcom: Add support for PCIe3a

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  45 ++-
 arch/arm64/boot/dts/qcom/glymur.dtsi               | 314 ++++++++++++++++++++-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 129 ++++++++-
 3 files changed, 468 insertions(+), 20 deletions(-)
---
base-commit: 785f0eb2f85decbe7c1ef9ae922931f0194ffc2e
change-id: 20260322-glymur_gen5x8_phy_0323-3d5b4423617d

Best regards,
-- 
Qiang Yu <qiang.yu@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
