Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E930BCA9ED2
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 11:03:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3l6xUSnRVRtE2vMmhs7tvL28EqBYI0BpXVZHiZnMTnQ=; b=wg/qYyvmp0JgmP
	UU7JOUVTclRmZaoTyd2wmVkmfbsvV0g3YU0DzsLTs3U8Jh+rOv10nYJY3/EyWwQsmej4jszTTFoQ7
	iu9oe/5Oknuvx8RZAmIe+LztF08EnQoYUei8GtGiXWk8QT11Ouktj/WpaF6xaqpvZBg+n6Jk1GbZH
	PJzSqy0YKkh5vHYPfF7X5r51jYexAEFCdxjno4LRes1umEkpXo127Mg0dwpDHgp6Ma23WktWQ2mmE
	CzRquJ0Ao5MgWXBlefcV0Qq/hjLSnYiBYUCtk6Zsb3KT/fT8NdXt6ZfotFKLwi56m/1zZqgFu9kKC
	JwgnRHMNejna2nys/Adw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGaIN-0000000Cf5f-2arV;
	Tue, 13 Oct 2026 11:03:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGaIL-0000000Cf4r-1OWC
	for linux-phy@bombadil.infradead.org;
	Tue, 13 Oct 2026 11:03:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=jFXCPTv/2nT4awTOU0ExymnzqiaZv71EpQzw8EoM3wY=; b=cvxhJdpwbUkRXyd5ioTSLzBAej
	esnlFuPWT2/6ruhRtGLVJ0umz9kNYfab2PsaqU9ve182kSAbAi/uwIVc9XnL0oB6IoDkgFPMEDTJM
	jqjaE9LPa/mwT0CWobXge6FvzWL8q93egV4T0xTexkbkOYQCEXSfsAv+X2Xjinzz9cVrVkoqoWsRz
	0M6lFJx4bCT5ZxdKtZTrBT0OAj66gh8XKlfMx1UlVpQDeS+G4PG/SsK17hdefR+19rdpHZwyA1Yaq
	PUzIiwMIz++wjrYF7BVBNI4MjA9fMvEW/gU0tDkNLCMk6P1oIUfhY8iYNrABydJ48DOvFsLtcgfny
	il5kycpA==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xGaIH-0000000FSZi-1nyf
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 11:03:44 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69D944GU483032
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 11:03:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jFXCPTv/2nT4awTOU0ExymnzqiaZv71EpQzw8EoM3wY=; b=eBWaJ3+oKax3NgGE
	mqjdCCLAfcJa7LBx5QBGHbgLgBa4r90UwM1cDLS6NxNqZSSzNxe1GRYFmohQIcXU
	R0SyG07xc45jG9jEvEe556g7WzYQoUS0rnoXREKl1dxm7EL5EGiiSIsp53lKfzUj
	umA1MhJvc79sZ40DLfJgS9RhGM68kFo6hBQQuCQzsFL0cOxJ6LwxsjzTm2GLvTO0
	DxeYLNqq9YcPT4I+5+B6nadMC7hWlEEiqHl60a7i8KgTtKbrFEXcSGL84NdnzbwD
	S7UpFGeIDRG8MjsbPnS04tm+WiiBqAzRy2yTxPRutvdpoc7KMUaJ4riUt95nO8VU
	DFstOA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h9hpg8gu8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 11:03:37 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3a4a0017549so4595517a91.3
        for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 04:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791889417; x=1792494217; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jFXCPTv/2nT4awTOU0ExymnzqiaZv71EpQzw8EoM3wY=;
        b=JnddPZAqik/O315cbQA9etzU+BwEaoCfLAJfYq/bGlsboCqkh+tqv3t5hZRS+qaUix
         dK9bdybFQHiTwgsRMhYtJ0S1dEHXP+gJRHQVwLmVPAlEJPa177J3W+2PoytpKlBje37u
         YgmnMvwEyHsxFd2ZcMc0uRtJME1+pDDBgyQxiCd1Ry+kgvJCFRFVanXn7Sco6SowKPFt
         ugL7x6e3/ICF0IOo+JymCn415KjoeCLtfpuFJM3MVZaWoQIRvljMdtN6bbET/eUV2x/h
         IQt8SmDkqFIecrWr7l45AhwjOS/K0nzr92V4/GAfD/32usGtHe3BvUUoHHtomYUQJ/Vd
         RaIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791889417; x=1792494217;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jFXCPTv/2nT4awTOU0ExymnzqiaZv71EpQzw8EoM3wY=;
        b=s7ElzlUYJaerw8wK00lfOe4XogVyVhe0dwqNJPNV7LpyUz99h1RZRZVyGEeNOdV73y
         rzwJ6xtir+FhB0lISezYGgwi+tXduA1RPADTI8+5ICNDMPfZ26yYTlGJyV+nIxj88H2p
         iU8iwkyb5r47yjbfft1N/N8xOAe/QAi7Q5snsxmpofpD9hJ+Jo0JqFivnTPfHGWJZAqg
         c/dSKG/rIxnRuMFWhE1sOsKm1/td1ac7WiTY2Q2czYhLLQFBSMD4lNYY9HuXKkhl+JR7
         otHhLLauafvxcZkDy81Vy/KoHK5HXlcxHoA42TdlhkErH/Drk9OXINx41Ez5pB1VxijP
         /uhQ==
X-Forwarded-Encrypted: i=1; AKwUvBwytBrDzp00IppmxxEY0/1qppTIIqv+cmpJc7MXhSL01nFizDclCjjBiqFngiSH8jTIku6O7JXbRkM=@lists.infradead.org
X-Gm-Message-State: AFq9FYJuHz4A9gdyUPZhbzY/z0KtBr25Kvgf0U6/R5cD4yVkBfhG816J
	ISJJ0CanGXpqRBY1LnVu1syucBAVTHZgD0s2EA6A411TmhRfXDNcVIc4FrcXupilUFYVveF0Ffl
	/buIGCMMica62YjV7MB4MeVfjHe/sWRLBBKK2VD3sbB9dgVHpbs85rbkX6Qivjmqb3eJi
X-Gm-Gg: AYBFou0RVy2aYuDhR1/Pd/wRXGKVKRZqiOMt5jIoTUfA1Qa5lwqIIjSjCFmJunArlif
	EHGrXreokHJhHTj2XNpp5HDiWK+QmbQZcnMQLE7vYG2D1uBA2HsmjiofPXidH68hAIQh6T5z0ns
	Vf+I8sd7AeJx1L99pTmqggI5trk1ZE30X8qvRj1LnE96YKzLo4O+TPBiv8z4moTlneCRNbkkqG4
	7PcR6rQI7Htrf59hIgv/eZn2wrlOQlwY8aUOlUwhNrZZRiYxxD6wqKw7oRj5pDFpfugipCYFmhm
	/XcmVLKO9OBGx1pIDiALJ02+tSrWc6Iq0SYzYqNwouySz4++oKrtEvrbpwtXLFtxw6dblBQOs7z
	oo1tusob4YEb/jrot6jM5Lzt8u+lWERw=
X-Received: by 2002:a17:90b:390d:b0:3ab:2d46:1dd2 with SMTP id 98e67ed59e1d1-3ab3a33da7fmr10652661a91.6.1791889416354;
        Tue, 13 Oct 2026 04:03:36 -0700 (PDT)
X-Received: by 2002:a17:90b:390d:b0:3ab:2d46:1dd2 with SMTP id 98e67ed59e1d1-3ab3a33da7fmr10652620a91.6.1791889415771;
        Tue, 13 Oct 2026 04:03:35 -0700 (PDT)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ab36f46dfesm20808403a91.8.2026.10.13.04.03.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2026 04:03:35 -0700 (PDT)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Tue, 13 Oct 2026 16:32:45 +0530
Subject: [PATCH v2 3/8] dt-bindings: media: Add CAMSS device for Hawi
MIME-Version: 1.0
Message-Id: <20261013-hawi-maili-camss-v2-3-fc93222da89c@oss.qualcomm.com>
References: <20261013-hawi-maili-camss-v2-0-fc93222da89c@oss.qualcomm.com>
In-Reply-To: <20261013-hawi-maili-camss-v2-0-fc93222da89c@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791889386; l=11243;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=pZGG3ZTs6JHutNaOoMRo42LdG3lmp4rBlAcm1z9EX4A=;
 b=q2fTn5CptbTRt9DCAcby30uFR43eE7oOVgKWNrGWPTHTaVqjP9VgkTmxXAvmrHilpZajFcZ0S
 tZHUOe5ZnBvA9KEX4K+J+7R6tB1isFoI0yrSEBkIF+o5GlWuSWIDOru
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-GUID: Lte5PGfQGR5r-0L3-yCWdKYzNZTmnivw
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEzMDA0MyBTYWx0ZWRfX2/zgm9cFp1LA
 8N4WRYD/U97wGvkiVBMRzPYHbxjv1AKG6VRCbMpmcmZR9cvGTovfvpd7NMoXaUw9T5CpPOGGwSB
 Q+LizG60gVrEXG/Ci8qWOputz6qyCmg=
X-Proofpoint-ORIG-GUID: Lte5PGfQGR5r-0L3-yCWdKYzNZTmnivw
X-Authority-Analysis: v=2.4 cv=Z4Z5j3RA c=1 sm=1 tr=0 ts=6ace1009 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=yzr0uxE_ijXmPgLYsrIA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEzMDA0MyBTYWx0ZWRfX8x/vYCp/LlU4
 Hi656FdxMf1bgWbk69uKgOLaihSOc8C00h/7tfJO3g1EFCDJAMJKHbwxHoK5H7oG4lw3Bu17lo/
 abNeMY7UKF0MYrOsUgE9fdb+i9QcVJP9/7zwtLKBeubryZUxxo69TYBFwh6/UkjDJrSXMIO99eo
 0TL8vhYruaoVYz+H37qFaf5L2jyW5KkuoXlPtCq0wHovnvhHBxyOJnMJMqjioWjcjJrhgVJGUaG
 Zeonfj2a5dXPt6vYLHroKwp9t/1RtlXkStIJxK9Q+jQuMdAg7c5x93qH2NiAh04+EsgFSbici27
 HtXfS6IYmh1QnvziMJHqt+PSc69CqA9i81mwGm98JLDXkqBjRB9Qmw9FFlIQdTAo/KyVagTc7tW
 H4kpcR3sa3fY9sKfOrFf8qzbg5zh3z9wrV8Vx2Evx1WouevnszCjF3qIS4VAn+sdPJNlG8CejgZ
 pUZ3W3PLd9ROrVG9FIQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 phishscore=0 bulkscore=0 adultscore=0
 malwarescore=0 clxscore=1015 priorityscore=1501 spamscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610130043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_120342_276096_E01A8F87 
X-CRM114-Status: GOOD (  14.83  )
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
 .../devicetree/bindings/media/qcom,hawi-camss.yaml | 305 +++++++++++++++++++++
 1 file changed, 305 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/qcom,hawi-camss.yaml b/Documentation/devicetree/bindings/media/qcom,hawi-camss.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..5bf0dca3d24621bfc4a09feb8e5037a925869751
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/qcom,hawi-camss.yaml
@@ -0,0 +1,305 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/qcom,hawi-camss.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Hawi Camera Subsystem (CAMSS)
+
+maintainers:
+  - Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
+
+description:
+  The CAMSS IP is a CSI decoder and ISP present on Qualcomm platforms.
+
+properties:
+  compatible:
+    const: qcom,hawi-camss
+
+  reg:
+    maxItems: 13
+
+  reg-names:
+    items:
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
+    maxItems: 1
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
+            reg = <0x0 0x09253000 0x0 0x5e80>,
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
+            reg-names = "csid0",
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
