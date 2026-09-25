Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16B32C9830D
	for <linux-phy@archiver.kernel.org>; Fri, 25 Sep 2026 05:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZV4LkF3E+w6j95HiRTkVsl86KgF3TC/dzzHDZELlpxw=; b=r3xnMSsI36x8Vk
	w8ewzIF8YtSCoZrdzWumgBkPZzIpWAbAee9hK7EwIl/ctI6jqEJiILm4mK0P9NMgaFPWeXhnfsroG
	xYMJswxb5kwDgFdH745QPvb5+SZeWwZefP9nck/gkxmc2lsFH/JjgDar6PU+QFvlYIOBx9RtF25sj
	k41k1x3bBXOVz6SQ4XG8XofpmZm3juKZrAvrhDDaH5P2DgXYkRtedqMHtw9nqRujMQvEARFkaP5GX
	y7GjdgfK16jp2Pz0Ncx684x5eP8TN1aEOWWADsC3C627TVeoVbtIyBqS7dAw2jUUKGd0JlmsnFG3g
	Ze1vzNpxts6UPpGs4k0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9yo2-0000000CilY-2Pdg;
	Fri, 25 Sep 2026 05:49:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9yo0-0000000Cil5-0xKh
	for linux-phy@lists.infradead.org;
	Fri, 25 Sep 2026 05:49:09 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68P5J4Yf756782
	for <linux-phy@lists.infradead.org>; Fri, 25 Sep 2026 05:49:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ngYHv8t1q8xCQbnExaa+q1yobNhD2HUJWqMbAGat/VM=; b=eXwCeuClcwVrUfdF
	S0nc5Skriu2MiiHEAwlysFZLXobiLR3CEGgvCuhzexgGzgUT3wR+hOwFzOupyspl
	h5z+yyOsWmsZaJgWVT+8KbkF2m+IwEk6NPBJS6UOXDqJIJbqIEiszlMZ4ObmcDPa
	ztBnzc3SMhhci2C7hn3fMeWzu/P4dpoNbCRFspLTNNogo0ysHuwP1CXnJohCCRr+
	UUu4s3kTe8BcJoktM8HQdyCV33do1f9o7hK7TakaD2/JLlt7OdszjCS9ZwuuS1D3
	XGvkMKi5r1ezt1OkhCnsuzvwi2nPOTbkr+Q8Rz7qGj2p2KSq6N4MnGzHkXLBaf3T
	4+kqsA==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gwjq082qb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 25 Sep 2026 05:49:07 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-341eff9e381so316565eec.1
        for <linux-phy@lists.infradead.org>; Thu, 24 Sep 2026 22:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790315346; x=1790920146; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ngYHv8t1q8xCQbnExaa+q1yobNhD2HUJWqMbAGat/VM=;
        b=AaKHde4fjbnMGuGNKQaEYUJjXm/7DNCpPZ77E/YmVOAqcZI91WxJaCUyvOaTXxRxnN
         a2BqXRsw4ZjeS31qnGHuzz+GZsIHGSkvNJC3FN8nRepf4axWGSLeJzT5EBFwwY6/63Pj
         p8nF1izwL+jLm8htcAyZxexb09DHFFXvBijcmeWK8MCzVYH2gV7pdwHuyXjx8iSHM4QL
         umx8PkYZQx3+Mi/MUxiNYidXDFidV1FExbOirsxXE2+2GOJa2+LW3Sb3zl/nAZcBuGZb
         F4dSqxEpnJZoLVP5L+jH0yPqy9TT9S+mSx/fuNH3UDy0y6XxfMgmiqSyCu34tQDFLk+O
         uLAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790315346; x=1790920146;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ngYHv8t1q8xCQbnExaa+q1yobNhD2HUJWqMbAGat/VM=;
        b=nqclGIg1ApNPFHdzEJA1tcB62j+cyRCf3hKmu7JUe2W1Abry3T0jEykdaNJyfb7oU2
         +9UsHM9sk/Z/nAT+w1MgMXsIDXzV3Ky37IQkYWqbkgYVpq/unUfDNqq0UN/7MnF7iLrk
         cABwUS23oAPYcTiEKTP466EUYV5q56e9f5tHO+P7JsGzYxpuLwb2Ty20XB/2YRTEAd/9
         CEYNvVT06tBiLr+i6bFumTMFQOnjmOVLFdXkqwu+PgKh0wn9mqNuBZ233CjqiOZIg6bj
         L2mjemik7ccQeYhd5m44tFyhXjUYZK0M4YveDQalu81ESm9YBPvleFq17/H22Of2IKIO
         PG5g==
X-Forwarded-Encrypted: i=1; AKwUvBzVqwBeAxpFYQsQesYZJsIvaaXPA4ucEYgP0XJwoQPq0+6/lXheoWziDoyhxSHBWgN0JwNsmmnZK7g=@lists.infradead.org
X-Gm-Message-State: AFuF++kqBtR8fFw+Mqp8e09TxONTlPVemoQso9FNnJ/KkAMe/sZ2peqv
	wngjmFH7V9G2nuTfnC5UEbskJOlJLfZ3pUFhDGpvITZPfbAWT5UL8bm1KvsDzObkCIkVoqL3WCH
	sFmyz0rj60Y7eQ2+47SUfbFzlPeZ3qm3za1qnGPP4FViWFHjP35gBaIXb5HpUjmgPCutC
X-Gm-Gg: AYBFou0E8o8Cj3tIFX31uyoQhr578yL0pHrhdIhJ9m7W+6gQWtPndwcujWfxpCj6lV7
	XZZFDfQesXhA55ZdGNaPDxXipwXYgj5m8D+kpXcWPJhZeKLOA9t6Ml3ARN61KWzLRXKQt1b/fkk
	auzBPXP6cOp30FZKDE5ITuRjgO+ZRsZ7ZU1pMZNNcGeNaABt56ifiNSG1avAkHVmJcM6LwQw8ux
	orL6acMTzGaMDQtI4pl9Mb+vs2UnjRE8HZ/x+SqOlpq4nClPNw0WYaa0T5vTVusdsKKPXrPa2VU
	Ah9NDNSyKVSHuFx65Dtx1mRduX0NHzRAlKex6rqYSV//KRWP9ybTNjNOTLDvaKoyyaGcFS84Phn
	V5qSo0/DVI5wrksPShNeYj+hXF9Yox4E=
X-Received: by 2002:a05:7300:8196:b0:33b:c23b:f5a7 with SMTP id 5a478bee46e88-341994340b1mr1375334eec.21.1790315346020;
        Thu, 24 Sep 2026 22:49:06 -0700 (PDT)
X-Received: by 2002:a05:7300:8196:b0:33b:c23b:f5a7 with SMTP id 5a478bee46e88-341994340b1mr1375266eec.21.1790315345128;
        Thu, 24 Sep 2026 22:49:05 -0700 (PDT)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-34144757747sm4033640eec.13.2026.09.24.22.48.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2026 22:49:04 -0700 (PDT)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Fri, 25 Sep 2026 11:18:45 +0530
Subject: [PATCH v4 1/3] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 Glymur compatible
MIME-Version: 1.0
Message-Id: <20260925-glymur_camss-v4-1-d7c2983d6d7b@oss.qualcomm.com>
References: <20260925-glymur_camss-v4-0-d7c2983d6d7b@oss.qualcomm.com>
In-Reply-To: <20260925-glymur_camss-v4-0-d7c2983d6d7b@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790315331; l=1088;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=JDFgCYWtc+oUI6m4QlfCAkKEA7BRMEd/DU1CuWueAqM=;
 b=A5DUX7u+2gUNyMDWLrtc3eW8cxxncvqp/ZA2Ckcf7cb75bVTMAhx22/8ERa731bcbDqVnUqxF
 Y943m3d4OA8AzY5sZylsjF7ITkYLMRmu1NaHifyQ/JQISuSXYIFmgej
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTI1MDAyMyBTYWx0ZWRfXydp4jQGVbCWD
 1TazUALlYQUZBdEk26w/izUY9Jh3GcqK5wjuzVIJG6msB4WNI2Y/vlEo4qd+PTQFNyZVmqCHsFb
 OmVWKWc6yD8IfCRbY0CCKf9auuOKjg0=
X-Proofpoint-GUID: LWAk4O1dhCDKo5nsu9wlBhQofFKxER9z
X-Proofpoint-ORIG-GUID: LWAk4O1dhCDKo5nsu9wlBhQofFKxER9z
X-Authority-Analysis: v=2.4 cv=LNPz05W9 c=1 sm=1 tr=0 ts=6ab60b53 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=GarM_vGPpaxcprxHJuEA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI1MDAyMyBTYWx0ZWRfX9EAl4L2Sdw9z
 zNH8bBZn03RSylzAB9ra0w2m0CKCyqgn8gz/3D9ujswuQOWNK2Iir/IS/3kBpSujl80dRUw1rft
 okApw2qXAxq/ksZudmxYxQuZN6yT8dirzkm1mvRuqyD19wAgSyAWepfwV2nZNQCHx76+YGogH6g
 jsy7hkIM5AxMdbZFI+eKuxCVu1aBZ8WCw4GirUldF+JCIGw+MFcccE6ydwzv21PU6N4ef3N/Tgb
 3h9lXX0uW4GiMaBORS1MtdqjQkp/xTIDNYVPE8jW9O9PAZPbyB7A3kg1chYU0EWls3LDSLHBVqz
 Xvaxgla9GlvewUfL+V0RQcQ7Lann8ctIm8EommX2YeB18kIANlbE1cOEXf8O60uKKaMzWoQMT0Z
 /zw8zh68JgScO+T8Bz9ggsdKv8OlAts3X3oT7lwPtg1EoPQUgm1qQ4nyunGFhf0qsS1toeUpkiL
 xOYbj1GCNKhdVj3pdAg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-25_02,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 suspectscore=0 impostorscore=0 malwarescore=0
 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609250023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_224908_412028_DF31D239 
X-CRM114-Status: GOOD (  11.04  )
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

Glymur integrates the same CSI2 PHY IP as X1E80100. Add
qcom,glymur-csi2-phy falling back to qcom,x1e80100-csi2-phy.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
index dc64af97da6c659628729a758316353798aa98db..1f1e2a4993b2aff9a1519640bc4e04ca98fa4baa 100644
--- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -16,7 +16,11 @@ description:
 
 properties:
   compatible:
-    const: qcom,x1e80100-csi2-phy
+    oneOf:
+      - const: qcom,x1e80100-csi2-phy
+      - items:
+          - const: qcom,glymur-csi2-phy
+          - const: qcom,x1e80100-csi2-phy
 
   reg:
     maxItems: 1

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
