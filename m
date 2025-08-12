Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13033C87FCB
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 17:34:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DxUFFa9ukjV58mGlpFBqcwboR+SLjaePsYH9oyYAf3Y=; b=RcDLESepMBKv4Q
	PZW98OIT7biKtC4bZB5gGd/9jLYktmJEgcvCopqcpJP+39zAonoucuLhRW62i9FBJNq2QRiUuNmX0
	tj2EA9ZT709LewOjHe5E9o8xZtcwvUwXRW4/0aGDC84RHQtf7N5KMywiX6YyXXjAw50kC8P6uuJAk
	qdnBEeQEb/c8e64SSGUbyQRaEYURhruFRwdoqgubCKHweqfkY9DFbEYPVnnhddGa+I1geOLg08z3K
	vSxKQBj4ah2JmkSo7752RivVSCDsyGf+9KYM0bzVjsyCa0NrIvVpfdF9ASN9Dt51MZQXCHcpFBK+X
	TPCITep2edRr91zeTJaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulst4-0000000Bbfv-3Wkj;
	Tue, 12 Aug 2025 17:34:14 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulpUs-0000000AzMN-0yO7
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 13:57:03 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57CAwAZj005139
	for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 13:57:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZQ8+tiX7M0E6mUEBR+uWjNOhJ1OIH6kHczo6fKhd1q0=; b=K0rib+nv07uua6VW
	nuXfD0F5HGud5JLVQGV4eLODA20goezDAju+rxuI+/FHMRt5vPu814Qu+FhA4hrT
	KeORaKJ59xgpBhLRIGpVD1VYMuvstOccBvIBF63Jvc2A2XMflxB7fSpuYuoyoPig
	fq2pbWDvFiTzQAN2qBZs/eilUVhs5S8Y+W67DqwJwOalIDAOlEs8zt525rOkOr0G
	cY28WjtXPTzi6XmVzFU9rPWmqd/42IJKWIjbyZV7i1KNkhDg2udOH0MkehdOyCpV
	KMYfdThQ41noldqwqjlfHQzmCtHT6t2cmv1Iwb5c3pJNKn8ekPBAj3n4PnMbGTPq
	JvUdBg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dygmgajc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 13:57:01 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b4227d86246so3990436a12.0
        for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 06:57:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755007021; x=1755611821;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZQ8+tiX7M0E6mUEBR+uWjNOhJ1OIH6kHczo6fKhd1q0=;
        b=TK29s5WEGk9c3Cjrz4/IY/h/eob3oi8hhyT5YyuzlQluzqTpHkJE/VLv16xD6OYjAw
         M2av/ueloK9h1Fb5i6p/xQSN2yMHLQHMAz6BA/qc9EB20LwODc1zW1Q272P5wRxho6iQ
         B8B/fe6/FLqEK9cvlb+zCwhhlR4ZPdixgPJ+8dw+WJhTGy0RQxViA4LVsS8xJIBWg2Ql
         CoKArRlNGk6N4OJk90iF3FGZg4S3O2N6iNd4cKDgYY0u1+H0z71iOsd0jXsPGaCgWwcK
         1R4Zvpgn/nmGToKLCBZyKMFChuQf6gVAlodEZPRAn+DE3xdQotY25UXnYX0hDxa/huyE
         yzkA==
X-Forwarded-Encrypted: i=1; AJvYcCXXV1e9JYwWYvU6G2wVFewFCh633Kkq9tjR7dpgxKb4+2Mij6/AFq8Ah972XrHNNySd123V8HvOGKw=@lists.infradead.org
X-Gm-Message-State: AOJu0YyPyV4hCYA35zUcVAy+FfmCaGEYLQnqN/0VQj8Ki+vgdyHt94SW
	RVvUG+tCQUaN6pZr3ZayR0NbZ3Am7eSmLqT70fDWIqv+GjBxhdZ6rcLMfYUK1dB5OJJOLpsFt6x
	UOvAVc1NC0hSeT9P950tfj2xm5qSo/KMiyZvAbBylSJvFA0NUEr8O4E3C1D4+w/y6GMzbEygMlN
	/W
X-Gm-Gg: ASbGncuffElgwS8JykFrJTUgzjvQALxE+FweDrb+eCWANyb+Oy8pbXXv3dsJ9ELTxvO
	JA8hJ7o4Ona1gtcq/7ACDpq9l0g9AQwrqLPPqlGQhQEj56jS1eYKVpCndQyutEBDA6rqdoamvSA
	9dLyhOxFukbyWRauFsjxRlLZV007CKxSw8fLC9Vevei6Y+wdROSagMdE3n0rEGxmSyQMKCZkOOs
	YqsrS1yGl7lviUSXbCTc+dbK4jmeHGaKPA8hJGMB8rHl1nHNDrZ/b18I2AmywJRdj7DEiwfNH8m
	mpViY9cp0kYQnXGnj64PY/JZQ4df2F5VAwlSdrBTy+0K6Z9iksFqagNlX1C7IAG5c/fypDAVANQ
	=
X-Received: by 2002:a17:902:f786:b0:243:43a:fa2b with SMTP id d9443c01a7336-243043afee2mr24964745ad.56.1755007020861;
        Tue, 12 Aug 2025 06:57:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/Ll1cwqHkzp4WWLM0KEdu6MBHiByEt78BDHl1i8byC65D++79kI5HRM3rx5blTvOTvRZLdQ==
X-Received: by 2002:a17:902:f786:b0:243:43a:fa2b with SMTP id d9443c01a7336-243043afee2mr24964415ad.56.1755007020412;
        Tue, 12 Aug 2025 06:57:00 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24302e028dcsm16703265ad.91.2025.08.12.06.56.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 06:57:00 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Tue, 12 Aug 2025 19:26:44 +0530
Subject: [PATCH v2 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document SC7280 PCIe0 phy
MIME-Version: 1.0
Message-Id: <20250812-sc7280-v2-1-814e36121af0@oss.qualcomm.com>
References: <20250812-sc7280-v2-0-814e36121af0@oss.qualcomm.com>
In-Reply-To: <20250812-sc7280-v2-0-814e36121af0@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755007012; l=4032;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=x+vJsdB5UbWnDVZfy6kpse5FbjcsZdmkhpaMMIlOSS0=;
 b=fWhFHgoWQEMAvJ1DN8osk233BTcVPVYyvwBmN6wSuJ/meEyBZHsLk/RFvE/UF0PrIJD76vLP8
 qzTKCqQL7FiB9k/qQ+lM7BF+G1+jXOrrdT7wkLTE54Lpbb1P9GSDCUl
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAzNSBTYWx0ZWRfX2vq0pGxeFJrA
 b/YOLICPEvHE1rjFJKJFjHnTJ/oN3euja4yyBxVKbGvoBeoTBpyejt6f+wkPlMHPT8hZefYaSjt
 fjl/x68Zzq6njW5qrAl2w/MYr0NtNHqMIuvFTCe1cO5XpT9kDyitiFdb3+T+RU3+h+3L71P2Nox
 1TRJBOioHRLiWWNq6iz0GHCgukEgKVI2T72lev2L3lcKHe/pxSitKegBalOFtSwNd/uKRY910cz
 d0oPXAadEyH6lbsKj8KtnwqU48VJoxF00I/NLyqhUknluk9GU2w4B4h7DRNbPt/fp3pF40avz+p
 52cJ4BCjnreoDpJ2Ggu3CeAPMnqSDlkLTi2PvO0eix7YTWz6ut/vAu5eB0wZPSCIryI11mIXTep
 pzES0UU/
X-Authority-Analysis: v=2.4 cv=FvMF/3rq c=1 sm=1 tr=0 ts=689b482d cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=dTY-U6FrE7cCJ7g73hYA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: RlgdThDP8qestBIo6NVJPKo3Q0K3Iqj5
X-Proofpoint-ORIG-GUID: RlgdThDP8qestBIo6NVJPKo3Q0K3Iqj5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_07,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 bulkscore=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 spamscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_065702_281084_437E8A39 
X-CRM114-Status: GOOD (  11.48  )
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

SC7280 PCIe0 PHY is functionally compatible with the SM8250 Gen3 x1 PCIe
PHY. To reflect this compatibility, update the binding schema to include
qcom,sc7280-qmp-gen3x1-pcie-phy using enum within a oneOf block, while
retaining qcom,sm8250-qmp-gen3x1-pcie-phy as a const.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 69 ++++++++++++----------
 1 file changed, 37 insertions(+), 32 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index a1ae8c7988c891a11f6872e58d25e9d04abb41ce..1e08e26892f7b769b75bb905377d30a301e6631c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -15,38 +15,43 @@ description:
 
 properties:
   compatible:
-    enum:
-      - qcom,qcs615-qmp-gen3x1-pcie-phy
-      - qcom,qcs8300-qmp-gen4x2-pcie-phy
-      - qcom,sa8775p-qmp-gen4x2-pcie-phy
-      - qcom,sa8775p-qmp-gen4x4-pcie-phy
-      - qcom,sar2130p-qmp-gen3x2-pcie-phy
-      - qcom,sc8180x-qmp-pcie-phy
-      - qcom,sc8280xp-qmp-gen3x1-pcie-phy
-      - qcom,sc8280xp-qmp-gen3x2-pcie-phy
-      - qcom,sc8280xp-qmp-gen3x4-pcie-phy
-      - qcom,sdm845-qhp-pcie-phy
-      - qcom,sdm845-qmp-pcie-phy
-      - qcom,sdx55-qmp-pcie-phy
-      - qcom,sdx65-qmp-gen4x2-pcie-phy
-      - qcom,sm8150-qmp-gen3x1-pcie-phy
-      - qcom,sm8150-qmp-gen3x2-pcie-phy
-      - qcom,sm8250-qmp-gen3x1-pcie-phy
-      - qcom,sm8250-qmp-gen3x2-pcie-phy
-      - qcom,sm8250-qmp-modem-pcie-phy
-      - qcom,sm8350-qmp-gen3x1-pcie-phy
-      - qcom,sm8350-qmp-gen3x2-pcie-phy
-      - qcom,sm8450-qmp-gen3x1-pcie-phy
-      - qcom,sm8450-qmp-gen4x2-pcie-phy
-      - qcom,sm8550-qmp-gen3x2-pcie-phy
-      - qcom,sm8550-qmp-gen4x2-pcie-phy
-      - qcom,sm8650-qmp-gen3x2-pcie-phy
-      - qcom,sm8650-qmp-gen4x2-pcie-phy
-      - qcom,x1e80100-qmp-gen3x2-pcie-phy
-      - qcom,x1e80100-qmp-gen4x2-pcie-phy
-      - qcom,x1e80100-qmp-gen4x4-pcie-phy
-      - qcom,x1e80100-qmp-gen4x8-pcie-phy
-      - qcom,x1p42100-qmp-gen4x4-pcie-phy
+    oneOf:
+      - items:
+          - const: qcom,sc7280-qmp-gen3x1-pcie-phy
+          - const: qcom,sm8250-qmp-gen3x1-pcie-phy
+      - items:
+          - enum:
+              - qcom,qcs615-qmp-gen3x1-pcie-phy
+              - qcom,qcs8300-qmp-gen4x2-pcie-phy
+              - qcom,sa8775p-qmp-gen4x2-pcie-phy
+              - qcom,sa8775p-qmp-gen4x4-pcie-phy
+              - qcom,sar2130p-qmp-gen3x2-pcie-phy
+              - qcom,sc8180x-qmp-pcie-phy
+              - qcom,sc8280xp-qmp-gen3x1-pcie-phy
+              - qcom,sc8280xp-qmp-gen3x2-pcie-phy
+              - qcom,sc8280xp-qmp-gen3x4-pcie-phy
+              - qcom,sdm845-qhp-pcie-phy
+              - qcom,sdm845-qmp-pcie-phy
+              - qcom,sdx55-qmp-pcie-phy
+              - qcom,sdx65-qmp-gen4x2-pcie-phy
+              - qcom,sm8150-qmp-gen3x1-pcie-phy
+              - qcom,sm8150-qmp-gen3x2-pcie-phy
+              - qcom,sm8250-qmp-gen3x1-pcie-phy
+              - qcom,sm8250-qmp-gen3x2-pcie-phy
+              - qcom,sm8250-qmp-modem-pcie-phy
+              - qcom,sm8350-qmp-gen3x1-pcie-phy
+              - qcom,sm8350-qmp-gen3x2-pcie-phy
+              - qcom,sm8450-qmp-gen3x1-pcie-phy
+              - qcom,sm8450-qmp-gen4x2-pcie-phy
+              - qcom,sm8550-qmp-gen3x2-pcie-phy
+              - qcom,sm8550-qmp-gen4x2-pcie-phy
+              - qcom,sm8650-qmp-gen3x2-pcie-phy
+              - qcom,sm8650-qmp-gen4x2-pcie-phy
+              - qcom,x1e80100-qmp-gen3x2-pcie-phy
+              - qcom,x1e80100-qmp-gen4x2-pcie-phy
+              - qcom,x1e80100-qmp-gen4x4-pcie-phy
+              - qcom,x1e80100-qmp-gen4x8-pcie-phy
+              - qcom,x1p42100-qmp-gen4x4-pcie-phy
 
   reg:
     minItems: 1

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
