Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 764CDCD5BB3
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 12:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1D8euqcb0agr7eour4n+w/5Sat3cJZEXjr82LraTBio=; b=jHfc70xZvECxIK
	OcWbSrzvYQZ5RkUK8c4gX+UtXlgjOszrofSsToJV71N6WR/xj5zGTZQndGsJ4yJBknz+i7yBRsom8
	WvFxmMdyE3UU4ZRaH4s4perIOuURc4kgl9jieerfrm12f8bM0aLnf0gIsFycCK3XbkfL5LYG9yKzB
	W3+V2uWzh2sxJ6jtW5cZUvoH7fj2tRxgfkROKQZm4cuH8qzIapbchY7cG0JIDg2QlVJJZadxbDUCj
	/XzZJKZxHP93lJQfEcOcVPVMZcp6VUY7rP826GPPvYEzinXh6UId10nmYhVo4ADtVflyEpSLdbOVH
	w3C2SdzCVnbDF1Yb2tmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ2xn-00000007nGz-0wlB;
	Thu, 21 May 2026 12:57:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ2xk-00000007nFw-3F0o
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 12:57:22 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64L99nf03009513
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 12:57:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BlH+KYy5oNWueaqA/6sX4WHaa1oprAYtrZX9JRIQwqc=; b=F2L1EBfaVRxpL6k4
	gxoWs9uFl97rleAH0JxXINdXVgkytR8KlEaWVilon40dRBuTdG8axpFEN9Zoofd6
	xlT/uPUoxpLle5UzMQE3BJI8CHQuOWc88x6MRnqIvkFKQ+d8/8MUUcmSRDWRp5fL
	caIHJGyLZYDlWm8Ngy/S7YTRYXIqJYAb/Ng97laRaUPnwO5smCgltl5INEY0oHP4
	2VEDKw4E8yJhGjPT3wwpVLPgAHuNenjO9JkZLT4ncv5FQmOGg1jWB/YOyrFfbHHv
	SvS2f2DXjTAoXnie5zbp7NLDO2MA4SBAiaE+rdaZM7W1ZknCrZmF1HlttTxWZwpo
	XUv7Ww==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e9sr328dg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 12:57:19 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c82ba4715b6so6685218a12.2
        for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 05:57:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779368239; x=1779973039; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BlH+KYy5oNWueaqA/6sX4WHaa1oprAYtrZX9JRIQwqc=;
        b=L4B8XyaOLJudRPnUy2YQGo/cQEvfkRVmPziA7alkvIz+NVSaYIfzDfJqdyb9+4PkFr
         yTF72H6NXhdvtaCsLZ34sP6YOK9dYvD6qx0ehx2ks63jcrCw3k2d2tU//UAeo2V9eRpW
         AVkZ1p3DJfIbODjyFqlK9TnG8240hMUNeSnViEsgzvOAluMpmBPhLsy9MTY0JhH/97H9
         79cNPZfGBl+245OggH72lLZ1MYaH4YgfimTOVGqDpZvbcdItd3ciMMmNp5/PZJHmvotX
         6y4X63RB2bRlYKQnF0xyIFeisd9Gy9uUIRY74A/wKF3Lo+/QNCxijopmck1T0FKQvemT
         W5EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779368239; x=1779973039;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BlH+KYy5oNWueaqA/6sX4WHaa1oprAYtrZX9JRIQwqc=;
        b=FrYgz7CbXYTnrO0b2xNyXdLD6yanxatB7XDxeKgc4WOfIbROZjs/O7yrTHF6fXa1CK
         Dr2IH8yxPGcXPYwbKe5c/W9ca4BPtPC7efZyrpfznC8qRFUjdyfonw4cI7btKWQUtnW5
         qeWKFR7oHO1L5ald+mp2gGHOizxRNMesBV1oQc47XD+AVG1ts2LUaVM77kxuZORCc97d
         ztDo8mgt1L0fzSK9ekhFXYy+0v3ik6QHtFsBri57pbsGeiq41BdZWBR22Pkl8iNoHBZA
         VLtbjaPGfW1TYIE+B4er9zIdLdXLx2ggzmriNOhud2+a2tsEge1KU+CjR/9mRQ2EoMZm
         74qA==
X-Forwarded-Encrypted: i=1; AFNElJ+SYsBFszEkLK4ZDfvtaPJDk2itroLAqnREs0KJQAL4SSKJUEDc7pLvUcF4llZofO56uaOcHYaUT5U=@lists.infradead.org
X-Gm-Message-State: AOJu0YxDpGGamlaPdMpzi+HW73+hBdb/65z6nNPKQQvJwYpaP/yxpseb
	nAmshRLNigkhOV1V+arQLP2lrEN254E2I8Ej9GyOK+MAM+fUkRLNDGXNAoMqgqWY6FofoMVyXNj
	3UJkkiw0AfmG85As8huv3dvYBFMI5M8tbxSD1oaUngT3AO6XuaFCI23DMiQSqG1Q+6Jb6
X-Gm-Gg: Acq92OHwjZm/uVT+pIVrgbNDmWqVRsWF8u7+ftVxCfbRIW0X6Sczc5a/4B3ROZdZpg0
	bXegSi8QWjXhvkMXHWnhKFVbkCY864BUqACcpf3NyLPk/e5UPmN9fUN2tTI8XO1V4bDjVMnDN8y
	J78EFE+uGsgxVpmOYTY5F3Fz7BMIuAid6TV8uFcilTzz2r0ZbO+JRX7gQJVRc9apU/cno+r//r/
	WMkq+KjGiFYl6ASl1wdvoW+/rHjallqkwN+jfuOS4O1UNGlnmGDNtrIBoSqViCS3UQkljH2c+hc
	xhKV2OHSVOYb2BL0Dlhi3H/mSSQGI9Eol3gTaU8r8Y/Hd7gjGsN3nMgg2G1/D3Yh5+Nl7gk1on6
	s7Frs38yQOC9SgEvlOQKHcZYVcxcZC0IrpBAUYGBWCMoET6kIPnJGrEwe
X-Received: by 2002:a05:6a20:939e:b0:3b3:1c7b:ff0 with SMTP id adf61e73a8af0-3b31c7b10d7mr1046904637.32.1779368238842;
        Thu, 21 May 2026 05:57:18 -0700 (PDT)
X-Received: by 2002:a05:6a20:939e:b0:3b3:1c7b:ff0 with SMTP id adf61e73a8af0-3b31c7b10d7mr1046862637.32.1779368238335;
        Thu, 21 May 2026 05:57:18 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c85198f508bsm357984a12.20.2026.05.21.05.57.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2026 05:57:18 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Thu, 21 May 2026 18:26:36 +0530
Subject: [PATCH v2 4/4] PCI: qcom: enable Link retain logic for Hamoa
MIME-Version: 1.0
Message-Id: <20260521-link_retain-v2-4-08ed448b081c@oss.qualcomm.com>
References: <20260521-link_retain-v2-0-08ed448b081c@oss.qualcomm.com>
In-Reply-To: <20260521-link_retain-v2-0-08ed448b081c@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779368212; l=1463;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=pZzEMJhR/i5v6VGBimRugnf0Sex8LsiVoi6Km1GzQBI=;
 b=ENZEZ3anBF5vyw8P5smL6IFR26MJFdIz/IZi6FZXMVa5BNiqYpA1eO+cLdOYOgk37x+LCFMVI
 KMSo3WtqrQ7CNWwBgJxy6PaFLT5ZTVEhTxb/7O0+dGERUViBmDubr21
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: PCw3so3edvO_ck9-RWJ-nEw8I4-ZrLLy
X-Proofpoint-ORIG-GUID: PCw3so3edvO_ck9-RWJ-nEw8I4-ZrLLy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIxMDEzMCBTYWx0ZWRfXxyKSwobEqIwF
 HvhakQCoVrPIWRcSQL2qYaAVisVjcdio24nGGaXnTHW72Jv/45ROZFpNMb+Myh5mergOJMs03Ut
 KK7YS38R/d+cUoU/OEDIzove5BvZsALRyOoABBqIFv4T/bjpDOBvxX9AEVZ0dvPW3a4UTYLpWLw
 FTxnOnXtk4/K/pDHj9slZDxmpMZucD75WGdBC1muw/qjIDe70Rpdfi1p3p6PPGn0GReHVAh4Cv0
 Q1WTNiYT0L0LW859kLd012LOw1aCAt87GawBnbVOpBYdQnfrcYC+k6R8foB0VAn6q/7IfRcRhc8
 YWRhmGGytkIY1MUr/eYrH4h8In7npDxwgFpHMWPoCYYNwczSzpieLuA2TZqYxOW1IPaABjtk/ib
 I5EhLwi35n/xY35wHMVxRAY5+ogpu++VGZM5/ZRtww6OvyP3qDulm3ejguOKcfDOHJ4/D5QgrvL
 zO0eDpofF0MIGlhm2cA==
X-Authority-Analysis: v=2.4 cv=L+YtheT8 c=1 sm=1 tr=0 ts=6a0f012f cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=Py5lcOcq67Lbq8UMOfUA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-21_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 clxscore=1011 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605210130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_055720_930529_A612D555 
X-CRM114-Status: GOOD (  12.47  )
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

The Hamoa platform supports keeping the PCIe link active across
bootloader and kernel handoff. To take advantage of this, introduce a
specific configuration (cfg_x1e80100) with link_retain = true and
update the device match table to use it.

Tested-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index b061eaa227b3..8496eb87debb 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1557,6 +1557,12 @@ static const struct qcom_pcie_cfg cfg_sc8280xp = {
 	.no_l0s = true,
 };
 
+static const struct qcom_pcie_cfg cfg_x1e80100 = {
+	.ops = &ops_1_21_0,
+	.no_l0s = true,
+	.link_retain = true,
+};
+
 static const struct qcom_pcie_cfg cfg_fw_managed = {
 	.firmware_managed = true,
 };
@@ -2199,7 +2205,7 @@ static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,pcie-sm8450-pcie0", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8450-pcie1", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8550", .data = &cfg_1_9_0 },
-	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_sc8280xp },
+	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_x1e80100 },
 	{ }
 };
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
