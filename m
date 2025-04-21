Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAA2DC369D7
	for <linux-phy@archiver.kernel.org>; Mon, 21 Apr 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V8K4bVRaw1ygXuTb1I6UGLDQrzIiu/bdfAhnTKKi5Iw=; b=qWIkdE/vm/aayO
	RlJ/4z9GJ5zMO6JiOOj4672EnYu6fNTqLOxxZY9gBMtR2Eh/UAQ1Vl2sStozx3hCle0xO5TAiLS+q
	N8CeS0fr577rWMoLdcNCv7TgBSFR7F5P2cA5dtkYl/beA+KWIsz8UjEMJE3Zvz1QhhMg66fXe35vG
	YSYli79bqkVbn0QIB8OcDypjBVDmikNWs3rOZy14bRei4VkxDil7vU0jL3Ak56GjA0Cq2gKETT2mH
	UVZ2lA+FdcCgwWESE4e8wqNplFTstCEJu7XPf8vuxCNNGvsWIMAYXELhfyB7Y+EO6YmB2YE1cyn0z
	GvfWemLWfC5mec3ktUrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6zQf-00000005Ist-2e5M;
	Mon, 21 Apr 2025 22:15:53 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6zBy-00000005Gc3-0DnI
	for linux-phy@lists.infradead.org;
	Mon, 21 Apr 2025 22:00:43 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53LK52CO029257
	for <linux-phy@lists.infradead.org>; Mon, 21 Apr 2025 22:00:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	85FTf5dq3WUxvPAL+FcZsdyjl6Gon2Kpy0Ag/qYK1so=; b=aaGE6rkCZtdvG9tc
	a1qJ8uhw3iP4HEmPkIB9O7+6NRD1tTXAbC63ftEebmgZjiue074qGi4ystuDl6U+
	DsnqM26bSQWEJeZUgC+/1Vwm0JTGiko1mm3gy7ph+P4ZOFZXnNwrhurZ3uPD+lUU
	9uclUqLnPUgUHQ6aK6vJFSTuN0raWCwWKmK0TK1y8GGqsbZiBoYoXVmpRdylZ87t
	VjlHmU//+4TjwtmPTnKPADrHpNu9ygdOEMuZWAv+mQyX1vc5li5G+Fd09UmfeKx2
	uI5b3z5l/gcd3RW5dSnU3TpHpVUIOgbEHk95ECd4RxhwGqoAcZXC5+GWu+42BCHG
	MEbuxA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4643wwnf0t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Apr 2025 22:00:41 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-736cb72efd5so3340151b3a.3
        for <linux-phy@lists.infradead.org>; Mon, 21 Apr 2025 15:00:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745272840; x=1745877640;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=85FTf5dq3WUxvPAL+FcZsdyjl6Gon2Kpy0Ag/qYK1so=;
        b=IkkY0x/w9f+S8AOaMaZPtocE90l6bOVADnjMziSTOihK75+sHxn8X+Pbg+NdWKxZxp
         WyMPON2RtCGXk8Fq/Ed2skE36kIBt6MFUOwsowXFJBzbhLJN+Omt7XpBuM1py1lS4o0U
         s6+92/IH3QujlnyfACual6pJ+1apdKsTUopOIKKKCAE0VusjLkaOxMOiQiAYAX5BPepH
         au8aEe6XcwHmewkKSGfncflRWDTS1bAXcmXq1IL/hzKJEzMJym9vMu73nygHx4pmFc7M
         5GVkk8x20+Y5B9zGIKrH8h6PcOhw7IyDNpwlrNPUZ5mi9FmHpN5tzhZh+WEn5hI3KaJk
         hdaw==
X-Forwarded-Encrypted: i=1; AJvYcCVTiJWF9qfILwH9o23hoJuQHgA6PAfcPr4OO1rpriy9vIZVCe9DZChN3vxjkBnuMM8W0YYFRguPirM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxBc/+VCqXfmzz4DxR18Sd492pOO49zpHAgsxKzNfIZaZvPucoU
	TbBAGPmsoR/+UizT916lJX4H52cGGcTBCIn8ZLfkpLrLbBjR1sD5zUwJMOE8/vftCz7iAK9d4Es
	VOAY60YVyN2+ncTCFNLnlv+fYJVlUpxm3dMOEggeQmpQEPbtNvIibIuuOeRMCPuN9
X-Gm-Gg: ASbGncvNjZTSL5qZ8zGRGOOAwqpCgVY8ctnesiMuGewETF6EYrXrwzCYah2Yonug0LC
	3ZIYhmdlRjUiCqqJzSuRqih/ZnSrlle0Bdhr5tf+2pNdLsmxZMjioxgxemAOa8hPDg+/UGwjRaN
	ZwXLKmWKaaNG/6BMASOM4c6VwjIjuE2RGIsKbA/AFov8truo9zZ0271xS89UA6DzWf/nh6VLV2T
	06XOkSjercU40/AcZhs4WLjePDFSUWdT/scEC8f0UIN8UpiaaReGkwxTFTRAhjArU3UGZnGzwZl
	HbjUHyeqx2OuyQGrdoWGaSzJ139xi7qaJ1gjNP758TwGhmAo3OifXzxwIOnm+7ROKKM=
X-Received: by 2002:a05:6a00:2182:b0:732:5611:cbb5 with SMTP id d2e1a72fcca58-73dc14cca88mr17001109b3a.11.1745272839454;
        Mon, 21 Apr 2025 15:00:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHsdbfJsm0KdV60HiBE6DxPravmfAWBBMxUJAVErJZ8Mc6PzUneSapkKYNVVusWvrtS/jXXkA==
X-Received: by 2002:a05:6a00:2182:b0:732:5611:cbb5 with SMTP id d2e1a72fcca58-73dc14cca88mr17001010b3a.11.1745272838817;
        Mon, 21 Apr 2025 15:00:38 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbf8c04c5sm7107917b3a.24.2025.04.21.15.00.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 15:00:38 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Mon, 21 Apr 2025 15:00:15 -0700
Subject: [PATCH v5 08/10] arm64: dts: qcom: sm8750: Add USB support for
 SM8750 MTP platform
MIME-Version: 1.0
Message-Id: <20250421-sm8750_usb_master-v5-8-25c79ed01d02@oss.qualcomm.com>
References: <20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com>
In-Reply-To: <20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1745272824; l=1288;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=+b6x2t1UZ9tBSOYbcUj0Sk6c/9sXGEBZ/MeOUGfqqx0=;
 b=soft0JCqQzQ4F8eO5+nGm1bNhAoWmg05DsdBm5joEmpWCGlAn4jtQjnOkgw73BUZ0YG2wzdbV
 MIzfiTfDUVVDzggWNSMwA7WyAd2Y4JqKHO6Gfg+pWQ3VJBsB2Wx28pV
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Authority-Analysis: v=2.4 cv=IpEecK/g c=1 sm=1 tr=0 ts=6806c009 cx=c_pps a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=Tsvuh88POXG944tnl6EA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: xxMrkL_RktXx3iqEP0QHezoS7sFts0Yp
X-Proofpoint-ORIG-GUID: xxMrkL_RktXx3iqEP0QHezoS7sFts0Yp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-21_10,2025-04-21_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 spamscore=0 adultscore=0 clxscore=1015 bulkscore=0 malwarescore=0
 suspectscore=0 priorityscore=1501 mlxscore=0 mlxlogscore=869
 impostorscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504210172
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250421_150042_240210_ED9CFFB6 
X-CRM114-Status: GOOD (  12.00  )
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
index 72f081a890dfe49bfbee5e91b9e51da53b9d8baf..d28e45111b8d01c2753493a7a4ee248bbb334aa8 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -814,3 +814,27 @@ &tlmm {
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
