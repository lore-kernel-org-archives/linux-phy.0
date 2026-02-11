Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 941BAE9E308
	for <linux-phy@archiver.kernel.org>; Wed, 11 Feb 2026 13:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gY6NNcjInD7yfFubK12AhcBf+gEFpPouIUN0eus4mO0=; b=GIJMxzXgM9Pk79
	BLdReuQkuvi6EeqArExj0te1fe88N3ms25AgcN8QqQw4l85FQUqXUB0BtLMZXPnWj5XfxJNCFbOqg
	syFcO5nCZHQNzhjbK00TrVDgn4ENAT7GYtVZ33jXZGjE5BQUK4asZiiMdytd9N/LJAIrlf/5tlkXH
	uMgRes4bl04PoVaeHepl9aOXim167PxfMulZdTklKP6gQjt8rEmNmzMIXJ385r0dGc2RbVYoFjxih
	itDHOBZqlKIGZWdBzbe/ZSpJSjgI3Xyb8zI9cOHXWHt4pT1P+T0dLjjNDjSQSGzhJECUXBHpKN7tM
	/amwYO8BQN2WDklirbcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqAIM-00000000gj6-1JJX;
	Wed, 11 Feb 2026 13:30:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqAIJ-00000000giT-3sI0
	for linux-phy@lists.infradead.org;
	Wed, 11 Feb 2026 13:30:17 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61BAHSbp2297566
	for <linux-phy@lists.infradead.org>; Wed, 11 Feb 2026 13:30:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=yBxQPWSZi11
	Gi7fw7yJ514mCuqG/sJlj9eUQZXPJahI=; b=hd84I2QFoG2o8wydmcKyOdgB8VC
	zvLHHYCfmvquU0D6I1mPVBrcI/y4ZqTQis7+VGF1L0JV/K3y2M7T5n5s++hSpQ16
	fHCNLBbYLBLwcf2EQOKRn+213CZ1aRSbdABqL5PIx2ODMNRGwK+B5JU5Le02N+s0
	ZvKWA0Gn/B76KmJ6pNFN3NeJXhktYJNs8JCb2rfNQN3c9TEm2yaV42mf2Ov+x75h
	wnMqm+S3fb2nYjWeiLYxHqhHbJmimXhdjaubz6g3+61eEwdSC/fHfWnl+BwO+wIA
	rOoTUmC6NAP4snoXBokUMlGflYpS/RiG98gt5I8GrjABQbLKuhTLz9JWcQg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8qvq8hhv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 11 Feb 2026 13:30:14 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-81f48cec0ccso6062621b3a.0
        for <linux-phy@lists.infradead.org>; Wed, 11 Feb 2026 05:30:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770816614; x=1771421414; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yBxQPWSZi11Gi7fw7yJ514mCuqG/sJlj9eUQZXPJahI=;
        b=AjC8QqPSNqqFS0i8lxvPbhIqE1vYXHiFoVvfBALUzNHXli7xE9KbflKocQOIsxVHIx
         ueaYx0UzNNRd1pFOgnC+rHo+kk4rBV4Pp4iHN4IbCsTajJsJpAO+b5p9nsFfHxlzq0qK
         IuaPA8hV5qRL/jWBWFV4gSjOIXqM4MDRPgsAx4EIURq/Ts/s4QFlqDAVQGkF0hheS53Q
         9sF2CNstcp5COMTJgVWU6BtPQnsMb/UeRC/KpJ2tqgz3WsKa5v0SXIWi5T2wuntU76PS
         FL8nEPWcPl6lYUMN13ZYMvEI75ly8Nun2e4STUw7EKfVabOdIdeNht+6zUN9UCmQJMtB
         i+WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770816614; x=1771421414;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yBxQPWSZi11Gi7fw7yJ514mCuqG/sJlj9eUQZXPJahI=;
        b=SVpG4WsZhg90/mHgkmKbRmHTYCHcM6bMikAMoWYYacsjHLyvGeDB9CPYtRcjGDZUVE
         qftIIYtK61OKEW7vkPbWjbdhr56lRKQPKcGF7cTqaDaWrhbCHyVDE0nSDRC/NTh5nup8
         u0ki4ljsfA0c61lgkfKa70hvDsok/i6jhwvqopQ7pWF9ul7pBm2H6xMKo+JCLkJDl0xb
         SqJ3nl6cRjTVRRADos7Drl/5+GSUuQMBqp8i+w7JiWfmERGGcZ/A+3G6BKKvfFpOWs3n
         ThG3hD1jvt8mGykEQntOPtWFS6SgwmH22139NRUHM0uDk/Ejy8MF7/J+jMfU2PAZWfVb
         qiHg==
X-Forwarded-Encrypted: i=1; AJvYcCUNxWIDczYB2q/T3u5YcUQyIEP6sdLMogoSHf/2KyL1MYACW04LR7a5MBKofAPYdaG1HFVsd8Slztw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzSF0/fTkcz5F9V3lsaDUEPgpeWybTaWB0g2OM77FjiXPigH2sS
	2t+Fjnq3YaEIwRlETfeXRyYNeXIlEVXFAIXSiwBWYJlD5dW1FzRt2rjS2i88Zc/7siJh44kse/L
	OoJvqivo49/xsRU9XtIrAuatG+E0CsQU7/C5zNxqD5m1mfxXISA4qQDc/muVMvS33uExA
X-Gm-Gg: AZuq6aKMMxTWvLSbUKp1syLx/Ft4XfIQ3myTABCEvWddfoG0lstbkNlxRwNAWbCDK+8
	B/YZnNehzEu0RoXDPWacKMzoHpXsfcviO9W+Q3fOvpehQdtX0+SElbCN/tM+VTXQLjt6Mdvg2t2
	ipG7HeXqion9uq7Od2yUahiymmtQyIs6Ff9V3dFWmO2Yh3fP9Jz28LHPZ7krMStcFDwY+XFTE76
	gAuOd3mjEpV7xaCmDI1A5XUx9mEG+Udauhl4QNoDmhlZoi6Pmd6eEJZ/Alq48Q8Iw8xqnCuVBX2
	hhirah4IG2QILFvwO32ibXbYCMgq9YaUCvxQiTFA2IcUJaIqaRy83XNPaBO1FfAA6p4OH6wFvOk
	TnStiwq8yW/cF4v6M0wPEpWWgO4C5YUUo7+m+15ds+wR0j2t5zxX+/FJEG2hh5F/H
X-Received: by 2002:a05:6a00:6ca1:b0:824:374a:1402 with SMTP id d2e1a72fcca58-8249fc25cbfmr1597578b3a.11.1770816613598;
        Wed, 11 Feb 2026 05:30:13 -0800 (PST)
X-Received: by 2002:a05:6a00:6ca1:b0:824:374a:1402 with SMTP id d2e1a72fcca58-8249fc25cbfmr1597539b3a.11.1770816613061;
        Wed, 11 Feb 2026 05:30:13 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8249e84bc1asm2143655b3a.58.2026.02.11.05.30.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 05:30:11 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>
Subject: [PATCH V5 3/3] arm64: dts: qcom: hamoa-iot-evk: Enable UFS
Date: Wed, 11 Feb 2026 18:59:26 +0530
Message-Id: <20260211132926.3716716-4-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260211132926.3716716-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20260211132926.3716716-1-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: 5_QFjSLVfRQp1f5h7-lTyKj3uh0KpEgj
X-Authority-Analysis: v=2.4 cv=Q77fIo2a c=1 sm=1 tr=0 ts=698c8466 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=M7MUb3q_Ox69Zn6kGXoA:9 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: 5_QFjSLVfRQp1f5h7-lTyKj3uh0KpEgj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDEwNCBTYWx0ZWRfX1VnF8Yn8Ucux
 wUaODXmoq6/OehGHV2OGqzTYTdp7uDfscIIqNgz11XPSYzEivBF9ycg5eHzNLj3ibVfcW1b6dmB
 yZwJvjGw/ihGTU5jAUok+7I1K7BThCcpmsh3YXkfdeD/owuitou40u1jAVSWHy24MUFB4+riXNM
 d7se8xdQpWtfHzGXc2s1VMOYwYvMfpKI3LfQDe6SsyuyZQfD2EW08RcbEXpKAMvujKEZfPjObiE
 ey+GEzx5iCnds4vrv5Kh4Jo8qG0/i2NuZq1XdbCkCx8+e1PbgO/uaGIHmueXHfRoIV67TlPzHJh
 yajTcvVxG0G4jTvvhJ5eV0manKO+iHUgVhv/r+4N0pvR8bmxyPy9khg5A9Eoe2a/ZGbptjptqB+
 8nsnQcQ8I8Trxf2307B2o0xu9gNaGPC0HoRTnSMhBefvvU8lco1gLX0KlLU0saNhea1r11K0DV8
 6dG9DLb1txlpBFp5gsA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-11_01,2026-02-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 lowpriorityscore=0 spamscore=0 priorityscore=1501 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602110104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_053016_076608_8849E217 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
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

Enable UFS for HAMOA-IOT-EVK board.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
index 2390648a248f..fccf1d1bdc60 100644
--- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
+++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
@@ -1461,6 +1461,24 @@ &uart21 {
 	status = "okay";
 };
 
+&ufs_mem_phy {
+	vdda-phy-supply = <&vreg_l3i_0p8>;
+	vdda-pll-supply = <&vreg_l3e_1p2>;
+
+	status = "okay";
+};
+
+&ufs_mem_hc {
+	reset-gpios = <&tlmm 238 GPIO_ACTIVE_LOW>;
+
+	vcc-supply = <&vreg_l17b_2p5>;
+	vcc-max-microamp = <1300000>;
+	vccq-supply = <&vreg_l2i_1p2>;
+	vccq-max-microamp = <1200000>;
+
+	status = "okay";
+};
+
 &usb_1_ss0_dwc3_hs {
 	remote-endpoint = <&pmic_glink_ss0_hs_in>;
 };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
