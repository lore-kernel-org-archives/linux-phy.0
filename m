Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6F82CD37AF
	for <linux-phy@archiver.kernel.org>; Fri,  8 May 2026 23:31:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/8zqGPU/ZcKCggjMbMoDeF4tzfm3nXU68sTxiW3Q+yU=; b=HXbtuDOXBTnW89
	26Hd7tlilu3Kbv7x6F61EEUs7pzRpBkQs5h+e+s1cHCguMmXncs5YwyDNOzeZpHmvAqVcDZTNqIuI
	hjASZpHgS3awEu5VJNpebk5sx6fPKXt50XZNF6x1W7pUGo1wLyN4hiuKko4g8wOL9zOt9xBSZ9epH
	H/gH1H6K1uCDBjpNsf0cRX4RL0y5H3j0QuhjUzTnYUeqWF0dZfG2Ibn/mzLq/uvamAxl3/fcXfpif
	NZO1GlzpNLgUYlqZEhbzKAWLtMBHgkNer7MkZa0hRhRNgbJjwui8smEVbvZT9WcJqDNgJZ+HBkDMc
	ZQcKkGratffyWBDIPRjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLUfK-00000007kxT-2Cpg;
	Fri, 08 May 2026 23:31:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLUfG-00000007kuz-2JgU
	for linux-phy@lists.infradead.org;
	Fri, 08 May 2026 23:31:28 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 648GTlME145316
	for <linux-phy@lists.infradead.org>; Fri, 8 May 2026 23:31:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Venx6RUzjC9wNNihizVrtl+8Lnx8Pg3T1wsMj8jld8A=; b=bctKZUFfl0+5FwOe
	8FF5mrcEf65PDXJnOwmzeY2SPTTQ0yBrQTrmAQlKk3rBs75KqvQKNO/Us3R1ZYFZ
	9QuHg1caQWqfveagezvQPHKPmcG5yMWVli60F6Cn+Yk+54kj4a9AEBLOMvu+7jC4
	lgibTQuF5iuys7k6ocKUgQ3E2yhtYz2bf9zZLbfw2SLyFbw60bMVThm0cBmrbqmE
	4uJ40XVJAETLcX24E5fR33LhOkCnJrBrrMQfYiEC/AZonXnOTZNMt8w1H8Yr8CSP
	EKrpOIGYy3ucCcS62wusj79HnEPTpj9easejS8+SFgzZoLgpQROw3z+618/JM9sJ
	Jr/XtA==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e1kdc16pg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 08 May 2026 23:31:26 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2cc75e79b97so208815eec.1
        for <linux-phy@lists.infradead.org>; Fri, 08 May 2026 16:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778283085; x=1778887885; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Venx6RUzjC9wNNihizVrtl+8Lnx8Pg3T1wsMj8jld8A=;
        b=PiWehH2N46NCDfOPb/8TwFVzuh+soI12uTHYoj0fLNsAO5+WNu9GpRbBsRmpkgQ8BP
         2+/pJpbD314vcCb0jSwUyk6tb+oHk43GBO5WPbbYe92pLXHkiYXMrzejbx+A9YhVYM5i
         PtDOlh3OQEMQF2Wt7Ed+nrDUGgRHq05S/6IAdcPMcQCkP3Riyz2rn82xQX0f9opippQk
         24n7r4V3bF3YZjd7v90KSyQ1KZVecTZqi+jxKthfSas5jcBUxJYGjQfB64Y9P30P+2Q0
         vCFskoGqKRk+w6K94w2nB9GJDR55z2lcJPjQRboL2qE/aKM10l9Iq86OGzcA2M3ZduJQ
         BeFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778283085; x=1778887885;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Venx6RUzjC9wNNihizVrtl+8Lnx8Pg3T1wsMj8jld8A=;
        b=e54lhitY8VosB142+Gq1S0jSOwuOvZL1TMazNCCBC8RTsrjzzEmzFjs9+KTTUxFH4V
         8pwaaTUI4kWTYRK2dxUd4WcaZsd4JkRgQLLyaYEapl8f/MUhjig2q9zkNqsfgB7ABVtC
         HrH6fr6/O4iMLYs3zakvpdmaTqVzFz4yLOLVRsrd4Pl9KchQ4Mi9IYAZS94uaGdAhClA
         Ne2Mvc3EtHEZNwH+yKJSyxbrAigS1Q2a3CnAfGXsSw6XpMtA2hec8iGmoV1GLp5LJqu/
         Tzcm3izrCRIHcgIRgFj8oe3iaerfcWmVIfStSiWiL4x17uf0Im5l7vEeV/WAbX7FVfa2
         HabQ==
X-Forwarded-Encrypted: i=1; AFNElJ8SS/OIhbVJmrXboBFO+WHQod8WQoja0p1rstYltYC18XMiwhgH6bWY2+dyPzr504nCquu0xBr9H4Q=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxvwfs4uP598mCG+fmfPTc8H9MVmt5QGtc+SGzBsHK+YMHmJiql
	+Ih2ufgZP8IEaWajIzcywEOQxbFz3hvd3LvQTkg1I1LXKfM9XLNZUOXQQBweJdFybDAx7curspJ
	2rfkLqdDdaLm6rGsk5s8OUacfbMqRgVWPeuOtnfTCe2YQCzFSgSQdnSuD7r6J9Jnm7/fP
X-Gm-Gg: Acq92OGUkhVhaITM+1RrlrIxbjCha4F2yIQ3/9ukkMUZVoYPKngdJTHDU5/lDh90T/8
	7aYiyVhtmPjyzZ4nZdkD7k2EdX5bi4ei/HM8cJuKaO5rjedVa6X6djS8gnLobiL0nzELjHu9SRN
	2z7DwmCMSYXcZuTAQk0wKqY4DFmnIqiF61N9D+Utjh25Hwwv8OtFznA+qcKdcmihvl6RkuGC04k
	GdkNCC7psDnr/bAPxUZIRlIgb2OYI93YurIgvfNers/3fiAFOLo4qe9rFQ3h3lSw8Hzf4128Sa/
	CdmRbc9riDXZ1Bk0JnVviJkhKH+9jti35NH7V/F6jd/ipisgOG+0tjvbO5f66yOEZRJehVQ0Wgh
	o2k+Bu5j5u9+B6ygtEpIf0XHobgU6E6y3hTDH+3MzDSXhRaZcRRG0iUATmJU=
X-Received: by 2002:a05:7300:a987:b0:2f2:8857:1804 with SMTP id 5a478bee46e88-2f54b35fffdmr7390225eec.9.1778283085347;
        Fri, 08 May 2026 16:31:25 -0700 (PDT)
X-Received: by 2002:a05:7300:a987:b0:2f2:8857:1804 with SMTP id 5a478bee46e88-2f54b35fffdmr7390199eec.9.1778283084840;
        Fri, 08 May 2026 16:31:24 -0700 (PDT)
Received: from [169.254.0.3] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2f88885b87dsm5033122eec.21.2026.05.08.16.31.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2026 16:31:24 -0700 (PDT)
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
Date: Fri, 08 May 2026 23:31:17 +0000
Subject: [PATCH 02/10] phy: qcom-qmp: qserdes-com: Add v10 register offsets
MIME-Version: 1.0
Message-Id: <20260508-hawi-phy-pcie-v1-2-237b894353fc@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778283082; l=3231;
 i=matthew.leung@oss.qualcomm.com; s=20260428; h=from:subject:message-id;
 bh=mETc0jlTLmI462gvqIk7CFJGzUvc8N7VZDu2GYCH5bo=;
 b=v5DlRytjlARifsmpU+0dJhbC+fvglCoGZZe8O/SeNIVZ9AHNC9kapnpc0TafHv86LhYiamYAr
 sSSOztczabKC07IZ7091Sh2O7+gsKeIAF/VGIb87F1uXqU1TvxgLxx6
X-Developer-Key: i=matthew.leung@oss.qualcomm.com; a=ed25519;
 pk=aT25ggJo5PMHLN9N+TsZ3s/BVU++kEYuiFebPWe21+o=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA4MDIzMiBTYWx0ZWRfXzEQ4ZHIV8CHQ
 vvyV2Eb/SYEjfVG2DjLuCwSLS1lGGgqYs5395q5hpfm2zc/1b4OGzAqNREPRRE2Uh3Cpchzid8+
 L07n/O1xMxr/ob21XsG6DV82xFaUEzwNxUOC8XcFdqlD1Yw7rYkScgNZfmsyIao7VPGLD6zPmR2
 OfU2P4UC+PaqMaczbZRLWrKvz+EaCOSXW4hxSNFkgZzfmtZeZ4Ly1V9bgc2SK70t5X3xqSZpJ3p
 fbNWG/hdjPUCoQWqt7mIVVanpJaxMzs1ynl9g/9ZadrPIKMzz3MU6/ZwJTz5+M3lnZWJ6JZ4Ff/
 lQXW3d+AklupEYeYllzzRiZHZyFVLgGDKwcaLxphYSHK/OSKNbeB3FWHvO77NpQSDiyu0c5TGwg
 qfC+Sd+hTVqB1rtc2vbgczjxN/f6r+I4Kv+s81yTyaokw/UOisE4fgfv3NlgdAjXhOIjcEAOkHW
 yvBviFVVNw6RPmXdyeA==
X-Authority-Analysis: v=2.4 cv=RZOgzVtv c=1 sm=1 tr=0 ts=69fe724e cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=MN0C-abDVP1yrleAEAUA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-GUID: lFvPQnFQUAUdcDRj57H_haq8u-UBD3-4
X-Proofpoint-ORIG-GUID: lFvPQnFQUAUdcDRj57H_haq8u-UBD3-4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-07_02,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 suspectscore=0 impostorscore=0 malwarescore=0
 adultscore=0 phishscore=0 spamscore=0 priorityscore=1501 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605080232
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_163126_597471_B714CE56 
X-CRM114-Status: GOOD (  13.65  )
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

Hawi SoC uses v10 register definitions for PCIe Gen3 x2. Add the new
QSERDES-COM offsets in a dedicated header file.

Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
---
 .../phy/qualcomm/phy-qcom-qmp-qserdes-com-v10.h    | 49 ++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  2 +
 2 files changed, 51 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v10.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v10.h
new file mode 100644
index 000000000000..09199e7b4aac
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v10.h
@@ -0,0 +1,49 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_COM_V10_H_
+#define QCOM_PHY_QMP_QSERDES_COM_V10_H_
+
+/* Only for QMP V10 PHY - QSERDES COM registers */
+#define QSERDES_V10_COM_SSC_STEP_SIZE1_MODE1		0x00
+#define QSERDES_V10_COM_SSC_STEP_SIZE2_MODE1		0x04
+#define QSERDES_V10_COM_CP_CTRL_MODE1			0x10
+#define QSERDES_V10_COM_PLL_RCTRL_MODE1			0x14
+#define QSERDES_V10_COM_PLL_CCTRL_MODE1			0x18
+#define QSERDES_V10_COM_CORECLK_DIV_MODE1		0x1c
+#define QSERDES_V10_COM_LOCK_CMP1_MODE1			0x20
+#define QSERDES_V10_COM_LOCK_CMP2_MODE1			0x24
+#define QSERDES_V10_COM_DEC_START_MODE1			0x28
+#define QSERDES_V10_COM_DIV_FRAC_START1_MODE1		0x30
+#define QSERDES_V10_COM_DIV_FRAC_START2_MODE1		0x34
+#define QSERDES_V10_COM_DIV_FRAC_START3_MODE1		0x38
+#define QSERDES_V10_COM_HSCLK_SEL_1			0x3c
+#define QSERDES_V10_COM_SSC_STEP_SIZE1_MODE0		0x60
+#define QSERDES_V10_COM_SSC_STEP_SIZE2_MODE0		0x64
+#define QSERDES_V10_COM_CP_CTRL_MODE0			0x70
+#define QSERDES_V10_COM_PLL_RCTRL_MODE0			0x74
+#define QSERDES_V10_COM_PLL_CCTRL_MODE0			0x78
+#define QSERDES_V10_COM_LOCK_CMP1_MODE0			0x80
+#define QSERDES_V10_COM_LOCK_CMP2_MODE0			0x84
+#define QSERDES_V10_COM_DEC_START_MODE0			0x88
+#define QSERDES_V10_COM_DIV_FRAC_START1_MODE0		0x90
+#define QSERDES_V10_COM_DIV_FRAC_START2_MODE0		0x94
+#define QSERDES_V10_COM_DIV_FRAC_START3_MODE0		0x98
+#define QSERDES_V10_COM_BG_TIMER			0xbc
+#define QSERDES_V10_COM_SSC_EN_CENTER			0xc0
+#define QSERDES_V10_COM_SSC_PER1			0xcc
+#define QSERDES_V10_COM_SSC_PER2			0xd0
+#define QSERDES_V10_COM_CLK_ENABLE1			0xe0
+#define QSERDES_V10_COM_SYS_CLK_CTRL			0xe4
+#define QSERDES_V10_COM_PLL_IVCO			0xf4
+#define QSERDES_V10_COM_SYSCLK_EN_SEL			0x110
+#define QSERDES_V10_COM_LOCK_CMP_EN			0x120
+#define QSERDES_V10_COM_VCO_TUNE_MAP			0x140
+#define QSERDES_V10_COM_CLK_SELECT			0x164
+#define QSERDES_V10_COM_CORE_CLK_EN			0x170
+#define QSERDES_V10_COM_CMN_CONFIG_1			0x174
+#define QSERDES_V10_COM_ADDITIONAL_MISC_3		0x1bc
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index a873bdd7bffe..3ac5af7cde6a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -39,6 +39,8 @@
 #include "phy-qcom-qmp-qserdes-txrx-v8.h"
 #include "phy-qcom-qmp-qserdes-lalb-v8.h"
 
+#include "phy-qcom-qmp-qserdes-com-v10.h"
+
 #include "phy-qcom-qmp-qserdes-pll.h"
 
 #include "phy-qcom-qmp-pcs-v2.h"

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
