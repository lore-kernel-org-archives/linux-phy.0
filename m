Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33139CAC5A5
	for <linux-phy@archiver.kernel.org>; Wed, 24 Sep 2025 23:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w0IZvua5u8AfrwDQPpKIbNetxnvOlAfEZNcT1G3h5aQ=; b=M9vkShEhcY5wAW
	NDiKHYtlSIFQvKhzVlv1iRa0eFOfYJtl8knmaZUcoT4y0lnspsgpTC9QcriDiwp0zrY+XTF4icqwc
	BVuzQs7CxL+pDOmHNEJIc0yFV7xcVsGYgIvU7fQjHfOrIq1aJ8i2nRnwwKCoxVt1G8SXkEuJ/nFjg
	LpMmMbyeS232dqZRfRvqdZUAr0gRCX05E/CXE8AaI2n1Xqnc7+eBBabCKNGf7eIOFe71DR3RI/7C9
	u3xdpRG/vJ5E+kC8jCmn4fBb33SUO1s8sq0DcoRZHeCSYX9NSNWhCby1yqfLtTotPjaul/JLFDOcw
	jwDOLgNzuR4F5UYxuqZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1YzQ-00000004ihi-3yxQ;
	Wed, 24 Sep 2025 23:33:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1YzN-00000004icf-3BRN
	for linux-phy@lists.infradead.org;
	Wed, 24 Sep 2025 23:33:35 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OM6ZhO018220
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:33:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Yz/BvssFHt5GhPJ5jIjNsN4INCEzi9FzXidgbvB+9GI=; b=KAiQGfPw/t+HifoN
	MZ6flCEr6VgcIAyZ4zzRySm6LGZFuZR2/3YV6Qjtc/LipexoudI4cVtsDakI+v6g
	wk+u+TyYHrSfKRfaoGxpm7KiMLkQ4CKbSd39kFhMkRemlwYOlNnOb5xYAw94WzzX
	8IB21/7jjcZQnpB0UhmNIzYFSghWnz8qoC8K35epl02ZlgBfVXt+0+5BH/jX0gVN
	xyUc7xXBaumFXPkbFiDb+fHnbYe3xL5ZQENLUwhEWnlNKcTz69qnHfpJ84WX/mz6
	zbV5zGAmvnuVlC8zBxKxOYtKl5xQMzOdjROFxN11IFxlkQtpgbWIiEkw+vJwMICh
	Z3DCqg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3kka0f9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:33:32 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-32ee4998c50so308831a91.3
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 16:33:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756812; x=1759361612;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Yz/BvssFHt5GhPJ5jIjNsN4INCEzi9FzXidgbvB+9GI=;
        b=ij6254EpsmdLajh/6yefXtzYrGy0NGlXXIKLYQQjTE4auDXxa+ctHaYZ5GR/IqwqtX
         1A5rTbQoklRSAtGC++kvO0+UKyXduFpGeXZIVTQbHir+ypUAIEZX+SDot7JTSSS3rYkF
         8tmXXMn9UcJy0xFba7KiGBln6VvArlmiQOSq+VkSzkAvwNitbaP/RbNW3xWHFHRwaKMV
         8iEz3EHnXAYOPCSVNfUk7tk5qIB+xw6ZeyKwK+g9LU4kBuTImBK0ObpORuKdHusMgQw7
         QcifSoOJSwncosIcaD0WhO/iO7pkveCq4uFVoxxhRPsOu2mp+Pg7mvP6i5MY4mtpp9Ew
         DaKQ==
X-Forwarded-Encrypted: i=1; AJvYcCUvqeyiPtSPlCp6yeULDgRSSMSN8ra06KacdbVjrXfAudh/X6Tf1yI65H01vm5Btqr20gFsaVCU6Dc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyaPwjDNRt6d9uqGNK3IWMQT/+OEQL83j2ZGrobiEpNtA0GFXPC
	N7417e9WwQQJ6cOtFVYuwfhMu1LpqkR6RZZqDT3C7DGn0f62loBEqYtCp1WgDJymC+VDsCV9DZp
	TAOGh4BAbdBXRVE4DbyfZbWD70HarY7jrJb1tpHofFiv6XzZ5vbYW3mIx4OxwODgoyLH+
X-Gm-Gg: ASbGncu1Q930tbe3A7Zy/gB1bVSNC4Vlhdk6yQxOM+gZzt2jxjxZStAa0xVTuomUOkG
	3NFxF5HpAwmdxIVNliM5Svb7JrFp9afiVWy+nBdcMielhmDY8IOblbD3CJ9a88KEznXUXpPkai6
	siewDsxwZ1OjeAHR0WhGfXRPk1YPgGlSzfGXsnGeAxvu71GfpI1hh4hUZAaUmz1m5zcEiDUT6yk
	2nHelZzJ9eYZBug9hMtViaM+5N7PkkW+xio1NFrN7Hv5VkFcTVFxTYq+x18MQHgztTjx7m3tj9/
	13ywM68Ol1rzeAgtAUHeaHcrXRj4fmA1v3cDuyfj4b8lrSTyZ5J1xqrvN2TZGbiWGfWEh78AaSj
	kd58HtWFzrgRGXIk=
X-Received: by 2002:a17:90b:388e:b0:32b:df0e:9283 with SMTP id 98e67ed59e1d1-3342a2fcb6dmr1359954a91.34.1758756811698;
        Wed, 24 Sep 2025 16:33:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFTfKG2tsHZ4zSugIWU3V+vBCw8l21C480uIFTEstEMlixyzql/xGMH9Xar4EPxE10NqdcNlw==
X-Received: by 2002:a17:90b:388e:b0:32b:df0e:9283 with SMTP id 98e67ed59e1d1-3342a2fcb6dmr1359928a91.34.1758756811209;
        Wed, 24 Sep 2025 16:33:31 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c53ca107sm392911a12.13.2025.09.24.16.33.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:33:30 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:33:21 -0700
Subject: [PATCH 5/6] phy: qcom-qmp: qserdes-com: Add some more v8 register
 offsets
MIME-Version: 1.0
Message-Id: <20250924-knp-pcie-v1-5-5fb59e398b83@oss.qualcomm.com>
References: <20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com>
In-Reply-To: <20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756801; l=2550;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=JZ5u2/SROv4n6Gk1LJjBIMQTCgNrKo2Vgd3gC5oPGX4=;
 b=GiTKsHEnCOQjMI+jkg3cArhzUYlQry589aNPGywP1MS922MzmpyS88NV4Qx8kqX5sFigiYz+l
 H+IA3OyQrFAD8LzVHq3fmfxyHxESyffUApcvAmRwPR5Y1dcAjVvhpJh
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: Xoz2SplStKIWXJFBNQHy3d3IbrRXMdJn
X-Proofpoint-ORIG-GUID: Xoz2SplStKIWXJFBNQHy3d3IbrRXMdJn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA4OSBTYWx0ZWRfXzmsmhspI68GJ
 LB0zT2gYbi92/y9OLp4xkJj/I3/rx56/oX/LJpu35AMrApur/NjlB+Lg7rTZA4RdT894RHxzSVB
 9BIp359QpeTuaKnX0qRdmz01ECwe4hBkCX5PUD6Z4d3XWl+sJRY8b+Nm+Muj4TXADPS8ICk9a3c
 GBfV1kkwUPknMWrPpbRypvHwkddVePKPL5IDClC9tVZm28lBWB8Bqflw2xwbh2eHji8zyy6i44C
 5cc7Dax8LI+J7MOyYEVHTDw4L0qfk1SEMIsssAaSPkfrv739gPtd1hwJ0T8V3i4RS/92pO1Z1/2
 wg4Ywyv7AtIaGC8GnpISR8u5vJoALVngH9SJiN5yJiCUjp4R/AEwXJ+p2dCHzDBng5NbPidb3hr
 Aovl2Yd7
X-Authority-Analysis: v=2.4 cv=BabY0qt2 c=1 sm=1 tr=0 ts=68d47fcc cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=bnRLXWmTsoN8XshGuM4A:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_163333_929602_E830AA95 
X-CRM114-Status: GOOD (  11.82  )
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

From: Qiang Yu <qiang.yu@oss.qualcomm.com>

Some qserdes-com register offsets for the v8 PHY were previously omitted,
as they were not needed by earlier v8 PHY initialization sequences. Add
these missing v8 register offsets now required to support PCIe QMP PHY on
Kaanapali platform.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h
index d3b2292257bc..d8ac4c4a2c31 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h
@@ -33,6 +33,7 @@
 #define QSERDES_V8_COM_CP_CTRL_MODE0			0x070
 #define QSERDES_V8_COM_PLL_RCTRL_MODE0			0x074
 #define QSERDES_V8_COM_PLL_CCTRL_MODE0			0x078
+#define QSERDES_V8_COM_CORECLK_DIV_MODE0			0x07c
 #define QSERDES_V8_COM_LOCK_CMP1_MODE0			0x080
 #define QSERDES_V8_COM_LOCK_CMP2_MODE0			0x084
 #define QSERDES_V8_COM_DEC_START_MODE0			0x088
@@ -40,6 +41,7 @@
 #define QSERDES_V8_COM_DIV_FRAC_START1_MODE0		0x090
 #define QSERDES_V8_COM_DIV_FRAC_START2_MODE0		0x094
 #define QSERDES_V8_COM_DIV_FRAC_START3_MODE0		0x098
+#define QSERDES_V8_COM_HSCLK_HS_SWITCH_SEL_1		0x09c
 #define QSERDES_V8_COM_VCO_TUNE1_MODE0			0x0a8
 #define QSERDES_V8_COM_VCO_TUNE2_MODE0			0x0ac
 #define QSERDES_V8_COM_BG_TIMER				0x0bc
@@ -47,13 +49,22 @@
 #define QSERDES_V8_COM_SSC_PER1				0x0cc
 #define QSERDES_V8_COM_SSC_PER2				0x0d0
 #define QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN		0x0dc
+#define QSERDES_V8_COM_CLK_ENABLE1		0x0e0
+#define QSERDES_V8_COM_SYS_CLK_CTRL		0x0e4
+#define QSERDES_V8_COM_PLL_IVCO		0x0f4
 #define QSERDES_V8_COM_SYSCLK_BUF_ENABLE		0x0e8
 #define QSERDES_V8_COM_SYSCLK_EN_SEL			0x110
 #define QSERDES_V8_COM_RESETSM_CNTRL			0x118
+#define QSERDES_V8_COM_LOCK_CMP_EN			0x120
 #define QSERDES_V8_COM_LOCK_CMP_CFG			0x124
 #define QSERDES_V8_COM_VCO_TUNE_MAP			0x140
+#define QSERDES_V8_COM_CLK_SELECT			0x164
 #define QSERDES_V8_COM_CORE_CLK_EN			0x170
 #define QSERDES_V8_COM_CMN_CONFIG_1			0x174
+#define QSERDES_V8_COM_CMN_MISC_1			0x184
+#define QSERDES_V8_COM_CMN_MODE			0x188
+#define QSERDES_V8_COM_VCO_DC_LEVEL_CTRL			0x198
+#define QSERDES_V8_COM_PLL_SPARE_FOR_ECO			0x2b4
 #define QSERDES_V8_COM_AUTO_GAIN_ADJ_CTRL_1		0x1a4
 #define QSERDES_V8_COM_AUTO_GAIN_ADJ_CTRL_2		0x1a8
 #define QSERDES_V8_COM_AUTO_GAIN_ADJ_CTRL_3		0x1ac

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
