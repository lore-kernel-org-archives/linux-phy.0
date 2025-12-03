Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 733ADD1266D
	for <linux-phy@archiver.kernel.org>; Wed,  3 Dec 2025 08:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ho2r6a+EC7w6regltAPC1ekZouOIGxeFTSHBibwBGcI=; b=VB9TfXcq1xtIwC
	Iey7/s+nAMulU8VD6Zl5MyR/oUtBMaBCIgcDJhyYKz7YavMM7bNQSMXbqP76MbHPb3pnyGX+aKtCH
	SLEEiGYXgEEBhEsmNMF/2guRVe/W56nxQarGF2HLS5f/3I7z6pCe15w4t6bKvPdloN/FgkAW8Fbae
	N9kZ7n60qdpfOynUi9YPtgrpo1q+sZEMKMqZDgRAlu11F4oDl7ugz9NJme0g4VpzXS96csQyXn11d
	tfHSAa48B+iBYLXF5WLf0kS5bvI9dk3U2Bii8ygp8L/Jgd3fAqxbB+jU+RnDT4sseKiDy8VJSy/35
	UC+EhYMThXZkSUshgpjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQiM4-00000006JvW-0rUM;
	Wed, 03 Dec 2025 08:36:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQiM1-00000006JuO-23kI
	for linux-phy@lists.infradead.org;
	Wed, 03 Dec 2025 08:36:54 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B34ueHu385553
	for <linux-phy@lists.infradead.org>; Wed, 3 Dec 2025 08:36:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=2EFsXlxqAEO
	zRFKhrA8JZa6NI/XeJNBCRnKuMw7IHvw=; b=mfftMb4AR2L4cKa0zWv8gUjYazF
	s700UBsHEvN02qu49hL0p4lNYzKIFIMQhm1mwu8fbZG5KtHZoaI65IyXe9bl9YwF
	yVf0IVZ9fnLdahY2u5mmwZyNSw148S3CPLMjl2kZ/k53EQ4D1iLcLj5B8uIvj3ao
	ZO86jGd5o3hYaDLKl/JOpk/sSapU+YxVceAvqLYbjMSRcM3Qv0ntIAlTyFoKe+xv
	TmlNcnrCKbzFC+SoaR40Ji9ATdwWEf8gdShnYhsuxbp2S8KsyBDQHo82vzSu1FG9
	XCyRurX4tV85lE97uUNTvpsRSDAECbhD2c7/JU6tK8G4qQgkBYMc3gILwtw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4at5db277y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 03 Dec 2025 08:36:52 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-297f48e81b8so10473305ad.0
        for <linux-phy@lists.infradead.org>; Wed, 03 Dec 2025 00:36:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764751011; x=1765355811; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2EFsXlxqAEOzRFKhrA8JZa6NI/XeJNBCRnKuMw7IHvw=;
        b=Pu5t9nBdI+KnSMn0eqz8nxk3FY9j3j6QKeQayVmPpxzf+4LaBk2NvV4ztpKB3z8BKz
         JQoA1/sVtftjpaanGcT/Hzk5TVG8KqNqw1fkxiy/QB4TGrpX0fZHyfAZiW4TZ7H20FkA
         PQCnhZ3wpjIMa43ZPTyYGhME540+M3Rjltn5pErJXTKJQ8kNrqwdA2LcR+SpHQjCTxrj
         vUYHkLFNAJJqvuTPb9UH0X6WkHh8BiQCWmsq+Bx6dSGolIIV0gbNwFLjXTqCsTUGfs5g
         pvTO5jovdY2UQQGHo0B5stFGl3MZFpyz9JVsaQTwXnTOPOqd756GDHQNScAywhTSZKj/
         AaUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764751011; x=1765355811;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2EFsXlxqAEOzRFKhrA8JZa6NI/XeJNBCRnKuMw7IHvw=;
        b=h6Yh/f65dFCuSDIHU+MWDInfk/qb1OIErtoiJa2B2V5ili5ThvwCGlgjvv+8FkELR1
         i5A7tNa9SUfegd68TnUFI+qEB1IyT8mmEFBqmC/dBE4l73ZXVU4D6losg2l1NBzKC6Cd
         KRAMoZ0R1ANDKe/EC/52R8B9I9sQ6sIq+tcr3r0Vpf3qc8xABOdmVF//Gy6VpbRl1Gq2
         wQnPues1tpU2K2bbTYpPvLpV4xSvrBhYn/wfDwL1FC59KOtDo81hRGqLW9E+3CIP1z77
         hX2+SB+QThxc+d84+n03N4CJQE+DHIiTwizopmx5mgvfeAOPwhrOCkoJ8rD1FLlV+i/f
         tYsg==
X-Forwarded-Encrypted: i=1; AJvYcCUn4mvTF4EwAyc8K7Bq9fZfh+59rfD85h3vdHT+BiUZtUo1FeOTAn2Bi8Sbwdtfj3w2wyM2PTk7EA0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyh4W40uVfR3pKRKffhBvk0bv5BjHoBTeI7EhYJ47KZev3y9I9d
	4vAZHE+UCHVtQmRZODxiyj7o9mAIpxWC0XLisSwM7vadZ2KsyAh0zMcj5CEiyY/lmAgtI+P9Exp
	H26QT4oFxh502sD/tCMmzsYt0XxdpCPN3Wh3DkwajhqQ9azLncIsIfAQdpSo3gqhqfWuM
X-Gm-Gg: ASbGncsftbJZ99Rqka3eW+9M7WDmKQ5LxW4wjQrZTqR3WmS3en6KFdrUE6xGc1x6cKm
	kd+WN1sTt/SmG9MSr4HOVQXVawg0OvTNsZ7wwUJGOsdCb76vfiup7Ee9syoyz24f95fGSpn3fZE
	bDZKQVx/AvmyojNBe3CTn2ITrX1KCzUvsBufA4xm0DIhdwSjI2BMR/bCXIZ+26pI1xKXL8s8HB5
	4HMs21adeswYN64EiCHUKGNPsL+Cj8JRj0w7bNFfUW7lu9dmlMxI4mRrFUYfF8d38ZVxGfbH6og
	Hb0m/9yENg7iOWw1h7TsC2njZQaqBHvLJHZxuiP3bK2JA6ilCwqnfB6NtC+YF1W7MpAGcQGpfug
	M6vjm63khexdld6KJb+Rn1jvxZpoN7Ym4JL/QnEzRBwzfKgU=
X-Received: by 2002:a17:902:f683:b0:297:e1da:6fd6 with SMTP id d9443c01a7336-29d5a4aa753mr68233025ad.8.1764751010980;
        Wed, 03 Dec 2025 00:36:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE9OwI3p2D4ZnJgtRbXnVvtY9dCf3GI7+PTZnV9WfMVvJs8dUV+jaL+sM1GikJSL7PgiIv8Ng==
X-Received: by 2002:a17:902:f683:b0:297:e1da:6fd6 with SMTP id d9443c01a7336-29d5a4aa753mr68232885ad.8.1764751010510;
        Wed, 03 Dec 2025 00:36:50 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29bce41785bsm175707985ad.20.2025.12.03.00.36.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 00:36:50 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH 1/3] dt-bindings: phy: qcom,snps-eusb2-repeater: Add squelch param update
Date: Wed,  3 Dec 2025 14:06:27 +0530
Message-Id: <20251203083629.2395451-2-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251203083629.2395451-1-krishna.kurapati@oss.qualcomm.com>
References: <20251203083629.2395451-1-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: 89dp8Cc35Cg2YLXCxdAmOoo5zEjTDEKp
X-Proofpoint-GUID: 89dp8Cc35Cg2YLXCxdAmOoo5zEjTDEKp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDA2NyBTYWx0ZWRfX+r/4vPcgQZhZ
 Q9tWqmN0CeAHj3+fC3MXMH+p/YUXAzBDY564V3bFWNCH+HvylPXCXcXYk3ZqK5MYPaIiPuCpSOh
 wgyrq8MEBFazEFfFGNDKKBahS6wcggyU2YnOSzgpZIXuAnAHeDCCzmUm8iMzlxRL28yAa2J5jXl
 ezD0hW7ua18IzTM16RbCU7kE6Ek6wdyyynPZ8xnSzwWgl5QKQlRgC0aVwBhgLn9fJ+FatJfIhAT
 rkCCY3JoyFvAbb11pW9SuYtLdzeDzHU1oz+QAIQeWiJcjn2Hr/FEzf1UFDU+w4ozMHcMqfA02IE
 P1GwAXmIPe9KBNHRwpq7nPnpPmkpXvSb0+w9e+dTZUY2KkcbsQW6ZZBD3VWMv8bfs714ayHSWWF
 m39ngm7V10Fm4NB9mvS2U7Hx05h9cw==
X-Authority-Analysis: v=2.4 cv=VoMuwu2n c=1 sm=1 tr=0 ts=692ff6a4 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=rf2X_MbSOQWHk9B6mvwA:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-02_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512030067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_003653_642375_6BACED96 
X-CRM114-Status: GOOD (  10.85  )
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
 .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml  | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index 5bf0d6c9c025..8a9251ba3b54 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -59,6 +59,13 @@ properties:
     minimum: 0
     maximum: 7
 
+  qcom,squelch-detector-bp:
+    description:
+      This adjusts the voltage level for the threshold used to detect valid
+      high-speed data.
+    minimum: -6000
+    maximum: 1000
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
