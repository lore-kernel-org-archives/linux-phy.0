Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 000BECAC5AE
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 02:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+04a+hu65+NfQ9sFVXplEVt/d31w6QJbvvHyBRVw+M=; b=r9y7yXUO7qy0Gr
	NXYdR4igawBmBjMGjCufd2SUsPmso+yKGMvzoGV7OMaj3BBfy6riOKeAMipyssWWOW7+qYZZ/l45/
	pRykN0VVMx/LoP0nCJnGf3hCosS7KWTHVQQug+6HEomgShmaGjJLMvStwAKM0pGEw0xeeWZPs6YSW
	+d1dBgQxYTDN1NarkHFCbzez5ONoBRHpdyZMnJjrN7jnH5MMkRImi/boSsTHUMOinOH2w2Bq7UGHb
	O2Cbi9jMbmRCapALC7XogrWf0panRA21nM2q5ojHDR44Qr5+DQ+jFDxgWc4nuUNhK6jo8GPLqiyoO
	xuuf5cAh8+iMOTHcQ/vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1bjO-00000005Ixi-2LTB;
	Thu, 25 Sep 2025 02:29:14 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1bjK-00000005Isg-1tHY
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 02:29:11 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0gtOU002665
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:29:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=NVYsIQDhA8R
	ySLuD9P7ecPi4IEalfEg3vxqe/TJrcfQ=; b=OCaEVAPvjxbkklv9I1axjPJpqwY
	ntg5/hTbvGbrGrrgMTERYh1AwxwWOjdIIG9XYAapcHT+TZsvEpr8cbgRu7bSsf/r
	LCbvSfAfZ0cKUyO42gkdOirH1ppfbnH0POCE6oUL65JGEn1vDNy0O7uD5h/zeLTw
	yPYLroGiKlxamAWZ8Ifvsl81/XaBQTzUHFBiF9fCWZ04RTn8IIkcY6v6iigZwjuV
	VfteZF6PqT80rX2VALY6574YKTmX7ftyu3OHzXbL4w+pulc9Xw1TAvCEF3gFTpIr
	VHqzZNu1whzZ2giqQcMcZrPTWfYOkrCBFumugIGz+g+mbcbjoL3fjnVuG2w==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajf0yum-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:29:10 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3234811cab3so453953a91.3
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 19:29:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758767349; x=1759372149;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NVYsIQDhA8RySLuD9P7ecPi4IEalfEg3vxqe/TJrcfQ=;
        b=ClRpb9mYx1/OrJ+k3bFwfv2hNcAZ/xxtt0tAYH/qakCHMtgq4pYTbp4zuNqrT9qHth
         p8UZfLS2ZmoHlEDQN+uu2F/HOIIlMeU/tOkL16kLT9KQ4p84HN6m5WW6Y8XdYtLOhKIp
         OTPYdnSmDO5y/HrOmz4Xn5/ZQdyKQpH3/u1hManUVrXrLSIblWkGhvVMTT6V201mXdPq
         r2VQNx7APAfUHh7+oT8KJG+GNOXJZn88IQQphwG8lJ6KgSsQUnxfROVzCIzWvlhDdVeY
         W5UJSwV1wVa/X4K3I3iQARq7BeKoSRcYknP8FNILaWNUJowGb8c+ecI5KooBU0J9kZ/A
         rkpg==
X-Forwarded-Encrypted: i=1; AJvYcCXcSwOnQAjyX17XiG6xhTY76HdQfx8MTFJ+Uplq73a2evn8h+EVPu+Ju0ovyzk9jQSmcTYjrE+Wf2M=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw0OTiRYge3pLmsqNsqqnqMkh4ClIQRT1NshjWo7Lg/YBVqO1VU
	iO0Cyqwrfrd+H+A1nbD+h2BvcawvgX2nRYSmwtzeTjdFrvQh0kvSnK+5N9uyD7EkgIPRoHCBW2y
	BnGg8lYc02AlxW+XjCGd+KxD9gORPS4GOa+xcdng8wQMq6pTdRrjRIhqQl+UVk2GUOscI
X-Gm-Gg: ASbGncsXDMd8+TVtUovTgHMLUfb7E99EULTVSj/geUxEtN0ZLQ9EmbNv00jMdLYwfo8
	guiYPQpN+Gv5kx2uhHtR6l8Ut7sYQQFh/fqRQ+qEgP/EbOYxjTGuSkOG6NksrkDzmzAvu8huuua
	cQ8FUf3Hwc8qvJymFe7frtyf49xcZFYFkI7mjgsolr4P0Opkb5LsdvLyPH/rBDw6RGncSmAC2il
	DPPaz169BNdcRaD1Juia6wyLm3CU/xVZOnDs+OSH0Pjp2D3clw/3ALfrZb0vl8EtKJCpVELc+PQ
	PT6B4NtoDKpi1ohuzAT9YLshjMkvC/zOtz01i4jMbX7rEPUZeVwMT6fOJ2Qlgw3uZvA9ErEANQJ
	gjLNkjB3sVygcGTS3
X-Received: by 2002:a17:90b:4f47:b0:32e:9daa:7347 with SMTP id 98e67ed59e1d1-3342a242c87mr1559889a91.7.1758767349149;
        Wed, 24 Sep 2025 19:29:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IECLCA3QwbkNEpn1Y33npnCoVwb/JYm/tQthSgy9u+tUbbw0LDLNGOOwLt4aOYfh2ilmfQULA==
X-Received: by 2002:a17:90b:4f47:b0:32e:9daa:7347 with SMTP id 98e67ed59e1d1-3342a242c87mr1559869a91.7.1758767348709;
        Wed, 24 Sep 2025 19:29:08 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33471d711ecsm499881a91.4.2025.09.24.19.29.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:29:08 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v3 10/10] phy: qualcomm: eusb2-repeater: Add SMB2370 eUSB2 repeater support
Date: Wed, 24 Sep 2025 19:28:50 -0700
Message-Id: <20250925022850.4133013-11-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
References: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: 7MIQMtvOs0V6fJQ6N2bnF-MvY6bAGR4w
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d4a8f6 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Zq12RZiOzp0PcbRnEbUA:9
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfX3GswVlVH4bcG
 pXR/Jl/HAz35dtdSweUriFHgDeivEaAqQ3aZkjCoQMj50BRfmNCghTxRoR+QuuzIicH5YuLafyS
 g6VpBxeeXotGohRjmS3z1pQnHODew3fWcRuk4QS1Ue8MXenxI0frlX5drz/J6op+4fcjwGkdnDU
 f5n1AFYkCajXsL3w7TIhm0D3nI3ZfoHL9D+ZHF8PsKJntcbR5XPrLl8TmfFnyJuC9OSvtGWpcZH
 lK08TUmu6CVNQkoCq3nWxE96xSCYogr9B5qofdK0qWKws2CnzCj5uvYHPGj9YHrVxNwNYpZaetU
 ZkZIy/xfRykWRgagbb62hPRBItuj0OxZ3GA/z3l11PvLd1j6Z5lmoZxp9eVtmsve65xEIB63JZd
 RNQDHuSC
X-Proofpoint-ORIG-GUID: 7MIQMtvOs0V6fJQ6N2bnF-MvY6bAGR4w
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_192910_522085_E635C4D5 
X-CRM114-Status: GOOD (  14.06  )
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
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
