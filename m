Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8CD7C47258
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jan 2024 07:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bubQmvQZ0550ulWN84/4T66n1O3xnVzjTcLgFU1G0w0=; b=oPi0z9TE/wmp30
	1wdT+lLSP1v5h8lu8Ihh6ltkIuwn/85NTvijAlc8LJnYzCm9jc7EVNcFjDFJ0hZAUaa+PXEFj+v7P
	WKl1Tccpjfz5A06iq7CH+AAvZSkD6rdYXAN52v3vkVFCT/70essrXQQNwtGfb4mP/LoAWd3C3n6hs
	ErJle8ngZ3aIWdEIPdWloY5+tYjqqzygRgr6g2P3wtqGVjY9K1TvZAOKAlWkMIxbDbm16SiPFNAuV
	scg9DicyON49j0psCxkS/hi3TWwX71Jtm8lnsEBI25Q/wK0o4PhH8XOdksOY6+xtkHPWY4Qpe8KF9
	+HN3AaqdFdhjubkh3M/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4hm-00000001j8k-0xW5;
	Wed, 31 Jan 2024 07:08:18 +0000
Received: from mail-oo1-xc2b.google.com ([2607:f8b0:4864:20::c2b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4hk-00000001j67-18PC
	for linux-phy@lists.infradead.org;
	Wed, 31 Jan 2024 07:08:17 +0000
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-5957ede4deaso3104488eaf.1
        for <linux-phy@lists.infradead.org>; Tue, 30 Jan 2024 23:08:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706684892; x=1707289692; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uQzh0HKJLV9OIo7v+P8AXxLZS3sXrPK/5N8JyocCrC8=;
        b=yx64b30Lb60nmCX26sdjXB4Um/NMAdswP9iIuq6Vv0hm9J1zYqTo3gq0jJzGhBpdvf
         02NA5Papz/nh70MW0mHp+ijim3s5zDqYN2ct5HZv56G92QepFYAt5x4fY+T1BinYRS9u
         Zd60OiRY5zc1q4MEcEFtAzSrNa+FjXd5ODPfeA58p53AX6XsK+vsWDXD2T8+lDnImo2p
         yJ157gomqJm8M8xTFraCpyjD4DqH7j0Uy2orkKfceZSmcoJqTGRC1LCkhOVulylga0xQ
         O+YBppnX0lxhtpMRqctxVNtSqFX4Nxz13rMOJM701xzl5jqMLfBbqdyVkEPCL5tBJSft
         uGQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706684892; x=1707289692;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uQzh0HKJLV9OIo7v+P8AXxLZS3sXrPK/5N8JyocCrC8=;
        b=koD5rVwLOr2LOz4chn3TwFxcwZyOcEnmJZJK6hs648UhMmm7FyvB20i+yjkuL9v1TO
         vH6XLURwkju1UbUvrZkxX01Clufm3pgRbF1PhH1QR3stHC39MkwCvy81fNNErtKFh+ZJ
         DIRkerNfDEh/6grSDU2fx65NU6v6OKH8F1Fz+8Uy5txN3uDibT3Xfzn3+9UiSXwidt8G
         vqWj+BF8FBN+Sivx+AJHn8p/++JJICDztitkL5gahnhaoijGpcdBjYnUTAQKHPYcgZIF
         FiuI0+s9KZ9w2WIYe1fy1QlTIlHsFH2XWqwJpLBBmdMDTEYQad3K2Xa1mn425Y+5iL+a
         7TSw==
X-Gm-Message-State: AOJu0YxIEWLaEmxLSw6iAJl+NW/vefrq8eOouMG1FXmhoGInPYJEcTxf
	Cku7FXAqKebBsk711ggZP4FF4YPs/28/29Oval1nzDE2zt8LJPxBi+Q6pzwSEQ==
X-Google-Smtp-Source: AGHT+IHhaczXoyebcX0Ci/z75+z8a7nwadolealrO3mrZHk66PieHH3wFp2W4NYZNelqO7uo+4O0VQ==
X-Received: by 2002:a05:6358:2915:b0:176:a5f5:d266 with SMTP id y21-20020a056358291500b00176a5f5d266mr660926rwb.6.1706684892422;
        Tue, 30 Jan 2024 23:08:12 -0800 (PST)
Received: from [127.0.1.1] ([103.28.246.26])
        by smtp.gmail.com with ESMTPSA id lp17-20020a056a003d5100b006ddd182bf1csm9087956pfb.46.2024.01.30.23.08.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 23:08:11 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 31 Jan 2024 12:37:26 +0530
Subject: [PATCH v3 03/17] dt-bindings: clock: qcom: Add missing UFS QREF
 clocks
MIME-Version: 1.0
Message-Id: <20240131-ufs-phy-clock-v3-3-58a49d2f4605@linaro.org>
References: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
In-Reply-To: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, quic_cang@quicinc.com, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=920;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=Oh+qBJcINLq2OcoHBhkxeh1csmVsCpWRCken5YykIEM=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlufG7TeUQgpF/a42PzE+MhGgIrIUjlECuigRwm
 nPn0vpTJwmJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbnxuwAKCRBVnxHm/pHO
 9a8JCACUr5RRPWChWvqVroeXCyW19FzPPkP3kW7i8BiXlVihSOZhiZS6z/ylsgq+r19Zl6xggQr
 KS6VA4AAunNd/PnXR1+GMTulirXY1SngbpM4hRKAk0aipixyBHTwFMCq/4ZjdVDDScdOy9BIh4A
 cENw388V5jgp2GpU/w24DE5sWW4jQC2A/vsco5bqDvqCwAmdb4puPFxQxwb7tQvMXMBtc58sXoA
 xPigBzG5dyXSa7DiX7MN2DlPazv1/1ZfxpbSqFCn/mECiFjPMr6gGdEa4IlK1mHFGrmwDA/zUod
 14V05wtx5CuXwbyj+vhpTDv5PULQo6K9etzwCzxeryQCW0a5
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_230816_340670_CA571244 
X-CRM114-Status: UNSURE (   8.22  )
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
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
