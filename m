Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C80FC46CD3
	for <linux-phy@archiver.kernel.org>; Mon, 18 Dec 2023 12:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1AeJicluiiD8Rj+y2XmteEvU6MbX1uwTRGR8r0GW6gA=; b=QNNnP1cK5Y3a0U
	6hhg8YQMlLahsaAMbMEAgJXIdoPVgYqUkhQspi9AVfP2vBi36kvfrXrV1zHvZPUgq1R0QBpCbzfV1
	XJe2YrTEL5LG7Z3wbCv+YjW4936t+MreUDSUXRTDH78ID9DFGkvNOkx9+bWfBZWPbEwf9LWFVp3yf
	9W/a1Bkh+FBha9h8DWdACZcgzXHPcUoKBLzBrBuKhpitcPWcxvRBKbhiDaE7P9sVsvEqHRyVnz6re
	hDdICVXi5O0vDDEoUR6RZPqbYQqIk/P1OtSkH8muDi3VvoV0DNLSqIMLFbXcoYsstynaATtMYc0pN
	93+ZtuLMreCz4xUY1o4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCPV-00AYKT-33;
	Mon, 18 Dec 2023 12:07:49 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCPT-00AYIJ-1F
	for linux-phy@lists.infradead.org;
	Mon, 18 Dec 2023 12:07:48 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-1d3ad3ad517so2509905ad.0
        for <linux-phy@lists.infradead.org>; Mon, 18 Dec 2023 04:07:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702901263; x=1703506063; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4lYTGtSYRVAJ3w0j3YsinoBhP2NVVpIT5xX2iQPFdpw=;
        b=U6yaVbquXzHdoQkvUPJWislpsle2xEr6ZxLtPrAk6h3tkMTVaxDaUGBH35n+bo0A/Q
         MVbivt9oLp63YUdcKaXLhBzugSe6J/dqfP64in83av8okL2iS4ioWN7AemyWzZ8bJKoK
         GgD40cLPCv+zINKTdXtK5t8C+O3hxfUXv70sHmp4LhW351mxqH01hr3rAgTUJGWLpXTV
         OGQjSa3KdTJLL5VL0+p8roznd3j6DpRsm8Vzz4Zyv7NQ66A1Xku+6OSUHfuOxsaMD/I/
         v/KHqQFz3pq6vlXT2feo7jwS9MFIw5XmBF8Q2U+o2gCHyZPoFefAtqQcfj1NjyqSU1Y0
         1M8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702901263; x=1703506063;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4lYTGtSYRVAJ3w0j3YsinoBhP2NVVpIT5xX2iQPFdpw=;
        b=RHmTrO3XgbMSDlUljHGrb9QKDFOm6h2zFoB4dDHvidFwY++teHyhJABq79mAmS5ZCp
         Xn3uLfhHTiTgYk/qDvwdwUJIYNba9B85q8aoOhB9dwPWdsD5aq5oCcaHMhuso8J7VCJn
         2smNiyzy4vW55TwfEYkzCGBa5x5bRL1D9jRd5TsjWiLpVFHZyFV3lawpmLk3XOrxJRV5
         nFfPPL3FQRK6g+OsBxhC9Hv0PfyRLprkEkMl4vj/fBufNKOQLu2zvAvSpuqIbd+UyYjP
         38aWsgj9Kmy8j18r7Y9c1f4wyGcGjXPSefCEJhoGqoCrTRh3WomGR4MZ6aH4gi4rOdtu
         nOLA==
X-Gm-Message-State: AOJu0YzbXjCV1pI25Fg8O+LH5TPJKyuPUG23/4Y+0/Q9wKarSBpQ6uuW
	AtJTGhN2Ibfl/pGXpXpltSvm
X-Google-Smtp-Source: AGHT+IFchFcItXdYBMDjNrlYDL5eL8NpYrejRm/1PBJqhUeZQOSSH05NdaFx3MvPVMg5AHAMkiQ1PQ==
X-Received: by 2002:a17:903:32c7:b0:1d3:6110:32fd with SMTP id i7-20020a17090332c700b001d3611032fdmr4820556plr.110.1702901263463;
        Mon, 18 Dec 2023 04:07:43 -0800 (PST)
Received: from localhost.localdomain ([117.207.27.21])
        by smtp.gmail.com with ESMTPSA id j18-20020a170902c3d200b001d368c778dasm1285709plj.235.2023.12.18.04.07.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 04:07:43 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	konrad.dybcio@linaro.org,
	vkoul@kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	quic_cang@quicinc.com,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 03/16] dt-bindings: clock: qcom: Add missing UFS QREF clocks
Date: Mon, 18 Dec 2023 17:36:59 +0530
Message-Id: <20231218120712.16438-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
References: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_040747_434218_62978028 
X-CRM114-Status: UNSURE (   7.33  )
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

Add missing QREF clocks for UFS MEM and UFS CARD controllers.

Fixes: 0fadcdfdcf57 ("dt-bindings: clock: Add SC8180x GCC binding")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 include/dt-bindings/clock/qcom,gcc-sc8180x.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/clock/qcom,gcc-sc8180x.h b/include/dt-bindings/clock/qcom,gcc-sc8180x.h
index e893415ae13d..90c6e021a035 100644
--- a/include/dt-bindings/clock/qcom,gcc-sc8180x.h
+++ b/include/dt-bindings/clock/qcom,gcc-sc8180x.h
@@ -246,6 +246,8 @@
 #define GCC_PCIE_3_CLKREF_CLK					236
 #define GCC_USB3_PRIM_CLKREF_CLK				237
 #define GCC_USB3_SEC_CLKREF_CLK					238
+#define GCC_UFS_MEM_CLKREF_EN					239
+#define GCC_UFS_CARD_CLKREF_EN					240
 
 #define GCC_EMAC_BCR						0
 #define GCC_GPU_BCR						1
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
