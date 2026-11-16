Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8DB9606A323
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 13:17:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=VdgOXOPk;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=oJV99GVW;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=hlJfmwb2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=rgCrH9saNdpqP6ewg3N33SVReqsDoqSvGUzSVsbynUA=; b=VdgOXOPkQ8uJQK4sQUBU4JxXfH
	hGdSMKaQiMiqguG2FI/mteTGz+/FmmSEtsJOvEBOcTUHqv6rNTHnVOsoqSrLLmuvTCMbL4JLoMFlk
	mNbFnmm6kABTR7AxxpBPxhnBhXaCEXOKrx/HM7IajiGq8TTYU42JNPrkiHoEfay0+RJft7Nm23wPn
	OT/nf+q/ORNtlT/IXxxtguLMpsWAiq3bVPD9xuZA4HEzK8J5AMl1u/UAWwBiOzUqMSB80ivNE7RS7
	agYH9peEhI/mxs6m17uQEK2FuTBnP0lyS6fUVDkkTOm4OEO0/RfvpIhoOqflweDS3yoTKouX2DCGi
	KcuPO82w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSwac-00000002a3U-1mgv;
	Mon, 16 Nov 2026 13:17:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSwaZ-00000002a2o-0enm
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 13:17:40 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AGC0uV7536292
	for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:17:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AsIDIIxYIR8hxItM65IQFe6k6IyKy2g83EPXzed51Nk=; b=oJV99GVWhizlc67Q
	Cgc4OQ0Rtg3ilZdfLXAa5PHsF8m0WxBUxa7hXDxy8J4tTZYT/gemtQ63Ycu4eHgg
	UYh+r+af6TLJWjS1jSClB7pPotQ9+8ZCgE6wMdCk/FuoNi4zkv4FOgnYsHSzov1I
	ti6vfVB/VsVmGA0R5B2KrbXzA33r+oNET/icyHA+nGliz6pwOjqW5zxZparad7+B
	UnQupi5CGAG1F4yEk+My2Jy87eDFFXreK/lGyMJMimNWikEQyD4p0jeV9dIOcGzt
	3u1YNtz/DdW9FEhTFfQ6aXNsbZHankEsmDgCZFS3JEhJSlogyPpniuAZYrxAl519
	9qaxTg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hyyqggp2p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:17:38 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-94961511b61so446274685a.3
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 05:17:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794835058; x=1795439858; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AsIDIIxYIR8hxItM65IQFe6k6IyKy2g83EPXzed51Nk=;
        b=hlJfmwb2c6nLN2qSoOIUF0gNk6ayU7PN+DSFmtwoBRwhxJI+fzrKr7XD86l436oJ3I
         IVEBr9mTz7E1q8oBjYZudzjeyBmyBGAHznXjeT2bLTb9YdboNZ+IOH7OvDq5ti15lgp2
         utfhOheaoFRW54HEwuFkmdJj3hIM6AJ2n0VaM2daGB/wJ6ZkZhh2FM+BFjuDbc8oFgIn
         KFOQ/o04DREKXwhyFdt0/19zOmpfg9U+4d+6Kq5XrwA93mJw0nznLgCjqc9xOh5RPQiN
         DRxrRKpINawEali/MiHyoCCbgKVPnIXfoMf7Fr62DwfWNjLr/hdi9Mx+JSpfck0aW1o/
         YhNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794835058; x=1795439858;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AsIDIIxYIR8hxItM65IQFe6k6IyKy2g83EPXzed51Nk=;
        b=KoasQcfLls9P9MBBlW/EF1U936EPCo5QFTvApGkA0r2xS1wrqFAHC9Z0GjdFn4LYM1
         gaZVscZLUzmq85MhHh+xV0aZTljrlrqxr/uIArR9LAoOsW72lgT5Yfof+JeOWya3zQ1i
         O6c90U24Be3hISjO9rBOTpg+ZYIcVSfHTymoE2Yf4kg0zQ9gij67xuk9DIuiDHwf/Nwj
         9qiJRF4dUitnAqGJDE6JW3ibOhduK8JOgbSBpApHsb3fOrUlYrkSIgZ/FppahkZJ94EY
         MdkJPGtPmFbOm/zvq30d50h6F1wdGegJPU/4xQ6mUglELLU3Dm7ews2WFUdkEDIEcg2p
         8ZLA==
X-Forwarded-Encrypted: i=1; AL+hErEomPCfVfllAd26MY3sINyiZ0QXiIrjcKuGlvC/j/VvEFXg9Xqw3pKcUhNmBqmLjUqYxSKZ+RPNYGU=@lists.infradead.org
X-Gm-Message-State: APuU4Z+SoWeg/87LG3JaDDOGmCrZn7lredlIeIyTsAQ3n8BoznS0g41K
	nmhcChHCrlLX1ZCXOmfYTIGdK+reyqsYzAzUat2FvEhuRDuyIvpuBgNmxUDSPIwTXQObMkKjESF
	r+bJf7I+irswmvkdRgvblDBxsXn8m8UEUN5ioUsEKjel8w1z962ZyOwQjHsPJmvuKHA8K
X-Gm-Gg: AYBFou3B4cOEGX0sIKYKnQ6gi2TlfCE+7IN2di85rZbEYqgdSZ3xlMhT50p2g/VQ7rA
	7FR/BfdtCL2PRPBlmqnjbhu+vTgr2J7BE957AMm2JEtJJxm+Pf7rjBeS0HIaPeo/U+2wk90gSG7
	Fq1TxOhVTA4boFV+Mqi9ZtIbpnRSRojUR4cdCMz/LYfe+4jornqV256VckCmxF0evYht68GPetN
	de5FavPQCIQfOdA6FqPQxMYiJ4ZRnxw8rs6yWInpBG401F7h6l+1rHTeh+CVvBgMz5fCZByRldi
	datbst/EIVA5/0HUMd6JdprNvH0HuBVqt8VXqDkJOxap123fgdMdpCeJMxKqPduaytvaIKpiC3r
	U4fbdbCKo+UnLTXjGMAGjx80GLaepSalAQOW8yRGEOl88KunnNzvVme5BWz10kujY35TJCwEvd+
	VN
X-Received: by 2002:a05:620a:2a06:b0:93b:d7a3:45cf with SMTP id af79cd13be357-9494bba04cbmr1720761985a.56.1794835057578;
        Mon, 16 Nov 2026 05:17:37 -0800 (PST)
X-Received: by 2002:a05:620a:2a06:b0:93b:d7a3:45cf with SMTP id af79cd13be357-9494bba04cbmr1720754585a.56.1794835056872;
        Mon, 16 Nov 2026 05:17:36 -0800 (PST)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9494c8e1c94sm843927285a.39.2026.11.16.05.17.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 05:17:36 -0800 (PST)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Mon, 16 Nov 2026 18:46:42 +0530
Subject: [PATCH v3 03/11] dt-bindings: display/msm: Document Nord MDSS
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261116-nord-drv-dt-v3-3-e3d3bf0e2c49@oss.qualcomm.com>
References: <20261116-nord-drv-dt-v3-0-e3d3bf0e2c49@oss.qualcomm.com>
In-Reply-To: <20261116-nord-drv-dt-v3-0-e3d3bf0e2c49@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794835013; l=14471;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=PIhvMharehcV8F2KI7CYEOsm1wLJbNBmm8ONnPnEAf4=;
 b=7Xmd1Rnw6dvQHQLx6rhBQ3vTvUB4i4t3RV3tubSMzH8sci//Vl8/48sFJWEPFmCmdAN82Sq4h
 +/wB9UyVJDfB4AWUkCBsSpoTP+Vnsjlqyz7/34zJEDVUh88933m0HCS
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE2MDA1MiBTYWx0ZWRfXycfUpiua4JWW
 Q7X39zIQ4fK2yTuvK3tLA3fvjZ4kGuFF9Vu2f+P4ZOV7jtwK/PcwKPAG7jsUujKNiMgdetYb1qJ
 GYMDjGBqD4T6yvBv2ISFTsSI39oNQJQ=
X-Authority-Analysis: v=2.4 cv=epRKXYpX c=1 sm=1 tr=0 ts=6afb0272 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=7d_QaK0HgB4quCyenD8A:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: Aej7tKfFblV_vkZ-LV-B29e5Yn4vQMYW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE2MDA1MiBTYWx0ZWRfX6YuDEvL1tqqp
 bHW2BnvU0aspuF52KtPVskHuNy63iEhozw1xSdVIrHTP5CLZyrgI9UWOkiNZygSt7ip7I5riHij
 0SSx/cwW1BgPYqS91vTdDnD45gdOcqC2EVG9CrwXQ/fhENy71dyQ0gPHUpoYR/mtFyJoBAndwDw
 U5cO9SWIb70K7NfYFgCI6FlIiSdVBB1X5Ai22pGoOQXLHDIXwd9lr1J/Mz7Zdpwp6jvEve6P79q
 xMxdrFFBoQN0JttAEdXYIq50BiQ37dFXWTAbnFHXfcOpPnO8Y8Uu3tFl60KzUp/2QoTlJpnvIVr
 1VggldqXUuSryShK79ffas8qczJJ5nI3wJHnpLEGiUG/xghAZ223TgL2qvW7u6CHevxVAPd9jDz
 fZCg74wXsm8vNOs3ePs3usbQcl+o9vNQK+uuLaYOIsvEkfl24BC2bZ4DF5rudDoxs90HiqgJ1ob
 i3AMWHkw/Nr3ACy7aaA==
X-Proofpoint-GUID: Aej7tKfFblV_vkZ-LV-B29e5Yn4vQMYW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-16_04,2026-11-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0
 priorityscore=1501 suspectscore=0 spamscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611160052
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_051739_216867_7D5BC7CC 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Mahadevan P <mahadevan.p@oss.qualcomm.com>

Nord has a new MDSS 12.1 revision with DPU 1499A and two independent,
DP-only display interface controllers (no DSI), which no existing
schema describes. Add a dedicated qcom,nord-mdss binding to document.

Assisted-by: LLM
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 .../bindings/display/msm/qcom,nord-mdss.yaml       | 396 +++++++++++++++++++++
 1 file changed, 396 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,nord-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,nord-mdss.yaml
new file mode 100644
index 000000000000..abd80dae4e7f
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/msm/qcom,nord-mdss.yaml
@@ -0,0 +1,396 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/msm/qcom,nord-mdss.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Nord display subsystem (MDSS)
+
+maintainers:
+  - Mahadevan P <mahadevan.p@oss.qualcomm.com>
+
+description:
+  Nord display subsystem consists of MDSS (display controller), DPU 1499A
+  (display processing unit), and display interface controllers (DP only, no DSI).
+  This is MDSS 12.1, DP-only, with 2 independent DP controllers.
+
+$ref: /schemas/display/msm/mdss-common.yaml#
+
+properties:
+  compatible:
+    const: qcom,nord-mdss
+
+  clocks:
+    items:
+      - description: Display AHB
+      - description: Display hf AXI
+      - description: Display core
+
+  clock-names:
+    items:
+      - const: iface
+      - const: bus
+      - const: core
+
+  iommus:
+    maxItems: 1
+
+  interconnects:
+    items:
+      - description: Interconnect path from mdp0 port to the data bus
+      - description: Interconnect path from CPU to the reg bus
+
+  interconnect-names:
+    items:
+      - const: mdp0-mem
+      - const: cpu-cfg
+
+patternProperties:
+  "^display-controller@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+    properties:
+      compatible:
+        const: qcom,nord-dpu
+
+  "^displayport-controller@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+    properties:
+      compatible:
+        const: qcom,nord-dp
+
+  "^phy@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+    properties:
+      compatible:
+        const: qcom,nord-dp-phy
+
+required:
+  - compatible
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,nord-dispcc.h>
+    #include <dt-bindings/clock/qcom,nord-nwgcc.h>
+    #include <dt-bindings/clock/qcom,nord-tcsrcc.h>
+    #include <dt-bindings/interconnect/qcom,icc.h>
+    #include <dt-bindings/interconnect/qcom,nord-rpmh.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/qcom,rpmhpd.h>
+
+    display-subsystem@ae00000 {
+        compatible = "qcom,nord-mdss";
+        reg = <0x0ae00000 0x1000>;
+        reg-names = "mdss";
+
+        power-domains = <&dispcc0 MDSS_DISP_CC_MDSS_CORE_GDSC>;
+        clocks = <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
+                 <&nwgcc NW_GCC_DISP_0_HF_AXI_CLK>,
+                 <&dispcc0 MDSS_DISP_CC_MDSS_MDP_CLK>;
+        clock-names = "iface", "bus", "core";
+        resets = <&dispcc0 MDSS_DISP_CC_MDSS_CORE_BCR>;
+
+        interconnects = <&mmss_noc MASTER_MDP0 QCOM_ICC_TAG_ALWAYS
+                         &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+                        <&hscnoc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+                         &config_noc SLAVE_DISPLAY_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
+        interconnect-names = "mdp0-mem", "cpu-cfg";
+
+        interrupts = <GIC_SPI 930 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-controller;
+        #interrupt-cells = <1>;
+
+        iommus = <&apps_smmu_1 0x3e0 0x2>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges;
+
+        display-controller@ae01000 {
+            compatible = "qcom,nord-dpu";
+            reg = <0x0ae01000 0x8f000>,
+                  <0x0aeb0000 0x3000>;
+            reg-names = "mdp", "vbif";
+
+            clocks = <&nwgcc NW_GCC_DISP_0_HF_AXI_CLK>,
+                     <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
+                     <&dispcc0 MDSS_DISP_CC_MDSS_MDP_LUT_CLK>,
+                     <&dispcc0 MDSS_DISP_CC_MDSS_MDP_CLK>,
+                     <&dispcc0 MDSS_DISP_CC_MDSS_VSYNC_CLK>;
+            clock-names = "nrt_bus", "iface", "lut", "core", "vsync";
+
+            assigned-clocks = <&dispcc0 MDSS_DISP_CC_MDSS_VSYNC_CLK>;
+            assigned-clock-rates = <19200000>;
+
+            operating-points-v2 = <&mdp_opp_table>;
+            power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+            interrupt-parent = <&mdss>;
+            interrupts = <0>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    dpu_intf0_out: endpoint {
+                        remote-endpoint = <&mdss_dp0_in>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+                    dpu_intf4_out: endpoint {
+                        remote-endpoint = <&mdss_dp1_in>;
+                    };
+                };
+            };
+
+            mdp_opp_table: opp-table {
+                compatible = "operating-points-v2";
+
+                opp-300000000 {
+                    opp-hz = /bits/ 64 <300000000>;
+                    required-opps = <&rpmhpd_opp_svs>;
+                };
+
+                opp-417000000 {
+                    opp-hz = /bits/ 64 <417000000>;
+                    required-opps = <&rpmhpd_opp_svs_l1>;
+                };
+
+                opp-532000000 {
+                    opp-hz = /bits/ 64 <532000000>;
+                    required-opps = <&rpmhpd_opp_nom>;
+                };
+
+                opp-650000000 {
+                    opp-hz = /bits/ 64 <650000000>;
+                    required-opps = <&rpmhpd_opp_turbo>;
+                };
+
+                opp-710000000 {
+                    opp-hz = /bits/ 64 <710000000>;
+                    required-opps = <&rpmhpd_opp_turbo_l1>;
+                };
+            };
+        };
+
+        displayport-controller@af54000 {
+            compatible = "qcom,nord-dp";
+
+            reg = <0xaf54000 0x200>,
+                  <0xaf54200 0x200>,
+                  <0xaf55000 0xc00>,
+                  <0xaf56000 0x400>,
+                  <0xaf57000 0x400>,
+                  <0xaf58000 0x400>,
+                  <0xaf59000 0x400>,
+                  <0xaf5a000 0x600>,
+                  <0xaf5b000 0x600>;
+
+            clocks = <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
+                     <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_AUX_CLK>,
+                     <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_LINK_CLK>,
+                     <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_LINK_INTF_CLK>,
+                     <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL0_CLK>,
+                     <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL1_CLK>,
+                     <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL2_CLK>,
+                     <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL3_CLK>;
+            clock-names = "core_iface", "core_aux",
+                          "ctrl_link", "ctrl_link_iface",
+                          "stream_pixel", "stream_1_pixel",
+                          "stream_2_pixel", "stream_3_pixel";
+
+            assigned-clocks = <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_LINK_CLK_SRC>,
+                              <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>,
+                              <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL1_CLK_SRC>,
+                              <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL2_CLK_SRC>,
+                              <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL3_CLK_SRC>;
+            assigned-clock-parents = <&dp0_phy 0>,
+                                     <&dp0_phy 1>,
+                                     <&dp0_phy 1>,
+                                     <&dp0_phy 1>,
+                                     <&dp0_phy 1>;
+
+            interrupt-parent = <&mdss>;
+            interrupts = <12>;
+
+            phys = <&dp0_phy>;
+            phy-names = "dp";
+
+            operating-points-v2 = <&dp_opp_table>;
+            power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+            #sound-dai-cells = <0>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    mdss_dp0_in: endpoint {
+                        remote-endpoint = <&dpu_intf0_out>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+                    mdss_dp0_out: endpoint { };
+                };
+            };
+
+            dp_opp_table: opp-table {
+                compatible = "operating-points-v2";
+
+                opp-162000000 {
+                    opp-hz = /bits/ 64 <162000000>;
+                    required-opps = <&rpmhpd_opp_low_svs>;
+                };
+
+                opp-270000000 {
+                    opp-hz = /bits/ 64 <270000000>;
+                    required-opps = <&rpmhpd_opp_low_svs>;
+                };
+
+                opp-540000000 {
+                    opp-hz = /bits/ 64 <540000000>;
+                    required-opps = <&rpmhpd_opp_svs_l1>;
+                };
+
+                opp-810000000 {
+                    opp-hz = /bits/ 64 <810000000>;
+                    required-opps = <&rpmhpd_opp_nom>;
+                };
+            };
+        };
+
+        displayport-controller@af5c000 {
+            compatible = "qcom,nord-dp";
+
+            reg = <0xaf5c000 0x200>,
+                  <0xaf5c200 0x200>,
+                  <0xaf5d000 0xc00>,
+                  <0xaf5e000 0x400>,
+                  <0xaf5f000 0x400>,
+                  <0xaf60000 0x400>,
+                  <0xaf61000 0x400>,
+                  <0xaf62000 0x600>,
+                  <0xaf63000 0x600>;
+
+            clocks = <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
+                     <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_AUX_CLK>,
+                     <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_LINK_CLK>,
+                     <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_LINK_INTF_CLK>,
+                     <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_PIXEL0_CLK>,
+                     <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_PIXEL1_CLK>,
+                     <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_PIXEL2_CLK>,
+                     <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_PIXEL3_CLK>;
+            clock-names = "core_iface", "core_aux",
+                          "ctrl_link", "ctrl_link_iface",
+                          "stream_pixel", "stream_1_pixel",
+                          "stream_2_pixel", "stream_3_pixel";
+
+            assigned-clocks = <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_LINK_CLK_SRC>,
+                              <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_PIXEL0_CLK_SRC>,
+                              <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_PIXEL1_CLK_SRC>;
+            assigned-clock-parents = <&dp1_phy 0>,
+                                     <&dp1_phy 1>,
+                                     <&dp1_phy 1>;
+
+            interrupt-parent = <&mdss>;
+            interrupts = <13>;
+
+            phys = <&dp1_phy>;
+            phy-names = "dp";
+
+            operating-points-v2 = <&dp1_opp_table>;
+            power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+            #sound-dai-cells = <0>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    mdss_dp1_in: endpoint {
+                        remote-endpoint = <&dpu_intf4_out>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+                    mdss_dp1_out: endpoint { };
+                };
+            };
+
+            dp1_opp_table: opp-table {
+                compatible = "operating-points-v2";
+
+                opp-162000000 {
+                    opp-hz = /bits/ 64 <162000000>;
+                    required-opps = <&rpmhpd_opp_low_svs>;
+                };
+
+                opp-270000000 {
+                    opp-hz = /bits/ 64 <270000000>;
+                    required-opps = <&rpmhpd_opp_low_svs>;
+                };
+
+                opp-540000000 {
+                    opp-hz = /bits/ 64 <540000000>;
+                    required-opps = <&rpmhpd_opp_svs_l1>;
+                };
+
+                opp-810000000 {
+                    opp-hz = /bits/ 64 <810000000>;
+                    required-opps = <&rpmhpd_opp_nom>;
+                };
+            };
+        };
+
+        dp0_phy: phy@fc3a00 {
+            compatible = "qcom,nord-dp-phy";
+
+            reg = <0xfc3a00 0x1d0>,
+                  <0xfc3200 0x128>,
+                  <0xfc3600 0x128>,
+                  <0xfc3000 0x200>;
+
+            clocks = <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_AUX_CLK>,
+                     <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
+                     <&tcsrcc TCSR_DP_TX_0_CLKREF_EN>;
+            clock-names = "aux", "cfg_ahb", "ref";
+
+            #clock-cells = <1>;
+            #phy-cells = <0>;
+
+            power-domains = <&rpmhpd RPMHPD_MX>;
+        };
+
+        dp1_phy: phy@fc6a00 {
+            compatible = "qcom,nord-dp-phy";
+
+            reg = <0xfc6a00 0x200>,
+                  <0xfc6200 0xd0>,
+                  <0xfc6600 0xd0>,
+                  <0xfc6000 0x1c8>;
+
+            clocks = <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_AUX_CLK>,
+                     <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
+                     <&tcsrcc TCSR_DP_TX_1_CLKREF_EN>;
+            clock-names = "aux", "cfg_ahb", "ref";
+
+            #clock-cells = <1>;
+            #phy-cells = <0>;
+
+            power-domains = <&rpmhpd RPMHPD_MX>;
+        };
+    };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
