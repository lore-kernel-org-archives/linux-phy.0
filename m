Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10C6EC531C9
	for <linux-phy@archiver.kernel.org>; Fri, 24 Jul 2026 10:01:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LsqLndDA/XBYaOYwxH2xJgs0+cEop1ip0iIFiKN3SPs=; b=BDDmI5xDdBOTfe
	i/vl4tDf4kZN7KFftTVwCs1oA657OBhJlE8b9x6U6XOFWQIbbPfPpgJ8yh2n0Ps/bvECWA5jchSYa
	Mo8K3PwhhsoX68BLCj0NNOaUzMd41mm1l8JMcNSZd3L4pz9CcQ4YZcI7gDgmUu6zwqf/rJRX7IMvm
	twoNS9pm97+yEHnQC1XVjkILSMvnyGT4rHi9ZukgLjyDiqLqfnrkQn0diq+BsjzI8ve2tkDlcsT5r
	ev7fnaf9Z4WuQfH86egcwj632TchcQKS89tLFkrEcVjg7lctew/JhY2OtMI1nmou6tKUJmeN6+OzC
	39C9AGQiqlp3b5k3egwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnCiy-0000000G208-2EoC;
	Fri, 24 Jul 2026 10:01:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnCiv-0000000G1yG-2qNJ
	for linux-phy@lists.infradead.org;
	Fri, 24 Jul 2026 10:01:47 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66O9T0CN3785878
	for <linux-phy@lists.infradead.org>; Fri, 24 Jul 2026 10:01:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aaxlFtNjKh+DqkL1yvWnJp/JonNPzRvAbqtW8DOElmE=; b=aeW2twjZGy3ArxpA
	xUnvOqnnSfbjYw693pcZe9M7TIE5eMf8RjuezcTT4oMAenx7Shd/mQiPNIY+GFRn
	OXNtzDqFO+R7E13NfCYHmI/GpuGajZEvowewA0jzXJRPOvL2ahnkLqFqaFRGi0/0
	wX0EtykAXffRCXjZjWI5Kxi7rFk4czDa3dvsg9CvoDbJx8E4lkPliZA2Fi3RILGp
	JfCejATywYeRdEjV5oGAtDC+fhmwL5eto7o2kQEfBPwDccn/hChIt84U8Ht0atyC
	FtQU9fafQWrh+3dFgSrKSOawGHzkzmbzXnD3KqwnTDj9Oy8ahZivwT6GdwpumEhT
	tFe1fA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fm5f683xd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 24 Jul 2026 10:01:44 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-84e048a801dso338355b3a.3
        for <linux-phy@lists.infradead.org>; Fri, 24 Jul 2026 03:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784887304; x=1785492104; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=aaxlFtNjKh+DqkL1yvWnJp/JonNPzRvAbqtW8DOElmE=;
        b=jMyvrXvAxym3S2S/QQVN605WUPfUWzfPSWksXDtGRnkl4DZX20dyb6oMJE3i7JLz6H
         65i+kyYam/1wMCz5bVwreGdJZotbS8mR+oXXHdb5+KSLvL9aP0TcA2Ej8LjreZiJ99pK
         yn76gPYTXPX+oKLUsIgQ98hJnGaFzjrLYApXw5k1f3dJ17q7QKOvI31PRC90aJ0zNNw7
         KVFTW1j6etB1c5bN7JU1FFGeCnW+H6B3RAkbcLxN2ckC82diS2Yk8xXMDvX4UUb24JS5
         fA43c59JgGMHeLTQ7H+F6+hIJsNmmOmq3wsc37a/EbrCPKBQCryB6dZv4xXEe9BpGMjb
         w8nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784887304; x=1785492104;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=aaxlFtNjKh+DqkL1yvWnJp/JonNPzRvAbqtW8DOElmE=;
        b=VqT8C/UrdSKvMu97Jj+kcgUkxUm0tqz4Ds+OGRTuOKQOdTert8l/3wgS7cU5Ju6L3B
         Hn0aNcBq02VlqdzLb/wJOGQjlyCRQjqxkj5nD3UdOoVZXt73X3xkHv8TRm5yOpiv0mXd
         46JXs/uXm+CO2f/iVpI/XzsDFuJZ+pCFfOlaCWFkERClKqxk0Qi+FO8DboBNawuNtxyG
         EeVVhKC5qVJhi35Zw6RyimFCtTn89X5KruTcfsts4cz3K26yAmH34OJhjhXrZFSbCkLW
         i39yWxhaoltwuHSHCZ0OS2nOZpFvpIs58qrjLIZ90oJ9dZvvyKHvDJMPYW0qakSrR3fu
         O+IQ==
X-Forwarded-Encrypted: i=1; AHgh+RoyeF2ruoXqwljRNjRK0ECg7rpGdvy+5wcNgNHRMe9G9iYLLrpCPIbruvmZqDVMZ8nfGPKWFJtztEg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwKkXUgYAUafpRz3uLF84G0TRYz8XfpKA9sDSwUGCeJbNoCP3dn
	fEm9eRW9QFg5UUAbeQOs6y2CroGVxmhD/ELaH+HOoWJSSCinTW1KLLS7smqvYFyrKmYCmF9s8Fe
	Sx+cDcP2M4Pqwn3Kc6b9YDJj7endm7lMMsu4+xPtjpXaYGbbWTwgbpTKXyecpkUmzJvuKxRrf3C
	ghp/8=
X-Gm-Gg: AR+sD11gAHwxnUjpYjGG6XkjOSH6RzgVxbgPfC07QKeVuk5rVOXhLDYfHMDi0DNvyoL
	/OED8E2dKt4EORBAoqyXr2a9j9WgGCDS0nmcNz+Dbb+bVWw6F+1Xdi9d+/+zNjXPF1dFR6d0lt5
	kQfcLNuBscVGLP2ysPF9Kgh4ULMtJPK/XUum3PzOJkkHL3Txm3MG8cCEnPez2GeIf1XE4g5GOUc
	20BGO00DLax77xv8ORjHKYLCm67pY/cErsAoZbEWtFIi6ZsjI/lYpbOZdL6lm7DRTgxkRtc37pd
	brTKZEFXjVlE3aJ0K+Y6BKK7AVAC8XAUGizFZVa1P3XQTypwIcsk/H+S+EvQdqMTf6+mZtn05TP
	FgLnMePmz33GJxmA3tlfYvRp99bA0T0l28NBzj05HKC6aaKI=
X-Received: by 2002:a05:6a21:1f87:b0:3c3:7edc:3103 with SMTP id adf61e73a8af0-3c44b238816mr7656919637.62.1784887303805;
        Fri, 24 Jul 2026 03:01:43 -0700 (PDT)
X-Received: by 2002:a05:6a21:1f87:b0:3c3:7edc:3103 with SMTP id adf61e73a8af0-3c44b238816mr7656873637.62.1784887303257;
        Fri, 24 Jul 2026 03:01:43 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3147e1c9289sm29515427eec.29.2026.07.24.03.01.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2026 03:01:42 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Fri, 24 Jul 2026 03:01:19 -0700
Subject: [PATCH v7 1/6] dt-bindings: phy: qcom: Add Glymur QMP PCIe
 multiple link-mode PHY
MIME-Version: 1.0
Message-Id: <20260724-glymur_linkmode_0724-v7-1-65c8469c6b65@oss.qualcomm.com>
References: <20260724-glymur_linkmode_0724-v7-0-65c8469c6b65@oss.qualcomm.com>
In-Reply-To: <20260724-glymur_linkmode_0724-v7-0-65c8469c6b65@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784887301; l=6637;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=jxxfUzpwxpcsF507GMs4HufzpqaCXog14p6kapOUu1k=;
 b=FYAs/GBK9/6SqbN0tIIsaQUye90Hp+0whshJs5jcLtkfispwFpJjbfbXnwevtZ9zPVaLE5+mS
 IpeenqvuZR/BnROXVnk9bMpC46W/2lDxfO9IxMYBPOv5SMwBjBF6O+a
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI0MDA5MSBTYWx0ZWRfX8ngHJjDwj0EK
 cbjgblDLZ6RlxYz9BrJwtf9E+ORyPFiKRnrxlAVqWPM8NrR2CNEne8RYtXf0q3h5DjtnJRkUbXZ
 TWmgGSUt/VBPwA1zUT7r+k7dV1BzGnk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI0MDA5MSBTYWx0ZWRfX+Xm9KAp2ovZ3
 Oo5mXLWlxBW2JfLYSK8aP9Wfunqp23nEIPxZDUuqz44BoHKOAbuNuWfeYCJ//PrvMABba9l0lTd
 y9iclRxwJ2TFdE1No9TN8eaCybgK3NPbyAVh06JBBFAVdQGdl7AAxQAR0F69mcr8TWx1gGQJ/Jf
 h/xboPgbnvE9aZEbDO6DXhBwtx1ryQrDHsMwJrCOmOqZcCFGwI8aypWMK5Dz660aKxUmf6vPHj7
 Kb2BCOzntbZSQbOaOG8G0OrDU5ytXOuBNy8rl6Q38cBA/9Q6MmQXCw5VXRMPbFHLlKFLdAeu6J2
 agtorh8T55dEQVVs29KaKoa35LckcbZJZ8RfBOoGGevjlG31kHSLM3hg8coIyV/L4fwiu6/B6JD
 rWsNV3uZ7ZafMiLe7qctYHBn5tWSce8PkK5w7NeooSsPXhWwwdaI59VBSZa5Z+FHKfuhkY5wpuh
 7Q/bxjtC452ikXxABZQ==
X-Proofpoint-GUID: Li6MzlEzyJqiGWHrseQlDtSsxmlxijvc
X-Authority-Analysis: v=2.4 cv=BNeDalQG c=1 sm=1 tr=0 ts=6a633808 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=TIvzfnD_jG5d2KfScrEA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: Li6MzlEzyJqiGWHrseQlDtSsxmlxijvc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-24_01,2026-07-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 impostorscore=0 priorityscore=1501
 adultscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607240091
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260724_030145_741821_DEABC905 
X-CRM114-Status: GOOD (  18.04  )
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
