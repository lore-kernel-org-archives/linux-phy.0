Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEAC0D3B982
	for <linux-phy@archiver.kernel.org>; Tue,  9 Dec 2025 23:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pUoCbRM7q9KZJGfD5XACS6M/N0aVxX/0wSsnLfPExow=; b=RSNm0KpOcFJhJD
	87BFfVpWuDx3FiLld6yfrhy8i1yY1vMfLINE8Y4k4Pmi7nvC5HnijPqlDBz+iTSWukDiyY/HuDP5C
	7YqYDzgNfLZkg/nuzdbG+bXw0UFNeWuryQ5FpE+JlvMBXF0tLKpaZeq/4/B6yrNbMZXhCmpBcMFOD
	AfMZ7RZKnQd+HxMCmuvA+/kzRjas5cyfPx1jlKCGWQwP73RZ1pZT/ViS0lDb/drhv/wuzskx1hIyv
	Mwbzo/PaLe6vP48xcquBXqBNsbKfYc8ep+iEes8pipkZ8/8mT/oVnOKic8jOHRnnAPnSBUodDyCHn
	udIuFgBC5iQgPrMgeQDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vT6qD-0000000EtbV-11EH;
	Tue, 09 Dec 2025 23:09:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vT6q8-0000000EtYo-3OdP
	for linux-phy@lists.infradead.org;
	Tue, 09 Dec 2025 23:09:54 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B9MlgqB1404465
	for <linux-phy@lists.infradead.org>; Tue, 9 Dec 2025 23:09:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9Xd/vwux6cs1T30tuP48FUJ/7ZrmR2JxGz7ihulzN5c=; b=Aa5DgbI1ekmXFycL
	qos9nrCADGf79nCYdCLZzemTbyKt70uis8E02mWkULSa0hfgtouTBD9SxnEkfO5U
	qW9UUfGQTFX5fi6O5JQ6+Uy9MX0ipSCYMmqqOzonGqIpIkFZsKhKKZ2jf+XjWA+2
	c18eDPkKdnH+sVgh3uUu3SLpA7xExazG/v7H7wl3j5F6zZ7L77hN9zqMMKvX3Set
	io9duhbNLKyjNWEO42PJnn+Xv0H8e6Bp0g2ufrRD3m+x6PH0+Kah5mKCrRWcw/7J
	KbPZHLy47v0ckClpCx549Yxjf9rmiilxXDDv+NhSiNEB3XszpAaJc0MW1TWjoYDG
	DcBV3A==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axvn4g473-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 09 Dec 2025 23:09:51 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-340bc4ef67fso6788773a91.3
        for <linux-phy@lists.infradead.org>; Tue, 09 Dec 2025 15:09:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765321790; x=1765926590; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9Xd/vwux6cs1T30tuP48FUJ/7ZrmR2JxGz7ihulzN5c=;
        b=MPG/7OwmjilDDvSFRxhIRyat6IqG9vkYtM2jQqjeqL4gtveG4O+zOgTV7jLGplchfn
         E2zMV6FFAhJ84mXHcEfQFp6IngLDq5SbkvFfUhHI1TFcS5O1n4CcKGB+4zWOxXrhBaQM
         ZsEPu5QJFZnPp3YEn0nzKH63nEBfXblgIbmQ71SjIOZNEDxqWgeAAHrjWm0rlfvS/TUe
         CDRd0JdCSIkPR2YTvSZ586FelJBE/eUM6sQ44xzeh4h5CYixR1qAwzxTp/eAWPIi+jjV
         ZBLwfUrFad2E2tIPoFIu5ZFEFD9r1CjMxJ3huZtU1YYJmKKQP2nxWmpp5lsQqEplSj/t
         rsxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765321790; x=1765926590;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9Xd/vwux6cs1T30tuP48FUJ/7ZrmR2JxGz7ihulzN5c=;
        b=O9CzfyeMl07Uc/q8cJQofaoWZWDLg9nR1SXvFINBJ4NujdRxUPuuvmDeOTCkMDecJI
         eQ6jgXADD/WCuAZ3LqqmOj4qFEJmMASmHQ+jhwsJJ3+05zz7Wn9eMPpSA1hQGI0nXYXH
         BfobqjHOyATsi/F/K4LsLk+xy1fvx4uH7ggsmPGDfyvugWinvpfctfwOkg4/GLHfGeok
         i01u29DjiLYO056tX9pg1qUIkBPyLlN6UaKwYv3BJr3aAhYUTQkaUbALsKiqUGwik/m8
         9VUeKWzlmmvIqInGGYGNqUypseWVCpDQ63P21pbjbB2I5GV3DiHAlpUbvmI3AB7OnTqt
         8jDw==
X-Forwarded-Encrypted: i=1; AJvYcCUHIi9tdM0oZFgz4h1lpbItEavnJY58aVjj4gPF6z/JsLV7CB0N2fkYJqzmmjaviJmytW5nFMZE7TY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yya14bBpAvsaE/a8/mULMs3mrMy5hHGo6/7QPtEDn3YpxUnRHom
	b0fv6Jh0AOdk1DqHWgMfwwEJJKZMdkSGs/U4J4A2TGVwPA61ebK8jKFVAKquU7AQIAhDPbxBqsu
	4xATpFRPt3HRl6AbdE2z7R5QdG8/ecM90hxq01kbBHEk+dZrvroDS8H1nKp0/XG09MlDZBBmU2T
	FD
X-Gm-Gg: ASbGncvR7k0B0KJcwyhu9eqHxo+BEGLLNa5UtK6Rtp7ke4z8jrMY+BaXTHbBR71q7W/
	3IrB5ZLTYoWO51JeDY+NxhoE2d7FULAeN638o5HaLso8C4pMCpd8DBWs/T2uIVZ6+ZbjtQJJyRj
	83ruxKcLH9oqcrJ6AjnguDu+m/KQb0Ih2XVExcnK4MZQehPxvyeFM/dBtXkyn8oXWLLudRT96iv
	XnnjjdQmwUSL9Nqo6Mls1RB+TMSdYVgLEsRe5vmCirihdgmA7Sv975ElUxhnjuBzSRptG5n/NPI
	35ssXenecXj5/s55PAhtOjX8XXlt6HW3tT07Q8yc8M8O9P6YI5AM8QP29Jq7z6BDN3R7GIxYwZP
	3dCicmMMgmjI66Cj4GmKEE21PX3RNy9DsPdwL8ExLf+G9RZt+OJoTfc+uh6UoWw==
X-Received: by 2002:a05:7022:e998:b0:11d:c22e:a131 with SMTP id a92af1059eb24-11f29669d4dmr307513c88.3.1765321790308;
        Tue, 09 Dec 2025 15:09:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEMl7w5yyHtPel3NYFlFKBva1EVe3LD4D/jsAzHN2svsXL0nmG4cXb9eGBL9Nkkk2Wf27XcYQ==
X-Received: by 2002:a05:7022:e998:b0:11d:c22e:a131 with SMTP id a92af1059eb24-11f29669d4dmr307470c88.3.1765321789732;
        Tue, 09 Dec 2025 15:09:49 -0800 (PST)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f283d4811sm3338933c88.11.2025.12.09.15.09.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 15:09:49 -0800 (PST)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, abel.vesa@linaro.org, conor+dt@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, vkoul@kernel.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v8 1/9] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Glymur compatible
Date: Tue,  9 Dec 2025 15:09:37 -0800
Message-Id: <20251209-linux-next-12825-v8-1-42133596bda0@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
References: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDE4MSBTYWx0ZWRfX+Sn1pSeiy8UE
 unGi14FMmbz3FsvM/tA0ypNoV3KZxD7brZ3L3jHdjXP6w1n5zy9l5pvsK0i7zfiIQ14pNcZJRnS
 0HlrDGLFH1VRiI2Zz58gaFuV9Utdke+OA7TsTkajXfPPSgpaAkQRLpKy+Ryv5jygjAq/aIdo5MO
 M328S+EgWXtTIFdT2UVFrUbVleRFgng7AymivOdQI6HQjFQEbe52bVoTCpE4iUlk+Wv67hJ0C7B
 MlU2nYTl6BiCUrzp3je9ZTjmJuckBauY6JaXieuJS2PkQKKA5XJqkoScr6DZJw5EIZIgJwcyKeP
 9fJxAYNOdtPBlSEo9AI3ZZ4+2qJryYt52HHKgR9G5+RO+co60JZxUUc8Ba+xManC6JarfXZTLNf
 YyKN2jLhMNa0FdLsTkEWuQht2wwo7Q==
X-Proofpoint-GUID: 9w_CCSA-hyLXBm8MRHAPuht76gRQd0fS
X-Authority-Analysis: v=2.4 cv=EarFgfmC c=1 sm=1 tr=0 ts=6938ac3f cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=3vn9orMp_H4Ea5f4EJsA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: 9w_CCSA-hyLXBm8MRHAPuht76gRQd0fS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 phishscore=0 bulkscore=0 impostorscore=0
 adultscore=0 malwarescore=0 clxscore=1015 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512090181
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_150952_962980_029BFAF7 
X-CRM114-Status: UNSURE (   9.44  )
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

Define a Glymur compatible string for the QMP combo PHY, along with
resource requirements.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml      | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index e0ec45b96bf5..0568f0a1f356 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,glymur-qmp-usb3-dp-phy
       - qcom,sar2130p-qmp-usb3-dp-phy
       - qcom,sc7180-qmp-usb3-dp-phy
       - qcom,sc7280-qmp-usb3-dp-phy
@@ -63,6 +64,8 @@ properties:
 
   vdda-pll-supply: true
 
+  refgen-supply: true
+
   "#clock-cells":
     const: 1
     description:
@@ -195,6 +198,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,glymur-qmp-usb3-dp-phy
             - qcom,sar2130p-qmp-usb3-dp-phy
             - qcom,sc8280xp-qmp-usb43dp-phy
             - qcom,sm6350-qmp-usb3-dp-phy
@@ -209,6 +213,18 @@ allOf:
       properties:
         power-domains: false
 
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,glymur-qmp-usb3-dp-phy
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
