Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF2D6C36002
	for <linux-phy@archiver.kernel.org>; Wed,  9 Apr 2025 18:04:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vfzR56P9jmor5UGKXirnfuSc3wiMT2fSgWxEjAGswno=; b=BmDZKMNG85NSRj
	QyE4j4Y+Gkogb3ewT4qlnzsiCuk8lspGDMVUU7sL3KY7HnpbEBTAVPhF7aInZuPFj4cWDb2rjHIpj
	Hf2toue4/k5j1B8PNvFjoFEBfwV6Xvzs7OHWuAUvl262ihZacltuDXO4/zQ3/HwuzMuiNtU//kp/2
	XVbM9aBZPWE1mIzOCMu4MiT5hbtWUaSyjZo8D9GjoUMgamU8KvegjQJHbSKeSAbgRh5R2xt9DLtw/
	ld7KM8Df0FUbbnS3am3Ke/2O8bheIk6uTvr0PvMT8tIMYJmQ5K+gMHsVAKaIt9saEiZjR/Z8H43Kq
	7f1BxlRBKmJ6pYngU/kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2Zn3-000000087By-2HHp;
	Wed, 09 Apr 2025 18:04:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2ZXU-0000000855B-0dSC
	for linux-phy@lists.infradead.org;
	Wed, 09 Apr 2025 17:48:41 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 539HEs5P026736
	for <linux-phy@lists.infradead.org>; Wed, 9 Apr 2025 17:48:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kMlcATzpP4SwOlSvLawCrOvBXTdzBvxy/P85lAIfsJc=; b=aOjUuivXd7msVk7c
	xeRu0w31+xxRiBF/iX9GmbDSL8mz0ouMyIJAx8bsZno0BvguXarPnyzGQasQqHgO
	GW2okA7vyZu7lDKFVEUlVV/Y2vPxfJzm0G2kX3ygQuAAPHTaP0oSejuztBXrz9+E
	dI6mA6Kmcf4TMvYOVv3G5TZ1+y6p5JayAdp/6YTip5x+unFzjyOHDzRtCp1y0G6P
	4e4S4+4OYUfFk2pYTR1EsCTo4wp3h4K1ZsT0rHsg8lt+c+mfn4vo/505wc0M5L/h
	yBWc4x0MNJcOHZ9unPQLbH00NG3mNVz8j9JMDFUMZ3x4bTCose7vYuS+W62KqWS+
	OtUrHA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twdgmcat-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 09 Apr 2025 17:48:39 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-22647ff3cf5so59815795ad.0
        for <linux-phy@lists.infradead.org>; Wed, 09 Apr 2025 10:48:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744220918; x=1744825718;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kMlcATzpP4SwOlSvLawCrOvBXTdzBvxy/P85lAIfsJc=;
        b=KkHaCVkZdSGpzo0jScFlDQJIqZLyYl9NoNI/xH5+RT0ujmeOaqzPRBPVwVCZTmIiqs
         /ZR2+cLqzks+ThrlQ/0yLnA8yjPr0EtXiDlWNkAbOr8jPrlRxzX+yEM76KFB/4LyoxHG
         yiSntIrPfn/jCkQdkMWKjtfj/GS6U7omnDyxc/259ClOp2RIt22hnxo2/BSi1Nm97Fcg
         I5Sz1V2xANaZg1GDQmCE5gusB+aeV4V6xfOtUgu4P/LLEOLi5snSzeZXZE0tEAONJYuc
         l7haDWsfXeggEPHktAEEzp/Oh1JfOI3POi3dh3WrjIYIF/uZZ5sWh5OoJ3gThsVQ8I7X
         63AQ==
X-Forwarded-Encrypted: i=1; AJvYcCX4f9pe8EMrpj+qaXJCf6sPeCX5CZu68lHaoj9gPldzcuthmkaQMpkE3CNN9YtHsr3xwi8PRliokeU=@lists.infradead.org
X-Gm-Message-State: AOJu0YyqoZMxFk8bqzBryt8GMRc++nmoBTFlA+V0cJ4nC2oJNiHDIERa
	QdvWHwowAKQGp3rxJoP30y2GAWueRSS3jROFXREFje88yBwKxSAlECHtYsRUQkX7OLsCBa4bGoZ
	m3Fjc2OWgr7N8jSQ1r4DI9sRvApR5Qx3EDlYstzPRVtUJTF12XJtJkrj4+mUKf6Iy
X-Gm-Gg: ASbGncvePFYqCS8X/VzvsqOD6HEfhSzjAnjBnDkqqZnhQCjRyc9UkvkjI6hRcLK1D//
	P2WX9qAR4RsHy67DmAWQJosiQ0Ym1uENr1rnpC2eoJupp4dFTZVeaTAaqlUrSk4WkLY13YV0cTP
	xLp0UxLQzCEoPO9/YD5ruu87RT7fJuUSZR204VzVrtCkJd/gGxBfzXRSCEb202Rjx4Ctn+kmTtq
	TLNCq62LXS3gKCTxTXFg4P6g0G6MnRpFaQC2LGufRlQJWjgIMnBmq4jqM4mbuJnIuK87Bn/LL3Q
	47wbZWwP1aspn4g82JzXCvQTaXh1Uc8vHNeMKLeLFDRZxd+NBPKuXx793PkSoxXVVcI=
X-Received: by 2002:a17:902:d4c9:b0:223:3ef1:a30a with SMTP id d9443c01a7336-22ac2c266bfmr48940515ad.45.1744220917807;
        Wed, 09 Apr 2025 10:48:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHDgSyGLh2XAMOqvFxthpf7vhlVKkk1+AeWpcHVuGhAtlSIix9yvEu88v8WHZBgkrm1aUAyCw==
X-Received: by 2002:a17:902:d4c9:b0:223:3ef1:a30a with SMTP id d9443c01a7336-22ac2c266bfmr48940235ad.45.1744220917481;
        Wed, 09 Apr 2025 10:48:37 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7c97a1bsm14964005ad.148.2025.04.09.10.48.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 10:48:37 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Wed, 09 Apr 2025 10:48:19 -0700
Subject: [PATCH v4 08/10] arm64: dts: qcom: sm8750: Add USB support for
 SM8750 MTP platform
MIME-Version: 1.0
Message-Id: <20250409-sm8750_usb_master-v4-8-6ec621c98be6@oss.qualcomm.com>
References: <20250409-sm8750_usb_master-v4-0-6ec621c98be6@oss.qualcomm.com>
In-Reply-To: <20250409-sm8750_usb_master-v4-0-6ec621c98be6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744220903; l=1288;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=DuT4nt6bKMvm4aZhmJJ4jf1bQ96Ec/cSqjFur5HUS2s=;
 b=+KntYU+os+cO+o4A696kL+VRqPIFmJ2KwIq6t0NqPlaQKbnrpjNAmXUNpAoeA9f9O/0QxgsjQ
 Znp4tGy0v4tAQzZB3gU97UoM6bEXtjBq4J+filtjGpOchw/of3PBvLw
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Authority-Analysis: v=2.4 cv=PJgP+eqC c=1 sm=1 tr=0 ts=67f6b2f7 cx=c_pps a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=zJXK8rm16J_mOy4j9woA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: xjSPSJFs-m0ljxdl8pM1zJyrjm9W7xqi
X-Proofpoint-GUID: xjSPSJFs-m0ljxdl8pM1zJyrjm9W7xqi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-09_06,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 malwarescore=0 spamscore=0
 impostorscore=0 suspectscore=0 mlxlogscore=810 bulkscore=0 mlxscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504090116
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_104840_303101_40F9E4DE 
X-CRM114-Status: GOOD (  11.41  )
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

From: Wesley Cheng <quic_wcheng@quicinc.com>

Enable USB support on SM8750 MTP variants.  The current definition will
start the USB controller in peripheral mode by default until
dependencies are added, such as USB role detection.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index 5d0decd2aa2d0e0849414534cdd504714402458e..3ad417aaaaf46ee007bc4c029fa9e57ac183c075 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -806,3 +806,27 @@ &tlmm {
 &uart7 {
 	status = "okay";
 };
+
+&usb_1 {
+	status = "okay";
+};
+
+&usb_1_dwc3 {
+	dr_mode = "peripheral";
+};
+
+&usb_1_hsphy {
+	vdd-supply = <&vreg_l2d_0p88>;
+	vdda12-supply = <&vreg_l3g_1p2>;
+
+	phys = <&pmih0108_eusb2_repeater>;
+
+	status = "okay";
+};
+
+&usb_dp_qmpphy {
+	vdda-phy-supply = <&vreg_l3g_1p2>;
+	vdda-pll-supply = <&vreg_l2d_0p88>;
+
+	status = "okay";
+};

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
