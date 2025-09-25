Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46E50CAC5AA
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 07:05:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8I24Hl2YQH1WSL28lE9VqXdlxrJuDO9p+1u3x3R1aTI=; b=TvwLtD89hB41BM
	Lc3E52kNsZh6YQzQwQqEcp2hi/ZWcB4sQQWNivWn5gIusgkDiUDmznHC7FUQzppbgxo/lE4Dime8v
	0XH5/iKDPEDQ3vsXurX9KF8ICZx10xtRD76/XC75YyHcJn9JTcq1QVpI0e7jUzPBcWVOjrkfwowJh
	UaEgr3bcwRn0oeTQ+y89EhvUpCVFJHgqAOptd8ZH1d06yI6Jah8gA5FmTN8tB5sSbHa5g9cZp813m
	KhceT+KR/aue+z50+3UU49ESJhfcmfuhbzggbbsNMrHuCnxHOlwdtNyIAJazjuwSo3rRS0HrqPT6e
	4vZdTJ0b2pRqESkgidKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1g2j-00000006Y1Z-492V;
	Thu, 25 Sep 2025 07:05:29 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1g2i-00000006Y0b-0RlZ
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 07:05:29 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P1GKx7023756
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 07:05:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2e7Hy87wIaFmYTkT/SRJPCIfc6N0tMOhDASgzvKcFpk=; b=aVaXGckP3xZHpeRH
	dWVjafdziEU7gMMx6CiLzbJg3WZpSYr2io6UOWDH6OzAVHAJD5VqVtB9X3eQZ/Qy
	JiKKEp9gZYNgPi1pN9C+IyC2s+UsyPGe0f2TQdUtkRVG2KoTX35JQkoz/Yj0SsdL
	rNW8ku3MkkTM0HPDUW8+XfLdVWwj2zbgqUwvdS11oTrhFVbFDiouacMwAUwOsKY3
	Gf7WeH2HEBYRwwrVexU412u7PbavGkkc4Fq0ZJcRS2xS+RDeINdNtdNU98rJ0/R5
	0Znv1YYe609GfF4bHYaUuCLJQqLZNXGL1H5lnNN6u0gNSSnpYXKn1juymL/fV7X8
	s1SFwA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bwp0e5fr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 07:05:27 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-32ed282183bso190601a91.0
        for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 00:05:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758783926; x=1759388726;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2e7Hy87wIaFmYTkT/SRJPCIfc6N0tMOhDASgzvKcFpk=;
        b=oKN3e0oE+X1f853i9DPf/9vWy6XVQyiCxXqyvHTnqG5CWE259MCakqbjZm+3B0vFOj
         0Lb2EYhUNND5DyRfyQetKJIODDYJUOQszxMceHEKfO25zJcKRtOs434ENCl6OWKPMda5
         RYlIT2cISQWlRXYEWmkGGjQsKEEYu/SBRjf/We6vMZXD2Qm5azZeETmNbmXk02GQG/EX
         nqMKCYbhbDODiYIIUD2Wj+3HoTK18dGu3Ed8m7fQAEUhkYCTEpB4E5dYJ/bZO6/xvY4m
         z5lvgy/WXQOH6j42J6zrqp6jnBcuXSG/y9J5n1kDgkEKUdDtu/q8nGWsMOF0XZuB4fGQ
         UWDA==
X-Forwarded-Encrypted: i=1; AJvYcCW1wSI/E5lpGMDyAF9HFfJdtspRhZDhg5aSnSE5dmYmOru/N/u0983BgkpjNYyKfATmAQ449bQnF1k=@lists.infradead.org
X-Gm-Message-State: AOJu0YyC+MBZrSnF3s0uRLuJlYwhuH/1je2MJR1OnZuSKyVD3jQ9m3dp
	iXvK+I4FbqbAuIyq9U+MFC9uDimS6i6AbOofMU263PPj25k40lp64eg6NAkfC4+FoMODUljNwni
	ZouIkY/jH72NBScdnxSD0BFvu6FLf9GL48hRorLHMTVNiOsY0wZr74wk/sMczFoK0+FPN
X-Gm-Gg: ASbGncuYUCqYSW1QyxdJhNhkzKPnzN1dSqHy/3qDVdlbfC9GrxhemS9VHhshJIFIvvw
	trxDBvsf/nc2QtuQ9FNwDpuNUwyVKhqopE5V0ZEtsOlq7YF5og+yrz+MLADXAs82IZW5U0k8jh1
	t81fX02BU7z3d4oGxDXEefaSMCMYfiBfqGU+ZS3tXwBL7mRH+ldpaj7huPeVmLJKQNExRaWgwhw
	lxgb3uwLSwT3M+HsNuBW6tl1NQZWeF/oNb8pWkQhWPdeh1urJNFSWemsgEepghz4rWCjM/7+jaX
	2u/umDSa1O6LPq23tHycrJe3Gzi1tlbVDGLzZr07Oh1o56b3rGsLRQyzmDCXasJ8LaaDACN28BE
	GVP7fPGpBJzJ0X+AtBx97aWIm7N+f/HkvFJ1Re+Ar0I8rV5dHY+je88/l
X-Received: by 2002:a17:90b:4d0f:b0:330:b952:1069 with SMTP id 98e67ed59e1d1-3342a2dbeaamr1385467a91.6.1758783925808;
        Thu, 25 Sep 2025 00:05:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGCpqcvdQExDN/tcMkaqHwuJZtGGTfCqnGGzDy5L8LFUtoOVfzw9y7B/380xTtLfWXC04SIqg==
X-Received: by 2002:a17:90b:4d0f:b0:330:b952:1069 with SMTP id 98e67ed59e1d1-3342a2dbeaamr1385428a91.6.1758783925188;
        Thu, 25 Sep 2025 00:05:25 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3342a2bd584sm914253a91.0.2025.09.25.00.05.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 00:05:24 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 15:04:47 +0800
Subject: [PATCH v6 01/14] dt-bindings: phy: Add QMP USB3+DP PHY for QCS615
MIME-Version: 1.0
Message-Id: <20250925-add-displayport-support-for-qcs615-platform-v6-1-419fe5963819@oss.qualcomm.com>
References: <20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com>
In-Reply-To: <20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758783908; l=3580;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=upWyBh8lqfmu6LV7sTpbUr+WwNLCQ/FfInBDAu5O+9Q=;
 b=q8QTjt4okaLrL3p8+JMm94E79JTZZNoDPRaTdjR9Z4pKfRZoQHUIoCdwtYknqyxQ/TKHScZ1h
 VvgnhdjPFT6AMHcRVzzdSJH+4MJR9pH5fUyv4MuUabA8/ITet6h1K0e
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=KNxaDEFo c=1 sm=1 tr=0 ts=68d4e9b7 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=z8W1oWq9hX_DlPyfQGsA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: fA6_by9whlsACnnKJUFtaH82ip_pP8Ha
X-Proofpoint-ORIG-GUID: fA6_by9whlsACnnKJUFtaH82ip_pP8Ha
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDEzOCBTYWx0ZWRfX9SzM6z8K48xO
 B2wTVlttwE/Rkop8DjV7jVVBTpqn7B/IDtim2eEzr+2vSLP0HyeTE6nliXUGUQz15kZh2Ifioek
 NGoQltsctbGctQtdTAHfbJnjFJca3LLvnkJapE7ao+xQd7K9WYxzmQ4AJ82UMBDObX3IL+ze6gQ
 yPPBS4i9Lx5tamiq8virtFgjwk+lewmeVIMsoWwdUPXu4yK7p1zYn4N3a5XIeygzgoaI0kvAPcW
 3YuwxLJ2a7A1dEe3utuMxKKtF2zH+dDUj1Nav0JOWRuJ2kwXOEVa6X6x/gJCA/KoGq+CWrgarnK
 psLapzfFomqQ89NMZ/DOWmVyVZv/p+aS5IgZtbi7XHt7uJ6k7OTK4u3YxfkKqq0JLxYYS16zYEU
 k1SKnZJP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0 suspectscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_000528_270686_011AA2F2 
X-CRM114-Status: GOOD (  14.86  )
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

Add device tree binding documentation for the Qualcomm QMP USB3+DP PHY
on QCS615 Platform. This PHY supports both USB3 and DP functionality
over USB-C, with PHY mode switching capability. It does not support
combo mode.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 .../bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml   | 111 +++++++++++++++++++++
 1 file changed, 111 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..efb465c71c1b5870bd7ad3b0ec215cf693a32f04
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
@@ -0,0 +1,111 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,qcs615-qmp-usb3dp-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm QMP USB3-DP PHY controller (DP, QCS615)
+
+maintainers:
+  - Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
+
+description:
+  The QMP PHY controller supports physical layer functionality for both USB3
+  and DisplayPort over USB-C. While it enables mode switching between USB3 and
+  DisplayPort, but does not support combo mode.
+
+properties:
+  compatible:
+    enum:
+      - qcom,qcs615-qmp-usb3-dp-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 4
+
+  clock-names:
+    items:
+      - const: aux
+      - const: ref
+      - const: cfg_ahb
+      - const: pipe
+
+  resets:
+    maxItems: 2
+
+  reset-names:
+    items:
+      - const: phy_phy
+      - const: dp_phy
+
+  vdda-phy-supply: true
+
+  vdda-pll-supply: true
+
+  "#clock-cells":
+    const: 1
+    description:
+      See include/dt-bindings/phy/phy-qcom-qmp.h
+
+  "#phy-cells":
+    const: 1
+    description:
+      See include/dt-bindings/phy/phy-qcom-qmp.h
+
+  qcom,tcsr-reg:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to TCSR hardware block
+          - description: offset of the VLS CLAMP register
+          - description: offset of the PHY mode register
+    description: Clamp and PHY mode register present in the TCSR
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - vdda-phy-supply
+  - vdda-pll-supply
+  - "#clock-cells"
+  - "#phy-cells"
+  - qcom,tcsr-reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,qcs615-gcc.h>
+    #include <dt-bindings/clock/qcom,rpmh.h>
+
+    phy@88e8000 {
+      compatible = "qcom,qcs615-qmp-usb3-dp-phy";
+      reg = <0x88e8000 0x2000>;
+
+      clocks = <&gcc GCC_USB2_SEC_PHY_AUX_CLK>,
+               <&gcc GCC_USB3_SEC_CLKREF_CLK>,
+               <&gcc GCC_AHB2PHY_WEST_CLK>,
+               <&gcc GCC_USB2_SEC_PHY_PIPE_CLK>;
+      clock-names = "aux",
+                    "ref",
+                    "cfg_ahb",
+                    "pipe";
+
+      resets = <&gcc GCC_USB3PHY_PHY_SEC_BCR>,
+               <&gcc GCC_USB3_DP_PHY_SEC_BCR>;
+      reset-names = "phy_phy",
+                    "dp_phy";
+
+      vdda-phy-supply = <&vreg_l5a>;
+      vdda-pll-supply = <&vreg_l12a>;
+
+      #clock-cells = <1>;
+      #phy-cells = <1>;
+
+      qcom,tcsr-reg = <&tcsr 0xbff0 0xb24c>;
+    };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
