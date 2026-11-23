Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AAC606A31A
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 19:06:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=cGuxZqew;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=LcrIknaP;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=jp1m5VNB
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=V+nnynd0pFUF5IfasvkK6x0KiHBQxDfxsKgX2xjpG+I=; b=cGuxZqew7B0RClU2LXEZSHLwyE
	T13oatvOcCn5MORaJtPgBrIYrK/plI1yiWm+P2ztXC0w2msSCA3gas0GpST8+KZU8V+WEyqa61QPG
	KyK/zWc4nh4g/wRt3ttJHr6TmCOIy8pBBHFwpX+zOlZiqgLgoGkcALEQ/adtwkUcbGNYcUMc0fWmZ
	ajrNFTXncOmJx3Y0OHyIXoOkLrQR6eVChGuoqwjekRUvkvXIkjQdWarN5ZBp15BxwlL/o9v3xv+G6
	9uct44QKGYZEqh5BSBJfjd+4rUiDjbGws5j4Sw/AprgiqYLBAOEFYnenyH2pl1ycTOP8ekqhuk4PG
	P43EJKiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVZMg-00000004c92-3se7;
	Mon, 23 Nov 2026 19:06:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVZML-00000004c6V-3agY
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 19:05:57 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ANGGmhv3025324
	for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 19:05:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=La8YckiNeld4H5l7NAaRli7pn+waejxq1bD
	CNMoUyYA=; b=LcrIknaPBOegfrGe2gC1kekCmoeN0x4g/taulJGXS83OWtc3QcE
	ueW51DnYOLMJFt33CLUj5+HbAkUaGCxHbXnwsFLZoqtjkniAwswqJ7n6mM6o6uw0
	gkVE+nmTtHI14BJoKO852+w6bUdiXbkCcE1fJsGbproKLzmGUypUM7JHvwazrIIm
	VVeRxH+SDKJ1sjP2ZvpE7rxAGjZKXnQ9Aw4nayjRYnyJQHFZWeS13iGUMj6Pye5Z
	H9Ig08yfDRJ8INNMSNefRGSvlm+GYVmusX9KE5g6msgMF+Q3adCncOAE2bpgIAwX
	kf33Fd3Ns0RJIBQiaQN71+vjKV7aKmetQuA==
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com [209.85.128.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j4g1pb17w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 19:05:48 +0000 (GMT)
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-8b2fb1f981fso49049607b3.0
        for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 11:05:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795460747; x=1796065547; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=La8YckiNeld4H5l7NAaRli7pn+waejxq1bDCNMoUyYA=;
        b=jp1m5VNBgX2mhPtB7KHyrGaonsVJRycT1jkdL/679meu0EVDEzxKyxyP167pVc+w9U
         ecXzF6XTmL3iK/2ZjwChVsnz3lkIm6MCCz0uXtlbJI2tMnEiWe3YgMm7nxsZXGloPyFb
         aCo1r4LQq9l4AxPTfcmSUV59a7qzU65PN5TcZhjls3svq8LvfOV2ZygqqVZpHX4H0+As
         3k2zm0NS9Heoo0JFbVNt/8Bgwl3pL/Lm62uzf8waSzGJ93ZNnL+IMIeko51brn3U1rLK
         fx1/4vzpN/WOZ7FxYtBNtL2pkXnaO5HlmLfGNkTN93VRGpJvw/jZ2gL+sVSzaEjck88W
         YpmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795460747; x=1796065547;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=La8YckiNeld4H5l7NAaRli7pn+waejxq1bDCNMoUyYA=;
        b=S2sVnjYcGWjyN81EKSlPPx6tbQtd1ixsYxnieAUV2nMg2cBI8Ld8+rtM7RjPr+cgGZ
         33o3W+WTD150CUmPs8oBLyPFsBmt2VSak30FHTRkO8/E//Y+qoxQrvpc+tJBS1qMOytF
         S+kvlOull1wS21As5llSZSHsGex/K9K49kXKpmwQQHcaA/DSD+LsD1T0LrgXiIvMkMCS
         DbTTP2qjrzgfLue1YO4PKUGoPGoqPkdbGFQo+w6LwrLOOhVLMTtO+Gs0SiEkTPKLJCvq
         ugpfLMCic1k7qGP+uIVrjPBb8b4pMBJxJcLFSLZuKWAdIMoQ7ZD1YABdhs5abH+mJzw6
         1CZA==
X-Forwarded-Encrypted: i=1; AL+hErHqAAqUN5mXlz4aehKNvYiwBMYnjzVzqAolXN2Qnm/I6m8UFoIDXOS1z1ka8RgsJdU/GJ5EncdLpfc=@lists.infradead.org
X-Gm-Message-State: APuU4Z9A5cpfiFeWrHwk1HsIoMUogoNLuQGmeyC0jGzd5OGKuaGfvFXx
	NxyjWs8hwQEfvt/XZPc5UvMr3gorTp92yjEPFxPo5ZUOzNIrMT6/d1YH9T22f2XPvhLmrjKzXaz
	zG8pd9u0PSC2fxq3Okrpd9jt0xqrF+dkiHOw4wXmuKOi9hAyV2zj6Y2fTANYIXoB6qzlY
X-Gm-Gg: AZFdTZcBPtunclSMNj3dmc6fGyN/umaSVxoAvZyDWz/MRXtot/fYAFp7cvGyiBv5CH7
	b1Z3ihWncu1guUMRXAlgRPGfwm4QoI41pm7VQVOEeJxL4vS23oBy3stDsw3C22j/k81/6ylL/eR
	DY2TVcWRGVfmTdhNR18G44ti+jGhYJXQJB6p73x+O9kOgggywh6hN2CijQYBQspQzk5VvVDKeSs
	J3vhofYgOYfp/w/cdP+SYDHRqT9/EvmGcp8HZj2wLINf2dUTcaEGwDm3lCQopowWoTAerC/2vjr
	nXWju15PoQwF8XpW1SAuS033ky44PpXmeKKLlfmGPmJ7uvcDRcA3N4A4ywk98IpOqMrqbOV9mGB
	KnZJA6VZwflkRA5JdRlsaWlxTc0sn9AOiCHsxAtCJ5MnZlTgIvabqy7Vw97j7nQ==
X-Received: by 2002:a05:690c:450c:b0:8b4:deb1:4b19 with SMTP id 00721157ae682-8b52031c2famr54214567b3.7.1795460747226;
        Mon, 23 Nov 2026 11:05:47 -0800 (PST)
X-Received: by 2002:a05:690c:450c:b0:8b4:deb1:4b19 with SMTP id 00721157ae682-8b52031c2famr54214367b3.7.1795460746787;
        Mon, 23 Nov 2026 11:05:46 -0800 (PST)
Received: from quoll ([178.197.218.7])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4ab6baa397asm24345658f8f.48.2026.11.23.11.05.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2026 11:05:45 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org
Cc: linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Mark Brown <broonie@kernel.org>
Subject: [PATCH] phy: qualcomm: Allow compile testing a few SATA and UNIPHY 28LP drivers
Date: Mon, 23 Nov 2026 20:05:42 +0100
Message-ID: <20261123190541.262138-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1379; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=BYfMrOXsD2Uyrht2e9gBvUV4lJ6sv2/BcyeGFDSbzDY=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBrBI6FrCBYAoWmdO8yysgN76glC20RW3+e+bmt4
 uaON8dyINOJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCawSOhQAKCRDBN2bmhouD
 16Y3D/9IseGqpYsG05UpwiPN/hDJ6Ej9SDJj9dZR7+XltaPWoaM62EPZdi8O3cz32prk/wLIMGE
 N65Xidrqo6an8pzUoLOsuGYLyew4D9bmoBBDOfZNaoTMRMX7u6cyrqSf0wgOS0mvMK80iIn+5F9
 szHY/dntLDjAVh8LOHBhI4x+2fZ1z6VklRc7nK3JyYd/zQXWqu2v6hma2mHWc/SbO+0Ufe/5SYR
 /ccwDj9S3Dnk5xAiOyROCsIMRXc84NyofW+T/OOx7xAOeGZhhZChJPO4eZOYw8V21s+iQfl6f2j
 bbZrUC/9g0uTC//LhRoOKtW9LmjKd9kQ0d7w0DSNpenFyNkS1WbQ/RF2gbC6yeSVdazbvQB23mR
 vgx9XdzNVPnr4gWYI9pCt1fR9n1BdwoRxxwZGtqY13x7fmgNU4zzYZpCgk6ljDVeIhHi/f7vWjF
 cIKg9wyKUG+OQRpAtE7inc+NKHTV/I+OKQ2HdPCpqG9u+0E3p4leqdGKCPLMsim21EyGcN9WHz7
 VkvekdBgOeWyzbB3sift7dWy6RSp2IX3TvGAcdmlviyhZAOyz2jFyun80jP9PckV3iXGjQl0YuD
 M++Lq9QAkl6IYDE/BBBdFXwTM00L4qn5iZr2x0gphdSlI4LGFUrXTMWNxoooYKgTv8iiiIrL7H2 lD2LcUzhv61vbIw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: b9JvXlMmtmRLd0crWaP9aqm_juxoJXRk
X-Authority-Analysis: v=2.4 cv=K+O3jCWI c=1 sm=1 tr=0 ts=6b048e8c cx=c_pps
 a=72HoHk1woDtn7btP4rdmlg==:117 a=uyPgTw0bjBTS2cVxpiNm5w==:17
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=OLCHClxKf6i9BzEG9Y0A:9 a=kA6IBgd4cpdPkAWqgNAz:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTIzMDA3NiBTYWx0ZWRfXx8bjtU1M9ix6
 OzH2EN5MO/3/aKsaUyA/O5PqrjHtqPU1XfAIZHmb86pdVL1H4H7XJGNZMU/qQ5FcckSeb5tWLbg
 8UcXaV0KW5ppl07fUySSUYP3pWF2Qqk=
X-Proofpoint-ORIG-GUID: b9JvXlMmtmRLd0crWaP9aqm_juxoJXRk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTIzMDA3NiBTYWx0ZWRfX1Xw75wpK4vdD
 49fKtQ+oLM+0680EoAIQtfdKfxuyhsS5MP5TTMVohbU6t9R/dsQy4xArtw+918oNLVynvhnEI74
 xDZUOLl53yXbTxP/i+oP0OIrrXpHxQiQmhC3hHMy1H9fa42Fe2R2CACSV//L1uvrn4KJxDyMz/s
 2kknDxbjIPLW8wEhj2yrBkL4mNCEk0DsPXynbFFNqizYV6pPdLHxi6SQSjGKYfopLgdElXLWoYj
 ChwUxmAEEOCI9ftxiG8rN3qswFQkHs+psxMjIqWmB0BppEezDtdAx9+BdHCs9f9guuD+mZktDjp
 ZKPBEiaCBuqY1FJu0J9Fmtmz8GmrZuY9audDkYNchjth6iym7e3TDSW9bvxrJmpDKQjYNPSMLoD
 cCXTTdBpHeGjWdPTOnCFpOEGLp9Pdo2AeoLMoszlo9PAgrkt6D2NQ2k0+Ee4//njjX80AFE0n8I
 GQrKvrDhX96ZMx+9i8A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-23_04,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 spamscore=0 adultscore=0 clxscore=1015
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2611040001
 definitions=main-2611230076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_110549_919045_FFF0B7EE 
X-CRM114-Status: GOOD (  11.68  )
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

There is nothing architecture specific relevant to building of
PHY_QCOM_APQ8064_SATA, PHY_QCOM_IPQ806X_SATA and
PHY_QCOM_UNIPHY_PCIE_28LP, so allow compile testing for increased build
coverage.

Cc: Mark Brown <broonie@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/phy/qualcomm/Kconfig | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
index 2486720b9ffc..7885e98c904e 100644
--- a/drivers/phy/qualcomm/Kconfig
+++ b/drivers/phy/qualcomm/Kconfig
@@ -13,7 +13,7 @@ config PHY_ATH79_USB
 
 config PHY_QCOM_APQ8064_SATA
 	tristate "Qualcomm APQ8064 SATA SerDes/PHY driver"
-	depends on ARCH_QCOM
+	depends on ARCH_QCOM || COMPILE_TEST
 	depends on HAS_IOMEM
 	depends on OF
 	select GENERIC_PHY
@@ -52,7 +52,7 @@ config PHY_QCOM_IPQ4019_USB
 
 config PHY_QCOM_IPQ806X_SATA
 	tristate "Qualcomm IPQ806x SATA SerDes/PHY driver"
-	depends on ARCH_QCOM
+	depends on ARCH_QCOM || COMPILE_TEST
 	depends on HAS_IOMEM
 	depends on OF
 	select GENERIC_PHY
@@ -175,7 +175,7 @@ config PHY_QCOM_M31_USB
 
 config PHY_QCOM_UNIPHY_PCIE_28LP
 	bool "PCIE UNIPHY 28LP PHY driver"
-	depends on ARCH_QCOM
+	depends on ARCH_QCOM || COMPILE_TEST
 	depends on COMMON_CLK
 	depends on HAS_IOMEM
 	depends on OF
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
