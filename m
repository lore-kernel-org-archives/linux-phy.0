Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E91CACCD183
	for <linux-phy@archiver.kernel.org>; Wed,  1 Oct 2025 22:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZcoCjT5coqB7YOfvt/zX44up4ArLnxxFYfD/1nKlpGM=; b=s6yEBZXyN1itce
	gvphB53Ily5rACiBw2IZPvp0qH2QfFqJ+EcM7t8GE3WcMtdDhwkAetFA7m1Hg+6Cwg9C9cK0rQVEv
	0Yb5IZsMCaZRFsLYLWf3EXmoVREQtcjJxOpLV+3XizYsgqwveN+0FF6m3ZFaaTXQaDIP7S8ex4MK6
	5dG5v7iN1bu4i1m7wqH5P76nLBO4I58BxNFfCV3r4Jcw0vLUKkoXzX7ijXZ7SNPb+4k751GHHjeMO
	Vr525rNtUyQ8p7VdvFN7ld3wEwSpc/xjLW8kyHNGygIQNr3MpsN9CgVNP6mOw9OfptvbTcoRxYvKU
	qyU9BAfq47p2J1YmCTYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v44xF-000000096to-2ubA;
	Wed, 01 Oct 2025 22:05:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v44xD-000000096rz-1Ghw
	for linux-phy@lists.infradead.org;
	Wed, 01 Oct 2025 22:05:44 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591Ic21C005574
	for <linux-phy@lists.infradead.org>; Wed, 1 Oct 2025 22:05:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=YaQd3cF9DM3
	ZawONJKkUUZT5oOk1utb/PQbw+Tb9ZII=; b=VwPLdRDZx8FXXZy/LdNwLw7sWso
	nNXohyNnyerO+pbHcfUtgzYc47FUOfVpoQQwyGk+uECmqtttjLCxfaQnfcuiMKy3
	COPDcecXaKKtbiRMxxTaa/NKEJDeeUj7X9rodNSdC09vJFbV18sQWiHgGRmTu4RR
	Y5IeOAYXUy9XZO9qAkUwZzYEQMHnI/DQOTt1aRtQSLurRyeU5HC8OhqfJhybPEbg
	emV7DosVkILOfae0zWqIBZQE8tOfTQqI2Qa0xQ5uZGBLA4bVgYwZvYdoda5haBrW
	tzuMNTj30oAma1cX0li8t2rht8QpPYfu6sz0qZNLTT7Hb679cAqJekVCgmQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e851p0pj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 01 Oct 2025 22:05:42 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-28a5b8b12bbso4900315ad.2
        for <linux-phy@lists.infradead.org>; Wed, 01 Oct 2025 15:05:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759356342; x=1759961142;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YaQd3cF9DM3ZawONJKkUUZT5oOk1utb/PQbw+Tb9ZII=;
        b=b2oFhSzdiZGREN6iZqznBj+bW1AC9cx3VA8yd4+cQVUexQlyjr63JTKSTYq55H01pt
         Ms7KjFC31hOMhAVNOqC8CYqk5NVUFof4hODjfc6YoAaTrB+2CvDpLoEaU91jbpBmaNop
         w6Mjg6O3Eu/pcG1S/2dQRoj+VJfxKQtDmqGxhBLRuzRIoHXFgMoqxIuPh+hNid7r8bnm
         DCYu4Pz+veL6OYSgZKrBwaz31+jzLyJtNTt5Z1bgcOvdWZFpTKYI0ZwJNWgBrzQJ7asI
         0GryqL3N9yyWQ8oB6STMzRFm67+8deNydJWurYVmjD8mfYDQ94LfbzN/jZZfxlW5r/B9
         5kpw==
X-Forwarded-Encrypted: i=1; AJvYcCUdbRHBOG479juF96VgRVdyuMCHCKQ3MTWABo835Dzk4D1GF8XNbUG8aPz1clkJc63/d99r9f4xJWM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxvK2Txrceo5jCENIhfQYaTlrkGWQabFd8qsG11MriBGXX6Lz1b
	5AELuiZ/T+vBlqx2NBSMefR6Ftu7zcDqUMoJkAeoLwZ4dFdeRdUwr3wK0IZ86tnIgwuobTYq9M5
	QAh5DPCOxkfdGc5w+CguVol8TuHJDJ18gGDLzIqgKeEII7DZHAAa+1WAo1JP4eijwnW5j
X-Gm-Gg: ASbGncuM5Op1KVQmXIvvW5g0HQanUgUqyORJn44X5twFIUj0kNGQP2E7qOv7X448HAy
	sxu3lwmfM382Pnnbrp/kaRG1dEJ0tOSTLOL0nuY5pPNKkOg5MtNEFoqX03Pc+g10zBi8hiJ9esG
	v8yuIsALVEXSM2q8hjs+NRD0Awh2UCkWI4/kLx+HC6Fc1mBnB1HrBU161gSQlIC2s+5UfWVbJN9
	Oiu30X/CIWgQKDVP+0PpULfymKHhJjpSx7PaOZh+BThhSELVWwA7O8xLj+287N/Omc/KN7SEg9/
	RBFRs2Q33cEqN8Zw9772y8b6rORBWlYIoLebu+cKvDS+IaoqC15yzXQjHGvGc7NNVZEFDwIiDck
	d6OMViYeCpAvNLnaHOp06gg==
X-Received: by 2002:a17:903:144e:b0:27d:69de:edd3 with SMTP id d9443c01a7336-28e7f2a2aa3mr55519255ad.20.1759356341900;
        Wed, 01 Oct 2025 15:05:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHfcBhsPzH4uOaOTsLowdy78HnwI16bUIuuSFnXJDMrE5c2ZqQJDOV6y9FJ6jkCyNo9Jw2ddQ==
X-Received: by 2002:a17:903:144e:b0:27d:69de:edd3 with SMTP id d9443c01a7336-28e7f2a2aa3mr55519015ad.20.1759356341468;
        Wed, 01 Oct 2025 15:05:41 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339b4ea3c3dsm702085a91.5.2025.10.01.15.05.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 15:05:40 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v4 03/10] dt-bindings: phy: qcom-m31-eusb2: Add Glymur compatible
Date: Wed,  1 Oct 2025 15:05:27 -0700
Message-Id: <20251001220534.3166401-4-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
References: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=OJoqHCaB c=1 sm=1 tr=0 ts=68dda5b6 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=dJG6SERxbJy7wEyxA2sA:9
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzMiBTYWx0ZWRfX8WHzH6q/WV+U
 GkRJGLuxOUrSm5YkAIR+WhSThsqHCbr0x2mXCDj2VQMGKz2jVPEW/cyEOoPm+Z/RsBp5yVhkTOR
 kB8nbLswDaPXczqN8AoFryIFrVFEfm3fkeTc4pDBGdLh7Pua2eWTCau37jUwJ6h/jS15biebVHd
 BfCMJhP+AptH+Bw2DOBihF6VRTHuiqNRuMnx1MlVcRG/Po5+5W0o1b3avbQhX8TJ8hTkuOwKAjh
 wcaW3DQToy9O2HeVU+0tSFu02wp78Ds4fbg0l5w5cjBhsu6HXlCtvmzTXKbOSAdY/fLq4AOAMiS
 yz3M5z1/7Sb0A54HUWNHEts7oc17iXTMDweb1EbocJu3ikdudIh4bZxRYwGb/jE8mAemgGDZnIq
 P/RddTIFSjVWo4fhuFFtTCnP+WttKw==
X-Proofpoint-ORIG-GUID: ceUO07aYKhN4kCkpW2LRb3CBf_kuupbS
X-Proofpoint-GUID: ceUO07aYKhN4kCkpW2LRb3CBf_kuupbS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_06,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 bulkscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_150543_345871_2A9E1F13 
X-CRM114-Status: GOOD (  12.30  )
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

Add the Glymur compatible to the M31 eUSB2 PHY, and use the SM8750 as
the fallback.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../bindings/phy/qcom,m31-eusb2-phy.yaml      | 21 ++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
index c84c62d0e8cb..0d5db71e0ad8 100644
--- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
@@ -15,9 +15,12 @@ description:
 
 properties:
   compatible:
-    items:
-      - enum:
-          - qcom,sm8750-m31-eusb2-phy
+    oneOf:
+      - items:
+          - enum:
+              - qcom,glymur-m31-eusb2-phy
+          - const: qcom,sm8750-m31-eusb2-phy
+      - const: qcom,sm8750-m31-eusb2-phy
 
   reg:
     maxItems: 1
@@ -53,12 +56,20 @@ required:
   - compatible
   - reg
   - "#phy-cells"
-  - clocks
-  - clock-names
   - resets
   - vdd-supply
   - vdda12-supply
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          const: qcom,sm8750-m31-eusb2-phy
+    then:
+      required:
+        - clocks
+        - clock-names
+
 additionalProperties: false
 
 examples:

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
