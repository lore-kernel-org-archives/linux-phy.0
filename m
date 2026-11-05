Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77D7E606D83A
	for <linux-phy@archiver.kernel.org>; Thu,  5 Nov 2026 23:51:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zAA+mqEK;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=XZxr/k8M;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=EjS4+760
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=z/GgoIVbZTIIOxp2ZxjLTst5jZvvfy+PAZfhOwH8+Io=; b=zAA+mqEK5AXhTDNP5Vaji+LHqO
	kZBcIEbp0l0nueoDD57lQ8K4GkApJ3EzgFrbph5fY18UJrcohzVBDr9JYxVKmajTtt393Q4U6FzIV
	0nYEIFbs/MkwCpk8P2F2O2fTyZyEWEc57Uuvu21olnQ7LLhR6/uLNwHt6L6csEJlHCtYUKwarR6a7
	bym/N3DjuM8ZqH3paa/heAX2mHn4nGFxJKfGWMgdAXYN5NXjTDBPKBexTJ+5DfbR8UpU9SYA6MfXp
	JkoJowRMB3aox1SWMkcLMt6l/Fx8rt9KjHwPYd8Flz0We4TOeHvkHi+H0QVxrTdkCjPPqv+Rw4XKl
	Klb1kUTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP7FB-0000000AtRT-0r7w;
	Thu, 05 Nov 2026 23:51:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP7F8-0000000AtPw-0XyZ
	for linux-phy@lists.infradead.org;
	Thu, 05 Nov 2026 23:51:44 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A5NeTmT1707514
	for <linux-phy@lists.infradead.org>; Thu, 5 Nov 2026 23:51:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=wQ8g8D6Pdri
	oNd+J6q0+/Z6V0jbd6NtoniNfp8rGFZc=; b=XZxr/k8MKikdcK3P7mefPYSFodb
	6Y+UfxEr0cbPGHEGpnAFCg3gGX+DrO62rxLynSklsdnAIgqcYd1oxa3Mk8liJrTT
	ny0rw3ndoQyQpUE3A/MCd8MxZ86nq8ZuaQfDrnUYts8aow5F3GQYWk4JtOQ7NytT
	lb+TIPoOfjrJ68GdbVwgnP8dRHEn2tH5l5icBefOrLgZGKcgMFhlbPNQx+tjbY6S
	fDW70YxAexBtUu2wkG8nRfMStoWcbWfgHZiT9jT9VZq4roTF8hLEulNOHftQ/c2f
	Rp/2whVvGtdJT2CjztjVKVMRRd3bjW6XMYJ8JRhxiZ/G6PTsAQGoHjql7kA==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hs3p9g0xm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Nov 2026 23:51:41 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-33713e5e6daso98923eec.0
        for <linux-phy@lists.infradead.org>; Thu, 05 Nov 2026 15:51:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793922701; x=1794527501; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=wQ8g8D6PdrioNd+J6q0+/Z6V0jbd6NtoniNfp8rGFZc=;
        b=EjS4+760DVAFkaDXbPQa4+GAEPFL5g2MrMizPAqbPCrmVEtZlW181KowbodO2TY9a9
         7CqP48KkCzSV2DAyExRAEFYNKNNW6IieSu0d1Nqgvf8m1rZDbjTcOqJ9RGrI6OjrjwA3
         CeAykYXvjv6o47YnTX/jKziXj3GIFIhgA5OPdO03PinkfLVaMw0uFaBuwrplWOXTJApq
         bAB930S6Qepzih69m4ZUmByzNN+Kc91VlAwzqFhVzXp3DvtBzaIjeTd17qxpNcNrf9Re
         QATHr9xTaNKaug0ze0m3aNO/DkeNyQdI0rI9ZpXfL1d267qw9R4LQub6FTFqjEMdhKTF
         0cfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793922701; x=1794527501;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=wQ8g8D6PdrioNd+J6q0+/Z6V0jbd6NtoniNfp8rGFZc=;
        b=Y2dJQTeJvWZguc5i2bx6zhfQH1ISA3J6+d4UbmBinAYJldeEtQsY7401G/GBqkgmko
         W162CvdOb9ngnjk3FnD++rQG00jkSkjNE295Wy1gBb5L/3rCL+8PxZ6tHMsKF93gvY2n
         Z9KfLVPAhxrcxxc4qobev9FMwrLZnUjBBqe3tjfQx6RcpbbVXw/RLYGLsNs9YO5u4EuW
         N69yJrKcjTGl7gRIXNRzHNh4l8Gl4NvmEVS30r2pEP5EbJ3QPDvyxa5LAjMPlLkSCCw5
         ElxqN2mj+NCWus3LhmFzqO54d548cRNuCT44vcrVHWlQdHmkwQY2P0Toyi9ZZcObMc/7
         svTA==
X-Forwarded-Encrypted: i=1; AKwUvBzBMl6UtWt6vKLRlcFFrzznhbtMPWDH5SF56V7ePEVHpYgj8RGHXuvcJlK5mcjWt3l49xo9FJn/chI=@lists.infradead.org
X-Gm-Message-State: APuU4Z/zhphjjflIULhnOC5DrUaphToKsu9IHme3jYV01v+3U1lAElp3
	E2MpEI9BWFk9Trafb9NUOMwwEriopWJsapcwWWF6U6cfsdRZ6dE4co3jJ73ibBJFs1qZ7fzWsz3
	zy7cvUldXwGfuKC5HcymhobFmHhEZwYMPKMGYWTtquvHVhnVC9x3hMF5AAoUlRSEpA99e
X-Gm-Gg: AYBFou06nJL0WcpB3UxjoaU0Wib75AIXxYaf8B7oVLDWetWfFwsOVWQXj/jjB1SagiB
	S8MlgMe1MXKmrfD4RbcHL2QcXff9SNmd0eM7zWLhPoyi4xbgNmrfwehUsmFO1WP6JU6wfV8PRsC
	XBifn0KbNOpkh+w1VG+xCkcUgSu6dmOiC32hHIrtOCEqDxKKTzsjWUPiZZG7/Iee3V25ODu+9Of
	1rSMlFGUbVxiV5D+WK52jNfqB/eGRz28cBIrpbO//VpC/gBf1S0TS6povCClfm4coa1h6aWfgFw
	AYU3dAA4Qx85G6xINz0rx/4PkSIecU0/8gXjqOnU1EWsg3Nium0kgb5GojgU5ILgtlXa5E2CY7W
	PD6eSGbGL7qGRE7ZMTjHGBBwWZ3wRXexAXjf9RKIKCZuQakKZp103vuJm0jO0aLbXoxyW31PmwA
	pdPJnZwbpnXFvd7eH872OoAAZbkLI=
X-Received: by 2002:a05:7022:158c:b0:1b2:5884:a020 with SMTP id a92af1059eb24-1b25d28c3bfmr962363c88.6.1793922700456;
        Thu, 05 Nov 2026 15:51:40 -0800 (PST)
X-Received: by 2002:a05:7022:158c:b0:1b2:5884:a020 with SMTP id a92af1059eb24-1b25d28c3bfmr962309c88.6.1793922699871;
        Thu, 05 Nov 2026 15:51:39 -0800 (PST)
Received: from hu-aarunnan-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b25e4a63f6sm389041c88.9.2026.11.05.15.51.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2026 15:51:39 -0800 (PST)
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bryan O'Donoghue <bod@kernel.org>
Cc: gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v3 1/4] dt-bindings: phy: qcom: Add common qcom,csi2-phy
Date: Thu,  5 Nov 2026 15:51:34 -0800
Message-Id: <20261105235137.2635442-2-anusha.nandi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261105235137.2635442-1-anusha.nandi@oss.qualcomm.com>
References: <20261105235137.2635442-1-anusha.nandi@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: qN4yJ-yUNQIeUaN032C9KkyD3COZ9Kmy
X-Proofpoint-GUID: qN4yJ-yUNQIeUaN032C9KkyD3COZ9Kmy
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA1MDA5NSBTYWx0ZWRfXyd6+JGKgaqkH
 xNndye1EgDuEp+dM2FcXlcocR5h8aZ/vjbTRlWpNFu9Pgf9UOXD6xrHC2pnXdECrMngRTjm5z+h
 z/OxUeT55qnD2DdoWPFckoE8orUKDTk=
X-Authority-Analysis: v=2.4 cv=XvNvqlF9 c=1 sm=1 tr=0 ts=6aed168d cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=gEfo2CItAAAA:8
 a=EUspDBNiAAAA:8 a=Qi6pjpdL7GA_D8ehSiUA:9 a=6Ab_bkdmUrQuMsNx7PHu:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA1MDA5NSBTYWx0ZWRfX5zx42YSn0HIq
 SyjRkIAKgySlbqye7MZi48B6hhQYP7DDs77nl8Y2iOsQ4Qim1WjRNhC7guEHgmKu6fXmcSYCJYH
 CK7QgnJnVJwcdJmX7yV1ZUZiPjWc4oXvbLHWKpqMKzUYbTqwNmKENuEMNgMcaKujROniqo41usV
 yhTJLm0CPDUwdHYkyxq+iR4X1j1Iaf74jECyQTzn1AEhwGhoyhv7E9KqcnQhV0mT66YLKUnB4Qp
 pe2fEaLN3xF3bK27xWGvY3G6CL57eIwHo/TggEcUVl2zftWIH7AlAdZPk0hI7UmXizf/xDCaaup
 wxHc/tREZLIxZgvZp2fkJZvT9XP/CHPxhHIOaSDdHywPbhSYCQiBOgr4LsLse7ffMA+oxzi96FX
 L70BgJhx9AMq5DxYvJRdtaUdwcAklsvuxP8eS1XM8fwl4AUbeJtAzEBDb2W1SgZSY8OhBrXSdJc
 ohCqaJgB/7cE/JvIIDA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-05_06,2026-11-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 malwarescore=0 impostorscore=0
 phishscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611050095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_155142_175171_1BD0B315 
X-CRM114-Status: GOOD (  16.44  )
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

SA8775P, QCS8300 and SC7280 CSI2 PHYs are bit-for-bit identical in
devicetree shape (ports, bus-type, data-lanes, operating-points-v2,
clocks, single "top" power-domain, vdda-hs/vdda-lp supplies).

Describe all three with a single qcom,csi2-phy.yaml and a compatible
oneOf, rather than one standalone schema per SoC. QCS8300 is further
required to be paired with a qcom,sa8775p-csi2-phy fallback
compatible, the same way other Qualcomm bindings express full
hardware compatibility between two SoCs (see qcom,qusb2-phy.yaml);
this lets the driver bind QCS8300 nodes via its qcom,sa8775p-csi2-phy
match entry rather than carrying a duplicate one.

qcom,x1e80100-csi2-phy.yaml is a separate PHY with a different shape
(3 clocks, 3 power-domains, different supply names, DPHY split-mode
support) and is left untouched, but port@0's DPHY split-mode
definition (two endpoints, lane-count constraint) is cloned into this
schema rather than dropped, since this PHY supports the same split
mode.

The supply names are vdda-hs/vdda-lp rather than the hardware's own
power-rail names, since those names aren't guaranteed to stay
consistent across future platforms using this binding.

Reviewed-by: Jigarkumar Zala <jigarkumar.zala@oss.qualcomm.com>
Signed-off-by: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
---
 .../bindings/phy/qcom,csi2-phy.yaml           | 201 ++++++++++++++++++
 1 file changed, 201 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,csi2-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,csi2-phy.yaml
new file mode 100644
index 000000000000..44791802a3ed
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,csi2-phy.yaml
@@ -0,0 +1,201 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright (c) 2026 Qualcomm Innovation Center, Inc. All rights reserved.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,csi2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm CSI2 PHY
+
+maintainers:
+  - Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
+
+description:
+  Qualcomm MIPI CSI2 D-PHY. Connects MIPI CSI2 sensors to Qualcomm's Camera
+  CSI Decoder.
+
+properties:
+  compatible:
+    oneOf:
+      - enum:
+          - qcom,sa8775p-csi2-phy
+          - qcom,sc7280-csi2-phy
+      - items:
+          - enum:
+              - qcom,qcs8300-csi2-phy
+          - const: qcom,sa8775p-csi2-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: core
+      - const: timer
+
+  interrupts:
+    maxItems: 1
+
+  operating-points-v2: true
+
+  opp-table:
+    type: object
+
+  power-domains:
+    items:
+      - description: Titan Top GDSC - Titan ISP Block, Global Distributed Switch Controller.
+
+  power-domain-names:
+    items:
+      - const: top
+
+  vdda-hs-supply:
+    description: Phandle to PHY supply.
+
+  vdda-lp-supply:
+    description: Phandle to PLL supply.
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        description:
+          Sensor input. Always present. A single sensor is described by a
+          single endpoint with one to four data lanes, numbered 1-4. The
+          clock lane is position 0.
+
+          DPHY split mode, where two independent sensors share the PHY, is
+          described by two endpoints. endpoint@0 uses data lanes 1 or 1-2,
+          clock lane position 0; endpoint@1 uses data lane 3, clock lane
+          position 4.
+
+        unevaluatedProperties: false
+
+        patternProperties:
+          "^endpoint(@[01])?$":
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+            properties:
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+                default: 4
+
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+                items:
+                  minimum: 1
+                  maximum: 4
+                description:
+                  Data lane positions following this endpoint's clock
+                  lane. Positions are a per-port logical numbering, not
+                  package pad or ball positions.
+
+            required:
+              - data-lanes
+              - remote-endpoint
+
+        allOf:
+          - if:
+              required:
+                - endpoint@1
+            then:
+              properties:
+                endpoint@0:
+                  properties:
+                    data-lanes:
+                      maxItems: 2
+                      items:
+                        maximum: 2
+                endpoint@1:
+                  properties:
+                    data-lanes:
+                      items:
+                        - const: 3
+              required:
+                - endpoint@0
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Output to the CAMSS CSID controller.
+
+    required:
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - interrupts
+  - operating-points-v2
+  - power-domains
+  - power-domain-names
+  - vdda-hs-supply
+  - vdda-lp-supply
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,sa8775p-camcc.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/media/video-interfaces.h>
+
+    phy@ac9c000 {
+        compatible = "qcom,sa8775p-csi2-phy";
+        reg = <0x0ac9c000 0x2000>;
+
+        clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
+                 <&camcc CAM_CC_CSI0PHYTIMER_CLK>;
+        clock-names = "core",
+                      "timer";
+
+        interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
+
+        operating-points-v2 = <&csiphy_opp_table>;
+
+        power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+        power-domain-names = "top";
+
+        vdda-hs-supply = <&vreg_l4a>;
+        vdda-lp-supply = <&vreg_l1c>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+                csiphy0_in: endpoint {
+                    bus-type = <MEDIA_BUS_TYPE_CSI2_DPHY>;
+                    data-lanes = <1 2 3 4>;
+                    remote-endpoint = <&sensor_out>;
+                };
+            };
+
+            port@1 {
+                reg = <1>;
+                csiphy0_out: endpoint {
+                    remote-endpoint = <&csid_in>;
+                };
+            };
+        };
+
+        csiphy_opp_table: opp-table {
+            compatible = "operating-points-v2";
+
+            opp-300000000 {
+                opp-hz = /bits/ 64 <300000000>;
+            };
+        };
+    };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
