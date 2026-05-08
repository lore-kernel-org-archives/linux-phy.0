Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0529CD3445
	for <linux-phy@archiver.kernel.org>; Fri,  8 May 2026 23:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PqNM5hazy0hxxR8OmERBNzCylU4u+h6SmrvOdJkJsXA=; b=458rSs3fsOByqR
	5c41tuT5sVAuKH6pV0UsuLTAiNyt8A7gaHEd30JOw10QDbAAmAld2j76tUxm5m1A9l7YiaT6LJ4IC
	XLLroZaoMnvPmbfJ17NNMEQZIUZBIZy6jdnV9q/wMvL+f0YluI4oymZheuV3xkt9vnsck7CC3uFlz
	YcyqXBcBoKO93qB/PywODr0m/9Dp2/XssLniHE2JI4KqGn6tp5NCdmyM48aXnh+Lo5vEGq7oA2Q4Z
	FCtoV7UnABvsl2bWFg2mL+YMaRpkc2xfElLzlP/tA9ELcLTf0ur+swVdMfDiJwa3AtEpuDAhyWjZm
	9ZC2FYw4hL7kzWKODs6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLUfO-00000007l1X-1IAM;
	Fri, 08 May 2026 23:31:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLUfL-00000007kyH-0nWx
	for linux-phy@lists.infradead.org;
	Fri, 08 May 2026 23:31:32 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 648KUGu2317564
	for <linux-phy@lists.infradead.org>; Fri, 8 May 2026 23:31:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	z2jDYFyWFwiBr8ROyqOwhRj8gSALzKVWOWbM241VcAk=; b=U2akJPGVtGb2jLF1
	VyAMgiBrbxGw+R+Ubus+qhyeuGmGeoDs3IDBQHy9475bqeF/vxJ0F+BjOpx/YrzR
	fB1sfWCZPwddCHY7XMg+LumGk9Lp8kseKx0wy8+VIB5lmN+u8xoWz7FrskiLl09v
	9G82T2RbZgU8MpWhBwBHA9zBaiRimOsj8F58VgBWB3nyxHebSFHCFvp12V/TDQsf
	9OaXB3OtE6T6+NXvw/mGIf6iLWUs5RcsUk5CN/hwq7yysALRdJd6hdTMoYdaA7f6
	RdICfh6og1ASmClnxnaob3FjmT8DDez29vtVHSAqUaX1so37MjW4iNReIek4DfCh
	JXnuBA==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e1bc03gnv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 08 May 2026 23:31:30 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2ef37c3f773so2972627eec.1
        for <linux-phy@lists.infradead.org>; Fri, 08 May 2026 16:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778283090; x=1778887890; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z2jDYFyWFwiBr8ROyqOwhRj8gSALzKVWOWbM241VcAk=;
        b=ZvWOFp/tko8tZdimfMAbHs3I7YoSit2SCgHexJDf+Jz9iGtS+l771Eq+FRqDdOZVyj
         SPgJdTm0NHK6D0Fn+krxfJ0e+3yHbXCerjqmGC8Qm2lBfF7u/WHWetOQ21vKJDDhJQsQ
         XkXCtIrEH/ZX5BU6dPLlZG/J8dVo4lI9QvJY/SopoBMX1lTmxercfyTcQ5DTnUU2Ma/N
         nJpJwnlP4Dw6YflhfPWiim2inXvJl+iOQePO0Wg5jmE8hy7vn4hwlSkekN7fwdN+RZLc
         u6s0ERWVpBBy2ZCDGZujK3LYv/rh6i89ye4GJWQU5AeqgUHCWL1a6rlkuifLMaBwpliW
         8hTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778283090; x=1778887890;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=z2jDYFyWFwiBr8ROyqOwhRj8gSALzKVWOWbM241VcAk=;
        b=iRa5X7vV1nQIicYgckriM5Md7DFKj4RN05+O8j0aV7+SecfkVMa5ubeVyQcnW5Zs6U
         7dnOwaCnzuBqQWGLjzfTo7jHUOOA95uq7fizLw42mcWVdTtssiebvta3l/Z0ETPXIIYS
         Wb3supPGxgA6qx7R5TBZVXthIoWTy1lfhpTAJgsDzQEvXLea7/nKtGadIUHCFkoD43cp
         engyVBXmOtwWQVb7NQ43NLwd7KGSqGbtYin5d3FkgP1XwkpBmq5R8b/Do6QbUYuW3ZXn
         yHFt7aXQ5gf1MjROpN3fdpWyNgqoktQB76iNjLHt4Ih+tCZ6N79F3SnFLM0bXX7rqt8J
         o4Nw==
X-Forwarded-Encrypted: i=1; AFNElJ/4ztv0UAUYkmk5gHOV0i++7W22Y0tM0BpdEUYHzq5rbMmJR868K+oh+K9mEWnQtW0AUXXGW/XHOfc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwN8RM+kbKoQNKw9eSDdU654lsUEdxcTaeslcZb6TI6hHvlZLBl
	okeCW0jedH3ZPWxmPrFJq+HGRXwsj70s6xVUKa8WTbEBbpImo/i6309uINxA/T5TCC4Q7c0m9ux
	2UI9zhv7ww9kEZalPPELEEHHEuGCViRcDmqoVod1kXlB1v9WFgKDAoqLCm4vl0LuakcNZ
X-Gm-Gg: Acq92OHeW8g7zF19vBOyBtokracTySIYelDldKVjAhoYsUuhrcX6PJSsis1diCoO4EW
	ohqp9Y3Uc15wVE+IhxctJIuOgxqKxVgh0oX1m8AXESxQAKQSHTC2Do+20wEpp1xk0Gc0TMhTXOa
	q7oCorzQXaig3Xt0JHVJdBCzQcAVpDYf3HJXkSrEW61N4ctbg2S0lqSZuvaNbZ9VETqZywqAqQq
	C4rlOMb+YVIsirUUifbQrmpA7GNeGKJUH6VX3CryhMPzoVIIdKwu0hxym8UfXnYEEZTGUauTFWs
	qZ6WmGCYlgUu+eOlrSmjLum7OEFazaRvjuofYWyU2ZqNUq7DFLG8OGGaIvRaIcF/Gi2mzNldBbF
	rTYDrTA1xI4es3ax8pdkoEEmC3GDXxLMKZePubOuSYPAVBv2grASo/4/mXrA=
X-Received: by 2002:a05:7300:4313:b0:2ed:e14:42e7 with SMTP id 5a478bee46e88-2f54b068c4fmr7179511eec.32.1778283090038;
        Fri, 08 May 2026 16:31:30 -0700 (PDT)
X-Received: by 2002:a05:7300:4313:b0:2ed:e14:42e7 with SMTP id 5a478bee46e88-2f54b068c4fmr7179484eec.32.1778283089490;
        Fri, 08 May 2026 16:31:29 -0700 (PDT)
Received: from [169.254.0.3] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2f88885b87dsm5033122eec.21.2026.05.08.16.31.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2026 16:31:29 -0700 (PDT)
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
Date: Fri, 08 May 2026 23:31:23 +0000
Subject: [PATCH 08/10] phy: qcom-qmp: pcs: Add v10.60 register offsets
MIME-Version: 1.0
Message-Id: <20260508-hawi-phy-pcie-v1-8-237b894353fc@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778283082; l=1895;
 i=matthew.leung@oss.qualcomm.com; s=20260428; h=from:subject:message-id;
 bh=2ILPtmC6htJwupXVcqBNOJFTUtBdC7zGearGnbGCWow=;
 b=9X/Fm33TZjr4AzS45pxwdMzaAydcOfoG9fPGrGiA5IkBCbFNsvCvp1zs1OEql78mocn9qMGK6
 8L64aV4TnsGDB3o/H0CL8R5vVcniIMti1GcUrKxkka+w+i8XAXQzsJK
X-Developer-Key: i=matthew.leung@oss.qualcomm.com; a=ed25519;
 pk=aT25ggJo5PMHLN9N+TsZ3s/BVU++kEYuiFebPWe21+o=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA4MDIzMiBTYWx0ZWRfX7rc3d5kw5Ojd
 Udv0QUzZOTH2Sx2BkiymX8aS0ijxUb0qqxXAaVUCja1SQYA/CadRhNQbM7cLFc2JdQWSujQoJOB
 c4LdqyvNqf433wYWiPIaQZZYADUQpV4E43+VElWEW2DxI9xiGv4sOBSpAcV9lMramRBeymYGu2r
 UlQ9ZyVOP6eMMpbnmfmUr6W4yiu91utJOkm3A+gI8mhOUXMM7364h5N4Ji4IWu4BnbUAqvIBsx5
 WUuRu7Z/g6nP39TUtbszpQG84ZicZy7poXlf07g/DYRt9wsM+cTRGIBx7RQzdXgaHoY8LGgfHUl
 LcZoisipH+5kJOGWnb5G8W+FlkKOBW1QKqvVScY3aoWzHigcUfk42TQ7ywMqXOayB7bgsEPjpGa
 7exVkKh87CdQjlWzt3NzzLbzLvufiI5u4HE4gGXRc368f5pMYEr9fyNKCPJYcsj8yI8lK9MgAZU
 SgMXE5MFkcgdYAQuZaw==
X-Proofpoint-GUID: 9RyvEsOKtRoU_Zv5lA3vTd6RHIJKdeNr
X-Authority-Analysis: v=2.4 cv=JJQLdcKb c=1 sm=1 tr=0 ts=69fe7252 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=pc03IfIZ1lXN1Xjd0rsA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-ORIG-GUID: 9RyvEsOKtRoU_Zv5lA3vTd6RHIJKdeNr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-07_02,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 impostorscore=0 spamscore=0 lowpriorityscore=0
 bulkscore=0 priorityscore=1501 suspectscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605080232
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_163131_279922_5C744442 
X-CRM114-Status: GOOD (  13.37  )
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

Hawi SoC bumps up the HW version of QMP phy to v10.60 for PCIe Gen4 x1.
Add the new PCS offsets in a dedicated header file.

Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10_60.h | 23 +++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h            |  2 ++
 2 files changed, 25 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10_60.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10_60.h
new file mode 100644
index 000000000000..fe0279ac4e4d
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10_60.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_V10_60_H_
+#define QCOM_PHY_QMP_PCS_V10_60_H_
+
+/* Only for QMP V10_60 PHY - USB/PCIe PCS registers */
+#define QPHY_V10_60_PCS_SW_RESET			0x000
+#define QPHY_V10_60_PCS_PCS_STATUS1			0x014
+#define QPHY_V10_60_PCS_POWER_DOWN_CONTROL		0x040
+#define QPHY_V10_60_PCS_START_CONTROL			0x044
+#define QPHY_V10_60_PCS_G12S1_TXDEEMPH_M6DB		0x170
+#define QPHY_V10_60_PCS_G3S2_PRE_GAIN			0x178
+#define QPHY_V10_60_PCS_RX_SIGDET_LVL			0x190
+#define QPHY_V10_60_PCS_ELECIDLE_DLY_SEL		0x1b8
+#define QPHY_V10_60_PCS_PCS_TX_RX_CONFIG1		0x1dc
+#define QPHY_V10_60_PCS_PCS_TX_RX_CONFIG2		0x1e0
+#define QPHY_V10_60_PCS_EQ_CONFIG4			0x1f8
+#define QPHY_V10_60_PCS_EQ_CONFIG5			0x1fc
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index e461a000da48..3a4a0a9a9e4d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -73,6 +73,8 @@
 
 #include "phy-qcom-qmp-pcs-v10.h"
 
+#include "phy-qcom-qmp-pcs-v10_60.h"
+
 /* QPHY_SW_RESET bit */
 #define SW_RESET				BIT(0)
 /* QPHY_POWER_DOWN_CONTROL */

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
