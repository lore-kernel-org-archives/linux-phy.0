Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECEE2D3B9B0
	for <linux-phy@archiver.kernel.org>; Tue,  9 Dec 2025 23:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0cdh9RUBfH9d51kiQUK/LIPce65xyJ6QxkMqse1+hPQ=; b=JkAZHuVRu15Wsb
	CFZf7/T/hKxwu3sEou5fGapgYm+Nyo+MtBUQURXyFIDLkgra8ghY5LsMHXRtKWzhqyIJJlJO4gLsF
	f8ClEcMogWgujbIfXXvE1GMEq+HfpCIuPv7iGWryO5U/bDyh5mJ5Em5lPY3T1kpeG5Uyjf3zF988O
	CgGbrRWbGRRa5v3apCPSBRAausElKWQHpmuKaA/fgFKgreCuTL6obBf+V4D7pDXd2//biqvNKkrst
	qATDwK3X9VbjBg4RgXXdO5FPxj1yFpMehLFbcjNk3hl5mlQD5NUlvgAtv0vcCrkp8dM8+xQHG7ciT
	jrXxiX8urd/T9mdWdqPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vT6qE-0000000EtdG-2ouJ;
	Tue, 09 Dec 2025 23:09:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vT6qA-0000000EtaH-3a0q
	for linux-phy@lists.infradead.org;
	Tue, 09 Dec 2025 23:09:55 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B9Mm8KZ104106
	for <linux-phy@lists.infradead.org>; Tue, 9 Dec 2025 23:09:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8Cvg3f2vcTWyvFoYptsB1kBkaF7U0YSfvjmuB16HFzM=; b=Zgs9JabWGzPUGoh5
	JJDHz+qjrPoM87k1+R7iaHF0/t6Uw2HEvEzRE5QZT8K+aSE53FWMar6M0LbcoqYJ
	9HlGyYP3cepQj53aRI/kH1W+sqn/5D9lwUAs0pxepE2vga5zp012+cpjmgesu0oI
	CVIPTJAxeaT9XmkzLBmpbejB7Mttzkcjk/NLhOAdpzggsVP+D9YZ+J9IRrfuRObI
	0GUqTQMMe0YUxIpp77Ww15VANts4iAeAYQjzpqRF/OdS9z8IeL1AfDZ6r9TA2DIj
	B5ocNyrMg63VDFS8H8SAnQDiLPJWSCyanmm0rIKJsB/vguOJbiqb2M+nOwGHcNkI
	zwMtzg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axesf2y2w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 09 Dec 2025 23:09:54 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-343daf0f488so6323334a91.1
        for <linux-phy@lists.infradead.org>; Tue, 09 Dec 2025 15:09:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765321794; x=1765926594; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8Cvg3f2vcTWyvFoYptsB1kBkaF7U0YSfvjmuB16HFzM=;
        b=RtyIxL0ioJ/nCbDerRlFdXM/wOafk1w04kZfr/PyFRrm53r3drHmLc1AfoJ0A16dJ0
         HFLBRue3joj9rVZHnApA/PYx1YQKj6ERtENSHwYLbkP0kvIEn5HsI76XLXJQVUR7/Ijk
         RkXip8oSe8sbPVVxKPkVa8/xwtxftsEK+8SbhH7VaIrqZ0Lji35SfzhbdKfgz9tVAWUZ
         GBhaUQSp1l322aoVMl/buld8h+WpgXhSHFCOuM0mbT7R9aLouk6v+xpsRigJfrBQdBSv
         s96+vxXSUvWCh5z0UisGtsQZtAUuyHQ7ah8sopB9Leobsl2/BXcbJkz+Mk31V3KKte1Z
         tbtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765321794; x=1765926594;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8Cvg3f2vcTWyvFoYptsB1kBkaF7U0YSfvjmuB16HFzM=;
        b=VNISkh3vs8yJPnznvRI/PIWKcNjoyaQWqYT2u1ph7AcelYrKWk1nnd3x2NJO7HuNj4
         +aqb62gUNjb2kzbU+qc8jx8x+NagkUYxDsHtyUY5Vir1LLiGVZ566UQQZA+bO1/3dYuL
         PkkklN5IWnitpjXXeiWZKmg7tjPV4uIgAxNMVoIY6pjHyG49KvZ+j2I9/ps7WHvjC/Zn
         eIZXIoD7uty4bOL6Ec6/nPy2fvZGy2jjUa1Zt5IZmSls/LQkDFOqYXG959L6DN7V33iT
         MkNqXCivg4plv5zTNUl/M2hS61sVjoowcgykp2N9TVooiuRvYCN0Yd5qNgOvl3RfbUNq
         PlFg==
X-Forwarded-Encrypted: i=1; AJvYcCWHfoxtp8Kl33MEvH8nVHYpMtEsKgVMsOA/Zhaw8un5IIOVzIXyvH5/z94Yqx78rCBmCL3qDWYBogQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzVvVUDC7k81VWX6SEO+KEGKTuDcwXK4SFrge/gbscdVkFDil1d
	LvvXD+aZLUcwzidX7uKCIQNEmPSasnBQUovwB4oBtx3o28O3N9RBAHVWVGtw/5L4dpd7G+Tkl8F
	xO4edGMANoA1xWbrVs+24inKo7KGdbxrLYy84alD6XxKzpavwFPN0rxsCmCVIad+olbf1
X-Gm-Gg: ASbGnct/12nXzwPERD/6lf6GckZN5Wtb0EVNAny80tR5ucsddTZDI64Ne2glY9Mu5AO
	Rg3YCx5QnEq8MDA7DDHB0SSeRDGO6YGjf4JPd4pNGDxrnOvPxiYUV6/PoInrTvvr5kIyb+Vm9ff
	blB10DMJmpdDQ14EsANnnxRmHzLR1C5KyNIdIOumlstwRARrCbF+IoPa3v+lpEGGIVpZV10vx9t
	ayA77xl+L3y3zX9IXoRfRB6MDhwCII5/xH50xnEeErPokvWDDmufEr4Tg5/lv2GjUHNy2bBU17b
	UWjLEgn3DP9jAZUGwfRPeKU6mcr7TcmLmUGs9hjjP7swJEHT72P+XeJmKUL+UJL7xqRxllFUJpl
	DMcqVywCSSstkL8trzeME31z9YPQSyDkkYf94L1IqWWjOhvtlbiorWdeZsd+Lwg==
X-Received: by 2002:a05:7022:ef09:b0:119:e56b:98a4 with SMTP id a92af1059eb24-11f2967c808mr302297c88.11.1765321793731;
        Tue, 09 Dec 2025 15:09:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGc7v/gbWC7PcKr4jn0Tlko7NMtddSvfb0J13m56Y9fdoDaOx0+9u/anG4Q7woTwoKHPaVAIQ==
X-Received: by 2002:a05:7022:ef09:b0:119:e56b:98a4 with SMTP id a92af1059eb24-11f2967c808mr302269c88.11.1765321793142;
        Tue, 09 Dec 2025 15:09:53 -0800 (PST)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f283d4811sm3338933c88.11.2025.12.09.15.09.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 15:09:52 -0800 (PST)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, abel.vesa@linaro.org, conor+dt@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, vkoul@kernel.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v8 5/9] phy: qualcomm: eusb2-repeater: Add SMB2370 eUSB2 repeater support
Date: Tue,  9 Dec 2025 15:09:41 -0800
Message-Id: <20251209-linux-next-12825-v8-5-42133596bda0@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
References: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: gMQ8XaFI1BLbqTMOvCDYDQEb2WJHS6sE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDE4MSBTYWx0ZWRfXyUl0U+Bhcidu
 pZ2ysfCAgiaRWK1/mjtwvdsuYeIL6KtexTYyeh3Jwh4EjXSaXIfJsrDNgzzZsEePar0fCUIq5pf
 VPri3Et6eAwwlftOfQL518INLplbDPkNgUgF6kVZpAvx/1gseFHR1Ejf8j5nuiSdo6sBMeYgcVG
 4rwaG60MsvSEbdotKJO5hWnL5Y1OsrPCKc2ZPte03Fz+S5inWV31dqQygRbN70yCHHQ48nlkKW4
 8pYdI4ShlAi5PdwxxxAi1zPhRv9dQynH7rsZRtvUD5gRPjiD/T0N4nvgSw/yDsmCVOhk0wf8EIK
 orcnfWycIJCHCpj2pRFpSNHnkffUhemYa2t5UHLN2ZYzwNtU8rGKGILWN006cWVhTWJE31F1cQK
 VqVcE9CURR+bGzy386HNu/Td76DYOA==
X-Authority-Analysis: v=2.4 cv=fMc0HJae c=1 sm=1 tr=0 ts=6938ac42 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Zq12RZiOzp0PcbRnEbUA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: gMQ8XaFI1BLbqTMOvCDYDQEb2WJHS6sE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 suspectscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 malwarescore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512090181
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_150954_893679_137E1BF2 
X-CRM114-Status: GOOD (  12.63  )
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

Introduce support for the SMB2370 based eUSB2 repeater.  Configure the
proper repeater tuning settings, as if this is not done correctly, it
can lead to instability on the USB2 link, which leads to USB2
enumeration failures, or random disconnects.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index 651a12b59bc8..441996480a67 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -75,6 +75,13 @@ static const struct eusb2_repeater_init_tbl_reg smb2360_init_tbl[] = {
 	{ EUSB2_TUNE_USB2_PREEM, 0x2 },
 };
 
+static const struct eusb2_repeater_init_tbl_reg smb2370_init_tbl[] = {
+	{ EUSB2_TUNE_IUSB2, 0x4 },
+	{ EUSB2_TUNE_SQUELCH_U, 0x3 },
+	{ EUSB2_TUNE_USB2_SLEW, 0x7 },
+	{ EUSB2_TUNE_USB2_PREEM, 0x0 },
+};
+
 static const struct eusb2_repeater_cfg pm8550b_eusb2_cfg = {
 	.init_tbl	= pm8550b_init_tbl,
 	.init_tbl_num	= ARRAY_SIZE(pm8550b_init_tbl),
@@ -97,6 +104,13 @@ static const struct eusb2_repeater_cfg smb2360_eusb2_cfg = {
 	.num_vregs	= ARRAY_SIZE(pm8550b_vreg_l),
 };
 
+static const struct eusb2_repeater_cfg smb2370_eusb2_cfg = {
+	.init_tbl	= smb2370_init_tbl,
+	.init_tbl_num	= ARRAY_SIZE(smb2370_init_tbl),
+	.vreg_list	= pm8550b_vreg_l,
+	.num_vregs	= ARRAY_SIZE(pm8550b_vreg_l),
+};
+
 static int eusb2_repeater_init_vregs(struct eusb2_repeater *rptr)
 {
 	int num = rptr->cfg->num_vregs;
@@ -278,6 +292,10 @@ static const struct of_device_id eusb2_repeater_of_match_table[] = {
 		.compatible = "qcom,smb2360-eusb2-repeater",
 		.data = &smb2360_eusb2_cfg,
 	},
+	{
+		.compatible = "qcom,smb2370-eusb2-repeater",
+		.data = &smb2370_eusb2_cfg,
+	},
 	{ },
 };
 MODULE_DEVICE_TABLE(of, eusb2_repeater_of_match_table);

-- 
2.34.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
