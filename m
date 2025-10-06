Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E5DDCCA470
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 22:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dDE9hP8QsL2VuwrFu+6NG+/yKllWIDb0OUXe71iMIIU=; b=1kHIFvN6V5kg++
	7qt/ltFg+nnERaU3TIwxEevgM/Tz+BIyiZl1z/jtlDLQNf5tBuvVMRO96QhJ/0NSdhhhdH24X7X14
	XMwyn93Yz+sONIxdVB78viumUJJu3Z3D2O8X8wX+/NfEdiJ3WQWLSPyamN+MNujuHDmLWX3eTUTgC
	sRoEc8yVnNdDUMsyhvbjfClYygnH2oMI91uwzYDenAVbPQeq9JFUys8Rl6xxmqOeE6ld6A0vblsmu
	ZnMJaO4rg4xT0KeEVy0lzG9iL63kXpHif5qo7NP9vSz/HWOsASFXVqbXKFoAaEgI/xO5I6iB02/uN
	2nbWsI2Y8V1aE0rgwicg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5tZ1-00000000uQK-3M8r;
	Mon, 06 Oct 2025 22:20:15 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5tYz-00000000uPY-0cCE
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 22:20:14 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 596Eq99R005359
	for <linux-phy@lists.infradead.org>; Mon, 6 Oct 2025 22:20:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=YYQJM1FZM3o
	3DDgyVmJ5oX4Xtvn4+xxewRNc42qivew=; b=CClnthBIO3iEJu2ARKji9JHH1mZ
	oYZrU5EOAG++sJKc75hxLdQoFQQybFbSMEDTxbrn1f7xdz0+o3/pAqWmmbjwx7/D
	fH9JtGQp2BRLB/y6qnFnV9FVqdv0k854dRr/2Ie50gOF7GAR+PA2yyumMvYOYPuB
	BXGtAe89GTUGxI2RWWGj4MZXi05BiNxLeanXdvZWPjT2TCV2mgnnHfmliN1f5Syf
	gZzT6YxVH/EvOTlMGKBLJ2Q6XBVq47rGFY1yQH7/06OTdF4TIBBf2B0rlAWHDKRF
	LRi8JioD+LSEIcgM/LYdgFkIPLiGrWLNG0q9+EfuYAV4bR+cl42hYV/Fkkg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49junu5bvg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 22:20:10 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-78117fbda6eso4731371b3a.3
        for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 15:20:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759789210; x=1760394010;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YYQJM1FZM3o3DDgyVmJ5oX4Xtvn4+xxewRNc42qivew=;
        b=oN2wWHNj4wuvzcncInr4BpovJuvjpfJP6xqk6aR6FlBeP6+LKv1a5+rCaDMx30hezx
         yC6/G5xf++OafPJXd1p/7ZRSi2LDu6EPCzkCH1GqnM60b0MEV5QfJQC8oDvqRdxgZkZF
         /ONP28Sv9W63wP/73GyHAMhKBmYyYlTvBHQ9C6damCNIyL31NygtWAjrPnFahIclteJ6
         xuq1JPFsO66Bdhr596R0JVEw0eaYx2G/A8iy0Aiku/imQoa6eBD/jHqu3IwslWF+mlGQ
         ag2YgythDHs+Q5qBSAXHGQaYOugHdU8mzWr4A5sYovymS7fU4G5V2YHdmg89k+KBbkhr
         RNjw==
X-Forwarded-Encrypted: i=1; AJvYcCUR2zLIvrdFDovgUxSZR9n5F3wJVphfQXJGdXj0dN7EIhkX4CrFwGo3a+TKTGQ+/Hvk+Gp7tjpOuaA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw65GGJFq9srD44six/5YqYhNByMS5IMLBHT8d7QKKo8CUguV9r
	gLPWNyO/fR3OpveRxl3Kw7Nmc1CdVCAbMUWoxgc3lRReCE5ZqdT+UuIgVf/Rrna65ZIfQXhWcoN
	i5TmWtAYspetuEEMW+XGQ/HQ/KxyAErsOGC4Ri9BAq4AjA7jNzEQIr6YbgFaSeD0ww73/
X-Gm-Gg: ASbGncttGQiIZQNI6asrJ+TsOPUpktwaibviWFjylinFR+rCSYS9pUIhV77iaPK9HyJ
	oLZMa+LWWM7lE/OHwddaU+Vn3DyYGDOVQKEYIgPRgTZ8aLCQA0aJ9AeyJc+nBeV/hFhZNIvhSkX
	vO/KUdxb+5+0CJI/Z7y2ZbThhkeOoGy3lIUzXJ5ym3j0UpvjNMvX3iM+35zLpN8QLdnlMeysbFE
	vBd0uLRfCm/X3VyN40H3psY92m+sw7NnVATTGj5c+7vm6Z/6WALZXwFML+7+tB4xcEYT/ttYAVz
	qtYV6JkUxqtkFeTEOiLhNA3+ptk8fjRGM9LMsFp55uLDwHYtiKGiuDGor+XYEwaHehuWa1ILmSQ
	UcGtiDG9uMdOYN/klWPnrOQ==
X-Received: by 2002:a05:6a00:17a7:b0:77f:2b7d:edf1 with SMTP id d2e1a72fcca58-78c98dc4de8mr14323531b3a.16.1759789209666;
        Mon, 06 Oct 2025 15:20:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHXaDx8BsYyj47bbtSutFI7Rk0z0Yzk+5Yo1y2hw0obgjXnbc1IezB2I/5mfA3p0GATJPUQIw==
X-Received: by 2002:a05:6a00:17a7:b0:77f:2b7d:edf1 with SMTP id d2e1a72fcca58-78c98dc4de8mr14323509b3a.16.1759789209163;
        Mon, 06 Oct 2025 15:20:09 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78b01fb281bsm13734968b3a.37.2025.10.06.15.20.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 15:20:08 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v5 02/10] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI PHY compatible
Date: Mon,  6 Oct 2025 15:19:54 -0700
Message-Id: <20251006222002.2182777-3-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: txEQP7Ia1PXfvvVdJ6PGxW-97-bonqvo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyMyBTYWx0ZWRfX6c2H0BPp6z0B
 Udl9Ftf/TSR1bpqyXCyHN0Iyvwqm32OZi+KixE8TG4p4qy0lNRFpVc+RorstoeglrMouwjqA28H
 3XuS+4z2ZVB8CdTCNAad6bmOSto2Biq7HW+CY7A4R8skGiswcmCzEYTKtE/f9Rb3ADTRX5yKG3e
 5505U0zUw0OeHSxa1mOWuNkHZMKrRgdoEdqHJODT3eeMvxJ7XB87nUGiIk5SfaHq8YN6JiV6Ssg
 nzTfOXx2O9PzjzLl3wHIdriFo1lYV2W5QWzrOKuRzugBh//lLGsYJ8QWKIWXsByXEGpfofljfDP
 dnzkb/ov1P+vE8lPJviv9Nqnid11bidJ8Dctki++yPX/1P2W/CK+l5lvSZLO/n0C8l3UXS/YGdC
 PeLbz8e5RDFzLqAbkVJagI1XlFl8mA==
X-Authority-Analysis: v=2.4 cv=CbIFJbrl c=1 sm=1 tr=0 ts=68e4409b cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=e4LYGitkWRZSOGXTHbEA:9
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: txEQP7Ia1PXfvvVdJ6PGxW-97-bonqvo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_06,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 adultscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 phishscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_152013_310198_37833318 
X-CRM114-Status: GOOD (  10.52  )
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

The Glymur USB subsystem contains a multiport controller, which utilizes
two QMP UNI PHYs.  Add the proper compatible string for the Glymur SoC, and
the required clkref clock name.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index a1b55168e050..b0ce803d2b49 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,glymur-qmp-usb3-uni-phy
       - qcom,ipq5424-qmp-usb3-phy
       - qcom,ipq6018-qmp-usb3-phy
       - qcom,ipq8074-qmp-usb3-phy
@@ -62,6 +63,8 @@ properties:
 
   vdda-pll-supply: true
 
+  refgen-supply: true
+
   "#clock-cells":
     const: 0
 
@@ -157,6 +160,25 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-usb3-uni-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 5
+        clock-names:
+          items:
+            - const: aux
+            - const: clkref
+            - const: ref
+            - const: com_aux
+            - const: pipe
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-qmp-usb3-uni-phy
               - qcom,sa8775p-qmp-usb3-uni-phy
               - qcom,sc8180x-qmp-usb3-uni-phy
               - qcom,sc8280xp-qmp-usb3-uni-phy
@@ -165,6 +187,19 @@ allOf:
       required:
         - power-domains
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-qmp-usb3-uni-phy
+    then:
+      required:
+        - refgen-supply
+    else:
+      properties:
+        refgen-supply: false
+
 additionalProperties: false
 
 examples:

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
