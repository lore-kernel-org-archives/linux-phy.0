Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF9A6EE6428
	for <linux-phy@archiver.kernel.org>; Wed, 31 Dec 2025 10:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X67tRzRmu1aIacQ5uiULYr7cGAxB3aaecsv8pB6IFsI=; b=A9RYFWh9nxUekB
	1HTOwE3W32+GJpZLV4yz6OEn0Os3ooPH38vb7klaHWLiNYhFWZTa59Z6WZH8ShZ3R0xi8j3FHJ5oy
	rcdyMpmPYL/w/kryOPdFDlMB3Jen1itRaBPzyDY96KvDnPMl2D4KNZbkag98blSdMORHJeusmL4Da
	KwKEHwQ1DxtatFsPQRGJaF0F3Cmie1xFBgkOo9MjTsNj8j3TTFdgWIv15EOZJZTJRkE1sliYXSxON
	cW9Dbaxu9GhvNetIZpUAJhS5DHAtnpkvB1pjVw1oBWhgMefZvCaF6GUONVRwXknsM1jKGyB7i1yIG
	aFfuCD4tBeFxGMwB474g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vatKQ-00000005slE-1nMP;
	Wed, 31 Dec 2025 10:21:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vatKO-00000005skf-1DMR
	for linux-phy@lists.infradead.org;
	Wed, 31 Dec 2025 10:21:17 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV3sdmk715146
	for <linux-phy@lists.infradead.org>; Wed, 31 Dec 2025 10:21:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=nzPReENl5jq
	P24RO4wk7cW8ZGHbcPiBK7hn8rIfW3pc=; b=gJMz9/Kx28vsyy5jyipqEuoI3ru
	eNTFhuImHSb/mV/yQoxTRXxGyS6g18f5u6TyOCH6c6m0VdFl5UyawL3BESdOqy/p
	kp1/K/lCV5+A4oUN/eEJcp+dMmWd6I83RnjZRkFEg75CRSXYOECFGOTgMolvEqgx
	FriUwsTaVW3b9YFmkkfCQfAyN8t6QsvlkmynlPxnyS/NR601vLXGwpvOWI969ZD/
	Fhqxi6WOlYGGcLirzIQQ3zMIWXVAmxm3KU6zIrihLHQcfGwyTWz6Xu3/e1uX5lzF
	DQ9O40LUfowITMQ41rq82/jO/LBFnOAJ5JZLu5ROM8djaG+cgR02JefPOcw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcf5yt85s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 31 Dec 2025 10:21:15 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7f66686710fso25060280b3a.3
        for <linux-phy@lists.infradead.org>; Wed, 31 Dec 2025 02:21:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767176474; x=1767781274; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nzPReENl5jqP24RO4wk7cW8ZGHbcPiBK7hn8rIfW3pc=;
        b=isj1vG9HV7jrybg29RMMcnbtr/ThDvxI9cVSbm09Y1j52Mfe7jHk0DhNzBUjuSCQ8N
         lUTI/J8wC68YLcFFFs+Hu8w4pDe6vOdDUG1KQSV30Nrl+VgP5FRgOnmVXGuYD1Jayvuo
         RuHG8MUpINXR2+scNi81gAoO5V+y+6hvH6AAphtDikO3hsUTh3iDL7SpOuSqZybZqaYu
         1danBzN7kAd9U4gqHw/DBsBcD+CwLYk4LAjY79gmcgN9f97mIJx4hW1mSjni/ZvLSbqP
         PbqRVo2TDB4fTFPr707qkEYT+3Mx6ymP3866OS5ThcVtWqwRr9yXN7Qycrxh+5ORxuOq
         pNWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767176474; x=1767781274;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nzPReENl5jqP24RO4wk7cW8ZGHbcPiBK7hn8rIfW3pc=;
        b=VeJWFaFnvCmd8JmI4vcHf+0R/tAv9N4iKn529YO+MIxAShY1GNv++Ty8+1bFRaDEZF
         G5HgKVUSH58vTYxhl+6Akk18TFmTueEEX+mV4NabLxLWox4WasT1tz4UGWoNkxqq6/5N
         JFC7VPV5hliClphvSxVv9+aG1NHrEg1+hMSz9aincyH1PPKlOiNlTASQ8jlrKrce3orP
         bDDUu8uGxmhYCv1jfCKMvznPTNKNUSFfX0Sh54CiJ65h5OPApeDxRiH6tJw2eL1FHLge
         SuWtzZ0Y0GFFfeqvJUHkVVPePYOlOQwLm2er+XI5x184xeJjKUWq8tvHYrOP9dQz0FqZ
         9/zQ==
X-Forwarded-Encrypted: i=1; AJvYcCVN2rRXVppXgLpTfJSUqV59v9CRatP6rAUqlUW6hlrWKMDHJVpdJUOLGvrZB9UxqQobIIXyyogFfyA=@lists.infradead.org
X-Gm-Message-State: AOJu0YwvAjUfBa3d8TDL9HTdudd6rdumIh7i9f0BEs727KdqXaAoqYPA
	G5VzXPO/XSw9+SbFMsEf+UDtz4jMIitQsM0yUFhnUa4nSee7056N0w0SIufoRICBvStCTSa23jg
	4PCTfYWRpL5Xk+dF9epsmm49jI41jY42gAUW7tFPnYcYZS49XZrAYxrdS9fKLSfvFUtX3M4lCNW
	tH
X-Gm-Gg: AY/fxX6RY8dP+FxB1irMwhW9VHD37r99Usg8lT1yH9cVp8iIYLRIk1PeR8kSrgyXAdx
	OAlEinZCtT2DMwHTuufeMHIx8x/wtY53l+dxLQwfcXdXWgV0WzT3Tc2EZ7aIaucGgZzxZqAnrrv
	SxZrgPA0tm5jO3NEOzVUuTUjUsoSF12LrVun0hmyK2zEpzZSLh7nEb+5Gbo1YC3x/6AU4iIVD4U
	+1h2m7iSG98uiKIKJd5HJiAvOD7UjeuQNRguE+NncAXULWMHWyHyl7rStlWjVH+OVdiPYqvyApR
	hMmGrYsWxmYx+OVGiCffgoIOjYSnkg6rciidgyEPeu2CMwhpvNGbmXcPZwXsAsB7CViFPd9SEiN
	oFlBftVh7vfYtFAViz8hAAtmHYYFBC+buxfF8E7WoeAvLDpN+PlCS
X-Received: by 2002:a05:6a20:258b:b0:366:14b0:1a3e with SMTP id adf61e73a8af0-376ab6cf789mr30573494637.76.1767176474035;
        Wed, 31 Dec 2025 02:21:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFy2a0ud3renotrFDPVYfZzPw7C12wYHHNp4u5pkRVwHNh2m7YvZ22IXQudwiY9TrqklLPVXw==
X-Received: by 2002:a05:6a20:258b:b0:366:14b0:1a3e with SMTP id adf61e73a8af0-376ab6cf789mr30573474637.76.1767176473559;
        Wed, 31 Dec 2025 02:21:13 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e9223ae29sm32163920a91.16.2025.12.31.02.21.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 02:21:13 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: [PATCH V2 4/4] arm64: dts: qcom: hamoa-iot-evk: Enable UFS
Date: Wed, 31 Dec 2025 15:49:51 +0530
Message-Id: <20251231101951.1026163-5-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDA5MCBTYWx0ZWRfXzJ185SIyid6C
 LSD9TesxiyBJtnMA90UTVN4V8abDFvknaA9jTULl4K3bW1yIA7Q5ujQYYzkH5XPpLHdtJAGXHrr
 Vuv3rIcgBJiE4zP2cvFSqz9danKE087G8ly75G5ZM7APVJC789lflvDIa1bTTJymdgRAofj0EKi
 0S+D6w4/g0D6clCAjI11EUYBD+W6c+5f/P6FMLbzD6VtCmsyMDWaYTa5gKLdz8nt3ZC2f5r92QA
 i9mODHRq1SjEOhtQc6e0i7XacYCOMiEA1C0gIJQQuVFRUpRIGM+RrmxpVMcJhGtprfNj2LdF1Pf
 WLtLs3GZEoB/FOkV21C1nUAUynkBJFg98AKuvskf7Sn5u+/5QTxXLWtT7HODTXxaY1WD7US2FWm
 LMkFYm2V7UF71v2K1euhsh2lKPX6jafzsAhEYJ/frtYFdYpKyesdua8hkmW6+gOOts4fDj0bycO
 6MfSPdpjaX99dGkzvTw==
X-Proofpoint-ORIG-GUID: sasHVY5RZe_iI9cPLc29Lv2sO6qTIdGp
X-Authority-Analysis: v=2.4 cv=KvNAGGWN c=1 sm=1 tr=0 ts=6954f91b cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=FwCcbryfLnLJMkbT1zkA:9 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: sasHVY5RZe_iI9cPLc29Lv2sO6qTIdGp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 adultscore=0 priorityscore=1501 suspectscore=0
 bulkscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251231_022116_461905_4CEF45D0 
X-CRM114-Status: UNSURE (   9.76  )
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

Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
index 36dd6599402b..2b1e643975d9 100644
--- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
+++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
@@ -1190,6 +1190,24 @@ &uart21 {
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
