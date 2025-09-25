Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C92CCAC5AE
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 00:52:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L1OzTSOwNYC+dL90Gk098uJy2hSOwYnCb8ZW92NjiEM=; b=Ht32g5hVnINi/Z
	KxGaEQamU4bu7Tua9Q445iLmsAdbp/bWni3HO1K4J+wRnH/ragXvM1kAv9fX3Iv03nBtu+4/82SxZ
	gDeaunT5zJn7JqvZa2z9Tcc15CZkSEKjCuc3MbYdDbafFM3uaIdnGUi2KfAeNv9bc49IXNcWXCoNQ
	TTl4qlBWFPp+5/3W8AUMkVylsjgl9RMaihIXUR5zj4hQtIOQuaQgKi0l0d4BWyx0B2OcOR2/v5Zdc
	B5wgx9nFdAI+TPCv0QI+c6udKobMeIVYqw6M9JQjKQV6uZsmZFWp/qKLdJAnruio9vYWTNTZmn85f
	OtNqbKGkv1x+2TwdsgiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1aDy-000000058En-3pSR;
	Thu, 25 Sep 2025 00:52:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1aDw-000000058DC-3JNF
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 00:52:41 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OD5hvg029706
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 00:52:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=DQ/0YD5xMRw
	3lWfka6oyOcJAqHz+tEBt1EbVwdyanDU=; b=jG0gFhdT1ZR4yFW1qAdyqzM5cwE
	23kn9L+vW4x5gSgFe4Y7tl1FAvNV2bIZFbJ9qDbY4VSLxRhdeVzCMTrscGjVqWGH
	d68AcVYKAFRltB4xOeSokbcpZ9mduO4i0PDQLFfDcl1ooXjQrN2edb7uuLnhtStP
	zFLeOY6g0GLT5NH0CgjaUOXXTCjUzIkzDFOUczUcE2lXkRfj8a1ys0S6qRimOQEY
	sfn9lQUEjuTqSxIAqbf6mu1BMSj1Jz8wH8GbMqyrb1tkqnHA8P2GF0DtS0cWhiBY
	HEpCx1stZyN7QZEKULDZaDVW9ztT7APV2tq0/W9DTpP1/mf3fIuJm79M09w==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fp3kb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 00:52:40 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-26e4fcc744dso2791175ad.3
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 17:52:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758761559; x=1759366359;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DQ/0YD5xMRw3lWfka6oyOcJAqHz+tEBt1EbVwdyanDU=;
        b=NhLCsTBDfHwHuGLSS4WFkdJCYlMYI2p8vzc2aaqzI16iUI0PVPnL3ostYWAPtnPls1
         TPxWhJFbx6dvG9XHXRfPhfjLlNsuYYBhYq9G8YZfkWqYQBwv6jnkm39MXp4Rky3P5mol
         OoMueGjqWm4Fw0c54jqJUMvDOipDAE3CTxT5NiGvYNXPXYq5I3x1oEpvaS2fJoFvFfPQ
         iySEpTmLysORGLBxZ1tbnp+6mZTic9YWVF+DwdQ96Rz42s4c7FuIyfJTosQoyTqHzP1h
         ybgMuOQZqij8kVIaloArUqlvtg234kqbNEUKMJdJj4Jot7mJEKETagRgIS2Xm+2BaflI
         VTDw==
X-Forwarded-Encrypted: i=1; AJvYcCUwUayYnBtTCU71XqwLzvEsFspfKdPdGUQQd8On4UZdzhtkxd77oIsVAJMGz4MxAOgKA39UhWUNHbU=@lists.infradead.org
X-Gm-Message-State: AOJu0YyGydKb7NMbICC/IW0wBFT7L9xIJdI0oP6BJOPPhHf0PGmTsJLj
	2WolibTzzZPwFgsGXwtqdbX+mEcfBtZ5DsaAUsl9XdPDBm3LMI1mnOCGhQVadqyrSse1RuS2ALH
	IU0GDabNYe3GDJ9PFGwH6BNgLvay+WmSp5w8n7NAfUqij3GDlfClCI0IyM2ogp5BoCqCc
X-Gm-Gg: ASbGncsK2Vi+IXFJ4xekaVklVZ7S9TTGUB53AHTF4LYaAJdvxyA8SxAud82RlC8+kPx
	ZXK7GkOpUnGez6GwAzlK136SPBbuWRrCQe2lUY5u1Qb8xpE7V3/xsV+egJF57SEqHET2+DZzTjm
	DWWu1xDGLB3QWXBbssmPfoebfeCMlHQ/y5oqHXuPikgw/R3fWTxGWFbueXtQVtaWp52LbgFHwEI
	j/CTxUjy+CWL3etfNbFb+A4cCi61FAKSyvUNG8DeUuibIEB8bKmD58mQ90jBZhz6TZnkCOQwgli
	+hdaQ4FQC6+16sIX1IsMLnhhEaeIPdKN/UcexyIEYzZDUS+TfQGtImfQMOVKtJA4Q83spSz09by
	A0g49A1I+lBuJAAkq
X-Received: by 2002:a17:903:234f:b0:276:76e1:2e87 with SMTP id d9443c01a7336-27ed4a4979amr14745715ad.44.1758761559480;
        Wed, 24 Sep 2025 17:52:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH0jZvBnlaKAnoEHEDtefVGK6gSjoyOxioVO1pqTLEeDQPqNMOS8vsAsk+dAfSSAhP0dvVSfg==
X-Received: by 2002:a17:903:234f:b0:276:76e1:2e87 with SMTP id d9443c01a7336-27ed4a4979amr14745545ad.44.1758761559093;
        Wed, 24 Sep 2025 17:52:39 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6ac27d4sm5238105ad.135.2025.09.24.17.52.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 17:52:38 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v2 05/10] dt-bindings: phy: qcom,snps-eusb2-repeater: Add SMB2370 compatible
Date: Wed, 24 Sep 2025 17:52:23 -0700
Message-Id: <20250925005228.4035927-6-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
References: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: BAF_GpKKQoZypciqDmAMo_b1whBvc599
X-Proofpoint-GUID: BAF_GpKKQoZypciqDmAMo_b1whBvc599
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d49258 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=9ZGL9VZrYHwIVTkvpzsA:9
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfX6S8oCgz0Qfx5
 lZF8vnb/9O8mSWM3Gt3m+ypZHV+P4I6hZRi7vuKYHVkwTXSk5hzkeL1HTwgal4dGiARQWcRZhIR
 8pZHwP6hIbouwwzbksa/7bChANvvLluDNOJexI4LiQZ8lWmWhPTrfAPhLbPlGFDii1Z4TDkIwDW
 IuNd4g/TKIvZlJ/ER1YRPaWIzvehVbRLwGsTaOz7HHn6fKxWaqPNeJCR4Z+YlUm8FPay1tBHWwD
 3UpiLbhHnPvt8cz6OsugWR9fR/Gs7AGiu1mi9ysRO1jL37iTSb2BynfNyqzW1zcHelqsXYYHIct
 0ORq6drDR2JRMUHaUSep904nlWHBSSncKR2VCikAyIgRvSTrXVkYUY7sbs8ls/sLeOOQZ09cObn
 2waDFs5y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_175240_833423_DA572962 
X-CRM114-Status: GOOD (  11.21  )
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

Add the compatible string for identifying a SMB2370 USB repeater device.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index 5bf0d6c9c025..0f015a4c2342 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -24,6 +24,7 @@ properties:
           - qcom,pm8550b-eusb2-repeater
           - qcom,pmiv0104-eusb2-repeater
           - qcom,smb2360-eusb2-repeater
+          - qcom,smb2370-eusb2-repeater
 
   reg:
     maxItems: 1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
