Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F34AFC4453D
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 02:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7dPt8H37uCFTdkAipDqQh7CE2kWSgF85RprxuO6VV8I=; b=Q0xc349TjxWV4z
	40H5x1QLopGZihqnNEwUD5j+IUg/r5pBcylAoGrHcMvVPR4dIjgbc80Mn2bU/GPcIXhrZlv0MkPnC
	oAcigB892A1iXKuobpRuEmQn+5NFZ1Rkk189fzTleuCBpophR3Yb/vEZeS2HFOrAMADf2T6ivbslT
	6awj0KycojkHHUcd5OC3OmRCVAAIhod9FfJKywDjqYidg+Wh/5i3WZUPtOalRBSXRfqsW1rBI9ifc
	P+wPkYkotHfMVUgzxYV9ZdJBjvQVx6oHKapnJsXdkjZR6f3k5TbGq4SnPJLLKc26QIkRiI9iOUVt9
	55MYWsSZwJasVz4dbB1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmjCi-0000000DEOE-2RVV;
	Thu, 23 Jul 2026 02:30:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmjCf-0000000DEMs-3Piw
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 02:30:31 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66N0WkGc2260349
	for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 02:30:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Gg+QryruY/7NPTM87J9rF7S09woVaBLgs3RtEBjtwlw=; b=ms89n2rdNeuQNbgZ
	IQfe8k5SEs3SZf9vZC3HiVcNUgG6SNm1p8Of6ly8+uCxzFSh9SQVWE89btH2gjTU
	LmtcT+jwZVqfACaQaTYdi3aSpSg5wna9uW+5jMECojZWmYmVXpvzlKQYp52zX5kM
	UrtkVmrvjbryUCocThlAAmUqgFpbTy9IbD2Qz6cwGQ3WPLQkg1I0/15CaT6uD8ZQ
	aYFVJI5taA6PuWMDbnE5u/SNcVny72vMjA04q0E/0FWEdhbPhDZh2ssGTGgb8M1D
	9C6JbSGlaI/ztiUq3DVt+piiTFl+B/Dm2zmNFOOdDporjltRBGeftq7YLjDRpaH1
	MQpzUQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fk275htuk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 02:30:29 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-cb711c88f2eso163110a12.2
        for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 19:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784773828; x=1785378628; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Gg+QryruY/7NPTM87J9rF7S09woVaBLgs3RtEBjtwlw=;
        b=Fj+NY009laxc35EmLvkS+ZFvx9LZYxHY6FQP7WpdKyNVxilyV03xWLn1EgG8DmspVP
         AFPEsqKeNX/ft6oiCFlY/H/ObFJAozPoqxdF0PBBBy8aCrrhly6tba9TlTY1snEiaAXE
         Am6o+dgS1VmD8NTABxs4WJpWn7EeBaRNMrv9G+ybxvIjThHz2Mhnmgh6MITe3TPsvR4q
         QwFmGaUssNr1QJNofGRdu2Yxpn4i0lOtTu1fyez1w5jj8GB6B4rx2PGQj9omWA3g9lhd
         r549cq6/5UVYmL9wds9U5pFAQqkjye62Irf8jWQdSaU29OY5xIeangVk+EcZvtVOQFZG
         JPyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784773828; x=1785378628;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Gg+QryruY/7NPTM87J9rF7S09woVaBLgs3RtEBjtwlw=;
        b=hFZm/2EOFwClmoA11Z2kmcohrvzHrKrnNhENvXpUc/cN6qBTBuFBQmsreIa0HAqsRf
         0zcR1ikFIv84fY9OBI59OLv53f3Pdsw/rNOwt6sf9rCXrZWbONbdExuTu3K95jwMppMY
         t3FQ79OnHEEH/UZH9Zr86KUiXEz5+PhbUjH7OpFU3FTnu4s1UnYYixTBjdha0PujUquK
         rB36p3RjZ/jJ/W+bIist+CUEeuM3aTMRbfDneqijUp11tk0+EoBr3pn9rGXtRiDajK1/
         Y7LRhNGQtjjWzlRNxJSd3NXv9KS73DLakboITbzBu9uzV4IhTZ3QhWL/8KOSFrVgTuet
         tobw==
X-Forwarded-Encrypted: i=1; AHgh+Rq7a1vxey3WWPse6xmeijhc0UmBtokUUJ+91MpIxOZvAywVv//C0MQo7Jq2V19RZYIhEv2ARYol6NE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxylaufpyJtujCSnj0x8GyGrfs0V5Nxq8XOb07oscIFMkSvleFz
	Mm75jvqfXToVw2TltMG4ROW0bygL3ai6rLVsl088kDqUsfId8MrKYj9eg5CP4XPQYF2JkbfuSve
	Ve2+GcLgr0nt0gGHKzrPWpjecvLx9gsiknXBXoHv1U/qOw9dYnANOCFb+F1Hn8K3ze8n9
X-Gm-Gg: AR+sD115g/cT7+0t7D2xcjDTwrAwdVzLJ8WnXf96vfD9azehyasPnCzJdB4RHQ1SrDv
	YmXpzzMrv6OxdFbyCKRt63WPNOV33NcURHuW8KWcg6u2r0dxV3j02k2HaunI2UwmYPV0dkQ1993
	THnYTxYqv3vIbhzPGucf5Jbcty9H1WdU/b67JhBxoCkEv3Jp0CELomlXFx2CC38b9DKv47SvvGu
	UkAwgzmZJf4cat95Wk1B/LHd/zpKMTJ/jHe9VQiOr1y17eNuFyhaNTCiQhIBUnX/o63BC6GI7k/
	z2j+q1zH+9ga8GmMOW77rrBcj6Ptr/k8MPTUafDHYBwq7+8Zei9WUqmp/u6etXoy6kHgf7/yZPb
	PhkKnOsknEMRE84qGe+YPfCFygMbQjLG74mOiZB2Wv5+nyzw=
X-Received: by 2002:a05:6a20:d508:b0:3c0:9c19:65a3 with SMTP id adf61e73a8af0-3c44b2b6a31mr1190825637.75.1784773828135;
        Wed, 22 Jul 2026 19:30:28 -0700 (PDT)
X-Received: by 2002:a05:6a20:d508:b0:3c0:9c19:65a3 with SMTP id adf61e73a8af0-3c44b2b6a31mr1190787637.75.1784773827627;
        Wed, 22 Jul 2026 19:30:27 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3147d47960dsm13463980eec.0.2026.07.22.19.30.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 19:30:27 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Wed, 22 Jul 2026 19:30:18 -0700
Subject: [PATCH v6 1/6] dt-bindings: phy: qcom: Add Glymur QMP PCIe
 multiple link-mode PHY
MIME-Version: 1.0
Message-Id: <20260722-glymur_linkmode_0722-v6-1-bba8156b8cbb@oss.qualcomm.com>
References: <20260722-glymur_linkmode_0722-v6-0-bba8156b8cbb@oss.qualcomm.com>
In-Reply-To: <20260722-glymur_linkmode_0722-v6-0-bba8156b8cbb@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784773825; l=6511;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=+WhStuQ5tWT2R9/i8ZwGe8d3oZmxPuE4Vr+OUYOmmso=;
 b=xdCWBVyDqEd/3RgWIZpx81J37CyJQ/95TdL3VAtwr44gWkQ/bHeozbhZXkgVcRuF3gFG5qGK2
 XiNxjd5jSErCl9PL/L4dDahIRj7tbhkmuzoYT/XXMaia8YQwqvX0DFP
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Authority-Analysis: v=2.4 cv=Q53iJY2a c=1 sm=1 tr=0 ts=6a617cc5 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=yAdxKSRqiqocnpK_7ewA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIzMDAyMiBTYWx0ZWRfXwqT2BC5fngco
 GsEztVaP7LAcBsSXQwW1txrbr8JcUAgNPPWGsRy7j+MwxeYymnVeXEn0u7th3KLOMxtGVe4Wi4/
 I63dcJffZoiEOrr+bAoMoayOcyEOKcg=
X-Proofpoint-GUID: -IvHqW7Xs1mYhvCa0JHyUwXKoRV7MifT
X-Proofpoint-ORIG-GUID: -IvHqW7Xs1mYhvCa0JHyUwXKoRV7MifT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIzMDAyMiBTYWx0ZWRfX5AWOKuUuGjgR
 RGCAV7Ea7iSH9ohgukf2TGzNVJrLXjIXzn0PyJsBbt2ZA+aNkmQdYsn2SB+hqfMUsCAJUe/lGh1
 GurGWE07SxrbFhmHofsrqOxl3C5nHY+8583zXbRNpxecJO/yNrsKqQzoHYddhrDjb6DE7Zx1OXM
 6R/c9NaHOSXbFI9S4cZTh/CreDQSi5bqgLFawWpUM5UtSeULZQ3QBOiQ0ArjySDoTsRnt6TucMc
 Pt8Sf783Tb0Ep3OPsC/zbYnaZL0x+y7RZeU1SXjQB63da8PfLIFHZ3a+TSLeoYuv5gURt0Kgujy
 prIaTWMnMbaQSb3dfv2bQKCHTB9nDXlJ6M+zBEaqCFBmJettOocoCheVVLJ37/FI/ob7gvc+XOn
 +Id5U8Ll4m+4vojIX20DmE18Cl7bha/utvPMX1ipNjCbEwJgutASYKFbxvxU69YQ9coJ9+YQVGV
 uwXSAlPxxeGCYnJpRUQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-23_01,2026-07-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 priorityscore=1501 adultscore=0 bulkscore=0
 clxscore=1015 lowpriorityscore=0 phishscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607230022
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_193029_865474_279009C9 
X-CRM114-Status: GOOD (  18.79  )
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

Add qcom,glymur-qmp-pcie-multiphy.yaml as a standalone binding
for the Glymur Gen5 PCIe PHY hardware block. This block supports two
link modes, selected at runtime via a TCSR syscon register:

1. x8 - a single 8-lane PHY instance is exposed
2. x4+x4 - two independent 4-lane PHY instances are exposed

Keep this as a separate schema from qcom,sc8280xp-qmp-pcie-phy.yaml
rather than folding it into the shared compatible list there, since the
two PHY instances active in x8 mode require twice as many clocks,
resets, and power-domains as any other entry in that file, and adding
Glymur-specific properties like qcom,link-mode and reg-names there
would only apply to this one compatible.

Document the required clocks, resets, and power-domains for both PHY
instances, and use #phy-cells = <1>, where the cell value is the PHY
index within the active link mode.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 .../phy/qcom,glymur-qmp-gen5x8-pcie-phy.yaml       | 177 +++++++++++++++++++++
 1 file changed, 177 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,glymur-qmp-gen5x8-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,glymur-qmp-gen5x8-pcie-phy.yaml
new file mode 100644
index 000000000000..759f7f979dc6
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,glymur-qmp-gen5x8-pcie-phy.yaml
@@ -0,0 +1,177 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,glymur-qmp-gen5x8-pcie-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm QMP PCIe multiple link-mode PHY controller (PCIe, Glymur)
+
+maintainers:
+  - Qiang Yu <qiang.yu@oss.qualcomm.com>
+  - Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
+
+description: |
+  The Glymur SoC uses a single PCIe Gen5 PHY hardware block for the
+  PCIe3a/PCIe3b controllers. This block supports two link modes, selected
+  at runtime via a TCSR syscon register:
+
+  1. x8 - a single 8-lane PHY instance is exposed (PCIe3a only)
+  2. x4+x4 - two independent 4-lane PHY instances are exposed (PCIe3a and
+     PCIe3b)
+
+  The node always describes both PHY instances ("port a" and "port b"),
+  regardless of which link mode is active on the board.
+
+properties:
+  compatible:
+    enum:
+      - qcom,glymur-qmp-gen5x8-pcie-phy
+
+  reg:
+    maxItems: 2
+
+  reg-names:
+    items:
+      - const: port_a
+      - const: port_b
+
+  clocks:
+    maxItems: 10
+
+  clock-names:
+    items:
+      - const: aux
+      - const: cfg_ahb
+      - const: ref
+      - const: rchng
+      - const: pipe
+      - const: phy_b_aux
+      - const: cfg_ahb_b
+      - const: rchng_b
+      - const: pipe_b
+      - const: pipediv2_b
+
+  power-domains:
+    maxItems: 2
+
+  power-domain-names:
+    items:
+      - const: port_a
+      - const: port_b
+
+  resets:
+    maxItems: 4
+
+  reset-names:
+    items:
+      - const: port_a
+      - const: port_a_nocsr
+      - const: port_b
+      - const: port_b_nocsr
+
+  vdda-phy-supply: true
+
+  vdda-pll-supply: true
+
+  vdda-refgen0p9-supply: true
+
+  vdda-refgen1p2-supply: true
+
+  qcom,link-mode:
+    description:
+      Reference to a register in the TCSR syscon that reports the link
+      mode the PCIe PHY is currently configured for, either a single x8
+      link or two independent x4 links. The link mode is programmed by
+      firmware before Linux boots; this property is only used to read
+      the active link mode, specified as a phandle to the syscon and
+      the register offset.
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle of TCSR syscon
+          - description: offset of link mode register
+
+  "#clock-cells":
+    const: 1
+
+  clock-output-names:
+    items:
+      - description: Name of the PHY A pipe clock output.
+      - description: Name of the PHY B pipe clock output.
+
+  "#phy-cells":
+    const: 1
+    description:
+      The cell is the index of the sub-PHY within the active link
+      mode, e.g. on Glymur, 0 for "port a" and 1 for "port b" in
+      x4x4 mode, and only index 0 (the single wide PHY) is valid in
+      x8 mode.
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - power-domains
+  - power-domain-names
+  - resets
+  - reset-names
+  - vdda-phy-supply
+  - vdda-pll-supply
+  - vdda-refgen0p9-supply
+  - vdda-refgen1p2-supply
+  - qcom,link-mode
+  - "#clock-cells"
+  - clock-output-names
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,glymur-gcc.h>
+    #include <dt-bindings/clock/qcom,glymur-tcsr.h>
+
+    phy@f00000 {
+      compatible = "qcom,glymur-qmp-gen5x8-pcie-phy";
+      reg = <0x00f00000 0x10000>, <0x00f10000 0x10000>;
+      reg-names = "port_a", "port_b";
+
+      clocks = <&gcc GCC_PCIE_PHY_3A_AUX_CLK>,
+               <&gcc GCC_PCIE_3A_CFG_AHB_CLK>,
+               <&tcsr TCSR_PCIE_3_CLKREF_EN>,
+               <&gcc GCC_PCIE_3A_PHY_RCHNG_CLK>,
+               <&gcc GCC_PCIE_3A_PIPE_CLK>,
+               <&gcc GCC_PCIE_PHY_3B_AUX_CLK>,
+               <&gcc GCC_PCIE_3B_CFG_AHB_CLK>,
+               <&gcc GCC_PCIE_3B_PHY_RCHNG_CLK>,
+               <&gcc GCC_PCIE_3B_PIPE_CLK>,
+               <&gcc GCC_PCIE_3B_PIPE_DIV2_CLK>;
+      clock-names = "aux", "cfg_ahb", "ref", "rchng", "pipe",
+                    "phy_b_aux", "cfg_ahb_b", "rchng_b", "pipe_b",
+                    "pipediv2_b";
+
+      resets = <&gcc GCC_PCIE_3A_PHY_BCR>,
+               <&gcc GCC_PCIE_3A_NOCSR_COM_PHY_BCR>,
+               <&gcc GCC_PCIE_3B_PHY_BCR>,
+               <&gcc GCC_PCIE_3B_NOCSR_COM_PHY_BCR>;
+      reset-names = "port_a", "port_a_nocsr", "port_b", "port_b_nocsr";
+
+      power-domains = <&gcc GCC_PCIE_3A_PHY_GDSC>,
+                      <&gcc GCC_PCIE_3B_PHY_GDSC>;
+      power-domain-names = "port_a", "port_b";
+
+      vdda-phy-supply = <&vreg_l3c>;
+      vdda-pll-supply = <&vreg_l2c>;
+
+      vdda-refgen0p9-supply = <&vreg_l3c>;
+      vdda-refgen1p2-supply = <&vreg_l2c>;
+
+      qcom,link-mode = <&tcsr 0x5000>;
+
+      #clock-cells = <1>;
+      clock-output-names = "pcie3a_pipe_clk", "pcie3b_pipe_clk";
+
+      #phy-cells = <1>;
+    };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
