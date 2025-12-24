Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0088FE75448
	for <linux-phy@archiver.kernel.org>; Wed, 24 Dec 2025 11:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5M2huld4/UFmgif6Lj0GN8z2faAJ6itRF6XU8qHGP7s=; b=UsRCeFQuy1E8nS
	LxH35rwFmxqtqD4jtVvwmA+Cfq7GD8moIV5KQTQefDWBT5viNPqFxp+6fgsUg1piIXqX5x0TjWgZ6
	O5RBsCys/dvUu+mS9ggWiY4gp8nFKKpYrhGGNpMpyx+LSYtGSJWyIY7LmRwl0v2RIfAQ6NjaxDr2x
	+e1fnDQHiLVS4IMXtKUtU2HJ+5R1yDIk1YeHjIOlgUsHi70CZCTLPBI4p/uN2IGU48FPuBas92J5O
	4aLA/IGX3OfrU5sIwd6bTR2lPm86vZJzyJ41HU69/J90koxLtdcvO64O4VEwW6zGdhLOLHwLPsmte
	9JmhyXv6svFvnD2JIgkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYNSx-0000000Glxv-0N8U;
	Wed, 24 Dec 2025 11:55:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYNSs-0000000GlxZ-2ud4
	for linux-phy@lists.infradead.org;
	Wed, 24 Dec 2025 11:55:41 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO5out01018493
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 11:55:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=pptCuuTC1OOr2ay6czaswVQWYUdbU39uOji
	dp7GpfEA=; b=O6dRQKLZGceTfDz0hYPENIG0G3RNmJXSfaJud78XbMtwZWE2KPM
	12BxkXJ4/U3HBlMGPmEaxH/pfBt5MTsk6+o7tduzh2o0kKOzIQ6Gs/T5mPQx3YS6
	T57gmFICEaCWLMnqjH/oWv1SO7M7o8kAv9kwn/+VvEAsFGmWL59VWDqQWa2ljVMj
	3JCxiQYSdYjJiJosavDh4zR4dzKfkQU7gnApAcWFp9XHJgyBQ9mrf+lNx1X1Ri4n
	1Y0sGzhFJkFMxgpNI5vJnBnqgBpnID5/6gelPa5AKGvlWT/UexE9xhYD46xD3RHI
	bBVOZbkfMInO7aq08XPliPhKZRqEkJuB/2w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7xjsaskw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 11:55:37 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed7591799eso141594301cf.0
        for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 03:55:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766577337; x=1767182137; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pptCuuTC1OOr2ay6czaswVQWYUdbU39uOjidp7GpfEA=;
        b=FDfajCgOsXcL1z/gz33ai9J/KIM8w0BdUxiY9AA8dykqEYg7/Z3X2vNIaPzF6qmPKQ
         iFSyq5/gRKHxaI+S2c5bKakZRbYtRWH4ymyaMwHb6CrAqwgdm/bYurW6D14eJWAH7zs9
         BtYA59nTuk3coC6KWzt0VWdZ+d1918XYt1Y7BMcFbDMqXUlwjxAYlNX5c33r6b1DgsnF
         D3lm/J2xt6jiVu5McbBypEjmQDDry9zivxZkJdAw3mPXFClwSHZeHmjfWdUey7cktQXZ
         Vkvo87NOK8CReVStrKngjnx60ZmW2hlEZmhLLTaAPa/N5nEOrgFCNZE/34Pn3sTojsHf
         qEhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766577337; x=1767182137;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pptCuuTC1OOr2ay6czaswVQWYUdbU39uOjidp7GpfEA=;
        b=GLihX5VjXZT+GR3/4yAJZsQ0XtFW8PXzWPxfQjF5MpPsJh+E6nlMontDlpjcnynht5
         6wQGvWksbLRaftbXh4fHowQCKHOHZyteUl5kBhcTds/y7GY0pJJ4qfKUu9LTenSjpoAn
         IRSXhXIcShc6RtupBle0SKtbRDFiiZkHJgs/xWEz/LHfqKGigN8SpWCdpHrxgc0Q9V7T
         nILQOrsqV6SyC0i+Hi/gqHPEz1pOa2l2tPWNuMgk/t/Cnfr1VN/G33qxJOGPZw4oPS9U
         GiXqsJdiJOF64Oh8bQ5NrBFSO/hLhz3rfLhqhJZswTDLlksyQQK6TJLAnlMNF5//O7Rl
         YRng==
X-Forwarded-Encrypted: i=1; AJvYcCUvs14EEnvhGM/y2v5Wd+CJDmlNeWthuZ+PbywOz9SZHo2MsDknG3Q/ydGqLyTLVOC7PY5TqDu4RF8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw7Or2uZwtiyfhv1BwqxFSOeNU3otudujeGzXxCtAzrPks+tEK5
	J38A47ejTyxAMcs/h107eqybUafrSkuA7HPn2XSXiPfrVBBLayvAexdTv1jb/YM9R/tPJKQQdJ4
	1lNnsLp12n2uI4nFy9bt3C/SvtrzxKe2cKXNVgr2c6HDchuq5l6XvE0hUKytqrRyzZV7r
X-Gm-Gg: AY/fxX6lfRXJ6Gn2kGAeap5lvZqZnNVFZ4aJdpT/CbBKrDeaynmMhhPf8WBrcacKeh7
	W5oqfDeQuGKx5uw4JIjktC5XIBIy9TAZPWXryZO6KjJe8mHwXzT66akWzTpmhrGe9/D77UF85z8
	q271OvBO/ljLsP2Rn38SiuvoPA2uhEB+a/JsopCITZwYFgg+Bm0zRCBpsEGBhSFEYZ5qyCOJppE
	aTuXz/31vrPCWtfG9AMr/ZX2D8PpNJyM3mUq+lgspL60ccS2fAlFxik0Sj61ptUZs6BsHdGGS4Y
	KpjAyNJ5xj2tib+pJf8JIOibfrGzoZPaLVTa4lYFI5RLLuy0vODxLEAt+G2237gLYAWkk9XhQq8
	eTe1TqqgC52pD4LYnAg6J5pkPHjzR4dLh1+HUaU/1wRuO37sFdDGTa3Vz6xmzfyC4sbf9eg==
X-Received: by 2002:ac8:6f11:0:b0:4f3:530f:d752 with SMTP id d75a77b69052e-4f4abdf0a9fmr252540821cf.81.1766577336987;
        Wed, 24 Dec 2025 03:55:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHeViacEKRwjTIS0jjNlTmcjj1bhV4Nz1GOIydg0gyPvNKJdVkNhDTEAgASB6rHxaT18VyNaQ==
X-Received: by 2002:ac8:6f11:0:b0:4f3:530f:d752 with SMTP id d75a77b69052e-4f4abdf0a9fmr252540521cf.81.1766577336575;
        Wed, 24 Dec 2025 03:55:36 -0800 (PST)
Received: from quoll.home (83.5.187.232.ipv4.supernova.orange.pl. [83.5.187.232])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b9159a4eesm16344541a12.24.2025.12.24.03.55.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 03:55:36 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
        Bill Wendling <morbo@google.com>,
        Justin Stitt <justinstitt@google.com>,
        Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        llvm@lists.linux.dev
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH] phy: broadcom: ns-usb3: Fix Wvoid-pointer-to-enum-cast warning (again)
Date: Wed, 24 Dec 2025 12:55:34 +0100
Message-ID: <20251224115533.154162-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1397; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=vemuzK6Z66BYseCSrGp1BwERcxcZZRay3Ftgg54BBVI=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpS9S1lAkJZZmCPpM7M9YvzU/rLS2mcNFsWehPg
 j8ECdGO3IyJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUvUtQAKCRDBN2bmhouD
 1z3bD/4xYjvPn0SqX2FZC+wqx1X+YsgIE7EYwBmyh1hXiMWWAvk8LaAcTOp9AimevGbqUnrIlNv
 Gf0j+t7zkqaRL7ab96VKv8sENO+6NQqr2yyXw96dIohOoomo6AaoCTIhHOi9537OclmVeZ/ulaC
 q55zWYvSVIad8MHEvL5G/eVhG0IyZzVXfClA2ABSjCFTg+tTeF74vT75CtVm6IYPBlaG0cRPWBh
 G/oplrWTqOC5/iLYf8mBaFQFB+0TtrDAcQbp/PuNsXfF+WDcexVvNgax/qfHzrc1U3+In4A2GqQ
 0d79WvZr7fgF9J+5KeaEEqGqxShWJzpU6Jx5ls5zxpuOGdB/7JNKuYGtaTfCO+yDI5fVc+7QEth
 UL7UeEvbqTCFTecbJii2MnlVoQgT6LVubd4FG26eiLhVSqoaq+8MLTyjnwvDahNl/MbfLJjNkRE
 PBAzFQpIc08m+OuMbfBowGCQLWWhXN/Pw/wkxGqI1ZSYvyubeAdWmM4v+HYXNEgJF2CuvixyGZw
 O8MOIrcRpIu4wqWsrzg9ibljzgJkjK4CqJL0Q8jmu8vS8jEpB6wFMlSpWxj+QL2foxRRwcYGO5T
 ehpiWfTvsSDI4NSaZrI8sgX05MRq5qhKhxESWX65iRb4EDLnBFF4MJ4j1jN3uxpQSquQDNSy0Hv w5DJKn5qAbdNFXA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDEwMyBTYWx0ZWRfXx+ApHYivlDaf
 1rwyAczwCfHR5oBXU3nGNg4ZimiJbvuJUb0Y+WLGgs7Ap861R09cRPSkvAdVMeGIvHujYXbGrjT
 esGBLAG6d7S2YWMVMTOFCG2p1CISaKOFHdjVxSYgLjR1in+czRtt0vy59GS1T59iG1uGqukQXCS
 sJ+YPoE+M/A6HfWGEs/skYyWaBsxmdcW489x5P4LwyedvsEk5peeGVvwikZg1XymQN+Ay91orxH
 Or45MrQg1i4IQ1ywohU8y31OUNtZkRBbdGdTIN9xfcBe/uH+aw/vx7mFLaMzCIX2c8wrSQA7MT8
 tnVnohr9AfRoI8OinrHlUDdDT/7T8VONUoo8VeLPBaW7FGBgDuu+1/ntH91EQGPIy4ZDGaZzXLq
 4yv01TTorLicUP+PaEwcfU3nvIeLiNh48yMct5FLzYDTAlU9DI41AMQzUzvXH3kQZo8w2kd8/eX
 B4M6ltq0QF9JMJznkOQ==
X-Proofpoint-ORIG-GUID: IorDhmaOpFRty1NOgc1gLVVZGNcXgdRl
X-Authority-Analysis: v=2.4 cv=YcqwJgRf c=1 sm=1 tr=0 ts=694bd4b9 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=urQ9wjG1USoGuMoDBEOPbA==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=9BVSq9XGK2-IPpPmIU8A:9 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: IorDhmaOpFRty1NOgc1gLVVZGNcXgdRl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 adultscore=0 phishscore=0 clxscore=1011 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_035540_704368_F9942CDD 
X-CRM114-Status: GOOD (  13.14  )
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

"family" is an enum, thus cast of pointer on 64-bit compile test with
clang W=1 causes:

  phy-bcm-ns-usb3.c:206:17: error: cast to smaller integer type 'enum bcm_ns_family' from 'const void *' [-Werror,-Wvoid-pointer-to-enum-cast]

This was already fixed in commit bd6e74a2f0a0 ("phy: broadcom: ns-usb3:
fix Wvoid-pointer-to-enum-cast warning") but then got bad in commit
21bf6fc47a1e ("phy: Use device_get_match_data()").

Note that after various discussions the preferred cast is via "unsigned
long", not "uintptr_t".

Fixes: 21bf6fc47a1e ("phy: Use device_get_match_data()")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/phy/broadcom/phy-bcm-ns-usb3.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/broadcom/phy-bcm-ns-usb3.c b/drivers/phy/broadcom/phy-bcm-ns-usb3.c
index 9f995e156f75..6e56498d0644 100644
--- a/drivers/phy/broadcom/phy-bcm-ns-usb3.c
+++ b/drivers/phy/broadcom/phy-bcm-ns-usb3.c
@@ -203,7 +203,7 @@ static int bcm_ns_usb3_mdio_probe(struct mdio_device *mdiodev)
 	usb3->dev = dev;
 	usb3->mdiodev = mdiodev;
 
-	usb3->family = (enum bcm_ns_family)device_get_match_data(dev);
+	usb3->family = (unsigned long)device_get_match_data(dev);
 
 	syscon_np = of_parse_phandle(dev->of_node, "usb3-dmp-syscon", 0);
 	err = of_address_to_resource(syscon_np, 0, &res);
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
