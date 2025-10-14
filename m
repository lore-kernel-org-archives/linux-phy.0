Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 224A1CCD187
	for <linux-phy@archiver.kernel.org>; Tue, 14 Oct 2025 09:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+v7RSdCmPWBW26csXFhzVZHBfvlX5FrzywIo6fVYrg=; b=lKkzVrQMm6U9Z4
	B0a72ACmiwroAFx8tbB+Y2ZXz9NjrZg5/iCVVdrbRH9QvPYGFh/6Xqzr/3FPS+ijlU+erCJXeG9ca
	6MeV3w4vA9ut0dxoxXJ5ZObUdB3JoszuwaHJqm72oIV2i/l1mKCcOtUtIoXRysv6ZjVu1BermLCnS
	F/TLYtc3zGUp79D/a/KQoy7ySUCTnHwFiEstD+2imGbmuZJFBy2dCrxsIjYfiQOAXBu4f8IViy2ly
	IhBilS/kNynqt6YG7sPWsDwBmYl3leuX6r+Ic4nnUwWXTZJzJ9EK2hYGT51lt/qzC72nEUhq48WzC
	MkxVDIWIvJlF8Z5we6RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8bc7-0000000FoIm-3Nnt;
	Tue, 14 Oct 2025 09:46:39 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8bc4-0000000FoGN-2bUP
	for linux-phy@lists.infradead.org;
	Tue, 14 Oct 2025 09:46:38 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-3ecdf2b1751so3661051f8f.0
        for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 02:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760435195; x=1761039995; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bzu7zb69wVj+tqTtPM7cxHp0BkBV/6RIMLEciU347jg=;
        b=OZTYdaKzvpIp2Hd5fHmdpe94Gi8kmfdwKztD98fcIpQyYn81YTFBkHD5o5IdPmFL59
         wfs4gLZdfQjUNUpB835FXPa4OSZMw3Wom5EblsrMvc5jSQX6eNoGbvtromG2nPdPi/ny
         BgL/f/K6LzDLm3FlWLMlyam52vwpzgdRjjx1oz52VhRvTqfhIR3wzzgx7tGj4JQ+mgQb
         4FPiDLeaibf9EsYrrOG21x2+Ybj9Yrv/sBy8ozL7BDfUglH69Y7SLhZdKpPzvE4Pv0dK
         Mu7bRDI0PJ0Op/E3ncAghO6nQkKwh7JvUxJM9sZfVC5NGqIAdlKQjzFBAZE/qLMOVR/A
         XfQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760435195; x=1761039995;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bzu7zb69wVj+tqTtPM7cxHp0BkBV/6RIMLEciU347jg=;
        b=jlLRzkjSWePhwYLwsTGMEK7lLiEST/X/BOKx5O2ZIdhz+DNp90YdBKIU2wl3UNcvsD
         q/6aqyOVQOyRtD4CLoPB2U9yyTRhx8vHdq/3rBSaXWb04gizO4ZcZw4JsnWTYR5jl397
         lIEHlL2WagiK6NtBVI2lkNjsaHblXb52XF8yyptNNLrAbXhpJG8vXGhQpLazbIIY3rpL
         7PivJRSebayJ7RN3wepded+tKXRxWZ0MZTHr5Z8L80pxqHljEydA+oLdYmw6c+092OR4
         DWb2KP0LFFQMPDg4UhDEtNBA0PTVoT7mW/YY3Vb+N6Nl09BJ96Gomp/6Ff+cMssNVtWK
         cFtA==
X-Forwarded-Encrypted: i=1; AJvYcCUu5GIOR9MsebPsAepDb3dkAcCfIFrLNlfhyaxZY+1GrwikG210bqLslo2kCbsOkhGjyhfqYt0M/Iw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxdTehpxdPoCddseOIqVRDe7detIQmugKnnl3tmUEt4nxgrZZsm
	yD64Ezzx0kSu41MM+mZoNf0aOnQZAJIr0Crf7QSgTqWy/EFHGBkAWUJjwNtv2SAzCYY=
X-Gm-Gg: ASbGncv0KijWbBZRWVN2GZh+sUizN4/ZcTE2xoOiUfhIXMVSf8etfaXrFkRCIT4+eD4
	nELoRQbqiHxvhKtEvwaPyZ5p3xP0mTs1O4WITqjnhkBADcFQqilbMJ+IYUeUA2rQiVZP+T0DJQJ
	TLoJ2WbYRY0ZQciyw7HtjRJdqHU7X5BDvulm3mCO/liQiU/baYvkpu0d4flNdwqyWFQvgluvB8C
	w57CDtJzDqq7HsqvavhyHQZQ7cvxGNZoDi/MJ7VtCLsa7UuQWTUDncvEOom2y1kI43Z+daBd8wZ
	tH4bdF76RUXA0lY9YgcdF9kbOVkMEiN2aelDTc55IYx8kKnmZzsuEQ0jOqK9Eas9wkNf46PNMT+
	ADJVJoXPC8u4MAzQRcHjWJOs35gaSrpNIfEg5QU3W5t8JcBInWK87hA==
X-Google-Smtp-Source: AGHT+IHta3Li5X7p3tARLTwnX8shVwR39qDFoRnhPiY5/C8uOkis2kRSCCn/31skW47G6N/ubp5QbA==
X-Received: by 2002:a5d:588b:0:b0:3ee:1368:a8e9 with SMTP id ffacd0b85a97d-4266e7befe4mr16005800f8f.17.1760435194566;
        Tue, 14 Oct 2025 02:46:34 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce5e8b31sm22866442f8f.54.2025.10.14.02.46.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 02:46:30 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 14 Oct 2025 12:46:04 +0300
Subject: [PATCH RESEND v3 2/3] phy: qcom: edp: Make the number of clocks
 flexible
MIME-Version: 1.0
Message-Id: <20251014-phy-qcom-edp-add-missing-refclk-v3-2-078be041d06f@linaro.org>
References: <20251014-phy-qcom-edp-add-missing-refclk-v3-0-078be041d06f@linaro.org>
In-Reply-To: <20251014-phy-qcom-edp-add-missing-refclk-v3-0-078be041d06f@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Sibi Sankar <sibi.sankar@oss.qualcomm.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 stable@vger.kernel.org
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2533; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=Zz2R5WmG71VGhvfhWPgwTOijPEaexpycDrO5L76SRq4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBo7hvmyWGvBIBA0KnfwUuTkQ5O0N0SRXHZ6M32u
 nJXVV82Xw6JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaO4b5gAKCRAbX0TJAJUV
 VkUYD/9DaysPmn6S1AiyoZDFnE8K6Uq7dCgppMiJv/5PDo08uGa+LB9OXUIhAa5VwHmc+pkqnkE
 Fcs1rasiDm6daGLMXF3XC+wPXg+fo1JG4IctnzOytQADR6S4SwMvAlghYl4AZus2Xc/NVQis1FM
 Q1LpvniFsJgNxi+x4V1t8eBdIkMOy/AMDpjx5YQYGDIaZ2rgBY9pLop3DxTHtGrx9Mgzi5vYxq9
 RpHH5ng32pUTq0HEYjgutCJoodn1guq6DbcKbs6H6aHyHQutpKdcE7JwzF3k0uArkjptOnJoWy7
 RwF0zXo+2UafhKxZhyEZxfYg35HyngzCmsWpxRP/fE2lmThXkDXL+8v0c3JmAsaG2PXNyn6JfNI
 OhaX4MJ/jzdqM1u4KgkWm8/v/f6x/q+ztig+BSoYQGCu8ByCWXAm9sO4wq7GS0YIVgqXdck7B5d
 41ziXNZoJb9zvesAj8MapR6Vszx9hn5Cyo62oM6+H3nH24KwCtmZY9h3WwZ/fPTGNV2VskzoeNp
 jvy8NLxN6ylWBbnU46PFIa0iB11iEPhGSfsQwWclkBk8Avm6X1NZdIUjK7IY28y0KVH3Y4lOdBu
 ioGUW6qPbhDa/D3bfxiz54FAGMLXRSUz0BDRVhUHQL4iI3g6CrHIWa0GZbh+NmLm5OhIJ8DEZbn
 4mf3n6OXXA5iSCQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_024636_688764_FF796F32 
X-CRM114-Status: GOOD (  14.98  )
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

On X Elite, the DP PHY needs another clock called ref, while all other
platforms do not.

The current X Elite devices supported upstream work fine without this
clock, because the boot firmware leaves this clock enabled. But we should
not rely on that. Also, even though this change breaks the ABI, it is
needed in order to make the driver disables this clock along with the
other ones, for a proper bring-down of the entire PHY.

So in order to handle these clocks on different platforms, make the driver
get all the clocks regardless of how many there are provided.

Cc: stable@vger.kernel.org # v6.10
Fixes: db83c107dc29 ("phy: qcom: edp: Add v6 specific ops and X1E80100 platform support")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index f1b51018683d51df064f60440864c6031638670c..ca9bb9d70e29e1a132bd499fb9f74b5837acf45b 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -103,7 +103,9 @@ struct qcom_edp {
 
 	struct phy_configure_opts_dp dp_opts;
 
-	struct clk_bulk_data clks[2];
+	struct clk_bulk_data *clks;
+	int num_clks;
+
 	struct regulator_bulk_data supplies[2];
 
 	bool is_edp;
@@ -218,7 +220,7 @@ static int qcom_edp_phy_init(struct phy *phy)
 	if (ret)
 		return ret;
 
-	ret = clk_bulk_prepare_enable(ARRAY_SIZE(edp->clks), edp->clks);
+	ret = clk_bulk_prepare_enable(edp->num_clks, edp->clks);
 	if (ret)
 		goto out_disable_supplies;
 
@@ -885,7 +887,7 @@ static int qcom_edp_phy_exit(struct phy *phy)
 {
 	struct qcom_edp *edp = phy_get_drvdata(phy);
 
-	clk_bulk_disable_unprepare(ARRAY_SIZE(edp->clks), edp->clks);
+	clk_bulk_disable_unprepare(edp->num_clks, edp->clks);
 	regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);
 
 	return 0;
@@ -1092,11 +1094,9 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
 	if (IS_ERR(edp->pll))
 		return PTR_ERR(edp->pll);
 
-	edp->clks[0].id = "aux";
-	edp->clks[1].id = "cfg_ahb";
-	ret = devm_clk_bulk_get(dev, ARRAY_SIZE(edp->clks), edp->clks);
-	if (ret)
-		return ret;
+	edp->num_clks = devm_clk_bulk_get_all(dev, &edp->clks);
+	if (edp->num_clks < 0)
+		return dev_err_probe(dev, edp->num_clks, "failed to parse clocks\n");
 
 	edp->supplies[0].supply = "vdda-phy";
 	edp->supplies[1].supply = "vdda-pll";

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
