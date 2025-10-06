Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68242CCD185
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 22:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+04a+hu65+NfQ9sFVXplEVt/d31w6QJbvvHyBRVw+M=; b=l5auWH2ojZzVPb
	Dx7NZjS5fVG+S0tyfAKeDTyrqZbSevQ6iBvZT2D4PUA/Oy3gC1GYTcEJKltYL1KkVSeHevAIDqO6f
	Cf0GZLXPIm/CbNaRzikaTdijMqYe9QNyvRjn2TqojMyD0Y+TsoOznVeiykMw3quu8eIk4oaTJxZJh
	X0SYCRzObWUfX8pCuxjDHrKEDvkYJs2Mm+SADgG9J8YpqRveD2nQ2npnyF3Ka85Y98c7iBiW6h5dJ
	KAO99hd77d/cGYBfSRjNnWR8RHDereOn9dc4WvGnEfyHdP1jHbmM+sFb4CqVl5jbyOT7t82jcXV+x
	9EyDvo+q/9+oivON9Oxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5tZC-00000000uYm-0dZm;
	Mon, 06 Oct 2025 22:20:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5tZ8-00000000uVS-3JdB
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 22:20:24 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 596FBZgf024872
	for <linux-phy@lists.infradead.org>; Mon, 6 Oct 2025 22:20:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=NVYsIQDhA8R
	ySLuD9P7ecPi4IEalfEg3vxqe/TJrcfQ=; b=bEZcXWu8NYn46iYEKSdylzHMVZy
	gooOnhtZQeHCkoXjGF/y0SKEH7q34nM08Ra7APR3HaFpGpUfSRnymRLhRyRsd5HS
	utkBW1Wvn10t51JG9uRC7wrN66j9X7nRK3RRlf7CB5GDWH9hLW0wdDKRqu2Iv1Ap
	zSSVk3Cpom/EAnpcJWyMYo6XNTHm454L4Ab93HbU7OagYHNByUwYFypcu+/6Mfpy
	EEl8724bZapd/NQKFvUMpcfEfZaBTT02iuaxcKfnACJsEg1DxtQoLZh3C6wi4tu1
	enmxOhzdg7rtPBqZWcDR+P7FiUizwnSLDgrL2rVCfZKZdaIX+84nShcPcNw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49mg6a92wn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 22:20:22 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-78106e63bc9so5264852b3a.0
        for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 15:20:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759789221; x=1760394021;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NVYsIQDhA8RySLuD9P7ecPi4IEalfEg3vxqe/TJrcfQ=;
        b=pnA2wE7mrODd7PNe3KKmJVtaQlsxqNJ8Zzl3gcgEJL2U3PYxAEW1+RqjGRNLiCi1xb
         iqf0JUm5TO6okZ4aCc2DQXNyRigzxouLRgY55kIR00WPlTrdiXtJisVwhfsnOkYVEw8i
         p9Cee1yWRXKpwDUXz0TbqngK7og9nmLEOdfNJy0j4fm+sd4jsZnWMrEx3AYkmiJfeNQ+
         +wYVzZ514Vuz1nz0Eg4ZlV8BaUCRJoDLg5G7J/tIKMoOezohljiqtfe8DPc2XcEvDH+C
         ZtcZwQgN5SIrGwX2EJavysYWietl6lFOnomUJyhRqAUMP8RcaW/qncDNyRdpsyuljsQ6
         e4yA==
X-Forwarded-Encrypted: i=1; AJvYcCVWR8cxfHy/iIBWKlW7UzIbpXCZn4TLui7nmbHOeM5roggsF59FKNNwrRekV78IX4HqL1Ydlcj9jH4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwKRAFyC4Gokv0oyE70JTt2dfErCkQRf8TpavEL1xaaGBIl/bsH
	B3inkQpn2aFo45NFHhV4ze/MeYTbRz8wRyN3NDNcAeXPCfkvO2fMlcAsy8jJjMMXchECKEW/2C0
	M7UKNsyG3d/4fQqDsAFUGsgdEeVNWyovowKaNDGEVfTsSQTkyiuWSyCvtQMzsmF4LNeMt
X-Gm-Gg: ASbGncu8S055CF4zN0o510pbcPF1E1VSEnH5mp5kU779JG7rSEncisYs3HXNq7y1jhn
	JebHHaKn0rcgRnDQV/QfORkQM/V8L2byLS5qb8EKsFJQw94oYbnKJb/OfLf1tOQvzGjMHtUc6oK
	FK7Se7ODhTfAj6WBR8FRbD6mFrxsfo6lLNT0/UvA/RVCSF6zgN0agBOLAP3G9VRMvHr6oZGM/kG
	Op+Hdpe9HKFdt5TE/ajSuHsg1YRhHui+zBziw6zUxB2iyJwrVedSVoOvbbXQb8l5PZ57Vgowpne
	4A4t1HaIfHP0Xp+KLHXKilzMmPRauJfcVofgtpI2QRv3X8uNJ9zBp7NXljHF0A+kR7ehqFtpCE2
	LfkLfQ1vMu8nXOfImjEDTpw==
X-Received: by 2002:a05:6a00:2ea7:b0:781:24ec:c8f4 with SMTP id d2e1a72fcca58-78c98d3303amr13937028b3a.3.1759789221441;
        Mon, 06 Oct 2025 15:20:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEmbjvu8YGs2epcEfo1RGDSZj+PsWdieVwkMJHJiW2v7Dd75B2hyrpkavb8BTk22/5l9Ds/9Q==
X-Received: by 2002:a05:6a00:2ea7:b0:781:24ec:c8f4 with SMTP id d2e1a72fcca58-78c98d3303amr13936990b3a.3.1759789220852;
        Mon, 06 Oct 2025 15:20:20 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78b01fb281bsm13734968b3a.37.2025.10.06.15.20.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 15:20:20 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v5 10/10] phy: qualcomm: eusb2-repeater: Add SMB2370 eUSB2 repeater support
Date: Mon,  6 Oct 2025 15:20:02 -0700
Message-Id: <20251006222002.2182777-11-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=QtdTHFyd c=1 sm=1 tr=0 ts=68e440a6 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=Zq12RZiOzp0PcbRnEbUA:9
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: _r74cwVq7AC6k7hhN4mAfTyynXwx6O5a
X-Proofpoint-GUID: _r74cwVq7AC6k7hhN4mAfTyynXwx6O5a
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA2MDEyMSBTYWx0ZWRfX4RXk0iNLe1il
 bzk4+OzxMC2LAjz7a6HWn0rt97rOn/Mobax4WwpmnIRk8jzVO2jji1I13nMBpAZDx/0Un8hc2fw
 /+XPOqjIj1J7BU5Y4D6S1jAhDCbk41C8UYrM6CrhziBNNxHuqUNgCy6Ckw42Cma3A0hcbFi+8fC
 oqxfUHCYpRBPgA/zP5JZ2sQFN9Zp3sX6pbX0gJsaui5ZGYRKxIhxPW8SyoO1+IVxvtrF/n2Ow9/
 LEplXXcYrqZVGe1Ngt2pQay5afU6i7HJmq4KqZ/xYgb367FKG4/OeD4YGzqm6wKRtuTuMz+4GiT
 jhMsHaos86c0Xwljc5D55F9hlIiY+SW0MnjjwQolyVBAgabYbHWe3qXQkrVF6E3iOSmf+dNiWdl
 XHv6pLvJzJr53+ECyFUcvAYC7Su3DQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_06,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 bulkscore=0
 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510060121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_152022_839318_C9706BE6 
X-CRM114-Status: GOOD (  13.20  )
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
