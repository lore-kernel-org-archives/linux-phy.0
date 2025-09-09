Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 872D1CAC58D
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 09:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LFhTLDXYURcM1KkoY9gRCw6YwNv4JvwlrbUDEvkMvEY=; b=PJz/60fX7DIpA4
	wZqtxoqqo67W6dkYA1KRUomhSYezDZMzV7ARWSegi819Lq77cCBpXV0Rf8Xg49dEwOhAwGZsJPPVc
	RlxmU4keTbUyoSVv1ER6emT58+7GibeTZqHS5R30ZzLQhcLLccPBdyEFs1HRxTaCsu6FmVVUTS89l
	eIBV9s68EzXP2Cz8x0by3dUia2oq8F/exYRF0FP1PONxbC55yt8+R7Fh2l5jL45PyM4jZA2NcKMQ3
	/dDZDKkOxsFDlciMdCXQlQgcPqC9APcjy4+8COjS8z77eptjMVogu+Q2jD7aPeWOkq+fqQUbe87vE
	Rtmt/daOqqu7dzmvMUAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvuod-000000062ZE-0rxT;
	Tue, 09 Sep 2025 09:39:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvsro-00000005BpV-34aV
	for linux-phy@bombadil.infradead.org;
	Tue, 09 Sep 2025 07:34:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=5rg/RhV2e1lLuIc3WSHEgsNCRdRmHci46R41Lm59lsc=; b=d3c8kN2BTgcZWxtNIkXdoNJUNl
	ArWtr2v2DfqAu7ST0bCMwAECqYKXALIc7y/up9u0alHI5qrwXGZOKd7aAyU8YlZpn/9DOrYWOCVH3
	1jGmDMV7gcY+EPj+c8SgKLsVDkmVnHdIcDuog0Sh4GXo64KEy4X6M6iYIZO89031/PryAbWLfoVWO
	qhjvIDTi1f5h0drlWtys21vfWglKijpXmJ8EHuzSI9ApwAvz5ch+qAdILgWFNiVyu1Shyf6wDtAy4
	/hkLWi242lbvlTh/i1ZsctzMOGXCwE/t11VbFDjyXQ0Ue5FQ8ZK6fiACc/YEPellnEE74klYeDWK6
	Cvpwzy0g==;
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvsrl-00000005EaS-0XOK
	for linux-phy@lists.infradead.org;
	Tue, 09 Sep 2025 07:34:15 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-62105d21297so7781792a12.0
        for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 00:34:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757403251; x=1758008051; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5rg/RhV2e1lLuIc3WSHEgsNCRdRmHci46R41Lm59lsc=;
        b=FPpPYyBlqAm3RBederXIPEDjsLeAptCa9UlbIPhey1fevK7NU325/1y/ZywPl2qPa2
         /qDzCaVPn0/t0AhwtBfa8ffN27p0HKdUmrP+/5SuC68XdPQJ+jONFOHYSnBqXmbQzCS9
         ZryEjNDJrGTTn1IzlWSGhArV4YL4SDF0Sn/ZKyvThtwcu8sD2iGWWV7eCo8LgBDiV3H5
         49QCLFwa7/nHLmYSqef/EMVYy3w0zl+KSMA3/BFAErKsfGL+YTH6vTgcQcIC/0suFnIV
         Sju3vnk/eqocoELd9jO5fzbtj+ILpw3W+bdViNb8OiOOWH+DzbkMeMc6h9F+iA/pPb8Z
         F7pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757403251; x=1758008051;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5rg/RhV2e1lLuIc3WSHEgsNCRdRmHci46R41Lm59lsc=;
        b=ZzVWxPWuqUEJbKz4pbAVm/5UjSWSDb24USyT80a8DJvyH5muGSX2DK30goItc9l+70
         0iFOVgK0M0rPRnISvCrLzwYQg7NGGwNkeMw2KgMqh7jzQX8CRkc73h9jszNpyO/CPZa5
         afVHtx5RCdpKHEaiHPNvkCvuESAJV0OOzm228wfmm1E2glKRTH5AvtLOtnUfTQ8EiwoJ
         W1kFtcchalfc5Y0kJ1pHmo3fimmincU1ab6NspCxdbUprKi5ry51E6N1htJlv/f8cgtE
         dPmTokL1hiDpdBuTPBpPIrLK8QwiBDDU8nykBcw+rTh6hW4RPdPT2Cu9TEW/2CjzvLgJ
         AIjw==
X-Forwarded-Encrypted: i=1; AJvYcCVpQhpJbd6lctbhy3bmhKfwiqsQjT+bvOBwHpuQKjf+EZmURKsFVCXR8VxvovgkBrvArmwXVy8YTaI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yza98IHohDTnouBJwGyqrzYrJhzAfJaMr8rBRnSUv6PxjGo6kD0
	7VlUioJ6536xAISruYgDNv9bG/b4695kYEk3Hyjj62CAKv42rvsSAVbydAceYDeGKHw=
X-Gm-Gg: ASbGnctQ16tm3aeNHusuUvfZpuy72nMEiA6UBqQYDGt5NVoxCRuHKOwpsWbV6Aic4XH
	iXZbFLe9BhIms6uyoOSdCsEi8i+wdfZy+2z5nRx1W9euUAOwojPnp+XjycseYo/YfuIDCSUP0DT
	vFsbriXMq0u/Q8mLF6Z2obnnPlLPsMHiBuekYR/RZWX4Ey/TjzhUp6+qaRnPgLlpqG+oEndurQY
	/WQrKRyunPPCqBDNqb/7jGjK+n4M/8s8ySvcpd3fG70aGpu3BhJaJ/rrJhuRE0+tY7v0HuNpGsg
	vojO89PN84qlEmPpU9q25ffXhfvtPy+k0UVL7+IcnTv9xCSsaY24e1iYND9sblkJUxJbvBiYchl
	nol29Ln8tBcW2L8e1SwHwECplcZhADLCRmA==
X-Google-Smtp-Source: AGHT+IEoui16Wu4c8S3L4aHsSGtceBy3SbjTMaW7kjjsQ9z2Qa3g8mOzn+XgsCcLq1MlKKPXh9Gwyg==
X-Received: by 2002:a05:6402:2553:b0:617:b28c:e134 with SMTP id 4fb4d7f45d1cf-6236d2ca6cfmr10693352a12.0.1757403250815;
        Tue, 09 Sep 2025 00:34:10 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62c6a264285sm226976a12.2.2025.09.09.00.34.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 00:34:10 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 09 Sep 2025 10:33:34 +0300
Subject: [PATCH v3 2/3] phy: qcom: edp: Make the number of clocks flexible
MIME-Version: 1.0
Message-Id: <20250909-phy-qcom-edp-add-missing-refclk-v3-2-4ec55a0512ab@linaro.org>
References: <20250909-phy-qcom-edp-add-missing-refclk-v3-0-4ec55a0512ab@linaro.org>
In-Reply-To: <20250909-phy-qcom-edp-add-missing-refclk-v3-0-4ec55a0512ab@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, stable@vger.kernel.org
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2533; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=xcF1+MEKiAWyH9x4MCi0tNb/KeZNSRVxlLDPwVgV2eE=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBov9hl9iMYgZprCt2bHiMuwgd4ZPePSdJzf62ZJ
 eLdCNWJWCGJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaL/YZQAKCRAbX0TJAJUV
 VqEmD/91wM0XInBFmJjGixObCmJt3LI6LtRwaMv7DYq8yi7Urs/r7nnqxLAWlld/oCqPy5X7R6r
 Z9DqqQY5lkXKkB0ZB3rzG+B1/47QzK7Af2ZemX/wcxrYjBF1yfUiny+o0GQMZOigHxCuIOOL4uE
 voV59gKu4yfUMRO0Rr5tDsMFn78XK62mqEAHPvR7Iqk2u95696YDkDTsWthBfjUo8HZPLT12AH1
 z/oV2pg5T4RLoc/dVqdsS6gA5jJnvbqAONH/02oR8cMBurgK3cjE4CdvbZq6AxMr5vF/7hmns8N
 u+RKa03rubq3Skz60I+yCGEPjj64MyMwL1EvgkXSBHEkDfYtxcncR7Y2FQccds8vbZ/tIS/mkaT
 6WkgvTpyqda2PrF34ySWs5W5kULwBbBJhphbQzTZAGg+utlHIKy2lOava9Pw2KY/KxYPioEezGH
 wnvMdE5kT8Zu2npz5RHpEKJUXXWJsH523G5ev6a/vfh1TTTt92Okll7cR36c9qAN5jkDD7V85mU
 4kHQKPwFFC4edr33nBvpYMEEtcIWGk6i73T2tBZlm4SRA9/ufooi5bKGiMATnmV7A1+oF2owvZl
 pEaAI3/75mejOyR03EJXciZLY7WlLX+ssdHJCdfuEGmWIv+nUA6+XWnXXTKHTmeIo6ELKMAXZEk
 +uObN4KalA/p8Hg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_083413_536921_6EE440B3 
X-CRM114-Status: GOOD (  15.52  )
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
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
