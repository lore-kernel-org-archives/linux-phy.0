Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A22EEC79F9F
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jan 2026 14:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HqSzB0ZYbstjBHXy5IPcBLuD/Npv2ckGGbFk7W19h7M=; b=B6uS+1j/l8t6LL
	1P1giTftMXB/dSZX8EUF/4MAIeuVwFFbfkCiffDijRvPZ/x3PoT4POFc11lNahz3VmS2O8FV6pefg
	5PrKHAZ780bkkEJwm7+rGBVBsazo39cpLMUGx0JeLicuB37VdckUXbiyDQUiIzLx4rUQZSFJCIM9x
	YxjuTkN8u0b6jKKWGoOXV0Q1Xwj73AVtTcnLqax6Bjj4Y29KdaN+ul0itTdqzNt3BOnTHGSUtS6jQ
	kfQ41p9oSXkzG8k3J3n/Vp8j3Rk0G254FpjvMhHYQz2sXxPUejMcDv7QodbNyeFRzkWpHTQ29cfIh
	DyDGjZtGnQybLcJw6rIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vclri-0000000BZGl-01y1;
	Mon, 05 Jan 2026 14:47:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vclrf-0000000BZFl-05Sb
	for linux-phy@lists.infradead.org;
	Mon, 05 Jan 2026 14:47:24 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6059cktu610319
	for <linux-phy@lists.infradead.org>; Mon, 5 Jan 2026 14:47:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Mty9CPP7Jsu
	pHUVUgRA6WjTGLkSoSb22qlCPdm1xAOg=; b=AZTZ1ot2tPsaM3lII25l/ce4Z3E
	UykNF77AW+sK7pz3dJYS34Ux8qHkn5vgVQi53oIZl8NwWRWqNGof0rmkwyus2VOL
	+2N9MRquPteRPdnPmqyZwUoHSOQSz7G26wIOhrn/JgTxDsoyN36fwym4Te51krMB
	rwikyzRDNuNZwoPXXYCnbtclPr6NdtKDIiLOLjGZ/fckKVNa2KZcukOtcdntE647
	PbiF2A9OcEVk2R1lTGpaG67DvXG0lTLw8wL6wIP6PH1fR2WVRr7vu64pY0gxsEaQ
	WxfUvSOCiO00wuGBONdPI5N87eWsbKBNUBb/TJaCgoSqLCLCTovjN2ZHiRQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgaus0rqf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 05 Jan 2026 14:47:22 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7b4933bc4aeso11748b3a.2
        for <linux-phy@lists.infradead.org>; Mon, 05 Jan 2026 06:47:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767624442; x=1768229242; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mty9CPP7JsupHUVUgRA6WjTGLkSoSb22qlCPdm1xAOg=;
        b=iycb7ituYGrzrg4aCVm93Ci+/zBD7vLOvwdYY8ty0R/D+ReLZyGygSE4ZIrwrK6MQd
         WQ9eHuJHi0BAkbfGIKJ3WmJF8a8/AOZIbzSK5GFO1Y4Sv9sZleFn90x/tmKcgOIxWe+q
         1YAG3Uq8ZOgB/GTdqmF5Z0hyCA3b5pUqbSJbhxQ0OiCbu61gXQL1kojT7RyFcUC2JuKm
         vVOTkQo5fpEI+dsjWvCKEZUtEYHofP4VXYAGnWqsFIlYUIKvas7ghgzJmPfLvYAS+52r
         wdc1hKelYO6TpeS22bqin50N8AB6hLy0lxXCjWX5iHtRKpRePywvlzO75gEm024a+zaE
         VhUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767624442; x=1768229242;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Mty9CPP7JsupHUVUgRA6WjTGLkSoSb22qlCPdm1xAOg=;
        b=jO8pJG6mT9cncSWU+SPu1gdASeekiw5MNyS3NVqcfSdhPnzxwnpMtGX9SzCsNp9J4Y
         eQxhTaEN30TUfKzz3iUM/20mwFni9wL7NjL5c4XFJU/46TI1sc8AJvNWv0I9WHu/hgF9
         7787icbnPDW1M9W7YAIkX+jLWhtKHm/ACoCcT4VtCduyv7QpDYYpeJaPcyPXy07tvezV
         8sN3vruJTFpnMNwitaMYMwyeZLTK7D5aPYpHBaAwwy59SSi3JQPgpff0ksbYqjQDnYYc
         70dJI1nSHE9Abds+GJlm2WGlC/tMAnh1r2o/+GukeY0Ol+bdwmcLciU/sbJOjcusu+LL
         Qdmg==
X-Forwarded-Encrypted: i=1; AJvYcCV2skWBPhvyaeRCKdS2hlzrG9UaJfJ02e/PtOSYDO47iDACEz0DdMpridhvNBXS6xUUMBctL5BsjYo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw2IIxVvFrl/L3OySE+Rc4wliDuYcfFz/KHhcOKfG68j+2bVXKE
	SBd+jtnv2ZagIjq+RqvF2m+C78tFL5Bxd37cIziaLjUekDBKCwIXV16gEw196M9KBiq5SMPs56W
	z3Fq0OqB+I4angtjWduZ7yigr9t3KgT/244vqxW8B4be+yh5vUUR1yycRAEJ42aQ4F51b
X-Gm-Gg: AY/fxX69AHC5QNDz3OC1FF1pNwsq7za3+MZvsiqqLimpcDk5HKpcbstZl56BO5FAfmD
	LXbOYjW43N5yi+XQcNklFoVt3Dpygzpw3lT3kwvKL83WVa9J9ZN6Wx0oe8kYga27sVaUFx7NZYB
	E+EeVot4Q/A22vr1wcUpq5KToUdajFyGQXAoq2V8TYHpLRLJ1+w5uKIDTEc7mC+uN5avxXRoGwb
	YlZFVYiD12zNQD6C+xR+7sUfZFClSQqtJPl0TCwNv7lqFc8Y5rsnj8T/1FZTfuhq1iWh7qSLZ46
	+2gmanuiWw3Ak5tNdn/wp0chLK6bRbnk4lFDCouM5XSuPZT3mPagsbSxAcpL/MXAW/K1eqf93Wu
	TsctPr46lUsRETRaUOYnLOqNRc8OjV7jShig/COsh3I/Gnjy9+lh5
X-Received: by 2002:a05:6a21:33a7:b0:361:2c56:fca8 with SMTP id adf61e73a8af0-376a94bf4d9mr48524640637.50.1767624441919;
        Mon, 05 Jan 2026 06:47:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE2wtrYbipNacalqk2LCQQAhAXGMY/TBWgzGU3+kj5xHT979UWEgYLatyUBSXBbg7RMrIfyjQ==
X-Received: by 2002:a05:6a21:33a7:b0:361:2c56:fca8 with SMTP id adf61e73a8af0-376a94bf4d9mr48524613637.50.1767624441406;
        Mon, 05 Jan 2026 06:47:21 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f476ec311sm6634868a91.4.2026.01.05.06.47.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 06:47:21 -0800 (PST)
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH V3 4/4] arm64: dts: qcom: hamoa-iot-evk: Enable UFS
Date: Mon,  5 Jan 2026 20:16:43 +0530
Message-Id: <20260105144643.669344-5-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: mhEHBiSNfdYySAImTa6bFGXLFV7eHOfV
X-Authority-Analysis: v=2.4 cv=DP6CIiNb c=1 sm=1 tr=0 ts=695bcefa cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=cMKPt8sKVRzp0kMMbBYA:9 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: mhEHBiSNfdYySAImTa6bFGXLFV7eHOfV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDEyOSBTYWx0ZWRfX0UBKMBY23At8
 ErHcPaHw56jUXD5sUQGsee+7ElD0eLh8SlW91S6wlR06+SWDKEkiaJJ/gbdZBM4ycUsYUp8dhE5
 6zJyzVyPkPM3isEZJ9n0DtDOqEP3+a2TxVmD0UchEJ5aC1Xe7SpIstdJkephCGXTlMXHtMJfFDV
 TXfvkwvFkrtlkdk96n+J+sfHiOi7OO4QINgk4sbrXcTP3DBxpx9ixcJZ7sWtWmNtyjgo+bgTgAR
 WJbFcFsQBT2Wjr+4Ut5gauTbXkYTRuT8DLSurwBD+FpBY44ExEzTUWF695KR+IXgFAeJOeHAuUk
 AaJ6c7SQSzwwSQSltE+w7BaSA/hDKGUb7FDlLmBrg1HsbBAR4c///4sL4mfmY9/9E90Au1BJ0UI
 jEDFantAJmc2P9RkRCyjXwhvVn5pzhSbv7liCkCl3vUSG2WkcxNNtBopOAWpL6eRM+q1NWId4sT
 dmQcm+IT0AZCU3J2aPg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 clxscore=1015 impostorscore=0
 malwarescore=0 phishscore=0 adultscore=0 spamscore=0 suspectscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601050129
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_064723_645310_66B6F61C 
X-CRM114-Status: GOOD (  10.21  )
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
Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
index 88e3e7bed998..23cd913b05f5 100644
--- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
+++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
@@ -1253,6 +1253,24 @@ &uart21 {
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
