Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77927C54ED1
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 21:09:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=845Oi8AJdKoYqME2iTcEnHhehu0rvFcS+pczneZQLhk=; b=i3hmAnZPQ0HfAb
	7wiEnSD8KjfVLhO6BRmUPFWrxRrvzjjigcz+TppZI6cT/kkcOf9SBSYhxON9OeamJo7deQRtkLObT
	DPkC8bZseoSebIiqu0OqrN5+vhYVxN2SBiUQ5vgnqqTLHRyaNH3aMwBvS+pKTXfs9CZWWmdAnvNlI
	EMuC0rVqpjmSfyGfaXk/as09VjJgmdSJiWNnCgt4wt3g4TRo+4QJ05dQwCSHSFnepjvXXZknNtpT5
	Pcaj9hTLTVU0wDE8UT4Eqt/fiq+2/Dk3ZpVEvUl/POsue6oOsK9JEP66Qw06WKb+8qj4KHgLgCF47
	o0LKmsRFAEMtAQN1asZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1Y5-0000000BZgt-0ajE;
	Tue, 27 May 2025 21:09:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1Tm-0000000BYqc-0D6A
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 21:04:59 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RGSC0R027807
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 21:04:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yWhw1LvOhszFsVVXvJgT1USSc8+4N0aEBK16X6WxLSo=; b=BMjK2La916AdOnI6
	lzQQ9SL18WKflK2peCZr8vrC450kRR5I8FDfuL5Pj+GkL8I7Rv9a4P9kDncVKXhM
	dWm826x6Vj4bcq8rJ2bV9duZRQgUoldLVYjQynNoMSbwgmNJJeH4q1yheR54s7b1
	gzHijNHQ1PRSzblnFIb4/kwrupmvXYlEM/+24dkqiwpP2qNr6ImaW/4ktiQy++Nx
	mf6wwLjaOEgMW91/Q00xJNjTfVf0pF67dS3gM5LD+d6DSLYPhgVwM5aGqTE/Iq9v
	7F+Sp+WNciE5LGqCLXJkGJLP2236iK7u0V5yI1+5qszTY8ckSDbZK2z7omAn4Kno
	w2EInQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46w992j8kv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 21:04:57 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-742a091d290so2604418b3a.3
        for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 14:04:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748379897; x=1748984697;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yWhw1LvOhszFsVVXvJgT1USSc8+4N0aEBK16X6WxLSo=;
        b=eU+vk7xvWLK6BIdHw4PuTFxGjNnYDbyi7NfpolTzvnHPfjoNKZWwt+lU0QrqMhTJYp
         tHHWiu324TtJOgmi00puHKDyy6twCvX6mIz4mZaKqgZiUfcffzIePzBZNyRfjuQ26Kx9
         GyawBGNl+A3YpU7i8ETxzVrfQBSZ1Xayb0dGroYvJsxTbHbj+1Tok+0MEXyKEIEgxutb
         kRJNk2gZMDCJ5zqphLhwQdJ+2HvY7SyKxFd7HNNuj3+JV+6ApMPQe2oItOygpUQoJB6O
         u4WyirG4kfomSrB17eOducyeLK1i/okRzAe5CS1SYQeqrX0m+UT+/ln/1q8dCQ6uDKQh
         afZg==
X-Forwarded-Encrypted: i=1; AJvYcCVt2aIsk/hoSOPVAgpPDDTw2PcCwhEG7Z+X4mqBYmFLcF2w8geThM8uBjN2x+MpMWVpkHzCfOrvcnc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxzl6sPOgmQrn6OMAXxG2yBFDXV+vGSa1uIgrjuMoKAMfk6xZXw
	jNLn/eU9ZvLTKbvPP/GCj0dNzaIuN5u3zpqV6/+ubTTmHd0Njqaa8atT1PYQ0YLSSN2hirtv2+L
	5wJ30NfVgXLJPV9kUTaQCXWNtVxYyoD9UJnZzU0tk5KAuFqXeCA9ctzDKWnirE0d3/jhR
X-Gm-Gg: ASbGncuQg5VVLITMT4Jg8rUTEVh/gUFI8wxyoJaVbmqcSR777A3pKbJk7yzPZXVtsRW
	rtIAtNoB4XUn4ty/m9LA3oIVOJH3D5T70kzFMXuDx5nVkIPodTotDuxfq7d+SXGIhEvbBu533/o
	PCrvuI96FuJNT39kpChvaUGRsWKkyO4ZozALow0fxwU9TfMs4Zdp6H1HfwJYoJ/UO+5+ShZrGgJ
	mYdeOLUXveRhrAvHoeGCvtWA4TalII6l2aoXmkKeY5rdLWPzuzqYdqBKCcF0WakUxSIbaQp5Yl6
	XTToIlX16OAU1TrT8+fkeIf1C/RBucpnqP4CDUZ1aWcNYUCF+UGTqAD7/gw/3vxeQt8=
X-Received: by 2002:a05:6a00:10d4:b0:736:6ecd:8e32 with SMTP id d2e1a72fcca58-745fe079d33mr22845414b3a.21.1748379896581;
        Tue, 27 May 2025 14:04:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGmO+062jTwbk+EfgkjkNmUp7R+SdrABrfM3fDJ/G+vfmwLBFmJuRS/yzv+9kvtX5aAipJvAw==
X-Received: by 2002:a05:6a00:10d4:b0:736:6ecd:8e32 with SMTP id d2e1a72fcca58-745fe079d33mr22845375b3a.21.1748379896160;
        Tue, 27 May 2025 14:04:56 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7465e64836fsm29167b3a.26.2025.05.27.14.04.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 May 2025 14:04:55 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Tue, 27 May 2025 14:04:38 -0700
Subject: [PATCH v6 02/10] dt-bindings: phy: Add the M31 based eUSB2 PHY
 bindings
MIME-Version: 1.0
Message-Id: <20250527-sm8750_usb_master-v6-2-d58de3b41d34@oss.qualcomm.com>
References: <20250527-sm8750_usb_master-v6-0-d58de3b41d34@oss.qualcomm.com>
In-Reply-To: <20250527-sm8750_usb_master-v6-0-d58de3b41d34@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748379891; l=2425;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=Wud7UEFHXJQ0decZnINKeSi+hAdh0llCKpYCfH/oedY=;
 b=FY9GlYlq2N3inwoifO8SkqjWHfzym3tmZX9bN0v1+GLtkQYvAnQtIlcyN/BdOACenHmj7V2hZ
 v5nudmTRmjBB3osJUy0giMKvuZiEGeBQCXn1Nmhej2+rqFaHmkZ3juW
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDE3OCBTYWx0ZWRfXxN5A1ZB/F5Sr
 i8TFz7tT4edr369DidaXikxeZKzMvoft2I3iaOHKLaydzviQrcocR+tZRjMow7wlbnmxqTHRu2c
 zAUAfSYsdCkgSnvdW3yH6dwNoGolKoH4v4qmVndKqaR86CWLwQ1rqHTsfDlrWfO3fm8ZIMzi+Vc
 Abzej1AHFvy+1yVVwfIp4dQbqVtQ48x4t+RRTOGb4WrDKSZgVkhCGYI4siGSed3J3aY3SoeuS04
 fT1S+A5/F8CGrYCWyyrcLweYxRYc9QSECzxDg/zvu7QdzCwSXpYVrbSGoQGUY0jvdWMOt/jfshV
 0bxCPyRpbxeRYsfk3q53oRtyBjtKdd1Dlf8AMHz3PSpkk8aCfTzoR7u/k48tivRzv6duiWyEXhT
 NZVWxpcOn68dLsqIFdQ0uU/QEk2jVQJaJe3QTyRV1/C/YGEX/O8Jpl7ygP2t3YKzQwgxBNuq
X-Authority-Analysis: v=2.4 cv=Fes3xI+6 c=1 sm=1 tr=0 ts=683628f9 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=gEfo2CItAAAA:8 a=COk6AnOGAAAA:8
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=_ZfBLJ5mcqDn8hZp9PAA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22 a=sptkURWiP4Gy88Gu7hUp:22 a=TjNXssC_j7lpFel5tvFf:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: sjy2QfKAjp4m4_RFMfJPxE8Qm6GBXwuS
X-Proofpoint-ORIG-GUID: sjy2QfKAjp4m4_RFMfJPxE8Qm6GBXwuS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_10,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 impostorscore=0 phishscore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 mlxlogscore=999 spamscore=0
 adultscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270178
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_140458_123093_07FD342C 
X-CRM114-Status: GOOD (  15.43  )
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
