Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 808FBCCFA03
	for <linux-phy@archiver.kernel.org>; Tue,  4 Nov 2025 03:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IMS2r3I0cVa4asLU835nuhBg9rWqIrawWdgKY8Yj27w=; b=XhwZiu5FQk1s4S
	uhkN/Jo0HFhj4YVkVLK5E7TAS7IWszzXM9cesN1RL7Lmu6VxnS0D1nBB+XDNqfWYjYdMbirAbGrOT
	h5sb3XfYRiKQ+J9G7engH4XUMGyM0QLNKXNz+yyGcRJrhu4YCmK15BbzI51Wop6G94/Loa9oODpE6
	4AYNY6wmRuXkU4thwZGOdmN87H3YRLywqBPBZMCkEAFQpsHMCD+LxTN9QZNlbjzdfy9h4hCLQwVHM
	pMUlatrFeLEcqLjyxhZOBSCzA4ojXLzl2RwWXUx5AfUM4eOOK4N/kZFLBQsEX0hJyc390bcTAW6Pb
	SiPPNCB53qimMalcQBWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vG7PG-0000000B1iF-189D;
	Tue, 04 Nov 2025 03:08:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vG7PE-0000000B1gX-2Wx6
	for linux-phy@lists.infradead.org;
	Tue, 04 Nov 2025 03:08:25 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A42wAM33729662
	for <linux-phy@lists.infradead.org>; Tue, 4 Nov 2025 03:08:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yjl88K7Ikw8V3LFOUdPS89IWYvnp87gV7OPjhtKIs8w=; b=o+AoTgC0Em7pBt85
	TqASbFS5eHz3KOtOsoVsaJoJuclthU7btFkHixs3LHTGLGYrFG6A0+9duaSQ6vw5
	BXALAoLNonW+PzxwjBBf5XFhlh/yldBKtNIB6v9fz0vwfh8UpR1NuMB7Y/HMrjRl
	ot0qJ+DcG0xs/ljguML1lxrJBB85yhBBG1Vee84+SrzGYMyGhMv+LGC0i5oGO6fS
	P0swqz4SFKLMooHCP8RMLZe/6XhZjE/ievaBZtLOtVXYqmCvqsAyftb72J07ooe+
	3Ba+KR5DtsRCXUCAmDDrKVWJ04uIcKQax+ScS6VcVW4soUgwv7ER8L3qv5QanXwT
	UPL4SA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a70p89d2w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 04 Nov 2025 03:08:24 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b6ce1b57b9cso4608353a12.1
        for <linux-phy@lists.infradead.org>; Mon, 03 Nov 2025 19:08:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762225703; x=1762830503; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yjl88K7Ikw8V3LFOUdPS89IWYvnp87gV7OPjhtKIs8w=;
        b=cVDyq0KNo/GN0ij9Oi+f0N9lzhpu1p4HBGIZvR/f2WWdwxY7oKU2IzNmvCqHNMEzxL
         SfgWWD4Qxx1RxSw1COXj+Tg3F8fsaY8p7w+BuDm2JBfZD7dv4Iit0yCx+8zqwKwlIGFL
         o9K+0gNnm0w/IrZvV5RB+iO3AcZvj9V5zxpXM+P7WL571LLDHnyDZFpBszag8P0c+B9p
         vMIcVu44cw85Q6iHe0ztsG/tmpksMq9dpfvN/jnQDKjn/YImk2NKDsVT8H5NDH4DQbSW
         BtC8ctd0Bg8sZ3kq3cI7zxl7LcVyR2O0ZzFjVkW3+gFkjmwbvMvoRpv8kLUdsWcanvwD
         UgSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762225703; x=1762830503;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yjl88K7Ikw8V3LFOUdPS89IWYvnp87gV7OPjhtKIs8w=;
        b=WC4OEGMFldGGU6L1c/TEd5LOP45IClTxoIjK6Fl/UGC4rqlzzv7dKPMzmH+vPqY4p5
         ZnX0RA4XKanSEU3/mgbWnQl1Gq36Ejv8+cJq31WKkez0nsTlAv6jmhuKhbdegp18HscZ
         nMXgJHFoanlzXlQ9oR2AndTRWVmMdUJxDNXECnykb1jh9JTx0CortpAQNmLA5jASDVGn
         e7W7CV2kewFfKJW/FiDO5wHizSrVOvelJY8UnSQnFNaTpFgUbSS6wqcWspgR+InTAwPu
         JbX3Of4lnQBE3eNg1pcl3NXWbgAb+S+qOl+QFfbEp7sR+M94OCtkikOfroGjtHtQYJb+
         oz0g==
X-Forwarded-Encrypted: i=1; AJvYcCVdwu7kHADBVeaZafSjiyuHJBEWt2jGNpt7G3e7WNR2ce7XjU4JMlWchFJcSIKYZRnPSuWW2BujOxU=@lists.infradead.org
X-Gm-Message-State: AOJu0YyR1MFUDK2J/L289ruBEly7yCkXQl+GMkUaugW9kbhfjx6XO1q+
	x4EogX+uFw2jug3ram6H4xngza3r3sRjUaXvlg56T7w7KEevLSsbnYf+I9r4SI8M65w25Qn9ChO
	V4/l/T3d/wNsyle637SaEJ9nPxSi+RLAfV9q9cGE1yvQcIBn8UmGhbWlL+l9jT5Ttsdo6
X-Gm-Gg: ASbGncu3M4nv8rcg6XiAXbrX04P5U1BIfx69upneVQmEpRCZb+NOCoq/npfmEzlqG8K
	mvhsDOXLUK7xx0AF+H4V2cs2Zvk/T24NpERyI1sza9rlygvS+/mpOzf5gc+v0ZHmFFov2FvCv2t
	6VeTz8STvbUJajblDafDQdO2Xr9kiAXqpra4jumnDPqorgIM4h3V9aKACn01mwK+UYf0IPtRKOg
	PkjDcFhl/oqVVOt/zuyDGe6cGGU1CrihoTNk8LGGDbfaCbYvN5K8m0V4B1g21GeZnCJvV2kA1u5
	ZGbiyWayEEVnNMYWi/PFeCqwH62JhCCDWuGY1airpuzY68eNpkIptO0rRrqkmvPslNncbAOz4X3
	w70fZwgoS67FR5UKuhhJkvCNsvCqN/sv4LtPwyBWjjgKlAQ==
X-Received: by 2002:a17:903:2f8f:b0:249:3efa:3c99 with SMTP id d9443c01a7336-2951a600e39mr210169675ad.61.1762225703452;
        Mon, 03 Nov 2025 19:08:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFnkUDpGTd4QUiumCjswd33SMHOlxSzlev0yXQnnPpUu0uiZwOjQMLokv3J1leiSGBWgY0gAQ==
X-Received: by 2002:a17:903:2f8f:b0:249:3efa:3c99 with SMTP id d9443c01a7336-2951a600e39mr210169285ad.61.1762225702739;
        Mon, 03 Nov 2025 19:08:22 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29601998da3sm7357365ad.27.2025.11.03.19.08.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 19:08:22 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 03 Nov 2025 19:08:16 -0800
Subject: [PATCH v3 4/5] phy: qcom-qmp: qserdes-com: Add some more v8
 register offsets
MIME-Version: 1.0
Message-Id: <20251103-kaanapali-pcie-phy-v3-4-18b0f27c7e96@oss.qualcomm.com>
References: <20251103-kaanapali-pcie-phy-v3-0-18b0f27c7e96@oss.qualcomm.com>
In-Reply-To: <20251103-kaanapali-pcie-phy-v3-0-18b0f27c7e96@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762225695; l=2673;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=T9q1inJlwTfg/gPd7Q+2RMAg+x2qnIVhHI3ir28H+W8=;
 b=UTstli92U/T/Fgz9RrJoWXssPeux14rrF3Dtzo9nuQqzrXsJDRkqTA1xxfy6aRip4SnkTSksy
 ChnRVjicU1LCdegugCAXjzFYi4UNwNrqTwQmFLR1UG45IfV3cpL2UCr
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-ORIG-GUID: 4tMkBYTGlCCXZ9mnLdWIOFGvPFLQNi1f
X-Proofpoint-GUID: 4tMkBYTGlCCXZ9mnLdWIOFGvPFLQNi1f
X-Authority-Analysis: v=2.4 cv=AsnjHe9P c=1 sm=1 tr=0 ts=69096e28 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=GjIj-kmtzo1uPuhiLq4A:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDAyNCBTYWx0ZWRfX+ElNeD3+nQei
 zLXWLv4f61ktAgKrnfurYSSVgKK2w8BgeKimeHVT1SfkTfWTakfFIc6iAi0J8iIULCUnRJ0Dn7x
 6RuvtkezJp73xB6yb4NUDECminUCuAncSiDbk3UMvdl2XAf/Rn/+oLYyALYePRWLw6Jn7FHmgjD
 XOslVhOh9yWdQ5JwtSHc26lZ+zSRgJA/a7oFDRjDjO5ML+TwQPk1MxukaJkAlYWFLK+MOFN3RJW
 X0L4fdy5FTLytvGkHFV574bkLxk3Of4VbkqR+i66Bat+Lb9MYt33/1/diHgNYKP9enUWgMOkvuS
 DOS0FcQlyO44OlA1lZV0iCAhnDW8OOugMGXLheJZ0CUfitmELB7ph68pFdP5VlWA+LGUCS61E4a
 DbjGECTpzpAX6HLqDzqGhlyF3zPAKw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 impostorscore=0 bulkscore=0 spamscore=0
 suspectscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511040024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_190824_651178_4FCD7AB1 
X-CRM114-Status: GOOD (  11.13  )
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

Some qserdes-com register offsets for the v8 PHY were previously omitted,
as they were not needed by earlier v8 PHY initialization sequences. Add
these missing v8 register offsets now required to support PCIe QMP PHY on
Kaanapali platform.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h
index d3b2292257bc521cb66562a5b6bfae8dc8c92cc1..d8ac4c4a2c31615fa7edff2cd4aca86f4f77de66 100644
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
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
