Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39193CCD185
	for <linux-phy@archiver.kernel.org>; Wed,  1 Oct 2025 22:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aBh39l7z4L9tqK0a6aeXbq1Alssq7mqIHe+TO6Ur8dw=; b=oKvDvbnl7KR8dp
	uOtcsRtlTYo4m7pALN3MPhREK3G4mvgYgpu18CfcHDcCNnqU9JoHYQY+h5+eT8g5Fz4laNwCzzDdK
	tUn3AKXxVMckN310y7XbMchZXHjZBWVOQX/dWaxJ5SJWzsLMybjWoYpXD5gGaGap1av9xn1wjuQuX
	HXkYF2RWYi42YBwmA04z7zHvWJmS/+KovO/F+01hrD4+eNZAB2daTvuHg8ybgCN6U9kpIDIxOJQS4
	6uhmNjEtyzJXv21kWB99LPWcZgYL6wfI4gKoYOKlLN8aWO31gNOcWx2j8uJadxBO/9xJRYM41QsOb
	2Cnp/u3lT5lukRIdgzyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v44xF-000000096uK-4283;
	Wed, 01 Oct 2025 22:05:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v44xE-000000096sz-2SFw
	for linux-phy@lists.infradead.org;
	Wed, 01 Oct 2025 22:05:45 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591Ic5gW005969
	for <linux-phy@lists.infradead.org>; Wed, 1 Oct 2025 22:05:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=g6hGIMMv3wb
	uPomMpx8H8k/GiKEKmx7JPEl9gfJaIng=; b=DueehUeZ+4geCNy8yp8SwdJiyHg
	Hz6h6cptSo4H/sSW4inm8OTiTt3cCWtnX7UpCJEJPk2scrUTJYOipJpUSH3tvbGM
	aZxZXI1Ozk1V4+EwGrkJ2mpkcgOgYfAl8n/Vz+yT64fJuOQEs946BY38DEFkyV3z
	8hrxMYo/0K0m9z/GejFvm/Aw4TNSZj6XllFb4Xiyr3UUPr+VhiDP1REzDPqeuxCH
	KmXzTOWqMjdeJKHvMaDV1bT5EhOAeUCu9aOYsi9jo2fZYFvz2Gkfm9umx9awLsTp
	lWKhRuvacWb60rmdLCeWOMd/G86OVUBS2y6HXRK7i3ELrlbRACyi/lIbj2A==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8pdnrgf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 01 Oct 2025 22:05:44 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-32ec2211659so373301a91.0
        for <linux-phy@lists.infradead.org>; Wed, 01 Oct 2025 15:05:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759356343; x=1759961143;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g6hGIMMv3wbuPomMpx8H8k/GiKEKmx7JPEl9gfJaIng=;
        b=g/xWvVRvv0KNPvfHaPPNzSZdGlQaAczQLj0Kg66fXK1EZLAsfvbMx5jfgvpaDwyh7W
         /6Ucb6NGFhMhkF4Sp9zTkgMnLooj+bT0reYEriRKz8/49Eh4YSCFKIxXjDo/NAamA1Ym
         o4J+2AahaTVBusv6IKiD95VJAeytRjHd8oMGQvR8H5HjUvAasmCWA372hbftmFOCK6yf
         PHTNV3GD1/k7zaqQmsB9R/xu4vwQhRXVeP4GBe966LYoIefRmO8lMqkwZzSKY6RNqmAQ
         mzzUs+vC+0X5pyZdLkedRUJn+BwoXpYHPK48x8JzDHddT9DKYIvHjNEq3LUxYpuKWstM
         0/zA==
X-Forwarded-Encrypted: i=1; AJvYcCXAjyTM2I1flKoN7Pc8cAFXVg89X4giQmjaOAIWvIS8m0OwKoYWPVGuFysRX8CupqqPlPNSP1qv1z0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyW8jnjCddpqJeZaL4A1t04UIijjXTWUa23OWhxTAIdsAbP0LmS
	V3mRiiKEgMMJJCyS7inKKOrzw4czIuyD6chNxdG+W/1ea8rEk47wmNCXkRHG7i6Caz1GTsgyS8P
	e2LIizUmZ7gjxkKnrroL5CLxelNB9TEnsr5NgJ3Fz310nD8ddgDyvgx4NRwaTugYbVhrB
X-Gm-Gg: ASbGncutC6rPhWt70nAirbYxptOU0PnK8+wFsSktqym+q5mkWXQnrHIh1+KI4IBR6C7
	JA/iDGpW3wCKDL4F18tDph7Su9Elv9gjP/9ce6jXQ84ZMx2WjmEH6vpTHpksHI7y2q9KxPUpGws
	f1uH+QJRJhD6H4oC0emI+jXERTmR/0vw6U7KHfDc+CXM/6r/I9gzhskdPly3SOQihzzTsK6xLa6
	Sr8gd45mU79yqUUi/VlHP6sY8uI+1o4T+IJnhXhQYU+bmjmptjlo2zo1iMmmsGi7u9z9jxdmMek
	qNoTsIRmMqWfxjDUHoEKCyTSiI3gjZt/1w8bQCAtxp6rx7asGbMfHQOyi6t4hc7EoR0LZumtguV
	A1T8YjaQTtujAvNNY3k2BEg==
X-Received: by 2002:a17:90b:1b0f:b0:32e:a10b:ce33 with SMTP id 98e67ed59e1d1-339a6f3cde1mr5653503a91.21.1759356343296;
        Wed, 01 Oct 2025 15:05:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHMYMlMROsnj4h+It/s+6vj6sTVkjqirS+NPrscbKY0wqq9o3/qEeNlWw+iTriGWj/gWEZ7vg==
X-Received: by 2002:a17:90b:1b0f:b0:32e:a10b:ce33 with SMTP id 98e67ed59e1d1-339a6f3cde1mr5653469a91.21.1759356342817;
        Wed, 01 Oct 2025 15:05:42 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339b4ea3c3dsm702085a91.5.2025.10.01.15.05.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 15:05:42 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v4 04/10] dt-bindings: usb: qcom,snps-dwc3: Add Glymur compatible
Date: Wed,  1 Oct 2025 15:05:28 -0700
Message-Id: <20251001220534.3166401-5-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
References: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: IssvA0F5-fgM2bmwz4RBsRSxkL41w7Ei
X-Authority-Analysis: v=2.4 cv=MYZhep/f c=1 sm=1 tr=0 ts=68dda5b8 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=JYTQWVwI1XGucIoeipMA:9
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: IssvA0F5-fgM2bmwz4RBsRSxkL41w7Ei
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzNiBTYWx0ZWRfXxjO3PFW22qd+
 HUcFy+HLdgx3hFajzX7Uj0NmwQ2lBKTpO7lJNX7DjR1aXz/uhIhW7bXxCxVDEAu/zo+9ahnKrjS
 URz3Wkjx7n+HxEfr2N4bgf1Hmhij8tzWR2NYy/9/uLUnPE1kCSoVnUpj5recyuwuR0A6SM4i6ae
 up3E9tqcgNGqq72d1aYL3+aPVR1Vk6xLqck3owtReATAxL63hTf5Fx3FnnqwBUyajDzR7agKsq4
 6SVQ7cj4jf6dkfGdgd2MDwAKaLseei05WYbaqfTw2s0oo5faxNePzUYXuakk39Qt1xVMNBT1lAC
 CRDVFZxYQqArgay2WKtA/mliVXv0gAG27OQaD37KhfVDjI8STcFu0LANB/gAz3ZvuBq50dNa+aR
 nquDvOBNRPYFtWQrfNoJTcPa9kUzAw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_06,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_150544_625604_90DDC80C 
X-CRM114-Status: GOOD (  10.53  )
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
