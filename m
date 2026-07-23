Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02CDDC531C7
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 02:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ao2Gldk//qDcVbsrsW4UzLOdqPOuPwiHUS6Pa13Vw9E=; b=EHFPhaBe9hGLcg
	y5s/UnJl697VYdDI6jCj3GYHLxrmB7YrFzQyevJxzcy3yv79J0M10mT2jLCIwhbMdqqWzkIemfrzq
	ZH/8/WPdVssFDE3jA8Qtj9fkKNwgxefQYwPtovozcSkw54/9FmysYVUqtwsUD9IOOIXcQQxHPSSF2
	7NPk1yx/xEmRmyAI/kje4ZD82p6ysd1Un0/HTWW+P+I9bmapRueyaey7+RmqZwxAD7l1aHj5lpSFd
	IM4S8Hp12wNS/kw7IhQA34IQrGySED7+npWCe3ww0gUBj0hDSaJABWn+tDXpkLbi+8b+zO47aDp8t
	rFpWh/tmyrEv6G6ffJEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmjCi-0000000DEOA-2GZA;
	Thu, 23 Jul 2026 02:30:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmjCf-0000000DEMn-2Xrg
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 02:30:31 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66N0WmI42260448
	for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 02:30:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=98tf0dCqp65nOsv/3S7N0g
	1huf5+tZYpLNny3aMccSI=; b=jc0I0oWSJzOP69IroWmKAcyNwKn+gPaZiFKzn+
	0vb+V2dUPHUjSQeOYw/IE6DHj3AfqQ4C81OfbOtne4Zs+nzPa5ipgmhJ9yddI/c/
	m3PsvBeq7LYVxhft/oGr3SuetgAA5h05fJkaV1CLjHBd9X4Uv+GN1NZtfdPYJUIw
	bH87DXZ5vxUVcUeDEHoW+qzf2QWEou2eC6PXf5qxPhIupZt62v3tpqF8ZjQPuKzm
	/6NFWsf1ckhowD6ihHQohLYl9xJNjlAIrzVWBBua8ZKTRAU0ygPsIZwQPpExcWlO
	saRnXiU2VPEgG07KFE/Ik59P9pLLQn3cObzhipDE3//5Q5bQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fk275htu9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 02:30:27 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-cb7d6ba548eso316329a12.1
        for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 19:30:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784773827; x=1785378627; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=98tf0dCqp65nOsv/3S7N0g1huf5+tZYpLNny3aMccSI=;
        b=cz4qTWEXEvSP6xd33PkFuS19Mu20SWvPgIoDLCrRmd23mSb0xAjPKlkNv2jB3F3Rf0
         iiRIPlER4m08Y3nJBpx7woowLpddeyHLOecMvgZgyVy+A865Cb8pArszIvNBFnlGNO9u
         7+9ZEx6P8dac8s++HSkRXhB/KwmohtF0HkjwFsQrsNleo+r+jIav584Lxn1ELX/j03mM
         XQAcS8Hr/UD6xwiS1ecXxd9Ath1+tZYLW+QhtkVFhpmBdnrMPXR4//e8Jhi2vHsIRhlU
         VCsict7xhcKzN8o8iS+5nZBcGwqn4IwdaupnrsWD7nk9GEwKVipeDsq8jIxP9LHXaLsI
         Sjeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784773827; x=1785378627;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=98tf0dCqp65nOsv/3S7N0g1huf5+tZYpLNny3aMccSI=;
        b=oqVn6/6ZNgqdN4MxOKTK8pxZ7reUUwqe45wrln69seAWRS34BuwXV80N71iBlQyqcR
         Mv/2plY/TDzaPJHVgB42pZHF+H91xdm6LvMQvsRwtpW1280gBSeORGz1x6b6GyopDtP5
         fdWgVZNHstuQTcGQBEzDy3Wlu/iZrRRHDe/uAF7Evv1loBfCO7Znq0gftx4NVFCyy7xW
         DKTjRxbB2tW5FztaBeOM1+bx5l+nCNzLXzmlEsSmi6kQZh1GWDFuw4joJuhesqLK6GY6
         kP0hQTnfYevRTdvOUwN485efe8qyr9W5M5QSkz/0zcVlUP/q9D4N5lfyZ1PEgis7rpxS
         65DQ==
X-Forwarded-Encrypted: i=1; AHgh+RonMzQQdGza/7e5ZoxdZMc9V93LKSLid6NXXwbpVb64kvEvH7enAk9nNlYR0axkTcCkzSbmOc2eZ6E=@lists.infradead.org
X-Gm-Message-State: AOJu0YzTX73zB8oN1XfR9vPIPKZTW5NAgCFdh1Hb+r/rED4LCUoGJQJW
	nvg+JVk7GCdRkiK9kX4BE0+8yFISOFo8YRroWtaIwrxQhx2Ydg3WhgMTX3CeGWpghMoRAvbSwnW
	2WIey4iFxkj9ss/NBOZOQ978D2bcS/nCqBY06oiAYy+avE+CDBidzAR4YZqR7UAcK7lZG
X-Gm-Gg: AR+sD13P1Na/9EsketIiGelH4U8bAIZqhhTqmNjII4RSo16Q1D1m4Cb4uxmU6D+dP8W
	qErRE/2haA4RGkOatP0CiwDAHGG3skIcwJsGTPNOcRdRcBfzk7CNVVWz48juKEfyKXBmoi8i6HO
	2bcXmxNWUjbYPxHLAQvhg2SKHFVGhxvdMhs0LMujcRFAAnY5GKX08WrqrV6UXJHKv9B0C0m+u3J
	Ggr3OkncfliWO0nEwfMSXEMa+rZv2BZh5D+LbadVTbMZQXBA5w3EenHUHkO+XIfvLdgQXQsUEHo
	NSsV9DT2zOGPnthg+R/mm6/DsuUCwvxncqmWJ+BsXVPzZpFSOG4rPzmh6rhnyLPumRh18Lmw6kc
	lDYUY9j4SVseKvAxKLmKpCi3KE9o3J2bKH6cTW5RgXpCDgjk=
X-Received: by 2002:a05:6a21:648b:b0:3bf:b8d8:8296 with SMTP id adf61e73a8af0-3c44b036be5mr1269358637.26.1784773827145;
        Wed, 22 Jul 2026 19:30:27 -0700 (PDT)
X-Received: by 2002:a05:6a21:648b:b0:3bf:b8d8:8296 with SMTP id adf61e73a8af0-3c44b036be5mr1269314637.26.1784773826671;
        Wed, 22 Jul 2026 19:30:26 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3147d47960dsm13463980eec.0.2026.07.22.19.30.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 19:30:26 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: [PATCH v6 0/6] Add QMP PCIe multiple link-mode PHY support
Date: Wed, 22 Jul 2026 19:30:17 -0700
Message-Id: <20260722-glymur_linkmode_0722-v6-0-bba8156b8cbb@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALl8YWoC/yXM7QpAMBTG8VvR+WzFFHErkmY7OF5Gm4nk3g0ff
 089/wssGkILRXCBwZ0sLdojDQOQvdAdMlLewCOeRhmPWTedszP1RHqcF4W1HzlrEiExE6rNRQL
 +uhps6fiyZfXbumZAub0tuO8HvxIBFngAAAA=
X-Change-ID: 20260721-glymur_linkmode_0722-b3ace7adf9a3
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784773825; l=6079;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=TzS/OOYCD9bYLpWMgzGUjF1iZcCC5qRz851zJ+yHV5w=;
 b=0sxlCLog1ylHipEKxJC912x8ktPawEl5YoIq7q9FmJukIC5cwnncs4vRUT4CfceVha2Vg+sEw
 yq9G0vIp7gRDZrYkBMhOJQxBrmL8A7tLno+2gmmTJBy3BUyDfYXUgRT
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Authority-Analysis: v=2.4 cv=Q53iJY2a c=1 sm=1 tr=0 ts=6a617cc3 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=JfrnYn6hAAAA:8
 a=C0CYtJtBmlbejHvflVYA:9 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
 a=cvBusfyB2V15izCimMoJ:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIzMDAyMiBTYWx0ZWRfX63EzgwzMw6pZ
 /Vm7xPB/DCcwzwih7KakXlXQVUCrKNxSMmjLvcwo/5xrvjT0AfMQ8sEK2W8VUXfsaxJAzKdXjWn
 CKHrxvw6vKUV4li4FyS21h57Tu/E2aY=
X-Proofpoint-GUID: 8qIzif_uryH0tP-7Gq5VBF1WcflKKZQI
X-Proofpoint-ORIG-GUID: 8qIzif_uryH0tP-7Gq5VBF1WcflKKZQI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIzMDAyMiBTYWx0ZWRfX5dUfLEqbM6Tt
 NXLNlqnOb7X5qd22xfobnu6gfOG7r3xD91mGGuTY4vVTHMBA7LlJ5aLmvXVG7alUdnE3iY0b/9t
 V2AFRelA2Q21ZvaFpC2W8EwPT2/bQRht31fpZUgIxis9o4OPH3CpCcEOyqwHdUrtEeuj9dd3l/k
 TS8JoFMYuz0bQTArbPLvDGc5amOJ99t7p5e+TQEyr73/d9f2hm9xzAMu5ySvw8MUyVFwfFG/oum
 UKTtiV0JHiAycU1nPg70ZlakLYFpzCAzyatQYYHzeRb9mt0JFV4NpO3O4aGgJIQmTlgdPsugRWL
 5cYeVaQIyo9djy6quPZbDOH8afmDsGJo/3Ws86e1tCfpqaukWcRnOW3V3GBzKNkyQITeYOXPpCp
 Msbqh636nhEOHahOsmq3CxYM4Ut/t/ZuaqirQ8kf41rDOQKiue0ot8cyF7eyDmcCjciJL5kO1SL
 h0yWrnD/13E9Sp/4xrw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-23_01,2026-07-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 priorityscore=1501 adultscore=0 bulkscore=0
 clxscore=1015 lowpriorityscore=0 phishscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607230022
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_193029_670236_A13B4CD3 
X-CRM114-Status: GOOD (  22.45  )
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
      arm64: dts: qcom: glymur: Wire PCIe3a/3b to shared Gen5x8 PHY
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
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c  | 770 +++++++++++++++++++++
 8 files changed, 1395 insertions(+), 2 deletions(-)
---
base-commit: 290aaf24a551d5a0dce037e3fab30820f9113a10
change-id: 20260721-glymur_linkmode_0722-b3ace7adf9a3

Best regards,
--  
Qiang Yu <qiang.yu@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
