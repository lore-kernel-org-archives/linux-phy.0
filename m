Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E80F9606A338
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 11:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=3A8OhzPP;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=hrUqSBNx;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=S2GKfKbY
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=3EFi4MJRtkD19AJWotuxn21QEf5Ah7adkZBHq8eKDew=; b=3A8OhzPP2GE/H1RYxGh4nBU21o
	zFi+u9K6vdGR0Sl0KtPQtHtdhXB5uFgQdAP3bN3Vs+vb00VR5qM0ENaRPFLCbUYEUdzrY33b0UmMo
	KthylkepbJ0G4pJ55Vn4XqGR5ciKQ0w2DUy5XqQinOofrS9GECYjVWk+oQ1MEr/FwgIzUP7jYr5M0
	SPtsEfFSyt/MSgPFTEI7ipiliDCrTcUAML+ljAoOqTlPrH1hKXjrGQK6OaznTjpbm2bjJykp+3vaP
	W7bCtQSPqIxD6tsvQ7Nyiqq8TkNC3y1CPmaA2pzdfM7ex/ft5Gwl9+hH9St04OVmgd6rKpfHuNOBI
	v/VrEL5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSBxg-0000000Ftlv-2qwA;
	Sat, 14 Nov 2026 11:30:24 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSBxe-0000000FtlZ-0nqc
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 11:30:23 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AE9wQ091089241
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:30:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0VLhsygCS1Olo/ZViAlUiziD8BIUpbLiKISOnmtdtZc=; b=hrUqSBNxl0OhVcVu
	ZMUuKtyuuc+Nz3/z3hx1n77m1AdqYrwqK0IjQwnWQ6NUOAmw40/8PGIPozFJjdWU
	AsimbXLs/4kWwEB1F3VaMxVIKAzLH/3cq55/oOkHQaZN87DIKZuQoIHPabEPlUpt
	u+sP84SyodFOzrBe9HeKiRSSlHtU0jAMe8o10IiW8JZtGOq+elhhAH5klKovUCC9
	aAXxVaafS5D+n6Xo1NuAapGrL4EpXqQy9s6LthQj2xauLw/k13RwHm9IxKVpsm16
	oFUWL0nzwAbaSqtYnIeaNILIbR9j1i+QCrf3VNmee/S9eheSq07XUPrd+E/u6fFd
	FYgSwQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhm8rkv5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:30:20 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-91f12cc95a0so41709876d6.3
        for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 03:30:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794655820; x=1795260620; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0VLhsygCS1Olo/ZViAlUiziD8BIUpbLiKISOnmtdtZc=;
        b=S2GKfKbYMLgYiUoOe3y7ezHxq5rinS29V50vYt4LEgSgujk6t78yeh2aCcpT8tH9bt
         J7k0CpiJ638d6dqDYNHVMQRRooblz/86Va4ra/Vg7kItxNo8z0qnPUMjZ4Nlh7plWah2
         +inFfgnisZGCDY08af6tuMW/gWGlEQ3TrEVMLXOterVrmzB298+Q80lbGUZ2kN6KuzsE
         4s47U4cZVi4nQztlentv7cbMT8KzEguvhI3Qhz8iQ3wd/jxu18UUAPzjitWqDLY4hBYD
         xb1y3sqeQgqynlJqXeUebwxz/J0a5aB+gsXGzVPJVI0joT1Q7LGjwpwNsVUZqSLi+oNl
         UVIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794655820; x=1795260620;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0VLhsygCS1Olo/ZViAlUiziD8BIUpbLiKISOnmtdtZc=;
        b=kdGNAVBwjQuVwLa1U2X4br3gOxNgmZ8BCY7XeeWNbjn8g4S+2hZoRuCT2c9cFH3Y1y
         HhSsjKlLe/HMX49aWgbfIRZ6t3A6196AcsP1ELU5vJZjwo9/JVvlSrPvXd6b0KwUmCYO
         XsA7x+Q9OpZLnegYgt5T505c5XFXVrX/L2qnIkp3ZC5GVH140SVeN9EqhOsj1IL9dGjb
         N33BMr6egT02GqkfhaCmwApbmMMImqF1sav/0qPBI/8mFkm91tiVAqcgRjhcsuHpbFfE
         n8355I5jy9KqSQeJvk7BFdXXQIQ3NbRpiQFbhSCyl9bA3EbxDZ82TgN0Ig5r6HMmGkVw
         CxmQ==
X-Gm-Message-State: APuU4Z9+jav/YnL/37Sx3QjBWXTHp/sNJCXAeiSYZMZMJz9zpPZj1QfW
	wBVOClhlg2rz/KwPHB1srtUjMVnLw2Kl3Apte1T630KPc51PMfbZ8LxC0L/PkvaFSREoRxcgTBj
	QKuQpJbLzPsEucyndCVqTIsb6zrFRk86xkecRefTtDKg8lX4p8NqJUYoqD9c4iPn4bCXM
X-Gm-Gg: AYBFou28eWyz3b3HRpxxVrTc3cS/C/wP9BxF8gzyUZok8fFi4LaVsdtIeTnR8b7ll0L
	vbvRKh2tRR8Ml+IjJinYBBxDWmWuEGv6U7cdtQUf84x0pK90YGX8tCf17Hfgm+I67oyn0yASFAo
	l4WZzA/CCBp0LnU0/3YM2DAiyemcqUimehjfrEviTGlIhqbPYBmzF8ZG2S/9RUaoR00KkAOx2Ii
	D/BcA5EC7cuZJ6bj4rIjnMeECGIvgcCUX3jSsplLuyPiqJZEr45167NIw1NpBf+i5qOkCHkhO5M
	q6iNc4ITn6aptH13/XPECeHH5d0RJMdFEv/Cf1D5swTY3Dm7QftF220mHQ74hQr8aG0O87duTC7
	Xb5I0urxihJlpW2IQizxPY5QEHLwYs9IyP1ZPVw6vqqOHU128hDtbtm6mdHAfmhk26lQ/E6OeFY
	FeO+7YhBdOST91CCBZsclKo0jSaDAZqVuO8KXDZ9Kl
X-Received: by 2002:ad4:5def:0:b0:91f:1de9:97c9 with SMTP id 6a1803df08f44-91f24213187mr87460746d6.44.1794655819833;
        Sat, 14 Nov 2026 03:30:19 -0800 (PST)
X-Received: by 2002:ad4:5def:0:b0:91f:1de9:97c9 with SMTP id 6a1803df08f44-91f24213187mr87460236d6.44.1794655819313;
        Sat, 14 Nov 2026 03:30:19 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91f23d7ba48sm41389746d6.28.2026.11.14.03.30.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Nov 2026 03:30:18 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 19:29:21 +0800
Subject: [PATCH v7 04/23] dt-bindings: media: qcom,eliza-camss: Add Eliza
 CAMSS
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261114-add-support-for-camss-on-sm8750-v7-4-8ff2a11835f6@oss.qualcomm.com>
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
In-Reply-To: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Frank Li <Frank.Li@nxp.com>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794655774; l=10168;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=cF6VOsiourzLT1KEbZyHYZ5zkrOhPR4Jmv9rF5Vw16Q=;
 b=dFHopXgu5lBP1B3akNl/HEjkhcgLP0KmbXNe8F5mooo9axzeq4RpdiNQXbjEXcJ1anGCvD/f8
 vyLIfuTJ2yCC46WaIyEVe+omLkkiR4GuXOWknzXd/W3UdXs1L7veEoT
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Authority-Analysis: v=2.4 cv=ItKL47/g c=1 sm=1 tr=0 ts=6af8464c cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=nzTIdK0Ps9Aro55Xt-wA:9
 a=CwEh93l9g52l-ZXh:21 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfX7X87kRLp7r3N
 Wp8NHNZs1US5qyBYKO7mL3orKr/qjfkHxutTfoSI+wTF8wJoDkkmgam8S/W2myLDBEmIXm2AbpG
 HKP9UYsC4MMxP3dCo3TcmxLHzNACr8k=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfX+YI8Rju+zrB/
 +3F46oYEYbup1xbX/WY0nmfJRAJ9tZrTMXvkgfS20HQPtjfecRzoN70kV/4jd+Z82Sm0haf592g
 7ofvqQp8EUzIm8iBTpYjzuAAcmcr3vBXxyGF1vSRRUngeH6lB9EDo8aGcuWZSvgjJy9oM/QNVhb
 M0/6QBjoigXDNIttiGfQfMjMJy3rP4YyOi03kNqz+PhzJErOQlm5IZxvAfqi4pZAPiVBasxBCF3
 WeHPKn66JOIiWef/PsoyCfZY09s5M2MG23j95i9qMi17fanfgrAd+3/GP98jdjsPG6vq4HzLAuk
 3fouYtPT8+7N0E+VKaupACy7qbHEhXFIxqhXZYlNZDSNifNGJqUbMhlf/+fPh6byD14Qv8p/31u
 rmS77saLzAjkJ8lGuBIy9ICXIhodDsuHltUfBxHbRnnYcCgoPA4SjmLlbGIj4lLHf8c9FPM0Xc2
 cHeorlyph0QnZuHLXWg==
X-Proofpoint-ORIG-GUID: 6QdsWoIGTWbHfwxOYOU_tMED-p-Cm2UG
X-Proofpoint-GUID: 6QdsWoIGTWbHfwxOYOU_tMED-p-Cm2UG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-14_03,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 malwarescore=0 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 impostorscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2611040001
 definitions=main-2611140045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_033022_359976_614D1F0B 
X-CRM114-Status: GOOD (  12.62  )
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

Add bindings for Camera Subsystem (CAMSS) on the Qualcomm Eliza platform.

The Eliza platform provides:
- 3 x CSID (CSI Decoder, version 970)
- 1 x CSID Lite
- 3 x VFE (Video Front End, version 970), 4 RDI per VFE
- 1 x VFE Lite, 4 RDI per VFE Lite
- 2 x TPG (Test Pattern Generator, version 2.3.0)

The CSIPHYs are standalone PHY devices connected to CAMSS through the OF
graph, so they are not described here.

Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 .../bindings/media/qcom,eliza-camss.yaml           | 282 +++++++++++++++++++++
 1 file changed, 282 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/qcom,eliza-camss.yaml b/Documentation/devicetree/bindings/media/qcom,eliza-camss.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..8775ec6a2f69bad38bbc3e91c6fe285ede98c219
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/qcom,eliza-camss.yaml
@@ -0,0 +1,282 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/qcom,eliza-camss.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Eliza Camera Subsystem (CAMSS)
+
+maintainers:
+  - Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
+
+description:
+  The CAMSS IP is a CSI decoder and ISP present on Qualcomm platforms.
+
+properties:
+  compatible:
+    const: qcom,eliza-camss
+
+  reg:
+    maxItems: 11
+
+  reg-names:
+    items:
+      - const: top
+      - const: csid0
+      - const: csid1
+      - const: csid2
+      - const: csid_lite0
+      - const: tpg0
+      - const: tpg1
+      - const: vfe0
+      - const: vfe1
+      - const: vfe2
+      - const: vfe_lite0
+
+  clocks:
+    maxItems: 21
+
+  clock-names:
+    items:
+      - const: camnoc_rt_axi
+      - const: cpas_ahb
+      - const: cpas_fast_ahb
+      - const: cpas_vfe0
+      - const: cpas_vfe1
+      - const: cpas_vfe2
+      - const: cpas_vfe_lite
+      - const: csid
+      - const: csiphy_rx
+      - const: gcc_axi_hf
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
+    maxItems: 8
+
+  interrupt-names:
+    items:
+      - const: csid0
+      - const: csid1
+      - const: csid2
+      - const: csid_lite0
+      - const: vfe0
+      - const: vfe1
+      - const: vfe2
+      - const: vfe_lite0
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
+      "^port@[0-3]$":
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
+        description:
+          Input ports for receiving CSI data on CSIPHY 0-3.
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
+            required:
+              - data-lanes
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
+    #include <dt-bindings/clock/qcom,eliza-gcc.h>
+    #include <dt-bindings/clock/qcom,eliza-camcc.h>
+    #include <dt-bindings/interconnect/qcom,icc.h>
+    #include <dt-bindings/interconnect/qcom,eliza-rpmh.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/qcom,rpmhpd.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        isp@ac04000 {
+            compatible = "qcom,eliza-camss";
+
+            reg = <0x0 0x0ac04000 0x0 0x1000>,
+                  <0x0 0x0ad27000 0x0 0x2b00>,
+                  <0x0 0x0ad2a000 0x0 0x2b00>,
+                  <0x0 0x0ad2d000 0x0 0x2b00>,
+                  <0x0 0x0ad6d000 0x0 0xa00>,
+                  <0x0 0x0ad8b000 0x0 0x400>,
+                  <0x0 0x0ad8c000 0x0 0x400>,
+                  <0x0 0x0ac86000 0x0 0x10000>,
+                  <0x0 0x0ac96000 0x0 0x10000>,
+                  <0x0 0x0aca6000 0x0 0x10000>,
+                  <0x0 0x0ad6e000 0x0 0x3000>;
+            reg-names = "top",
+                        "csid0",
+                        "csid1",
+                        "csid2",
+                        "csid_lite0",
+                        "tpg0",
+                        "tpg1",
+                        "vfe0",
+                        "vfe1",
+                        "vfe2",
+                        "vfe_lite0";
+
+            clocks = <&camcc CAM_CC_CAMNOC_RT_AXI_CLK>,
+                     <&camcc CAM_CC_CAM_TOP_AHB_CLK>,
+                     <&camcc CAM_CC_CAM_TOP_FAST_AHB_CLK>,
+                     <&camcc CAM_CC_CAMNOC_RT_TFE_0_MAIN_CLK>,
+                     <&camcc CAM_CC_CAMNOC_RT_TFE_1_MAIN_CLK>,
+                     <&camcc CAM_CC_CAMNOC_RT_TFE_2_MAIN_CLK>,
+                     <&camcc CAM_CC_CAMNOC_RT_IFE_LITE_CLK>,
+                     <&camcc CAM_CC_CSID_CLK>,
+                     <&camcc CAM_CC_CSID_CSIPHY_RX_CLK>,
+                     <&gcc GCC_CAMERA_HF_AXI_CLK>,
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
+            clock-names = "camnoc_rt_axi",
+                          "cpas_ahb",
+                          "cpas_fast_ahb",
+                          "cpas_vfe0",
+                          "cpas_vfe1",
+                          "cpas_vfe2",
+                          "cpas_vfe_lite",
+                          "csid",
+                          "csiphy_rx",
+                          "gcc_axi_hf",
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
+                         <GIC_SPI 433 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 436 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 457 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 606 IRQ_TYPE_EDGE_RISING>;
+            interrupt-names = "csid0",
+                              "csid1",
+                              "csid2",
+                              "csid_lite0",
+                              "vfe0",
+                              "vfe1",
+                              "vfe2",
+                              "vfe_lite0";
+
+            interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+                             &config_noc SLAVE_CAMERA_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
+                            <&mmss_noc MASTER_CAMNOC_HF QCOM_ICC_TAG_ALWAYS
+                             &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+            interconnect-names = "ahb",
+                                 "hf_mnoc";
+
+            iommus = <&apps_smmu 0x1c00 0x00>;
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
+                        data-lanes = <0 1 2 3>;
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
