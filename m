Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92448CA5FB3
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 09:35:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=InZywtmKWwCAYn0cVcy4krrRcSJF1mGCicmsz6ZVp3E=; b=dHeuLL8RB7duuh
	8FmtuAWv8dxnYjtDZhpXTwfS8vU8enqtvoNfVciulWjwydRc7ctpCrm6gUpmsaDe+6lRpM7ATp1RM
	hlHM27EDUO0hvs4yLyO6sQwx4u8RAaLQGdYRn16KapbKh0Ru45ZyYq3b0mF6GCUQSBkzwjfbahZXA
	OcL0U6bfWGk0hOmsT6R2C1EEWowfVbaPc55AHU+vNlPIvEhGlmOnI2yvBHV//uQ9OG8UsWqo0s5Nr
	PrCI7mL3vOQme1k5Gwmu5ZfpzE7Ij59j7VpXe92jgvuwrHOu1qH1EPbB35tnOGvzw3YnXH2FYkVRl
	aN23fYzunyXX18+og9AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDBw-00000008Nq2-1BfR;
	Thu, 01 Oct 2026 09:35:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDBs-00000008NoA-3PSQ
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 09:35:02 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6916xeFF2337383
	for <linux-phy@lists.infradead.org>; Thu, 1 Oct 2026 09:35:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oHswaontdYeO7fcj4kXO4OIe9Mx/XFEmINXWY4ZCI/Y=; b=lC5XEbHzY42AbICf
	ibzMuruSjtwirzW5BACnlTGJUv7KerTgNu2YkTLVXaYjkWfrzAEkx1u0BccLJNZF
	H63bA7goqq96dXQACEwHW1kq53UjyO8tbtWmYg/OX4QDPWZURw8956E8t7ss5sUe
	W0TEHOrvpj0Ii5h/gwBdK+BAxi3HLTJVgK0YPA8n3QaoUow9xg3tkZWzlZTLD7B8
	LdAP2iJjeu2EhtCVNCPk++y6AU2zbiG4vJKpwp7gxqIjsg2MZ+sQWmxbWPIDi/Wf
	IKUk6WQbL3DSr4KyKRzB+XDj+sszfLS/c377LYHKQQgDbZ//oj/F1AkMUbzLIeHz
	bxeN6g==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h14n24397-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 09:34:59 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-cc7e0321ec1so1531524a12.0
        for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 02:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790847299; x=1791452099; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=oHswaontdYeO7fcj4kXO4OIe9Mx/XFEmINXWY4ZCI/Y=;
        b=MlCU6x6Z4gDRzcF6w5u7Uep81H7XtFGZY6nTg5Zldj+R1FeXqQJvAbsQxu+Mum5FY/
         5Xtm5bgyiIUAsFX35ZWf/kyLeXK4Vbm6ygjsY/0vb3btloB/kYBzvaOpSyYqYLN2HGjW
         +s3Jy62/5Ymd30IbvQEtLf4/YOr7L91QyNrokska0Hxb595/+89a6k333Wsl1bCC+8pT
         mn7s0LGCwJN4cZZkhCHAP/oDcA2LwmNzx/LqteAhI7p1/0zeH7FbDdCYkuehVOqI/Sd0
         DisBCKXZJKRvcoIqxdJSOgcrasDqj9BQF0o0kLxbwK7y2YVh1sgpkXd6ZrlWrvGpYwyt
         6xug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790847299; x=1791452099;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=oHswaontdYeO7fcj4kXO4OIe9Mx/XFEmINXWY4ZCI/Y=;
        b=W23UL8KuUOvqYLupnrxalGIlpXseSWVKLAfyAo998eVbjbWffHdmv82xPw2To2eV44
         wTHl8F+g7eezry9VsHUz8bJVkNfQP7yP5mVZmdmn8xed5/Olc5qsJ/89VCPB3s0mNOa/
         pguJyATrNQvcoePgY3a7gOef+U5SD6CVMNN4umnfgo6QMF42pTTkETHSJ/NiG/lTg2Lo
         n4no37gBHFAM/NnLiFVTZHKfvoNlyKK9jv1yL7lZmygK1U65dSS6ClRr6TzgSynXKG9r
         PwsLk1ruQzV0px0Xk0+hKNjCJptuEIV5p5zF3qkBJwgBwklGdf6HBELkqjEP49bDJmTw
         OXIg==
X-Forwarded-Encrypted: i=1; AKwUvBxDC9mkdxsfscTngfK7LzwOZY05fgMqZZmU5KrlPivKWutIEpGTPo7IERRnNo/4/J6Pc5HfCuCl39s=@lists.infradead.org
X-Gm-Message-State: AFuF++ld8yKo25IRAdj+B6d6paz6gv7P+xN60y9lbDU2EbLBERtDyg4q
	eWLdfsT0/6CrF91b0qT/ZLzd7TGGWcHvItGjwRRMdzG4bmz/TSKyl4zYb7kHvj6Mf76GOYqELOm
	x0LcaN4nRccrRDobFYq7eq6Ce7YhCOVmAs8IQKG/Wp3OZlUkMEOnnB8ioJxRz6ZvudTDNqoSfsp
	qZ
X-Gm-Gg: AYBFou3uxi4wA3zJ4ci97ScT5Nt9/bEiynOYN0JOgSvnI3pxY892W3ewAkltcz5UjWz
	WiQBb9ibJKH5+UZamnlA52AGRkun0y4UpvKuzOdDnUr5yXlK7/UOXqoSIwRb+QnDMxovUi1Aklz
	5drfceHuyVA6pZvGT2t/1ybYRKlnB8Y7fANflie/lrbbvykdJAEmh/6AYM41iMpvtHh69l6tFEp
	471+Srx4pWf2CV3p3twQFVo4G6PqwfQK+Jp1fBINCgvhm6Rn8kdQqDVGhdRtE8zxAXHbpd01Zk4
	vWHwVGbqET40Nr2jtZ6MhEoXmE140xmIe5AIIub5BIEFLH9jIPTQ/8epcADvpX497peT0XuKVFR
	LCuys4EnxvnFU+liGPPPmUABp+WU=
X-Received: by 2002:a05:6a20:7344:b0:3dd:a196:69e5 with SMTP id adf61e73a8af0-3de9eb9ea11mr4146144637.64.1790847298904;
        Thu, 01 Oct 2026 02:34:58 -0700 (PDT)
X-Received: by 2002:a05:6a20:7344:b0:3dd:a196:69e5 with SMTP id adf61e73a8af0-3de9eb9ea11mr4146111637.64.1790847298474;
        Thu, 01 Oct 2026 02:34:58 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cc7e54bf4c4sm1152944a12.29.2026.10.01.02.34.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2026 02:34:57 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Thu, 01 Oct 2026 15:04:18 +0530
Subject: [PATCH v5 01/11] phy: qualcomm: qmp-combo: Add DP COM v8 header
 and fix register layout
MIME-Version: 1.0
Message-Id: <20261001-glymur-phy-v3-v5-1-3848c2615d5a@oss.qualcomm.com>
References: <20261001-glymur-phy-v3-v5-0-3848c2615d5a@oss.qualcomm.com>
In-Reply-To: <20261001-glymur-phy-v3-v5-0-3848c2615d5a@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790847286; l=1867;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=M7Lao+vpZOpv7xNTelINIOIvTJLnHMEbQggsfN+FZ3U=;
 b=sSbtSC6NXVX78DMd4G1wswJcht/bTE3sbHDWz0i4/gKgIdDVkK3G65nMEzqUxaFmXRImUiJgw
 ZAzyqVpg5TzB86xj5ki5LME7NvSa06NesRbwKfq3ejpymQM0AU+o4ib
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Authority-Analysis: v=2.4 cv=Gr3XaU1C c=1 sm=1 tr=0 ts=6abe2943 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=9hqLRW_DAkAp12WW2ZMA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDAxMDAzOCBTYWx0ZWRfX6efKFNIFKPcp
 DQXpwYDthve7boFSc2jC3NAH2BnC03uvhbFUq9Z5biUvH3VVbCNeGDcp9gBfqqXEI18tdmbuXdo
 bK1y3nnhSW34GQ9xTYIuUtCaaV8wxZI=
X-Proofpoint-GUID: TGIKJX3Jy_ua9L19uHV3gNuaodmaLsi1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDAxMDAzOCBTYWx0ZWRfX66/LQcIN5jqB
 ZUw2z4W1gEel1byGhjrlQaejIPfqwma16GVxvn1by6Nho1W8EpxdSr+xEtEE8MwHE4T/SQhLc8K
 RlfyTiA5zx9tTJdEpB15mxyWS/4tGQRkvjkLkMifhfHWQDwa/1ZaWbP6kmmbxonS6jnX+Akd/6F
 IPz8G/8/AakCuT4ShwLrh3pUTtRM2X33dWEDdOJUWThywRxXEBY1b7W0kzSdnFbQZ3MPBNAW1Xb
 kqbCaPR7F1x8YGQTtMwzI9sZT0CZSR2ZUx7od36ogXVTlcV7IncBaCozQ6uLVU6ejYOUcfwo6uU
 mv+8JpiO0FOklEoK7x5Qibnb9HnN9BvWaHR2tWUatfv/CiCWIuQjHNz3+OJuvPWJ4XiqPHU04Kk
 rWzT0jamhfHXfYwwLi8DUHST073OuHxsYs7XdVK08FaQSb0tmedmNWh+A/yS9j25+0G9hSq+Z/L
 S4w9fvn85uHxNcO0H2Q==
X-Proofpoint-ORIG-GUID: TGIKJX3Jy_ua9L19uHV3gNuaodmaLsi1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-01_03,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 spamscore=0 suspectscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610010038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_023501_815016_3A94E73D 
X-CRM114-Status: GOOD (  13.79  )
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

From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>

Add the new DP-specific QSERDES COM v8 header file and update the
register layout to use DP-specific status register offsets for
C_READY_STATUS and CMN_STATUS registers.

Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Fixes: 5b289913959b ("phy: qualcomm: qmp-combo: Update QMP PHY with Glymur settings")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index a4f130fc33e3..dc9c30737ac9 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -52,6 +52,7 @@
 #include "phy-qcom-qmp-dp-phy-v5.h"
 #include "phy-qcom-qmp-dp-phy-v6.h"
 #include "phy-qcom-qmp-dp-phy-v8.h"
+#include "phy-qcom-qmp-qserdes-dp-com-v8.h"
 #include "phy-qcom-qmp-dp-phy-v10.h"
 
 #include "phy-qcom-qmp-usb43-pcs-v8.h"
@@ -326,8 +327,8 @@ static const unsigned int qmp_v8_n3_usb43dpphy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_DP_AON_TOGGLE_ENABLE]		= QPHY_V8_PCS_AON_DP_AON_TOGGLE_ENABLE,
 
 	[QPHY_COM_RESETSM_CNTRL]		= QSERDES_V8_COM_RESETSM_CNTRL,
-	[QPHY_COM_C_READY_STATUS]		= QSERDES_V8_COM_C_READY_STATUS,
-	[QPHY_COM_CMN_STATUS]			= QSERDES_V8_COM_CMN_STATUS,
+	[QPHY_COM_C_READY_STATUS]		= DP_QSERDES_V8_COM_C_READY_STATUS,
+	[QPHY_COM_CMN_STATUS]			= DP_QSERDES_V8_COM_CMN_STATUS,
 	[QPHY_COM_BIAS_EN_CLKBUFLR_EN]	= QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN,
 
 	[QPHY_DP_PHY_STATUS]			= QSERDES_V8_DP_PHY_STATUS,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
