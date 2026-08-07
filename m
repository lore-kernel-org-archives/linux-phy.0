Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BBD2C5AC7C
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 09:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LsqLndDA/XBYaOYwxH2xJgs0+cEop1ip0iIFiKN3SPs=; b=Hv9xQ1+RrQGCgw
	yks/2x+EmAyfxV+Rh9IoNu1vTt8I1wifMbhUfB8T5/Pwo2wdEJmicCPpBYkJz4FNY+yasNUL13MQ4
	3Yyc7SPvBj3M+LJV8XLdQchpVoTS6jI786q7KYeoOGZEEh/Kgp7h59rX5RAE+6vvsnOcDhh6FC1kk
	6WoADFvlG6ePLK5OH5ocxxVAPsTo7Et3YxeqeWtOngAj2LyozrOi05Tj3Hb7eJVnIaYCrzB4b6wVV
	g33viVzEuyZd04XmbEzjDyVU6d7usrJY3pdYF42tQ7KYjvEmGwB5Xl5SZPAIjO6ldvoo7G15JpKsy
	3aCQtWsbA7ybm2VMSMdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsHEb-00000007YUd-3AKX;
	Fri, 07 Aug 2026 09:51:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsHEZ-00000007YTe-0h7B
	for linux-phy@lists.infradead.org;
	Fri, 07 Aug 2026 09:51:24 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6777m0T23176993
	for <linux-phy@lists.infradead.org>; Fri, 7 Aug 2026 09:51:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aaxlFtNjKh+DqkL1yvWnJp/JonNPzRvAbqtW8DOElmE=; b=PoV25cY37jscBNbc
	hrIm+0L7fDaH5fmKvWw1CixAq4oxwu/krvi1bADwogxKbkTD1AA3YJODzVNMfrUS
	PuRwlk8NHcNz5y6XisgejZX8jWYD+xO6nwLbkvGG214BHTaGvN0snI/KHjGvuU2m
	GjRkPKZDP569dphNjkKnLqxJrd631z+mPu9p7qHr+MP5rJ3NhottHaQTBWezqd0/
	gybkDlylFB3+Dbm6R/NJdLvosN6cYjOkzvDIs/q96aSt+qbzHkTyMkDe/ZI3Rsbt
	9pQ/8SsJxEKZ7Dhc7yMJWhgwtmNLQ0BxuwrEiIAxAuPQAlT0T6x2Wwsw2pM8fPjr
	JD1cuQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fvy6jk974-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 07 Aug 2026 09:51:22 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-848474825ffso2829781b3a.0
        for <linux-phy@lists.infradead.org>; Fri, 07 Aug 2026 02:51:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786096282; x=1786701082; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=aaxlFtNjKh+DqkL1yvWnJp/JonNPzRvAbqtW8DOElmE=;
        b=Wk6mdR0wdQJjScJP4b1uddzEArJbhy/3uSISm0PLOdoxNp2cdi68ep7uJC0A+WD9Lq
         G7qgS+1AUK6Rn+p8b1IM8gZNVk70jHucbeIGfqpBmxN1MUtEfGI/aPGLauIFiz2knK7W
         +lp6/dg7FMLCBsXVyWlcowsntp9w/RWM7sMq6Lzp9/aTsWiCg0j1Hw9P5Ea0eB529MgU
         g2vC9HNO+PHDg6iSAJYjqw4vULH5YQ2C0O9LmdyxdLwIZHNlFBRmc2a+5fiXDgtRTuMm
         gUgL1DZaxetej763Y0nli9uYqBl/uvS3WjvaVsbaqwFQEALMEpNXSgavULn+7qkCcr0K
         nHSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786096282; x=1786701082;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=aaxlFtNjKh+DqkL1yvWnJp/JonNPzRvAbqtW8DOElmE=;
        b=mf1OKmnAmyek7CTq7ICPzGAoBRCYhdLFOy/6XXdIwI1eN6U+N3NVXoojl4zzT+tvbV
         MJBnpUPfp0/OMOstIZO2khAyutmh8DurPlFugBKrl1/x4aBepkBqF724fgh0AVAEVMDZ
         1s6lr/XyTGTseWeB2+kRNOr0Swi8Vi0jRfhITrnCnOf9YsNwn5dnUUSIlxTBGZp9MWR4
         eMFCFakuDTGlrcJE5UyaLa2NVseOnox8GkMYBy/EKp4QW5KPptM/8OC7YrPz03p6ryFx
         kBQisvggpuOzP4nO1Gss0gmVz3D9f7Irg5OndRICZuZjcuTzWuvAJKPbJMqg6bLo8UbG
         eeKQ==
X-Forwarded-Encrypted: i=1; AHgh+RpS3STo5lZrowQ7k/UqVZpkNIM5h0tAkW8LE9RBI8kRQ2H3ThlcVDpBKoaRckeb/bt0HL7SJDjo0ak=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy9BCIgF707vbvcDFZoWfqU9/6a21DI3aNLG6tb+n2MayEpqIwK
	6afufKOPzsdOfV1ezkFfZ3kmjNPN0CI7dweLXDQdyjShv4oaoeISCjAVd4kkpK+/jxSZE4LCDqc
	8M1wYJmgnkd1tSAmfiLyExW/RWOnC7a9Uk2n8bxKreNf/BNDcujVWIhAn7qRP5TVNnR72yfH0z8
	7z
X-Gm-Gg: AR+sD13PNhlzpedFtvtyu7l/lnStna8xcyXxwDnoccn04B0VbjlKCJw5zw2JHmPylVS
	v82DFZSgOH+yhkwvuim/9hT/1Ucq9pAVCEwWAMF+rAdyiUOjIK5G6kSE9QPiW/3T2qyDHoGrFIy
	e3q2xthL8LDcwT9/RY9QbXColtsVEkEK0P9w6wxcuCovXNaXEh+u/AesvbY+1CyItukBZzgdHI1
	8EVdHW5NEncsoExAJtGOy2V0nFhTI+GUOZ+DCSOPW0S+0NN69k0ZUkZmsIi5kh+CJf8E45hu/zS
	bqeivbYN3Sm29DASNlc5pforZgvSDV3q0csGnCfQIQm4uoq+UA08hV7jNXDlhRYPGyddnukIO3D
	BcIGbQSgA8AewcJKCpfzg3N83Bzy4RQL5FQ5juiQ510BK6NU=
X-Received: by 2002:a05:6a00:2d16:b0:84c:241e:9070 with SMTP id d2e1a72fcca58-84f47ff528bmr11222621b3a.17.1786096281978;
        Fri, 07 Aug 2026 02:51:21 -0700 (PDT)
X-Received: by 2002:a05:6a00:2d16:b0:84c:241e:9070 with SMTP id d2e1a72fcca58-84f47ff528bmr11222568b3a.17.1786096281534;
        Fri, 07 Aug 2026 02:51:21 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84f5a3cad9dsm743785b3a.23.2026.08.07.02.51.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Aug 2026 02:51:21 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Fri, 07 Aug 2026 02:51:10 -0700
Subject: [PATCH v9 1/6] dt-bindings: phy: qcom: Add Glymur QMP PCIe
 multiple link-mode PHY
MIME-Version: 1.0
Message-Id: <20260807-glymur_linkmode_0807-v9-1-dd1c7e236e29@oss.qualcomm.com>
References: <20260807-glymur_linkmode_0807-v9-0-dd1c7e236e29@oss.qualcomm.com>
In-Reply-To: <20260807-glymur_linkmode_0807-v9-0-dd1c7e236e29@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786096278; l=6637;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=jxxfUzpwxpcsF507GMs4HufzpqaCXog14p6kapOUu1k=;
 b=E8dY8N5uWjW+uPlM643rXPJ0bF28E3PgyBrktmNAwKSXJRAiFRHD9EfphZMBIvPqnsKTdUQFF
 cve1PZeI2yzAOCh4o0xmtPs572G998MQoPyOrPvy7RKH5xemeU8NK7X
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODA3MDA3NCBTYWx0ZWRfX/Z4pmFO95d52
 gnRo+j6abIILAVhtZUWAKY5nIQyTBfECq2Y62TsaR20fm0XyNQx8+CJ86K0eG2UTfU+w90/WlRG
 vJwq0qaVORvHmq9cYz9cfhLNUOd1HPaZ1jCYUbQ2jFEutoULjbEpQ72JoZ0bo0938eKliF8z+PM
 NjQL2Fvan+hTga8TLmjkQnkfUqMY7pCQt9CIZNeXIqtMmURbGQC2EcmIAVe23wvVsPSYgiM4QXl
 7QjAAflBNwyL3zyF6D8SvxR6RXEmusQ9G8jVa66XqtXteovMnzH3yUlcm3oXxkDrLAkF32BUga1
 gsA3rB2roxlQ0RDgkuKD7Sc6w1dARWHEwHWeDFgiyT2Bedg5X9MScI+gBjKACdfrNNJpeCcPA5Y
 qmfNzFKrHp238xLlizQoLDM0jMMF/jnN/NEPH2FlAG/VU12Szn0pi9uuU4QGb/GexAuZ0cq3bPh
 33CGe2GDVEn0SMWUniQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODA3MDA3NCBTYWx0ZWRfX5bOAEHnat2P5
 K3W1fWuKCnHb2px8gnASIOBJ6KuokUcb4TGP7e8W1WTRqRXRXKRaBnt5MNPFTBxhT6ioLXITKEk
 38zfXaqF9oaB29fSq6pHvoRgnDH7vDM=
X-Proofpoint-ORIG-GUID: utLB15Z5Br2HAaeipbmQWG9hwADhqXBG
X-Proofpoint-GUID: utLB15Z5Br2HAaeipbmQWG9hwADhqXBG
X-Authority-Analysis: v=2.4 cv=e5Y2j6p/ c=1 sm=1 tr=0 ts=6a75aa9a cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=TIvzfnD_jG5d2KfScrEA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-07_01,2026-08-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 spamscore=0 priorityscore=1501 impostorscore=0
 bulkscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608070074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260807_025123_215726_EDF5D3D5 
X-CRM114-Status: GOOD (  17.98  )
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

Add qcom,glymur-qmp-gen5x8-pcie-phy.yaml as a standalone binding for the
Glymur Gen5 PCIe PHY hardware block. This block supports two link modes,
selected at runtime via a TCSR syscon register:

1. x8 - a single 8-lane PHY instance is exposed
2. x4+x4 - two independent 4-lane PHY instances are exposed

Keep this as a separate schema from qcom,sc8280xp-qmp-pcie-phy.yaml rather
than folding it into the shared compatible list there, since the two PHY
instances active in x8 mode require twice as many clocks, resets, and
power-domains as any other entry in that file, and adding Glymur-specific
properties like qcom,link-mode and reg-names there would only apply to
this one compatible.

Document the required clocks, resets, and power-domains for both PHY
instances, and use #phy-cells = <1>, where the cell value is the PHY
index within the active link mode.

Acked-by: Manivannan Sadhasivam <mani@kernel.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
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
