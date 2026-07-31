Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93F10C5516D
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jul 2026 05:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=71Ve2feCm7UsAuuRwBBDpkFHw7BhN8hxhHKJSqd3PCE=; b=UXAPTF+8ZT/bWQ
	fqWCRIDkKaS53eMgXZ40QZum+FTA1bISYLTTu5KBO9gPJ0989GIccsJ9yrNAKImKWnXvCCQfOyDbc
	qlmrt5phLOeHYZ6AIhg0HLHMk2hhY4ymPlL7D2JMb5uq1mKs/JC/N4qLt1ikT3FqDXEZ+ARsx/DEp
	7EBHMWDsSz0dmc+zva2dFr4CAS+Vlmbi3u76bx7JbGl8QOkq2Sfojtj/d1WrxbNQdut3BC/thSFZl
	a17G836eINonZKLOwg40iLiSL6e/NrHttJZl9VOIdoUBBqhUPD4/whB+8yeVGV9y0ic+Gkf5Y+1HG
	9N8fbvpnjTfSKDjnaAnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpfZW-0000000BmsN-1NQR;
	Fri, 31 Jul 2026 05:14:14 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpfZJ-0000000BmnK-2AfW
	for linux-phy@lists.infradead.org;
	Fri, 31 Jul 2026 05:14:05 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66V5DCnd3038323
	for <linux-phy@lists.infradead.org>; Fri, 31 Jul 2026 05:14:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UyK0q5er6ozhcg33SbPg20I8Bg5HHjeDXhNPQa7k6ZA=; b=YvBRJyNmHbe1BuBM
	SmZKM1Rhq/+l7Hmc+c+OWykDbKcem9q1cKtIjaiqh05tXTevWlaKAy3LTg61xx9P
	O7wVM9T25D5P3PRhv6fC9iHCtNzIX1jpmcTl1i10LpPyWbe/8vO0jCSsdJhn1XH4
	guN4ysNOE3D9qHtjTNY8RsLnPpqcgPK35U9/n8KFPtbGMCP/Sc6M25iZCc2uSHMV
	Pfgy4R3VdoeWyoJDCNZVtMo94gmf41STsAQrB2i9cfYkNPE90sptHlSxbE1Ulv/0
	kHURlLjkZCR4+wwKhfP8whNv4atcBGqmnvIBWGlvuitCMj1huZMDKUCaI4frEg0M
	1gp6EA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4frnc90031-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 31 Jul 2026 05:14:00 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-cab041eced3so882316a12.1
        for <linux-phy@lists.infradead.org>; Thu, 30 Jul 2026 22:14:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785474839; x=1786079639; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=UyK0q5er6ozhcg33SbPg20I8Bg5HHjeDXhNPQa7k6ZA=;
        b=B8RKFLkVW+IiY6047KUBTa5XCdzoo/oUdZUHokrwyE7y0j+op6/dneW3SJxMMta2CV
         PvtlMqXZ8E3aWP6Hw/dK/jsFl54+mddhFifcB3wPtXBK0M75WzYaxzxEMAuWKH+pqxYk
         Mb9eolRr7MOEm7ISGzumyOk+PfSRlL8Oe2NL8OzC1TYQ23b/TOX0cGOwYhSaInIVEx1Q
         bB8qdhvxVaJnz8gIO1LNNxcTaLXs+L3lx9UlAk70MWIidyP/HVEYaNjDVcJTcUb5S3qL
         yXaNc/ckmzdMIv3OOxigBDnYYZOYL+DVuSHLW04RI7X/a8WBrQv2tieWdGmv2V9Rnevo
         OvIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785474839; x=1786079639;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=UyK0q5er6ozhcg33SbPg20I8Bg5HHjeDXhNPQa7k6ZA=;
        b=Qw3Cv4IbeB4FqI1CBiG1jSiUvxNeEefRJHZcE/dyJdki+n5Cx1DoPyESCdesTRQkG8
         v01e7gf68HxpmmoSNnsg6gFyy3izNu+OtMNqjdwAenEcnBo18GplGZhjku6odju3BqOy
         dm71afnzfV+B6soRo1s5MdMVzA8wo9I0khWoWuTBfJdcOT7Zgvn782L23XVGvbXnlyIO
         lhjiT6YOBSljh2jiBYUpifj0yngrB+InKCAMCAQom1Usj0SvMec+0wzwxTvRaoQqzPxY
         jPkLU3dDTyZDzzHJs8roLDh12chabupQlADcWwn7J7qTiTEA0s0H5g37+ZcObDNWMQo0
         XUGQ==
X-Forwarded-Encrypted: i=1; AHgh+RqIsK3qXkT1uPtBsUOH9jSVWD9/AX7TFe1W9y2Na6vSqVXOA2bMtaCrTiWGhY1q0t3YBP6Gojo0+To=@lists.infradead.org
X-Gm-Message-State: AOJu0YzfZnro1fy8sRqBF0HsRFKSwsGcVY52k62OzXByeFZbnxmhjCxP
	ydaDMFQj+U7TcjHCpi6YBad9ytxa7ce6V8nabVhhUot3yV4enj6RzcYaZn507CYknyYe8ilUDHv
	ECsinroUIj+wTs6t6m7GJASTpR7ziL7AyfkD/ViB1VFD8hnqSEWf9aZEQcKSrCr44opxX
X-Gm-Gg: AR+sD13uluWCqwj3SKg4bsHfQNwT6ajAM54OIwkAQzEt5IOGw1tOXtxggIVVzThry+1
	r5CBmJaGeRIniGw2upF5ezxJOK1i7hue8/49xZUp4BrHT+2+H44XR3hifed8HoRfkI/BEhenw0m
	vZgBD3BU09ptquJeuwCYooLzmY0Xb7jsXoqBOD0qz2r6NUCs+5ouPOCKqv8wzEjfjAyFId8CEDC
	ThpbTc0rqKlq8wOvXXDDEo7hgyfUap6OmR71CChXX2XD7k5ukwhTja1O8K7jP0BVvU1pDZ2j9B8
	EFLXECvZtG6asASbObaxpxzwKzk0BDps2JmTmts8WOTVCaCbrGzeSMTM6ekBg2qmS31xj1Hpt0d
	V5TnsKGgVT7GfASzrVvJ93cPHJJrB3HySzexIEjeueHriYxY=
X-Received: by 2002:a05:6a21:3395:b0:3b4:8f18:33a with SMTP id adf61e73a8af0-3c91b0a05a5mr554806637.1.1785474839518;
        Thu, 30 Jul 2026 22:13:59 -0700 (PDT)
X-Received: by 2002:a05:6a21:3395:b0:3b4:8f18:33a with SMTP id adf61e73a8af0-3c91b0a05a5mr554784637.1.1785474839131;
        Thu, 30 Jul 2026 22:13:59 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3153e06f88fsm976435eec.20.2026.07.30.22.13.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2026 22:13:58 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Thu, 30 Jul 2026 22:13:55 -0700
Subject: [PATCH v8 6/6] arm64: dts: qcom: mahua-crd: Add PHY supplies for
 pcie3b_phy
MIME-Version: 1.0
Message-Id: <20260730-glymur_linkmode_0731-v8-6-a455265ad8bf@oss.qualcomm.com>
References: <20260730-glymur_linkmode_0731-v8-0-a455265ad8bf@oss.qualcomm.com>
In-Reply-To: <20260730-glymur_linkmode_0731-v8-0-a455265ad8bf@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Qiang Yu <qiang.yu@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785474832; l=845;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=mEJl/T+z6tFrYZ3D9hQa0mJ+NIP86nQKZj+r+SNddfw=;
 b=NVdbGP4jq1dYuL1jb/dKfeCHOIrTW+w5alpErC/xht55pn39M6ZIHMOEzFTD7sADA0k7ULpg6
 im5GPrV+4EdDr7IQ4JD38Sh3FCnLlfQ1N6plJUJcoIh58CcNH2Y2HMP
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzMxMDAzMiBTYWx0ZWRfX3I4UxLyAt+ui
 3NIuciDOFXiVxdDHTcpCLex4o4IEfFd2ivjgTJLwshoLIcJegdNjQ+s/mtKoNf8LrcnxHIYLUSH
 RxpajQ5wZHhoGxbz4PeGFVGzMWtMjtbcMdU2cuoG+qJQBJPiyYMFh/xYo4osfys2xeTbQFDtGGC
 3QZz7TbSkDBUSzKVZoPay0i94W3WpupCp1IXwLFzxSo/jIipBzymBnxDGQZqvIVn2RHgbUHwqW1
 coyfjbmN3YokuYDmy61wBi5SmURiu30SC96I2bfVpRIAfzcgYMScG4AYZ61iAMQzz+B5VqBklih
 nfnYUEy20y7rQCXSsO6+YvYWxysD8QaOXSo6N39XZOJSdU4hAEPMxIacxQcUdifKOSmuzaobD6p
 ceB1os5TRMUBtM+re3vQT1e0TS3oYJhHz6UG9BJqXL5wypB382XkWth6K3B6HO4FjWP/u1JNhwo
 87aG43CeE5sKa1d368Q==
X-Authority-Analysis: v=2.4 cv=GfknWwXL c=1 sm=1 tr=0 ts=6a6c2f18 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=FJ594BFJAeq65zshAlMA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: xFs47cu5LTZWukbCwBaPn_egAjJVhEba
X-Proofpoint-GUID: xFs47cu5LTZWukbCwBaPn_egAjJVhEba
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzMxMDAzMiBTYWx0ZWRfX3HzV38GyVVMR
 zOVH8WUcL5ORlkILbUE5UImOmnYkVAEhyQbDaz9RWmzBbkHZyB6d27Gim9PlDDlVRZzrV+qYr5/
 Mg7gq45MotfTS7oxmLULGkQq2mYqZdU=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-31_02,2026-07-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 malwarescore=0 phishscore=0 bulkscore=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607310032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_221401_682649_6B96F4BF 
X-CRM114-Status: GOOD (  10.62  )
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

Mahua CRD wires the dedicated PCIe3b PHY's regulator supplies through
board-specific PMIC rails. Add the vdda-phy and vdda-pll supplies for
&pcie3b_phy.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/mahua-crd.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/mahua-crd.dts b/arch/arm64/boot/dts/qcom/mahua-crd.dts
index fa5229064b10..17e40f2a6259 100644
--- a/arch/arm64/boot/dts/qcom/mahua-crd.dts
+++ b/arch/arm64/boot/dts/qcom/mahua-crd.dts
@@ -20,6 +20,11 @@ / {
 	compatible = "qcom,mahua-crd", "qcom,mahua";
 };
 
+&pcie3b_phy {
+	vdda-phy-supply = <&vreg_l3c_e1_0p89>;
+	vdda-pll-supply = <&vreg_l2c_e1_1p14>;
+};
+
 &tcsr {
 	vdda-qrefrpt0-0p9-supply = <&vreg_l2f_e1_0p83>;
 	vdda-qrefrpt1-0p9-supply = <&vreg_l2f_e1_0p83>;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
