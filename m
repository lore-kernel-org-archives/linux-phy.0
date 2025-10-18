Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 203E7CCD184
	for <linux-phy@archiver.kernel.org>; Sat, 18 Oct 2025 01:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0EKURsATus411TqDQF7UZiSxunrx7V1zpTYCNCtLXF4=; b=Az4ajP8Zmovp4d
	aZ2iOWe5ZNW242hb2Lw+VUB0ptoGa1IO4vIrv+/f9NjBZZMllCkYVUGP9zCi4yPqsloZXikEe7CNw
	NPRboC12yuMocOlHRoniZya2Z5fX71q+EqsJa8omPBgUnZW0ADPN5gP9tzVwJwiXU3hS1puNvwHHE
	pWq0O6Ax7HxR4lQF2wYET4SyAJkn7T664oLag0RZq71vNaU1rtwIAasbYy4hFteLadjEgj1s/itWy
	iOleZfkHwas/47RADs7guXM4D+dG3ZoCrDZe39yzdwiOxGX6Zeu54usw+cSxiysg6Ap2k5n/o3BLe
	kde86506OsfMzWIJL6xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9vpW-00000009KJo-3cP4;
	Sat, 18 Oct 2025 01:33:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9vpT-00000009KHU-3BkI
	for linux-phy@lists.infradead.org;
	Sat, 18 Oct 2025 01:33:56 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59HJI3wc025718
	for <linux-phy@lists.infradead.org>; Sat, 18 Oct 2025 01:33:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ul01yB/PmIF5rsEoiQYYpJP41+BqBJ4MU+FjnMDvYVQ=; b=b5n/i9ydwyPNRF4C
	mNwPiE/afJxNHr9XdkDxHnofotjPRlipfBXq30EbfqHwJ09tz3WMhUYDSn62HFLA
	sCSziuYYsXqdjFp55VSyb9yka5e1hPTsX5O2onngANc9DS6HHtQOluJHFUPvnBlx
	Dn3uY3cSl/TY7VjJyOphQPGfFXnJ/I/joYP5nY/k7GFcphWNGrWvQD0cGJMHIRlG
	HICjWA6cFIZY0v1S9ltoBmlgh4oHolmPbnLrGtHA7aidNU94BtqjhTv5g6V7HlT1
	gQhB+xjR7xct1E9FV5lmlcOwONY27TWOoLRP3xT51RGhV1Yf2jG/dyjUgCR0e1ON
	W6YyTQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49tqvpqkej-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 18 Oct 2025 01:33:54 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-32eaa47c7c8so2008896a91.3
        for <linux-phy@lists.infradead.org>; Fri, 17 Oct 2025 18:33:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760751233; x=1761356033;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ul01yB/PmIF5rsEoiQYYpJP41+BqBJ4MU+FjnMDvYVQ=;
        b=PxCJ4e69JCLyIQSb6s6AStcXOzPYpNkPix6UlKGYq/YmrzfiHepZkezrx1KmeV+kOm
         b5C/G9Qk4fZFWAiokDPgaAhawserk8N8OIJ9M7cWUSPOTOjgNYUnog7eiKwM2JJ8FNHf
         SsBJ5mYE0ElmQaJk9VvVijne7bmXQIzPoP9H5uxZLLBVAbz35CVOY8p8LqwuTzD7lUnj
         6xkgMlhdYVnU8l8IluKJOuJzSpGCLwgOKlvXJ2Ozmp1TGcsAmY8RTfsNmh7SPGv52vqd
         6RhNO5LlNDqZJJq21m6uV7r+C/yL8GTRLbBXqWXMZC+4CjKm/yIgZY5p0uadybfnTRzQ
         VFEA==
X-Forwarded-Encrypted: i=1; AJvYcCV7SyOVcxrrNIihmNjI71Zuiu6Xz8PPQZ63J6uuxH1WM0ajq1GZ1KnUSw/3bLrkg8j+A+pywUT7yQo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxKAxpJDkNFb+Pu/FVyRzJZzS9qKdKVgGCHblz9QK4QNT0kY90O
	7irjaXhOAQIzuWmaACqcGwSWM/h2MUQmONXgdMJCslHxO1z5hrX0aP5UEV7gBEyd8G4ZFkha5eR
	kQXs4GpSFsWEouNLJXFjqTAhijbi8SGxG5bQx3WIaOHYletH9WhLJW/1yh09uDYYpsBiObnMmx7
	xInnBkIw==
X-Gm-Gg: ASbGncsfX5CmtuFZcGfGYMtMNA00ojwWe/gSBUl/48JkJi4lXxLyw7mIFzex0pbJ/An
	bl7OOPLQ48Nknzj77/8aZYHiFyIOff0THNv4dEE/e25MHAIPavG5uEhP+NG8aNa6jC/2CDJtK1w
	y56xANoc5OZ1LhTJZZL2oa0KdyKhQirF9YCObApOoMSboSjEAC+Mp3jcxxH5HTBYCktujVXQeWn
	4lMgGhy9dDFRbUWA2b5hhFGVxL6VfMh9lRaYlMYgF26CB7rEhJ8SsVoJGrTnUB1/7+rPK6xj9AA
	oBLQ9dPcqFO683AckFtDVht0jVUaf5Ej5bTmi2cY9f76EXaSu752ZfefqF1b1valIkENV2aXfR0
	bNZi9uqp/LExelLmPYKPmty7md0GxXxPd3P8u3LljZioj2Q==
X-Received: by 2002:a17:90b:4fc6:b0:330:6d5e:f17e with SMTP id 98e67ed59e1d1-33bcf8faaeamr7027705a91.24.1760751233323;
        Fri, 17 Oct 2025 18:33:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFhgd8h+gjYCRAgJsNizEhdpEKTIJOJyi7ZEUs7pkgwCNS/nw/yoWOt3jimgW+A8TBDaTv9cQ==
X-Received: by 2002:a17:90b:4fc6:b0:330:6d5e:f17e with SMTP id 98e67ed59e1d1-33bcf8faaeamr7027679a91.24.1760751232945;
        Fri, 17 Oct 2025 18:33:52 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33d5ddf16bcsm791695a91.4.2025.10.17.18.33.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 18:33:52 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Fri, 17 Oct 2025 18:33:43 -0700
Subject: [PATCH v5 6/6] phy: qcom: qmp-pcie: Add support for glymur PCIe
 Gen4 x2 PHY
MIME-Version: 1.0
Message-Id: <20251017-glymur_pcie-v5-6-82d0c4bd402b@oss.qualcomm.com>
References: <20251017-glymur_pcie-v5-0-82d0c4bd402b@oss.qualcomm.com>
In-Reply-To: <20251017-glymur_pcie-v5-0-82d0c4bd402b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Qiang Yu <quic_qianyu@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760751221; l=2061;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=iLPr+Du4SVVY2HNyB1uA8pllKkcuQDXDVG2QxHgn67Y=;
 b=Efk0/KbSfZj/WjkKqRhvcxliPbFO58kqb9rWUzQCQX8ah7wkDvdoRXAx9aYAlPBHZxJEcO4eq
 PxKIJ6L3AIeCJUKTVCeC6B3F3Bfbvt0rn+CAF9ToLzzCsQA8i1HqlDa
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Authority-Analysis: v=2.4 cv=aPD9aL9m c=1 sm=1 tr=0 ts=68f2ee82 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=hii3Kp118aGdntTlwUgA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE2MDAxNyBTYWx0ZWRfXzYMWZPryR4Vc
 a1j9UwuqK1adAs2+6TFTPu25RWFW762P8oORpd5AlWpoa625wacEaegaQPfRv6YGPNouodJHUK0
 14OZzbrt3Y2zDAzoWTERIjglkaSuPZahsTnpBonrwVVH+uq7G2TXDPgnPabwIHfn8hvhYRvrEDF
 cGHq848JGnqedsdr51BmG8q3It0D3SYvnQyphjMqBBxGnrStL10xsJyR1nes2lrhkGxoRYIItAJ
 YEK5yGfxLeaRDQIru2qd/aCuuNSRcTyjQjksmrzrQjme8xP5oF8wJ73M+zfMMIvJBDPM+Xfsoqe
 BV4ee708RncRShTLQvD79Mquttky8c7TCqH4d4so3H0Q4g9IRxTC2kcj775LzvBVtchecFq8eWQ
 1XE6TomXCF1sMT2TLkiiKtLsWqxkEw==
X-Proofpoint-ORIG-GUID: dSisxA-_AORImTqxtOwrtkubYeXwjC98
X-Proofpoint-GUID: dSisxA-_AORImTqxtOwrtkubYeXwjC98
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-18_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 malwarescore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510160017
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_183355_925939_16A4A71E 
X-CRM114-Status: GOOD (  12.83  )
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

From: Qiang Yu <quic_qianyu@quicinc.com>

Add support for Gen4 x2 PCIe QMP PHY found on Glymur platform.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 86b1b7e2da86a8675e3e48e90b782afb21cafd77..2747e71bf865907f139422a9ed33709c4a7ae7ea 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3363,6 +3363,16 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_30 = {
 	.ln_shrd	= 0x8000,
 };
 
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v8 = {
+	.serdes     = 0x1000,
+	.pcs        = 0x1400,
+	.pcs_misc	= 0x1800,
+	.tx		= 0x0000,
+	.rx		= 0x0200,
+	.tx2		= 0x0800,
+	.rx2		= 0x0a00,
+};
+
 static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_50 = {
 	.serdes     = 0x8000,
 	.pcs        = 0x9000,
@@ -4441,6 +4451,21 @@ static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
 	.phy_status		= PHYSTATUS_4_20,
 };
 
+static const struct qmp_phy_cfg glymur_qmp_gen4x2_pciephy_cfg = {
+	.lanes = 2,
+
+	.offsets		= &qmp_pcie_offsets_v8,
+
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= pciephy_v6_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS_4_20,
+};
+
 static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -5192,6 +5217,9 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 
 static const struct of_device_id qmp_pcie_of_match_table[] = {
 	{
+		.compatible = "qcom,glymur-qmp-gen4x2-pcie-phy",
+		.data = &glymur_qmp_gen4x2_pciephy_cfg,
+	}, {
 		.compatible = "qcom,glymur-qmp-gen5x4-pcie-phy",
 		.data = &glymur_qmp_gen5x4_pciephy_cfg,
 	}, {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
