Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 050D8CAC5A9
	for <linux-phy@archiver.kernel.org>; Sat, 20 Sep 2025 03:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aBh39l7z4L9tqK0a6aeXbq1Alssq7mqIHe+TO6Ur8dw=; b=Y3/y+8EeSrWlfi
	WzFMD0uFtv/+Y1kp3IUEMnHy1GAhvmpv0miOUIjOvgjFvTkh+JZaoZnyVqdj2SPiVdLpfFyXDmo1R
	DRRKSN61Ak/BEjK2gH+1mVOV4QrY+6iTMcPtAP1Ki0/5wBWqz0v3cbsDx47oaZ/HZzITgoKPBTxbu
	Rp4CrBsBU8GLtYFG/O+mHo/nVjLxvj8SpDGKhApvruw+po6sbpX08avIXVY9Pdf0UMeb3yIfqyj/j
	RzGIWY5YC5OR5A/lLRp/tfTjmh1XpC6LwS9HJSA1Bpend+ENWINesTXwDAyd60AjerPiREbcrzvGg
	+591UsQFFdplr2ASXB1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzoA8-00000004eBs-3FSQ;
	Sat, 20 Sep 2025 03:21:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzoA4-00000004e98-3b3R
	for linux-phy@lists.infradead.org;
	Sat, 20 Sep 2025 03:21:21 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K3FYUW019845
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 03:21:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=g6hGIMMv3wb
	uPomMpx8H8k/GiKEKmx7JPEl9gfJaIng=; b=PyDhJLE+UFGTK2DP0UZR0iYLQcs
	NBnVt5bmN4Jm7ZJ/Y+yWzTgtv78XS+fUkAruXHkKOiWjdi3y3tvUGoBuJV5Zi58y
	dpw3Bivinq3lm6qkgYEucNQ+d0eUMyIsvEmIa+4ienTbKFAUhrxOaTD4a/ssNudU
	INNdgP9YjzR6pB3vsjj1xMBf8zu7kUwkDC+p3iUfPSscZus5JYwHD+Ts4lzUNrH+
	Fw/H6aMGwQ4c0wtwMrb8u5yC2EOXrXhDVpb9SjGq3EcGlo7kmEBlJ14ZObFaqcTO
	EGW6TXeqcr2BnviTPb1Zl2dVZI4djNevrc0FITijT114mulYRfEuhnFT8Ew==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fy14fgb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 03:21:20 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b54d0ffd172so2091566a12.0
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 20:21:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758338479; x=1758943279;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g6hGIMMv3wbuPomMpx8H8k/GiKEKmx7JPEl9gfJaIng=;
        b=jnE/m6N2RT5gIgIDzY7ffO2Xe0iY85knP9yZyFLlOVyI8ReJJe7+jVGCbmgnx83WHX
         LmMHenQDSfSHtzVt/kHz0DoFQoLRD9qID3n5VYAuTRFbYCuWyJFjXZDuJKUnQ6QW4SC6
         PcqGW5rKgM/Bm3kLeSJFHLTEZCDIQrifZPGmushzg+1uCbgTN7vYC2uWYzvgLwDDgBMZ
         T8QXFvaonazwhc0RbLQlcp/Mxrr9KPpCoeKyYu2a0/15iyCZlToZlA0uPBTS5LNczFzC
         CYGZdUmpW0uTkGmMBcB7MzBc4xn/tvZeNy+oItPOhHuLB3uHeX3Me2BuLgkamkcE5v16
         iZ0A==
X-Forwarded-Encrypted: i=1; AJvYcCWYwLQaSOmYPlpWFMRY0G6QgiCXI7XtrA0wihY6PfQCp9Q0AoGbyjhu68AgxZ26n8K1HqcLEr4NFSc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzlFLrkVHL36Iy610dTqLRVbmoC+xStHPDayvljWYtl41tCmZm/
	xkt1pCrp7rYQj9OtBlPi3bRvQ5mE2TJ5Ol2gAIR7BYzKEI1efN8cgxGs+g8e4/Q0SWDjdEEQT7X
	4/iyuEsIrkEDw2UBS03FV5KhjNrYJOZC53Na+ySGSvGHq3I2C3Ucx1wxliMl/t2NXPFfy
X-Gm-Gg: ASbGncuGpwkSSpI3Ns4S1XHfFx3Ef1UIpwNq+WVXPX4wjK0//bxdDpoz8+EUkWUCttn
	XdfmFVTOxxR57OBF09m1o3gQFbH2Kf9QBICKLFnOOlTyhXra0xn4IwSK5VGJqKZsOnwtfcO7fpv
	m/sJA63XGxktSriL7lF3dLbM1K2yK8OnesgkwCghlKrher21jRPJ3/h349616lLHzMwFzKLbN4X
	NJElakvR0pdpm4yTsnfARpsyVSAhE8T7kbPAAGwxLshfV7slbRWHpbT+J0q3Rh6sninMFt6P7R9
	ubrlPs11BC8aLWae+JzB4oyxuZLOQvq7xaqFJ0IVRelOyLDqYkBw68IdvO5DAFeSA3PgT4jUhkx
	bPvNDImPjkJ6XXqt7
X-Received: by 2002:a05:6a20:72a2:b0:249:d3d:a4f0 with SMTP id adf61e73a8af0-2845ed1da85mr16281125637.14.1758338479550;
        Fri, 19 Sep 2025 20:21:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFetA3WDam0Qho0OajI7y40pyPQFuw0lP5o44u6ANcRyJ15kqRkUGW2DaxpCx9AGXT0Vc6BNg==
X-Received: by 2002:a05:6a20:72a2:b0:249:d3d:a4f0 with SMTP id adf61e73a8af0-2845ed1da85mr16281090637.14.1758338479024;
        Fri, 19 Sep 2025 20:21:19 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54ff448058sm6178807a12.54.2025.09.19.20.21.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:21:18 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH 4/9] dt-bindings: usb: qcom,snps-dwc3: Add Glymur compatible
Date: Fri, 19 Sep 2025 20:21:03 -0700
Message-Id: <20250920032108.242643-5-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: HV2aJJ8s3HRu1Gw4xgyBrkLJtOQZLfsU
X-Authority-Analysis: v=2.4 cv=btZMBFai c=1 sm=1 tr=0 ts=68ce1db0 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=JYTQWVwI1XGucIoeipMA:9
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: HV2aJJ8s3HRu1Gw4xgyBrkLJtOQZLfsU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX9dLAOHjXw/IG
 Ztpoqd6U2CLWG0z2+aA7+3oFaedDrutVZeJP+BMZAVEUlRnNsZP15BzlWikucy2Yp8YVian/v89
 Q2vZLgfxpb6NF90RZMlx7HTzz3fp6rLf1qVEXl1m7/xWlZeo9cRXk+F1HOlLNBf7Dhk61+M2Qgn
 k/PaqkhvnYlVdhLLSrQ0HW3lgg42VdOMtrykLKUtcGz8o9JzshKTXO/4Vu7XOKvL3XZ4visvHMU
 ee1lHwOaen5MWxmelmtWbm+lhbUIUI3fKU1H9JVnCihnyrI6Bemqjyl/Hmrb58skdmvvy+xBmOr
 /eVCmb/zFAayfWvnb9qxIcA8mqGBtvKIrUA40b+CWjrgIjxIwJlWq+dhD9iPW7W9uqyvBxCFGrp
 53uPgg0Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1011 malwarescore=0
 spamscore=0 adultscore=0 phishscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509160202
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_202120_903583_6D36D9E4 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
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

Introduce the compatible definition for Glymur QCOM SNPS DWC3.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../bindings/usb/qcom,snps-dwc3.yaml          | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index dfd084ed9024..eaa0067ee313 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -24,6 +24,8 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,glymur-dwc3
+          - qcom,glymur-dwc3-mp
           - qcom,ipq4019-dwc3
           - qcom,ipq5018-dwc3
           - qcom,ipq5332-dwc3
@@ -386,6 +388,28 @@ allOf:
             - const: mock_utmi
             - const: xo
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-dwc3
+              - qcom,glymur-dwc3-mp
+
+    then:
+      properties:
+        clocks:
+          maxItems: 7
+        clock-names:
+          items:
+            - const: cfg_noc
+            - const: core
+            - const: iface
+            - const: sleep
+            - const: mock_utmi
+            - const: noc_aggr_north
+            - const: noc_aggr_south
+
   - if:
       properties:
         compatible:
@@ -455,6 +479,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-dwc3
               - qcom,milos-dwc3
               - qcom,x1e80100-dwc3
     then:
@@ -518,6 +543,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-dwc3-mp
               - qcom,sc8180x-dwc3-mp
               - qcom,x1e80100-dwc3-mp
     then:

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
