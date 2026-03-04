Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43E17EFCE4D
	for <linux-phy@archiver.kernel.org>; Wed,  4 Mar 2026 23:47:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7a1KNuvVpGg6WXwBxpLW2a20z6aaYoJ8/STAq0hhnqM=; b=Jkh339aFkaIETx
	HK/xc/eQIJXTYC4TzY/4YlEUh6MRZdJx/VedvUTfXi+mGrAYVxcSQkhEcxRUwstlodalYU/Qw2UaJ
	4Z6GdXSrH5OiQA55ZwWuYn2f11qiwH72e5rxzovC5JYcdpnCRm5awfye8iuNWeje/yu4QaY4lTJMw
	EgYEcxhh+IEm2K1jDgz5rg1zFrR5cgn+h3WyBWAdegxhSfGqvHg2CRRrW5pwse3lJrBTxCdQyyDVt
	s7EbzAvE2GsBfptHqU+KRdAIwCPuDZhNWlCXioKf2SPtZOvdUOAE0gf8QIPxvByUFld6q6MkF90eU
	up0qq1dOWdY2pXKoklvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxvw3-00000000dx5-3K7L;
	Wed, 04 Mar 2026 23:47:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxvw1-00000000dwg-0BWl
	for linux-phy@lists.infradead.org;
	Wed, 04 Mar 2026 23:47:22 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624LRKQo2274966
	for <linux-phy@lists.infradead.org>; Wed, 4 Mar 2026 23:47:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=dRQ8uRt4/P5Xnnec5FFe6n
	/FfmAB6R9vICbGidBFlm4=; b=NmZ5wYzwIxyOrtsZ8up/X6ZzXE6q0Brt136GTa
	1y0Fqr2l+ua/4vUaey6GoRyQrEq07cAO6SaHFVorUs4rRIEHU4UtvOEbRNzzht1c
	WjgOZNNArEDS3Ye9CB3EWTYnF3ocgwyn1HebqJ+zYvYgrClaLbYzX3r1NB40/aN6
	9mJjBs+69oII0uiB5NZ9q55vKj2TLwXBHuXJmQQ4j10o8q0V3fBnjFtYbayf+EEf
	TQ7rf2KE3gI+OHi6ToOXtaPVF8LKjJv+IxI/7P4HriyjsbbK7/3uq2vqrNo94Ytj
	6YC047SoyUMkPv1+krLW4n4R6dTdd3O5aWjcWLbIpGLrkMJw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpc4mupxq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 23:47:19 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb5359e9d3so4845276085a.2
        for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 15:47:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772668038; x=1773272838; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dRQ8uRt4/P5Xnnec5FFe6n/FfmAB6R9vICbGidBFlm4=;
        b=h8InBx96mU8typEmqDuqitnA39fECIPfHzjLtsaqwZDoyuBE+PiGdyspCo8S32ElU6
         RBZ8uhuPYuV17waWn4HQd7vWNQVA+/1rd4+CZVrc+v5Elxo9DmcovIXO+jj8kAKHvRpS
         N6V0wT3aPRmGy9J5IptB9TnUzsGnK5Mb5U4MIWabgRwD8w4QXWhHlGphDvU/ZVb17etp
         V2GhooFMwU+GPEMfHgG+R8vKY5kRLhygOI2xlWKTEK7maoitHFrfSGYtgPcva4tj5Ohl
         LuisDDKZ9WFZi141TNkLq3wwb0eQjFoX+jeIJHezekPcInDwmV4r8E2CweU+zSK0Wa/P
         745w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772668038; x=1773272838;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dRQ8uRt4/P5Xnnec5FFe6n/FfmAB6R9vICbGidBFlm4=;
        b=mODJp+qPBeyWdLivHJ/AuW7tNHumkvVoCqGKbZrVu2y0DMWi2+Ddw6n1yIEwbs2bM7
         DgBL21ElD/viSHauCZKsVRQrVWbqfzk/DJry/vPuNwdTBB3mxv4BZj0ftdc9l+VQP2Cs
         2+LdCxk4UtKv1m4zT85hAT33z0YJvwa9ByStLNRnM/KYnu3Zw14gwxbLMZkKZz3d+uOd
         641LU882VGhF/UzYlVQi2caR7NTEZW0udAc465ri+lyYY0tqO051qD5p3aXeJ2Ss3NFZ
         EBa0l6f96zmSdzCf06a9T7IKs9xirmUO+8MyuzH4FHt7smwM+dV83PjJOdDevE+kF5rs
         G2sA==
X-Forwarded-Encrypted: i=1; AJvYcCWvF6323mh0n041V7T8Wp1Zs0OBTkFbbTNsKLz0PA9N8EC+vdUtPFxPcnvFr5pMNdMqYn8mXLfyVf0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyAHFaz8n+/MEhqRKWcy7Rd2shEmgTZDHk1LqeLl1u7JT7je0An
	c4vyXYdrREsytJ6uPxWaYBRgfvhpFLRIc4rkpiianmxqKlKBZBoSgYFGjA99AsvzsaKGIK6kxDp
	0IzNN4sIBfd+kjxwY0bzJjHzmKjkcXYvjWOSTnCvlOvjBH5o2Lpy8L9lSt7PRrxTCCVKG
X-Gm-Gg: ATEYQzy+JNw2sFfYTTcMZ68jD6mw2EzPqqAxrnVwz+uyh+ZuimebBa/U/KCIhTaxQjp
	5kIpCk9g5vMz0YNafC6yshrGPZn5WMSwIWukw8ZbTbOm/rpkhZEB38Xx6GK87D/0h034dP9TWZI
	twEyjBbc6cLZt/OyCaExcYgoIfbI86AjT4iTPqOnT1QTkNMmAAQ9MTflfhkZOlSeLfr2jqVSjWV
	Eyl8d96MBGYnlR2EkWUPc8PhHbYgJYDfdg8VAyod63vaR5wQD9w9pZjBoqjcZqZuUGZ7cDL+FPS
	Pk2VW5yayL3lswtQ5t5LKcgn71vn0F+OpKdkqhqeTe+UL+z9zgbC2AQ6B2SEoQvyVM7a3MeNGR+
	v813/F8WwafPp6twA0AFWBWuOblsIs98wTvx/0ILLl0RZ8gLSM8z4wePJg2+XCR+IGaeMMFnY90
	gvsJ+M1cWBBqbdeqmZUDNgbEom8OzDCHJi33k=
X-Received: by 2002:a05:620a:470c:b0:8c9:f9c2:118e with SMTP id af79cd13be357-8cd5af1bd5fmr444193185a.32.1772668038455;
        Wed, 04 Mar 2026 15:47:18 -0800 (PST)
X-Received: by 2002:a05:620a:470c:b0:8c9:f9c2:118e with SMTP id af79cd13be357-8cd5af1bd5fmr444189185a.32.1772668037874;
        Wed, 04 Mar 2026 15:47:17 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a12d8162ccsm574403e87.77.2026.03.04.15.47.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 15:47:15 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 05 Mar 2026 01:47:12 +0200
Subject: [PATCH] dt-bindings: display/msm: move DSI PHY bindings to phy/
 subdir
MIME-Version: 1.0
Message-Id: <20260305-msm-dsi-phy-v1-1-0a99ac665995@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAH/EqGkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDYwNT3dziXN2U4kzdgoxKXUuzJAMz4+TkVPMkUyWgjoKi1LTMCrBp0bG
 1tQCPGzCUXQAAAA==
X-Change-ID: 20260305-msm-dsi-phy-96b063cce7b5
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=7200;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=EddD0jK9xDGmaxIRtN9XorQUDW4OMYW5Z1114ll89LM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpqMSBChCi8G8GUO04pbQErRlAh/8sb6jvD6jiI
 LEO6ahwb12JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaajEgQAKCRCLPIo+Aiko
 1fUAB/9ffjvy59SgM3ObKkc1S99icLVUP31lNo757yTgpK6Z0w4BfohkBt1Dht0nWd6M2pr3a6a
 k34ZnoYhn9o+nKDORGFM4IqhzBn7yw6kGXbKTnj/ook+/69HT8QIqaTqku72NC/8kHR7p2bHsDp
 gqL4GH+230D7nh4bqjhKd2u1lN/9p8qFmi40jTMjj+JDFvIv4TMkqfW6XfJWRSz5c/qhmDC8BK/
 NxBYdCFp7QkP0Nd4wnHw/Nz5UhrnUMApGAOV6gaM3cXH6RWIARkWZ/epmRmVqbBMX+vS/TyiVRe
 AfSAYvZBXNcilPlHJzzSTEawqTFPMBDqVQf/h7Uo9M0s/csq
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: gTKT96IxdCrsxySABZw3XN5xgtWLBqWB
X-Proofpoint-GUID: gTKT96IxdCrsxySABZw3XN5xgtWLBqWB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDE5NiBTYWx0ZWRfX8QjlscyC2H5O
 UClAOnQlayLioMrd0S0kwHUIj/YethesmPVacxeAjOEAVir7RwrSe+02xHIPUL8xccdZ+IMfjCm
 E1zBRSPD1/2ZcupFoUFYwO2lpjt96yOu+2cKWxi9wSAsuRES98ALVNRgXN5BnL7P5VN0vPOH3/0
 P0p78TViKBEqEv7dBsxcz40V4D06ISY9G19UnLAY5DdEfRJOzDBANb4wVPLUjpmiyJ78WDTbVLZ
 WoY+5dabj5xN1gLVrhWxqsZ2AXNG5mpBquSuzvZJHq4ob22aQjoe07KMl1acFkkyOgEUGhYZY3P
 L713k77W+BD4TTlQeJX0IamXftocyjlXVt/dsHFa1wdycIulbR/6TutDxAgbMBxxFVckYKggntz
 wxFC0tH7WtJBiAGGFtY+GqvxFHjdF0vnHDIYBilTtmr+VqObIjqNKu1gBHlGU51Fijr88uU64X4
 SP/666Ptz230r+6FrWg==
X-Authority-Analysis: v=2.4 cv=C67kCAP+ c=1 sm=1 tr=0 ts=69a8c487 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=gEfo2CItAAAA:8
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=RAbU-raeAAAA:8 a=wepcCMuCHaKBKvurWtMA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=sptkURWiP4Gy88Gu7hUp:22
 a=TjNXssC_j7lpFel5tvFf:22 a=JiizpSU_mAIq9zsZDqn2:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_08,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 phishscore=0 malwarescore=0 bulkscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603040196
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_154721_226099_A886FF4A 
X-CRM114-Status: GOOD (  12.41  )
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

Historically DSI PHY bindings landed to the display/msm subdir, however
they describe PHYs and as such they should be in the phy/ subdir.
Follow the example of other Qualcomm display-related PHYs (HDMI, eDP)
and move bindings for the Qualcomm DSI PHYs to the correct subdir.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Merge strategy: I'd ask to merge bindings through the msm tree, reducing
the conflicts for the current kernel development cycle. Starting from
the cycle after this patch is merged, DSI PHY bindings should go through
the PHY tree.
---
 .../{display/msm/dsi-phy-10nm.yaml => phy/qcom,dsi-phy-10nm.yaml}     | 4 ++--
 .../{display/msm/dsi-phy-14nm.yaml => phy/qcom,dsi-phy-14nm.yaml}     | 4 ++--
 .../{display/msm/dsi-phy-20nm.yaml => phy/qcom,dsi-phy-20nm.yaml}     | 4 ++--
 .../{display/msm/dsi-phy-28nm.yaml => phy/qcom,dsi-phy-28nm.yaml}     | 4 ++--
 .../{display/msm/dsi-phy-7nm.yaml => phy/qcom,dsi-phy-7nm.yaml}       | 4 ++--
 .../{display/msm/dsi-phy-common.yaml => phy/qcom,dsi-phy-common.yaml} | 2 +-
 6 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-10nm.yaml b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-10nm.yaml
similarity index 96%
rename from Documentation/devicetree/bindings/display/msm/dsi-phy-10nm.yaml
rename to Documentation/devicetree/bindings/phy/qcom,dsi-phy-10nm.yaml
index fc9abf090f0d..d98217747ad1 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-10nm.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-10nm.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/display/msm/dsi-phy-10nm.yaml#
+$id: http://devicetree.org/schemas/phy/qcom,dsi-phy-10nm.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Qualcomm Display DSI 10nm PHY
@@ -10,7 +10,7 @@ maintainers:
   - Krishna Manikandan <quic_mkrishn@quicinc.com>
 
 allOf:
-  - $ref: dsi-phy-common.yaml#
+  - $ref: qcom,dsi-phy-common.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-14nm.yaml
similarity index 94%
rename from Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml
rename to Documentation/devicetree/bindings/phy/qcom,dsi-phy-14nm.yaml
index 206a9a4b3845..be31b9bac9d5 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-14nm.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/display/msm/dsi-phy-14nm.yaml#
+$id: http://devicetree.org/schemas/phy/qcom,dsi-phy-14nm.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Qualcomm Display DSI 14nm PHY
@@ -10,7 +10,7 @@ maintainers:
   - Krishna Manikandan <quic_mkrishn@quicinc.com>
 
 allOf:
-  - $ref: dsi-phy-common.yaml#
+  - $ref: qcom,dsi-phy-common.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-20nm.yaml b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-20nm.yaml
similarity index 93%
rename from Documentation/devicetree/bindings/display/msm/dsi-phy-20nm.yaml
rename to Documentation/devicetree/bindings/phy/qcom,dsi-phy-20nm.yaml
index 93570052992a..1d135419d015 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-20nm.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-20nm.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/display/msm/dsi-phy-20nm.yaml#
+$id: http://devicetree.org/schemas/phy/qcom,dsi-phy-20nm.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Qualcomm Display DSI 20nm PHY
@@ -10,7 +10,7 @@ maintainers:
   - Krishna Manikandan <quic_mkrishn@quicinc.com>
 
 allOf:
-  - $ref: dsi-phy-common.yaml#
+  - $ref: qcom,dsi-phy-common.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-28nm.yaml b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-28nm.yaml
similarity index 94%
rename from Documentation/devicetree/bindings/display/msm/dsi-phy-28nm.yaml
rename to Documentation/devicetree/bindings/phy/qcom,dsi-phy-28nm.yaml
index 371befa9f9d2..f8fe75fa29d7 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-28nm.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-28nm.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/display/msm/dsi-phy-28nm.yaml#
+$id: http://devicetree.org/schemas/phy/qcom,dsi-phy-28nm.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Qualcomm Display DSI 28nm PHY
@@ -10,7 +10,7 @@ maintainers:
   - Krishna Manikandan <quic_mkrishn@quicinc.com>
 
 allOf:
-  - $ref: dsi-phy-common.yaml#
+  - $ref: qcom,dsi-phy-common.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-7nm.yaml
similarity index 95%
rename from Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
rename to Documentation/devicetree/bindings/phy/qcom,dsi-phy-7nm.yaml
index 9a9a6c4abf43..d45015e24639 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-7nm.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/display/msm/dsi-phy-7nm.yaml#
+$id: http://devicetree.org/schemas/phy/qcom,dsi-phy-7nm.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Qualcomm Display DSI 7nm PHY
@@ -10,7 +10,7 @@ maintainers:
   - Jonathan Marek <jonathan@marek.ca>
 
 allOf:
-  - $ref: dsi-phy-common.yaml#
+  - $ref: qcom,dsi-phy-common.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-common.yaml b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-common.yaml
similarity index 91%
rename from Documentation/devicetree/bindings/display/msm/dsi-phy-common.yaml
rename to Documentation/devicetree/bindings/phy/qcom,dsi-phy-common.yaml
index d0ce85a08b6d..849321e56b2f 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-common.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-common.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/display/msm/dsi-phy-common.yaml#
+$id: http://devicetree.org/schemas/phy/qcom,dsi-phy-common.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Qualcomm Display DSI PHY Common Properties

---
base-commit: ac47870fd795549f03d57e0879fc730c79119f4b
change-id: 20260305-msm-dsi-phy-96b063cce7b5

Best regards,
-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
