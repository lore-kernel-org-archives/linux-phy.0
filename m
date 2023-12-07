Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 100CDC46CA0
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 12:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D5cGcaQ3iepBu2sAQM3IAu92PtJX9D9QaAyA0vbtuX8=; b=v6cMvSrYaXjyFF
	g47aLI6ELlS+xDSgadbFhvCdzroMWCD+23rf8W9Mz6Y2/FnQG6JvYC8WtolEVaZlxB6R9rXPRUkhs
	dqJOMDK7f3H7tNNauyv4Otyxib/KdggnDD0KnpL+Ur83lQgalSUGIKhHE9xlSCixTb/eHp8ecAkvZ
	eDpJi/TNqx24VSKYw7C/ljOBrZAfnIPPjZDgeHn2ZVJzgoPxDFwrz2ayyx00wFqf2Nm8IVlVTg9DS
	kthrKI30V0O2nNJQp8JN93QihVt7tu8DFSf784pLOfqIOTbcWM2bVIfW/qcQ6tZ3sf4SveNsdhMDD
	gkveN80HjwngCiNexTfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBDM1-00CldG-2Z;
	Thu, 07 Dec 2023 12:19:45 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBDLx-00Cla5-1i
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 12:19:43 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2ca208940b3so7938941fa.1
        for <linux-phy@lists.infradead.org>; Thu, 07 Dec 2023 04:19:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701951577; x=1702556377; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZWmmLlilX3gbcvar7gsjgLRS+VNIOWMovsTuXDoyOuQ=;
        b=osBZfjI1r+ff7Ut/tnzgCq/8YvPXxZ9F2RaDDs4OD/W4hxJNucBjiTkXti5BfQ/DOs
         Op0U/8zFtT0QGYeL3FxyQ/kmaHeN2mfe3MySeWgsikI5jpdh2B83BqllyWp2YREAYBzV
         kzPDxBRh8tW1w+wVxIE3KNUzw7O+o2usRi3we7qFwlMv+PGeGJRytgeLMIH8DbdXXHDm
         CxpaQ8+OiDN4TeiLJbfeER7tTLwTFIjrKgO8aqbE2CA6TKBIRiichZKD1gneqkANzp5G
         eSg7aDOg2knjKzHIE5/1IgrDgWvMW9mOydD30dYTa7fp19VTMjjuzXuzjcIr/u3HHosT
         Ug+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701951577; x=1702556377;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZWmmLlilX3gbcvar7gsjgLRS+VNIOWMovsTuXDoyOuQ=;
        b=g87nhhqK6wo7tGOg/V8o2ppI8tMFPt5NRgFqBN0ZIYOGKNwFeYvVg3c19QzjzQ4lq0
         Jv3r4TDB+nOxKMZl+3GYYcxL5Kz+WmZSe6D9lFZ82lobhwPu9N/h9ctRtlsQ/vnAuWmI
         gQEXiSjAxHnLjAqWQs9zF/GnoxFACAjC8fT1PE0IS38qOfhzcfAfMgdOEEgodpWZoPK8
         sG1hxFs8crLHbBalwEO/gGLpsEBcx+uHyHMXUIn+oGMjaZ9HuF9PzjoleRMsnnYcT6GH
         1JX+IiDCp1zt9TWnWlRtWO0FRp49gk4yeIt4JyaWaxhgz/VRceXughj+GoxepOdH42vh
         s/IA==
X-Gm-Message-State: AOJu0Yw/FcruayGJHDWTed5sxQCwqTBUTwPfA244RSkx/fnDcdbqEi92
	dWOI7eB4U/1cTIXNSSwnNBXviw==
X-Google-Smtp-Source: AGHT+IGFQJGebxxN2tcnm9tcmVkKmdrdb1Nyp89hL+C6X5axtSsbHQfpQqOxwa32AGkCQ0y3vNmGng==
X-Received: by 2002:a05:651c:221e:b0:2ca:2966:e74a with SMTP id y30-20020a05651c221e00b002ca2966e74amr1142174ljq.26.1701951577479;
        Thu, 07 Dec 2023 04:19:37 -0800 (PST)
Received: from [127.0.1.1] ([82.79.186.233])
        by smtp.gmail.com with ESMTPSA id f24-20020a170906c09800b00a1e814b7155sm761394ejz.62.2023.12.07.04.19.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 04:19:37 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 07 Dec 2023 14:19:11 +0200
Subject: [PATCH v3 2/7] phy: qcom-qmp: qserdes-txrx: Add some more v6.20
 register offsets
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-2-dfd1c375ef61@linaro.org>
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-0-dfd1c375ef61@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-0-dfd1c375ef61@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1487; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=BcYxyyV5U8qIZKRy35xFhfItj4d9siglk0tFq0+vIS8=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlcbhNzm0ldeFCauD/xTqB8qGmAbsCGebx5egGn
 jEIL/FSMBmJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZXG4TQAKCRAbX0TJAJUV
 Vm3sEACCt4aFQ6xVg4JADwBmQFo3r5PEQiodTm7vosEVIMVrs+/Jc3FJPe6KGscStDIHQSQY+j5
 5GmeTH3v8WvriwOnmQw9ut+QJj7JzUnnefNn+b5sirSvoUidZNQv5TeudjhBruqekkNTOSZ1DGG
 6iyEXxNcE1Po5JbaZ4GSATn+WVjTulB9Rn+v5GgwYpBC5zYllazYC5Y7dW0S0JhTytGn7QUYIN4
 nm4dZcmpSNz62suN9aUJpAfAh5cyFe0KMsM+RxfLVZdiw4X7eMAU1jo5FPBPefvfMmGhVjtfrLN
 r3ZL/pSieuz07ewzvx0fA81TMjvjCiHBR9iSrorvii30j8Ulu0VZCLv7tkTN4BzCgeILCLt2SLO
 ueikdn3oKyIChAXP6PKkM05Jpb7ubHLgWYkrDYSlSg1FOHgXpTmXvLqzq2nKKbAUv8kFT5RzrD1
 JKdV0SHfI5Gcwz7WhnSzc5rJjODshqR63FLkuNvMemkt/rT0D7Qq/+t48j11w3FIb6mA3djVLgk
 DCj/91V0phkGc+Ga8Vj0ue0nox6aCSzz9qdGRjwzihhuRjpAsVTdzf1KPUWYLreN3V8RStQI7m4
 R1tpE8zWXRR9R84EwpJXWi8FUO6i+gMTItdIrO+UYFOqSJ0Hupfc3IjH1hEfISTFCe9h5zpAoGX
 xV17KgGBtYR/wmQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_041941_570964_C0005211 
X-CRM114-Status: UNSURE (   7.35  )
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

Add some missing v6.20 registers offsets that are needed by the new
Snapdragon X Elite (X1E80100) platform.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h
index 5385a8b60970..6ed5339fd2ea 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h
@@ -15,10 +15,13 @@
 
 #define QSERDES_V6_20_RX_UCDR_FO_GAIN_RATE_2			0x08
 #define QSERDES_V6_20_RX_UCDR_FO_GAIN_RATE_3			0x0c
+#define QSERDES_V6_20_RX_UCDR_SO_GAIN_RATE_2			0x18
 #define QSERDES_V6_20_RX_UCDR_PI_CONTROLS			0x20
 #define QSERDES_V6_20_RX_UCDR_SO_ACC_DEFAULT_VAL_RATE3		0x34
 #define QSERDES_V6_20_RX_IVCM_CAL_CTRL2				0x9c
 #define QSERDES_V6_20_RX_IVCM_POSTCAL_OFFSET			0xa0
+#define QSERDES_V6_20_RX_DFE_1					0xac
+#define QSERDES_V6_20_RX_DFE_2					0xb0
 #define QSERDES_V6_20_RX_DFE_3					0xb4
 #define QSERDES_V6_20_RX_VGA_CAL_MAN_VAL			0xe8
 #define QSERDES_V6_20_RX_GM_CAL					0x10c
@@ -41,5 +44,6 @@
 #define QSERDES_V6_20_RX_MODE_RATE3_B4				0x220
 #define QSERDES_V6_20_RX_MODE_RATE3_B5				0x224
 #define QSERDES_V6_20_RX_MODE_RATE3_B6				0x228
+#define QSERDES_V6_20_RX_BKUP_CTRL1				0x22c
 
 #endif

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
