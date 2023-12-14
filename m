Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59DC9C4167D
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 09:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1AeJicluiiD8Rj+y2XmteEvU6MbX1uwTRGR8r0GW6gA=; b=gpId0FCFtiMPHX
	7WCB76VAiKbJUDcnONgb32BxyVADUpaSQgi5+LanikgM/MFPSzw/U0uA3VHNXl6kEr2UAFYnwChi+
	RrIBbiJNjweYDugqjeNYH9IOzYsKF+ib/2eN7Y/RDmLoULXKiWt8z6SavMltTOXO20XveVQUP70g3
	9BI/JFBK5A6hpxsCqucFCWLYBeVGuDxKQ1lv2QPHe0I4fMGk4A7FbPheo6Xlwup/jYRtwOi5towZZ
	XKlJAzwV+kenqcKq2ZkzvQ3PATZeKi8hYZCrjSAINmkCjJ2lyvIkBOAUMNYXIwdlMNeFs1I8CiU1R
	xSTx1uvAoLwu1YhMAnrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhks-00HJaK-0I;
	Thu, 14 Dec 2023 09:11:42 +0000
Received: from mail-qk1-x72e.google.com ([2607:f8b0:4864:20::72e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhkp-00HJYy-1c
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 09:11:40 +0000
Received: by mail-qk1-x72e.google.com with SMTP id af79cd13be357-77f8308616eso214826085a.2
        for <linux-phy@lists.infradead.org>; Thu, 14 Dec 2023 01:11:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702545095; x=1703149895; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4lYTGtSYRVAJ3w0j3YsinoBhP2NVVpIT5xX2iQPFdpw=;
        b=QfyGjxoSfFBqekD2/NTj8c+FPmgALDOqG1DUfSe21MRboLjyBbV8aIkNZC390rpBxh
         rp+aVe0WsAmsALetPyZkFIEINoQcHAxMbI5BXAbWxkHVZKHJy7lcO366P1VHm6JCiSjs
         TmeRhHXjxTOHifX3u4xRzEqCLbZwpKvD4BstKbzaWZ0KgTkCanb51Do9S2P+OtP+vd2A
         n7T2dUL7ATggMC6nm+EMWAMovjbEm0mKi6TYGBB3u60La2bLdrxU2edG2c8nwkdXs4dk
         Xd8+LM7Ng311oWPJniG1vIVHOsrjSy0mfLdIyXx6AyTWz+wWgOXxLt2nsMcpRAoQv8Fi
         PDVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702545095; x=1703149895;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4lYTGtSYRVAJ3w0j3YsinoBhP2NVVpIT5xX2iQPFdpw=;
        b=A1MS/4moZfV+PXoORqQ7I606DeOsLKr3vtMxFDmu2kxIuKS/ABQrysWqEQFxF6uEdj
         KzDFdEeSBAJVGzwk6IXqznUZEm+PRC/AWuVhhS5rBc+7LzipwwbQvZQb4UCrWGOmx15O
         wdwAYVU266OBW2mD4WXN8x4iMO9TPRUT6tYa5rwumiTnyhcvcebCn5mXed7ujN1heUC0
         orx1ngkDzpZWX4TEOKfblZs0xx73fx7NHDGf5if1V7F7wNJD74z0QRo9qoiPiqT+ydir
         KQy0iehIWU+hAfHKsgBslGFXYiIKmEhVWh5NU3QqrqWNLwcStpESvIzQ52PzfrxRb2ms
         PsSw==
X-Gm-Message-State: AOJu0YyY0225EhMru50pABvcnbr+Zhy6jujzytp+TdfQkjxtaG4vkRDC
	ubTSnGAfh0XYvLt7zUxooRQK
X-Google-Smtp-Source: AGHT+IGKjUtEbBXnGiZjfUn0k6n+eh/VheFJ4i3/ykfZueH9WXrg9HF8KfVn30FUrPoO37tXWztR1g==
X-Received: by 2002:a37:ad03:0:b0:77e:fdb2:1598 with SMTP id f3-20020a37ad03000000b0077efdb21598mr9933316qkm.10.1702545095584;
        Thu, 14 Dec 2023 01:11:35 -0800 (PST)
Received: from localhost.localdomain ([117.213.102.12])
        by smtp.gmail.com with ESMTPSA id qt13-20020a05620a8a0d00b0077d75164ef9sm5144119qkn.124.2023.12.14.01.11.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 01:11:35 -0800 (PST)
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
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 03/16] dt-bindings: clock: qcom: Add missing UFS QREF clocks
Date: Thu, 14 Dec 2023 14:40:48 +0530
Message-Id: <20231214091101.45713-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
References: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_011139_535763_4B87E8E1 
X-CRM114-Status: UNSURE (   7.52  )
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
