Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5D1FC25B7C
	for <linux-phy@archiver.kernel.org>; Mon, 27 May 2024 07:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B8OjkR5F5pFdmlDCYwCCTKhXpgQfxoqyuJgkGkPsAjY=; b=BLKQZNPuxCQfMY
	qvNs9XlLX1DPweqiCrUEaH1HhGe4r6AKLslmBTIJGbcsDsf9FnE2w8JKn+72U8UU8670U+B5mnSF0
	B3jub1IRfqMDb9oo0d3FLLnaKD1JouFbyGNCjiOh6XX3WMOlEdy9vEZc8pZmMWkAFj7FqddOA8ddO
	hhO/+D4fNTnmtp/jT8Foi/OyXzX6t7+TQivlis5mU6YRayoAT3TqnaEMHHaJY9K43vZbRHubtMbKF
	RK7c2DrRIp60Jt0Ky7euNAvbEDjq7+iJn9dzY7x5bDdxh8RyGOThTtDUiiHpKCA7apOk2jiPoqyd9
	0w96XCrH9zK8lw/hQsug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBUf8-0000000E2OG-2AtN;
	Mon, 27 May 2024 07:20:54 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBUf4-0000000E2Lo-1Noq
	for linux-phy@lists.infradead.org;
	Mon, 27 May 2024 07:20:51 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-57869599ed5so1714492a12.2
        for <linux-phy@lists.infradead.org>; Mon, 27 May 2024 00:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716794448; x=1717399248; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dFIwML9I1Cig6SdAiuvO9nVLq/nrtM3r9MfRFepo5r8=;
        b=o8ywdroeNxKSRyfJh2aInIsRofZ/5v3JemaChOg4VWoKSAjGtKfCK0TVhlENJFgXe8
         juBMJTHgU1zuU84Ynn6Uym2mDsB+BiRSoKcBF+f6NZMGNc7if59RNJ9t7SXsA21pRDvB
         cPP0AlPPD+xb/tuqu1zUNGC2zRG1EAOhwv4zfDE7V6w7n1BP4+j6kkVfjCQxbwECjN00
         Cq83PmxL1pT2R6uXYumtPgR0cvtP+okQ7UK5qrNOxMs/JrVybw4q/jLGaO56nXrI78a1
         W3b8Zk1VKEfKWDfQ/cXffa3wuJACFC8Wlb5K3J50P0EiOoTooGlWinL5Dylaij4e3Qib
         iGNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716794448; x=1717399248;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dFIwML9I1Cig6SdAiuvO9nVLq/nrtM3r9MfRFepo5r8=;
        b=UxSgVPZevvPH62L7ktSHcPS+ZYRhvfaBjaHcx2xnBsNbjGphmQVJK8Z9z+J+a8FBgD
         5Jhazg7swDgHVlkBy4nuWkGCAUM7MLvRKe1V3OcbFBFiw1+m9Qn/IxuGjbecH/VMqI6M
         vFHX8yzd9qPZd8L+uCxMu48fEngTEtCbQOHkohLgwUpKmW71nJS+swGSV2TMEVQKk0gK
         rqs6L8yp1/yGwWpSZPg4jY8IDxTyhWM+M6U04FG53XaNoaLJWRn0r9ZqCbJD1sr25Gxx
         sL/ewXlWEevqsknyLXeiP+IY0XbGncIdMr/xrod2uFSaQ4yhoVZz0l+1I90JD65pSCdY
         DNbg==
X-Forwarded-Encrypted: i=1; AJvYcCXZsSOa9GB+MqhLbRG5hz4gc/dJV7lDjP2xnannEBocvCzgGoOh4MNSI5H5CGNixzM8SFnPK68fP/6BNBfy1ZwHN46x1yOWqhuHFrZL9w==
X-Gm-Message-State: AOJu0Yx94dNGRDi/cXIJm3w3im4E9IL7aYuJIMGebSA/KqrewjKeiL1R
	X3eLo1mHgyHS4bIXGC5sY4v+GAwqcunNh1g8Lxjpry79sePXWOEWREc5mzD6np8=
X-Google-Smtp-Source: AGHT+IFfzB2M2LevgqhauhGVIk/oSQl9F99lkA56JEK7GoiqpOehtsnPlrupsGgAOl52ZKCriOeykw==
X-Received: by 2002:a17:906:b117:b0:a59:a431:a8ce with SMTP id a640c23a62f3a-a626407c0d3mr605363366b.2.1716794448164;
        Mon, 27 May 2024 00:20:48 -0700 (PDT)
Received: from [127.0.1.1] ([188.27.161.69])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a626cc8e295sm457915666b.185.2024.05.27.00.20.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 00:20:47 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 27 May 2024 10:20:35 +0300
Subject: [PATCH 1/3] phy: qcom-qmp: qserdes-txrx: Add missing registers
 offsets
MIME-Version: 1.0
Message-Id: <20240527-x1e80100-phy-qualcomm-combo-fix-dp-v1-1-be8a0b882117@linaro.org>
References: <20240527-x1e80100-phy-qualcomm-combo-fix-dp-v1-0-be8a0b882117@linaro.org>
In-Reply-To: <20240527-x1e80100-phy-qualcomm-combo-fix-dp-v1-0-be8a0b882117@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Kuogee Hsieh <quic_khsieh@quicinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2046; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=/NKx4g17yrslFj63kXaD12eTW6X1NFoq4AP4B+eaOcA=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmVDRJ6FoabRU16VxO/vpp4UncOhfCzCs8qutbM
 KXmtXnXlEuJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZlQ0SQAKCRAbX0TJAJUV
 VmpKD/wPTDzajfnprk6RxhJ8L1Lqp++t0pR+SxyHN3sdKDX/76ZxrV0d1D3zq3YwhEt20KTZcEY
 OBPLe2SmCjZiaFke7lMe3cww6Y79xR0kLzDbsy1majk/zpBJ77x65OsCW06H+76VyLsELFF6aQS
 3To8fBqNxrVkYz3VV9BXVQhHBevztXNQsHIG1FQVHmyOBAZE7hJCM8JEv4ktT9ovx5HCxFd1Y/H
 i/tc0EZ+gs9n9DPIyNhEHiqhi/ogyxdSV+4tUWPk113SnjmkxKTGXVb6pNd8qFtJD/TnhoIcuy/
 agz4R6jb4KMR2tCSISaPhT1FUSEq3WJM7Tu1+TZlomVs6skt7xOkoyE5dL3OHOym4kEPgEnU+/U
 IQIoAo0rO5wFPDYvT1Bz7qPOz+o09XtM4kPV53RH7s2Iplc8qFbsAA5iY9Yrgf3SMDfbkBV+wtM
 a5Ya9/zOBA58xVaJKF8OgsrUYSvLD/Bil0dGYrivQlKVzfAyowtFZcpUUxnn+OvfTBKZa/4BxH1
 fgV25v2aQRyvg+DXdnlXlmc+UOesUlWFAp1lYqW5o3SSkKqBY7HgzByQhyY3mFAdII3HtWIAdl5
 +bj3FF4JDsrvsKtVKApF+viVRnO7c/T0sgb0yh2IFRxxH4rFYqnYTNAouLwynjuJfuLYEFs2bZz
 WLB1VFbbJY3Zv0Q==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_002050_637317_39AA12C6 
X-CRM114-Status: UNSURE (   8.10  )
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

Currently, the x1e80100 uses pure V6 register offsets for DP part of the
combo PHY. This hasn't been an issue because external DP is not yet
enabled on any of the boards yet. But in order to enabled it, all these
new V6 N4 register offsets are needed. So add them.

Fixes: 762c3565f3c8 ("phy: qcom-qmp: qserdes-txrx: Add V6 N4 register offsets")
Co-developed-by: Kuogee Hsieh <quic_khsieh@quicinc.com>
Signed-off-by: Kuogee Hsieh <quic_khsieh@quicinc.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_n4.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_n4.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_n4.h
index a814ad11af07..d37cc0d4fd36 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_n4.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_n4.h
@@ -6,11 +6,24 @@
 #ifndef QCOM_PHY_QMP_QSERDES_TXRX_V6_N4_H_
 #define QCOM_PHY_QMP_QSERDES_TXRX_V6_N4_H_
 
+#define QSERDES_V6_N4_TX_CLKBUF_ENABLE			0x08
+#define QSERDES_V6_N4_TX_TX_EMP_POST1_LVL		0x0c
+#define QSERDES_V6_N4_TX_TX_DRV_LVL			0x14
+#define QSERDES_V6_N4_TX_RESET_TSYNC_EN			0x1c
+#define QSERDES_V6_N4_TX_PRE_STALL_LDO_BOOST_EN		0x20
 #define QSERDES_V6_N4_TX_RES_CODE_LANE_OFFSET_TX	0x30
 #define QSERDES_V6_N4_TX_RES_CODE_LANE_OFFSET_RX	0x34
+#define QSERDES_V6_N4_TX_TRANSCEIVER_BIAS_EN		0x48
+#define QSERDES_V6_N4_TX_HIGHZ_DRVR_EN			0x4c
+#define QSERDES_V6_N4_TX_TX_POL_INV			0x50
+#define QSERDES_V6_N4_TX_PARRATE_REC_DETECT_IDLE_EN	0x54
 #define QSERDES_V6_N4_TX_LANE_MODE_1			0x78
 #define QSERDES_V6_N4_TX_LANE_MODE_2			0x7c
 #define QSERDES_V6_N4_TX_LANE_MODE_3			0x80
+#define QSERDES_V6_N4_TX_TRAN_DRVR_EMP_EN		0xac
+#define QSERDES_V6_N4_TX_TX_BAND			0xd8
+#define QSERDES_V6_N4_TX_INTERFACE_SELECT		0xe4
+#define QSERDES_V6_N4_TX_VMODE_CTRL1			0xb0
 
 #define QSERDES_V6_N4_RX_UCDR_FO_GAIN_RATE2		0x8
 #define QSERDES_V6_N4_RX_UCDR_SO_GAIN_RATE2		0x18

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
