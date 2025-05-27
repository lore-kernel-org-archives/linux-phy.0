Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FE6DC5B542
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 21:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WkE2nDUKBiW7dz7fs3srUrUhjmvrHwWelIprRj2E4pU=; b=PHBqQPEtVwPIJU
	FytDaHqx29AygOapJF4JcY+smSPUEqd/0/Nirga0YV0Zyh52sOJY8EtN+jAdbVrn5udQs7O3VSWwD
	hLawUZvFe7APi6oGkPPrL0yYsFY7WIf7hBbp0oKMyVyZ11BperJGT5DlLeMCV6TmrntGgoEypS4Rt
	+rAQYTR1MDwvsZnfZFuPB6Ja7O7aWz7UaIWeAPSYytiKtmP3sysTEevTLuZWUIEHvJuECi2TrTh3S
	at28BlcQllA19xbROn+Yz0E5mjTE8110gYkEJ99Kf02dJMqOtSGBfPZkRp6ulwL4A1oTbAT6fO0Wl
	7BwSTBJMD/ZM5iVhatmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1p0-0000000BbIL-3bID;
	Tue, 27 May 2025 21:26:54 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1Ty-0000000BYyU-116V
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 21:05:11 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RKnvp3029896
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 21:05:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ma8TsHB+F3p3QSMnqT7X+sjQQo7g7lCsD9xj8Lp3FGk=; b=Hn+Q1/js7qPqCwal
	QR0R6xiRErIo4DEK+STvZLfnrw+Qgh/ktGhQCxhH4XVsGkqdlpIEyZjdsB2XZTwr
	RAEvBd9mQ6/EyLGYMig0WJy4a9t5mHar9SKs6i97Maj6yZvtRFeesGOYF5gJ/OiK
	z0bzGKl9pXTURbmw5WV+xAj8bFE6stwakJ1Y/wHGKFDa36jtEV7LI0evjZ2hVTgO
	lNd7wjXcBmVYW8/cSgmFC7onsGW/LMVQ7Os/B6ccZlX7w1Rra7zu1RPs1G7VUY68
	/MgQX1kUNqniV5Yffbua7o6dsLvxkwRTp3XwGYpYgAnhDeS4bD7w5QUZj8nAYO9n
	qNnYAA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u549g7cq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 21:05:09 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-742b6705a52so5180283b3a.1
        for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 14:05:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748379908; x=1748984708;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ma8TsHB+F3p3QSMnqT7X+sjQQo7g7lCsD9xj8Lp3FGk=;
        b=iXduxWPSBtEgqk7PLOfItooiddEn8POsI+bgL6uU9IBnB0O3mbxVPVB6KDJZTltkJJ
         6o/StJmcNEknCeNUUJgOd58kebcC+9diQrk923L2gk0opFas8GtYlQ8Rt4QFTmu0tbDq
         u1TQfCZkhWT2XIQ11H03YEh36cOwn6ZyLQqkGqHR3PupFRMt0iG6pBmrHJi9uCxzgmhW
         S+3ZSe73yqz59g/te7EE/aJS+C82Hv7XQHMBCEhTwOXRCgm4x7+YwbAc/Y4NfpMnoEVR
         ymqSqUAksq/Xu2WhKk7ArvaMcvfiJBgDU2u8Uu+2tNZb80o/kDIG1oCYhLHan0khURMm
         oBlw==
X-Forwarded-Encrypted: i=1; AJvYcCXKwM0/JhooN4OmPMl8Ym+NADus4eIp4v8nu7SEpiNXyC8k9/EhRjyolAoXP57z4k3kQo/69ElHWgw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzti+Xh5ryddFEDyzWG5jYLrEoYugyrNAqtgvZzryUpvbebj7Iv
	g8I++EoRYQbu5Nc2WSY1yDRZFfzc5v2YJ3+DLApENmIH4F+nLOPffrTdZaRpElAVFBZngaTYls9
	06otA33j3lh9gnPXvTeIQe7QMFVmwm74EREQB49M1hULH9r+wwC8awALZ0DL8A5uHTU9y
X-Gm-Gg: ASbGncuQH2xrabE49MmCEQB9MF542qjYb9xKqWy/sfNkoCY7+gt4lJcIBVEkVNN/AVe
	+ruqOV/BdxqIhKLhqqfRr7572E7r3xW/IgBdtBCawevocZjuf1fLvHoLSn9uW5WEP8fgaVuKRGG
	NeicgfRIGcx5WRFprbObE/7d5KUTEUpPjOmJ2RK6+YxPamro1aPtcmc/+sXWngICqvQ1LIMg7P0
	HH3h7SprNehH/8FWVgAeRugD4M6WCsPE3JqE1cwJf7TvwGTgePbKNghTbZ8Vj8k67tt9OmzPemp
	0T+8y3ZAP56k22GS0rTCMR5YBj3nc1x/1oj2qpvTbv4AKJ8JRPi4aQdS8fed4FgUCIw=
X-Received: by 2002:a05:6a00:2388:b0:740:91eb:c66 with SMTP id d2e1a72fcca58-745fde95d69mr22807097b3a.3.1748379908149;
        Tue, 27 May 2025 14:05:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG2Bz45OE2w5HFnK31wbhlsPZnbFbrdn+wcobk3wqYztQHQDfpbs/apLivFlaZLBGsaPBctAg==
X-Received: by 2002:a05:6a00:2388:b0:740:91eb:c66 with SMTP id d2e1a72fcca58-745fde95d69mr22807051b3a.3.1748379907716;
        Tue, 27 May 2025 14:05:07 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7465e64836fsm29167b3a.26.2025.05.27.14.05.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 May 2025 14:05:07 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Tue, 27 May 2025 14:04:45 -0700
Subject: [PATCH v6 09/10] arm64: dts: qcom: sm8750: Add USB support for
 SM8750 QRD platform
MIME-Version: 1.0
Message-Id: <20250527-sm8750_usb_master-v6-9-d58de3b41d34@oss.qualcomm.com>
References: <20250527-sm8750_usb_master-v6-0-d58de3b41d34@oss.qualcomm.com>
In-Reply-To: <20250527-sm8750_usb_master-v6-0-d58de3b41d34@oss.qualcomm.com>
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
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748379891; l=1413;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=gc+u2Wnbmer5INhP/AFAJkM8vbhhdjKxQE+MTNg1FPA=;
 b=4AgkM8l55iNY4RBu1/FwiBbrVzA4iniGJCA7yl35iytkMEU8TFElS/1xm1j9EFI9+yj5eR9fo
 gy0q4gu7itdDy4GfnuSGHdb+p/19GMumODCz/v+vYfN4+QHWeaYoKun
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Proofpoint-GUID: eR866VqHBVFpyKPtBJISXdyH6oecUoCq
X-Authority-Analysis: v=2.4 cv=E9nNpbdl c=1 sm=1 tr=0 ts=68362905 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=EoOMd-xwxZjzz6zYUw0A:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDE3OCBTYWx0ZWRfX81Z9RuClYf1f
 Uqt3ZlI62hBw9tfm4kjFtXA+wCobM7n3L/w8hkVwnogRh2AHzSUd3OjMMlQoXAGFBlHjuQhLhF/
 1XEkWZzb4Q5qMKSyzn8XYlIID9wDboy+0lAIwNpMZKLREtOr/pNnDNv/jqw4BxL0X0AJzj3h4Ap
 eZf59dWGKnGUUpFk58dBHqUknE2Oi7c1mxGYz055Ca3eP2U7JJziKSfzjrApljGh0Fl6v/AN25u
 xYRCD9m4nUXt4vyGj0M+h6fGOBsn4lyadwm/Lca6+ey2gsYRmAX/1lAWLMiFouKXMA/n/jponWG
 g3Z6VTVVXmgkv8+0pZBU+NU5j6nzYiH0MiSJ0cnVecq1aqbdJSKOiEQl/gbrFnjInk+UrwLsY69
 oBNdaZG9l9sqfp8Pxu63ofce9Dje6EgJrQgJzVNCQB2oy619O7apkBVvKd4ve/WYdfa8TFLF
X-Proofpoint-ORIG-GUID: eR866VqHBVFpyKPtBJISXdyH6oecUoCq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_10,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 mlxlogscore=839 spamscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270178
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_140510_395693_CC442D0D 
X-CRM114-Status: GOOD (  11.73  )
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

Enable USB support on SM8750 QRD variant.  The current definition
will start the USB controller in peripheral mode by default until
dependencies are added, such as USB role detection.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Tested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
index 840a6d8f8a24670a01376f8fce511da222159016..5cb18ef1bdbece09a7626b57a852379a62985995 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
@@ -811,3 +811,27 @@ &tlmm {
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
