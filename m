Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 288CCCAC5A0
	for <linux-phy@archiver.kernel.org>; Sat, 20 Sep 2025 03:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p+1H6VA4TxhLMtPdYnrITHd2ljreNVapG3KaHPI0pHs=; b=Bm3spvFpGGXTrD
	12ORRet8JdJnbPPwUWZ+C7cqheDhcpFOSE5S7w6xHjayv8+xYbFFi9fTLvvobEDbpz09oCjnxreH8
	RLzwggL2vE1169LS0DCzVivE8sQUfATSZwAGba1ivh+RX8KZSVDN/xMj+HQsEYpXU8EKNLVZyW6Xv
	b9dIHVUZm94ai4T8GjR+JVQt29atKUhdSZkQAZvtHgIQrYb+k8ThsnIAYgBol16MK98bjhkTa7Osf
	arnsmj0XNsjwVpncA4i3rk9imA5uYrhxwAMIFcfQURA48GRg8o+WlW7wuNRxOKjTkoP+Jo00DJLbp
	Ql0lEbt1tiy8reHEp3RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzoAp-00000004eaD-3qUk;
	Sat, 20 Sep 2025 03:22:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzoAm-00000004eYS-3yzj
	for linux-phy@lists.infradead.org;
	Sat, 20 Sep 2025 03:22:06 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K3FaYh032329
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 03:22:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=vuZU5U4R9Rryr7IdAfkxs753zdgqirIJxPG
	858BKWwE=; b=k5t3ABKb2GvmSXeB4L3qyWcAYWv5GOpbrwGW+IExQE1comiVw9E
	ufPeF4cJJ7qL+T4YI2BBhXvKmXrX68hUmV/WZaehLJ/YiOIbqZFcBF1oCjbIPwM6
	lzLPk5OTNYfyltG8g4gxAzEYzii1sIrdstgY/9nnyxxS/68jD72JN1L14PwkJbVJ
	2XJXH8KI3+c2owvmLYP57zqvFY6+E7wIyWy2UuL+XNko0BgJ56aA/LkK/+p7IYqC
	RUI5Hwitgf1h12SB6TXEy5uASbJL8QU/VX6Aovv9yoip7N8ftZzg3JCKkMNcorWn
	42GzpCK37ZzvaYhVs+BIb6eysOaEto+PC1w==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4982deh3sv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 03:22:03 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-32ee4998c4aso2624900a91.1
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 20:22:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758338522; x=1758943322;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vuZU5U4R9Rryr7IdAfkxs753zdgqirIJxPG858BKWwE=;
        b=fAnmsg86FHsFOow9yhMEKLuN3HgGYsNORzR/Q7XvGPAGLnWJjxJbKCQ3VliTuBLNw/
         7ymK2UH6zIyAYzNDRg9WlnA8/k3r0abGtJ7nZbYegHZrCRZqrC5U87TQYMM1KAiWvyRc
         wHzXaJ5G2ZnPPrs/Pj/qlKv9GwdmigqIICkn/2L/fl27FasaOEQSuTT6BewrNMZ0AApV
         kxtmUIzjPIzLgWuDB/qH2AOgpiawde7GitUiXkktkqvQ7r1pEcpyi1BgVafSRo421We7
         T72cJRM6+lMTViU/7x/K2buTjPeb/a0yqO6wTD1sSw9Swk6VQ4Cr9M9BcCihiJuVvcgz
         HAGA==
X-Forwarded-Encrypted: i=1; AJvYcCWnRu7RS42yS4UZ9HM1aBGIm5e2aHP+vyDA3m0T60kTc04AyWjlBEqEFcleF51fVpxHj3w673H4t7E=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzrgb7g9ZhsQBtdhL8Wk6iPzuEVUuN3Jvctum4g6dhj8ebly0GV
	U3m2o/k55d0poyp0KZluvEJFPlTrWGaqnxiZqcm7QuMOen0b4vX30xqkBrb4rG1lHjo310M1Fl1
	thO5GOueAY+x2NufFWrFEj1PZ9dkEXwCxtq/iOkrldbZNl5j8oAxW9BnhapGbILXQn9nCtIlmKd
	3A
X-Gm-Gg: ASbGncuwHBxuvQQPLIDhy72UbR6oy3/q1er9I7RL1rWNI/va1AdhvZb2SDEJA4Qk1PT
	ENsF8FVUS6Tc6QugoPtXrK7hIYJ1Xpqo0gGeIFdPV4WF8OTW6cVS7rUzJ67IPO6k0kyKc5TZEwU
	SJVs/vnAOT7dELjFIhBUaidvT7Wx69yZ7lN6EUzMGSgPL5xPsO7u5847O+6fbZjZQDUPPnZ84zK
	P8ccZtFUn6S57DJ1RqcTbhk66xF2VF/Idl9B1jY+fIdZHiyOBv4zK0Jonla9G+kFacHxllDZM7O
	BpCl9NfRwQ98iAYKdxTPgtI16rcIElMgCECBWr1MO7Odikx/BejAdIUowZSosKTiuH2a1RWoHyb
	5qloH9S4ll+UQzkTV
X-Received: by 2002:a17:90a:ec83:b0:32e:9da9:3e60 with SMTP id 98e67ed59e1d1-3309838e41emr6060607a91.36.1758338522087;
        Fri, 19 Sep 2025 20:22:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFnfgc9WbLWRAMVvDv9SHJUx3qQPyX7uwJoFjB6p+plahvgBOQhzvbXnu4sxjxYoajBAIfINg==
X-Received: by 2002:a17:90a:ec83:b0:32e:9da9:3e60 with SMTP id 98e67ed59e1d1-3309838e41emr6060577a91.36.1758338521632;
        Fri, 19 Sep 2025 20:22:01 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3306082eff4sm6660409a91.25.2025.09.19.20.22.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:22:01 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: kishon@kernel.org, vkoul@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH] phy: qcom: m31-eusb2: Update init sequence to set PHY_ENABLE
Date: Fri, 19 Sep 2025 20:21:58 -0700
Message-Id: <20250920032158.242725-1-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=YfO95xRf c=1 sm=1 tr=0 ts=68ce1ddc cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=y6qI-x7cYgrOQfqpg38A:9
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: hdIV_Jczs5L5enm5k60JaImrkpsc-SDS
X-Proofpoint-ORIG-GUID: hdIV_Jczs5L5enm5k60JaImrkpsc-SDS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE3MDE4MiBTYWx0ZWRfX4+BdipPjwXMK
 JY2fM1x9Cm3tLVnHLdl+/Pyftda539963Mi808Ny289LGOGNH0E1RdTF+QOXIGbbAr2XeOBXzuF
 iZUL/7PS9TbGVgOcqR07GfHwpewjDkyXCtVxjvDfBJQbb98+dM9Qgm0/K7zrcAqmIGWcBLK/REF
 S1eJBJmANSlzNoJXdQF4t5d/1piIZud+VPsIhnkcUSkJGsXsITEOBy7XQ01i0XnI/TZGYO7tUBo
 3KZqWt0Z6Rlx+3L1JnJSV7Ttif/rW9rysAUOzNpeTGf2fAPKIGjWtloBNTX221lNwWoOYXvil5I
 5VweFnxGMJjGsxZ7xFUzdwaJYmZSD2+AWyGXmkrJ1kR742xbOu8rNf0F6NmpmqeOlZm1dkukJc8
 VgGHGoBq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 spamscore=0 phishscore=0 malwarescore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509170182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_202205_105142_BFB902ED 
X-CRM114-Status: GOOD (  13.16  )
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

From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>

Certain platforms may not have the PHY_ENABLE bit set on power on reset.
Update the current sequence to explicitly write to enable the PHY_ENABLE
bit.  This ensures that regardless of the platform, the PHY is properly
enabled.

Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
index bf32572566c4..fbf5e999ca7a 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
@@ -25,6 +25,7 @@
 #define POR				BIT(1)
 
 #define USB_PHY_HS_PHY_CTRL_COMMON0	(0x54)
+#define PHY_ENABLE			BIT(0)
 #define SIDDQ_SEL			BIT(1)
 #define SIDDQ				BIT(2)
 #define FSEL				GENMASK(6, 4)
@@ -81,6 +82,7 @@ struct m31_eusb2_priv_data {
 static const struct m31_phy_tbl_entry m31_eusb2_setup_tbl[] = {
 	M31_EUSB_PHY_INIT_CFG(USB_PHY_CFG0, UTMI_PHY_CMN_CTRL_OVERRIDE_EN, 1),
 	M31_EUSB_PHY_INIT_CFG(USB_PHY_UTMI_CTRL5, POR, 1),
+	M31_EUSB_PHY_INIT_CFG(USB_PHY_HS_PHY_CTRL_COMMON0, PHY_ENABLE, 1),
 	M31_EUSB_PHY_INIT_CFG(USB_PHY_CFG1, PLL_EN, 1),
 	M31_EUSB_PHY_INIT_CFG(USB_PHY_FSEL_SEL, FSEL_SEL, 1),
 };

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
