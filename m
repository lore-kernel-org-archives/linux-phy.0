Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9943AC369C2
	for <linux-phy@archiver.kernel.org>; Mon, 21 Apr 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=845Oi8AJdKoYqME2iTcEnHhehu0rvFcS+pczneZQLhk=; b=Lu0q/jYmy720ns
	UnyTJyYuA8nHxjijECOb2IT5yi2ZMA7PxFMIHHdyscw9JNlAcIks/ZVWZCM3nIoYhw9jNAEl7luDV
	NPKgi5VlgKTCG01bW4MMobYUaZY6XRoa+QpMiIuVt/zGIruPrrXy1uA6IoZe/MTtbxt/9loCMr5W8
	HJnuioKfr1HH7UCyUBOlvco7Xz1wT+iQ4geT5yUmriH3C7waNAXtTXFssDn4lDOr5Jd0RpOnuxKKy
	VCZytnjHY0mjmzvkzDUewgzZm/Zt5M/+2hHpI4PeSEz+iqYbef5BaH5E+vJKxlyFMH6dtASPy7Ku8
	5PLGqMSeAoZVBP1pnGLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6zQf-00000005IsW-1WTE;
	Mon, 21 Apr 2025 22:15:53 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6zBx-00000005GZ6-2tQy
	for linux-phy@lists.infradead.org;
	Mon, 21 Apr 2025 22:00:43 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53LK4qid003899
	for <linux-phy@lists.infradead.org>; Mon, 21 Apr 2025 22:00:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yWhw1LvOhszFsVVXvJgT1USSc8+4N0aEBK16X6WxLSo=; b=HilkUqmWXxAwE28F
	Viqe2dXhxLlb0IxwGEVep9mG4tuUu48kMS3H2cbv9BRJPX8nZiiH7i4do0jxXPID
	Zei4XhACINfxA1KXR+SvSDzLohP76oMTVabm8odlLYo+YcTwzWQa2Wq6UdeDp/TQ
	CGgRXX2gfiV0imKXzV+BX9x6efyem/16Pak6azTdXI2vS/XVzji6pwIR4xTNvIfl
	deGvcP6QZFdLwR6nMoegyymR1H0uGr2dDTh6Ighp3WAO0HzNKdjlHZ2pmGW4DJtP
	XQ8So+lYXg6lFwg7Wr0fdaojG7AWzBwbET4rWz3ZUtAFon9C6B/sXG3WdVAQ6uGG
	BbcheA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4641hhnh35-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Apr 2025 22:00:35 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7395095a505so3171010b3a.1
        for <linux-phy@lists.infradead.org>; Mon, 21 Apr 2025 15:00:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745272830; x=1745877630;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yWhw1LvOhszFsVVXvJgT1USSc8+4N0aEBK16X6WxLSo=;
        b=MZSl73Lk7O+R2DRYzwhZQKwnaLsHiOVNWjNTbEEVXrICUO5VX6X3KNVK56r7IjkgbI
         WvBVQCoa2a7ivk9YkxLy8arwthxrwJLrrcdiPG11DY/V9mQKL8ffZt+xKMfBDh3oS+Pr
         obM24BkLkukZ6/SngsypOw8LAV+lMWuNePg4fpr2LkP1KxDxivorgDhwY7sz6AHHZWBq
         /E0MWBKm1D9WIVz7cB7DL8IN/UwjxNNHWUMyYN8k+HuDmpBD7bIEOMOIboh10pWl/fXJ
         9hOf7fafgewoDLS2CbQfecX8m2phs+p4M+VwVyhfeIXD8A2TFmeu6oxBJ3a7Fcjc/xpy
         arNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXkXZ12TlfGfZo/fyI0x9enEQ95F+n34rZ3u1W1t3JK6rnO9kyIVe2XCzt0C/0RBelol3uluypDkI8=@lists.infradead.org
X-Gm-Message-State: AOJu0YyqPIya/cm0emF1qe+7GfWYKptFk89cAxWsxx0odTQAc9aOrYDy
	Rab7ubsatOVggdcCtIl3mHKbVOQmRjQXsDNx89qGljQcVc05BDadSVL3DUpf+C5GRPiIwBhGj84
	irhpiL5brBli5O9/VMSoqfwC4QMHAJ2eBpg76E7GWZFsSLA3VgPdIltjh2PDn7wx4
X-Gm-Gg: ASbGncvAvRpVteKWYmJny+1M1OXyAlWRX9Fq765YI3DjIEaWPOb8TAGy7hraUUq5IDx
	G4XpKA5HtbY7Bd50Uz2ATLkMW9qX98Mupn+4ccgkiQgjw6PPgrFZXjMS4ZBefha1y/XpaHh2e1I
	gkYXx6NPOnLxyRtuPSowdjD9JtDitGmts5C7RZHkzg5Xm+2aXd1fXvRqQ2V0AifvPACWJC4aNM7
	Nd5IVDUzt47HgZbt2KLkXEWXNKGZbBOgHi2KRx5oXX2uNPxrHR0e/5LfqI2bvV4nyf/2h2m9GE+
	K8qxzFv6bX85exxra1IywytDgWXqUIQ7mPlC82JXHEgHXGMRRJW3oGOG7FsgqJ20yWc=
X-Received: by 2002:a05:6a00:98e:b0:736:5c8e:bab8 with SMTP id d2e1a72fcca58-73dc144c7aamr20385408b3a.3.1745272830075;
        Mon, 21 Apr 2025 15:00:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE4J8IINuI6AyXzme/otRBuArMyNq7mt7WxH5Fyest1FG90iDOU07/f3k4YrNeQTPBFvXAHvg==
X-Received: by 2002:a05:6a00:98e:b0:736:5c8e:bab8 with SMTP id d2e1a72fcca58-73dc144c7aamr20385326b3a.3.1745272829473;
        Mon, 21 Apr 2025 15:00:29 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbf8c04c5sm7107917b3a.24.2025.04.21.15.00.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 15:00:29 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Mon, 21 Apr 2025 15:00:09 -0700
Subject: [PATCH v5 02/10] dt-bindings: phy: Add the M31 based eUSB2 PHY
 bindings
MIME-Version: 1.0
Message-Id: <20250421-sm8750_usb_master-v5-2-25c79ed01d02@oss.qualcomm.com>
References: <20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com>
In-Reply-To: <20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1745272824; l=2425;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=Wud7UEFHXJQ0decZnINKeSi+hAdh0llCKpYCfH/oedY=;
 b=wiSsNBP6n3SjbBERNylScCBtTJlneM21/7EzLO8v2iwkdZFE1SInRBkCTbCfb6uv759DgDsKR
 s5qHIbAdL55DeXzCxEHZ1VzgkSDumKF59mzN/WW2mOURwT77Xj3/T1U
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Authority-Analysis: v=2.4 cv=Fe43xI+6 c=1 sm=1 tr=0 ts=6806c003 cx=c_pps a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=gEfo2CItAAAA:8 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=_ZfBLJ5mcqDn8hZp9PAA:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22 a=sptkURWiP4Gy88Gu7hUp:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: sVI9A6t_RCur5oThITsRJeVg-0bGJ7ma
X-Proofpoint-ORIG-GUID: sVI9A6t_RCur5oThITsRJeVg-0bGJ7ma
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-21_10,2025-04-21_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 phishscore=0
 bulkscore=0 malwarescore=0 mlxlogscore=999 mlxscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 suspectscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504210173
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250421_150041_753895_64F922AB 
X-CRM114-Status: GOOD (  14.91  )
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

From: Wesley Cheng <quic_wcheng@quicinc.com>

On SM8750, the M31 eUSB2 PHY is being used to support USB2. Add the
binding definition for the PHY driver.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
---
 .../bindings/phy/qcom,m31-eusb2-phy.yaml           | 79 ++++++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..c84c62d0e8cbd9fc1c0da6538f49149e5bc7e066
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
@@ -0,0 +1,79 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,m31-eusb2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm M31 eUSB2 phy
+
+maintainers:
+  - Wesley Cheng <quic_wcheng@quicinc.com>
+
+description:
+  M31 based eUSB2 controller, which supports LS/FS/HS usb connectivity
+  on Qualcomm chipsets.  It is paired with a eUSB2 repeater.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - qcom,sm8750-m31-eusb2-phy
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+  clocks:
+    items:
+      - description: reference clock
+
+  clock-names:
+    items:
+      - const: ref
+
+  resets:
+    maxItems: 1
+
+  phys:
+    maxItems: 1
+    description:
+      Phandle to eUSB2 repeater
+
+  vdd-supply:
+    description:
+      Phandle to 0.88V regulator supply to PHY digital circuit.
+
+  vdda12-supply:
+    description:
+      Phandle to 1.2V regulator supply to PHY refclk pll block.
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+  - clocks
+  - clock-names
+  - resets
+  - vdd-supply
+  - vdda12-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    usb_1_hsphy: phy@88e3000 {
+        compatible = "qcom,sm8750-m31-eusb2-phy";
+        reg = <0x88e3000 0x29c>;
+
+        clocks = <&tcsrcc_usb2_clkref_en>;
+        clock-names = "ref";
+
+        resets = <&gcc_qusb2phy_prim_bcr>;
+
+        #phy-cells = <0>;
+
+        vdd-supply = <&vreg_l2d_0p88>;
+        vdda12-supply = <&vreg_l3g_1p2>;
+    };

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
