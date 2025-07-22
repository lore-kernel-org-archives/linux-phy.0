Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01C1DC83F34
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 07:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4rMJUUIwhb1sBD4hH82JliSwnxWkQ9Wb5UqCK3qOuto=; b=mrwDVmwco9SPG9
	ri0Jck1rSMWGPBPWeoJacHWDsjXygBPuLOEpIm/fPTVsdWHQc5zyEfzawypyUxlJYbNAI8UgiQlY9
	mcqOxwHdzcKCcuPYirGQ8RbGPpnsNQ7SWW00OFB/K6OCPv/6ew+xkFtJIrc6XZivQBovb5whcDqnC
	8N1fuKE0fWAlviskfXDnV9X73ljVknqglEl8p5nIOrREJSvNKKx9L4AWyjE8uXkVnjT3GSIF7l6yh
	P5+kVJyws4Qv+Pxx0xaNfrrpP3BX10KROTHygNtf6vlWh1CKYcpMvLc5A/SZ8Jn2LufHYi0cS9hJn
	VN0gfO8jZVfe9vTjurVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue7Le-00000001cZj-3ElT;
	Tue, 22 Jul 2025 07:23:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue7Kh-00000001c97-31ow
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 07:22:41 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56M7E73w018339
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 07:22:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ahrBulyU4QSMtpu0KlTx4RsdzzFchdneJBpLgEVdzls=; b=Mf4mkhjWYpBhxUp7
	a1GWkk/1Sv2f1IR7Iijvav/IbpXYD7zl+Jo8OcvO0tyel+KNhiQ93U2InnQPtfIk
	CuN5YjbpkNKHoUWfof85UgROFs90SHnTP/3XKJIxvtbwZPglGERQHUUU9KJ+2RC+
	nauv7A1M/O5JwyDto5zKuniSqra7m3bSubptfQCXzBZTXz9n9zk1c+/TCcdD+HUi
	+R1jueB7H/QyPTZi36qft4zopumh/helhl1mUJRJZyW1UDvjhzMiMYIbPO7JDoqK
	8U2PsC4hGIXjWnXnXdVmQYhA+gsYaQ0bG3DGISeIbbg17Rg4H1yxwpQbRH6iQniM
	0g18qA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4804n9xump-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 07:22:39 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3142a5d03dbso1321924a91.0
        for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 00:22:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753168958; x=1753773758;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ahrBulyU4QSMtpu0KlTx4RsdzzFchdneJBpLgEVdzls=;
        b=F8Ey6gKABVWxU5ZJYh4Hw8UyeZMR5cDzrlz/kQGRra08yybQXBG2D3YuQ3xKM8Rf5X
         MButQXAW/t6jTeG5iA0GorApyqXrZ1zzrciqj4Bp1ZJaLXrAa8ohMHWJPmtxB7Iqs7IX
         2ZVwjeEwPHK4mAlRwJzmROQIaO90VUyfirhQZ1pa+a5T1jSShwKR8ea0AuI/uBDVcYzr
         U0e1kUbkR9NbRMcL8uJntXi1MSEH9Yu0pGocExtusAh7MVUEXdN47KkPDG4MGGfgCg0h
         9h6sycQDL/t7uondgIE2M505PgVqK84a8t3oo9wdwq8RZ1JaYLwigGXZdExbZNHbCtty
         GKag==
X-Forwarded-Encrypted: i=1; AJvYcCWk9E3tfCiaI/tPaihlbGd4auECh8PRXJjDV7iPMla8lioTsNTnDEO691Wohhz0wy4GeueblNhHiSQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yys+dLOnHhz4aeWJAoNfC0UGrxquZp1MRP+8sex66FFsaq/2op5
	xT58wbzKqwZ5izMMTbC8HxXL6eM3qTiY7VYglq6LGo7TWx4FvKxEBCfwlWPeprsdmaOtJu/znGO
	mPUB9UhEOL02ITU2UBfY92K6TDEhoYEqJ4XOAPYFNbikD8x1morp7if7bNOIDAkdV5Tzg
X-Gm-Gg: ASbGncu95RwbMDAsqu4mmXb+RfGQ9nIMs3iZtp45Zm+JYEWRHNojUNKzGLj5wYG/jI4
	Y9One+ZhAEM7jyFrqCzxn/qLYEuuEoPo4cfuWtQQuxUZreztG23ZrybMdF8Pj16raV4RPOqsbcY
	ACi9+J38/OwaHnwnlranMWW0h0Cv/qjHAP2t1+gzMK4NnYaiqxGsn6AgI3DcBrZzCZQm+KMGWVn
	doi6KrMWOP1OLTA9QBYr64eBuzsJh2fPLnnpKhBJvDUU17OIWvxe1JcYV25/DfpxZraCk/jTxQP
	5D7duwJApy4YKc7cVW1V3vF9BlibwY+/x8o+7two1flgUAz6sAcNI8rf0JkhG1RQHusmjPjjs47
	51aV7bsPwMi7LNG8xPuNSWxIUZDUvp0Lyumoi2Wt3Pc3R7vvutmviAR91
X-Received: by 2002:a17:90b:1cc3:b0:311:c5d9:2c8b with SMTP id 98e67ed59e1d1-31c9e7767fbmr13067021a91.5.1753168958329;
        Tue, 22 Jul 2025 00:22:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEWj61R7/p9w0dDf3iRKZ2LE3OM4e0kwtzjTJU0dUunJEF/B4dIihVqiHHAlGGrq42tM3d51g==
X-Received: by 2002:a17:90b:1cc3:b0:311:c5d9:2c8b with SMTP id 98e67ed59e1d1-31c9e7767fbmr13066994a91.5.1753168957893;
        Tue, 22 Jul 2025 00:22:37 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31cc3e45e6csm7490753a91.3.2025.07.22.00.22.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jul 2025 00:22:37 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Tue, 22 Jul 2025 15:22:03 +0800
Subject: [PATCH v2 02/13] dt-bindings: phy: Add binding for QCS615
 standalone QMP DP PHY
MIME-Version: 1.0
Message-Id: <20250722-add-displayport-support-for-qcs615-platform-v2-2-42b4037171f8@oss.qualcomm.com>
References: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
In-Reply-To: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        fange.zhang@oss.qualcomm.com, quic_lliu6@quicinc.com,
        quic_yongmou@quicinc.com, Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753168937; l=3578;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=UDTnjCmveSMGSp/9NQ1xFqa1/QflcdbQxJ1GccXnTeo=;
 b=YoL+Xx1wzPD3/qIMkTLFdtwm8HNMkESmMYELfdTMUCrTewkhorshB/5RAVcHRq4SwdOiu3BPo
 lXKaRSJmwq6BcU6iUavW+f2u7KPzXVqQYTEjJo8QVt0uEvrlQAZKJks
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-GUID: iJcI1SCn_MD7F_HKvePfCB-CNIa-61sZ
X-Proofpoint-ORIG-GUID: iJcI1SCn_MD7F_HKvePfCB-CNIa-61sZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDA1OSBTYWx0ZWRfXwXLPXZdBNvjk
 uIjyWGg64fo9Sc7mJRWJu/g290+9uR/ptZRWYC1vKUX8C+95GpQ2JlbQ7f4W+6XFzpAFeTDR59k
 ktf0J32LBIVYOtMmN49ljLCV7RUSCXKvWp44CzYRQYPeFSP5ddz4QBz6SGXxSJVldOALQWycNsS
 5VBZvqFIgC9OcfFyNa2w8s1wWZkgVpgeJoU1ojACzlNuRAmA8V66m5vSuctNTgkJZ9KVNv2tEDP
 d8S7ygk0pX3T8CC3HsYuXdywjRUGPqYSfQdonH68gcsfuV4pleRZA0j9C6OAQ8Ip+yx99llJeXz
 i9iZs+gwzHrfdIDPli036xJtm8N2WS3myzsKaZXcf8Ez1QhnU/LmOqD2W8ZWQaZVUmNA50RB9PN
 5BrjiSnpP9ND3peqg4wNZp2KEcZ2r1VNak9s8C37vtv7sSJpGyUyyOg6rgJEhoPIvtI2AJTV
X-Authority-Analysis: v=2.4 cv=DoFW+H/+ c=1 sm=1 tr=0 ts=687f3c3f cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=vvfQ0qTNUOrexlX-OJMA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_01,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 clxscore=1015 mlxscore=0 mlxlogscore=999
 bulkscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 spamscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507220059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_002239_774000_F275622E 
X-CRM114-Status: GOOD (  16.20  )
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

Introduce device tree binding documentation for the Qualcomm QMP DP PHY
on QCS615 SoCs. This PHY supports DisplayPort functionality and is
designed to operate independently from the USB3 PHY.

Unlike combo PHYs found on other platforms, the QCS615 DP PHY is
standalone and does not support USB/DP multiplexing. The binding
describes the required clocks, resets, TCSR configuration, and clock/PHY
cells for proper integration.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 .../bindings/phy/qcom,qcs615-qmp-dp-phy.yaml       | 111 +++++++++++++++++++++
 1 file changed, 111 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-dp-phy.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..17e37c1df7b61dc2f7aa35ee106fd94ee2829c5f
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-dp-phy.yaml
@@ -0,0 +1,111 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,qcs615-qmp-dp-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm QMP PHY controller (DP, QCS615)
+
+maintainers:
+  - Vinod Koul <vkoul@kernel.org>
+
+description:
+  The QMP DP PHY controller supports DisplayPort physical layer functionality
+  on Qualcomm QCS615 SoCs. This PHY is independent from USB3 PHY and does not
+  support combo mode.
+
+properties:
+  compatible:
+    enum:
+      - qcom,qcs615-qmp-dp-phy
+
+  reg:
+    maxItems: 4
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: cfg_ahb
+      - const: ref
+
+  clock-output-names:
+    maxItems: 2
+    description:
+      Names of the clocks provided by the PHY.
+
+  qcom,tcsr-reg:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to TCSR hardware block
+          - description: offset of the DP PHY moode register
+    description:
+      DP PHY moode register present in the TCSR
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: phy
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
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - clock-output-names
+  - qcom,tcsr-reg
+  - resets
+  - reset-names
+  - vdda-phy-supply
+  - vdda-pll-supply
+  - "#clock-cells"
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,qcs615-gcc.h>
+    #include <dt-bindings/clock/qcom,rpmh.h>
+
+    phy@88e9000 {
+      compatible = "qcom,qcs615-qmp-dp-phy";
+      reg = <0x088e9000 0x200>,
+            <0x088e9400 0x10c>,
+            <0x088e9800 0x10c>,
+            <0x088e9c00 0x200>;
+
+      clocks = <&gcc GCC_AHB2PHY_WEST_CLK>,
+               <&gcc GCC_USB3_SEC_CLKREF_CLK>;
+      clock-names = "cfg_ahb", "ref";
+      clock-output-names = "dp_phy_link_clk", "dp_phy_vco_div_clk";
+
+      qcom,tcsr-reg = <&tcsr 0xb24c>;
+
+      resets = <&gcc GCC_USB3_DP_PHY_SEC_BCR>;
+      reset-names = "phy";
+
+      vdda-phy-supply = <&vreg_l11a>;
+      vdda-pll-supply = <&vreg_l5a>;
+
+      #clock-cells = <1>;
+      #phy-cells = <1>;
+    };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
