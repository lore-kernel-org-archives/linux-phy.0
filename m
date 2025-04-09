Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6617C369A1
	for <linux-phy@archiver.kernel.org>; Wed,  9 Apr 2025 17:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=845Oi8AJdKoYqME2iTcEnHhehu0rvFcS+pczneZQLhk=; b=fWUq0Ny3OTd3gb
	Cs2g6/T/uslf5Wjg1Rd//VgLPuBcUAaYq+VcNXbAx6leMrgJz2xIu/0Odh0jW9ckb60uOUHy3PthI
	78aQZQLalwjOyydI58ehBfnBpH9IJattun7fc5oiqvdIiZ9CpZIYYi462nAwcOjHswkg/BHs/UcpI
	NVrKDDlGCw6dwnbbGYcRIS+uMI1NdScLdLQtf+rsM3SQk7zy63N564kXtvX5t/9wtStu66sMlou63
	sNHz/ueG/W8xkgEmxLO2Wkh3cRdn+4pSMgW+HMJkwn2WN1L3SAGp1u/uPserX63qLSUYYd3ppe1qY
	PT+/XOAg+EyDtoFMFxog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2Zaq-000000085mK-1GcH;
	Wed, 09 Apr 2025 17:52:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2ZXK-0000000850o-428R
	for linux-phy@lists.infradead.org;
	Wed, 09 Apr 2025 17:48:32 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 539HZqkK002276
	for <linux-phy@lists.infradead.org>; Wed, 9 Apr 2025 17:48:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yWhw1LvOhszFsVVXvJgT1USSc8+4N0aEBK16X6WxLSo=; b=PIvmL2M/dNP+Izc8
	SPtF7jPKvzmtovEKYhDSHKF3YwulHZV1xPA0Z7yVCsNeHvCws1Q5MyDyxI64vHAn
	CpQyn8Wxtkf+CxvcrrIABxItoBvqyPWkg2Hm9EHhEkRzp42w6QB+NjURdUpk+gIr
	opeLus+zUfhR0jvWGffQLFWgG9LoFu7V4hkaQauEQNy/8YRqJ/xHhtViuHlLey6f
	vVCMEETvGwuCvOMu+yLqOdSy8Acae4n/XLQaBrLOZNsvVipC1QFbgpKVT+K9pd2J
	eVNeHoixDIQoDYvize+AeaLPmuAxJ0E7PB1aKQdrVOJttcEjycpPiOyZAvqMQ4xr
	bnrGbw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twc1m54k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 09 Apr 2025 17:48:29 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2240c997059so85881695ad.0
        for <linux-phy@lists.infradead.org>; Wed, 09 Apr 2025 10:48:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744220908; x=1744825708;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yWhw1LvOhszFsVVXvJgT1USSc8+4N0aEBK16X6WxLSo=;
        b=j+KewzzL4dh/JOFvDtD5hX2uZGz+iJaCqm5xXjosIxU+gSMJor1gNwxoDJMIZfn7pg
         LRW33fGAhBMVlDaCgWzxJAt1m+IjFCWGuNvEMp7iZOZuzJXfI4v3Sod6s2cU0pZ9d6cm
         mEKb1jnvEhJMnkZZrMRdMpHoq2KgDKpsN2sfcbYqi6T1Dvr4YyirKo7jtj/G67ibIol1
         w2afexsTeu6P3VyjjHSUCOyAdkD76xskhD8bSIhovT00mrzsIURP8jtDPp7n1ELQ7P0o
         /8JLDVB/3ec2HClap3+gktKMteWyzQMVO5EsKrOBMK7fqRjOo0iWx4xjmlnJMwsw6xGm
         MCwQ==
X-Forwarded-Encrypted: i=1; AJvYcCVNkmEQZtVha8+Pb9EAM2GfilfDVpCH39+6P+of2rGKK1N8QZGlIESspt4W8J3GAKC83759yVyDnFI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwddNxpvvZg2X0N5AJjuutYnz/Y3RRMZ6TQtDoTXwcaJEBaQ0BI
	TCF+/RklB5O9gV6er21//yk1Tx0/xSOg4+FteeZqpRQUTH9rVh6KeiFq21OTj6PEbCWgI5uLrKv
	aglKZdEb19misa50UwawAVy9ZAMOAukwuv74Qm+GhlWnsdZpVCrHF1z3CBei4aYEj
X-Gm-Gg: ASbGncsg9xEkAwwatbeKa/58Vmm9WsGrPSIFM0vFTE7CFeEs30/JlLde/QUo2PCQwNP
	kUUvJRk4admDIL3HRovS91Xivo9PBhVzp3NxYQoXVYoKe1FpAIogIniYrkKDyJ8gRz14vpLLxvV
	6V3i4CX9nmDh1fGIkhpyACw+oF4iTkM86JjyPEdCn0Lc3Ot86K02NMs9hCY63SQaiiujpW7uKDb
	ouViQj0A5a+Gk9STtZqH3d6QpXOzQSIOGErSxgGefWU38xMONiF5ZLJ3d1ARqC+zbH+d6Yh8BNa
	zMGFvE/Tnbgu1AOiOIAPYlTOyXh9oQ0b1bTK5GA/6NAATk6xw/r1Ou3+0lKiNCnkJvc=
X-Received: by 2002:a17:903:984:b0:223:6180:1bea with SMTP id d9443c01a7336-22ac2a1de15mr59877165ad.37.1744220908512;
        Wed, 09 Apr 2025 10:48:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEoY64Nb1reLud/xkdxjipEsuosAQTCcuRB4SYeUOoKWO1ItlQc2B5Vyzj7uQIhCCOyhDkH1g==
X-Received: by 2002:a17:903:984:b0:223:6180:1bea with SMTP id d9443c01a7336-22ac2a1de15mr59876855ad.37.1744220908113;
        Wed, 09 Apr 2025 10:48:28 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7c97a1bsm14964005ad.148.2025.04.09.10.48.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 10:48:27 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Wed, 09 Apr 2025 10:48:13 -0700
Subject: [PATCH v4 02/10] dt-bindings: phy: Add the M31 based eUSB2 PHY
 bindings
MIME-Version: 1.0
Message-Id: <20250409-sm8750_usb_master-v4-2-6ec621c98be6@oss.qualcomm.com>
References: <20250409-sm8750_usb_master-v4-0-6ec621c98be6@oss.qualcomm.com>
In-Reply-To: <20250409-sm8750_usb_master-v4-0-6ec621c98be6@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744220903; l=2425;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=Wud7UEFHXJQ0decZnINKeSi+hAdh0llCKpYCfH/oedY=;
 b=v1B+o7WHLxEMTEOfPAhMrr55ozwTe5+GGQDr6x3JHHOW7mTjCYmzmwoZYNNYBILGRdl41NWGn
 9pKvj474EM0CzeyLEQY3Ka2pTbM5Ha9Eb+QjSEu0/aixSAKoc0wKgzN
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Proofpoint-ORIG-GUID: IiRtRpv-s5ntZLkBsPdNvVsqKggn1qLW
X-Authority-Analysis: v=2.4 cv=KtdN2XWN c=1 sm=1 tr=0 ts=67f6b2ed cx=c_pps a=cmESyDAEBpBGqyK7t0alAg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=gEfo2CItAAAA:8 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=_ZfBLJ5mcqDn8hZp9PAA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22 a=sptkURWiP4Gy88Gu7hUp:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: IiRtRpv-s5ntZLkBsPdNvVsqKggn1qLW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-09_06,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 spamscore=0
 malwarescore=0 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504090116
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_104831_140542_12B46FEC 
X-CRM114-Status: GOOD (  15.06  )
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
