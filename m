Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9160CC55196
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 19:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zvDk9QNDYPijg4MrZVGGzrvvWP8TwQ620cFiUcTC7gA=; b=RXXgr6clS7ceWo
	ZiWNjzwVggUHVLxuSAIFPTOnzCPEHJWe78AaNXqLpERj5Wzzet9yHi44ETmzfWxf6RA4sJX0D2OnW
	K1ftyZTd1rqO9WfRhOfwMHYCeF6UMmyC8x0Z+27HXZflZjbbLxLJRR4KnFELXrmP50AZjB0Eu6dD7
	ufeSs3+PIqO1sNx12TMRs5dyXzQdz12FMcJ6TYuQ+Lp44UZZsKftoTAB+xT3/JePh2fGWoz12K0ZV
	coRbgZsSkQ5cCP9hNki8+uNOiqref92cctuC/pPIe5YTxdw6NlPlpE6ylpqO0QEIiLS4uJAT5OTdq
	rkyxmbVfRRHlmS7ZgeBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqyLJ-00000000RGl-18pv;
	Mon, 03 Aug 2026 19:28:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqyLH-00000000RGO-1X5e
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 19:28:56 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 673GvpVj617127
	for <linux-phy@lists.infradead.org>; Mon, 3 Aug 2026 19:28:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NFVdhUyls+AE0wnf4/MLIsuWl8dV3/GGq6FvvGoNI8M=; b=hFnYLUZYesDyjyHQ
	7qkitT1AoWrHEtMnoWpDrhvCpgxCtwkzTcz55lSfGlavhmWG0WLxOaO/Na0gK8aW
	xW0p45E9IgswKt7qiKmmiO/pq5RHGh48HZoD5ahVEAKpfxE4Clz/AzRHmDya1lRl
	ho4gJXJzKGjHmk/pNn3DMyHos9JCl3ahV9mNrulK7Q3XR0urSa8lRfUdnmkUqUWH
	7nBNCud2iF9Hn32OZfgfy8E/d8En8ofbFOxF2ppYZr6wzlSW/r549m3FgulCKQfl
	mVZ8PfqTw+1nkD/96PylkcmThBJdq925UQgmiOZOsXYLScFjbMecUnPDlkkE38Ue
	XrxpCQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ftx7m0xfg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 19:28:54 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-38e54b6556aso3985618a91.2
        for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 12:28:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785785334; x=1786390134; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=NFVdhUyls+AE0wnf4/MLIsuWl8dV3/GGq6FvvGoNI8M=;
        b=EwnwecqM/ReiDPtL014CfIwaKDQKq+uX7Z6L6Ph78gpwG5s86ZFmaD3ZGU2ivj8mO9
         cSrVzKBysw+m9l5OB9zFdF1/hMmkzSyecW/eAO4KVF3FK9KVJa1JeSgb4qhhyKsdNN6J
         rLEKW4p8VOueV30HRkYmLMI6qEiOaL3iAemaV5CZPMFens7Kr2dniVmj7oZX7HDzCs2z
         d7YhcbSDYaqv2Jz6BBENSC7iI5KPovDHNkPJoZ79AjbUzKdgqfzLn8GD8ZUmOyxzw1Ba
         qioCgSlvPeSfOxLcAXReNluBiHn84wfv4jQu+0v7OKRNIe6bTrft5ybIbmj5xpqzaExH
         +H+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785785334; x=1786390134;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=NFVdhUyls+AE0wnf4/MLIsuWl8dV3/GGq6FvvGoNI8M=;
        b=nKA93alkmGT8tVqHNuXYnfE10GaTrDOiZLf1Bf7aVuEI0pjPLBsLFaX6Frt6lLAdVa
         Qxd/qbPpTn8vpjcMEyF+lbE+FP32nfW4jFGG0eZBtuBy5ApGw8X7POBk5CbgeQ36u7Wa
         ZlSUWfdj9+fQzK2fneK7DcNku0nFos692wxl8804bMPuAimWIHCbckqpRCaclb3l9jyE
         v251t404Tl/YCFQYF4akhyihPU1yTxNKcHXXFX7MBwW6TD4XECM3dHsZkIj9RxxCGAZP
         xkjLKn1PN7fOc9/zlNnVp0Rg0roa8PLQfm0XS0g/QTly/eKmUpXsSTyj/y7YBWkDVQPp
         rudA==
X-Forwarded-Encrypted: i=1; AHgh+RoCTSyaUXiYVGlVavyX5Me4SMz3/I02BEsTzsgi42wvEMgiZrxcT8fe1GdEFCmHfas5dvU7FLcJY/0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzn83Cy87JtRV6aJT8qWzvVFkR706dmp8T26vi8iH4V7wmf2QmR
	Fawt/0ULa2CiaIS87KVUX60UMIvISKGklHPASzLSoKgUwuk6Xp5EgMsGvSANj7q/hBOCWN/eYRH
	3D5zLil+wOkkQEFnHovU242zez0Giml+foo7tX6ysvW9uHuNgIpgxFDa5AMjNhe73bppT
X-Gm-Gg: AR+sD1282knMkAFO/eZ0YJeVhCFepLLHQVmPSuHAXOe632NUAl7kzkh3Tp28G8EywDR
	uhpENn4zlva0sDDdqDniYA1+jHUFjshNMmEEhTJ3tvDgZOoV5RUmTF+CLk6MkZPD3JUApl3pJvh
	Wd6xMaFBMWip1NR9oOmfiHn84tj2PHDOeQaCp337eLx1pukvx9X3D12WNhiSS2y99LCIK8d66DO
	FYP3R0VkdqMyq9IsPu4AFS0AihhO0ioEDYPOZw/gfS07qr8z7UGmA6F83TiAbY+VMGGdxRUteA1
	oiCJKJlyVjFjaoVl+GkSpA4kVEkuyYZj8KgzxUUO9fpc9bVpAne8dAbo3UrzBhl2OeHXvR0xWq3
	zVjVsD1CS/PFK3q5TxsUDLf/JvRIpqg==
X-Received: by 2002:a17:90b:53c5:b0:38e:85fb:71b9 with SMTP id 98e67ed59e1d1-38fbc3f9aa9mr10635761a91.4.1785785334144;
        Mon, 03 Aug 2026 12:28:54 -0700 (PDT)
X-Received: by 2002:a17:90b:53c5:b0:38e:85fb:71b9 with SMTP id 98e67ed59e1d1-38fbc3f9aa9mr10635738a91.4.1785785333740;
        Mon, 03 Aug 2026 12:28:53 -0700 (PDT)
Received: from hu-mohdayaa-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3153dd4e5b0sm38622738eec.1.2026.08.03.12.28.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2026 12:28:53 -0700 (PDT)
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Date: Tue, 04 Aug 2026 00:58:01 +0530
Subject: [PATCH v2 5/6] arm64: dts: qcom: monaco-evk: fix SerDes PHY
 regulator supplies
MIME-Version: 1.0
Message-Id: <20260804-b4-sgmiieth_serdes_regulator-v2-5-c4bc688177dd@oss.qualcomm.com>
References: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
In-Reply-To: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Umang Chheda <umang.chheda@oss.qualcomm.com>,
        Yijie Yang <quic_yijiyang@quicinc.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785785297; l=1063;
 i=mohd.anwar@oss.qualcomm.com; s=20250907; h=from:subject:message-id;
 bh=3WguNkZGm4iSMHuebuPta2BUTd4TMeN5FuTqjX/mPxw=;
 b=d433YrJuwmbS9QQ4N+lBBfppRD+KL5aUeBTOD/pkCGHvd5VbqXp/bJWQNrrrF36YuIMt6PWEl
 Q6jVWYRXj3gDSTgtXKmAboNx7Ml5wJeKXiCu+g653Dk1E/nuMxjrz52
X-Developer-Key: i=mohd.anwar@oss.qualcomm.com; a=ed25519;
 pk=7JNY72mz7r6hQstsamPYlUbLhQ5+W64pY4LgfSh9DJU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODAzMDE3MiBTYWx0ZWRfX3QcJLSLUJjZo
 VHdyE3jJj0GZcYugw8JsYbV8QJMl8lMP0redpUmDxRvszxrfxniaFByFL32JvpO+FyzkyAQ277e
 McWHXGynY/POcnCrfFLwA4MFZkIDdqGtoP7i0zARiMafjFzefQQXQ9jWcHW7HVFMri1ngY6YuoG
 KHIZcb6+mYQuMgagYaCgE1AI0mRscqEKQVSnBPhjBoUtIw2AMcjZ7We+AIgTXKKEz43UXtysos4
 RJqnW+JXfDE3YNBrXTMZcWXQ+Xqx1K1ILtMQbL+RQf2F/Zo3Zj10P03UPMaSqn91eIv3dpIAKdJ
 M/CT5eUXEN2axpbxyT1H0McCfmrGwcvlYvn5oEUp4k7SOkSyJxFgGczsxgpLc/ioKGrja+mjwmL
 wzBh14j2BwDR7HAp6u1e+ro9CRmUZAUsDqqWGXOoOlbi8tSaxoApYkdsEYfaqQQzLUnedtoVhvL
 sDWeW/2/r2Cor/jdtwQ==
X-Authority-Analysis: v=2.4 cv=TIt1jVla c=1 sm=1 tr=0 ts=6a70ebf6 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=C72GEnTMbTZ0pNA8GBMA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: JSRu5vqQXRWdtYaGQ_XMPtgoM1jamRL_
X-Proofpoint-Spam-Info: AW1haW4tMjYwODAzMDE3MiBTYWx0ZWRfX0rL6nY3TjfzW
 vt+ZIUqa4W9OfXclx44HMAUyXs27Ln+VMDyKjxmAD7cvAY/nV5xJDj1hncx8M1OLJiYwHS65Zpy
 Uxy5LxMCHhpdmg3x4LwEh3Xxk9lpqNs=
X-Proofpoint-GUID: JSRu5vqQXRWdtYaGQ_XMPtgoM1jamRL_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-03_04,2026-08-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 phishscore=0 bulkscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 suspectscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608030172
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_122855_422236_972C7C4F 
X-CRM114-Status: GOOD (  12.67  )
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

The SerDes PHY node was configured with 'phy-supply = <&vreg_l4a>',
which only described one of the two supplies the hardware requires.
While vreg_l4a is the correct 0.9V rail, the 1.2V rail (vreg_l5a)
was missing entirely.

Replace phy-supply with the two named properties vdda-0p9-supply
(vreg_l4a) and vdda-1p2-supply (vreg_l5a).

Fixes: 117d6bc9326b ("arm64: dts: qcom: qcs8300: Add Monaco EVK board")
Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco-evk.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
index 9d17ef7d2caf130564efc2d0159ac0de39126e80..f787e78b35ce48d7544116e4383561b81def8ec7 100644
--- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
+++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
@@ -706,7 +706,8 @@ &sdhc_1 {
 };
 
 &serdes0 {
-	phy-supply = <&vreg_l4a>;
+	vdda-0p9-supply = <&vreg_l4a>;
+	vdda-1p2-supply = <&vreg_l5a>;
 
 	status = "okay";
 };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
