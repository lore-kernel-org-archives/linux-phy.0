Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87E00C44507
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jul 2026 09:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ORTO+f/8o78a7Tw5OqHbUu54O+fik/jhEKGgQ00dfaQ=; b=Vjk3F1C0khNj/I
	csbt9X1VG7SzrpmXgHjku6fcKSrpQhA3/EHdbRdms0e8bikiPaaMisC1GxaPXfPe9dYTDvHsxDT7+
	BVgJCtAXg/UKmYQNnxxxw3j0zCrqE/OydPUQ3hQaNSQg/tx2S/aruqJGuGIy0r0/PV2xm5SY2gfNp
	jaf4JNPptc3MMIlGxNIVZYMd7y1t0EBsTrU9E2wEp5z9D8IDVjRZdR2skq9rGYY36+6kGw2gbblY8
	iFCgpmw6dKrFavMA7H9JKuDvhQmweFfbzXa3yTrVEPhmxXDRIm2Cyi08CCj8k823yOdfQaQthFaqF
	taGIMQgfHIMJGjEB/qEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkfLA-00000001tjg-44mq;
	Fri, 17 Jul 2026 09:58:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkfL8-00000001tio-2p4L
	for linux-phy@lists.infradead.org;
	Fri, 17 Jul 2026 09:58:44 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66H6d2IC821098
	for <linux-phy@lists.infradead.org>; Fri, 17 Jul 2026 09:58:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	z+VEJxZksuKjQPEcKoxqOAxex5MXE3UzHoNnHjJ3PSo=; b=RN0D3KyQhlnM0X6U
	vHL2tzYBsZlPp+rBZvyX8xywh3XGsuGSLf8gyVBhljYWQGGMQKFXpUb8ttZz640x
	xMnGv4WMhY8HsgpuUKx0dT1L/m4gV2zbALrIt8AgPzjkOvYdqnLaPDg9i5rqWUHk
	OMvQ3Ympz8GyOHBBORJp0+P4JfgIKPE2iF4nhzwY+i6d7vJM+VHQ7hfGzlG/XxN5
	GAVjg+vepgOyIyW5VdAGkaCdjs13p0eSuCBH+/uJT2PI1LX6gGIzEGSnlzOp50Ss
	BJ0oSbVoWPBCo7gMAEndtTjj4Vzw8FmZHsyG4rmpMd01ZUz/7PcjcaWcrxZc7tw3
	3p2hUA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fffag8qsb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 17 Jul 2026 09:58:42 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-388cfc4848dso9327945a91.3
        for <linux-phy@lists.infradead.org>; Fri, 17 Jul 2026 02:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784282321; x=1784887121; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=z+VEJxZksuKjQPEcKoxqOAxex5MXE3UzHoNnHjJ3PSo=;
        b=AB3f3kFFMX3SysbnZxWkp1GzTVOToQX/cH9eiYtujQQ+t82DuIlca9IAtZoae2MWKM
         DFB8hg1/yQcCHu6/eDkvQI1zhCiQGdQ9Uvk9SlIShj08gL/f3BnEZ0DOEbIFCMknBImn
         m84Qo+xOzegULXuSAzp/J0AMUjGJIiEGMdksrpmysujeEP+qd8EH3h/pUJh0GBuZZQ3G
         qSHDJp5e9dfUl85Awo5XgjsgcbtAmA398/87Nd1ORkUh1pB6hp/CMecPs4/Py3cXLIGl
         nbNw478bs71euWkQ9umpQn73GqEaVLzEpD0HjDbRa7CUnP9BnM7dC5PeQ4XoSXewg1DL
         cQJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784282321; x=1784887121;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=z+VEJxZksuKjQPEcKoxqOAxex5MXE3UzHoNnHjJ3PSo=;
        b=OrG1Fm8IX8UGuPyUuH+bJ5YUPFoyzcCsA1NY8FQ0VX3GwfClupGT0gjSF5wArRKkQq
         rGKHWUpQhFU2N0svQYwYn2rvJnin8cRO6jVjm4y1ZQpPxEBgeLnA25gQ2MgAjHiI/P06
         9HW7ESNITzOyxZk8ks9j4kJaFGQUihjK1hxatM9D+ZU709PDDHH9N6JPcVrWWxDybwmJ
         jfhLh9X7hayt4s/jnonTcW1iQZ8b7uyckdishtGEQ8ROV4ZXYsN4XvKkItZQX2BI/zIZ
         QHFu9WXJd975s7n/f4/2w6pCPyBXErN7pKpqLavEe9ClesZw+XdetrfpTF1kPd4Ca6qh
         OQYQ==
X-Forwarded-Encrypted: i=1; AHgh+Row+W/s79xvapTt6Jjgfgbk3WrPX/G7xrRY07bKZ26JlsNFz7uLO5PkkMqLbuoF0CVQtgKqnCsk/TI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwF9NxStqJKrW0ilZbT/ZzI67X9r1eJ/NV7+Z4UsARYMC6nnFeq
	ijPAovZLJYo4z1AItG6j/01kfzAcC5YEmR/RHsB9nzKpJ6/t69Mfzbk+i93PWoj1gliv3yf1e3m
	dQxhIJzQgvaGFmNzemVxvQRt7nco//evs7ctWG/vcs/qeqrarkGNozrFo5+kH2CWKsXRP
X-Gm-Gg: AfdE7cm3W+VyYntxmmulIsSwyDe+xWNTarLSq36vXmJd+e33Nf1RdMycpVuLzuqbY0O
	xHP+Gte4sIuqVlZB3bRowGb67ZJT9gipxqGOYfrqrZ0OwMZE6FCcHfncVzyh3o+VqLEf3BUHxiD
	oRYStUvHlNr37XpTVw94AewTjR6p7UQBtPV7mYxQmkpawHQExLe1hBDRUcY9G0PGwuTbwD0NmCj
	C1SMLotmjvbMadgXiSlCXqH0m+hBoyu1EUk7bsznBVUpNrSJsq6nM8fhqDEIb5dpnr8oe+jZFqb
	1nBNsf091grGGD2Mm94XB6wufaWhJdnyWehgbY4ux18skq0cxpwboVPNz771r7777hwry8B+C61
	+2jYJoC+f2rOiIDWUvm+Ao/liGpMaQ1Cue6fvOYTLHUScDNc=
X-Received: by 2002:a17:90b:3dc8:b0:38e:e9b:ffa4 with SMTP id 98e67ed59e1d1-38e4b3e1419mr1736652a91.6.1784282321384;
        Fri, 17 Jul 2026 02:58:41 -0700 (PDT)
X-Received: by 2002:a17:90b:3dc8:b0:38e:e9b:ffa4 with SMTP id 98e67ed59e1d1-38e4b3e1419mr1736630a91.6.1784282320868;
        Fri, 17 Jul 2026 02:58:40 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3142a02b7f2sm5586375eec.13.2026.07.17.02.58.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jul 2026 02:58:40 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Fri, 17 Jul 2026 02:58:33 -0700
Subject: [PATCH v5 1/3] dt-bindings: phy: qcom: Add Glymur QMP PCIe
 multiple link-mode PHY
MIME-Version: 1.0
Message-Id: <20260717-glymur_linkmode_0717-v5-1-4f9e87a61463@oss.qualcomm.com>
References: <20260717-glymur_linkmode_0717-v5-0-4f9e87a61463@oss.qualcomm.com>
In-Reply-To: <20260717-glymur_linkmode_0717-v5-0-4f9e87a61463@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784282318; l=6354;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=P1Qbj/JFHFMO8P73x0LZ+S7oLzHtylxsVmlF1u/snvQ=;
 b=nxZrqHhffQuMJi6aerasNH23mT9WpofnKlw0P9qN1mdklH5XijrHhNugNOK+YCDxWjkt7LeK6
 KWROGe7os7rBhGuHkbWgPZRG5SdBLGpyJfo+4gHmQWQtRd3YTI0BVwG
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzE3MDA5OSBTYWx0ZWRfX2krfxqpNM8nR
 tn5SFGKfis6Oe2iWI2ylhWsa+GZES14cpWD7W/L7JkRVF+rut4KtOVT0PE3NaLWJIDe8HvsqrwL
 tVqRiCfRRUcxsqUQSrEEJwDWMt/Yc5I0m78V0rc4Z3DlIgmbeOvjz81mEFmER+e1utXV6CJ6m4S
 t0bX7M4Sc6+aNXuQ6y/QPNEkGeaX1uJHLhTUnPVgRo6KC1su0H5Au/Jmtp033WTYt9f/WdZ9y1K
 2Smg0wmI/xsDqkGIO8eiaongKGu0evKcgp5GMUtu89zGUmho+/iVcdwF3v6G0CgV0j4YNO98TnA
 /R6oTO7UZgYrIWm1Qp7t0H7qFGrTTr3otCbwJVrAQvUvGiF/J6ZIKdaQyGb0gHV7cdhK4fG0deX
 3Hyyuwz/knZRYUqD/qf4aPuB2W71Ln6JDaM2p937aMJoLKp10Dxhc2RoZ2cedfBnpIgFvY3hlsY
 ee7QsgV7T1t+HHu2Emg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzE3MDA5OSBTYWx0ZWRfX03yPiAZL6KV2
 V6+EqVX1tFFZ/LtU+mxv3zM15FuJGkeJZyQoSUDxCQ7jwy+TMB+mjjs2kArEcQqRYKdGaQvaPKd
 +zuoiclIeAd/IrOUrDYBtKruh9HO/wA=
X-Authority-Analysis: v=2.4 cv=KZfidwYD c=1 sm=1 tr=0 ts=6a59fcd2 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=yAdxKSRqiqocnpK_7ewA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: SsOgSDn9MSl8WV9CRBE4TvtvEJXdvjmj
X-Proofpoint-ORIG-GUID: SsOgSDn9MSl8WV9CRBE4TvtvEJXdvjmj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-17_02,2026-07-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 clxscore=1015 malwarescore=0 spamscore=0
 adultscore=0 lowpriorityscore=0 phishscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607170099
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260717_025842_725764_1E40A998 
X-CRM114-Status: GOOD (  17.81  )
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
 .../phy/qcom,glymur-qmp-pcie-multiphy.yaml         | 176 +++++++++++++++++++++
 1 file changed, 176 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,glymur-qmp-pcie-multiphy.yaml b/Documentation/devicetree/bindings/phy/qcom,glymur-qmp-pcie-multiphy.yaml
new file mode 100644
index 000000000000..73550f77e9b6
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,glymur-qmp-pcie-multiphy.yaml
@@ -0,0 +1,176 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,glymur-qmp-pcie-multiphy.yaml#
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
+    minItems: 2
+    maxItems: 2
+
+  reg-names:
+    items:
+      - const: port_a
+      - const: port_b
+
+  clocks:
+    minItems: 10
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
+    minItems: 2
+    maxItems: 2
+
+  power-domain-names:
+    items:
+      - const: phy_a_gdsc
+      - const: phy_b_gdsc
+
+  resets:
+    minItems: 4
+    maxItems: 4
+
+  reset-names:
+    items:
+      - const: phy_a
+      - const: phy_a_nocsr
+      - const: phy_b
+      - const: phy_b_nocsr
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
+    pcie3_phy: phy@f00000 {
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
+      reset-names = "phy_a", "phy_a_nocsr", "phy_b", "phy_b_nocsr";
+
+      power-domains = <&gcc GCC_PCIE_3A_PHY_GDSC>,
+                      <&gcc GCC_PCIE_3B_PHY_GDSC>;
+      power-domain-names = "phy_a_gdsc", "phy_b_gdsc";
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
