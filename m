Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B40EF606A31C
	for <linux-phy@archiver.kernel.org>; Fri, 30 Oct 2026 12:43:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=v3IKr7qC;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Ql3CBua+;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Ebgbw7MZ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pCmcLPF4TnGOsnFSkH13WkzHttlkRe2NZKflWkjngCc=; b=v3IKr7qCVyZMiMWJkSG9lT/6aK
	FKiAKN9olI6boGANB0WpIfMBe5KdwqP9G2gvxU9lGu9ugZyg/IJ5cZQqImAyENCzCyLH4xIlY+a6b
	MrirJaO0gQcbhXX6vZlCmjdWGpXs7JR0IZB/8I3lMK8xMlymoRqegZJu0yWF9XwS9wVFEDzJJ4BHF
	v0x7cLv6MHUDpPu2MOuyeufKG9UtGORB114jQ7Tf1j1DuEvAMDFrUv5VP2ag8Xksmef0a0jC9DtTY
	loNXm7m2AGHFQbUy13I/AmD+9VKEzjqp2HdIgmfcK8is0uo97Y58PhLy/9cxm5PPOaDq9q9jj9OkR
	cWL4EHKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMlxV-0000000BhD2-1yHz;
	Fri, 30 Oct 2026 12:43:49 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMlxS-0000000BhCK-3CIx
	for linux-phy@lists.infradead.org;
	Fri, 30 Oct 2026 12:43:48 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69UBGHFh1527675
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 12:43:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HpwZ/l90CpnZtEhIQ9wLVso5ANU/fuCIWBSK9h/+YBk=; b=Ql3CBua+WjphGMUv
	19NvU2vpIXbqfVdXaGZsC7rVYLc0ca8DceZGEp/JuNvjGHM/uwbN6Kt715FRTu3s
	6psTArZB7vOf4KvLep1GB59vp/crOPPk6AroZEKK+mfTy2AhNS9Qp1yLadF0XRGj
	NP6bwcrPPKpRADd4iqAwHejyTM0oR0ceSdmiZfGoI3wmPYZ4J0bDb/M2YwvLhUWA
	c7378o+AV8VHGPZ/JDePYiL962gt7jW998QrdfEvXlhKqGd1bUbBpq7MPL96QLXY
	kkIWRrkbRBjQMQCvbeTZrEETK11Qas/IkU3zS+QSacjYtnedXuJi3nCJH6fZcNS8
	l3EO+g==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hme6pk224-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 12:43:46 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2e832c03576so11571765ad.1
        for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 05:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793364225; x=1793969025; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HpwZ/l90CpnZtEhIQ9wLVso5ANU/fuCIWBSK9h/+YBk=;
        b=Ebgbw7MZ0ZnBCexMIGC9/fBD+nnMIYBO0yuABbMa5c298etf2M7GmhIC0DXzi2Y9Ld
         kgopolniW57EN+vxalQN9tLVAJYe2W/GoanF7PmammLmBDjy8DtMFafPBFgRnTMn02y5
         2vvU82A/M7Hgc8HZU0uDXK++5eH0o/SMbQZVcdTVcPK5yAJpo/+xaSx8+9AOyhEJU9qA
         iWfZXhg2nkXhGVaIz5UYmzWJc+KXmbf85u7eU3atQ0elN1pWIXUvygKdWai2Yc1aPoVd
         nhV/vtqN2UrZ6mpkhqmhDcCTM2wiV4Wly8EUZRi3m+oyV30munL/98gM9oUhZfuRzJin
         ZSrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793364225; x=1793969025;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=HpwZ/l90CpnZtEhIQ9wLVso5ANU/fuCIWBSK9h/+YBk=;
        b=AVcPKPTHW5DFg/gN4BMG3Qg/Hih356Wiil+vYesbAd1zT5YVNgm9X1mcDQvZYDepqx
         JSwmYY0gLd0XVPKPDOAOWrGxtsksk/5qA6lhsBoE1XMOqPVMxCHjyIfHjehxxcwozwzZ
         gn86WmJgxuMjMwf5yw7cx97Rla69QhdfSEpSq5oeXk2vZw5Q3zZ/0FtcI6XvPt3s/YBl
         eJthzZt9xx5PZy9jMW9nAFwrlL9Gc8FtRzcb5J64GDCCSdaWx+dgwWnUAdALu00Xnc0Q
         1Ibun/QqSSlQb1ZBeTJKyRzYyNeY/hZgbPYodLH20vU32EyEMGFD/PPNq+AukUopNaN2
         Q/pg==
X-Forwarded-Encrypted: i=1; AKwUvBy2Fv63zVhvrzHvqwZL24lWnd0eDEl5w3oGgJFdkinsm0HIBYUQ4Cr42zYZ0v+E5eQxOUYQ5pVwl1w=@lists.infradead.org
X-Gm-Message-State: AFq9FYI8mIIVz+Grmv0sD9rV3qrEdjz0mi/KV9xoqpteCEUs+7aKoNLy
	FqoDCct8Yc0IRVyMqdDACZbvkXFKRQJMdkiXFmhibTSgHVrKYsxdLsMfVWxlf1KvRt6i5AqQ0n4
	TvVlYVrNiRDYpP0yaz834uYmcJ8mJAhyUGtWCCVePUDWuVHy6U6tPNld0T9OUKgFI1ze0
X-Gm-Gg: AYBFou2YQcO8msHfVoX0uGzQ2YFWEgzlmAUPKIrZWrW6ukFWEumun1jiN3RNWVCYamk
	Hiu3xBWreu1Qci8Jb4zsKZV6TRT0tccw6TenSQ26gCRTBZH0B8loRubLPsA0WvvKjYxLj/5/Hvr
	Fisssuex3cQor5CYDffrHUOzQjOEqgANQmEvz/EiE0RKIznUgrK5t2XqSljMxMn1iyRzu34GpwX
	JGI8lwuXaGwevYOCKK+VY3Bxpl+wMhi/fgyaR/L1Hd8QH250UinPLGJQEr+TUg6szlwNzPoThl0
	xjJgLn5NTP6vQIRWMH/dLEjupdUjzUyLOGmWmP021epEi5z8tj1o60QG2D8Eez9xILl2YX6cO2e
	isrHxpXr9asLHfNeKIXScCWpId7Ov8Yht3EntiMrcQaJ3jZBXEvLurJUNN+c9is4yFA9jIclnq6
	pdpDM=
X-Received: by 2002:a17:903:24b:b0:2e9:776f:66b4 with SMTP id d9443c01a7336-2eb364f6eafmr23818125ad.44.1793364225164;
        Fri, 30 Oct 2026 05:43:45 -0700 (PDT)
X-Received: by 2002:a17:903:24b:b0:2e9:776f:66b4 with SMTP id d9443c01a7336-2eb364f6eafmr23817515ad.44.1793364224332;
        Fri, 30 Oct 2026 05:43:44 -0700 (PDT)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2eb3922f5dasm6450075ad.25.2026.10.30.05.43.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2026 05:43:43 -0700 (PDT)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Fri, 30 Oct 2026 18:13:03 +0530
Subject: [PATCH v3 3/5] dt-bindings: media: Add CAMSS device for Hawi and
 Maili
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261030-hawi-maili-camss-v3-3-9742bca8cef2@oss.qualcomm.com>
References: <20261030-hawi-maili-camss-v3-0-9742bca8cef2@oss.qualcomm.com>
In-Reply-To: <20261030-hawi-maili-camss-v3-0-9742bca8cef2@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793364192; l=11584;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=RTvj4zqhJMSSeSc7/A0EYOa4/CSCvFYQM8XqjeGZtDI=;
 b=ljzVU7NFuGNApEdjccu8/pFkDYAErQguaZsP145BpTjLprxMK+iR6y46b4XErcdsv46uYhsms
 5g/2bASpytIBPkJbJSSgLs5hk7yHfFeaCGykP7K4sBO0SYZ7wDdZIES
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDMwMDA1MCBTYWx0ZWRfXygPMoptjzTC+
 K7InZejbYjXWv2+rw6IKkGBl4joRk68NP55gMaI98V2ZW33GP/3l0HuTVhLgSO6CCG874g94cRS
 wjFxPq9KDttio19QlXlFrXQXdWXR/RWzyioHDoeoROIDJtVqoFSs4R7LDTz87KdU54P2oBYJFFU
 S5e7Q3CmLX2QmUa+cMATJrMmT2gSpfKwY9Zd9F2nHTLUR4WRUH8xa4FtXjESmvTmirTF93bwhJA
 qv6beRWzZOktfhSvedwb0XcRAH3EUQuE4rovPl5qhv/V6dOoGOhis8lGMVo/qpFXDapneCpGFQ8
 oRPYHXuOL3Kdm5mjb6qa6Lm4HaIvGQ+o241HmIkj5C9ZJJjyRymNPUrNqFWKplwCXi2lPLpAMbM
 VG9+NHSkCM5075ah2KF02QPnPmzwfDDpaXxQm6bxXxEEwPEAgeuYByyeJXJFUwGZPbWfR+HTznI
 GgJ9CA+v/2Krck77/qg==
X-Proofpoint-ORIG-GUID: TZUSkItaf12MtXMjCWEzsxBlaMXX085w
X-Proofpoint-GUID: TZUSkItaf12MtXMjCWEzsxBlaMXX085w
X-Authority-Analysis: v=2.4 cv=AJ83otAg c=1 sm=1 tr=0 ts=6ae49102 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=CXfGsmi0X-KHezRtte0A:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDMwMDA1MCBTYWx0ZWRfX4PznYec+9HTF
 Lbp2Tdoz6HulMSueaMboHDJhOGj1FljYYtiV2ueU3UNZk6XVA5DT9DYFY4+QipR1YM0Fm4dKPdS
 n/clexUV/E0lgEjXHPakMXB0MO3oZjA=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-30_04,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 bulkscore=0 phishscore=0 malwarescore=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610300050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_054346_820019_8DD886D6 
X-CRM114-Status: GOOD (  13.82  )
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

From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

Add bindings for Camera Subsystem (CAMSS) on the Qualcomm Hawi platform.

The Hawi platform provides:
- 6 x CSIPHY (CSI Physical Layer)
- 3 x TPG (Test Pattern Generator)
- 3 x CSID (CSI Decoder)
- 2 x CSID Lite
- 3 x VFE (Video Front End), 5 RDI per VFE
- 2 x VFE Lite, 4 RDI per VFE Lite

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Co-developed-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
---
 .../devicetree/bindings/media/qcom,hawi-camss.yaml | 314 +++++++++++++++++++++
 1 file changed, 314 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/qcom,hawi-camss.yaml b/Documentation/devicetree/bindings/media/qcom,hawi-camss.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..32c1cc59e8767b8b03f6947f8fde83d3e7410125
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/qcom,hawi-camss.yaml
@@ -0,0 +1,314 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/qcom,hawi-camss.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Hawi and Maili Camera Subsystem (CAMSS)
+
+maintainers:
+  - Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
+  - Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
+
+description:
+  The CAMSS IP is a CSI decoder and ISP present on Qualcomm platforms.
+
+properties:
+  compatible:
+    oneOf:
+      - const: qcom,hawi-camss
+      - items:
+          - const: qcom,maili-camss
+          - const: qcom,hawi-camss
+
+  reg:
+    maxItems: 14
+
+  reg-names:
+    items:
+      - const: top
+      - const: csid0
+      - const: csid1
+      - const: csid2
+      - const: csid_lite0
+      - const: csid_lite1
+      - const: csitpg0
+      - const: csitpg1
+      - const: csitpg2
+      - const: vfe0
+      - const: vfe1
+      - const: vfe2
+      - const: vfe_lite0
+      - const: vfe_lite1
+
+  clocks:
+    maxItems: 26
+
+  clock-names:
+    items:
+      - const: camnoc_nrt_axi
+      - const: camnoc_rt_axi
+      - const: camnoc_dcd_xo
+      - const: cpas_ahb
+      - const: cpas_fast_ahb
+      - const: cpas_mnoc_hf
+      - const: cpas_mnoc_sf
+      - const: cpas_vfe0
+      - const: cpas_vfe1
+      - const: cpas_vfe2
+      - const: cpas_vfe_lite
+      - const: csid
+      - const: csid_csiphy_rx
+      - const: gcc_axi_hf
+      - const: gcc_axi_sf
+      - const: vfe0
+      - const: vfe0_fast_ahb
+      - const: vfe1
+      - const: vfe1_fast_ahb
+      - const: vfe2
+      - const: vfe2_fast_ahb
+      - const: vfe_lite
+      - const: vfe_lite_ahb
+      - const: vfe_lite_cphy_rx
+      - const: vfe_lite_csid
+      - const: qdss_debug_xo
+
+  interrupts:
+    maxItems: 10
+
+  interrupt-names:
+    items:
+      - const: csid0
+      - const: csid1
+      - const: csid2
+      - const: csid_lite0
+      - const: csid_lite1
+      - const: vfe0
+      - const: vfe1
+      - const: vfe2
+      - const: vfe_lite0
+      - const: vfe_lite1
+
+  interconnects:
+    maxItems: 2
+
+  interconnect-names:
+    items:
+      - const: ahb
+      - const: hf_mnoc
+
+  iommus:
+    items:
+      - description: S1 HLOS IFE and IFE_LITE non-protected stream
+
+  power-domains:
+    items:
+      - description: IFE0 GDSC - Global Distributed Switch Controller for IFE0.
+      - description: IFE1 GDSC - Global Distributed Switch Controller for IFE1.
+      - description: IFE2 GDSC - Global Distributed Switch Controller for IFE2.
+      - description: Titan GDSC - Global Distributed Switch Controller for the entire camss.
+
+  power-domain-names:
+    items:
+      - const: ife0
+      - const: ife1
+      - const: ife2
+      - const: top
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    description:
+      CSI input ports.
+
+    patternProperties:
+      "^port@[0-5]$":
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
+        description:
+          Input ports for receiving CSI data on CSIPHY 0-5.
+
+        properties:
+          endpoint:
+            $ref: video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - interrupts
+  - interrupt-names
+  - interconnects
+  - interconnect-names
+  - iommus
+  - power-domains
+  - power-domain-names
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,hawi-gcc.h>
+    #include <dt-bindings/clock/qcom,hawi-camcc.h>
+    #include <dt-bindings/interconnect/qcom,icc.h>
+    #include <dt-bindings/interconnect/qcom,hawi-rpmh.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/qcom,rpmhpd.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        isp@9253000 {
+            compatible = "qcom,hawi-camss";
+
+            reg = <0x0 0x0900b000 0x0 0x1000>,
+                  <0x0 0x09253000 0x0 0x5e80>,
+                  <0x0 0x09263000 0x0 0x5e80>,
+                  <0x0 0x09273000 0x0 0x5e80>,
+                  <0x0 0x092d3000 0x0 0x3880>,
+                  <0x0 0x092e7000 0x0 0x3880>,
+                  <0x0 0x093fd000 0x0 0x400>,
+                  <0x0 0x093fe000 0x0 0x400>,
+                  <0x0 0x093ff000 0x0 0x400>,
+                  <0x0 0x09151000 0x0 0x20000>,
+                  <0x0 0x09171000 0x0 0x20000>,
+                  <0x0 0x09191000 0x0 0x20000>,
+                  <0x0 0x092dc000 0x0 0x6800>,
+                  <0x0 0x092f0000 0x0 0x6800>;
+            reg-names = "top",
+                        "csid0",
+                        "csid1",
+                        "csid2",
+                        "csid_lite0",
+                        "csid_lite1",
+                        "csitpg0",
+                        "csitpg1",
+                        "csitpg2",
+                        "vfe0",
+                        "vfe1",
+                        "vfe2",
+                        "vfe_lite0",
+                        "vfe_lite1";
+
+            clocks = <&camcc CAM_CC_CAMNOC_NRT_AXI_CLK>,
+                     <&camcc CAM_CC_CAMNOC_RT_AXI_CLK>,
+                     <&camcc CAM_CC_CAMNOC_DCD_XO_CLK>,
+                     <&camcc CAM_CC_CAM_TOP_AHB_CLK>,
+                     <&camcc CAM_CC_CAM_TOP_FAST_AHB_CLK>,
+                     <&camcc CAM_CC_TITAN_MNOC_HF_CLK>,
+                     <&camcc CAM_CC_TITAN_MNOC_SF_CLK>,
+                     <&camcc CAM_CC_CAMNOC_RT_TFE_0_MAIN_CLK>,
+                     <&camcc CAM_CC_CAMNOC_RT_TFE_1_MAIN_CLK>,
+                     <&camcc CAM_CC_CAMNOC_RT_TFE_2_MAIN_CLK>,
+                     <&camcc CAM_CC_CAMNOC_RT_IFE_LITE_CLK>,
+                     <&camcc CAM_CC_CSID_CLK>,
+                     <&camcc CAM_CC_CSID_CSIPHY_RX_CLK>,
+                     <&gcc GCC_CAMERA_HF_AXI_CLK>,
+                     <&gcc GCC_CAMERA_SF_AXI_CLK>,
+                     <&camcc CAM_CC_TFE_0_MAIN_CLK>,
+                     <&camcc CAM_CC_TFE_0_MAIN_FAST_AHB_CLK>,
+                     <&camcc CAM_CC_TFE_1_MAIN_CLK>,
+                     <&camcc CAM_CC_TFE_1_MAIN_FAST_AHB_CLK>,
+                     <&camcc CAM_CC_TFE_2_MAIN_CLK>,
+                     <&camcc CAM_CC_TFE_2_MAIN_FAST_AHB_CLK>,
+                     <&camcc CAM_CC_IFE_LITE_CLK>,
+                     <&camcc CAM_CC_IFE_LITE_AHB_CLK>,
+                     <&camcc CAM_CC_IFE_LITE_CPHY_RX_CLK>,
+                     <&camcc CAM_CC_IFE_LITE_CSID_CLK>,
+                     <&camcc CAM_CC_QDSS_DEBUG_XO_CLK>;
+            clock-names = "camnoc_nrt_axi",
+                          "camnoc_rt_axi",
+                          "camnoc_dcd_xo",
+                          "cpas_ahb",
+                          "cpas_fast_ahb",
+                          "cpas_mnoc_hf",
+                          "cpas_mnoc_sf",
+                          "cpas_vfe0",
+                          "cpas_vfe1",
+                          "cpas_vfe2",
+                          "cpas_vfe_lite",
+                          "csid",
+                          "csid_csiphy_rx",
+                          "gcc_axi_hf",
+                          "gcc_axi_sf",
+                          "vfe0",
+                          "vfe0_fast_ahb",
+                          "vfe1",
+                          "vfe1_fast_ahb",
+                          "vfe2",
+                          "vfe2_fast_ahb",
+                          "vfe_lite",
+                          "vfe_lite_ahb",
+                          "vfe_lite_cphy_rx",
+                          "vfe_lite_csid",
+                          "qdss_debug_xo";
+
+            interrupts = <GIC_SPI 601 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 603 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 431 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 605 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 376 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 433 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 436 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 457 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 606 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 377 IRQ_TYPE_EDGE_RISING>;
+            interrupt-names = "csid0",
+                              "csid1",
+                              "csid2",
+                              "csid_lite0",
+                              "csid_lite1",
+                              "vfe0",
+                              "vfe1",
+                              "vfe2",
+                              "vfe_lite0",
+                              "vfe_lite1";
+
+            interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+                             &config_noc SLAVE_CAMERA_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
+                            <&mmss_noc MASTER_CAMNOC_HF QCOM_ICC_TAG_ALWAYS
+                             &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+            interconnect-names = "ahb",
+                                 "hf_mnoc";
+
+            iommus = <&apps_smmu 0x1800 0x00>;
+
+            power-domains = <&camcc CAM_CC_TFE_0_GDSC>,
+                            <&camcc CAM_CC_TFE_1_GDSC>,
+                            <&camcc CAM_CC_TFE_2_GDSC>,
+                            <&camcc CAM_CC_TITAN_TOP_GDSC>;
+            power-domain-names = "ife0",
+                                 "ife1",
+                                 "ife2",
+                                 "top";
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+
+                    camss_csiphy0_ep: endpoint {
+                        data-lanes = <1 2 3 4>;
+                        remote-endpoint = <&csiphy0_out>;
+                    };
+                };
+            };
+        };
+    };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
