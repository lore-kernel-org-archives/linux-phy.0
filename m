Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77DF9D1CDDD
	for <linux-phy@archiver.kernel.org>; Thu,  4 Dec 2025 04:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PybxvrTglKDfbsTZfCKxiLdA27DYkIHKE4VyR6VlyNI=; b=hUA+6b59SXZmcL
	FE1LQyjmXORsqR7XY4cxQGQjKqNGoNG0RU26Tox+6v5ni32g7o0dRy2j2Hnaz0JY2f7BFM7c/RhXI
	JJzbtwwDtgW7A8wQ1iXaA9GiHM+7QBJYMhHwLexS7+DoAWJmIVLaNf2aJHD84Qw8plJBgHaC7PxyO
	xtMBQHrEcaWGe68bqYVoE8sGJ6QLgqtQ3uDN0FaR4XBFBFi/CZEqiecEiizedqWnvDt2LB6DVKEsF
	w2O4VVWIwbUfFN7F0DtHiwJuj+AkelphRbd8/1m/sL1EsLfRCKZKt+PTF9VBkyWG9wts1P2InsR3k
	e3T6EjYN9EeJtVUsf84w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vR1FC-00000007TOy-12EP;
	Thu, 04 Dec 2025 04:47:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vR1FA-00000007TNv-2cuD
	for linux-phy@lists.infradead.org;
	Thu, 04 Dec 2025 04:47:05 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B402CNZ1975228
	for <linux-phy@lists.infradead.org>; Thu, 4 Dec 2025 04:47:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=gibI6s/aKkE
	S2xAJDE4O3U75kIeUNHOsdYXPJxPzE6E=; b=ikSISRMF6IxogBDw4TysC1SNBgr
	0qKDRQ8FZyNRvuezCgESw9DiINNyopA8yFM4+HgnwYptHH/+yP8aTm9t4CILwawy
	1a9WLuy/4zEIGAkWqU6KJiubVuD0H8C+OzEDMozjYRNRvHNFMY8qpdBdLIwSNjtF
	ogRS3a9SimlH9L+Qr/J118IeY5ttHPLBiUdDU2DpVjz8oTyhfDy5MdU1/E1Duxj3
	wKb69OA2nxWcLytkQEoyOv2GKCaXpSQ1+Pj9+UWaBasNFCCDdG6rZ6lw++0LP0Ot
	6OfAfb6DEwdrjBvXeHN7nutTsX6B2C8rJkZy9o0cRiDV64I6QQy4TjF9ZKw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atmbtjthf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Dec 2025 04:47:03 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29845b18d1aso9203075ad.1
        for <linux-phy@lists.infradead.org>; Wed, 03 Dec 2025 20:47:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764823623; x=1765428423; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gibI6s/aKkES2xAJDE4O3U75kIeUNHOsdYXPJxPzE6E=;
        b=W4fO/rAaJmG6+b+YKbw90QUvCWqdJz16zJvt/Van7SG6j1yVts6WScMd1xXvLm6WG3
         jG6108sLsgKOBYMUsvY5DgE8098FHeEEHjILASWVSnAJrYKgsNIn8JcdDRhJ6SEf7n7h
         MNJCeuzZvOPtWpeSINoApAMQYCBrk+C5AuFeu2Axxmmsz5LohQ5Do0CHc59wgeeB0JZ0
         1hW3V+mBl2OfjWCfgsDVwGTszkgmRi2Rfm30jdOddENWT4eu+C6u8uKJ7sZvxujlmdHm
         2NqsmgNmV74UbSXX5HKm+TYd1FLSAbeSK7SLY+gdqbBSd356BK3livuapkiGphJ3ArHH
         XpjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764823623; x=1765428423;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gibI6s/aKkES2xAJDE4O3U75kIeUNHOsdYXPJxPzE6E=;
        b=geSpQLTB6x5a5UrXdwH//i7bC+2Tg1/TWVR59b68o/qrXl3SdNeyF2CQoRf6ybDqxs
         Y/vWKBs58eCohpd/LmpOcSTV0hORU6wet4eD7fGrNPPWINjpY/d/mx5ftTA9dkVBROD1
         zl6zpo5hbG6WP3YzeBl1Hr3rmm+c6Tg91iXjrIKO0XzGNAcy5RQZPwHkuFDdgdXpYPOO
         1aWiYylJ6lL0xLfgqnLEcJ9pXO211cwGgRaN2pw4AYxYzjW/bNB0mhDenK7SCzGDLw5c
         ZnhjT14K7e8jUwEcrEzQ6HiP4t9PfQZF5c5AYF17G/aEFWIzYMLVlE6pA+js3cbwMLCo
         hohQ==
X-Forwarded-Encrypted: i=1; AJvYcCXKioaJ5b066039LkP3TEoak0NV6xro1SJOzLwDAHOhjX7KYPOId8zJ+J2DRbKpyBTT/rtUgHC/Bg4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx/OMnJIH4BVY/27g6VmaKIz6db54EXOv/X//bmiXbd9r8wd2gh
	1KftAtw0m5ut3+1RvakPmMFM1YjA2fANL0es2+3MRx6JinbFurcdfwvO1gpPyh/wG1LRgY1ykzD
	ecoXGGoxRsJXCWHgEKrVAZB3+wk4XVeipRA+cbRUlbkxH5sXdYhDtzVBC98SpBJIwucYp
X-Gm-Gg: ASbGncvex91PTsY1cRVx9yxbiHS0vIdYzgpedBiXIB+NuWkHc2yBGwBwz+ewz0m+fAi
	azcbrC/hyf6dKzdSTR7XZclp6r3y9m2PL6AF3tVRCUWRyTvjK926Nw0DUJh4W0NuAj/mUC5xIPA
	2KDJLqEXRq7MCqieGwb94fR9Vd1GV2Lu9x79ifVNdpTUHuYe7xSyB0BUz3d7pxpsWg3TvUaAV8a
	mdBxNG1b7bK9NG4/rqNToiLOANKIRb+njr/E42EERFQqp89Me51rGF5Ns4Cx6p76S7GN2dIE9iQ
	iQtZMWmFQ42RECT9GGMsrUt5zIMYqESvxa7H4jx/AOczG6r8oq7K62mCyfM9nCJnILTX7c9r8JE
	bNV8SLRUxIs3ocACkv3lNbZ0xxOfyR829IfDxtZseZz/D7pg=
X-Received: by 2002:a17:903:186:b0:297:c638:d7c9 with SMTP id d9443c01a7336-29d683434b4mr56391795ad.13.1764823622843;
        Wed, 03 Dec 2025 20:47:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH0GKAK89hN9bwJO4hk6zK8IKfdMSHrM4ElfZXDAhFnPTpybMplsTMuf5Q1EH9XibuMTUHkgg==
X-Received: by 2002:a17:903:186:b0:297:c638:d7c9 with SMTP id d9443c01a7336-29d683434b4mr56391455ad.13.1764823622393;
        Wed, 03 Dec 2025 20:47:02 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29dae4cf97fsm5217995ad.25.2025.12.03.20.46.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 20:47:01 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v2 1/3] dt-bindings: phy: qcom,snps-eusb2-repeater: Add squelch param update
Date: Thu,  4 Dec 2025 10:16:42 +0530
Message-Id: <20251204044644.3072086-2-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
References: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=KNBXzVFo c=1 sm=1 tr=0 ts=69311248 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=_cinBlex1LSEt1clrZoA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: p7EFqChNP83VSy5hY0wCbbTAzZU33-H0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDAzNiBTYWx0ZWRfX697eQwG4A6L2
 1mEQ/3RJ3E9RpaeXJr5daXnoUGtD8hS6XGmw9Ql4nrojb5IRpUJo0o56cX1P+Tn5Tg4tHqQxZcJ
 PULsH2brUUpcWtpGtNelb8MGEvOnPo4fGCVeBfUwt4j8ig3ybyln7Pie/aBx1sOdwJXqJ+Zr/jX
 BEOyHmSd5zR7PlLqLM2EHv7tYea6cFQIrU5kd8jTrtNbPjyv3bhR9pdAbNSqMHHG//QBV9Q+rmy
 L8yvqkWOv5Cg4zik8Q3+U9Yz7BbuwQ+8bNcbZbZNhlN7KyiMQf94sLGG5hD0ZVFYI4Beu725pV0
 IVrhvu7rH+UajsuKuDbMME+AJWqUvzhxtu+8zlQhn/Ot9tyx3f4d65OnFUUCtJil8br2EMrBplz
 O2++zDOKYAB4y181DfHjxwXof/U1fw==
X-Proofpoint-ORIG-GUID: p7EFqChNP83VSy5hY0wCbbTAzZU33-H0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_01,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 bulkscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512040036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_204704_668705_732CC4AB 
X-CRM114-Status: GOOD (  11.27  )
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

Add squelch detect parameter update for synopsys eusb2 repeater.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index 5bf0d6c9c025..f2afcf0e986a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -59,6 +59,14 @@ properties:
     minimum: 0
     maximum: 7
 
+  qcom,squelch-detector-bp:
+    description:
+      This adjusts the voltage level for the threshold used to detect valid
+      high-speed data.
+    minimum: -6000
+    maximum: 1000
+    multipleOf: 1000
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
