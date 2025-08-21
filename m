Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00FB7CA0FE1
	for <linux-phy@archiver.kernel.org>; Thu, 21 Aug 2025 13:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j+7pTa8UgklqL/XuzsnT1c6seOyanvnO5ojfe4+8m3I=; b=NMNr4a3pV7Agnh
	vioe1TOaLKbKyjxNBG48zXT2Z/BPX4Qj0326i1v4s4UEwiMY5r7ApVtQkaxVqwEBOn8NFNmEg68cp
	8xmTTznVfW+GIqUtPuo41xW74E03Q9YMjpX7X4+gtZsX5+3LiSWZfuD8hO4RAQdPsecUoS+vuBngx
	xxcBqpdIb5ELEb19vxz+XsBiSklDEhxlpHFfPualcilp5JMMnedU/YEL0BvrQI+b7NoTeGAWtV/WC
	J/XQMf3gxNN6m9LHn7w0tyfRQXEfduidoNKpT30NMDmUVyoIAXmeUjnPtY8LiB15I0n0sLUv+FNY5
	hEcL7Nm2wdxaoGYarQSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up5C2-0000000H1ib-2w82;
	Thu, 21 Aug 2025 13:19:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up1qq-0000000GUrk-2foi
	for linux-phy@lists.infradead.org;
	Thu, 21 Aug 2025 09:44:57 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57L9b8Ph007018
	for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 09:44:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	a9i1vfAm82rgoZ9V2Oilt0uKHn0wjU3RD+NnjEoXSuk=; b=LsUHAyw663VDyvgw
	6hU+Tfxa4w6s9fRIRKweCr4GiXH80eBBJ9Bf+tkcdcbZMNMuQw0ffT9zL/rg5oPc
	oPXlICfVkoH5gmWNI7g4AYE0ebqFiWW9yj29eXEiHObvkR/VCMQG2OmlZ69Odu+s
	KBOYOhs8FO0ek3yCQn/8Zp8//pT7O0/WcC4gi9Xf7mrTUMRU1S13SsaDfrXhX7on
	XyXj8nsJQGghhHtUWbzz1bSiwVYGJA6/JWMgo75dbLYNwUm3y/9P+bkW22VmD4J2
	j+xJo/GA28SpFZXvtNKn9XIAvLvu3XFoECmYeh1Us/CaXBWwhWLqN23mfs7qakX/
	giZ/ew==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n5294yqq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 09:44:56 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-324f81677d7so380694a91.0
        for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 02:44:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755769495; x=1756374295;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a9i1vfAm82rgoZ9V2Oilt0uKHn0wjU3RD+NnjEoXSuk=;
        b=VqNTewtQDAqIy4qASbXgZxEPukyTDQSaWB7/WfIKdvETbo8LQgO+V3Bvk/4VkObIM1
         K3egvCJMtlLmwWmrveokCp3UciVv/Y7/nvx7be+gd5QtUpCEcwjdkTiVmP3DqID2ID/d
         n9kH4YCMCNH6e6zM+X5JbgcNY16ul2ikRWQurFxVOHKr/OpgcnYyXVxhPgyxSUVEZT5/
         VAwK9ZJFOCJR8SyjqHdsAp4O0A6N917qh9XW3QZrLwfLmD/GBicxDq0I07t/smfiUf/I
         7WXtWLZPrsVwANWRlvmViCsGXkzHTaIZ1iRS4/gvJe3R9S7f/vbVtOKapZOnOfA55Vp+
         2NdA==
X-Forwarded-Encrypted: i=1; AJvYcCWONt2/79ZKxHSbGoHjfPFBY6vGWAvj/NpYCtw6Jf7fif1RkKxD6D7jA36XSzYy3Ll+O1bhaEJFH/I=@lists.infradead.org
X-Gm-Message-State: AOJu0YxrCsw8TRiihJgG8K5Jge/fI6SdEVEf3mnHahFE4M0ny+ZVKZod
	bExe2Gj/RWIv1q9WSBlS17ryc1UOsSH1bFj2Ui+SjBc6rR5G6CmETGBGJUgfaq5prXlHZjlllnX
	MoI9ryJToJJWMuhLVqj2f/25LczXmFtYr/p69/JQAe+QCrNJHA/mQbaSlBG+77Dn6llLi
X-Gm-Gg: ASbGnctfu4XEekjbDj2rJ3nDvYYaJhfbAUBHJ6jMRe83N1skR8lYk0eXuuhLjhtT3Da
	wKwG6zZSZGcYsu3qgxkxDBxRTh7/5Jte3663r77ovmQK1AwusQoEQoxjNFCCV/ujJmHbiNjEVU4
	oOUnBwPfj1ZllSoddNig7FOaL5b8aLhdPmZmWsGbRFzbMWhkmHJoj2A1ibP43EVlyuV7AbeII/a
	vu7vQL/3O3mrzl8AUhpSvTRQMqvk17oZpimBbSxsX+wuDXH5x4nMTovxUAYoL8p9cK4nPHZZMEd
	3GkuzjEJj23b9hIxwgZpofF+BFo4GCjvVGiqjcsJ3z6Q6QaOdXE270i1xa+SJJf7r7KZ9Ta0McP
	9Vm5pPzI3AUKVH8w=
X-Received: by 2002:a17:90b:3d0b:b0:31f:150:e045 with SMTP id 98e67ed59e1d1-324ed14d319mr2542964a91.32.1755769495256;
        Thu, 21 Aug 2025 02:44:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHRoJdDy4f53/5MRAxjQmWCtc8r3H6iQcImfkai5Qm5nFjXBy+NCdaiygW2u5ZN218HxKSEuA==
X-Received: by 2002:a17:90b:3d0b:b0:31f:150:e045 with SMTP id 98e67ed59e1d1-324ed14d319mr2542919a91.32.1755769494740;
        Thu, 21 Aug 2025 02:44:54 -0700 (PDT)
Received: from hu-wenbyao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-324f23d853esm1426078a91.6.2025.08.21.02.44.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 02:44:54 -0700 (PDT)
From: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Date: Thu, 21 Aug 2025 02:44:30 -0700
Subject: [PATCH v2 3/4] phy: qcom-qmp: pcs: Add v8.50 register offsets
MIME-Version: 1.0
Message-Id: <20250821-glymur_pcie5-v2-3-cd516784ef20@oss.qualcomm.com>
References: <20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com>
In-Reply-To: <20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755769489; l=1553;
 i=wenbin.yao@oss.qualcomm.com; s=20250806; h=from:subject:message-id;
 bh=CEsoc9Uw7D+NpayVYJqV9+VSyLeR0jKm+hdfLxCWqno=;
 b=lso13Snwiz7sIs/lgG1JBsAqGdMPm1uxTQ11YbFaIz1M2jjvuN3ug9TxxYUmyJv+ppEAylVzI
 qGK9YQgB4TYAcZlnXvdVLQYefqGYL4BKPwypMegWWuRYwoCYkBoHeIh
X-Developer-Key: i=wenbin.yao@oss.qualcomm.com; a=ed25519;
 pk=nBPq+51QejLSupTaJoOMvgFbXSyRVCJexMZ+bUTG5KU=
X-Authority-Analysis: v=2.4 cv=ZJKOWX7b c=1 sm=1 tr=0 ts=68a6ea98 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=MyfKwbsdfMS_-thd9JUA:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: -nFsViYl9qA46QWdZcPXvSsq-uScu7QY
X-Proofpoint-GUID: -nFsViYl9qA46QWdZcPXvSsq-uScu7QY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX6IXg+MKoEXTX
 r16hUxq2IZ1pNrM8gOw3UPQjjIS4HoNHCbdxjjPPzPgKGVhbdQVVBtiUyUC/MStPlcU0oy8Sg9g
 I7v9pd+KThpTlZrMAxRHK4Q/5NI9OegBgMeDKwPvlbbISO1XM0BkiTxaFVEdJxnXQrHc3XDzS/R
 lIfA2FlQxGq/kCK/med0XumBjps4RQn5pbUs2U8+ZqdCA7vZK0hnzWbHcSUoVuR5wczqzLvc3Pr
 4Ekve9vKavUDo5DZDagLcSr7oe8NgX/dDhddygHsNIzIexQPdMc5GC0r7RfMJTw1o7h+MYAgL5N
 sA3qTEgoeLxFcQkU3AQzebCk3NbUBgkNUZQTSFwIVi54N31RDM4vpFk281kvPXS0Q3PGlT57rtV
 QmlymNpIfFBMh422BORH9Oj4Up3FGg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_02,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 malwarescore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_024456_685703_8BBD309D 
X-CRM114-Status: GOOD (  14.59  )
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

From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>

The new Glymur SoC bumps up the HW version of QMP phy to v8.50 for PCIE
g5x4. Add the new PCS offsets in a dedicated header file.

Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h | 13 +++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |  2 ++
 2 files changed, 15 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h
new file mode 100644
index 0000000000000000000000000000000000000000..325c127e8eb7ad842018dce51d09a6ee54ed86ff
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_V8_50_H_
+#define QCOM_PHY_QMP_PCS_V8_50_H_
+
+#define QPHY_V8_50_PCS_STATUS1			0x010
+#define QPHY_V8_50_PCS_START_CONTROL			0x05c
+#define QPHY_V8_50_PCS_POWER_DOWN_CONTROL			0x64
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index f58c82b2dd23e1bda616d67ab7993794b997063b..da2a7ad2cdccef1308a2b7aa71a2e5cf8bd7c1d7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -58,6 +58,8 @@
 
 #include "phy-qcom-qmp-pcs-v8.h"
 
+#include "phy-qcom-qmp-pcs-v8_50.h"
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
