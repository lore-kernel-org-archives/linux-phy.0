Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63AFAEB7EA5
	for <linux-phy@archiver.kernel.org>; Wed,  4 Mar 2026 08:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V41bsq+f2vGbi+14ejBHS5491N26E1XXuGbt1loJVLM=; b=eIgCD7cT2ng83d
	5s2RLtCygx0dSNng0X6JzC0bemRarIX2b6/e8unSYK9kyf6DAvCutAjE17YiJCGToVQtAE7xQ2w09
	W8gUECBWfBg96RZ64FHVHk1VbrljcukvmPlcIvkU6JdiOwvqGssV63j1KYmeSt7LRb78EtUZO+mUc
	okdredP5NlBhNZZwQImKN6sdp6/8eukOSE1bsvNyUljzhpw1I3ejKohyjP+3mYym21m+FzDK+Te+F
	tDhbf8js2x8F1/KXSu41nVmbwQJn0b3aFNdE0EPgnXOeOKxkzzeBSGN+Qa1OMjdU9mRgrKj2j0w4Z
	JghTDqFXqJ207KafR9Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxhUZ-0000000Gjac-3U9h;
	Wed, 04 Mar 2026 08:22:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxhUX-0000000GjZf-1ZTj
	for linux-phy@lists.infradead.org;
	Wed, 04 Mar 2026 08:22:02 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6245SPBd2861132
	for <linux-phy@lists.infradead.org>; Wed, 4 Mar 2026 08:21:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=V3r+Cv5485ydj9E8Fx9KDY
	de6r4vNbk5e+OFQXeeIXE=; b=o4Ei9OZrptfNPJ9+c+lC0wXhcJTRcI5vK1cbue
	3bZ5shFo0nWBPDkKV6kETOC9bcoqKYaWZKgs2ofAXPtcK7FH43GEs0tjZKV58K2i
	sE3hRTJvw19DexiHcpbrpw1v3vTzNWQlXFeVkkFcxorq6MI1yRGz2ULsKsJNnl+T
	4zaLnb3hYz/9Uj+3d0gvRvd6SHW2BMcIW5hfLYTn5C8lvBJD1wL0OcMBpqE7YG6o
	V4ePpW769aXyRXTADgw2kWEOJOZiFGLP6RQDN4pNLg85C/LbGWQCVbS7+MCzEP/n
	xwTe5sk08YvTzOzYSjQdM8h3n87xUoiN5REQoYDvykHUS+Vg==
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cp2c9k42p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 08:21:58 +0000 (GMT)
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-40f192cf4b6so7160962fac.1
        for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 00:21:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772612518; x=1773217318; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=V3r+Cv5485ydj9E8Fx9KDYde6r4vNbk5e+OFQXeeIXE=;
        b=i5FUkLxZPbfFhuuvpeVSOq270tzRnob2I6pLCE2bseZiHHW28zke94b8YGrJWqwfFA
         W0Kuy4fHk40X8d7c0fNIkotFa0iJ6Kg9Ycr1+1rdO2G0UEAYQsRmhnPpLLNV+09I+GyV
         GQyV7f5kuiu1CGLv4o8IQlocuFD/kZpiR0pNVqPY9SWn17Yi1MJ8jv548oLGJbHadwjw
         5hADC0oGIuv1O7QMDyWWUVWq7bKdOmdUxdlNGbwxFlDkCddN0vu+uJQDL7u1DxzNcBhp
         sS8v7GqohTytdD9lUNWQ+ExUsYo+gTs/je+cOuAViK+7kMp8Vq6/x7lw7lvKQFXENt3F
         PxMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772612518; x=1773217318;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V3r+Cv5485ydj9E8Fx9KDYde6r4vNbk5e+OFQXeeIXE=;
        b=fHnw3TZi3X6lBZ/taHKZlYV6oRX+YXYSX7q4v3hV4NxKBeF6r4wscLAwgcSXHWhnca
         lX2KGYR1+dSpFzBY4CUEfhWpSHinMaDxq+7LXMVbBW6jbJyf8daAiMXX3fy8PjauLjFf
         qIU0bONROEXu2iZFWyx31yISdDu4XQ2/OJBjKqhzjCp6LxO6rSAV9mkKMuO1hJpy7B2m
         26OPsWdE6YgQIuMk/eJkRXQWZF3coiSf9WUiy0gAEbSGs0PKMZ0DrLL8f7btvAblzPV0
         elD2Z4V3J1zpQNjLon+xR5CUa7Oqc7Af5y+DOAGJimoHcInu9otYppnttH5SrmXWUaaU
         wQvQ==
X-Forwarded-Encrypted: i=1; AJvYcCX39PeEb/1GExqB0J42lKWUlnAbsN8E/4YweI9AuzXgNDuoXe+sEN7EKO2KnGF1zUj+vGamZjGLjMU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzsT3/DcdYFA/t7a2x7soucb72mpZb8sLswuZH9FblbysZBhy6T
	dAAb3F9doQBY1T4shxBeJ+2HEROr7WQkglPhVI4nh6ogIu0iAltI64bAGb7qlTIyK0Ur77sxj20
	zMTG50NTu3B3i5b0HoES7SoEcTLpR2F/7LuwouuKE+bJuQuVfTeHiyVXAXwoQRTCbfelW
X-Gm-Gg: ATEYQzw0PslWtmVzEY44d13szIUEwQDTuv4qgZmYXnik71NjWVwUoA/cWCg1zSuyMdP
	fwA0jS2KQyxPv0VLgXPBtco+ke9U7fKhn/Lw90jFItA9zuocUbHp/CIsR7RraT/+3ksI4BzTEGh
	sJ2ld2Hc220e2/XmNuQCbvVMPwivESgei3YsWz915aa5rQ8WSE9rGkBT17V7VuqVTA612xoM3oq
	JOQ57DxCZcKpOVXpChaujjs7BHsrSf1lQOOSy8PnFXSCouBi2RbpfWWH7GuLxXzOU56zaOVLVtS
	YyhnYuVlSMw6t8F276qG6cmncwAJFTcR3XzKYHTx7p6RUcIPuZ4bDacpMzy14EL/jRjqjrvkmvQ
	xZzbGHDXMNcU18SCIfDV9ghIuEaQM1miKaBbNmepfgLs3cvTveruRLnt4575YGvwE0s2o
X-Received: by 2002:a05:6871:a981:b0:409:5fc2:7eb3 with SMTP id 586e51a60fabf-416aba63d1dmr664460fac.34.1772612518318;
        Wed, 04 Mar 2026 00:21:58 -0800 (PST)
X-Received: by 2002:a05:6871:a981:b0:409:5fc2:7eb3 with SMTP id 586e51a60fabf-416aba63d1dmr664449fac.34.1772612517951;
        Wed, 04 Mar 2026 00:21:57 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4160d26d9absm18006952fac.16.2026.03.04.00.21.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 00:21:57 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: [PATCH 0/5] phy: qcom: qmp-pcie: Add PCIe Gen5 8-lane bifurcation
 support for Glymur
Date: Wed, 04 Mar 2026 00:21:54 -0800
Message-Id: <20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKLrp2kC/x3MQQqAIBBA0avErBNMs6KrREjUZANlohRKdPek5
 Vv8/0BATxigLx7weFOg02ZUZQHzNlmDjJZsEFw0XHLJzJ6Oy2uDVsVOuy0xbFHWVb12UinInfO
 4Uvyfw/i+H6IvOGBjAAAA
X-Change-ID: 20260303-glymur_gen5x8_phy-e7e3414f8355
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772612516; l=2617;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=tAeFX5lUx3zHGnPBcDDuWMbJQ0LMMLSG9GejN6zNU08=;
 b=sFR/WpsXzFu2Te7khAtAWsDEWkf8JqGWZy4FYWoNF7S12iHMO5aXuTyQXMwHUQdas7Ri1REd4
 Dleu+C62WzyB1qkS9yRFAIxEk9k7PaCWYF87izEogCCcg75eoca8HAO
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDA2NCBTYWx0ZWRfX3gpYtzXFaTX6
 tQy+dvKvRxqQu8bVWbxc2hftPQuNy/9AsT3/Oow52N1Zvhw5qkWFJzMyj9gNzdKHZ4uRgO+T3qX
 lngdD34j4lwzoTXQmq8oOwtiyEAuUGT7Ibp9+9YzFkl+3tJflj3M1mSHUmIU4WIy7OwJqQ1uhX9
 JcJ4mwUhfvBRqWLCMuJhoq0arxG4qSHZcBYzHc2LHec0agDtg3MFRLNz+tLiFZ7wPw0EBzcyxMf
 10IIa0yrvTM7/I8IShwC5HYLTyuvL2HKpGr72Y8AqV4cVX+Kv2wrYJdfxMeBOeqe8KEi8zH7ysq
 E5SanKlYtyGzs7yKvtW/3r5QS8Dkg4WUPGL+5tw9B6Uv8qKBBv+SCTC7nwJZXOdx+jqIVfPjhYl
 o70eWyzHhGd+AIejyQwcVil/wsVT9C9LKhtShM9qJ+5feZQJaV0QhVoGbvUP5TWxZRw/+iOlPfU
 soxLzmdWkBuLw/oM2uQ==
X-Proofpoint-ORIG-GUID: oEzqISnd_0ICPIEUqvoD_yhSi1-7yCQH
X-Proofpoint-GUID: oEzqISnd_0ICPIEUqvoD_yhSi1-7yCQH
X-Authority-Analysis: v=2.4 cv=EefFgfmC c=1 sm=1 tr=0 ts=69a7eba7 cx=c_pps
 a=CWtnpBpaoqyeOyNyJ5EW7Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=pO9I23orwyiV47DujX0A:9 a=QEXdDO2ut3YA:10
 a=vh23qwtRXIYOdz9xvnmn:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_04,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 impostorscore=0
 phishscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603040064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_002201_536895_90968557 
X-CRM114-Status: GOOD (  13.34  )
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
3. Enable all pcie3a PHY clocks and pcie3b PHY aux clock (bifur_aux)
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
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 130 ++++++++-
 3 files changed, 469 insertions(+), 20 deletions(-)
---
base-commit: c025f6cf4209e1542ec2afebe49f42bbaf1a5c7b
change-id: 20260303-glymur_gen5x8_phy-e7e3414f8355

Best regards,
-- 
Qiang Yu <qiang.yu@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
