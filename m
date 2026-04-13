Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7ED8AEBFD01
	for <linux-phy@archiver.kernel.org>; Mon, 13 Apr 2026 06:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zHAsIKpY6sMPSwCVepJtoo0EqrDjI3LQohKix9lOdAY=; b=aYqPKs23VHNpkU
	fm7jq8d/3SBfXwB36anHH1bP5W2G2oVVp30/YU84kYKLHStDZ4qDUncx3iMqNx2ZSlw3XcOiePHsr
	mH7dCn/lnisxWx1/ah0UOrZVjbkEz3SnAK2JhYP1W2WXlBVouFzE8TdPV9ee2ieHVlPVg747+Eb2n
	+4tAu8BHggmxRwCUM7swyegSYrTyUX9Q2/MxG47mufj2UdqOwm6zAWIIwAQcduniZ0Ac+QBwpEh/V
	BPrx91kUjGTHqYnHyxSvcND46BHrS7qQI2XPk8eO+auCRmRFYV01sG2fokSPTiBMM7zyGBzWKiNT7
	xKeWCmT6zuKbM2P7w/IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCAka-0000000F4lo-0BE2;
	Mon, 13 Apr 2026 06:26:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCAkX-0000000F4kC-29Tq
	for linux-phy@lists.infradead.org;
	Mon, 13 Apr 2026 06:26:22 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63CJ06Hw2229829
	for <linux-phy@lists.infradead.org>; Mon, 13 Apr 2026 06:26:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=AWGCmR8aJAExtEtpb9rmjD
	wl/rMkwNi772UTCaZg3p0=; b=NwrRp50v+ssZCi01RvcEQ8aWl7J+ZQ++xtbBzD
	I9j+zqMVB9WqMKG1hBvgnZyXOsKbsJygGJodgFTY+yL8ALYDBg8YlQ4ww6NqZl5e
	GzceiQvZzisabjbprH0F1R6G9QOxYk1/rY7veS89qGYSe3ltK+bSl6qGdkKYILPS
	ZQs3nbqv4/cFwp4VrlgU6L2f0r8fNsL7ylk9/HhH1tWcDIxYR8Wc6jubw7VYh4LU
	d5o2lWyL0VndwnVyJ7PIR8q8uRgYxHsCpH1O9XV46u2kpw9vRJLhje5101ItNmYG
	dUGOPeDgWZfcnlpDgOiHYLTl8sK99pYDZiHc6NRuNTZt/pSw==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dffk6m1au-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 13 Apr 2026 06:26:19 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2cc75e79b97so14519922eec.1
        for <linux-phy@lists.infradead.org>; Sun, 12 Apr 2026 23:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776061579; x=1776666379; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AWGCmR8aJAExtEtpb9rmjDwl/rMkwNi772UTCaZg3p0=;
        b=Hv7N9MHLbCSlau8Mpa8ahhM2xtfHzqIkZL73yATF6ojMXz+hAKsNErLQXVEqYW6+t1
         W/xrjzyH+MrUbJ3JOkXQEVzoMt/jbi5bYaI/k6c2FfXKSADpw9oG9afAFO5j0nHZUXAF
         UgMAgVv7n5v4jAEKCqTbVSkew20x4vkCTgCxTJiByZaeB/8f+ThjMJulKfjjfBLCPYvW
         8ufDIpMzt9JLKNzvI7cmsj04d8umjk0Y1hsIWhLxKA5KgCYbHTz8xJhU/BVSV1MRgpBU
         OjZHXRA2U6vPuCaVMBODvXcqbyinfmAuaQsDNryzJVFtXLWa61Sq2KY9GLA/nGYylkES
         8Hlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776061579; x=1776666379;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AWGCmR8aJAExtEtpb9rmjDwl/rMkwNi772UTCaZg3p0=;
        b=BYairZvrQ87gzjVYygYaa+vb2Yo7CT8071suL/6Xg1eVCnOSCYYb7UKLBhpUWTaegJ
         QqancixD7uiEOFJg8gTwHtM30JY8+bCVSSFPEIngKxUxv1rzvu4Z4cukOHII6t5coyj5
         tvwCVgKA+bJDHz3rydFAyMD6ukSuocKQaUjzlNPuwlIS0nFRKZSRqq5Cw2CQJrdEwu8w
         Fzb3cRRlMDS9cfw5FM7FqAqzoFz4ELtYDKxsAgeRgzwW0TcaC0UIfDZXYfyEfUxRy2CS
         kU6RkNf2LlG7TM+gem1ZHbpnESdpmQuWfouaRQdQ1xs8gyLIOoKaFSHjy4EUN9nrQzVq
         lZ5Q==
X-Forwarded-Encrypted: i=1; AFNElJ9Zgetak/uDsoY13RGRD2pFTyHnN7JV4BxskvBiLVwGSnDPofDbFzUhk7T1Q2LyGfx4fWPHm0bSzyI=@lists.infradead.org
X-Gm-Message-State: AOJu0YyVE/9xnPjbN4M3l/mrmdnCtO4IE4U2uFP4dP3Z0oTK5F58R+rW
	akTn6KUZtd1XI91pyHjY+8DVDOAapFlOpVr1ZdBUk61cda3fLMZ51p8kFNN4nvqvQsslLVHNHpV
	QxRvCBzzjGvyzK1qjA3m3sWxUk6WVQEwEpzBv3ERLAwk0KQMCiDONh2CMxfbl9b1fSeG0
X-Gm-Gg: AeBDievrwvDBXHp/KSbe1j9/ItftudwUjlxSTC/D1iUwXryuHmo3O2gRjML01wlA3Jv
	Z2bINqukfkfW37B2BPHUvz/c3EoO0U0L9kCiOOXht0jXlEOkvoqxr9g82ElTkIekqx2nk8s/2lT
	eIkMiRtVEtPapFephlYsNM5pNXm68EtzLNDxd10XQ593HeRm92IziQSFawmgzGLRJZpJ+B4zOlP
	8MnvQQib9hUN8ST3zmygpwWzgBin6TDS1KcLoLU6+IOcK1ptTD74YAYRxVQnYExg/11cUKLz8Ss
	Qz95Wm8zzAIyHfqfb1QxYjjxalRM8NYKugDMvq0MZmwkkLQ3o8A8xQ5NnuTNvb6u81c9QO1aBLk
	D6z88AcowQobogLBTx7cKvMeuAPWDS0tPDJxHgSLYmE7gz8dXsQZI8BWI/5WULG3BGOzh
X-Received: by 2002:a05:7300:8607:b0:2d4:afb3:7aeb with SMTP id 5a478bee46e88-2d58a19749amr5883494eec.27.1776061579135;
        Sun, 12 Apr 2026 23:26:19 -0700 (PDT)
X-Received: by 2002:a05:7300:8607:b0:2d4:afb3:7aeb with SMTP id 5a478bee46e88-2d58a19749amr5883476eec.27.1776061578573;
        Sun, 12 Apr 2026 23:26:18 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2d561cd3138sm15260935eec.14.2026.04.12.23.26.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Apr 2026 23:26:18 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: [PATCH v3 0/5] phy: qcom: qmp-pcie: Add PCIe Gen5 8-lane
 bifurcation support for Glymur
Date: Sun, 12 Apr 2026 23:25:55 -0700
Message-Id: <20260412-glymur_gen5x8_phy_0413-v3-0-affcebc16b8b@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAHSM3GkC/x2MWwqAIBAArxL7nVBu76tESORmC2WhFEZ096TPG
 Zh5wJNj8tAlDzi62PNuI2CawLSM1pBgHRlkJqusyKUw672dThmyZWjUsdwqahS11ohTW6Iea4j
 x4Wjm8I/74X0/2QFFm2gAAAA=
X-Change-ID: 20260412-glymur_gen5x8_phy_0413-7dd33c953da7
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776061577; l=3157;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=Bp5Zz9OAjaPM/NWNLYQwMkODCFblbcKCNjR4M7lIWIw=;
 b=GrDMInn2G/ze720Ld5pMb115eVq4lhJxVmCJqWG/qScsXUB7uOYNRTdpM3yFhWzwONT9Ui7hU
 VHWIWSHkAn8AjzrJjH1sbMUBwcpjFGi0ZHkDTXhFEZ5AOF+PUGjTStq
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDEzMDA2MCBTYWx0ZWRfX0PC/MR4jFnXP
 JPVc9hhvS9RLXlBVXudBs8avyx/hMl3Kznpq0WVulGgBY0X46ypS0LnoaiYR3qzXWUEgxM3j+/m
 VXQE7JWO1PqSS8HlpDKPJQhbB8N7/Q8n5X0hNhlqzW2a9t4o9mpzWHkSXLizw14CTEMw69kiQd7
 KhOsHr+VVBtCpULMEpjy+VLaGhlRkGlIeatyhlkC08de8NBn8db7AOwryTYV0chd/ZHAaDX8xns
 MQt8Abm0ykiKejCdWIne4XTzi9IjyZabEjYXSlPLzL7gfbXJCAbF9Z9/fZ/Ouw/c4o1ZofuAKtI
 P8oraZg1UO0vxHzrszS1P1+fupQ8tKUn2D//Lb1QMfi7WZUiQUUle7AlBhaE/IUZWIEOVmoF0On
 7BMC4ko//RngUDeUAuNNXjLH0LrXvUzOw3Av1im8RhlBIxZ0YSHASWILyn+5PC2rPTcbT0dyHeI
 g/Py0KE+gkRpzIVQ1+g==
X-Authority-Analysis: v=2.4 cv=YM2vDxGx c=1 sm=1 tr=0 ts=69dc8c8b cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=eou8XWEe3vdVWCyqOSsA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-GUID: b9bTDOBNrOjgalculGRSdZb7QqwkywZY
X-Proofpoint-ORIG-GUID: b9bTDOBNrOjgalculGRSdZb7QqwkywZY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-13_02,2026-04-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 impostorscore=0 suspectscore=0 phishscore=0
 bulkscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604010000 definitions=main-2604130060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260412_232621_589521_17A921CE 
X-CRM114-Status: GOOD (  15.03  )
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

Changes in v3:
- Add description of each power-domain.
- Add 64bit prefetchable memory range required by some EPs eg. AI100 ultra.
- Move PCIe3a after PCIe3b and move PCIe3a PHY before PCIe3b PHY.
- Link to v2: https://lore.kernel.org/all/20260323-glymur_gen5x8_phy_0323-v2-0-ce0fc07f0e52@oss.qualcomm.com/

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

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  53 +++-
 arch/arm64/boot/dts/qcom/glymur.dtsi               | 316 ++++++++++++++++++++-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 129 ++++++++-
 3 files changed, 478 insertions(+), 20 deletions(-)
---
base-commit: 66672af7a095d89f082c5327f3b15bc2f93d558e
change-id: 20260412-glymur_gen5x8_phy_0413-7dd33c953da7

Best regards,
-- 
Qiang Yu <qiang.yu@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
