Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B616660A3822
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 10:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zUmiaxS+;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=kaFOtdmP;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=ibFZaEK+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=IjWFLH7lFVwiycqOEb2G+x354xeaxtUcul9pO+mj9CM=; b=zUmiaxS+hgsIEUqkDEcpTd+6eY
	mC00FW36veuAW0fJMJAWXbvDcvFvSJXjBuhSOfYx45Fcu2jcy6kekEp37V4h1/xrU1yD8aqfzUw1I
	fg6VKiAdeJZA70JI4V2LrkyC4Vtqo/RKcFT5JBsudk3LOBsyNmKMleVkmLc0YttxAml610FzslHwg
	OtGPfwIG18aa9nM8k/GBaRIZQU3qS1AEkxbjvqwJvCu3QjannUqTaZwg0pVgMFN/VpxNPz4WAJj80
	JYpMnCNSplgZ/ev65KqNkRoSTNGDXy0F5VemWRD6Kfg2MmhieFjiU1Knu4/dIII2Y0b48du7APio4
	n0i4fGQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpV1-0000000GCZ1-1n5b;
	Mon, 02 Nov 2026 10:42:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpUz-0000000GCXz-200B
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 10:42:46 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A29B1884015039
	for <linux-phy@lists.infradead.org>; Mon, 2 Nov 2026 10:42:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/104di9z2yneboiEd7DJZFOyly6je1rIz8cvImPZ3Gc=; b=kaFOtdmP024Jr7aS
	G0xi9hA4iBnG5ODY/1hcwxRRjEjhSiHO0bsK3NVaCCsdex7iBF1mHrlcigoQrt92
	QOjhU/HCfwYcJF1bMVd3Xi0TDNjyeYuLJ0wcKljPX5gUxTRunDkg7i7CehUNBI0s
	HLDJBsO2GL3YvBSXIXBnNCjup9J8UItVT8zUicXV2XPToO9wzxpYYMLFhEIWs1Ei
	XoDvCQKlsNsDUNRYaKKDri+yTHWPpncnZXQByHItDE/ojZjMVkCDPd3V/Aqq5qjl
	M98FebJsDaJrLjG1S1Y7OPWFP14URmD8KIZ/8wtPikyOu4OtH505Bv045+HqNc9q
	B9/eKw==
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hn7b6pmh2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 10:42:44 +0000 (GMT)
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-8210034ccc0so3604034a34.1
        for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 02:42:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793616164; x=1794220964; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=/104di9z2yneboiEd7DJZFOyly6je1rIz8cvImPZ3Gc=;
        b=ibFZaEK+U4aAKJhVLPzeLjD8fSeHs99Hw856GFPTolnSxaHxnyBJSlVX8yjJrN/tFm
         4wLSx6vDH/y7eok0Vn/c2Hnu1DsjpCyloa4TDHgo3YGE8nOWdH/y+DqfvHoNNRnmS9wS
         IesGdU5+M2bMxxnwOBtQzPNMHXLk5qgSzG35gJIx+oB/WA7sJ1ee9KOedukWkpFzngez
         hJ8sN5qIYoIxFT06vuuvH6DcApiHFybUYDvx0NmQtWJZqSGLTbmAdgAT1zgx43Y2orOD
         sT8rus5JzDQisyJuFeOsNUMV6l5BX7iVWdAVMcVByEmGyVkyp7GhVwedTDeN+uSZOZC4
         kbPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793616164; x=1794220964;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/104di9z2yneboiEd7DJZFOyly6je1rIz8cvImPZ3Gc=;
        b=YVE8i2b+Buhr7B8eURIgO3KEkMqO4NQAgDK9mFtNn6In0sTsHXp4brdYO0oUD1R0RF
         RekRbkVcfU1CzOJ9CoBndvE4D7v3tGwJz40p7FAGQhHWwUu473G2QV8P1MEnt/j2PF8N
         g0eNePHZcWNIsQ4Ov39SKCRvNkJpA9LBStGYKOwX/NCQwJl3Auh0UMrpryYRoj8GyX3c
         7KM+75SB+qsKfhZnBUh7yDA2TKCoAsMyAFPuMRnMzUt2CBnfWccIkHrKQ6BJQSsgAfCL
         ozcfj02KctW5QMLNmLjgI5w+Pwr+mTP/rTzm/8gDrPZ1TbbTUnvpgDPpI0Ay6bcaaoJo
         Mxfw==
X-Gm-Message-State: AFq9FYK7zCU8MZqxhA4if9tvspp0xyFvlhiKYHf+F+PhYhiXg2hSrKVm
	7UraUJkoe2pCxICvxpMkMgGPeVVgdn+SwE6c6nY8T1qxZ8TeILehpyeMZfa3okZTi2BMnSgL2EW
	3o/PgdFsk+EvOxr+txxZOh8Hbx6WXjpymsxz9KNUl1qJwBXPy5tQrdRFNsT7GFARqNRzf
X-Gm-Gg: AYBFou3rsB6bvwFCaEK5RlWBjiCwtG2c3TX4zsCy2Fo8INR1M450xhQXXbVIkEq4lZ2
	N3jEnu9jxXe8bs976RSuc6QbbjEprjdNaDQnjAy6vFh/W/P6IMEmyL8y8DzUfjrb83s2eZPEF6z
	VlAUBKSSp29mhwm8bvPh4IOTOq7YE4GGN18p6dv6q8d/p4KebFBitDU/MrVQIbfWgg2jjYMFBNE
	Cyj08A09KNMYCQDg9k98aMCdspdWmvB4ytvtNbPzw3eEstVway+wHoTZpVkfiaWgqTfrSN8WMec
	6BiUAAPOSVKgxtY8s3QiddJ8MfNnxQ/vSADZLFGXU0cjJ1BUvh4PABOduy4Cz6KgALTpwgOAnPF
	MKqjlaiZ2TRLl5QjNQTEmk5h7RMd0owpzIllj0K5xItetWhJmjwaxeq5C09hOt7Wj/DjQND5g24
	UdrwSiNJkw8gkWJCuztmEE3SSQgyO9e/G9IxdPZP8tnvyDIN0MMydhxmrUOWQ=
X-Received: by 2002:a05:6808:bc1:b0:53c:156b:a16d with SMTP id 5614622812f47-5640de7bd03mr6296065b6e.56.1793616163682;
        Mon, 02 Nov 2026 02:42:43 -0800 (PST)
X-Received: by 2002:a05:6808:bc1:b0:53c:156b:a16d with SMTP id 5614622812f47-5640de7bd03mr6296049b6e.56.1793616163284;
        Mon, 02 Nov 2026 02:42:43 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-5640fe0fc77sm7447171b6e.12.2026.11.02.02.42.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 02:42:42 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Mon, 02 Nov 2026 02:42:22 -0800
Subject: [PATCH v24 14/15] arm64: dts: qcom: kaanapali: Add camera MCLK
 pinctrl
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261102-kaanapali-camss-v24-14-d6b8f3f6f66f@oss.qualcomm.com>
References: <20261102-kaanapali-camss-v24-0-d6b8f3f6f66f@oss.qualcomm.com>
In-Reply-To: <20261102-kaanapali-camss-v24-0-d6b8f3f6f66f@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.16.1-dev-17221
X-Proofpoint-ORIG-GUID: pfaVrbVNgOD101mvJMHlnccOV2muZsgt
X-Authority-Analysis: v=2.4 cv=QuvLTlyd c=1 sm=1 tr=0 ts=6ae86924 cx=c_pps
 a=+3WqYijBVYhDct2f5Fivkw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=4Dwyees-64n8yO_2jeYA:9 a=QEXdDO2ut3YA:10
 a=eYe2g0i6gJ5uXG_o6N4q:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: pfaVrbVNgOD101mvJMHlnccOV2muZsgt
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAyMDA0MiBTYWx0ZWRfXw29jOcAHwoir
 3pgUL/9FXlrYwiV8AS16NQtRzpxvm4hit/318Ksa5YJCzER5+gwOg/enUF3rMDYKqWTP1QZGMiH
 kVdmK1Idn4BqoV/EVGXDBgq/H9HiMVI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAyMDA0MiBTYWx0ZWRfXx6lXqSZ6sV9Q
 L09iQ/sxFcyAV6BMg0GL4d4Aqrs//b2rJPQRtL49NxioWcaTYLVuP0ouI2HNXHn2+Jw25U6YNLj
 wq73TGVVNlPkT5ei+1Uqi8YK8CQ0BtfaDgrOZE+iyQErA4i4MJqIemP9Lez8ysMKm4VlW7ZOAq/
 WqEowoxwDSYtD3Gr2qAPIVxwV/5n44u4Hp4fAODtYKMYyGaWvyws6M1MpQ5GXiFTFQFlqbYwKAx
 cG4XPHp0SfJncBYyEqlSwgSpY4ZRc2pmR9AXuyoVKfmRxKz0aj+SeDlQWVo0V03zDlc2WeVZmjx
 5RyMSdcqwwA7tjpiPonVMNjOejc+hWm+PW+Nhz7ZnTuYAY/Q/Xhpz/zDRrdZ7XxUe6cmOnZO/Nf
 qklXQrFeslrHyjgEJERa3iyv5nJBV2wyL7piP2+U7regwtxsaCvw/KftXtNSXOBgaNBGA5gKwff
 V6+DDGRU6ZMD06OntkA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-02_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 impostorscore=0 priorityscore=1501 malwarescore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611020042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_024245_635865_0DF4A5BD 
X-CRM114-Status: GOOD (  11.26  )
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

Add TLMM pinctrl states for the camera master clock GPIOs on Kaanapali so
camera sensor nodes can select the proper MCLK pin functions when enabled.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali.dtsi | 56 +++++++++++++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
index fbd65c2ad95e..cf43cb8351ed 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
+++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
@@ -4645,6 +4645,62 @@ tlmm: pinctrl@f100000 {
 			#interrupt-cells = <2>;
 			wakeup-parent = <&pdc>;
 
+			cam_mclk0_default: cam-mclk0-default-state {
+				pins = "gpio89";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk1_default: cam-mclk1-default-state {
+				pins = "gpio90";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk2_default: cam-mclk2-default-state {
+				pins = "gpio91";
+				function = "cam_asc_mclk2";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk3_default: cam-mclk3-default-state {
+				pins = "gpio92";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk4_default: cam-mclk4-default-state {
+				pins = "gpio93";
+				function = "cam_asc_mclk4";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk5_default: cam-mclk5-default-state {
+				pins = "gpio94";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk6_default: cam-mclk6-default-state {
+				pins = "gpio95";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk7_default: cam-mclk7-default-state {
+				pins = "gpio96";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
 			cci0_i2c0_default: cci0-i2c0-default-state {
 				scl-pins {
 					pins = "gpio110";

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
