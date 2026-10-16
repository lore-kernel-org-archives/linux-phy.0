Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05587CCF2C1
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 23:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=16X1lJzPGcFNgFYBiA9+nG92t8BH8Na5UCbMvVDmJEg=; b=PeqxaYc9xLyPmH
	Bcq8SVr6BJugUPu3p8FUf5Te+FOWP2ej6qC/6iwsG3KYKGKXSz/dlnTfDHGbIckwgKVlF1ryItCYn
	SfelHkJB1wbAQVLNprM9PEiAqbm4BhGClsLdlsy/H2CV4l4nrLQUQQYBWF89bEnlJHPyl62ALrb2S
	lZi3QU75zTV46jobRPj0xXOqmAHdkH+YkSw7NjeQJfZz6gsla8mnLH3IwdqctdMCyzAaz+2sQyFeA
	aGbmwwTqTEuiRrk+r012LYNfxAdEJ0g8exVSThUHxV4r1jmbkRmNoUv5KR1hLG4otui3lJgwUUy2R
	shJoV6F+qoNL6eUoNkIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHrlc-00000004DfP-0ya8;
	Fri, 16 Oct 2026 23:55:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHrlZ-00000004DdE-3pyA
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 23:55:15 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69GNF7Wb2164639
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 23:55:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=okZccNziGZb
	11f9rRH2SWAplNU9oARw5u6BjkiAfS8k=; b=CmsSD7Flk7pKeJf7IUDLgnJTQwv
	T/7gSPaR8eYJVznU+tcgv83snrISTqFVE/VV+vsBzGF0sZxdQS+nLne5L/1hzlZv
	e+NiGBvpqD76Fc4cM76zJgA8gWqI4YpM4A2YzwvnhapZWrbwq0+GZh6/HF2TZTyQ
	zIqr5RJ8jUED1Yq4vPA1+VPQVWKvfbkHGjf9h/wk+7Ok34R33oHjI+gyJiKAqJLO
	jUHADm6uqZMl1mh3ohpjfhd4+ddmMNu9FKWH4hdRefdC20jsJiydC0jL/HTiQL/b
	SnyKCtOAuA5duM2pBaAk2HZrTHTnGO+pmjSoqvpODKo4tJ/KOQQNLiqluvw==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hbcjtc5v9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 23:55:10 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-3548cdfd2fbso473417eec.1
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 16:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792194908; x=1792799708; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=okZccNziGZb11f9rRH2SWAplNU9oARw5u6BjkiAfS8k=;
        b=Jzrpr1PSgmOPOZYk5r5QtvPwt2iEpwf/7Yc6W8ZqGTPKbEOQQDfOAuOKKIpBK1cZke
         d2KqKshAm+zJ57Z3GpxI0v7QjqcynaMzlkaO56XFyhgUkJZWwX3OpFI5mHrIgB3inNjg
         iVmrm8w6eN2zutFCklI9HYjhGocUEZ0mDwLcgE/CDpnXYqXrUsuilYiNbftzcUruZcIp
         ZJRvTKD6UcBlxsBj666pRz1FhpPbIGWVOtuOZTQ+dSQKL6Bjoe7Qdvz3Nlj/4MMOWUnW
         LusbPVIMrqzm7nF43bD80tmXjY44HGVeDEKLdSmMxt2nw/9r4B7QKFmeOJQ1nPs8O/24
         jnUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792194908; x=1792799708;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=okZccNziGZb11f9rRH2SWAplNU9oARw5u6BjkiAfS8k=;
        b=oduw6A+WfxndVvbOoepebRzA0STuJB2TddDLAzhkmT2upqZNts2gvcl7CuZWLZrP+T
         xjJ76FhfjPoi7uv97bzEbo/ScMy5Am4wKnwohHwdyzjHntvjNWFUk1Kyc8NuXoHKkusa
         wexx4A+d32vfN9OKVauZyq2/CRwpCQWtaV72OoSycNK7ousj9TSnp1RVEn/ymuRVSAo0
         Gt4Kg8ErOdI4Aa47wUl7oDEcG3q6mtnYPA2wdoDNwBOGoJXtHTEDfNcxYbLLcxgb6Od+
         UJD7cGARVAB6ShfHIPZ2lMJ7r23SU3jjLHv0XN+LxQLl+wlOBAu3vGl0wDu0o71Bo6Cc
         fYxw==
X-Forwarded-Encrypted: i=1; AKwUvBy5I7zJ9q4PQDqQ/l4pQhq8H3wxoRMdZVxxu8vXKF7eJcyQosHwcFBqL1UsbyHEmWKnv37TT5rPRZ4=@lists.infradead.org
X-Gm-Message-State: AFq9FYK55OAn4AUBSWHz8OsXNwkh3hd6rz13AnFwX53mJXRKlkboCF5J
	yqKHQ6DA3kZyCRXWbPJYG08W3c3dvP2T/xAcFx2prZaK0LoqfTWp293ypJDw4ABGKoCai2aIWeZ
	Q+RLD8Ou/y7f8OjJmLDXmRykuiDSatI8dqqIKd7TXQi2/p8zbhCO5YuEi362u3BYfSHFb
X-Gm-Gg: AYBFou3wSEUOVJ16swoasyeBZHeaMH/NDhJYhtG0WeIKYOjciUA9KxWPZFpXATtggt3
	+I5Pnay83OkAJsh7WaLpeVAUhomJ3gztK3ZZ5V+M3OAfo3wRTi4ZJFPh42gAaHv44DZvm5EvFKs
	CZxkdOETTRgE0G1TbRSV0L0+X5McTU5HnMWQ0Sn7T5HQdu7uyiPeCO71achSaq6CUbO22DxN4sQ
	vNH+hmacFgg5W9rS8QK2KqJ1BCyUK/2Vy79RsDvTrA+Io5KtSr7cWUtTLm+7tFbSKU+bbSWQYyn
	pWg0zUV/mKNUZZokZDFx1yMv2NEcg8l2/FYAVeENfOwmDmpU4pWzfXirzjrcWCXdzuJsFCnzlfJ
	B1oTF/8eECCSbZgceIFJKWTb3oOHfxWRiREtM73NpGUGAFwQVdktSDA==
X-Received: by 2002:a05:7022:fa08:b0:150:3c69:2adb with SMTP id a92af1059eb24-1850c40d9a1mr2306657c88.2.1792194908277;
        Fri, 16 Oct 2026 16:55:08 -0700 (PDT)
X-Received: by 2002:a05:7022:fa08:b0:150:3c69:2adb with SMTP id a92af1059eb24-1850c40d9a1mr2306626c88.2.1792194907746;
        Fri, 16 Oct 2026 16:55:07 -0700 (PDT)
Received: from hu-aarunnan-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-183190aa7bbsm8556183c88.5.2026.10.16.16.55.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 16:55:07 -0700 (PDT)
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
To: bod@kernel.org, vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org,
        mani@kernel.org
Cc: gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, loic.poulain@oss.qualcomm.com,
        vladimir.zapolskiy@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/7] dt-bindings: phy: qcom: Add qcs8300 to the CSI2 PHY schema
Date: Fri, 16 Oct 2026 16:54:58 -0700
Message-Id: <20261016235502.2274268-4-anusha.nandi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
References: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE2MDA5NSBTYWx0ZWRfX4g9g4pVsJtvh
 k4J0PlXssUlaMv5qwb+Fkm4t6q48DxuY+6TY+nU1cbqXvyC9Fi8f/62DL1Y8cX3+lkXWt15moMH
 47GjzxrhzmAGdkCW6Ylu6/F1HlGysQhEEVMmJAijgQyo0mvQ6onSEO1J9zyNXtpby4Seq6/B8Kz
 Xd92O3x7WAQTFCu28CFIJwjmXguVcM8nuwK7pnEHiOq3x0Wq5GJCOYwR7/LpPUYJz5t/FmlGz99
 ZAcxXMMrLodMxW5rD4+nRBfbd22aX88PuxsAV/VmTPJVUWyie3yxIa0BykVlwBqDk43mKejUC4t
 WIkLPKaE6zNjf2BRXjIEIUzU3zj+PYyimyyhU/Np4FOdZvhnaS9TDBmepU2c+r6T8IqO4KZ2k6r
 NgkEy3NnO2hL+H6cUdSeBC1H0WhVeswbYScOgNaYubP4AaYBmkztv/DhW/x5wUjKL/xeGMFNYvJ
 wIFJxo0GywsEBd3aTMw==
X-Proofpoint-ORIG-GUID: kecdNd0r57Bjnv0RUEfLWVmeDAkV6iCi
X-Proofpoint-GUID: kecdNd0r57Bjnv0RUEfLWVmeDAkV6iCi
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE2MDA5NSBTYWx0ZWRfX8zPscygagBlX
 safofPVe6RC1roph3wSm4IrIHNdWRLJTQVIXMG0FiUwwdoZp/AU1qlfkIc/oJsJKMcGriujz2jU
 5M9BjTbz7JbVpb6Eq1p2iBO9NFkP5lM=
X-Authority-Analysis: v=2.4 cv=VpS2kO2n c=1 sm=1 tr=0 ts=6ad2b95e cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=gEfo2CItAAAA:8
 a=EUspDBNiAAAA:8 a=UFojjUosb5XV-b-9NnsA:9 a=6Ab_bkdmUrQuMsNx7PHu:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-16_04,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 phishscore=0 clxscore=1015
 malwarescore=0 lowpriorityscore=0 priorityscore=1501 impostorscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610160095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_165513_974087_8D6F6509 
X-CRM114-Status: GOOD (  11.57  )
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

QCS8300 uses the same MIPI CSI2 CSIPHY as SA8775P --
identical D-PHY register layout, common-control offset and clock set.
Add "qcom,qcs8300-csi2-phy" as a second enum value in the existing
schema rather than duplicating it, and generalise the title/description
to cover both SoCs.

Signed-off-by: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sa8775p-csi2-phy.yaml   | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sa8775p-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sa8775p-csi2-phy.yaml
index b66ec2f14189..8e60ef0714bc 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sa8775p-csi2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sa8775p-csi2-phy.yaml
@@ -5,18 +5,21 @@
 $id: http://devicetree.org/schemas/phy/qcom,sa8775p-csi2-phy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Qualcomm SA8775P CSI2 PHY
+title: Qualcomm SA8775P / QCS8300 CSI2 PHY
 
 maintainers:
   - Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
 
 description:
   Qualcomm MIPI CSI2 D-PHY. Connects MIPI CSI2 sensors to Qualcomm's Camera
-  CSI Decoder on the SA8775P (lemans) SoC.
+  CSI Decoder on the SA8775P (lemans) and QCS8300 (monaco) SoCs, which share
+  the same CSIPHY.
 
 properties:
   compatible:
-    const: qcom,sa8775p-csi2-phy
+    enum:
+      - qcom,sa8775p-csi2-phy
+      - qcom,qcs8300-csi2-phy
 
   reg:
     maxItems: 1
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
