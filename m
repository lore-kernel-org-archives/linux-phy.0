Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B871606A882
	for <linux-phy@archiver.kernel.org>; Wed, 11 Nov 2026 17:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=huf9Zcxc;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=GMpyGTuW;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=WwtORY+V
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=82qhWOBy7ZUMsV7GL01Aioupihe3KQm1/eFK1ewi6ic=; b=huf9ZcxcacQ1bnIz6Zg/7DUcye
	wy8M9+0afgrSLdEa18v5PhvwzYRXevCoWt2M6a3/TuXTEjK6V/mSvGnnh7210TRIXTZVceM4W/5OU
	aCakmm8WH9+jQZn2W1bZCmMISq6fze/B1eMsTJSBBdmuKXU4X4Z6zhXNkCRfa0yLamm1dhulGRTzn
	Z5WQLQepCd+GUePLxwDC9zVUSnTPtXTefDUxVZ/s2C4kdMHkrvvdB8saQdXZk7zlVTrBvSVfJ2ADe
	DWJFvJg9V8LGrgjiT6rzM5D6EAcv9TtMq1UipA9Bvc5NDsfbAksf57h1quBeuiK5qzhWOxXs69efu
	XVyvctLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRCAq-00000007JH1-3C66;
	Wed, 11 Nov 2026 17:31:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRCAn-00000007JFO-0kSr
	for linux-phy@lists.infradead.org;
	Wed, 11 Nov 2026 17:31:50 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ABF0A08618003
	for <linux-phy@lists.infradead.org>; Wed, 11 Nov 2026 17:31:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7zEfWD0gKNdLLpb4i4FbPNLheaURh0EVvm8kyMPPW3I=; b=GMpyGTuWfKCtD3FC
	JEHPmo0do8hTcM/kvQ4VrfQCxNC8/Evbu5HPHqpPp/nJOvRz/mNyNkhP0n++8e+o
	rqJPVMKqmENLTDAjyQeXUu+cfT4vGtZzvSk7SkJ3c9GTayUM7wGJXojLzv+yX6L+
	aZRNYSiEtLQcNgG1B4NV7gwyltqxkIKE+iSKXtYvBxOcg/UHx7RMWcmTwmzy8XdL
	ucFwb4k6ktd6g97twK+DrDQoJ7eFxHJzbO/mn9KEPRa8NViHldvt+8Z8wnR3Okjy
	o+RmpbvurHjyUENAPAtU/ZvCicwB2E2KQvkL1dX4glMP/YaKT9QAmc1OwCiSY8Ms
	OSRWQA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hvpjjsu7f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 11 Nov 2026 17:31:48 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3ae1d132d52so3029656a91.0
        for <linux-phy@lists.infradead.org>; Wed, 11 Nov 2026 09:31:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794418307; x=1795023107; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7zEfWD0gKNdLLpb4i4FbPNLheaURh0EVvm8kyMPPW3I=;
        b=WwtORY+VbFNTMvwA5xudcfJSwaELYipEw1BeOkQ8cvAB/yQo/DcaFhbVS6OPw43oVX
         SzK6WM0l+7+gLs5fsKI2hJ2N56fGB9EHRrq8nVVnWHdNpAhUCSvU1rkL3tlm11344nwP
         UjRDBfXJqR7GqBxZC/nIRj3UieX5FMvwgTSZgen2HsievkYcvK72vSezDjWzd+iN2wwX
         8NTHHUqmrp/Cmw9ef3ftKBuuiYNAwb+3WfLjLHRBJZDCDSlaK0RyRxqeh0XhR3N0wVVE
         EbV5ickLoQKUjOiV3An2POA1VOcU9SQEjirHjI4mwE6aJHzXR+IvcyMzTFmjKIECo6h5
         OKtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794418307; x=1795023107;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=7zEfWD0gKNdLLpb4i4FbPNLheaURh0EVvm8kyMPPW3I=;
        b=UbbIkpK0q9srl7IsVEnDsYDv2YbKjwlsOXY7h/n1KsOH2YbOMyclX8WHYGtx+3U/P8
         kCkY0RVgMd/Ad8V40i62JSp85y4rdSZXD9BBvPAAbYBGHl/3AMJ8puKwikaSeOs9be+W
         Nl0PPC/JwgyiLS1UG+RXbupqcNLQzun3JnWqaYh5syaKQ4i+YhMAEyT4vazGlaE0ALgp
         t18ljoNUQSzwMXqcOsgmVTzDIBIMIcVFm0bvX4MPaWNED73LtmsKCcj5WUpQAvLFeNaO
         ber2E0h4/gSvjMQIQcgEdnI3DgC60+pkTCruBObwp7LCb2cJKJXnGTNM9b5OD8Z/wyhp
         tO/w==
X-Forwarded-Encrypted: i=1; AL+hErEtFNvC2b/dZEtpjsdqIAicvxugPefifa9WBn2wZuT49MDSIVrOT5LSQvu67+uGvZqq++YCsBticcs=@lists.infradead.org
X-Gm-Message-State: APuU4Z+0Sav+lQyG+I9RCilYHI2yP9gvqe9z37gnQ9hm8GADKCGOy7rm
	J4XIQr69HhWVbuisu0wFNNLcdtPXH53xqrUpIt7aYXCwcP1MVcO2xtj7QeO4Iz9f4NIpO+7nsc7
	bG6lPhExk7wBbduodvslhYtQGLaKJuPd2PDBHTCK2L/jhTUNh9C7q5zFdaA9uz8BRd4U6
X-Gm-Gg: AYBFou3nchb/GQCzAI5p2Cu3Vk3LkzqDTpGijsmqC7zDCpM0UdU95JXyxMtMSXYQ+00
	ehEBNavhvA9kAa+JdRpXOM/oIbmdHIIB/Wz8AP9ltSgMyol3V4ZaztGU0Zd0+1vWTBA6HCC6e3q
	Wwf5iHpYZ+KIKJwZe53ciKJmg8p0gjIFLoLNPtVr7ieLuC8XWweGSAKd2AIfXg6Bj4McqykLxX3
	8bLcxAR1x4TR8JLwWwtLynZOqUGJbgzN49hjk3VKK2CyQQTqep3rlXmH/KCENI1dKYub1nVkwax
	8krc/ETBAYg8W1pVW2RXQalrBu3F5/Ln35i8fGUZCzxXJRWqRi1j0xRTYfOOCbf3D8IYSA2HXdk
	VvWY2oyr31GxkqkMOUdoaOl7ZsXMGVrHfyJCll3aEbiyUYGtM35ma4MSlCpOYgs1VQ2SrwFW4WO
	a0VV03HmBFQA/fFl28WOyfsEMs899sCubeaPqtylc75A==
X-Received: by 2002:a17:90b:3c44:b0:3b0:a3eb:759d with SMTP id 98e67ed59e1d1-3b182efad9cmr2756604a91.10.1794418307009;
        Wed, 11 Nov 2026 09:31:47 -0800 (PST)
X-Received: by 2002:a17:90b:3c44:b0:3b0:a3eb:759d with SMTP id 98e67ed59e1d1-3b182efad9cmr2756575a91.10.1794418306531;
        Wed, 11 Nov 2026 09:31:46 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b197c42c11sm237305a91.2.2026.11.11.09.31.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2026 09:31:46 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Wed, 11 Nov 2026 23:01:26 +0530
Subject: [PATCH 1/2] dt-bindings: phy: qcom,qusb2: Add support for remote
 endpoints
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261111-shikra-qusb2-charger-det-v1-1-5a9d919c66b5@oss.qualcomm.com>
References: <20261111-shikra-qusb2-charger-det-v1-0-5a9d919c66b5@oss.qualcomm.com>
In-Reply-To: <20261111-shikra-qusb2-charger-det-v1-0-5a9d919c66b5@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794418296; l=2916;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=owFjultANOxmQtS34XQvZEam8JgpNAnt9Xs6zAWLZVM=;
 b=c3V0jWnq4UiJGGT2KZZQBL4VS3BaOfk2D7xD1gxg2+qfMsMVHw0jUUqQdD15HC+Z7Bno1LeCE
 J42X6d6Rf6pCafyo9wKvwqHm5nWiaXZFfmrh3ZQ51lGw/Ee+F9iyshV
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTExMDA2OSBTYWx0ZWRfXz/lDl074p3Ke
 MdHzflaJCW1d7RArwcYoXCqtfQ4I0CNfYuiyC5vAtblGeQaLGWrKOTaQ9s01SANopKOWCLZd+av
 kRjn0ub8JO1jlS7s2v957jtVvAKLjtZSDm3pOnp/ua9aOGy6sbIu+jVgYMjmhm7rCfyqCg7GPse
 x/9/cmg+XvMKqZq37vRp+8Mzd1DODDPQCj87VXYkVHtyPbkF+dsIeRn3Kzy7Vl8Y6f6Y/m1+h6b
 6H/lYFH7rUQohZu0oQJ/6kTuZj989bOrhbT5+R2em5t3BVpYbtrhx6L8Bzh0TFaBIygguho6jhF
 mTX2t5sYfrpQ+wEed4sUkUzGGUCflqwD1fYpyiDigSOsZDEPRj6hD0nIbeAdtQyHF95hmBxgPo+
 r240gX5XeLZOvNW/QVFkgEjd97eHfQPwlRd1gep8e7lfBJgh2NDzdu8QBzn+/ZpTuedJTY+4a/n
 R+KT4OI2b+WI8jqzIuQ==
X-Proofpoint-ORIG-GUID: KvZHyjiTVfYTf5adB17bAHTvf2immnns
X-Authority-Analysis: v=2.4 cv=FeuiV5+6 c=1 sm=1 tr=0 ts=6af4a684 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=VqWNwAWn-JPd5HJ3FDIA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: KvZHyjiTVfYTf5adB17bAHTvf2immnns
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTExMDA2OSBTYWx0ZWRfX19pGQPvqlFFU
 uRe3SBlFphr0zx1PTOaJuueDr0LEokoOmyQGRvhFgXFzX9cL2234Jk8ql1A3dRtYySntCkAxpg8
 GAuzlfeox0stb0WQSLvycBxLHEmQ0GY=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-11_04,2026-11-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611110069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_093149_363280_97073D97 
X-CRM114-Status: GOOD (  17.26  )
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

QUSB2 Phy HW is capable of doing BC.1.2 charger detection. On most of the
platforms, the charger detection is done by PMIC. But on Shikra CQM/CQS
platforms, the PM4125 doesn't have ability to do charger detection and
that responsibility is delegated to QUSB2 Phy which acts on the DP/DM
lines in its control to get the job done.

During process of charger detection, if the controller is supposed to
enter device mode, the charger is detected as SDP/CDP/DCP. The controller
must enter device mode only if the detected charger is SDP/CDP. In case of
DCP, the phy can be turned off after detection. If the controller must
enter host mode, charger detection can be skipped and hence the phy must
know the role before the controller so that appropriate decision can be
taken whether the controller must enter device/host mode or not.

Intention of adding remote endpoints and usb-role-switch property binding
support is as follows:

a) The DP/DM lines do go through the phy to the controller i.e., the phy
exists between connector and controller. Hence adding remote endpoints
depicting the same.

b) Although the usb2 phy is not the entity doing role switching, it still
does need to decide which mode the controller must move into and hence
adding usb-role-switch property to allow role notifications from charger
to go to controller via phy.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,qusb2-phy.yaml    | 23 ++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index 001fd0ccc985..0b6b2933dd98 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -159,6 +159,29 @@ properties:
     maximum: 3
     default: 0
 
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    description:
+      Those ports can be used with any connector/pmic node that is able to
+      provide role switch notifications for charger detection purposes.
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Connector Data bus
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Controller data bus.
+
+  usb-role-switch:
+    description:
+      In the context of usb-phy, it denotes the capability to perform charger
+      detection. Although phy is not the one responsible for switching mode, it
+      is the one responsible to take a call on whether controller must switch
+      mode or not. In case of SDP/CDT, the phy would inform the controller to
+      switch to device and in case of DCP, role switch doesn't need to happen.
+
 required:
   - compatible
   - reg

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
