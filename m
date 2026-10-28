Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEFD3606A332
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 15:20:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=QKYk1yAO;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=gaYc9k84;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=bArJbUHQ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=qa+RYaKn7UZHA5+7M4h1qbFwpttyMVEPAfSUKZ9SmDQ=; b=QKYk1yAOKDHJnzhi33FuN8id3G
	PQOOTJEqBv9khoaWiYh8BLMAm0Vh0KVI+0B5TwsJWi8JJYbM67ugOtuSr3XMesCYbtEHhAd6O05QX
	B2YWPEOy8fjzMaJQQV1deG82ImCY2hixo9nD6Vu32agvkfMBGDqZlgrqs6FIXZr6H3BOqGxNZ6BDf
	0AXm2IkDSnm1SXBxSpwBSOgehKlrrAnN0qo/YbRaLiwsfN9QNqi9UqLSnsNjxeTCA847HJF93a/Ia
	3/NOvgsXYPVp1UYLOddrxip32a15/WKmSbPflth+Yg46+pfcsftPXgy1MP2IRdYlRc4XbkgfGcR6c
	zZ3F2vNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5SV-00000007Kni-0GMA;
	Wed, 28 Oct 2026 15:20:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5ST-00000007Kmv-0NJL
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 15:20:58 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SF9tbN966144
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:20:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IbiNyzfqx0jGWwabN/+ItDIDzhYhWzZaMzG7MQNpHsk=; b=gaYc9k84PoLq9363
	VhsGb/OPFThRaWzzY3kdP5OVzSpQVOIm3Ang8GUVi7BBUZkHH7CUcYo01bbHs+Kc
	9KIftVFeIzwZNmVwgwXH8GXisyp+A6+9lWH80kMHHngwTD9wkt0k7YoZtRiNJiy4
	X+v9e0uyepI8RVdOQhbgeTVocIlR0Ya6iL9xvgNNsxrE6JT7x2gdpcDRELPlQIkU
	Vw/C6P54c3xea0+HhykvhPE8xBblIKDMkhiEpclRAcjFQOfWYbrZeOeDAdJ4nGYI
	6xllza0er8CNLBkq+mYdzGusuzuyz6GhcHhsddki5byGcbab4lZnecGxu7Ermz+P
	fBvaaA==
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com [209.85.128.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hkhtjghta-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:20:56 +0000 (GMT)
Received: by mail-yw1-f200.google.com with SMTP id 00721157ae682-8b0adb0b8dbso16751737b3.0
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 08:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793200856; x=1793805656; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IbiNyzfqx0jGWwabN/+ItDIDzhYhWzZaMzG7MQNpHsk=;
        b=bArJbUHQjq86rmwTDycCna4YuJPvR9iwA4yGtIplsH0/gSxHSzU++Por+YdEKTd5XC
         vJkijz6/QkH3Bb5lH9YsMLWAk7gNFUcXghAHUWSr5RfNbEWGYhwhGnxW2y+Ap6YmpPq/
         NUtkiA/pg7IHHbhvYf0GxFFes6oJUSDOvk4FDuuvNb7oXwVbxQ1BKtBREFxoNCpfTE+l
         Xo+Ov0KcnwcP2VwJAYOqL2d31FrWEEl8oVnHPyMgWaEQvuD2x06Ux2lSv9dRAxjLA8el
         S3kNNPXwRI/9R6uTDyYhyTew0NBdnQdO26+74aAVQr1Q9FLabv3kZRhGXvYkgxrdzIh8
         ifzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793200856; x=1793805656;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IbiNyzfqx0jGWwabN/+ItDIDzhYhWzZaMzG7MQNpHsk=;
        b=yQmNK6cA3D2UWm2FGI/7oPVEyKwldMzooY9L0HGOOugIAW/tpdPzmrYX29jyKx5lg2
         9TsPyWjDuvbAbduLswJVTk9rw735c25EOanE695pf7nbl8zTAad7+ZRODv58Gp++VR3b
         F3fNygjRqrJ8MetRp8OSnnUKXJ5uNpRUBZil52Xyj8Cs7aCIDDnp/UNoEGi27Bmou4jU
         DbUB4NOlJS5Qx7AgkBLt3OzuMkZu9P0Rvtjbg/ov0RyauFuf2stq8wEaQpERY+wtRkQ1
         rtSVGfBXpNffiqz21dsjyoZsL5dhmoKuC846b2bWJ5qrWsI3Ffd1eLCv4yjfAb1dOlTY
         GKqQ==
X-Gm-Message-State: AFq9FYJoKURm/vp2BMYSTRcPFCq5auSu2qM5mjBNYaVQcwznHJFSlaGm
	DmF6b4vcLLsZDSbEQanzlLUODCMmhJvlAYDqzeHrTQEM8UssqUwCtl7jysomYzQ/7fNU802nLal
	rzFBbUvTWWL1N+ctBXczoNZEVDlcyjqADoQ+SIMJU7/X03OzbIooPOCgB5X0w+jYH8b8M
X-Gm-Gg: AYBFou0Nd0qA3QtHFJucsrFm96lcsM6if3akqu20hBv6u8nuU3wW8pPHfrBAOq6Zr3F
	jYlk7oYqnBB7alBbtVuQWHZz5xKVPNlnzuuh7pYBP0ONQyuyu6EsKU9TiaiKZwv8hlyA6NVm6tw
	ZdoJc3HmQDPIKnN40LMTF6idfpwKA0a4elXd/+Y4ecWXsH8cfYXQAlagP7PofTB915dxZ0GDdZ3
	nDC4xbh6cFQAQpk5LGjh0Cr9z566Mthii1EHKEeeGoNfXgpGUTWFKCTGnALY9EwB8m3Im47VvsA
	MkbsiHtBummscp7fZIDu2rYztxBmQMcJFhmQqRhZCaINz2bJL45xzeE2Td6q9xkkchUWGU6PXqP
	bQkgVefbwxI94UPyRo8rDgdCHv38v5AMYiQe9AOa3U9FiAJmGNObr3B7YJLYhFTtGzo5F/zcF1e
	YlYo9GDkX2RRcHEKkR0VLsize4lXK+tRDkM3FxhzBKg8HhojAAcsO0/IHbxyGb
X-Received: by 2002:a05:690e:4548:10b0:677:b6f0:63c0 with SMTP id 956f58d0204a3-67a7bc5eab4mr1474817d50.39.1793200855501;
        Wed, 28 Oct 2026 08:20:55 -0700 (PDT)
X-Received: by 2002:a05:690e:4548:10b0:677:b6f0:63c0 with SMTP id 956f58d0204a3-67a7bc5eab4mr1474784d50.39.1793200854685;
        Wed, 28 Oct 2026 08:20:54 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-67a803cdd1asm1107541d50.4.2026.10.28.08.20.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 08:20:54 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 08:20:35 -0700
Subject: [PATCH v23 01/15] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 Kaanapali CSI2 PHY
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261028-kaanapali-camss-v23-1-95f250b18612@oss.qualcomm.com>
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
In-Reply-To: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.16.1-dev-17221
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfXzqIqFXp+2i43
 jFe8Yx4sBzAjzsXFVZQ3vKAXYDuyLDO6VFUJtru8om8puCg0ki0SKj4Ai1w/HR9E4zd3AucPs2L
 6e30ckMxVIVXw9GirLUOXD9lP1Eq9FPq+E+czyeL+UOQ2LcneHwe0197kwdftND8tkAMK6gGFGz
 YBV49g/Q/JgxrNx/lDNMIoMheaTEbB4iBvMZKjM3NxI7+MjTaK4UgviSM4eZZjSdcQpKqVQXOJM
 Pn/j8Qz8i4CKdVDFRos62xNxV3RbfTbp3+ZZkMaZaNlZIVvufNxpX3wi74TxO9hcJnGegHHBDbb
 YNDuWazz0wwkNHZPYea+gPOAY3DKEdqJBEYruJe63vy0hsb1k6Bo0lirY+R/70zWjZ4Fn+Li4/Q
 Ycop4ywHNH0WflF/Se/BXSm3rR2qgGbpYXX8o0nZlpd46UgNc8Ot+c25IDP6XDUsVYO4EgDsCSi
 v8/+eTMZ1iYG9eGaGzA==
X-Proofpoint-GUID: uANE73neaE3xwg1MxLKEh-7cE-Lsvm63
X-Proofpoint-ORIG-GUID: uANE73neaE3xwg1MxLKEh-7cE-Lsvm63
X-Authority-Analysis: v=2.4 cv=LdipeTfi c=1 sm=1 tr=0 ts=6ae212d8 cx=c_pps
 a=NMvoxGxYzVyQPkMeJjVPKg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=mZPZtqNPFm0sPOGUM0AA:9 a=QEXdDO2ut3YA:10
 a=kLokIza1BN8a-hAJ3hfR:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfXx9Yuk5BcG89e
 8gyAnn2UA1Ae4R20wp2hrQPQoic8dPxzs7ixmoq2XEzt7Deb+ooBTRe1EICmgZFq8PjWfz6cU8a
 eSM6/zCyHQUeOUK5C2QYrFgnQlUn2Ro=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_05,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 impostorscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_082057_141522_6D5C9B59 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The Kaanapali CSI2 PHY is compatible with the existing x1e80100 CSI2
C-PHY/DPHY binding. Add the "qcom,kaanapali-csi2-phy" compatible.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
index 1f1e2a4993b2..6e9eb8e265df 100644
--- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -17,7 +17,9 @@ description:
 properties:
   compatible:
     oneOf:
-      - const: qcom,x1e80100-csi2-phy
+      - enum:
+          - qcom,kaanapali-csi2-phy
+          - qcom,x1e80100-csi2-phy
       - items:
           - const: qcom,glymur-csi2-phy
           - const: qcom,x1e80100-csi2-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
