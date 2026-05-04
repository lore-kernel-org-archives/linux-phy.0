Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D4B8CD3427
	for <linux-phy@archiver.kernel.org>; Mon,  4 May 2026 17:07:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NktZ2nCv0X+7TY+Xc3xeKtQ80r1UuR06iGEPDOWfKN0=; b=tddpSczqxKeTV5
	Ye3u4m5rT/A5jPoUbPylkfVwCcA1Gd690pRkl0C7GN8Dps8O/zoY3bVvo4uWXIxHzedXPo1/kuTNH
	Mi1EjpwOmiJolBcliP2c50051ep5aMyinJnbSzmtDbWkQpI9YJ3bVsdvtF6JkYZZtNZsUnDMcgNBD
	huoRLkRZ2yF39hVNo0yJ2d2LFP9dwhLWR2kwf3b04//J3wHi8iozSUDdhA4mYyI8idab52iG3C9+4
	OR9+I9R2x9K9CTHPuZD10N6G1hAk1cfySjIfnwc1jmZ6YXbavuZhyCXLH48/coNCGRrUwgWurS/6A
	mXGidfDEtPf8UXnIIYuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJwlR-0000000DnNC-3bKZ;
	Mon, 04 May 2026 17:07:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJwlP-0000000DnME-3LIF
	for linux-phy@lists.infradead.org;
	Mon, 04 May 2026 17:07:25 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 644B4148748896
	for <linux-phy@lists.infradead.org>; Mon, 4 May 2026 17:07:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=kwYz6UWOy5b
	+OSxGK1ilKg1S5TT3o7G0l08NWn3Jakg=; b=RVfGolBMN4gJqfqNkvmdDdTqQIM
	GJgyPXBeQjwPy8s01h29d2mdmNFvMRS39L/4cgTxh4+sEDVpZk+7EOmxjQRXiulF
	OCMuSV4OiupNKTxAs3TjyWNASxcepjnW1s2159YZ/jNLPYOogYzb8o4g0yWDrG0w
	Vu9UG4I6eM5WfRb7fNeHEXNnnZmaW1bOdamt9YdfHWugVM+H12/zHv12WNpaZqcB
	XQBSvmAoDEAisdTRTRxohG87bm3JBf0Lasi9IOwHp56k3R65DOzHZubt8abTHImy
	RZSc18EB2CkjtBwV9ChvzMV428MPLOfS8PelxTYSrgHVLnszMNhDoiyjGuQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dxscf1e36-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 04 May 2026 17:07:22 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-364ef32a758so6235475a91.3
        for <linux-phy@lists.infradead.org>; Mon, 04 May 2026 10:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777914442; x=1778519242; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kwYz6UWOy5b+OSxGK1ilKg1S5TT3o7G0l08NWn3Jakg=;
        b=XZwcm/CYcv/RY4ACXNYHHRmZvtJTSZ1eP0GaSWqKQMQNIPfnTqUFArRZUmjYvqThJ0
         FXG6ueh4SCkoFy9/c9MjO06WWOiO52BYNuvhtx9jplrJ7JW1xMa+CGlsnzdpbjts5TnT
         C8mg2GubmnXnCbv6XEUzQ3tY4aOG9TOs+t4WHJIDENiOGWNhJ04TcZ6lAVXg6FtKoZ0b
         DE52k7zkuaTy1jaq1H3gff71W3HRxfssc4IgaaFvBoloqOk2ZNpoI658vb404DjrBdFs
         8WiDxp9JnvBxxRDf8a4bN6xXHJtJpVKVZs2nFLqOQrfJyM8MPwl94JOK7eZHSLs6Q1pb
         AJsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777914442; x=1778519242;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kwYz6UWOy5b+OSxGK1ilKg1S5TT3o7G0l08NWn3Jakg=;
        b=IEECotm+I47s0CJwiRtyQ6tHUwTr3RkITLhhGhDE2oDLqnIE1Ceufwnru4Lfl52UKL
         K+2WLLE5hTNzohKBNLmFllf7dRZZGI9r1u4OUMh8II5FjcZ3PTSzgL1JwKhKqcrQv2il
         OOEoX1+5ntqldqoJ2PiwGFtxAidhXev99rv/YZJFTmUI0LSIByYu35HB2emsNwljQKyR
         dInmp+4j6KMKi70BxRp1eeyLzIwcaNBel3a44Saz1XcmoWM8VOuATHfYywKlOtkxj0Qr
         XgY9AlFObpTCtofj7VVilYekss+WdWJEQOyK/72AYr/M7g9tYm+v+dO7pzc97M126Kf2
         Wbew==
X-Forwarded-Encrypted: i=1; AFNElJ+osQiPhgMzmgcWy/f7jkki7HzXue8V+brFIAyy8AYPevYlXBmcfyTYRy/+Bo58WybLfACK1t93rXI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwFa5zO4ZO0acobf3sOnnS8PQQf94q1KaVTLqSaqfjBCwkbBnLZ
	Re9JeVsc7DvJc13nzDCB9Cdk3hu3xiCN0I//L59toF++GEAQPqoOvW6avqutfEqBXSo9R0XWNrw
	vJj81VlMHP4mDz9WkgKiPVx9wqZgKTaTKirmrh5Py+h8p+V8dWuXUXTGjkz6Ocw9g4plg
X-Gm-Gg: AeBDiev0d36TOro+fsizAe0kv5dm+hH8BTbvpbK6v0iYhRnhz/LWajYiKleouuc3Qu2
	HR9NlInshjfmCrzVpcCi7ILDifqMMEv0J9jy85plHjythS4K+YThKbysfbo8QrKsVBdIAnnjvLZ
	EVx1M5Bo4mP0PQZlYE84sE+Lsr3H5aVTpzriKfW3lCJMelIc0d8kX+go4WEbz3XINeWtpOTTSnn
	ujk5yjnpHWOQwawDdlN+vBkVkYoMMKSBfM04IxmnEMJK6x3iTdxC1pO6JqF6K601lYXPi4b1YVR
	++WlJcFp2YhHCuhqkpIUzTRHeyqih4YLPzijCHcq35C9d6Vv778ma+cYpDEp6vPEwzwxhc893KB
	dmK0q79zBWxfhm+wY2RmPxf7R27X3HmraUo4QR9QMhDLDuvK8/Ww7960ljOxkVFE3miqDnPkjU+
	UeyHZK6Jkr75uQF9nOR/nNdiavaQ==
X-Received: by 2002:a17:90b:17d0:b0:35f:9ab2:a5b4 with SMTP id 98e67ed59e1d1-3650cda4881mr11081072a91.6.1777914441606;
        Mon, 04 May 2026 10:07:21 -0700 (PDT)
X-Received: by 2002:a17:90b:17d0:b0:35f:9ab2:a5b4 with SMTP id 98e67ed59e1d1-3650cda4881mr11081020a91.6.1777914441127;
        Mon, 04 May 2026 10:07:21 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36528ad3154sm6256847a91.2.2026.05.04.10.07.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 May 2026 10:07:20 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v2 2/4] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: Add support for Shikra
Date: Mon,  4 May 2026 22:36:57 +0530
Message-Id: <20260504170659.282532-3-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260504170659.282532-1-krishna.kurapati@oss.qualcomm.com>
References: <20260504170659.282532-1-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=BcvoFLt2 c=1 sm=1 tr=0 ts=69f8d24a cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=a8DDbfJ14wVBhdYpEPQA:9 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA0MDE1NiBTYWx0ZWRfX9MQUjyqPd6q9
 9qr66a4sDfdnQl/1G+UR0yJEJ5Sf3UcBROTcYUDdz8YcjkP0txcJGUpaq0MwUMNvyd94JWF2RG9
 1V8LPlFDnMz5PXn4+Xs/Bud/oleB2jT2JlyaO4ZXbaNIcJqndWn3r4JQZmXtN5IJyL8E6e20rKN
 7AN4ZACX4clLRbw531/OeJTQomzzvicWvGkbOuEEwKcOHtGV1N33VnOniIxIdjztWZTiRIu8z9t
 4ul7RiYTdl/p2eY8oVKEJlSz3O5/ovodnYb7Qxf+NzUfsqMrfMTFIM1x58jGb9TFz5nCkOBon+O
 exs9+OUgMVIziAI16QmhneL216HBohGSGwQB9JE1DCTNZZ6bD+5IDk8W2YTEXxFj6T7sef0g+1w
 0+AXxA2SH9S6ZE3qeZoN59PeGzn5G/G67yTbPkYtPQ5fD1C0APsi7GrWkcfN88D155z4zUQNn/t
 1AkrMZY8bYXWc1w1k+Q==
X-Proofpoint-ORIG-GUID: 6C7ETNDyRppq7oDK6_udz007UkvouklG
X-Proofpoint-GUID: 6C7ETNDyRppq7oDK6_udz007UkvouklG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-04_05,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 clxscore=1015 phishscore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 priorityscore=1501
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604200000
 definitions=main-2605040156
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_100724_005065_EF513636 
X-CRM114-Status: GOOD (  11.40  )
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

Declare the USB-C QMP PHY present on the Qualcomm Shikra platform.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml      | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
index 1636285fbe53..8402fe4a96e0 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
@@ -20,6 +20,7 @@ properties:
       - qcom,qcm2290-qmp-usb3-phy
       - qcom,qcs615-qmp-usb3-phy
       - qcom,sdm660-qmp-usb3-phy
+      - qcom,shikra-qmp-usb3-phy
       - qcom,sm6115-qmp-usb3-phy
 
   reg:
@@ -116,6 +117,7 @@ allOf:
           contains:
             enum:
               - qcom,qcm2290-qmp-usb3-phy
+              - qcom,shikra-qmp-usb3-phy
               - qcom,sm6115-qmp-usb3-phy
     then:
       properties:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
