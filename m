Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C65A3CD37AF
	for <linux-phy@archiver.kernel.org>; Fri,  8 May 2026 23:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sUHo5ashZEU8MMaHGvwT9IUM1GAckKOakHhkJvo8lII=; b=m0X0smc6dkiz63
	fCERWkGE/Rc9zDlBVkHqGx5kbKGByM+JHBqg41tFXisJrAMHnjAHsPD0tFKRNwjZ+nIFdKO0U5h5q
	zV2kVqkfTfsS7XKDGuQuOGWtivOughk4ADxUs0LX+dQVxCIRlXgWppU2WkWVLU4yKIt1LJcsljJ6/
	LDZsVlmZa2c5/NofeynKQCOKRDlhcCqM/Gx6wxYVF2Dz7VfU+LnuDdOD+bUxeWHZikbPMVyZug5Gi
	0ZtyFWMA+GfobiaEUZ0EZS3+s+OZ1CinKaq7J9VjMRphVUyhgHyIxNLCWGgAlamK/+dn12jhCG/vT
	/A6UYpXFYCvP47S9i+5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLUfS-00000007l3m-2FJG;
	Fri, 08 May 2026 23:31:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLUfN-00000007l0I-0DKa
	for linux-phy@lists.infradead.org;
	Fri, 08 May 2026 23:31:34 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 648MxvA1318082
	for <linux-phy@lists.infradead.org>; Fri, 8 May 2026 23:31:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q8sd/17x3xhsbei5MVOx3IatSw/3qNBHOUC5nmh2lr0=; b=TOZRVGgi/e9ExeiM
	T3CMkWyUXUV/ceu54rkXjnmpPPShC1N9OI95NmVHZUODmuwAQNshn1a9GoWJ32Bd
	pRPGLZNE/9xNlICC4i4tw9fS2gyQAQLuoK6VzLIZTYfHcOiJ9MgrLsfSyGJOrkjz
	j4S4SY5IHCBvv+HNNdGakolGmW74V4BGZPT6QaxwYNGU6N/9wBkceNLKuCkRF7P7
	yOFmlDbt1G455KEp53XTn5htFao7hFy3f7oYEBevONkMIaNmpFK0ViKCl1Q3iKDK
	Ouof0bWr7cjhG8IKX9mnBNn0v+Z8/w9TG4W4BmtjHXqjTGLzN1KmHdfII3QEESxt
	UJjC4A==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e1bc03gp6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 08 May 2026 23:31:32 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2f3eb8f3419so198122eec.1
        for <linux-phy@lists.infradead.org>; Fri, 08 May 2026 16:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778283092; x=1778887892; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q8sd/17x3xhsbei5MVOx3IatSw/3qNBHOUC5nmh2lr0=;
        b=H550xrH/SqO6ROtn+nBcDUdUjr/54hvaa7whE7epmLgUduFNtMtazXxIY148Fe6y0t
         1ShvPCl5+nUyzNFJaEspT2Ba6QMVXCoIHL5mn5GrT2U7jhU3X2rQ3tKZotUxHGRyPKWm
         LObOrzKV+rzkyExEp1XylVVivepBEfNjCY6pbjjBsz4HYAaOC68W6yhO7QQADsgDNr0l
         CSpJdQnaME0NVGRFKoIWVwqGVLorqNFwCUni+DM3mLEQOktqDCgRVGFTiLh1xDK9L0zX
         6TaGh2xMaTtwFkFwwKabBjn+pKfojAr+C/9sd/Ur2wrOV+wOQNsh7VGurYoRLkGOweVJ
         nlJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778283092; x=1778887892;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Q8sd/17x3xhsbei5MVOx3IatSw/3qNBHOUC5nmh2lr0=;
        b=O0FcA9JkVa33sVtRhwuxCr8LzWACL5v23u1P0E0Cyc4pIL4DLWMVLCTUGnI405HU3Q
         X/+UJJOufWOj6g/uLqwTjwboC0ZyPd0LBrVD1I+6nt1UyrxLRZAkIJA0wVi9JfTO+WDf
         3jKDU6UoD6DZ53cF4KPyjPB7g5nFKA392F+chaPj2o40VcLowa/JpyzwghmarOesShfA
         CGKZayK0SW0j5jNrD8NWgCQY1YjZXlQqBnpE+61JZE8GYfP7tyGTJRz6qlti9PTjV4ZN
         choYOfvosJAGyzY6M+nidZQslYerk4EeJvh0EqceMItHZxe+yvIvbXQZzJX1g5Ab3kFX
         AdTA==
X-Forwarded-Encrypted: i=1; AFNElJ+VVmrGibeP26fbAdtEzzUlebqWvYP8EGGvZ1xVIPTSWsyj+clSvlXC40DWKciCk5RGI1xyAgARZLU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxqQTtdrPpdbY4+Hv7UmEfOUsl28gWQdl3ZlYZc2hYc8McMxKWa
	3E4FRiCcpAVBIPCSvoxFTWxYtWpcBYSdNmnG1ddgXF29Vh6AlLSJMHHm7tdPBM3owBmP5q7DaBQ
	7s9japN6vrIdm9X+rcfZeDMMpW08iVLyWH2dsHEvijaczMwOrtBr61tJQiDZyG1TA1PAr
X-Gm-Gg: Acq92OG87YfWtfm+h7rz181b6TUUtmAFyt+sGs9WyWd+GNs8i5aMd2dsefA787DvZxn
	YTdJ+0ri0u8CebkzNhse/iRBCkn/U56z+FbEyBJj6i1coXgBJkh08T9bD7EyesyZ9akc1pPlWLY
	tqCPyfgllMJkgHwG3VyJIkofDNDWj6z+qQkkjsOJR6ehWoA4Z06F9n2Gb03RiKELkoPks0PMoFx
	ai6SNOUILeYqyH/Ckz1IifsqwjDx9HXnXETYv4XdIuVGUf+EN/l1cZ0ZXc1yyhWwXN2TCAbdCdY
	5vyaK5pHIoVN+SadoNz5dm6gDS8Yujvk2blC4D1OMt7uZ5Pi6yf7n18eAxPsHg2FDtVh+yiT9oW
	SJ4d5Z/vIsqxqTI+VuXi88SYQ3niL5If+HrXTukTYoGuctPTPm8r69zMn1h4=
X-Received: by 2002:a05:693c:2c97:b0:2ed:e15:c926 with SMTP id 5a478bee46e88-2f54be949a5mr8032890eec.34.1778283091599;
        Fri, 08 May 2026 16:31:31 -0700 (PDT)
X-Received: by 2002:a05:693c:2c97:b0:2ed:e15:c926 with SMTP id 5a478bee46e88-2f54be949a5mr8032856eec.34.1778283090994;
        Fri, 08 May 2026 16:31:30 -0700 (PDT)
Received: from [169.254.0.3] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2f88885b87dsm5033122eec.21.2026.05.08.16.31.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2026 16:31:30 -0700 (PDT)
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
Date: Fri, 08 May 2026 23:31:25 +0000
Subject: [PATCH 10/10] phy: qcom: qmp-pcie: Add QMP PCIe PHY support for
 Hawi
MIME-Version: 1.0
Message-Id: <20260508-hawi-phy-pcie-v1-10-237b894353fc@oss.qualcomm.com>
References: <20260508-hawi-phy-pcie-v1-0-237b894353fc@oss.qualcomm.com>
In-Reply-To: <20260508-hawi-phy-pcie-v1-0-237b894353fc@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Matthew Leung <matthew.leung@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778283082; l=23455;
 i=matthew.leung@oss.qualcomm.com; s=20260428; h=from:subject:message-id;
 bh=njTYKEVcIXEmxQBeMHbGvqr1n/J5hZF8JSa93K+5qcQ=;
 b=yDiwQF9Iou7yioePm6sa4HlMz0rH5IlKzmf+cJiDdDaqyOsa8SYwKw+qCEzQMO0PT4Pkxn0LV
 hNnPCUKH6NSDhDQboVc2hmJVeeVkKuyMh+/IpWakM6IammcUU9A1Zpf
X-Developer-Key: i=matthew.leung@oss.qualcomm.com; a=ed25519;
 pk=aT25ggJo5PMHLN9N+TsZ3s/BVU++kEYuiFebPWe21+o=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA4MDIzMiBTYWx0ZWRfX2qSRrEBo87kc
 h9olA7qzp9EBCH114dP7dQlzP4Gw2/0i6QkLBrg3oVKy5mSjGgnfscKfF9aCQs1Uo7cJ00j9I+D
 QyPwttEnMxb7gF8Fz/voFTywS0raN+QK+5LGy1kbOkQptEtbUar6B70K+cWHxLWOwJUITUDHxMA
 QbH/HTiAgdnUaOEKkEiW3dYbRZns2Mh/+ma2ISTpBXvVoroecX/mnywbQiB79s69s6Bv6nNhVcK
 s1O2t1tGH91tcZNHlAqbbacpZv9jCEYoMTeq+Lb515URHPCkD8bH6Yy8FAQdYmMYs92JsFalNED
 SgFoegwjqdJ8ghlfU7TqKXuuzEdML3s2rWT6UyhC3dIDGTmPHLhoYFFlnWD/b1gBXts5GsNvvKO
 ZR3pDOHG4EZF2c14gpq1IQZFvFvDfp0qjGzVZig6wK5wWTSNlNHHyhmsc66wGwp7VLFm2s6iHtK
 QDlZCSlqhWXAU8peyoQ==
X-Proofpoint-GUID: eCKTQnLno5CMDd6TbEZszQK_7yc-0VPp
X-Authority-Analysis: v=2.4 cv=JJQLdcKb c=1 sm=1 tr=0 ts=69fe7254 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=Dz4cDvm8OFdBSD4W4bUA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-ORIG-GUID: eCKTQnLno5CMDd6TbEZszQK_7yc-0VPp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-07_02,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 impostorscore=0 spamscore=0 lowpriorityscore=0
 bulkscore=0 priorityscore=1501 suspectscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605080232
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_163133_109345_4941D7C2 
X-CRM114-Status: GOOD (  10.54  )
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

Add the QMP PCIe PHY support for the Gen3 x2 and Gen4 x1 PHY found on
the Hawi platform.

Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 380 +++++++++++++++++++++++++++++++
 1 file changed, 380 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index fb66e2a97ce0..52b160ddd324 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -118,6 +118,20 @@ static const unsigned int pciephy_v8_50_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V8_50_PCS_POWER_DOWN_CONTROL,
 };
 
+static const unsigned int pciephy_v10_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_SW_RESET]			= QPHY_V10_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V10_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V10_PCS_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V10_PCS_POWER_DOWN_CONTROL,
+};
+
+static const unsigned int pciephy_v10_60_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_SW_RESET]			= QPHY_V10_60_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V10_60_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V10_60_PCS_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V10_60_PCS_POWER_DOWN_CONTROL,
+};
+
 static const struct qmp_phy_init_tbl msm8998_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CLK_SELECT, 0x30),
@@ -3222,6 +3236,287 @@ static const struct qmp_phy_init_tbl kaanapali_qmp_gen3x2_pcie_pcs_misc_tbl[] =
 	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_POWER_STATE_CONFIG6, 0x1f),
 };
 
+static const struct qmp_phy_init_tbl hawi_qmp_gen3x2_pcie_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_SSC_EN_CENTER, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_SSC_PER1, 0x62),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_SSC_PER2, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_SSC_STEP_SIZE1_MODE0, 0xf8),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_SSC_STEP_SIZE2_MODE0, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_SSC_STEP_SIZE1_MODE1, 0x93),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_SSC_STEP_SIZE2_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_CLK_ENABLE1, 0x90),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_SYS_CLK_CTRL, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_PLL_IVCO, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_CP_CTRL_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_CP_CTRL_MODE1, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_PLL_RCTRL_MODE1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_PLL_CCTRL_MODE0, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_PLL_CCTRL_MODE1, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_SYSCLK_EN_SEL, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_BG_TIMER, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_LOCK_CMP_EN, 0x42),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_LOCK_CMP1_MODE0, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_LOCK_CMP2_MODE0, 0x0d),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_LOCK_CMP1_MODE1, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_LOCK_CMP2_MODE1, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_DEC_START_MODE0, 0x41),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_DEC_START_MODE1, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_DIV_FRAC_START1_MODE0, 0xab),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_DIV_FRAC_START2_MODE0, 0xaa),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_DIV_FRAC_START3_MODE0, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_DIV_FRAC_START1_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_DIV_FRAC_START2_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_DIV_FRAC_START3_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_VCO_TUNE_MAP, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_CLK_SELECT, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_HSCLK_SEL_1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_CORECLK_DIV_MODE1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_CMN_CONFIG_1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_ADDITIONAL_MISC_3, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_CORE_CLK_EN, 0xa0),
+};
+
+static const struct qmp_phy_init_tbl hawi_qmp_gen3x2_pcie_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_GM_CAL, 0x11),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_00_HIGH, 0xbf),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_00_HIGH2, 0xbf),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_00_HIGH3, 0xb7),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_00_HIGH4, 0xec),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_00_LOW, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_01_HIGH, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_01_HIGH2, 0x49),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_01_HIGH3, 0x1b),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_01_HIGH4, 0x9c),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_01_LOW, 0xd1),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_10_HIGH, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_10_HIGH2, 0x49),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_10_HIGH3, 0x1b),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_10_HIGH4, 0x9c),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_10_LOW, 0xd1),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_TX_ADAPT_PRE_THRESH1, 0x3e),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_TX_ADAPT_PRE_THRESH2, 0x1e),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_TX_ADAPT_POST_THRESH, 0xd2),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_UCDR_FO_GAIN, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_UCDR_SO_GAIN, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_UCDR_SB2_THRESH1, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_UCDR_SB2_THRESH2, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_VGA_CAL_CNTRL2, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_SIGDET_ENABLES, 0x1c),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_SIGDET_CNTRL, 0x60),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_IDAC_TSETTLE_LOW, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_SIGDET_CAL_TRIM, 0x08),
+};
+
+static const struct qmp_phy_init_tbl hawi_qmp_gen3x2_pcie_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V10_TX_LANE_MODE_1, 0x25),
+	QMP_PHY_INIT_CFG(QSERDES_V10_TX_LANE_MODE_3, 0x10),
+	QMP_PHY_INIT_CFG(QSERDES_V10_TX_LANE_MODE_4, 0x31),
+	QMP_PHY_INIT_CFG(QSERDES_V10_TX_LANE_MODE_5, 0x7d),
+	QMP_PHY_INIT_CFG(QSERDES_V10_TX_PI_QEC_CTRL, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V10_TX_RES_CODE_LANE_OFFSET_RX, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V10_TX_RES_CODE_LANE_OFFSET_TX, 0x14),
+};
+
+static const struct qmp_phy_init_tbl hawi_qmp_gen3x2_pcie_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_REFGEN_REQ_CONFIG1, 0x05),
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_RX_SIGDET_LVL, 0x77),
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_RATE_SLEW_CNTRL1, 0x0b),
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_EQ_CONFIG2, 0x0f),
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_PCS_TX_RX_CONFIG, 0x8c),
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_G12S1_TXDEEMPH_M6DB, 0x17),
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_G3S2_PRE_GAIN, 0x2e),
+};
+
+static const struct qmp_phy_init_tbl hawi_qmp_gen3x2_pcie_pcs_misc_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_PCS_EQ_CONFIG1, 0x1e),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_PCS_RXEQEVAL_TIME, 0x27),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_PCS_POWER_STATE_CONFIG2, 0x1d),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_PCS_POWER_STATE_CONFIG4, 0x07),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_PCS_POWER_STATE_CONFIG6, 0x1f),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_PCS_ENDPOINT_REFCLK_DRIVE, 0xc1),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_PCS_OSC_DTCT_ACTIONS, 0x00),
+};
+
+static const struct qmp_phy_init_tbl hawi_qmp_gen4x1_pcie_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_SSC_STEP_SIZE1_MODE1, 0x93),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_SSC_STEP_SIZE2_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_CP_CTRL_MODE1, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_PLL_RCTRL_MODE1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_PLL_CCTRL_MODE1, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_CORECLK_DIV_MODE1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_LOCK_CMP1_MODE1, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_LOCK_CMP2_MODE1, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_DEC_START_MODE1, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_DIV_FRAC_START1_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_DIV_FRAC_START2_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_DIV_FRAC_START3_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_HSCLK_SEL_1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_SSC_STEP_SIZE1_MODE0, 0xf8),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_SSC_STEP_SIZE2_MODE0, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_CP_CTRL_MODE0, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_PLL_CCTRL_MODE0, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_CORECLK_DIV_MODE0, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_LOCK_CMP1_MODE0, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_LOCK_CMP2_MODE0, 0x0d),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_DEC_START_MODE0, 0x41),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_DIV_FRAC_START1_MODE0, 0xab),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_DIV_FRAC_START2_MODE0, 0xaa),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_DIV_FRAC_START3_MODE0, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_HSCLK_HS_SWITCH_SEL_1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_BG_TIMER, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_SSC_PER1, 0x62),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_SSC_PER2, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_CLK_ENABLE1, 0x90),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_SYS_CLK_CTRL, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_PLL_IVCO, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_SYSCLK_EN_SEL, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_LOCK_CMP_EN, 0x46),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_LOCK_CMP_CFG, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_VCO_TUNE_MAP, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_CLK_SELECT, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_CORE_CLK_EN, 0xa0),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_CMN_CONFIG_1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_CMN_MISC1, 0x88),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_CMN_MODE, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_VCO_DC_LEVEL_CTRL, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_PLL_SPARE_FOR_ECO, 0x02),
+};
+
+static const struct qmp_phy_init_tbl hawi_qmp_gen4x1_pcie_txrx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RES_CODE_LANE_OFFSET_TX, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RES_CODE_LANE_OFFSET_RX, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_SIGDET_CAL_CTRL1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_SIGDET_CAL_CTRL2, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_SIGDET_CAL_TRIM, 0x66),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_TX_BAND0, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_TX_BAND1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_SEL_10B_8B, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_SEL_20B_10B, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_EQ_RCF_CTRL_RATE3, 0x22),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_EQ_RCF_CTRL_RATE4, 0x22),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_PHPRE_CTRL, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_FASTLOCK_FO_GAIN_RATE1, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_FASTLOCK_FO_GAIN_RATE2, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_FASTLOCK_FO_GAIN_RATE3, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_FASTLOCK_FO_GAIN_RATE4, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_FASTLOCK_SO_GAIN_RATE1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_FASTLOCK_SO_GAIN_RATE2, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_FASTLOCK_SO_GAIN_RATE3, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_FASTLOCK_SO_GAIN_RATE4, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_PI_CTRL1, 0x40),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_PI_CTRL2, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_PI_CTRL3, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_PI_CTRL4, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_SVS_MODE_CTRL, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RXCLK_DIV2_CTRL, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_BAND_CTRL0, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_TERM_BW_CTRL0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_TERM_BW_CTRL1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_FO_GAIN_RATE1, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_FO_GAIN_RATE2, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_FO_GAIN_RATE3, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_FO_GAIN_RATE4, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_SO_GAIN_RATE1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_SO_GAIN_RATE2, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_SO_GAIN_RATE3, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_SO_GAIN_RATE4, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_PI_CONTROLS, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_AUXDATA_BIN_RATE3, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_AUXDATA_BIN_RATE4, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_EOM_MAX_ERR_LIMIT_LSB, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_EOM_MAX_ERR_LIMIT_MSB, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_VGA_CAL_CNTRL1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_VGA_CAL_MAN_VAL, 0x8e),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_GM_CAL, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_EQU_ADAPTOR_CNTRL6, 0xca),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_SIGDET_ENABLES, 0x1c),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_SIGDET_CNTRL, 0x6f),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_SIGDET_LVL, 0x84),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_SIGDET_DEGLITCH_CNTRL, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_Q_PI_INTRINSIC_BIAS_RATE32, 0x11),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_Q_PI_INTRINSIC_BIAS_RATE45, 0x10),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B0, 0xc2),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B1, 0xc2),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B2, 0xd8),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B3, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B4, 0x98),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B5, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B6, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B7, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B8, 0xc0),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B9, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B10, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE2_B0, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE2_B1, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE2_B2, 0xd8),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE2_B3, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE2_B4, 0x98),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE2_B5, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE2_B6, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE2_B7, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE2_B8, 0xc0),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE2_B9, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE2_B10, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE3_B0, 0x13),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE3_B1, 0xd3),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE3_B2, 0xc0),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE3_B3, 0x13),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE3_B4, 0x13),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE3_B5, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE3_B6, 0x4c),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE3_B7, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE3_B8, 0xc0),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE3_B9, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE3_B10, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B0, 0x24),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B1, 0x24),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B2, 0xc0),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B3, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B4, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B5, 0x24),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B6, 0x2c),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B7, 0x86),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B8, 0x83),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B9, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B10, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_LANE_MODE_1, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_LANE_MODE_2, 0xc0),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_LANE_MODE_3, 0x00),
+};
+
+static const struct qmp_phy_init_tbl hawi_qmp_gen4x1_pcie_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V10_60_PCS_G12S1_TXDEEMPH_M6DB, 0x17),
+	QMP_PHY_INIT_CFG(QPHY_V10_60_PCS_G3S2_PRE_GAIN, 0x2e),
+	QMP_PHY_INIT_CFG(QPHY_V10_60_PCS_RX_SIGDET_LVL, 0xcc),
+	QMP_PHY_INIT_CFG(QPHY_V10_60_PCS_ELECIDLE_DLY_SEL, 0x40),
+	QMP_PHY_INIT_CFG(QPHY_V10_60_PCS_PCS_TX_RX_CONFIG1, 0x04),
+	QMP_PHY_INIT_CFG(QPHY_V10_60_PCS_PCS_TX_RX_CONFIG2, 0x02),
+	QMP_PHY_INIT_CFG(QPHY_V10_60_PCS_EQ_CONFIG4, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_V10_60_PCS_EQ_CONFIG5, 0x22),
+};
+
+static const struct qmp_phy_init_tbl hawi_qmp_gen4x1_pcie_pcs_misc_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_POWER_STATE_CONFIG2, 0x1d),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_PCS_TX_RX_CONFIG, 0xc0),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_ENDPOINT_REFCLK_DRIVE, 0xc1),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_OSC_DTCT_ACTIONS, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_EQ_CONFIG1, 0x16),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_G3_RXEQEVAL_TIME, 0x27),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_G4_RXEQEVAL_TIME, 0x27),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_G4_EQ_CONFIG5, 0x02),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_G4_PRE_GAIN, 0x2e),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_RX_MARGINING_CONFIG1, 0x03),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_RX_MARGINING_CONFIG3, 0x28),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_RX_MARGINING_CONFIG5, 0x0f),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_G3_FOM_EQ_CONFIG5, 0xf2),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_G4_FOM_EQ_CONFIG5, 0xf2),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_POWER_STATE_CONFIG6, 0x1f),
+};
+
 struct qmp_pcie_offsets {
 	u16 serdes;
 	u16 pcs;
@@ -3233,6 +3528,7 @@ struct qmp_pcie_offsets {
 	u16 rx2;
 	u16 txz;
 	u16 rxz;
+	u16 txrx;
 	u16 txrxz;
 	u16 ln_shrd;
 };
@@ -3248,6 +3544,8 @@ struct qmp_phy_cfg_tbls {
 	int txz_num;
 	const struct qmp_phy_init_tbl *rxz;
 	int rxz_num;
+	const struct qmp_phy_init_tbl *txrx;
+	int txrx_num;
 	const struct qmp_phy_init_tbl *pcs;
 	int pcs_num;
 	const struct qmp_phy_init_tbl *pcs_misc;
@@ -3319,6 +3617,7 @@ struct qmp_pcie {
 	void __iomem *rx2;
 	void __iomem *txz;
 	void __iomem *rxz;
+	void __iomem *txrx;
 	void __iomem *ln_shrd;
 
 	void __iomem *port_b;
@@ -3534,6 +3833,23 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_50 = {
 	.txrxz      = 0xd000,
 };
 
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v10_0 = {
+	.serdes		= 0x0000,
+	.pcs		= 0x0400,
+	.pcs_misc	= 0x0800,
+	.tx		= 0x1000,
+	.rx		= 0x1200,
+	.tx2		= 0x1800,
+	.rx2		= 0x1a00,
+};
+
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v10_60 = {
+	.txrx		= 0x0000,
+	.serdes		= 0x1000,
+	.pcs		= 0x1400,
+	.pcs_misc	= 0x1800,
+};
+
 static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
 	.lanes			= 1,
 
@@ -4650,6 +4966,60 @@ static const struct qmp_phy_cfg glymur_qmp_gen4x2_pciephy_cfg = {
 	.phy_status		= PHYSTATUS_4_20,
 };
 
+static const struct qmp_phy_cfg hawi_qmp_gen3x2_pciephy_cfg = {
+	.lanes = 2,
+
+	.offsets		= &qmp_pcie_offsets_v10_0,
+
+	.tbls = {
+		.serdes			= hawi_qmp_gen3x2_pcie_serdes_tbl,
+		.serdes_num		= ARRAY_SIZE(hawi_qmp_gen3x2_pcie_serdes_tbl),
+		.tx			= hawi_qmp_gen3x2_pcie_tx_tbl,
+		.tx_num			= ARRAY_SIZE(hawi_qmp_gen3x2_pcie_tx_tbl),
+		.rx			= hawi_qmp_gen3x2_pcie_rx_tbl,
+		.rx_num			= ARRAY_SIZE(hawi_qmp_gen3x2_pcie_rx_tbl),
+		.pcs			= hawi_qmp_gen3x2_pcie_pcs_tbl,
+		.pcs_num		= ARRAY_SIZE(hawi_qmp_gen3x2_pcie_pcs_tbl),
+		.pcs_misc		= hawi_qmp_gen3x2_pcie_pcs_misc_tbl,
+		.pcs_misc_num		= ARRAY_SIZE(hawi_qmp_gen3x2_pcie_pcs_misc_tbl),
+	},
+
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= pciephy_v10_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS,
+};
+
+static const struct qmp_phy_cfg hawi_qmp_gen4x1_pciephy_cfg = {
+	.lanes = 1,
+
+	.offsets		= &qmp_pcie_offsets_v10_60,
+
+	.tbls = {
+		.serdes			= hawi_qmp_gen4x1_pcie_serdes_tbl,
+		.serdes_num		= ARRAY_SIZE(hawi_qmp_gen4x1_pcie_serdes_tbl),
+		.txrx			= hawi_qmp_gen4x1_pcie_txrx_tbl,
+		.txrx_num		= ARRAY_SIZE(hawi_qmp_gen4x1_pcie_txrx_tbl),
+		.pcs			= hawi_qmp_gen4x1_pcie_pcs_tbl,
+		.pcs_num		= ARRAY_SIZE(hawi_qmp_gen4x1_pcie_pcs_tbl),
+		.pcs_misc		= hawi_qmp_gen4x1_pcie_pcs_misc_tbl,
+		.pcs_misc_num		= ARRAY_SIZE(hawi_qmp_gen4x1_pcie_pcs_misc_tbl),
+	},
+
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= pciephy_v10_60_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS_4_20,
+};
+
 static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -4688,6 +5058,7 @@ static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_c
 	void __iomem *rx = qmp->rx;
 	void __iomem *tx2 = qmp->tx2;
 	void __iomem *rx2 = qmp->rx2;
+	void __iomem *txrx = qmp->txrx;
 	void __iomem *pcs = qmp->pcs;
 	void __iomem *pcs_misc = qmp->pcs_misc;
 	void __iomem *pcs_lane1 = qmp->pcs_lane1;
@@ -4708,6 +5079,8 @@ static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_c
 	qmp_configure_lane(qmp->dev, tx, tbls->tx, tbls->tx_num, 1);
 	qmp_configure_lane(qmp->dev, rx, tbls->rx, tbls->rx_num, 1);
 
+	qmp_configure(qmp->dev, txrx, tbls->txrx, tbls->txrx_num);
+
 	if (cfg->lanes >= 2) {
 		qmp_configure_lane(qmp->dev, tx2, tbls->tx, tbls->tx_num, 2);
 		qmp_configure_lane(qmp->dev, rx2, tbls->rx, tbls->rx_num, 2);
@@ -5294,6 +5667,7 @@ static int qmp_pcie_parse_dt(struct qmp_pcie *qmp)
 	qmp->pcs = base + offs->pcs;
 	qmp->pcs_misc = base + offs->pcs_misc;
 	qmp->pcs_lane1 = base + offs->pcs_lane1;
+	qmp->txrx = base + offs->txrx;
 	qmp->tx = base + offs->tx;
 	qmp->rx = base + offs->rx;
 
@@ -5406,6 +5780,12 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,glymur-qmp-gen5x4-pcie-phy",
 		.data = &glymur_qmp_gen5x4_pciephy_cfg,
+	}, {
+		.compatible = "qcom,hawi-qmp-gen3x2-pcie-phy",
+		.data = &hawi_qmp_gen3x2_pciephy_cfg,
+	}, {
+		.compatible = "qcom,hawi-qmp-gen4x1-pcie-phy",
+		.data = &hawi_qmp_gen4x1_pciephy_cfg,
 	}, {
 		.compatible = "qcom,ipq6018-qmp-pcie-phy",
 		.data = &ipq6018_pciephy_cfg,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
