Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92A54CAC5AE
	for <linux-phy@archiver.kernel.org>; Wed, 24 Sep 2025 23:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y4LJKMCDKmoCtqBOu2C2UbM/Dqxow/IARsE+i5iIJ50=; b=Znk6NQYWLvm0qZ
	UOW3SG4Ix9itiCmnnsuSdZ5+iHim0UsebX6ku2aU+ecSEX/fa5mFnfluskm0HJQfdoreaHpE6NMKo
	EG+FXT9UyBRzwjVeC6xlxWlv/XFzfbNgGHcPBNdtBw2IWNa6p4Pi9NLy2KEDM5wDx59w3gUSrwW7T
	vGDU1tUGTNUHWUgP7YHR+A2jgblJtUDFNvMLbQaavzoLBi/uzMdFmEheVe+IPvfeDEshWsdgolnFi
	PZo37eJ1UxHGAhblXiSrdH62w0JDMm5AYs83EwAzhZXBFs+AZmeSwAAcWaKzjxdhdZOruzJnqVwsf
	rud4iGssP4Z64/mQuzQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Z15-00000004jq1-17VR;
	Wed, 24 Sep 2025 23:35:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Z13-00000004jmi-0Oii
	for linux-phy@lists.infradead.org;
	Wed, 24 Sep 2025 23:35:18 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCgSAY027848
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:35:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NZvnJ81KxkQIo11RALQNJeyWDefLx9wBbmisYnHSbMk=; b=lP2TRpjtxNLaRnYi
	1GHoBPrTehPeQclbB+aDJ0g9+Jea9memCE3JqEJdRji1Zdo3AmGJaRjBRnmGUuP5
	OpC9usv71XmRZpM8WpklVR0hPLMKYDxgEV0xOCr/Z1F96Hflcpo/FO8yLM+wglCN
	E9bjv/HatppoPWw3RlmFrIRIvhbwOxInYzJSfJP07YyVHt7CHAJY6ZaAxxYM5hGe
	x7Ht8HWY8NByPIQzmbUpZvFIyt3YCCDOpOqTp8NNQJOPtF6BhFIBBZjLznUaIHhQ
	A0b48nbOFkNlZU0s8puDPPMBvbEKADZgqIOHeXus654oys+MhdsMWIJ4R98qR6OU
	bXGB6w==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hmnxd45-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:35:16 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b5509ed1854so234494a12.0
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 16:35:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756911; x=1759361711;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NZvnJ81KxkQIo11RALQNJeyWDefLx9wBbmisYnHSbMk=;
        b=lgTLa2LEYkZGnpKNp9Xhe9NHZi8Qi/xRhx7/hLod8Vmv5Ibkhz7YcTuTxJpObYAC3p
         VnQvYnnp/cVakNOnZXJta7NbRnbWGTlGjhwiHelbBhTLzw7w1HZLOYKL0RLmEPPI5yiF
         CWDqG97inD+253+8PzNveRyGOduGVQbtmpP4GuhYvzmodGI1b6FWNnuzCEMLnEFAL8a0
         pmwQZms2FMFgSjlIdWtleY22nU7qdppxHqRwCL3DjlRbCWd1ebH7/FuJkNf6hLuO3e4g
         fWGhnIRKT8v55B6pz2i4PVTgpUNw+jc757OutVUbCtzZ/Hm0yqh84DZdpQ6ITDKAMdyA
         JzTQ==
X-Forwarded-Encrypted: i=1; AJvYcCWhw+DTRI8hocpcOn2iqb4LfHk0bjcSfhM69qKt5PBK1+f3ZafH/R0ocmvv+AQxZJedtCZZah8QLko=@lists.infradead.org
X-Gm-Message-State: AOJu0YywDC49w78ktlhuvkvv0+mNL3vthl1N2OIdA7UXJ+lXh16peARe
	u0iopOltykEOQb6KQxZsipdKU0+HjuyMFKutDMN9VPicncKBi7ju7/+Y33aiTXD4SCFrQAybKkQ
	dyJMCWOAOqa6P5HD2Z28yPKd6wk9HHeFNm8JFewhai8fT/LmFuxkNbZMh+h+7Os9wT+0z
X-Gm-Gg: ASbGnct6G9cwfDisn0YJKcnE/rVchUhdqo71i7Geb1d/8yP/gzTkyQNFQjr8+1x3NfT
	sPX6ExEfKte8XtyglS6obmrKjmMYSjZjLmBlKetTUz+mDmFJbyP/xIe2hZsyDSlPDSZQuJWGsj3
	tZxafOkDt6x/y2SxZocNYLSndqFuqwvnR0Jz4k189G5h6H2igP+GuBy1SmJDjpoSNXXC5wWKDx2
	67Xt0w5D+37lGGWpFMLqsSgbXbicJhijwKzTWsnrv2StV0mG1bN9xMybhXd1W4Fe2CKGCF3Ui1p
	O54gTpDx+f9LJdUobHbgegnxH56O8DJH8VAcAU35mO08OLHmdprEhS40EoCmYiyeY9H0N4ztayE
	0FxAMY6E3DIcGUQU=
X-Received: by 2002:a05:6a21:329a:b0:2ae:fefc:feaf with SMTP id adf61e73a8af0-2e7c4ea142emr1577356637.12.1758756910789;
        Wed, 24 Sep 2025 16:35:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZshf7magBR8c6L1yQi+3Wkf6pFAYDU/U6kxJathQw18FK67RwzHeL0RkuK2ImFKF5YafX3Q==
X-Received: by 2002:a05:6a21:329a:b0:2ae:fefc:feaf with SMTP id adf61e73a8af0-2e7c4ea142emr1577326637.12.1758756910358;
        Wed, 24 Sep 2025 16:35:10 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238e9a9sm212379b3a.15.2025.09.24.16.35.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:35:09 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:34:55 -0700
Subject: [PATCH 2/4] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31
 eUSB2 PHY for Kaanapali
MIME-Version: 1.0
Message-Id: <20250924-knp-usb-v1-2-48bf9fbcc546@oss.qualcomm.com>
References: <20250924-knp-usb-v1-0-48bf9fbcc546@oss.qualcomm.com>
In-Reply-To: <20250924-knp-usb-v1-0-48bf9fbcc546@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Ronak Vijay Raheja <ronak.raheja@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756905; l=1111;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=g9oeeGr6I8KdbWoQAM9xUpSM8MuOeurLB0TLJr9UVOc=;
 b=85EyRAKxKUztOphPzLmjV/sEJUN9oi+oN9pXyNnRzVKuupm4S6iFFK+XVfMTvbawTRA4GtMZe
 iKaSU/Ob6tgDp/lR1g811dG0qbmiFrzcpd6WVdHA53Y8w3/EQfJSe6c
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=YPqfyQGx c=1 sm=1 tr=0 ts=68d48034 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=JlprKJ-Wy1uuo2cOBb8A:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: iRTvndzzkkwJKECkZGWy3_3NSU0e9Dg7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwMCBTYWx0ZWRfX5+/47Dd/xwCo
 n0Wmo4q8Xm18RAgXFcbvZ0mouaSpaOBqW1KC9VWYO4zGbdG7cgcTG+nUGFS5aMHwmY+aX9tmGtg
 +8691BZXyVCB/EPmvNHebrdnGiDY3iGMGGwcRxGLtvEh7TW64OwrACm3MD3Jl2Si8eWmSUVdg4A
 xbv1bjCiFwdqs2RTG2pzMJx+yJGyKPMy+qoxgPBW1LCGp+mbwErHSsrO6PoukYDKJ+s3bcnT0vs
 vM0lSufsWdP+sYPmZgx+DSEIOFJwJuB+LRmuNU4ywvyQwJZL7RZYV7jDjfXaOv9PFnZKOWmBAlr
 Vpl+30JHOy51UmOvKTaEqIxet+Ffj/JpZfYaTc05CIPu+2CGb5VzYQ7to3KVUVEByAQNH9V1kT4
 HhrjmZmz
X-Proofpoint-GUID: iRTvndzzkkwJKECkZGWy3_3NSU0e9Dg7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_163517_311320_1ADA2BCB 
X-CRM114-Status: GOOD (  12.73  )
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

From: Ronak Vijay Raheja <ronak.raheja@oss.qualcomm.com>

Document M31 eUSB2 PHY for Kaanapali which handles the USB2 path. Use
fallback to indicate the compatibility of the M31 eUSB2 PHY on the
Kaanapali with that on the SM8750.

Signed-off-by: Ronak Vijay Raheja <ronak.raheja@oss.qualcomm.com>
Co-developed-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
index c84c62d0e8cb..ab1cdedac05c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
@@ -15,7 +15,11 @@ description:
 
 properties:
   compatible:
-    items:
+    oneOf:
+      - items:
+          - enum:
+              - qcom,kaanapali-m31-eusb2-phy
+          - const: qcom,sm8750-m31-eusb2-phy
       - enum:
           - qcom,sm8750-m31-eusb2-phy
 

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
