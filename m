Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F956082BD1
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 21:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uE6GJGqF;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=MrUQKTeo;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=pWToFaIZ;
	dkim=neutral header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=OF5k9sQX
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=g8OeN6ckHR3XavNje5QAdc4DYqYKlk9iiqDj+OQDf6Q=; b=uE6GJGqFRvC9vEX304uGM/9qnB
	v3shTEZ5ENUpO1ezP6oKPg2w7fF37j2Ys5Wohya6q/D5cjYztaSzKZyhCr8C8S329waPHl7CxgMfP
	nYVpiqY8ROlrdt3vnqMgg+ttBT67iez7ouTrveXg/0EdhGASJRSq8BGj1+xiq/UDb47fatz00IXC8
	nYG8jxxDe59SXs798S4AlBlTmZBPJBDBDEv+TgOKIcnZg2+mhItZwyz1Xfut5BUYjrt+rSjCxlLbY
	Pqy2PE0jHWf9pyazgoHOcbDjU2/snEJYbDpZkqSuKoXiFBQczuxtB1XsPrpF3axBOQVENqPImjaUl
	7RDUB0bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOMFv-00000003kdS-2Xpn;
	Tue, 03 Nov 2026 21:41:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOMFt-00000003kcN-3aUV
	for linux-phy@bombadil.infradead.org;
	Tue, 03 Nov 2026 21:41:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=QoM/IqC1v4fyVgp5mXaugArWmtVnYBKnG59oPWEYQmY=; b=MrUQKTeoAiBWpD9hCbUxflf6RP
	aRI7aQ1UOX8A0N0EAKAHwUR4oi72yEi7B16AZbN6BiYDR4gI1Z/PAVM/FPKi8FHgApRJ2grMaGnzA
	PtzLA8LESG8JGDQYNTNG3mF1QgGvUQnfYOqhMBopgOH3+0efz1/f4n2CkwN8sbAPIgrumu18hNTOD
	VI82KGH8dAKxyAwI/ZBOsh9U8bIG6CDT/zAmbjQLDGFwrMJvQfMKdYctFF16W3U7dgnzzALN/c9LN
	XIIqlnQi6oWfKGLQKduQV7W0VqkCJaCJpIOfjIVBBZldj/Gg4tHvSwKp3fjF1Q5+kuz4x3kYx1km6
	hzGgomaA==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOMFl-00000000xcJ-3lWU
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 21:41:16 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A3LKplp3065597
	for <linux-phy@lists.infradead.org>; Tue, 3 Nov 2026 21:41:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=QoM/IqC1v4f
	yVgp5mXaugArWmtVnYBKnG59oPWEYQmY=; b=pWToFaIZmO5UuI5rcMdpvaSHr/o
	yBq0Ro0VLdHT5bY+juXr0VJOskZbCxorucOQE9JQv4XiUwV/cKnACEXzWD4GAtjI
	pr8eYaK3bHbpXY56qVRSYgghB1Kb9RMoOBw7OB6u5T3FeMl8qlJ9GK+JNDqt3gU5
	0vQqXFh+fEzKy5fZmZkXX2Jy5ApiioUl8nw549FLKeqvZ68oKHnBO4o0Wu60zON1
	Cy+e4otAst0oBBACkNbQpu3mXvvRW3V6dwHk2ygrFX8FjqFLgoq72t+Dzhqc89qy
	SPgshErcZri3tjVKO0FJM2kIiS8SMtkvmfPBHlDtM5K9tRotyomnUuRbfKA==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hqh2bswn8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 21:41:09 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-1663fb7e005so105813c88.0
        for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 13:41:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793742069; x=1794346869; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QoM/IqC1v4fyVgp5mXaugArWmtVnYBKnG59oPWEYQmY=;
        b=OF5k9sQXv9BHITTvEek1/9QD5+/2dS5OaBg2z5ZRfyV0VvvSSIoT7UWNcVaH1FjjzI
         5TM9tll55kP8XRY6PBrQONa3tqb7it/YAWEASWA88/clQjoyvBkpQ4knX87wQI+YdPap
         ngChRGwqAcgowRksXQSxlAQSM3CqZaCAJV/qtx2o2qwG1tkB54AWUECjrvRTpsDgr136
         +fGV7zoTBXp61hCA8ucOnzRBSDgbR8Plvwtto8ZIPi947/IXT+KGkqJO3YUmyysd7ZGI
         jfizpQLkhYyG8KDQFsrBaptwfqwvZehwZWrYEQzxN8x7ErNh+0IGrI+pPnv67NNpSFx+
         /gJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793742069; x=1794346869;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=QoM/IqC1v4fyVgp5mXaugArWmtVnYBKnG59oPWEYQmY=;
        b=vEMQyhC2GPsAH1ZDfH9GDLRwAKBoK2ZoiblLz7/FwkmxCnJ0vI6uXjfzRYQip3ZOWi
         yeOG5dBF2HHic31ArX0JwuAtNAAOUPkF92GcK0njyUemu7k9QByWfOaaSX9Ci4rZwIky
         f6/zfki6NFgaT667fKsfnsYYRJpmFg833U6cj7IQrctIFoZj3N5N7n8CSU9KpiAmJC15
         rEhQey6rryy0QN8oyoAcPfnZ8jsD/WTe90n4pZzi2DpVeHddUDEJ+dAPw1e6XVoLuSGJ
         ez8VYjHwYCMyCcMfzs0X1xxUl0ZRmLeg5xDnlCpnYW9AB18LogTsZG0NKKd2bqcXdxIy
         /x7g==
X-Forwarded-Encrypted: i=1; AKwUvBznGyh8T/F4RsXH8xw7nFFh+mztT3DL7UWNwUmq3HOuwB3QGK3+NwwC7I/ErlMz4rOMMpwA1RVjKs0=@lists.infradead.org
X-Gm-Message-State: APuU4Z8qpbLQnIxtiYIjQ5OdAMIfni/4S+2sUG9cxcb6cdlSBUdwj2QR
	f6g30C1RwAFvzFGRt3Ble+OIHeiJTaHb6tBcxP5sr/uSQiXdfsMce1osvn0YWUtybBZLXXwC+T/
	tnb4FRSSOFyxIW8VwSJfO/btBpJGg3EuIyQ1za4NQlhE7ngAfxtuPuRVuIYhLi15bbZ/z
X-Gm-Gg: AYBFou2mF8uJSe3+zCIW90PBTUfu0777uN/gsg+YC3SH2Pt7vOb8xJEuM0p6FUNoK9b
	XqZO/kARDBPvHLmkTLLQgdSZbWpTJ1q505rQLTad/6dEJxo4TDl/26siEpQDPvHQQS+c4F6jmZ1
	B4Piq5pPCb3eKVa6zqNc1/IUjzIOKjOM2GZaJlDz7J0FWg/icEgrD/wnUNbc6tgTqrn2LIWjJ/C
	mqg9MssFi71EpBtX0Y9yAkwwSZ3lNsLyRk+0wAddknq++kLnbH8B0fXT3wdXcr7WKtn4HLYuU4a
	eQj9XLmYRPjumwbtR2+44eKsoZRWHu35ozNjdCFAgDponfVNxYC1HJs10yIAspF+A+fUqiHooYd
	IC5OCE6tC1o3wGL86zmX8uUifwbYYFR0mUsB9FpsU8FroItCpIAd0/n+NQsLznOdL1KErjnKRqP
	baQDzMz64j+Ae724Nz8dVmKCip0e4=
X-Received: by 2002:a05:7023:90c:b0:138:30b1:4c00 with SMTP id a92af1059eb24-1ac56d95448mr23891003c88.3.1793742068352;
        Tue, 03 Nov 2026 13:41:08 -0800 (PST)
X-Received: by 2002:a05:7023:90c:b0:138:30b1:4c00 with SMTP id a92af1059eb24-1ac56d95448mr23890961c88.3.1793742067759;
        Tue, 03 Nov 2026 13:41:07 -0800 (PST)
Received: from hu-aarunnan-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b245c1c272sm1537440c88.8.2026.11.03.13.41.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 13:41:07 -0800 (PST)
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/5] dt-bindings: phy: qcom: Add common qcom,csi2-phy
Date: Tue,  3 Nov 2026 13:41:01 -0800
Message-Id: <20261103214105.3605181-2-anusha.nandi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261103214105.3605181-1-anusha.nandi@oss.qualcomm.com>
References: <20261103214105.3605181-1-anusha.nandi@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAzMDA4NiBTYWx0ZWRfX2ufG6B49+9xt
 RzKvSpS/ZEkEkqTxo+FvjsR1Xde1++wP2mBD8XOzt5Ni5VB8rI/DGPu7j0MWIPobSxqHMIztlSm
 0vCRrVlfZY9gPreMxujrKYwQg9zhtRk=
X-Authority-Analysis: v=2.4 cv=AKV9GsJK c=1 sm=1 tr=0 ts=6aea54f5 cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=gEfo2CItAAAA:8
 a=EUspDBNiAAAA:8 a=sx4psc2xio7dPLQVwlEA:9 a=vr4QvYf-bLy2KjpDp97w:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: 21kcZ9HwANPCKmoKuhIYm5aIW2BF3L6S
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAzMDA4NiBTYWx0ZWRfX/1LRr4fdCnym
 ZV8hSAe3xiPHdE/7RiygyF59tjUajVKtrZegrjI8NaPZZdF9aR67cVtmhodeH0oOuF1MppJKSXD
 oWWexkQOaHzHl9NU4DDr1BN32sDYu+f9w+zNxS/8oVYZSlPxskEGLG1qgij+pKsHs3Zld2ZEV6J
 yKfCCiNattac4oZtN2/LsaqR/PDjCpyRdL/h28vpdu47GQQjGT0ZAd7kA2gHSM7jkfWr7pZGx83
 s1Bm26kzun6ioOh0y7Q6aXNSkq24pNe3Q0fJeTNGpsCwu9KgfAH/DyYAq0nuGFg6sQFIoUhbbo1
 fJQad3ZXmJQa6cThs1slgPzGL2YSHdDOB1A36GMfIHDg61IxB1v2VobSroc1IbLamcTTHk+wr18
 +zNrcdcoQq1HyleEiChGx4aY2ogm5wWjBLAY/QeXx/xL/OZzIcOELV3L+gB7J/afIwxYUjk0B6x
 9QYYvC5lClAMby/ZcKQ==
X-Proofpoint-GUID: 21kcZ9HwANPCKmoKuhIYm5aIW2BF3L6S
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-03_05,2026-11-03_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 bulkscore=0 suspectscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611030086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_214114_938003_E9F92A65 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: -0.9 (/)
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
clocks, single "top" power-domain, vdda-phy/vdda-pll supplies).

Describe all three with a single qcom,csi2-phy.yaml and a compatible
oneOf, rather than one standalone schema per SoC. QCS8300 is further
required to be paired with a qcom,sa8775p-csi2-phy fallback
compatible, the same way other Qualcomm bindings express full
hardware compatibility between two SoCs (see qcom,qusb2-phy.yaml);
this lets the driver bind QCS8300 nodes via its qcom,sa8775p-csi2-phy
match entry rather than carrying a duplicate one.

qcom,x1e80100-csi2-phy.yaml is a separate PHY with a different shape
(3 clocks, 3 power-domains, different supply names, DPHY split-mode
support) and is left untouched.

Reviewed-by: Jigarkumar Zala <jigarkumar.zala@oss.qualcomm.com>
Signed-off-by: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
---
 .../bindings/phy/qcom,csi2-phy.yaml           | 176 ++++++++++++++++++
 1 file changed, 176 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,csi2-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,csi2-phy.yaml
new file mode 100644
index 000000000000..5d25547528bd
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,csi2-phy.yaml
@@ -0,0 +1,176 @@
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
+  vdda-phy-supply:
+    description: Phandle to PHY supply.
+
+  vdda-pll-supply:
+    description: Phandle to PLL supply.
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        description:
+          Sensor input. A single sensor is described by a single endpoint
+          with one to four data lanes, numbered 1-4. The clock lane is
+          position 0.
+
+        unevaluatedProperties: false
+
+        properties:
+          endpoint:
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
+  - vdda-phy-supply
+  - vdda-pll-supply
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
+        vdda-phy-supply = <&vreg_l4a>;
+        vdda-pll-supply = <&vreg_l1c>;
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
