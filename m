Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 797C3CCD183
	for <linux-phy@archiver.kernel.org>; Wed,  1 Oct 2025 22:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+04a+hu65+NfQ9sFVXplEVt/d31w6QJbvvHyBRVw+M=; b=vmM72+kaRu1R6Z
	0DQibasZLnouxv2TP5LVVviNAGrOURCriWIDHqpSE/kjaTbqXXyd/f/111tqpfmeu9oFYmq4024Q1
	1TPSysDE7om85RjZnzaSXpOMvDfoVSR2Y9xWPvUAsX3pwjoXztVrr4cZ/VZNzoTNPWfLKINeP8yBx
	sTTykU9i4NXHBVZR9K3LqLk8OZwtnBVhqbaDwnSvoLLNqYcGZYIYDOI/j73gfJNhFATZV4RAWuFO/
	FNP0H9Me+rCw/D/8RNJ1JCXaDUJnKVFeVIdhQ8fzS2YAsy0USEIcFSQfhcldaciPeomwxVYTnKk4X
	wrz+TeHfQRBaDxu826vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v44xQ-0000000972L-0vtO;
	Wed, 01 Oct 2025 22:05:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v44xN-000000096zY-2XXY
	for linux-phy@lists.infradead.org;
	Wed, 01 Oct 2025 22:05:54 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591Ic65B019961
	for <linux-phy@lists.infradead.org>; Wed, 1 Oct 2025 22:05:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=NVYsIQDhA8R
	ySLuD9P7ecPi4IEalfEg3vxqe/TJrcfQ=; b=NcV4KpZYz8Xya/lAqkwjI8Lx14D
	feryq2JW3z6hAaS8oD8wcT5f/SPxN0osxdtXPEIPBBnPB8NsFTfQR8bGh4MC66K6
	pzWZ14yvwe5T5aTtlwZKBG0E0J966qKCrqfDvGTgG1XASKrZe1KoxS7mdjHcofb3
	QoV19uLa0TZgpuVBo8j29s7ghiVIFIjxf7I0QWhP2r/Q9n/xEFeRZP850dG7gvd0
	rx+ZD2wV6Nuw9Jn02vfTDEPF6U6mtrvIgECbq1J9G4cnyh7pr8v0ZWW73PBTqg6D
	+41JHmW7wKFSUaWhK9HfSNXhdW/zTWuojaJQm1Ibm5378miKohr2XGeiOvw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49gyu1a9xh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 01 Oct 2025 22:05:53 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b55153c5ef2so204684a12.0
        for <linux-phy@lists.infradead.org>; Wed, 01 Oct 2025 15:05:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759356352; x=1759961152;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NVYsIQDhA8RySLuD9P7ecPi4IEalfEg3vxqe/TJrcfQ=;
        b=Q40b+ppagcaxjURUcCCEE23y3vmZ5qPfqbDZTtdK2pHYA4kqS0u4ec662e9s6WWM7e
         oAKfVMjLTV6O17SVIrpeiglU5VPZE04Uk7Oy8W1yRbGqKgTm0lG5T8XmFzsoKh3rds1N
         jMOKoR7csUW+uhkp8F4IrN0nfg30KT6N3FQIvJGt4J2tcfprEW3zhBJrNouSBWlLkN1a
         EO4xY1ezSCQHmGY/+ypLQXcZu0ZkPrFDEj8bAbEUxF0IUJF1854umQzBaRdUvhuKiFt7
         t0Rs842ti4zkzQ4yQZVUPj8oCJeA7rxhqVKAtbNnGLe8Xk4yOFnwT8l9wg47+hk4NmYB
         ebnw==
X-Forwarded-Encrypted: i=1; AJvYcCUL5U4XHGg5ZDpV39HWQ1HK3dpKy3N5YL23+gcQCHjJzn3V6djc+Q6ftC8qJvroSKsSHh97KBW18lY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwpQM2CH2zmDWSLyA9KMno1G80wZ5DuVfvaV8a6PL4ZvHQvQM2z
	H++u2G4gTlbhI7SzMBfDdb56+3vaFAhPjo7DZr7sPOoPo/Ah2K+s745iomU0RyG7BKcNENwkQtW
	+fZIuiPib09+X65KsEbBTBQffAbj+Gm7UdGwIY5Zw1TzuWYDocvF3XJijmgadbOKbDALg
X-Gm-Gg: ASbGncs3XMhd9QlxwipbDBXKieHPE7zaXrGzKS9eT770LTucYEHx+X7tvx76bAFKOK3
	1mlG1QcGF+6faDMDT6GTJfQrEPORZWRr55i7jNq+ghH7Rc9ydkizV2Ij0+r0Xmniad1aSMvOujs
	A+SdLcU9IsHbg4WGKlPYUJcXO3dFsxpAFJu3ZYpBs4A9Es0AlQAbdyxjmfDqf8J571cJD1iUMoZ
	c7pAljIHyL+6Ke0ZV+SKkCVQhywoy6Jj7SPL3jV225lOxO1uz6MD4XcRZan/SiQSAp6RpNsyokU
	Qi1JQGi+rPzm87DNko1p0UFyC8FNa5tN8R6a8KCkIbne3Ux7EgElzYcGvoXU9M6rFuy10mZ8Zgr
	cvjbylSMo8KLF8FoFjhxWYA==
X-Received: by 2002:a17:903:22c2:b0:25c:46cd:1dc1 with SMTP id d9443c01a7336-28e7f31092cmr55936045ad.33.1759356352136;
        Wed, 01 Oct 2025 15:05:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHqQqqXsWfsPcB2aMVgjy1eDaAlKWRk/y5Tw9L6ueOyV8a1NgF119HAYRfaqcXDXa4fmR6VmA==
X-Received: by 2002:a17:903:22c2:b0:25c:46cd:1dc1 with SMTP id d9443c01a7336-28e7f31092cmr55935695ad.33.1759356351699;
        Wed, 01 Oct 2025 15:05:51 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339b4ea3c3dsm702085a91.5.2025.10.01.15.05.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 15:05:51 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v4 10/10] phy: qualcomm: eusb2-repeater: Add SMB2370 eUSB2 repeater support
Date: Wed,  1 Oct 2025 15:05:34 -0700
Message-Id: <20251001220534.3166401-11-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
References: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=RfGdyltv c=1 sm=1 tr=0 ts=68dda5c1 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=Zq12RZiOzp0PcbRnEbUA:9
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: 5kLPhYH7aiZZr3KuEiIdL2NGu490uQ59
X-Proofpoint-GUID: 5kLPhYH7aiZZr3KuEiIdL2NGu490uQ59
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDAxMDA1OCBTYWx0ZWRfXwEGA51Vza6me
 gWkFyrxFXViQTZjU29IiIe2AgLVuB+p6GPJUDd3cxxzVn2Lm1PUrixt9/E43NewaCxc8oSV0N/y
 OeNHYpcNwZFA4LrXX8YcdulJ98CMTjSd5al4NAGo1DFR8bmg51sogpfp1BEjg24gx6m2lgEeqyb
 hUb8AwRWSZ8aL4nIRkTzy28p4LdfKSXltZIxUONra9Sg6mDpBe2e4VvSyoRZVxGbjK6z0pYQUm0
 glojpoHGu34M9Kzx51TjKtT9bK31nKkt7c+dqjDVELqI/yyxzMY3cnvjKzcT3rVNV8XvVl/yQwi
 CpSQmxP2rBiOchA0cowwQFQQorTAyoa7ESe1EqJ1tNzcq07i5YT1jFFyXfcIhCNJzdOU2rxJefG
 FGIyjq/iTChTUncrm6TjhAGF7DsuiQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_06,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 suspectscore=0 phishscore=0 bulkscore=0 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510010058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_150553_672819_68080F39 
X-CRM114-Status: GOOD (  13.56  )
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
