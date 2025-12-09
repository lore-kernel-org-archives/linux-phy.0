Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C18C9D3B9AE
	for <linux-phy@archiver.kernel.org>; Tue,  9 Dec 2025 23:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I/CZzMZnLYRH55NjdLk1YrfW6K7aiQmM1czaY7lH6/A=; b=nRQXd1J+SIiKuq
	P0tkd4ERQyQrFK1+33V2e607RT28ObeidBWuMw8oiuBx5ARUTw0J8eDJF0rbVmb7aQQUEgpMmdNbB
	mcJ/cWHAmwgOgFtkBa4U5wQ5Hq8gkiNBescuFuZ5l+hx+dicx2ttal/rApWUj0B24FYn6Spp2Pzwu
	DFgATVK2kVLN7UQFoCZDOaNQ/LFEOtmGuaQwn4RQpK3n1BWL2awYdPu6QdmRl0NoB8/XswWTCvgMJ
	puKwJZpQKmWf3Gos4OFdehahzFQhrn4S96smpIBXB38C//COJxN/fFL/N3YxilRxEx+z+WZ4v7Rk7
	q8mEHrfvMnhYzPl322iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vT6qD-0000000Etbt-24DN;
	Tue, 09 Dec 2025 23:09:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vT6q9-0000000EtYp-0M6k
	for linux-phy@lists.infradead.org;
	Tue, 09 Dec 2025 23:09:54 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B9MldHb297673
	for <linux-phy@lists.infradead.org>; Tue, 9 Dec 2025 23:09:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Nun6PcARzgeWFRQT6VB65C6yjfRHuUsre9hbMWhcbgA=; b=d8OTHAipTdNEPapE
	rBI8BnU/DgwW4bUGjsrU9WemKU6jpVbQAR/PbOlm2GpuLJ53/vx9IBZ/P1JEeM/A
	9QRwU/nkXmpMyyOvOmKW1sxbaj+lt/qoKydO3u4xfvYojaFwQtRAMWNVU5Sr00k1
	h/E54xbWX+Uw+4/HsL+KX74dCLyDLMBft/ezabX6adjWUw6PyVmUJcKNj1Xvjmws
	7FUCV5nCJPKiW2U3HR3zB513rf4f1jsQERuS9QluJDKqNBO6br782MtfrKVaX57U
	2EbODzQg0OGTYrApCNDtLnQU7aVklCukytoWLPsc6TKj98nKIq3iMgrR7dD2pyEP
	v7YPKA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axp4vse9u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 09 Dec 2025 23:09:51 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3438b1220bcso6926576a91.2
        for <linux-phy@lists.infradead.org>; Tue, 09 Dec 2025 15:09:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765321791; x=1765926591; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nun6PcARzgeWFRQT6VB65C6yjfRHuUsre9hbMWhcbgA=;
        b=B+GgN86XeE7cHGYreVTYZSEzMc5zbNp+ggQ3817EqbU/1fOKYFtDh45nGylK/blS/C
         5dt697BlMOfIPFlgC+vC7TnAmcDKYXkQDgrfEP4jbXHCpp7XC2F80SlCjzmtM/PRGbSs
         IlIR+xG8mWU4pAMGI3APsXrgA0loF6CZxnj9rA9L7UYw1/PFtGpjgcUivHbzf62MrMd0
         NHYJjezLw9X84o4B9bHraqL4HUbkQUeUsmp73ieQGoh8mFq4IwswVGBV5+wAPwcVZk36
         zLqqAWV5aYZJCUmXWyex7hiP7S1ZIlT43JszN1nyw18T2qH9tb6xt7Tayx9herr7o88n
         sgTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765321791; x=1765926591;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Nun6PcARzgeWFRQT6VB65C6yjfRHuUsre9hbMWhcbgA=;
        b=eBj1Tm/Aj16y/zuUjGxRaG1oJI6PmgPV6IZRbELaFoy/t+S5i6fF44j5wU7Skow/vX
         ztveUctziVY1gSyvb2IuteKll3Nbuq+TyUbeSV6IACc/wZ3oD6GORb/MAGoGNJ+C6UpS
         caFSlYDACClykNlhobm7AEG26NXPwUmxeUAfpRHw1TkCabylzq83CrbjuF+FrueWOUFW
         glInuMSk1JZ7nm4FIeb6caBKI7KkX7Qk5E289LBCl0dwVNBXIQaXQoF2UNHSrot430EW
         R5P0MHg1xY8nDqfIXobFCjWV+QzZosh3PrfQePmFle6icWkRLuom1QBkomCCNU5pyHlJ
         f+eA==
X-Forwarded-Encrypted: i=1; AJvYcCUngy/Aw3YMFMzuDvGNotrSfsdPXn/GRlENIn0qAG3tcws2Lwf0zrrbVTv9eRvRBAMjS8Giq8k3bao=@lists.infradead.org
X-Gm-Message-State: AOJu0YwJIA7xrI21UjGnLQ76z7BSbVFCcwQVYJ36mGK75mceMt7B+d8A
	W5AzcSU1vdpu6oyTHb0VJcMQNVFFu4zo9kA7NC4/LxzZD4u0nDQtPvYZmtv90XCNk6GcK+apFHj
	pg0AE7r5kmWwOeaKRC4XtdEkjpcjAJpCfhkyDmBcHFoqWXtv61nZTYm51RJ9n7oNvDZK8
X-Gm-Gg: ASbGncsri6C+tYl2oaau5m1sgypYxhNGNR/6Zca82vdyEx5kVjKPAnFSSAu3hgxDnnA
	477acubpHE00WM4W4TxH1flByplr/zlaMaA7BazrHuLsBes8Db4o63tAdmSJQPVe7FhcrVVRZkg
	SFSXa3nwnbtNOQp7xu6hB0K2BF0OxNW37oFDYnj7W4AP2V0uonae7XiOVLQRuZRk2NE0BdWhUgk
	jkbGLB+lbP6AtCcpwe0Vd2C/0PnE5v7GZ8++uAzQc1YdO3Wt7n64d67iSIzSxSGoF6QPsXys15N
	QQwtpD3wUC8CB/uR6T84Pjs2wFA6O1dMBaSiYCKEbQuXAHLvcTb9AWk933OKj59r+ckx50ILIxk
	Yqgikx9QSKwFI5dmV/KmSyaybyQruErOMSCMbgfU6YbGP8RoaXWpgge/JJDmJdQ==
X-Received: by 2002:a05:7022:e998:b0:11d:c22e:a131 with SMTP id a92af1059eb24-11f29669d4dmr307563c88.3.1765321791162;
        Tue, 09 Dec 2025 15:09:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF7byTyjv4Ds7LevZmPLqhvm4PeiTpKdD5Ma4epPiMUe1vU0jkIRGeREHdvLRx8BdXVG/TeIA==
X-Received: by 2002:a05:7022:e998:b0:11d:c22e:a131 with SMTP id a92af1059eb24-11f29669d4dmr307530c88.3.1765321790659;
        Tue, 09 Dec 2025 15:09:50 -0800 (PST)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f283d4811sm3338933c88.11.2025.12.09.15.09.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 15:09:50 -0800 (PST)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, abel.vesa@linaro.org, conor+dt@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, vkoul@kernel.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v8 2/9] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI PHY compatible
Date: Tue,  9 Dec 2025 15:09:38 -0800
Message-Id: <20251209-linux-next-12825-v8-2-42133596bda0@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
References: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: 2TyyQE71XKqdo5vkHaQ_x1-kRlORyg45
X-Proofpoint-ORIG-GUID: 2TyyQE71XKqdo5vkHaQ_x1-kRlORyg45
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDE4MSBTYWx0ZWRfX0AbMOPehtp2E
 DkY0i/QbcRiL+cT/+GAJn0um5efdjiwKopKoPFMfBuIJCiHza5Bs6oqDT/c9+gz90r1GJFmesIZ
 PHKyTCdOHQi5gvqwxZcJmyiZqaGkwRhr7kdV51qWz60Ct1cHiT6Pb7DsN0FOylRMLty2Khnc9+r
 AAGk2Elo8qHy9fhtcVmGRRjZxknbu2A8j91i8elYCpRpSB3scImRie8TGuJ3njfHkdcWKcXXuO5
 LhF3l4L7iom0LFijBZb+0pGbB1GAgpvxaHRU4K0y5yvoSPQih8TuOBgQTLxB5B5WkOtKlphy4+x
 R9/VIU1kmCoeBfD5AwNPXZFQqjWO0k1dhMXSPnkPeIAF0p45Wq10W29Lb+2haRSfObgLZD1147R
 vPB1T2YuD4L9dsbhVlq6zFMN/Gt7fw==
X-Authority-Analysis: v=2.4 cv=IoYTsb/g c=1 sm=1 tr=0 ts=6938ac3f cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=y38mCk_zKuY8i2H3vSwA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 phishscore=0 suspectscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512090181
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_150953_131423_FF9B6D9D 
X-CRM114-Status: UNSURE (   9.70  )
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

The Glymur USB subsystem contains a multiport controller, which utilizes
two QMP UNI PHYs.  Add the proper compatible string for the Glymur SoC, and
the required clkref clock name.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index 863a1a446739..623c2f8c7d22 100644
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
@@ -61,6 +62,8 @@ properties:
 
   vdda-pll-supply: true
 
+  refgen-supply: true
+
   "#clock-cells":
     const: 0
 
@@ -113,6 +116,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-usb3-uni-phy
               - qcom,qcs8300-qmp-usb3-uni-phy
               - qcom,qdu1000-qmp-usb3-uni-phy
               - qcom,sa8775p-qmp-usb3-uni-phy
@@ -156,6 +160,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-usb3-uni-phy
               - qcom,sa8775p-qmp-usb3-uni-phy
               - qcom,sc8180x-qmp-usb3-uni-phy
               - qcom,sc8280xp-qmp-usb3-uni-phy
@@ -164,6 +169,19 @@ allOf:
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
2.34.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
