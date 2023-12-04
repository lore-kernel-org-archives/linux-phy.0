Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3FF1C4167B
	for <linux-phy@archiver.kernel.org>; Mon,  4 Dec 2023 13:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cn1O+0STApaD2ojqoJ0++lVaOFDa/Aj3A1+qnW4m06M=; b=OI6+hRhXygHbqi
	pZKc0kQtBXMTr+VSxjp3CVX+GLBzAUPChhQA0YFwSpS1VSWB5KpYT/dQG93Iyfx3G0Jfhavhji7UW
	TuazQ7dybZcO6AwPNaOqFR7ZffC8cHUPAw+e6HaF7qOGgVGLAhor+jjSCXC+orUsSyyzw2dwQq+MA
	ZHZibYX/qOdvntPf/CuV5kZ5yblCaTTJ47g/sQ92gBxU2TKz7Hq2BLNoju3H2UhrdTzwoZlYQ4XBj
	YSGyqhBGL13GpmYy4Jo6MZN8mIhmxibx8TUfuSelOVpBdGF0F3dG9DbvtVLYKsav6tbXSGPlqzThc
	8RdGH6NWcEZfBfV9wi4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rA8g4-004Or5-1N;
	Mon, 04 Dec 2023 13:08:00 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rA8g1-004Olc-13
	for linux-phy@lists.infradead.org;
	Mon, 04 Dec 2023 13:07:58 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-40bd5eaa66eso24467895e9.3
        for <linux-phy@lists.infradead.org>; Mon, 04 Dec 2023 05:07:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701695275; x=1702300075; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EsQY5wdtf2BXxOhs26sA3XI/MGPOIVweT0ZY3rFx6EE=;
        b=EOitptbJR8FfwaDBnWe5EIRMtEvF4pKoQP96jT+ZVzSK+Y4nOl2UMyT8RPkulxSljy
         /Qbvvu0vMb4/ZJsmDVfsQftE2nd5uhW9qXIQdqaCgDSkOSE5glU+B98flLFgGOl3CAZn
         Kb7vrxKDTjTDjZVRghw8lP8EIofUHdOMwFAzLM1kW9OBA4XVfpr1VfzvUH6sSrcDuQz5
         SiJ0DHWBdZgZ6MIjPl9lRXuH0/tzmTCuzOpX8DSCbwd80hOsDS2cjcrF1mCqxToH3w5G
         bmzW2n4iV/HG4lDurPgoB21v9l4Y0u29Csun2ZeCc3jvIpRF8Bp8GSgFPT6FLw3kLS2u
         WCvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701695275; x=1702300075;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EsQY5wdtf2BXxOhs26sA3XI/MGPOIVweT0ZY3rFx6EE=;
        b=jwIb0HO94NIlJ/BdO/oVXoDbiCD46ILjrj2We0ex5cOxCYB6e1qIy3etfzMyr9aBk3
         N3Kn49n2xuT2TobH+XYIqWKR9rLubhsrrX/du8EHh5VrQJAMKUT832IDdP7KINCPPtTO
         kd/hRevimQr+wtAPeHwI/Spwz5d3dwYejP1uNB1YMVK38Gf09gjL5cQX1dn0VRpwfDOl
         z+A/Nxi5C/y+xwdPnsVZ+0vv0+c7n/pnO91IrwfJ6vEKzKgREmuYe8rOUYRnUDASbLHN
         YaCjz7vHZFANBqyj3z90HHQk4G9D60Jo2X3qUAbh0NdslXousuoTs+Ag+lHvK2VFn/e9
         oA7Q==
X-Gm-Message-State: AOJu0YyAFCaTvwBEQZ3w7KJg/zKdDcmE6mn+Pt+XWcUMHmrq1clO2zlp
	SD/VE59A53cCtj9RSB/JQjrAOufI1bx8xSkN/uY=
X-Google-Smtp-Source: AGHT+IE5PF2K2I01b86bWxz5dAGsWqtl6UUACFW1WGvkmBa+gXUxXtHlDeiNNr6m3FbwH7gatMkkBA==
X-Received: by 2002:a05:600c:a01:b0:40b:5e21:ec47 with SMTP id z1-20020a05600c0a0100b0040b5e21ec47mr2400526wmp.121.1701695275025;
        Mon, 04 Dec 2023 05:07:55 -0800 (PST)
Received: from [127.0.1.1] ([82.77.85.67])
        by smtp.gmail.com with ESMTPSA id n10-20020a05600c4f8a00b004053e9276easm18494166wmq.32.2023.12.04.05.07.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 05:07:54 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 04 Dec 2023 15:07:35 +0200
Subject: [PATCH v2 1/7] phy: qcom-qmp: qserdes-com: Add some more v6
 register offsets
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v2-1-21956ae0c5c3@linaro.org>
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v2-0-21956ae0c5c3@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v2-0-21956ae0c5c3@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2774; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=tCAG5xQlxlUAJwFjT/XmANZmT3YOrqILBnsoD1MYGiU=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlbc8gk0Yri/6zMgTbOZMbz8A66t/pjZD42HvAw
 kGedsaDxzaJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZW3PIAAKCRAbX0TJAJUV
 VlovD/9I7vtpFHu4EM/qgykbiRo8NVmgcgclYF+NF20GTl4UJjJUv0ZiI0RNhLMqXmlFr6+U095
 nk6/qvTzzZFC3Zisc/9VoUIoqcfh5j61UKPo5b/9U0lKBrVjXrzNrl6QP1P/L37t/DZVjDaNzJp
 HxNE9l4WU1QRaAc4oQSygffrUwUOKOBMzknx8LGq3ANxDTqqcG4uzNtc3WFgQHViiObJiD3b7d8
 6hK8hmUhWWgfy5NtMnxoBAP2ZoSkF6DVwwzHTNw1RtSqFawAGndGcZ+z3fjDQmHCO/jLQ8am9YA
 1gzDXp54Et41IGpAevGGM6ouvzPxQF3qECH09DHEzajaH/7IZSWG9bI0ecoG9prCFHLB0ejVWMf
 zCRYLBHg9SCh0NL56wfRd7r0uaRV4c8gZRn2nrqRdrnrR5nO4IaJngxT5ozVNKf3+ULXUSvv5eh
 yAG7ne8e32TDA6PrwOhBvoJNUPWrvZQ0iYj+D4dt/OpxiTnqf/a4u4YVFOblkwfDCqhUiOVctD4
 jxGoNi1Sm86svnRxYzVqIgOZXccztS9aSbR91+hI5/1lGv/jTrvxfP34rEm7U7+STMU5TXOqlFQ
 7r7ibedP7rrPzuTdAP3BZaklblSgDUGitoLIqGPUoe2Zy1uJZXPEXxWUuh1Bxs60qXPnNzSYTMd
 AxHqHRRaMq79LMw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_050757_365476_AF0D42BE 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
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

Add some missing V6 registers offsets that are needed by the new
Snapdragon X Elite (X1E80100) platform.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h  | 5 +++++
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h | 1 +
 2 files changed, 6 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
index f420f8faf16a..ec7291424dd1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
@@ -22,6 +22,8 @@
 #define QSERDES_V6_COM_DIV_FRAC_START2_MODE1			0x34
 #define QSERDES_V6_COM_DIV_FRAC_START3_MODE1			0x38
 #define QSERDES_V6_COM_HSCLK_SEL_1				0x3c
+#define QSERDES_V6_COM_INTEGLOOP_GAIN0_MODE1			0x40
+#define QSERDES_V6_COM_INTEGLOOP_GAIN1_MODE1			0x44
 #define QSERDES_V6_COM_VCO_TUNE1_MODE1				0x48
 #define QSERDES_V6_COM_VCO_TUNE2_MODE1				0x4c
 #define QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE1_MODE1		0x50
@@ -48,6 +50,7 @@
 #define QSERDES_V6_COM_VCO_TUNE2_MODE0				0xac
 #define QSERDES_V6_COM_BG_TIMER					0xbc
 #define QSERDES_V6_COM_SSC_EN_CENTER				0xc0
+#define QSERDES_V6_COM_SSC_ADJ_PER1				0xc4
 #define QSERDES_V6_COM_SSC_PER1					0xcc
 #define QSERDES_V6_COM_SSC_PER2					0xd0
 #define QSERDES_V6_COM_PLL_POST_DIV_MUX				0xd8
@@ -56,6 +59,7 @@
 #define QSERDES_V6_COM_SYS_CLK_CTRL				0xe4
 #define QSERDES_V6_COM_SYSCLK_BUF_ENABLE			0xe8
 #define QSERDES_V6_COM_PLL_IVCO					0xf4
+#define QSERDES_V6_COM_PLL_IVCO_MODE1				0xf8
 #define QSERDES_V6_COM_SYSCLK_EN_SEL				0x110
 #define QSERDES_V6_COM_RESETSM_CNTRL				0x118
 #define QSERDES_V6_COM_LOCK_CMP_EN				0x120
@@ -63,6 +67,7 @@
 #define QSERDES_V6_COM_VCO_TUNE_CTRL				0x13c
 #define QSERDES_V6_COM_VCO_TUNE_MAP				0x140
 #define QSERDES_V6_COM_VCO_TUNE_INITVAL2			0x148
+#define QSERDES_V6_COM_VCO_TUNE_MAXVAL2				0x158
 #define QSERDES_V6_COM_CLK_SELECT				0x164
 #define QSERDES_V6_COM_CORE_CLK_EN				0x170
 #define QSERDES_V6_COM_CMN_CONFIG_1				0x174
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h
index 8883e1de730e..23ffcfae9efa 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h
@@ -23,6 +23,7 @@
 #define QSERDES_V6_TX_PARRATE_REC_DETECT_IDLE_EN		0x60
 #define QSERDES_V6_TX_BIST_PATTERN7				0x7c
 #define QSERDES_V6_TX_LANE_MODE_1				0x84
+#define QSERDES_V6_TX_LANE_MODE_2				0x88
 #define QSERDES_V6_TX_LANE_MODE_3				0x8c
 #define QSERDES_V6_TX_LANE_MODE_4				0x90
 #define QSERDES_V6_TX_LANE_MODE_5				0x94

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
