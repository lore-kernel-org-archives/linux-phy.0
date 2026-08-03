Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A312AC55182
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 19:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f21hqEqZqUdz5G8HeShY1X4zGeBHtd5ROenuCZB32m4=; b=wL0m+cWPvj76mR
	Ppw11vJl5Z1ExZoIqAmBgN2UQtzoME//IT4LZaqCVRB+yfl92fYxNicaahN+Mr7DENVKaxV14HMy5
	4aPHKKzPTaN0eoAiO+Ozo1NgHPaAuIeVDmscOs/rElmY6k+dIl/+wuopjGv5Kk+EXIgr3TH440b7J
	KptRgq2GeuvYEBqgm4xEaHVg9J8312NZrWm/Wtkblskva6A5EAGNFPISbMzhMpyZACCe6FPAggtZp
	obGBDxLRMd3vSlyMesubkzx+yEjxg9J1F1FhYKRV4CvT/DhWsR4XhS35p1ds0mVdAYxZwTCmurgYZ
	1FON21fA1Cn5xiYf9IyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqyL8-00000000REd-0llN;
	Mon, 03 Aug 2026 19:28:46 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqyL6-00000000REA-0BcK
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 19:28:45 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 673HB7Yf1237758
	for <linux-phy@lists.infradead.org>; Mon, 3 Aug 2026 19:28:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TWn0jGAX/JCFoCMtmHVkUSNBCb88RMYT03vyTiaEeqI=; b=njlU0JDqccejE/Wa
	O81EeYUjcMzIJp6tLCCpiYVS6RdAqrnpxSS1MA2HdHLw0+a7oF0wETADuTMDar9H
	9HxM8wSXLboz+Msx86cZnHGrisDWTu1RyXtwc7fqzbwiMMkMHq4oRPCkMMkKjL2d
	tTTdGfA+qPubBVKXsBV73/XzaQdZPzpDB/4xWLQSKs/WmF235f/fv0nphETfy/LX
	XuFFEuCjhBqQ9RJT2iWSlHz3v4TpNBBh+rB73krgO7PvbQnjltPO5Wbc5puxRrOq
	KpGLOVXannZb94ZpFhpqe8uVeARaOzRsitg95fh3tywnTgU15wP5KAgPuDBKOqfl
	n4PVaQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fty5s8k4n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 19:28:43 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-38e5a616d07so3890477a91.2
        for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 12:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785785322; x=1786390122; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=TWn0jGAX/JCFoCMtmHVkUSNBCb88RMYT03vyTiaEeqI=;
        b=Ds6fUYIFYC9PtwXfYC7wl+Jx4KYn3ZHqsLnDIXevFKrbbuVpMr6iLtV2dP4GsUKO+Z
         WPmbqIscDilJ4uDmZ+fSl8p1fv3IBMNcRIAPdQ0k0aoKihTgUL5xbpJehK12zH2w56Ex
         MnaMIrZfgthuAYkYU5efkmZ+6GADqkQExCM+XUY48eJiUOny+AQO9gWk+My+8bu5HAGQ
         gT8P2TdtOzrjGTY9Yg/bScNkNFXQnbGGVZjbmh6ZRDAaHTwW8aBt7JCu26vLYDLySwPw
         TRhDN2AMaQAA+510pXiZhw23pnwaWPhciCFMV3sReA1fBNeGnNip3ONVE7zONTLSayuq
         /Nfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785785322; x=1786390122;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=TWn0jGAX/JCFoCMtmHVkUSNBCb88RMYT03vyTiaEeqI=;
        b=U5iivlPEGM9vrs65/+xzBoEcLU3TYadTQouD37JlEx2uiS4hUBKBZcT1RcZ1iO6adC
         XcffAogDjCc99IEzIIsCv87iZLgdwrbtjoulLeVyf6TDwdctvR5Z2M0r1wyjy2kYuQcu
         Zm0LYLgDAShXwtybRXE9STscRhdcTh9P+G46Z+bbg66fM5tFbYRq6W8tS8jKk1t5DzxK
         tXw/FiPFc2rIW3nXZFjJ5lhh3tNOxJAmtpHBZCcoQ/LuDNyVU2HSSvm8Jxy9iv141TM+
         7d8OMjjvo7a1V0ZYIFGRxTPYrH+FTEzRpd2lBF23KN3cdHzznoQDLbCOOurwhK2WaFiB
         4mTw==
X-Forwarded-Encrypted: i=1; AHgh+RoFnZhvcyntnQdnsssweHh3nA2+qC4tGZNcfMF2+aIf6eq+/wXqGggpkXPban183r5RxXshrFNPb0E=@lists.infradead.org
X-Gm-Message-State: AOJu0YwhSNQB4Hc1nK9zfUjTZd6KQVei/fOv2KB/15v5WCRb1dPuChf/
	Jk29iXgdvX7DLEbOxV+xNZhsKG4fiOVJ5bmD+Qapy1aYMP76AxjRyh95qMdFf212XEkWRwquKfv
	Q94qpvsYKiD8+mPNBNyLdzkV4wDJwaZmJtSNOmErmw6sUuImt/4cen1sbFTY1gY5JaoFc
X-Gm-Gg: AR+sD10JmyaDBqk1MCLjHQs1LQ6ExzSN+pA1PjIcoRsl91sQ5Rm6ypzM0TneFgJwVkO
	395W/Dh1SoaoHzPUGF+o6oQ7ryZvpn+N5PY+3SOk89HntJClQ5whdZBZBRgxFzzOCrIzQQtGHJG
	Yp3GztptOBfcj0leTUyZw5fUkgAt2/eiSUGtPDD6eJ+HWi5UMsyn9Dqofk7sNGJr2rXPCZvOzwc
	VbENApn0AheizAEV3KX5PIEvfMJQJZY0CEdfKATS70pZICBLiyWQacM67HOroqfFRIU0xAew3/K
	7cz4dmL4E+rL13NxLhK/FDRBYhfjja5FWCCLBGCtmnhuiHA6pZb0dg1yrEftCmm4kj0amhQSmZt
	CfGDffbqa2bSksBGNHGT2S1HYLdXNxg==
X-Received: by 2002:a17:90b:5690:b0:37f:9cdf:f037 with SMTP id 98e67ed59e1d1-38fbc4d9f82mr10742127a91.26.1785785321871;
        Mon, 03 Aug 2026 12:28:41 -0700 (PDT)
X-Received: by 2002:a17:90b:5690:b0:37f:9cdf:f037 with SMTP id 98e67ed59e1d1-38fbc4d9f82mr10742107a91.26.1785785321427;
        Mon, 03 Aug 2026 12:28:41 -0700 (PDT)
Received: from hu-mohdayaa-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3153dd4e5b0sm38622738eec.1.2026.08.03.12.28.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2026 12:28:41 -0700 (PDT)
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Date: Tue, 04 Aug 2026 00:57:59 +0530
Subject: [PATCH v2 3/6] arm64: dts: qcom: lemans-evk: fix SerDes PHY
 regulator supplies
MIME-Version: 1.0
Message-Id: <20260804-b4-sgmiieth_serdes_regulator-v2-3-c4bc688177dd@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785785297; l=1746;
 i=mohd.anwar@oss.qualcomm.com; s=20250907; h=from:subject:message-id;
 bh=4FZGsEeKBJan6pXgYOjNUjuTyyrjSLTqxJwnLlXfxPk=;
 b=3PNx8Q2peALp3P73LT5Tp1DjKcUaYBq/vnmv4LOKH1fssusUZKAjavov3a3WwQhrvfWZOHevs
 Sc0RFLA1syUBHg+UdiTMM1t0/EBFTIenVfk5A+WTllVffl/XPbwJErA
X-Developer-Key: i=mohd.anwar@oss.qualcomm.com; a=ed25519;
 pk=7JNY72mz7r6hQstsamPYlUbLhQ5+W64pY4LgfSh9DJU=
X-Authority-Analysis: v=2.4 cv=SPJykuvH c=1 sm=1 tr=0 ts=6a70ebeb cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=iUjljtK-pkRXqhAa9_AA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: ZnvQcp5jcY6iSik48frd0baGBdNbmx7G
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODAzMDE3MiBTYWx0ZWRfX0SFwH4rjLyhz
 S2oXCqg4G3W23SHAuXmwaIqtf8bulM7WwG0cQ53bcIZ0jwcHtvj+kTY4zRv3US/6J4pR7E6U/ZX
 Z7tRedHh3wpSuMhfkJ5eUjWoZkoHXIWCUs2sp5F09oGhUA/6nxyJn6rKVdBqZ9J1vaoZ1F8y/4J
 GE13dXREPg8/rSOcQdFSQNrBcItd5phziJDqwG1Js0GpahNj8/pRe6bpKkPjS5bRrnfi+d4K/1b
 6pEeLYw16wh5lXs5SnxZIURQaxqMQsBuRfwMq7ZxKpZC/p/9tJ3t2v3G6OhT2MRIKulZ1uqx91e
 stoqUjYoiTIqjagsvDz2+yJZ1GWU7Av++aHN/P/0awarsha/8CZnZsxFM+yVPwi5cqVmJKvNLRC
 rc1Wc2nhiD6RdeNGtB1RX04R8rc39XIeod9VEg0jAsJ2eCX5wVYuwt8m/jqjRBJgY1K3nWhB+AA
 g6tKTjmM1Bh6J81oRdA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODAzMDE3MiBTYWx0ZWRfX9ZENhGeyUbIM
 2x9btnauaYiXOxe54+nDfG9WdQQ2nAfuw7xBCc7Bi2At+MdvNsFI5vQqHnURRNQpAWT+798+6kO
 bpFKIWwvZwP96OQXQK7mAbAgXHT60AU=
X-Proofpoint-GUID: ZnvQcp5jcY6iSik48frd0baGBdNbmx7G
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-03_04,2026-08-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 spamscore=0 phishscore=0 adultscore=0
 bulkscore=0 lowpriorityscore=0 malwarescore=0 suspectscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608030172
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_122844_203826_F9BBEB49 
X-CRM114-Status: GOOD (  13.32  )
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

The SerDes PHY nodes were configured with 'phy-supply = <&vreg_l5a>',
which was incorrect on two counts: vreg_l5a is not a supply the PHY
requires, and only one rail was described whereas the hardware needs
two.

The PHY requires vdda-0p9 (vreg_l4a) and vdda-1p2 (vreg_l1c). Replace
the incorrect phy-supply with these two named properties on both the
base EVK node and the IFP mezzanine overlay.

Fixes: 71ee90ed1756 ("arm64: dts: qcom: lemans-evk: Enable 2.5G Ethernet interface")
Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk-ifp-mezzanine.dtso | 3 ++-
 arch/arm64/boot/dts/qcom/lemans-evk.dts                | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk-ifp-mezzanine.dtso b/arch/arm64/boot/dts/qcom/lemans-evk-ifp-mezzanine.dtso
index 6cfa0bc1440e91d32df0695ae4059050e4e20b56..8651c412d0288fcf2ab69fbfaed86f68fb2b4fc5 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk-ifp-mezzanine.dtso
+++ b/arch/arm64/boot/dts/qcom/lemans-evk-ifp-mezzanine.dtso
@@ -291,7 +291,8 @@ pcie@0,1 {
 };
 
 &serdes1 {
-	phy-supply = <&vreg_l5a>;
+	vdda-0p9-supply = <&vreg_l4a>;
+	vdda-1p2-supply = <&vreg_l1c>;
 
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 0c53640c42a65c62375e71f7ae79cbc834a05888..5c046b9bfb3cdec59cffc1dfdbf9f2a51dc9721b 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -978,7 +978,8 @@ &sdhc {
 };
 
 &serdes0 {
-	phy-supply = <&vreg_l5a>;
+	vdda-0p9-supply = <&vreg_l4a>;
+	vdda-1p2-supply = <&vreg_l1c>;
 
 	status = "okay";
 };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
