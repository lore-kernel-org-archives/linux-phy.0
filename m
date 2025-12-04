Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 035EFD1CDDD
	for <linux-phy@archiver.kernel.org>; Thu,  4 Dec 2025 04:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BoRrxh1EQ03b3QSdZKogL5R4JOrstmhAwtcrqvnQdlw=; b=q6qDc4yK9eglA+
	Efv9KAulhhibqAzE2gGn3TmhM9HVYAmw4jBibn8uXRmlwvhTRklV+XFu47RogAJo71EIePwtU/oRL
	kcGhjC3nVVj/YSCqvKz91hJOEjlnKb1NjqDuml8037wtfQpEcgsIaImGbnJVSkeiiNnxuyk+3YbJe
	HMxNOTR2iloph3DPxfIdPvzgCGJOViwXfLveofpCWjYw9QSLpKOmS+rGvFN46KPafSHfGK/3b3t8a
	XRGO+QTZ8kn7MF06OnQw32QynuVyXE0ZziOZx/2q9kKMYjmD8u+QZ5PMaWQ9HZGUccblDVF64H/Em
	x1qUIJMQlgxXk8KW3Agg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vR1FP-00000007TSH-35Ar;
	Thu, 04 Dec 2025 04:47:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vR1FN-00000007TRU-2JiA
	for linux-phy@lists.infradead.org;
	Thu, 04 Dec 2025 04:47:18 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B3FqdhS3147762
	for <linux-phy@lists.infradead.org>; Thu, 4 Dec 2025 04:47:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=s1I+JK7Ehts
	Vkqv2mCcWDT08UiFfG3Sjd0AWILjPJqc=; b=VtaY8Nzq9OYRj4kgRigFIjR8SOy
	D61yCXJGPQ62xxJbq6ij5iU3UrIvvO4khJN1f8id4ILOnK5SEHTY7CutnRwRpiRb
	hnHzOsGpnW99cx32qReu8t2fbubdVGRXDj3zi/w793BG+oQ6A1jdCLj+dj4DJn5b
	0Lf3g6RVSrqnAk9Afxu8Un3jsIfW2rayPHk5eaONdUav8okuKyi297KmUL97UkWR
	Pz9tZ2yx51wZ9YY28SorFEryOno9x46fnx+opD8YAZytWZ8b2ZDznfbSc455NL0K
	mZ+U5txuwyw694Otc2a8TNfdVll9m43vVeo0rxHswqotvh/E1gJ9EBPbZ8g==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atr7yhyus-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Dec 2025 04:47:16 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-29806c42760so15600395ad.2
        for <linux-phy@lists.infradead.org>; Wed, 03 Dec 2025 20:47:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764823635; x=1765428435; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s1I+JK7EhtsVkqv2mCcWDT08UiFfG3Sjd0AWILjPJqc=;
        b=dOocS42qNrI4kQxM44hJpibM8l/94wNq5XU38QNu2DEto/SHXf+HK3q3LZEK2onfI9
         qm7PZkM0freXyKZLB7qxwpPWvckHtC1sSKPosuraWTbzB4deIn9t50WeCIattsO9S9Pw
         wQIpZVbafrIAHdSsg5wPqr2zevvg3qsIsKPbBE9VgIrD6eQjC+6FfDw1Xg1kYwqUlWOX
         06Zyh8fwziDkS6S093g2B0EFo5qossO905piM8MiqzMgDXApBmO6/g3NuZ2ZHneptSq8
         BrLfk5oX58DK3bj/GuvMbu/fZJNGHZ6OXO0r37/brsgIB0Wg2MhyDc24q5XUVnL6bIlC
         RniQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764823635; x=1765428435;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=s1I+JK7EhtsVkqv2mCcWDT08UiFfG3Sjd0AWILjPJqc=;
        b=DM8sqFICkiZry1k7xbgD15OeS2+Nuaap3uXxLeBjnO6LaJzrYoE0MmQ78Mt9V21ym1
         mw1CN14V9vy0t5jbU1nQAJeVAKHs4/MbawFb077Gq5GBlQELCmo0sYOOnoNONlA7k5hK
         YN4Lyyyns6c6GsUIsU7kwElBL2Y9iPtKbTw7fiLPBlb9ytJBAqXTgQL+9yQmlplk/Acn
         l/k1M3KrtiT58vpA5lycppDmmE19iqHdlBwGdOYbkO0dsYEuhBdBVGru7t6t3ZMrAcfd
         87QJapSA7I/nGSf/o2lyXd1wCE+nWUEG73OmGSOLx/VDD6Ov7u7g23Tc8mNXoKH/Kcbp
         pH1A==
X-Forwarded-Encrypted: i=1; AJvYcCUwPh1uw+/c2TFRVdhL9k8/UiYmrmSECPXzJ/z5PldofYU5jq/J+fiA882aFv9K4oUsvSG+xs6PkhU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxJ4G6T3w+S36Z608Vfpjoe3m3ijGYGG/di6KvASXfgdQvjMk95
	LEGW/L3s1/gEMTiiIJuNrRXHbp5BH6TFjc91sXq8ALVprIFv4wKtmrkxKt5uyeDFieUHubMyuIe
	70uE+WLBMreVHleVq4EBhkN91qd14zgEyzmGOj15hhEKKbCTWP5OZPyCn+AusuIi9aw5MsSlR9e
	93
X-Gm-Gg: ASbGnctG1WMjTNQHQZ7jG2VhMMXmKQHh5FNCNCzCZXQprH2M8Hf5jbZPhQ3tUDc8LWK
	oIWjEBKwsPzP70lVbnwb0+0X9j5wM9aYdoX/gb1WzWfjZRve0oTsq3y9veCJ+C3cyVjV7STFNcL
	Kv9ZgE9R+Krtc/+fMtZieSjQLZsX1ygsuUhq68kdlUoun3BRgRZwKoyN0aN4jrCRXDKqP3hFw2Y
	f5KqHLW1dMdCRPrmRdROEsa1LveReLNqSc9Ug4EqCdtxsW82GVULdTf+GM7zN+/50RQ2Omt+F2c
	3NqjF6SQaoRfo7HQFZkmNl5PW2BtqcHnr1YCadv3PwyCoGQvQFjkeT9h3NqtdCSMhVB78/nf3dl
	HaEqZF0ubeysk0m8v35HN2ozJW3YDupKLd/aQNnhUwBEFhk8=
X-Received: by 2002:a17:903:4b30:b0:290:c516:8c53 with SMTP id d9443c01a7336-29da1f00d6dmr19154625ad.40.1764823635411;
        Wed, 03 Dec 2025 20:47:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGw3ZdgtoJH4ANV1bupEfZRpd/4l3HWwRVXuv7CHEVxKkSApbYU3PjEOPJkGr5TTjVipcPVrg==
X-Received: by 2002:a17:903:4b30:b0:290:c516:8c53 with SMTP id d9443c01a7336-29da1f00d6dmr19154315ad.40.1764823634928;
        Wed, 03 Dec 2025 20:47:14 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29dae4cf97fsm5217995ad.25.2025.12.03.20.47.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 20:47:14 -0800 (PST)
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
Subject: [PATCH v2 3/3] arm64: dts: qcom: sm8750-mtp: Add eusb2 repeater tuning parameters
Date: Thu,  4 Dec 2025 10:16:44 +0530
Message-Id: <20251204044644.3072086-4-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
References: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: UnxPYHkfEzHu8DYQmvnAAqubE2Ux5c1h
X-Proofpoint-GUID: UnxPYHkfEzHu8DYQmvnAAqubE2Ux5c1h
X-Authority-Analysis: v=2.4 cv=ZMTaWH7b c=1 sm=1 tr=0 ts=69311254 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=-Z-y7UPfJgGHtBsD8n4A:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDAzNiBTYWx0ZWRfX3Dbvafce74mz
 CME0g+3lCFOz8NEKPJa83/F/TTQu49lnAuoIGp9XUGrdGuV0lKh3mToyrh5zVp+C4atxu9bEP85
 nUpJyGmH5mOe1a6eTqOgU5FLHs5E1b2bM8CuUbSj2hPAyJOz2JBb8CnM5VvuM6sri3gO4mOf/aB
 nLW/9CVHw7YY1oz7StOcOScL07z7GGsi6e5ljjiQWpvqyzPLYUCoFcsbWBWxMM5YjEcgkTxltuh
 uqe4glUHURz7ZTv5QfsHMmpKOIOTVAJq63IKFDMxqtnT93T+7luPb2aOAMW9wqZw+Rb1UaHczLE
 XVaXjlicaNoy1ap1bMhimoxzW0U1zDbxJpzIO8Ht+ZYwgc6cjoHvhuERrL0daQ9of+gtbDdjUZ0
 zeW4Mv7j9hIxZiS5ZjmjDD+t6GU17g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_01,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 impostorscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512040036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_204717_701370_16EAAF48 
X-CRM114-Status: GOOD (  11.75  )
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

Add eusb2 repeater tuning parameters for MTP platform.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index c8cb521b4c26..b9a4d1c99816 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -1041,6 +1041,10 @@ wifi@0 {
 &pmih0108_eusb2_repeater {
 	status = "okay";
 
+	qcom,tune-usb2-preem = /bits/ 8 <0x3>;
+	qcom,tune-usb2-amplitude = /bits/ 8 <0xa>;
+	qcom,squelch-detector-bp = <(-2000)>;
+
 	vdd18-supply = <&vreg_l15b_1p8>;
 	vdd3-supply = <&vreg_l5b_3p1>;
 };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
