Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FA28FA3744
	for <linux-phy@archiver.kernel.org>; Fri,  2 Jan 2026 12:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4Yh1JRgDCx2Ac+XGEfBTv5Udyuomy+wTZliyn+hQ+mI=; b=zp7rRwl3TL8pwF
	7a6iwa8SeB7uJbFGi/HKy6V6Fn6p+F0y5nV5p2i3+QoHa1MoV66DVx59Wcfgb3WpxVAmdG5SMUId1
	T5Gh2+nz75roY7DVb9Je6Hi9Je6cC5mbzkmnfdIQ5kHMzZKYqTs9JDMv6/yFekbeNbSZmdeOPzlIH
	6CUIPwxt20uQF1ILFwUuOZLJt+9LoSAcfit+DsVNESl2IGb0jAbKokWuT1dXZQTUlPuCG4Fp0WZKR
	UArV1le05wsuDF1NKdgcHeWBQgnXfYqiEsIERGlIQffezmgTVj9mponOK97kJKztVzTzateXmghRM
	yEZQMnZw8+EnuaX88Zjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbeaR-00000008Dq0-3rLT;
	Fri, 02 Jan 2026 12:48:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbeaN-00000008Dmg-2oNC
	for linux-phy@lists.infradead.org;
	Fri, 02 Jan 2026 12:48:58 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6029WC23504776
	for <linux-phy@lists.infradead.org>; Fri, 2 Jan 2026 12:48:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=Xgm2AP4vgmTYsv4aRX1OSL+r1z4YHLOddud
	0aXq4pOU=; b=clMmV/bZXWsnQ5eoNle29tagaqRGohdRKKxKPROAXCJUNuV+QZT
	F9Fh1qEslLwty5OoK3NiwS7q7pXbTo+YrVzx5Wa7j4Hr2Kg/5jyhBd8eMmThdluJ
	pDQUrnx5VWuO2uCNog3PGO+s9uqIWKVS6ZX4G8r1y7Xgv2CLpvNFo5u1SQj8JQr8
	w2FVegM8IEOlqTOrAAdGuumEKChXHjLyI+6E2OqCrW2tOYC7sOH/KxZXISxqmZXr
	IRo9YJs3hctdZTr54ik/6N02RxciUQXXsz0PK959ttFBVj+3CjHf8xhxWVqDwWF+
	Fx+PoA7yBMfk6datIvPgQKkZ4XGSb1hIJyw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4be8bk8qg6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 02 Jan 2026 12:48:55 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4edad69b4e8so258522941cf.1
        for <linux-phy@lists.infradead.org>; Fri, 02 Jan 2026 04:48:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767358134; x=1767962934; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Xgm2AP4vgmTYsv4aRX1OSL+r1z4YHLOddud0aXq4pOU=;
        b=hWjPeUTJoR7cfezxCUceExejByWuUjo6nhPRbjuR5pQh1NztEBv8za1KpmX+bRyl9Q
         UjDusmyddmv18zkqsrVR7Hr0c828de0mSumOqdsmcqYdeascuAzzuiNkkz1EXBxbTE4H
         aDFcr9iLjXvRU0i6lEx1iv+/5bneXgofonqvmjzq14FcOyygLsIRtyjLLbS+2IRxGV/7
         +ock4LLGEntQKcCexWKGMPCzoeFbWhFaNi44FPKXH5leOFqwXVqy2R+4Rpah7PS8I/Nq
         1MPu+fY6j3gNlsmKDgnUiJhcRf/bznrIyG5LPhn4lB+zidisOGgQXIune+yQ+MIQWcwk
         OSjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767358134; x=1767962934;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xgm2AP4vgmTYsv4aRX1OSL+r1z4YHLOddud0aXq4pOU=;
        b=a2Hkyr/II9DkDTZ41CEEF9Zl8G7HWnsJlSIDBC9Fv0idXRN4fvjxtCm2eVNwgWmhlS
         yVBdw5wIMhYfxxZjtfGTeuCpTPNmk89pMAAANUbzXfC/9tI5na4zR8dtmx9HQzqqg9zE
         7uA12l8I9cxLDvoiMPSrHEYwJSPN+Pu3a8C/wy/omPP24en34ymK1/EewbWfUtzFNfdj
         6CBCzerY0pD/K+h7q26sbbwEyNfxkcXtQNqODTxBVaqY7IgF717aXEp7N8fNbxyCPUqc
         mgxA1hwRiz9NHVvtuXJDGa7XeUES+LcZiLb2CKkhWvGzbzDGxeeWjeEquPN4xa2rWTNZ
         k4MA==
X-Forwarded-Encrypted: i=1; AJvYcCXPGTNCpPOXMWWYtgH9E1vf82tTQHfBKlic2q3Nh/KtDpp8LZv9E3cfjD/b9h4lPlriffEOqsWWOhw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxzL8PdWiKb6kR6ntu0gUwBstjudUvW17roqvHXSZC+FBx8s3fi
	TlJCtq+g42RcnhJJ9lzafYExw+i6+VcvEl2oU87kenDedissfWdnnZTQgp8xvT+Jt2h36KeAI47
	plQEJtrO7kbu6t2PuZcnOUkNwthTnzxMQcGvO+9IjyB4CJAseAO7AezA9XExJdnOVNyhWRzQIEI
	27
X-Gm-Gg: AY/fxX7UWem7en53mHJlElaJJROoL/0jZF/uxjIPzG+fmz+xo67q/eIU47Pr5mRzJNn
	GB7ILDFeJSzLeX5eMVAjPCFJQyNX7VSNsD8AtMJ1j57UZ78eWFJ3xRtg1WCSJYDHg/9Z/ctl602
	7b+hVNGPpMBmoS8MKgoG5IKiX9Ka6rz858izXO4i0mEa76Wur6rCWe5Ayp8An7ecmnfRdldwSFT
	Xft/hyR8/gI9JffX5paqHn3KkjXw80sIuLSM9xVhtbrP/j/mB6FGGRrq0r1lqVdN40SI2sDZlqc
	s+fZ8pdi1g9/+nTAKgo3/zOxHW0JJy+KqpNlbkTvjq5Csh/yq/s0cV2ViFi4GxWdeOmyylg+vtC
	JG2MQhdSuQhHJwXupzHF5npuHcg==
X-Received: by 2002:ac8:7fd6:0:b0:4ed:a6b0:5c14 with SMTP id d75a77b69052e-4f35f43aaacmr649488751cf.23.1767358133930;
        Fri, 02 Jan 2026 04:48:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG9lzJSbr57E+UeRW2oJCNK0mPboU52nQHVzE0PmuhD9prUEOymF4yHJXijw7/81WAH7eXrcw==
X-Received: by 2002:ac8:7fd6:0:b0:4ed:a6b0:5c14 with SMTP id d75a77b69052e-4f35f43aaacmr649488501cf.23.1767358133483;
        Fri, 02 Jan 2026 04:48:53 -0800 (PST)
Received: from quoll ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d193d5372sm767135185e9.14.2026.01.02.04.48.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jan 2026 04:48:53 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH] phy: socionext: usb2: Simplify with scoped for each OF child loop
Date: Fri,  2 Jan 2026 13:48:49 +0100
Message-ID: <20260102124848.64474-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2449; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=MGJHIfZm/ZSovOzFuDJPmTHZ9rvV5qLwwkrNIcbV0ec=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpV76x6RPnyCz1ZXcH9iipQhqZbpkWAdtCRlIT3
 Os/LlocJD2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaVe+sQAKCRDBN2bmhouD
 147WD/9Pi8XM9s0P+ZCcmIyS22LS9QmnLCHb8krpSRow7SeKYpCEgb42zGoyfXk/B3KDFWv8eAm
 vYHBTW3jd7FxcNcoC9XfNvZyslvcYeqxhGltA14KeZxa6roWn5oVMv1M6Z7yxdvx1v+UaSs0a9A
 5VfJfWpJaRDgJpDlTkKw7xzIfZZVaBa5KQ0w2oMzPqeqhlVjsxAX/22n0w1Lyhr4eLLD+VU1cVe
 L128Ovys41Ay35thB6BIyvCUitg9azfmIIAvT9WXzIDOQORFne9h25GMF33UECuN4Ia/haB9pC7
 ZSNxItRXC4xDAZVKYZ/S43QjgeubweDkqd8I/5pfq+3rN6giR9XULdBiStbaAf2bfaGgAJYVvZ5
 d9UaA0Ph5LGX4P+2QN/yLjlf2vu0vl0Afb3rxJVE1ZWmutYabLV7VdzaNTd8pSCasPrxJ4WVN1p
 iGmzldFBqDeDaNztixdwi4RoFg8YhjZ4bQoKGkbPh483PCiRnq7tgRL1YOpa2EElZ24pUi/caWw
 VHNL/xqIvY7NjS6ywq56OIVUHEoazOkBxU6NVnQ3N+r/mJvwQLUlFXg70hoWZDKyoM84FjEWlhS
 rMvcbIMd0h/QY7Asc+ILNJinmmF2/gvSLOoNd1vuDcbxeX2JQkm1nWj50ryY9ERT4d/AZG6RNBp CiuswbRMew02DTg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTAyMDExMyBTYWx0ZWRfX5ugXPS2mAhWs
 gVGR7WVe7ewltPoDy1SbaL+EUxVfSO3nvrfUXKYGWd2p13K8NH0aYLaYtP3If0r54/gZGLdOr/4
 g4h7npl1EHPqq4PTDZeFGX7b4AjsugPzCwhJdBft5dvDlfEwsBYIDfB0j7yy1PasN5guHnRjZNH
 TJag6RkMQrKgBv3tcOHKh3J/BSUPT9N6mXyiuyosaVryT/OLCy/FhhgYVf37WR+CxpA0/vBocHn
 gE3IvlyfXu/rv/sGC8qv2vM8IBSbBGGOlvILvMrq6y/WDoyycCCgZBUB+MLttVfwjAFlvTCBrrS
 AK8o2sT1f5AdLVfbT+vxyECg8A+0mx1iQrcJ2HDHisRpLiYLkhvIlGKbI53RCdpkvhhU+lAS+yP
 E6sG8CfH8pyj57usgsxmoKx553fswa7b/LPV32uivDWCH4rC27CLOkFJ/Mul2430nLw0BkQs52J
 0yF9YbEi6TVyZgGLPsQ==
X-Proofpoint-ORIG-GUID: 07P7jv3rGl-7lqtJ_I8pK54wSGI22pEB
X-Authority-Analysis: v=2.4 cv=d5/4CBjE c=1 sm=1 tr=0 ts=6957beb7 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=uI6G-Or-YwyI0Z_CgVEA:9 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: 07P7jv3rGl-7lqtJ_I8pK54wSGI22pEB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-02_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015 adultscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601020113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260102_044855_730855_35BF7782 
X-CRM114-Status: GOOD (  16.95  )
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

Use scoped for-each loop when iterating over device nodes to make code a
bit simpler.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/phy/socionext/phy-uniphier-usb2.c | 28 ++++++++---------------
 1 file changed, 10 insertions(+), 18 deletions(-)

diff --git a/drivers/phy/socionext/phy-uniphier-usb2.c b/drivers/phy/socionext/phy-uniphier-usb2.c
index 21c201717d95..c49d432e526b 100644
--- a/drivers/phy/socionext/phy-uniphier-usb2.c
+++ b/drivers/phy/socionext/phy-uniphier-usb2.c
@@ -106,7 +106,7 @@ static const struct phy_ops uniphier_u2phy_ops = {
 static int uniphier_u2phy_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct device_node *parent, *child;
+	struct device_node *parent;
 	struct uniphier_u2phy_priv *priv = NULL, *next = NULL;
 	struct phy_provider *phy_provider;
 	struct regmap *regmap;
@@ -129,34 +129,31 @@ static int uniphier_u2phy_probe(struct platform_device *pdev)
 		return PTR_ERR(regmap);
 	}
 
-	for_each_child_of_node(dev->of_node, child) {
+	for_each_child_of_node_scoped(dev->of_node, child) {
 		priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
-		if (!priv) {
-			ret = -ENOMEM;
-			goto out_put_child;
-		}
+		if (!priv)
+			return -ENOMEM;
+
 		priv->regmap = regmap;
 
 		priv->vbus = devm_regulator_get_optional(dev, "vbus");
 		if (IS_ERR(priv->vbus)) {
-			if (PTR_ERR(priv->vbus) == -EPROBE_DEFER) {
-				ret = PTR_ERR(priv->vbus);
-				goto out_put_child;
-			}
+			if (PTR_ERR(priv->vbus) == -EPROBE_DEFER)
+				return PTR_ERR(priv->vbus);
+
 			priv->vbus = NULL;
 		}
 
 		priv->phy = devm_phy_create(dev, child, &uniphier_u2phy_ops);
 		if (IS_ERR(priv->phy)) {
 			dev_err(dev, "Failed to create phy\n");
-			ret = PTR_ERR(priv->phy);
-			goto out_put_child;
+			return PTR_ERR(priv->phy);
 		}
 
 		ret = of_property_read_u32(child, "reg", &data_idx);
 		if (ret) {
 			dev_err(dev, "Failed to get reg property\n");
-			goto out_put_child;
+			return ret;
 		}
 
 		if (data_idx < ndatas)
@@ -174,11 +171,6 @@ static int uniphier_u2phy_probe(struct platform_device *pdev)
 	phy_provider = devm_of_phy_provider_register(dev,
 						     uniphier_u2phy_xlate);
 	return PTR_ERR_OR_ZERO(phy_provider);
-
-out_put_child:
-	of_node_put(child);
-
-	return ret;
 }
 
 static const struct uniphier_u2phy_soc_data uniphier_pro4_data[] = {
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
