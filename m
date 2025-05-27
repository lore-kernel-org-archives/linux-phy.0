Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6304FC54ED1
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 21:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RLXi7355q7BrYEojgc7xxHUHJEMCmwrJ98qMcDR25LA=; b=PQWQuATGcCHjci
	0kR4AnZlXwcbrvKMlIHhuAUEpFJTUoL8TFFc8eSDE9t8PFEPk9pel/+5Z0rAG9P6qvFg0Vxt1b2Mf
	vj61AsvDKjHu/nCkw0OSj9nUCRmhS2HXAsuEeeJPU+dvx4DotR6aOLfSCUJJ5Yf8McQtzFfX+exf7
	GlX2TlB0jiVs0I/u5O7yTTmniT4r9VzpyRcVyoKG7c0LdnonQ2PH7lkQ+9q7JpOhpuD/EmVRazsAl
	gm7nxsXq2zuoZdpYl170fPUMHzX9rctrIZ0OEf+yPRMNJbqk8ZZ7uN4qFkDzGZxgcKMkNf/HSN3Fz
	vzLs6q0nYrBipdaWNtNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1kn-0000000BaoO-0OdL;
	Tue, 27 May 2025 21:22:33 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1Tv-0000000BYxH-3ZKU
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 21:05:09 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RHTwql029872
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 21:05:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	teg98KnCXRHpbibmB3t0iTGw5Sr71vWVJCSu3Gc6TZo=; b=XXLFu+zJIXzaJOnH
	6MmY7OJEfvk+vqpjXwDNKNhnTFbtvufAnTxh0w43zpikEqqTLCYhUKVa5MY8XzVA
	XBJAD1aHs+NBai6fjOp52Bx1RzbDkUatBByTbzuPgJPwfMLFpVgb3Sg+OBnHvkA/
	oidME/ep06EwgmBqQCMHpldraWVqtH46MEqXGm/cDll02vDhM9tqtRNubME16HPs
	eXvwB16TAaTZTGAow/4+PY82BOZt+CAxfoeQ3g4lgi0gGrlOs+YoQG+zookZh7Qs
	0rEtKo694lDbsfnxz3eDjrRTZBJxvSeklAkL6fncQHDV5vP9IV+ZEF3QLKGRcvSq
	kKqKaA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46whuf0jgr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 21:05:07 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-742a091d290so2604479b3a.3
        for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 14:05:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748379906; x=1748984706;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=teg98KnCXRHpbibmB3t0iTGw5Sr71vWVJCSu3Gc6TZo=;
        b=knXNShr/oKVRLcdDQVpnFkw1/9t0FbWSi14fGOCBNfVmAHeATCAbW0k1w3lBJBxNOq
         72xNTHKygqjapT+9eBanOba2QHoD4jG+7vEJfh9N9fIBTK4gABK4OVJLh/puruDhPWFx
         CH3ZfyGQRhU78Kc8GgImzXnpFAFa+01TMnM+CPzWs+hibAtg6SRWWNLIuv6z2eD3/g0A
         6Rugu2zXvfWYzhQCP8HSGPOoAZ0XUtCnlPdtJJPBr8SPu9as4D1W/7ZuApwARBkwg/Yt
         ISvpkGwit80pk8W4xTpniseplCK0Iz5qZxgbROvDn4K0Go67YKb2CFp4ThGvdVT+jzAl
         2UOA==
X-Forwarded-Encrypted: i=1; AJvYcCUsN1H1qfZs2oTrWaWpVBiXivPMbXOqcyUNdtkYIErb3uv/ZaVBghJtNeftSaaJUq1NzP3U8G359Wg=@lists.infradead.org
X-Gm-Message-State: AOJu0YzX89SHFx2NdNzOLfB5xj1pyuweivHv6gGP0GCXbkiwwvPq2ttH
	t463u3GzKTrz5HsFdnldPFGb7GyfApIcHJIBw2eF0C1JX4DzYmN+TW8xzY7B1IutW4/j9MRq9kz
	JzD6uYF7GuPFMzwxEoInb+RxGSx6GDwu3XSXnpkUYZjjGGc+fWHaDWZm4k8528IziSKDl
X-Gm-Gg: ASbGncs2BDRJCrhs0RpDyznauxe2Jw6utYtUARX4/VrDzgB/+M4Ewz5x4+b14Y757qo
	CpMeKZhQinx2OH9+lBx5qQorhcOeZgbYBKJf0n6O9CpF30RrG1EDSLC+js8rtuPsGE5ZjD67Ams
	lnQwFGztr61YTl1MB5daqhhGeMBoAxhJqBd8gTKom3+swZPZisfVel0HQIL3010E7eIkBraqWHF
	j6BNHCIir89LUaM48oAtBkhiYFUR+BKQjFqTiKUhei0NfyBYkbwx/LS/7/EuujszvzKhemMPC4F
	GnbNMZoAUScEcifb5BAibV8Fjkz63efSk5uZoXV51UathwnXhyMI3PLy5sLpmCiBN8E=
X-Received: by 2002:a05:6300:210d:b0:203:c461:dd36 with SMTP id adf61e73a8af0-2188c20df49mr23718633637.6.1748379906522;
        Tue, 27 May 2025 14:05:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFurMh4Ktwpp0qvzyqJkXxlrwd4QWROOgS0twx82tbgVIupB84blzpNgeeLHqbI8CEKvbsTDA==
X-Received: by 2002:a05:6300:210d:b0:203:c461:dd36 with SMTP id adf61e73a8af0-2188c20df49mr23718567637.6.1748379906065;
        Tue, 27 May 2025 14:05:06 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7465e64836fsm29167b3a.26.2025.05.27.14.05.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 May 2025 14:05:05 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Tue, 27 May 2025 14:04:44 -0700
Subject: [PATCH v6 08/10] arm64: dts: qcom: sm8750: Add USB support for
 SM8750 MTP platform
MIME-Version: 1.0
Message-Id: <20250527-sm8750_usb_master-v6-8-d58de3b41d34@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748379891; l=1355;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=Nx4I/ZG5m1Kxa6LCnqamndwPnsXvis3d+v65oICH37M=;
 b=Hp/G/DtacnwV0EhGyfZOVZRkpEebZE/+1C8caI/kuGc9Mek4iJ/VNGTuOQB6QRMqQZR9IOssZ
 3IGYp9vp5sFCd3IY2cf3mgW1K0ADTPQeQ0gcHgh7c9fof70ePb4DYOm
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Authority-Analysis: v=2.4 cv=OslPyz/t c=1 sm=1 tr=0 ts=68362903 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=KKAkSRfTAAAA:8 a=Tsvuh88POXG944tnl6EA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: eo_L70IeMcEz9ina5E6qw1t7lpDWgCm5
X-Proofpoint-GUID: eo_L70IeMcEz9ina5E6qw1t7lpDWgCm5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDE3OCBTYWx0ZWRfX28AizN0T4x3H
 Awf4N4P/XiXd8KrTxHbD09iutpuV61ixoQfB9+qW69qj/4H07eq/0F/AF64xFPC1PNJ+n3jHm2n
 JBQdVkITe632J9Ko02y/+c//abbrqPgRlYgJ49hWjgMNkwA5+FrbkAxlHlGW4vv4wNWj3uH2eW2
 7AYAQnGMFfNDWE16unLLXJmZl0vvhsTD2d11aZU8Rbqlg9e0T7+AQ++Ueghw0AnWXYwZFvR2mHH
 eSV/AnHSLloospL8/ojyv5m2FsKuBREWcB8qvkL0bjoeER9qvhpDJwnTGEnfDaKpN4l3PoRweeN
 1yPSK9ssclRwsymnCTzFwBOeIlxmF9LecDKh/FtssglsAIlwiFjHQanHDwdhjozZvav9CCf8s6T
 Nec0OvuwbokFHn6peTWZMUHEPmrPNp0s1a53udkGfy+Hlh/BxfFFO+Aavqzk/DLnVUZfaI8s
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_10,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 mlxlogscore=875 adultscore=0 malwarescore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 mlxscore=0 lowpriorityscore=0
 spamscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270178
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_140507_904412_8214A6E2 
X-CRM114-Status: GOOD (  11.98  )
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
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
