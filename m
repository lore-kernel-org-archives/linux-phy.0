Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFB28C5516D
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jul 2026 05:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LsqLndDA/XBYaOYwxH2xJgs0+cEop1ip0iIFiKN3SPs=; b=2lpF1IFsJPqfoV
	w6qqt4yuyNTUfoqKKK32XKP/gd3zR0QwPdsWjTY7imrl4u4cNDnrAd6JzQ/DO3JcaR9tjk9fRJXN8
	9nNIA9wsi+6ZerszrLOM+2NBIYvJQ2cXoze5XMBYMc/LtYkS3BodNhBjM5CONlaNgK9KpFACk/+w+
	pDzpwiS4lH39ZRPgljz0aKp3anQyGiZPgCSUejc4EZBOLElm8fZahn5PO+2hqLrlzhlpZ0a3p3SIV
	Hkq2Xhi8l23CaPyTAK6GeV7Hxn5luAdt1wTxjNpV2siQqEgJvLK6EMRJtjEhXKQ4CkPSf4OJLg4un
	3w6Ze424lHNCwcLY/u0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpfZM-0000000BmpH-1K8H;
	Fri, 31 Jul 2026 05:14:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpfZF-0000000Bmkt-0gbk
	for linux-phy@lists.infradead.org;
	Fri, 31 Jul 2026 05:13:59 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66V4v4DL3259662
	for <linux-phy@lists.infradead.org>; Fri, 31 Jul 2026 05:13:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aaxlFtNjKh+DqkL1yvWnJp/JonNPzRvAbqtW8DOElmE=; b=hA0WxQkpBF0Y8XWE
	83fDGiNdrNsReS+0OISz+UvGwhcaQLCOATR5PW4mfN+GCHJ//HCYfYwm2XFvhEkA
	DW1TNGxAI0tIDPiNa59BgpxUgs4bSLzg+y5N23eJzHl1VSCfLy70NoDatqaI8zkH
	lv4K33m6qFCyzEuWM+GkWxlBJL7iJixNyGRlnXa12HvnlHQGFSH2cXcvVmC2KR5u
	u+FhVRCI5K2LZDiWX1y3z0Ls5blfEnWoFxxOvHrRex89sd+0C5zzCaSpZEU4Q/kg
	JeOS8s4tiz2kRh3LlJ8LOvJZS2sJTFTfXHvUvUxnOV2XJWdG8S3XO52cAhQCpvI3
	2QXWow==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4frn0b02aj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 31 Jul 2026 05:13:56 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-38827cee19eso840194a91.3
        for <linux-phy@lists.infradead.org>; Thu, 30 Jul 2026 22:13:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785474835; x=1786079635; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=aaxlFtNjKh+DqkL1yvWnJp/JonNPzRvAbqtW8DOElmE=;
        b=ShJYr+7qxk9QN7Onex4glytIbdJH/AHhdyZE2duX6Mz369Mcre184SN05EztjWa6F+
         tqyf6/NrBPJ0LIp0P1ahkabp4SKssmCg8GikgGJQTQfxzqQHz/IdNFM97GjQa+gx1Qv7
         DIfohbV2hvVu1tL7CuZ9bMGaqWB0YSxpRbs6+prBtIA23gRdexQFqGuwiKdwfOWqUmqo
         Sp9zU3xapQyCLFnHiqW9gLndnF0VeqwiYgHSWNwo3CkKJN+iARQiTNpkVBhGit22m9R1
         1JdZgozyk7QJRNm8A+D28W+AressxotmdZqaSlEJ1OAzU+q0wLnrDcOT7KXTIFLGfCLu
         O8KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785474835; x=1786079635;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=aaxlFtNjKh+DqkL1yvWnJp/JonNPzRvAbqtW8DOElmE=;
        b=KMbn/mNurO1Heebi5B6TKpwf61CDpkp8iS+KgMllZJRN/3ZyZ1SGzjHyIeQS7pzmFB
         0Ss7O1fdGVNPqfH/SBsJkaGSagoKEb899vPlhGiTGcmvmxtzbCyrkcA9xnm/EbTQ6cjR
         d3/59Cta7GbEbUgjYl3JsvssQ3O4qfKdmgoNuOK6e1q1xPHs6HFg+fLn8m+pExDoXNR8
         WAMI99/ofjDIS1gaINv/oysr2dLtqVECeqHz0Y6FJ1ljO5HrTgXfncKeI3H/27OkSrdA
         hs01PSlFPkbQZOoXT8BHla6BLDm/XBkem0vN667jqECggWs0WQ5SZEm5I+XljXRuRKwp
         IduQ==
X-Forwarded-Encrypted: i=1; AHgh+RpCDaA4e+2ixJOsCBg6pOwG3ugz2ov32yiPgjkG/jpzLS+xb6gw0Kd2gAyMOBSgojGS8DIvm7Y5jLE=@lists.infradead.org
X-Gm-Message-State: AOJu0YytnfDQsIo/qFZJOYzSY6CMGWYfoP9UqY9SfOtkWvJNMLTqoWZ5
	ve8F21Y8Id0d6q/EPvLm2h7bldxQ9toyO1pWbJ08LQnVA3AMR9mtBHOJTr3DuqWj+DUTqK5pVxL
	mZOtCiVIC1sE+7RwxlrwV+nImqaAM4nYEWWKY1fk68efAGjhLNBqSRq7Sofer/UZ+FQgC
X-Gm-Gg: AR+sD11/jdQGWigfs0dCrYSrshuBhgYavntpWJRwK6K7bo+QCBI8VhElPzZgBNBVXqu
	qENoJoqmSo9E+fXI16ADEjSVxWm0U9zLiExPmf3vmbFjdsWkJMG+PeQ1QcxY4Iz2GKer6Dbgg16
	rLEeMJKTu3f5uOVUuFq+Qk8c3pMmyU3wD9d7o1aDfrWl1N0jwSrZSAz8tvp1fGCjf+mY/vCOiEp
	hJ79inoIsJesJtCn/1gIy8DRtT7sJN2LJwOy8ocBRHIrvs184mx9xVd+P4lqgSCdZ4AvUtkWK68
	h2Kw9QN5695ImgJzAUu5XWG6f4KRGpTKo0QwC4mRuyxeZWUPQ/mJTJSKIm1eQ7OF81GuESK2n4k
	FmbG1p1+5FTBuRxLLYCfRY82hRmHkEE09heoXZQIQF53nfow=
X-Received: by 2002:a17:90b:4b08:b0:37f:ad36:8fc5 with SMTP id 98e67ed59e1d1-38fb1352325mr752322a91.23.1785474834994;
        Thu, 30 Jul 2026 22:13:54 -0700 (PDT)
X-Received: by 2002:a17:90b:4b08:b0:37f:ad36:8fc5 with SMTP id 98e67ed59e1d1-38fb1352325mr752284a91.23.1785474834502;
        Thu, 30 Jul 2026 22:13:54 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3153e06f88fsm976435eec.20.2026.07.30.22.13.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2026 22:13:54 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Thu, 30 Jul 2026 22:13:50 -0700
Subject: [PATCH v8 1/6] dt-bindings: phy: qcom: Add Glymur QMP PCIe
 multiple link-mode PHY
MIME-Version: 1.0
Message-Id: <20260730-glymur_linkmode_0731-v8-1-a455265ad8bf@oss.qualcomm.com>
References: <20260730-glymur_linkmode_0731-v8-0-a455265ad8bf@oss.qualcomm.com>
In-Reply-To: <20260730-glymur_linkmode_0731-v8-0-a455265ad8bf@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785474832; l=6637;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=jxxfUzpwxpcsF507GMs4HufzpqaCXog14p6kapOUu1k=;
 b=AqfFaFtX4vYRhYNkdzARenpXkwVTnVBhxzV0dQR9zdx+7me8Bsw+gX49gmdWwsq6wVoMSuYEF
 nbnU0RCQRsVCcQPQz6O2RGW+WFIzmXwcMaeoR1vcCcBaZWdWk7vFumA
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzMxMDAzMiBTYWx0ZWRfX16x8EvtEhBT3
 78of30YqfYP5GomcecWbI6r4jPjxOo06lrdwK9nU27Q0Xohc9HEHN1nWyTqAjCBTw+JAVKvVc0F
 k0vxGDVjkHw3KxpuFtB8n+zI2DGWaGE=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzMxMDAzMiBTYWx0ZWRfXyYnAaUhCglC8
 COwkQ+77zLLTblt1aKql/VoDyYUy0ISuHaKnzxXhCZpWCVruGl8DzVe5j7hJVf6HVl692a9C1HO
 9p9C8GVLP72sAvzOyGI9KMuek6IdIzLu4A9vERnrzR5Gjpfh5Vb8ZtnFIJ9rDVRocTp0hwV9CoO
 5hKfLPuQZylHyEdY823X41n0qH7VTCfnr5kbeCB7KwvOpRgZ/m733X24UDMP4VQF8GQKDkm/1xW
 Kp5uO9h4rhuTbm3CFDYMasshYalVESenfaiWqHzD7KSMaLw5rj+bQHepWPFgyIxbqJ2PZR8fFxm
 x6Xi+jQiFWDsk+gJxDkcl9jSp0kaxMR8XUrcYnIqhiA2PNmn9HKmiCo6Z2ewKcPPfCHpjx7N06Q
 paqu2drqC0RmnsXtzUJzRKai11+uQm0ezehUf3B2KITrh7w/NjdXFDIKryeIIMeYmJeJ3pSTQm2
 aUXCaC94tWcKosNDg5w==
X-Proofpoint-GUID: ApApPQfawIUiSwJmYYemggH-e2H3k3wP
X-Proofpoint-ORIG-GUID: ApApPQfawIUiSwJmYYemggH-e2H3k3wP
X-Authority-Analysis: v=2.4 cv=Tv3WQjXh c=1 sm=1 tr=0 ts=6a6c2f14 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=TIvzfnD_jG5d2KfScrEA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-31_02,2026-07-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 malwarescore=0 clxscore=1015 spamscore=0
 impostorscore=0 adultscore=0 phishscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607310032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_221357_323691_9E377C43 
X-CRM114-Status: GOOD (  18.91  )
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
