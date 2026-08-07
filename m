Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E568C5AC7A
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 09:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TD2CzN3kmokfxdChguWx9Vo/jDLkrqcbxRC+KMkhfp4=; b=N2s8FB3DvUwbvu
	bS9P4hVmkDd9w4+EXdDj2OafLav9lyn0n1zV/B5e89KxxUDEntVLoKBbeUQm81dEWiBo4M+Lx4FPZ
	EUe2mILy6SOstvw+Bj0BEuEUId9lhRskX23V8RRTh7q35sg6Lks/GU6BgUQDGqAhdrr4ttK5CPMr3
	uJ7lhIway6s/r5gYzAV/UOi992Irt+swZDXbsEf/+JwtAtvNc7XAoYKfw5u75M7j3suF+Nn4YAGTD
	jWBHy8kO7wAI8Zcj3sT9wdWSYaFkelikqyhgpI0ZdON+uRyGPQUHxK5nKlHGREIP/tp5AIJfzXOKv
	ZgxUYbogi8DGCpBwapWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsHEc-00000007YVG-3QoA;
	Fri, 07 Aug 2026 09:51:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsHEZ-00000007YTb-0cOk
	for linux-phy@lists.infradead.org;
	Fri, 07 Aug 2026 09:51:25 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6776C1WO3576091
	for <linux-phy@lists.infradead.org>; Fri, 7 Aug 2026 09:51:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=2KjfQByVGMlCxNzQZQ4Op5
	9mLqA2oFBeQLC5znzLbzU=; b=ICmWro6wE6OXhSQxIZE6k/JNm/1mU9jeaHq3DZ
	oWiMj6z0bpGpuMbX7QVPAN6snXMxw2/RDbIbT7dvuXqai//bp8X4widpLLesquym
	5+H7SCyPFydPzqPsrU/k273iyUrtPaLg53wlPw+ow3xh3nQayDUTv0+zalmTYNm5
	jRWBSh9+T49z7gQFH9QkGqFc6M1eXoIvdeSx372+MG/XPdAn0w/TaRp3rmghQ6Dy
	+5eExIQao5Bj11jLfpwprhj+joqx56m7WSUpvdpr9SmiWPP3mARlh2sYdZ//9Ywp
	ai2jUwmFE9Ao3h/qyfMXwQ+wV5IKiMT+dZhWsgP1YcXWUr2Q==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fw9vu0t9f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 07 Aug 2026 09:51:21 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-84a251c2e3eso2427440b3a.1
        for <linux-phy@lists.infradead.org>; Fri, 07 Aug 2026 02:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786096281; x=1786701081; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=2KjfQByVGMlCxNzQZQ4Op59mLqA2oFBeQLC5znzLbzU=;
        b=bBeZzIZtyKd7N0UtYAno16CjTgjp+phlVNWtaOiU5YKVOlYYmTLDxCLsW6P0f75gMT
         qxb/FdPXY+blEIb9cTIZ2i8HxPNPFDntfj9okg6dgAhYGq6GDOnpNxaEySXTlMvk9MTf
         IiQ0zqF6OIV6qr/Fm4LmczwRw+/Zx58jSVIpPDyNj6A7lNUIcGaBcR1XoCxAWR/UiIhs
         yeAUAXKQtBCaFgCdOS6YL1wSfnKFHknMoObza6HvNXZF828/3NYpAic2bi8fRzJyei+7
         92NBMFclJ6Jn7NzErw3FLaFRVFgsQx5E0vRqzwuniLMATIoKDjgSXyusoGlQ58xEA4Pd
         zy+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786096281; x=1786701081;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=2KjfQByVGMlCxNzQZQ4Op59mLqA2oFBeQLC5znzLbzU=;
        b=qWr2S8RMZwAwxDKnKyFyvcIXUqEgiMfYYdg9pkWGINm9KfZTlP/DljPmrwsjDO+mGD
         pdGDITCC5MQZrzW+R4HzIZ4Iu08GKLCNjOGXAnoQ5AJczrVfwFrqMVm+JM/9ZPkTwkUE
         zL0JwEXqDi6CdrPVCYxlFHDwDByLoa99TfmTF17N26d8ajbCuj/kQQtw3MeNMzrPXgGZ
         togZFsLiSKuwoSeo2O37k2MFlAnN3FM8cwDOzcTIlEqzx87x1jIP87MpCjRq2av54FNR
         5alzaCYInwGPbWuQIRO7vErseN600HsyifdaPKxnrfP7EFWZrUyQaPMNZGHu6oI2XUPF
         oD+Q==
X-Forwarded-Encrypted: i=1; AHgh+RrMnL5ktz2RYhAzCEsmLeHa0VQAIJ1y5kW0WVCzmxqoD1WeEBdgJcHFDUOk7GL5w9+p4CaGOQ8b2S4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxRQ+0vYg9Af2YiFUL6VH7HHeZbbaQ7pXjNOI9ahZQN9OULYcW4
	SwuWktFs12GmxWujRtZsNH4gDnwnsbZqZPoG+Dkry7+rqoTXOWuHwt8S05ekIdO0Cb1fcVlc6R9
	MnNLfyCxp7X++k3Z1bNW8glxF5jdNrrI7fAwdb7RmmyMa50YEpAYCnHDvGHBsGNTANLKy
X-Gm-Gg: AR+sD10UU2cmyySfsMsT00ikb6rR7KCwtUobJTRM+vMrA1F8kUXi5/dBSd2lzm5RJ/K
	fYV34Wg4YqMoVyOBk+JGYYKURO2q5sqBFqj/hLwA2y16yQehjTr+8u3v2+medMuEOqxSOTfTskR
	jehVxPangrBuVLjajQW5NRqBRuVyQCc23J9kAPVwVIHjM+DzkV4pq2oZYmsPT2kPTGP8cS9JVr0
	AXu3KqZC7VJt8vjJdFzkhjCqp1hA4cfBgkhqTqN+tv/w4LFfTFiM1jQf1okNqG/vTzs9xxh3lw/
	4/lEWoJX+isHGRvutxd3VxXDWzSq5UbFlM2rcafEWQAkObjYQxJJ5y3zMFOjtjkgU5IPfbcQjlL
	5fAprUajEDQEm2qxvOHfBbGEeZayAvUMBqXHA3XTbkOGQNRs=
X-Received: by 2002:a05:6a00:4485:b0:848:52bf:4296 with SMTP id d2e1a72fcca58-84f41e3ade7mr15838816b3a.15.1786096280763;
        Fri, 07 Aug 2026 02:51:20 -0700 (PDT)
X-Received: by 2002:a05:6a00:4485:b0:848:52bf:4296 with SMTP id d2e1a72fcca58-84f41e3ade7mr15838766b3a.15.1786096280234;
        Fri, 07 Aug 2026 02:51:20 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84f5a3cad9dsm743785b3a.23.2026.08.07.02.51.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Aug 2026 02:51:19 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: [PATCH v9 0/6] Add QMP PCIe Multi-PHY support
Date: Fri, 07 Aug 2026 02:51:09 -0700
Message-Id: <20260807-glymur_linkmode_0807-v9-0-dd1c7e236e29@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAI2qdWoC/yXM7QpAMBTG8VvR+UxtK4ZbkcQcHC+jDZHcu+Hj7
 6nnf4FFQ2gh9S4wuJOlWTskvgeqK3WLAdXOIJiIWMxk0I7ntJliJD1Mc43FN0ohq5CLiPOSg7s
 uBhs6vmyW/7Zb1aNa3xbc9wNkoVhAeAAAAA==
X-Change-ID: 20260807-glymur_linkmode_0807-727b512611a1
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786096278; l=7505;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=fRskgt/l1zaOaCfvGYuKNUzaILMzSpnTzlyDqSFgiP8=;
 b=yQfXVxmRqNN2Y2xwloF2df3ORdRYyw9biWggiVlF4jPLvZEHoqQlQmHyqCknPr8XneO4k/XuZ
 KruLy9sR9ZhAnHzsIzjXO5FmickY6DMnqpgdSy6DynnnZC3mHzBdCL3
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-ORIG-GUID: lkbRk8GZr8Xb4ZnR_H8cU_KvuWcDzbNw
X-Authority-Analysis: v=2.4 cv=SYbHsPRu c=1 sm=1 tr=0 ts=6a75aa99 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=JfrnYn6hAAAA:8
 a=qMU6Vhuv4BxmAn6ANj0A:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
 a=cvBusfyB2V15izCimMoJ:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwODA3MDA3NCBTYWx0ZWRfX8ErETIsaj+KE
 eRCsaKyziOJlNm2dNgiAnTbCLPpKmQkZoAte6dicpyLmM/TWGTewmWoBq9XpbQ6DSZwYrDfqTH1
 d5lj/CHuGIDCdSacRkjBQfymz8uW0pQ=
X-Proofpoint-GUID: lkbRk8GZr8Xb4ZnR_H8cU_KvuWcDzbNw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODA3MDA3NCBTYWx0ZWRfXyo5tfhlaFwgG
 UlSRO+g6ElkAAsdl1H7yMkQ5plqv+QMXZaF4VpVj+lHQK5t64WE1WqmBSZJg2deNP1E2KntiXpa
 dYXMhLHbAZg92G5T+wAdqXrMXG27Mymz5f1mmnz+ViEh1MKCsfQsVgTDTJ+K58+pZSXSdkk1Lmy
 DyO21EesVp/tn1qcxbptPrnQq6/vesvNexu1ZLuuOsnOAi/YNxOxb4vv62i7bBhGp+eKwTrwsah
 5vevsnP2pQxMDDsUAHabzRNH2+59PYRIN/52Kz/8c3TeGvxJfs7doCpNTJNcBfKZuFS2ea/DEmo
 /AA2FAALonQtLZZ8yLK671cCGnNwe2s9nPJ6+GGlRWU/X7/EyheYq4SeIzNDcEk+npNuI8ral3d
 h6D4+44GiOuQLgAwmc5dK8xENOCIVkGnpbrCuDV7tQty7T5mHv7zZsC64uaD3ItfBKUCrYgHZ2V
 QJ40EDMirjpAO2ETf0g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-07_01,2026-08-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0 spamscore=0
 impostorscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608070074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260807_025123_202294_122F48B9 
X-CRM114-Status: GOOD (  24.75  )
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
Changes in v9:
- Drop the redundant default PHY_QCOM_QMP and fix minor style nits in the driver (Vinod).
- Add reviewed-by tag.
- Link to v8: https://lore.kernel.org/all/20260730-glymur_linkmode_0731-v8-0-a455265ad8bf@oss.qualcomm.com/

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
 drivers/phy/qualcomm/Kconfig                       |  10 +
 drivers/phy/qualcomm/Makefile                      |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c  | 743 +++++++++++++++++++++
 8 files changed, 1367 insertions(+), 2 deletions(-)
---
base-commit: ea2bff00da89d7767d677bb68470130ba96f4928
change-id: 20260807-glymur_linkmode_0807-727b512611a1

Best regards,
--  
Qiang Yu <qiang.yu@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
