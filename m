Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46B67E66880
	for <linux-phy@archiver.kernel.org>; Fri, 19 Dec 2025 17:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R71abhwEEu+y3I6TV9hzR9t7MfLbp/UZNpttfDg99iQ=; b=m2gKBr3OEmYMKL
	QgGY0KtbbKx8Zrjsb5s1itG2DGpCi89iiB+gLlwHNsDhQ8bnTzV4zYwbEltBRbgDNDGuUAENumWMG
	85dgZJmw+nFqKAW2P/sa9olADHLTi0hjY3og+NcCxqidKnoLZRaMHovg80mlcG5DkiuNbtKZzTM+2
	usFfu7Y6/zaZOIcni+KSIsyT38xTeIE0oHt/4G3Qwrrvnz068QY9oMWQ655ylLifQeD+bm6uuMSqf
	tdHVhKT0sumtRw2BcdOYX663tml7ZU511YD+iXZpRG9soukzPaf6aI6W1CgKT9EwSvyPqk6lUNLAA
	45lv01V7aoGrfQU29cpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWeKE-0000000AiRN-0ALY;
	Fri, 19 Dec 2025 17:31:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWeKB-0000000AiQi-3vHD
	for linux-phy@lists.infradead.org;
	Fri, 19 Dec 2025 17:31:33 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJFjhbu809851
	for <linux-phy@lists.infradead.org>; Fri, 19 Dec 2025 17:31:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=+HoP4zgJI2H
	QvPd0VfVnVmAlTXxAtZwgmAa2Xf4qdeI=; b=MQpKdii6NHdrT18A5ykgHfeT4w3
	4aM6hClexX9xFlWil6+WYfXe2Qux/f4HuNCmIjDz6V7YUBDbftJHokBpvT4sYROI
	ji1FrpbkVRXUF2+jvymj9JIIS3020M2yQsGsdW3sSpvXj4SnVZVPu1NP94K+eOel
	SAAiwxZV29Kn2wgfT5OmzLgtYwLMx1lZMHTerbRV/Hcm4pU3n8fr/kv1lfpLkVy+
	2+Bt9iZ+jsZlcdVFduKrUTxDMY+iJbvlq6MUJD7qeVl31UeWUy8fGv1kOJQL8Qap
	dIxgmKPJfqJaP6pUzQ30HDEIWW7YKwrRTsDAOFiYVxG/hD0DApvLVKoPJFA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2cbhk8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 19 Dec 2025 17:31:31 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a090819ed1so18383405ad.2
        for <linux-phy@lists.infradead.org>; Fri, 19 Dec 2025 09:31:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766165491; x=1766770291; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+HoP4zgJI2HQvPd0VfVnVmAlTXxAtZwgmAa2Xf4qdeI=;
        b=YlFcV/Mf/pF5waTpH4EhIy+xyIfnZ8s4Q9Epeyg7b5BsrC6Y73JkZwfdA89Lnlk+/0
         WhbadcmYK2HyAc7EejqCE/G4GKMcTiOI05Fr85KCLdJQNtQq1TiuF2XoeY19nGiSeJqC
         JTFjgJ+V2ghEUa87eF/9WXKr6tsO7j/qZ3ugyd8dNHBCwrfPb6duppZ03dSf9+FTxvBS
         1dlXsDkaYNzlSASEvPe8KB2vmJzloNogHNMNt9mh8C0xNq1jM+9qn/q50TjoiO4RS/E6
         TUpv6z5y0G81PB+0wnTpYlhrWnbfr/ouTcJQKKx2wRqmITo5op6IVcxd67wctK/EpINN
         jYVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766165491; x=1766770291;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+HoP4zgJI2HQvPd0VfVnVmAlTXxAtZwgmAa2Xf4qdeI=;
        b=FNhXUxKgDNX5sKlrfXuBHMSXipxOTbT28Dw4LMZdZvabJqKJ2rHFGxJHO/rAPEw80d
         esHKNxkrWbDTLdtzhqNou8NV11N9WRCbX2L15+PAw0tNvAakwP8cPzxS9pmjU6rOO9GV
         EodSMsXB0KmZTiYlK03zZECyXBXIJWtvz5Y2a7yeih/ijPurFPbJqXeNe0aWizc8Vuzn
         ErlnpXJICCLqGZ0J3Qy7C2D/9pS+fsSpyGn5QG4ev18Ao2tp2CciZkFND1bBPeO0CAU5
         RTLRQXt6g7OQnBDkfwTLF6GvSPhU56oCb7fAw6d6HMqIuvmIilxJJQab3N8sdGyHOibj
         Hkeg==
X-Forwarded-Encrypted: i=1; AJvYcCX88TK8p+UTqUouPm9EKklCXngE3DY4NrRi4OmzN3pts1FIYg/H5QZti9rH056ab79H5kaGkz+PGG4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzj76qU4Z3pr7ITk+3/1egHa1VRxvwxdlUvDYG1tAirUUKEr1U/
	+QOp0Bb3IUPsmTPdS2AqRD8mRlDAO3aqa+COjmlAkUB2+N0aNjXHa0p6Q/LfyqjBMozjdqozTTJ
	+ueBkjueRCFvNQ7UcaOxjxJunvouO+0VbG8V7QFwuzaIRVycmDLFaEE+cohF4Kc1pVjh0
X-Gm-Gg: AY/fxX7AT10Az3Swk4qMQgSH5dI1oEm8uQl/TV+JFBQXCbPDBFQ+9Nz1hekK3v8lVOB
	3h/2AxuW0SxYrSAhcCln7V96fBO6ZyVonC9dITfgHjsh+9BP/g4AoTyK1gevq7Ed3ym/CgPUdOB
	NE8lLDn/LxTJTFpfhPFDNJxN5rZQFDDdkIs7oeWQ1ySUVy6Zb8f6FDE9O4M0PpIwTLl+WuxOtfY
	3GGop4Z0FdYnU2UtYdQym9c0FgtLJMgO7FaBn5AiNkGQPKHduTmuMO3Bapa45xD+bq4nkj4tLJb
	60M5YpHeECDsln4cj6YjqbkW0xPwNCePUxv4mu7rtutCObfdpHLuP245ApSJrqNSqGkwik50dKE
	/qyhdm0CvrtayHh1jlb6xll/YiVnSruL7TjL44cHawC/griY=
X-Received: by 2002:a17:902:c403:b0:299:e031:173 with SMTP id d9443c01a7336-2a2f273241fmr37252995ad.35.1766165490832;
        Fri, 19 Dec 2025 09:31:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFzFvMAdz5PgeVAw7CRcWyMY1NGSIrH3Y8keTUbQcE42aBNKPhUnO0LQAbSyeCDChvPK6N/zA==
X-Received: by 2002:a17:902:c403:b0:299:e031:173 with SMTP id d9443c01a7336-2a2f273241fmr37252505ad.35.1766165490222;
        Fri, 19 Dec 2025 09:31:30 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d5f5dasm27568705ad.82.2025.12.19.09.31.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 09:31:29 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Pengyu Luo <mitltlatltl@gmail.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v3 2/3] phy: qualcomm: phy-qcom-eusb2-repeater: Add squelch detect param update
Date: Fri, 19 Dec 2025 23:01:07 +0530
Message-Id: <20251219173108.2119296-3-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
References: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=cpSWUl4i c=1 sm=1 tr=0 ts=69458bf3 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=1szMwrN-8cuOqQ1sM4MA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDE0NiBTYWx0ZWRfX3x7TzEumrFJL
 mxWqowGLAwPuADDuDsHTjxpR5joyyeZUfWEVD1E5rw8bmrQaBrkpRcrrJpiXPa2vJWQLKaHoKdf
 vTHnD2Fk3IeMn5Zsk2tm89o0IvOtE1SELUy8XKD9BtMXGbaR3h1pCNEIzcUaiC2iiqZz1dvjD8/
 ykJAMnkZ4V27N/BN5uaxMVhX+9+s/aLir4lYZXFllQ4Z0BSwPZ7UypEvJbLU2d0cRtIyoxVWOL0
 n5dSJsJb69F4hUtFU51xCHukzeiP1/qvPOtKDMUvdYh8aaBhZeFM2Pv8FYUd0d4S0Ia+/wxOE2/
 rCpVOP6H1AnP9Bv7bXXUuJEXIIVgyqgIrygYbGO6CUa8L3PzdEsdHBf8eseGiejoh1FR/nt+Qq5
 s9sjFHiYKYlrjMMgOSCuurHIKL1rurouFsSlPe6y0NX5X6MvGaZcUKmRlhA9HBnWvlOXSfVyWEu
 xDwRrM0aE+6CS6vvmYA==
X-Proofpoint-GUID: HCyAElilzP41n_mp56xDGgIGkTOabG9G
X-Proofpoint-ORIG-GUID: HCyAElilzP41n_mp56xDGgIGkTOabG9G
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_06,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 suspectscore=0 bulkscore=0 phishscore=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_093131_977437_56FAF9ED 
X-CRM114-Status: GOOD (  15.82  )
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

Add support for overriding Squelch Detect parameter.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index 651a12b59bc8..a75b37d4e16d 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -37,6 +37,17 @@
 #define EUSB2_TUNE_EUSB_EQU		0x5A
 #define EUSB2_TUNE_EUSB_HS_COMP_CUR	0x5B
 
+static const int squelch_detector[] = {
+	[0] = -6000,
+	[1] = -5000,
+	[2] = -4000,
+	[3] = -3000,
+	[4] = -2000,
+	[5] = -1000,
+	[6] = 0,
+	[7] = 1000,
+};
+
 struct eusb2_repeater_init_tbl_reg {
 	unsigned int reg;
 	unsigned int value;
@@ -120,7 +131,9 @@ static int eusb2_repeater_init(struct phy *phy)
 	struct regmap *regmap = rptr->regmap;
 	u32 base = rptr->base;
 	u32 poll_val;
+	s32 dt_val;
 	int ret;
+	int i;
 	u8 val;
 
 	ret = regulator_bulk_enable(rptr->cfg->num_vregs, rptr->vregs);
@@ -147,6 +160,15 @@ static int eusb2_repeater_init(struct phy *phy)
 	if (!of_property_read_u8(np, "qcom,tune-res-fsdif", &val))
 		regmap_write(regmap, base + EUSB2_TUNE_RES_FSDIF, val);
 
+	if (!of_property_read_s32(np, "qcom,squelch-detector-bp", &dt_val)) {
+		for (i = 0; i < ARRAY_SIZE(squelch_detector); i++) {
+			if (squelch_detector[i] == dt_val) {
+				regmap_write(regmap, base + EUSB2_TUNE_SQUELCH_U, i);
+				break;
+			}
+		}
+	}
+
 	/* Wait for status OK */
 	ret = regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, poll_val,
 				       poll_val & RPTR_OK, 10, 5);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
