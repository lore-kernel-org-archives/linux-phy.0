Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DA63C369C2
	for <linux-phy@archiver.kernel.org>; Mon, 21 Apr 2025 22:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ILoCnt1tjNUgYoqpPvyjy+PSY8QqFu8k8bh+OHkRBkE=; b=UyI8HvqffmoSsb
	5gqoN+5bzdmYX0nLHnLzoW/8sZRWHADXmjZ6c/A40WNszWWBR9W1osHOR4GPr9Vso+ayX6yvQ2Yp8
	T3l7blse3N+NXmqtN4qmatlQzaFNVezISFm/a7bxg4sLV5h4cjX3RjXIaeOD1MHlY+h/NHm50rgIg
	F9TYIELcDO+1sJXXMsFzhJzS8+VNJiYwboJOqhJo2bmTYQAwVfJuVMWDk598UP/u0Uebr2iEn4ggq
	AAy8/tUyeIjb/A5EJWsTDQ1qH2u/lpC+0GQCXIUTWQJ+bFf78CH6ykCE+PLlB7aEZN9NYhmq5mRkA
	YsleySTink92hRI8dIZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6zWB-00000005JcB-0P0h;
	Mon, 21 Apr 2025 22:21:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6zBz-00000005Ge6-1lRV
	for linux-phy@lists.infradead.org;
	Mon, 21 Apr 2025 22:00:45 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53LK3v5w021107
	for <linux-phy@lists.infradead.org>; Mon, 21 Apr 2025 22:00:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TNZhdDbQ4CpO6odDNFgTaspOuazgSLRe+Qho8Mt2o/E=; b=LIEZACNoFs8EkWUE
	JqgZHQL2t2pC4FguW+h7jj5lVZJkKElBNg2NiOt231JD58DlKcTUPNsqi7nSBcKL
	6EnSPEskBuaAF5SBVERnTHit8CkhS4eAbe1huYHE7c1MUJB1rBJImZyJmX0OwNQ7
	dbCecxY5ejTK+OugSdCui3LnVhekJmCRGug6ApwycxSvMpZQUGO3+eRA8BpXU89E
	DzZ5yStoLDPTEwl/qDbVs6d/HsGrHcmG6ob+DwUMWl0/p0j0+U7gf9qvTmVqhoPs
	oS0wfLPWeVeX/uS2R+Xc0bs0u3YR7n0KhlMiJj64zKKdgoJ2WfpErRsPcf/MMXPo
	nd61/w==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46416qwkgp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Apr 2025 22:00:42 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-736b22717f1so3363809b3a.1
        for <linux-phy@lists.infradead.org>; Mon, 21 Apr 2025 15:00:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745272841; x=1745877641;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TNZhdDbQ4CpO6odDNFgTaspOuazgSLRe+Qho8Mt2o/E=;
        b=vVyFXKzatR+3AeW+fkDzSEHZqlzXvUSMkIeMKCHZ2o6uUlUuDhZXWFFiaXjpORi7Zj
         Ix9AsBQeSKDJso9/SJMR2HcWfH4rRlrIEghftX29fyJfQ0QPee56RxfDEG4LIp8oxhgJ
         VU0pTUQn7pkGHTqhKICtf69LxtCl97jt/pcQbYzefwXnBcqD4ydY2pWPN6khVEIOKoYn
         eu3JvJaQnrYjcplnMzZ1YKnIKxFmv8KqQ4bd37dL9tKRf/Tc6JAlAnSLtlc5Dw47zWao
         7vHAKKJ1VGFOchePHAggf4y8MCCbCCYkKsfKatnYdBedYZikO+tlCLEdcYuzVVIjGzDK
         d+Uw==
X-Forwarded-Encrypted: i=1; AJvYcCXnWTXddZuT/fGrZLkLKBFm5jTVZw/1Ocs4Q7P6pYgNrwIGZb8Mr+LSmfM5aOW3x8mdP6Vvz4hA7TE=@lists.infradead.org
X-Gm-Message-State: AOJu0YyQePwJAhmEsKkym8jZmAvUZ+lKO2BCIwalwx6J68HPBV8t3ny4
	Ac1akDCp6TiUeh6VJKvMfTxFc2gZ0HbAqq+W9SE19alVKrriPTj1+o7v9fyBepo2XRRWraccmGy
	Q80tHLZzuIUmdoJcWNEsjfVG2/gFp7dHOuh1j5wRX87/fMy3TYvD4B2T/FCzC8gVr
X-Gm-Gg: ASbGncsZqJyoT9m/XaY0ecUNmySFnlepd+KyRiCIsVxWxtlGkEMZt1RltHnOcd9A2OK
	eMuoutaIm4h1Fd/T3zpqGm67QDnNIBRfwsAwJIDa3Ffy3zFdLuMS9xDDlQBqUA2uXLAeFuAwlz9
	n23BuY8ZwaYGt0aEgxHahgys6fIyepmsqzyIlk000EFPgJeDyWLAdZZuZB9PbM9Ht8Qm5OzckbS
	uCr87dqAyMw+eQ2wRZryIcflOVPu3k8To6tNzytBsScXYK1KOyMJc7x9iceCq8SsNbNolJzRwGx
	9KaQag7LBi8lKe9SZLDhXRgRDznkma802qk+SQGle9gAAX7RwBDW8pfeeE2astuuj94=
X-Received: by 2002:a05:6a00:374d:b0:727:39a4:30cc with SMTP id d2e1a72fcca58-73dbe4e3a0dmr15296387b3a.1.1745272841001;
        Mon, 21 Apr 2025 15:00:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHsQtDnYNApQLqy5KcA6mhITkSBM1PN+PtOnFK1BaG3vcBYf9dQGt26si6zv5LYrESEmcgS9A==
X-Received: by 2002:a05:6a00:374d:b0:727:39a4:30cc with SMTP id d2e1a72fcca58-73dbe4e3a0dmr15296341b3a.1.1745272840467;
        Mon, 21 Apr 2025 15:00:40 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbf8c04c5sm7107917b3a.24.2025.04.21.15.00.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 15:00:40 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Mon, 21 Apr 2025 15:00:16 -0700
Subject: [PATCH v5 09/10] arm64: dts: qcom: sm8750: Add USB support for
 SM8750 QRD platform
MIME-Version: 1.0
Message-Id: <20250421-sm8750_usb_master-v5-9-25c79ed01d02@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1745272824; l=1346;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=Jejw3tXebX3bwJYOfSSXxknK7DywBDBkNV50yFQ7X10=;
 b=+GRxjHBRFn26nN9usdJe78ZckstTGCijyHpDp+HOdoS8Rc7Vl5bI+yCSW4iUjQhxfeVs1hCRR
 Lj3tARvPpC2BYVuRGFVWOacXsJocvMEay3m/G9qxURxaeKr3RptnY3s
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Authority-Analysis: v=2.4 cv=N7UpF39B c=1 sm=1 tr=0 ts=6806c00a cx=c_pps a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=EoOMd-xwxZjzz6zYUw0A:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: TDC94wObuZv2_iimFsu7We1gGmlIOIFa
X-Proofpoint-ORIG-GUID: TDC94wObuZv2_iimFsu7We1gGmlIOIFa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-21_10,2025-04-21_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 phishscore=0
 mlxscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 mlxlogscore=833 impostorscore=0 bulkscore=0 spamscore=0 malwarescore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504210173
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250421_150043_630484_48DD721B 
X-CRM114-Status: GOOD (  11.49  )
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
