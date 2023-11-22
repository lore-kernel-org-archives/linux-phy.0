Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04F94C61D9B
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 10:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G/5mv/c8JSrJRHHNZvHhxGiacuCHGpNLvfSFW+0NoLU=; b=ylTSBHgC2g2Ib7
	OoB63ypS3LjqG2SWQUVPfGAohT6uJMgTWXusZXhd62gbYTKK7vWq67lFZ10weWTyGlALYjtK9SQWD
	4Q4dnY6l/cvYXyoFH7RokhoDrb9BGu12ybsLYZgewHBUyoBBpDKT7hAwqJYGIigN5ULpaE8mUnptH
	Iicgeq1i9434M+qkJL7d0IDrrMfqIdUvd5oUcGARA8Sh7jojg+cFIsvkhpXwoCuUOh3uEG1hn7PPd
	jZsHefV12AapJx16OhqeeWVYOmJvgM3xnc9wfRaWZ2qGWbF4QLeCcWe3wt3pmw61FcCrbvuORx5fD
	NyAlrqWOvOy1Te0HAKYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5k5i-001O1N-2F;
	Wed, 22 Nov 2023 10:04:18 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5k5f-001Nvw-0r
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 10:04:16 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-548f853fc9eso2612587a12.1
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 02:04:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700647450; x=1701252250; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=37pl4HMRaLDQ9/dj8EKKJfS1KLcArLtO6z5a7AglAAw=;
        b=ze1f+vDkO0LDo7qo8mkorCgZXhA9WormiV6wGJITIvYux1sP75G16/tcFpXItztYhQ
         QUAmLNEafsyrxgCtld0N/IvvEzaCPYS/0BFgPdrHkx37J0ue21Jn4C86W3vNfm6F4g0A
         GlokXcX1H9cs1mUGMChcW/yuOD3Y3Q3BLhXuDFyKLDFmrQL03AcfA7YC0q/rphlnF5Gi
         8JzlBzjC0KndCoVBr/4PLjWODwKeNnjX+2tI06xtcyXzJJYuYye9E9lxF9RpLM0ThZXE
         X9f040lBDophuzvQUGio9ZnS7gUweHDikHuvbwzC/z/Dvn0BIO8OkracN7K6tfXm+viG
         Dpaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700647450; x=1701252250;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=37pl4HMRaLDQ9/dj8EKKJfS1KLcArLtO6z5a7AglAAw=;
        b=SnQmG0VokKEjj2r13nHUTbT0tvvUiXH74F0qNVlPHsG3+s0PsjZfYjMay8K0uIk6Gk
         +gQoTxoFUilPCjpNqeqrNZ/ctEduedz5+V+LjzNklQa3KX6MeIF+0Hpk6WQl8aWKYjGg
         McutvCZWY9zigHcS53sy1bDUTon/u8db7P3n7INStdDU8raXcxLfYm2xXMtZSdxiWgpI
         LDnWaPRO6y2KyG17zmqFdhoBaZ1k4xtHkUv21OYPuy1Gps9JI42oYzPPI1j4pmJECnZF
         KhNMIBcQRvhwyZtxtp9dzEb9NrcAHegOX4JFIu9bge39DY+rO0xGbzP0tScHB+R1kBcg
         GB6Q==
X-Gm-Message-State: AOJu0YxqqpCMf3o4k/B3vpcjpBBg6jFEOuCUWrItBroRiOL7l6sdsy12
	77MyBqHAda7gsyf2B2yjTYdCpQ==
X-Google-Smtp-Source: AGHT+IFWU0iEv8BqhoV9DV+1eqEuqLkQxxovBx4eY0rIvhqZbZqTHH27JWzfm+iKIpLrGqEimllvtw==
X-Received: by 2002:aa7:d8c2:0:b0:543:566f:2e89 with SMTP id k2-20020aa7d8c2000000b00543566f2e89mr1545070eds.37.1700647449802;
        Wed, 22 Nov 2023 02:04:09 -0800 (PST)
Received: from [127.0.1.1] ([86.123.99.122])
        by smtp.gmail.com with ESMTPSA id o9-20020a509b09000000b0053deb97e8e6sm6110456edi.28.2023.11.22.02.04.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 02:04:09 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 22 Nov 2023 12:03:53 +0200
Subject: [PATCH 1/7] phy: qcom-qmp: qserdes-com: Add some more v6 register
 offsets
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-1-d9340d362664@linaro.org>
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2713; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=wuMKuc8sVyzIHG6Zfhec3C34NmF6yKe0sA4KnFTG0yQ=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlXdIOpu4pjNY+PIV9zXxRsqB/b+GHqkbuLaTx5
 TFsZbeY9TSJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZV3SDgAKCRAbX0TJAJUV
 VrZXD/9+eXGz1JvGFxI8N3bHnDjKGj/dkgLOOFlJrq4RVUMw7ZXu4wZoeea9CTDpWjmf9pR0DE/
 d22IEP5rv2kl2KN2SVuTBnVrFtOZlQAurk+NeUcgWSnhmb3aZ9UrediFpviRC7MBz0ESMDFb4rx
 1GJnQA16R/ZmZmD6fG4WzE3GBJnp+3sbd0t5hgdWYfcFxnqxyPFi3xcyOQXMGHiAziNSBJdtNmw
 pNRz7hogIIw30pLlEYCb+9U0oQVChgkJ4gX/sy1zdfZ9/pwiZh0JpjpUdiKeZxXbd+Hf4tbsTSe
 U62/3zFbRy9za7B7OXqh0rDczc+E9LMo1jB8V/JO6Gz9PyyVRg2QjrH5Nvcn7FGC4v4reevqI5H
 tNNc5oCxuppVcfx3PjA68LfFU9YjnGlVRu6TSA//QkByqAAi000iFwdHgL2eyAa/h64qNqKFVnA
 q7cayY0zJMnTFyFzkGiXqsjgpQY25XrmuNPxo6hvglBf2swe5NGJz2X3ZAO9T6V+N2C2zxJ00ig
 z0ZSlo9Ncb3bdPxzgcsO/SyGKz6b/FHi/L8VPoj53uLkDQn3h38gRCDF5tg5gHB4LITNATQjYl6
 +WH6IFTsdkeoTgXmSbX51d9oPWy27ShMHwMaEXxpESUV2Q1sPw704KwI7NEXcp30c5LzB/T2aNP
 Qm6esAaYkkzZxtw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_020415_340704_53FCE93F 
X-CRM114-Status: UNSURE (   7.97  )
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
