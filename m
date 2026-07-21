Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18750C44532
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 12:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xZj2MEQ0/VnG8MaK9gESmZjbSYH/sBwnRWroSEMNfIU=; b=ikp0PdjvnzdajJ
	GdTciGayYJpQRsZM5Qy0Ft0uuXR3r4OEqPC4unzg1tftLdrHmFUgrqSvWtrniCurTl+FNuCKUgqmi
	WuKOytQNDFwZ7WvsX4VRvPwLxT/UJLU/+FWF0AjdmyfVEVcNHLZ4T6lnu3zx4oTHYuduiWUnWjErc
	YYWl5FTPCJDGlSIS4tuK/f+DqRyn9yYsbmJBRGKGoigF2fhCe0w3YhWxqn3wFDEevvBR9liOqQdne
	eiMuVXl76W5GNzKjyJXZ8Dm15cAf8Eb8IAVWvHF6bZO2A0ETb+dzBqUEHFti+A/HHe0bbJY4fVKSy
	i9TMS0Ym6F7FagIZtVeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm9rV-00000009SDe-3C12;
	Tue, 21 Jul 2026 12:46:17 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm9rT-00000009SCu-2ewb
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 12:46:16 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66LAQv7j1611946
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 12:46:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i089wZS1+hm/uZCiwjShV9RCkdFlzWrKsI3lK7jIBdc=; b=mFZdtmXHOYI0DsnR
	yPfXavZwe6IQO+7t8le4c/Oum6GApRcXOdDbU/KpTnSN9+x0l/Fk8dIUBTkQ/PzF
	Bk8uR28ugXN0POPQXGI3m5T3reVLKq3UFkK5HZlFSAr7HAxXjVz1sas87V3j5iOX
	piyx1/C5U3Ul9c1YTlAX0flIg7UXTRGGns177DEB14kJW12FbJr21iC9QNgR1dPD
	n/B33OWMK4kmLadFR6uqzMFrUtdWqEwjz28eXJlH9USZWBwAbf9LidTJAg/6vWll
	pcxtpMFQKoAur+7xQbM7iGE7v2IGuJFjtyg4I2TtdpjxEZUFS4KF+rKg9pMfX1Qq
	6/txTQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fj6r3gqs4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 12:46:15 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2cce14a21faso77614065ad.0
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 05:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784637974; x=1785242774; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=i089wZS1+hm/uZCiwjShV9RCkdFlzWrKsI3lK7jIBdc=;
        b=j8ahbF2e3SULGzns5RBe3IlCQdOiQhuLM5aupHPHQhaksnUumjXUwvmmqTtc5E8N0p
         JgbmMukY2yGd+SXVz/LZGEoNXwWogUaE5qv3PVY49avikCgLBPpAi+j6uNwlVA89EdVn
         ousu7LkRed1KnHc5ukBURqwZ752ixR9rex07dNCiflZl+jPKVs8WxW1oFkWOOqITouJ7
         bqGr/1GeoF41hsb5WK6FIZG5fEE1Q7r9CzSNh7Lz49mAKNARVNOxtlKsJYoZDHMhQS96
         lDkoHOKNgqt12/gWUlRpB5ahM80TkA056/4LiCaOgCpNdwduPc3rJXpCrxHtKGeOIvwH
         oj9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784637974; x=1785242774;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=i089wZS1+hm/uZCiwjShV9RCkdFlzWrKsI3lK7jIBdc=;
        b=gqq95FFDTBS+a5ZlxPXP19lR0uEpehEPb2h+kuafrXW+pkFk915yg7/S5qFvv6RvXb
         WAiRwpdJAZ1sfdLzwPBkCpQcb7fdDC3qZJ4GHcDi4JqB2ZJfybyKMMenZVb5c5PoCdal
         +MgWnu/qNDePVFTIDtbmajD8Tr/2Z7Da8y3qozK3YFag0vnJJhdvz4yfBattWjE7VtED
         CjOvZY8Pce4NC5rfHL4K9ZscjmL3TBO27PM7+gUvj0a/KVLiAvRUZThw1LEV14x2AcuZ
         LyOAdH4TSgJaWYfap7d3y24FIrXVAfQHrNJtXwUkxqIYo+oUpKT8l0uiYQ33GQbQSYhs
         KrZQ==
X-Forwarded-Encrypted: i=1; AHgh+Ro0s9hN7hQYo9HhDWpTRHN3hxAK88YJymJvjtHUdJXZH7ZvuDl6mJH9iy3IsfmT/NOnoyLBAxCxdLI=@lists.infradead.org
X-Gm-Message-State: AOJu0YxsJDyleJ+T4bxtOXgeUP1N9yxe4EXavxaz/ZfXHSKJljkSiN7A
	q6wsEsXNQSFJWWYDY+1zAaUPQHfgOzEEbQKfl62cYGhaxHTsVbjgNZXruezTo/kdRxEz30Br3XE
	Gs3cC9iOjyYuxo2o+choJUMWv+0xhK3JSFe+CEyi8MkLV2XCI7MUOGgrC34XU5ky0wKlW
X-Gm-Gg: AR+sD12sQjeOpZi+7VLc+t6vkUOVXqyJxGqkdxxa2nnHIkjdcHAJf0IY47BvpJRYzup
	kGflNwVYF1es1Axt/ajZQB2B0YQduHZ+5MtzFYBlj5JMUkCzkyhQXW9tmKVrHQ+02kGKjoy1Xss
	c8ZOyD0esC/8ey+4a2NxfkiDvDZbbxv9uHjjSxW12WZc3zgUCZhhd+/oe4qoNMfJMNhB2U175fh
	qlnr5Wh57vFJHP7aQaFE2UwxHen8La1bij2hy2N+UNYjgC8VQPS9f4X+vETBz3XTzkMQUCSxZB7
	kMHxkI8jJVDwcfqyZYy3zCsBbO3xVr0UvbeeBCyEaFEiX8gFzB+RA/DaGJ2fwFqzAMSqe9NzFrv
	ctKSqiJJC+ZFzaFQcmDz8mdT7IlyF1gW9XqwEBwBRNqEz9DaL4MQWLJY=
X-Received: by 2002:a17:902:e884:b0:2cc:a08a:7743 with SMTP id d9443c01a7336-2cf1f4f2a94mr237661375ad.20.1784637974357;
        Tue, 21 Jul 2026 05:46:14 -0700 (PDT)
X-Received: by 2002:a17:902:e884:b0:2cc:a08a:7743 with SMTP id d9443c01a7336-2cf1f4f2a94mr237660975ad.20.1784637973742;
        Tue, 21 Jul 2026 05:46:13 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-31429f9bb62sm45258359eec.2.2026.07.21.05.46.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 05:46:12 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Tue, 21 Jul 2026 05:46:00 -0700
Subject: [PATCH v6 1/7] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 SM8750 CSI2 PHY
MIME-Version: 1.0
Message-Id: <20260721-add-support-for-camss-on-sm8750-v6-1-a5f841061d18@oss.qualcomm.com>
References: <20260721-add-support-for-camss-on-sm8750-v6-0-a5f841061d18@oss.qualcomm.com>
In-Reply-To: <20260721-add-support-for-camss-on-sm8750-v6-0-a5f841061d18@oss.qualcomm.com>
To: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <quic_vtumati@quicinc.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIxMDEzNCBTYWx0ZWRfX8U0nWZEOB8KG
 daeR4cQ7WAI79Cr+74jJOEwht36VnaINsqjhoxRqg3BN9MqnWJS+EGCa/ORzRIB/QPygWd2Mtng
 U092YbjvCuA703WvY2ORXJJXRc8gzxFTGbsuoD+ejHwBy5cEWcwnFQgTL69+rn9gFNx9pTsFlhr
 72y9rPYZLViYVEzvVPrquU4u6sZ1NAojNYwjJoLsIY8uiZcd6Gs2/gyN/7BfiJBxK/6Z/sg2epm
 hI+IYkjzkr+YnIgT1I7mg+dwx3nvB0/2VLOllFXbL/FtrK82tqQ2ToTQJRu92QxyN+Sn2XD2Rso
 bdXCfp+ARVdy2sBYnmK9T7ciUfm227TEx2LqlAE6FFxZrb/gGZOwRAwrTr6L71QJxwtZG9B6ihV
 CyId9zgn0UI6ytbeL2PitdciaxrxntC0WNoDfcdHEYmDikrfyWuPyhzZ7D8uaGy8NBsjzeyHfKO
 xwsPQ0jSrW3l8c3Hb7Q==
X-Proofpoint-ORIG-GUID: _jiSS5wuXafw6F4sncdaCVEo_thOd15L
X-Proofpoint-GUID: _jiSS5wuXafw6F4sncdaCVEo_thOd15L
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIxMDEzNCBTYWx0ZWRfX3VVQ9EZfy32C
 o5AJUr+YCqlhXqX1BiHEgUF7D+Q9/xN1xtynfX+KB9asSnAR50O5IFwj1JRI9zDZk2ynfTy0zem
 2NXxNspGR6cfU3IduPRQ60rd/Z1D2FE=
X-Authority-Analysis: v=2.4 cv=SIRykuvH c=1 sm=1 tr=0 ts=6a5f6a17 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=_XPIB_xIY-Pt3-ArhVsA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-21_01,2026-07-20_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 phishscore=0 clxscore=1015
 suspectscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607210134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_054615_677076_DA8C2D41 
X-CRM114-Status: GOOD (  11.99  )
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

The SM8750 camera subsystem exposes six CSI2 D-PHY blocks that follow the
same programming model as Kaanapali. Describe the SM8750 CSI2 PHY using a
"qcom,sm8750-csi2-phy" compatible with the "qcom,kaanapali-csi2-phy"
fallback, so the CAMSS binding can instantiate the CSIPHY nodes as
separate phy devices.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml        | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
index 7943049834f9..95375efb2597 100644
--- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -16,9 +16,13 @@ description:
 
 properties:
   compatible:
-    enum:
-      - qcom,kaanapali-csi2-phy
-      - qcom,x1e80100-csi2-phy
+    oneOf:
+      - enum:
+          - qcom,kaanapali-csi2-phy
+          - qcom,x1e80100-csi2-phy
+      - items:
+          - const: qcom,sm8750-csi2-phy
+          - const: qcom,kaanapali-csi2-phy
 
   reg:
     maxItems: 1

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
