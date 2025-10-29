Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB06BCCF9EB
	for <linux-phy@archiver.kernel.org>; Wed, 29 Oct 2025 13:31:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0g+l4t6coWU3fshPvTxUxW80hgOMoPNaC89LzXMwlC0=; b=l3iPDsdNNTeWiO
	hyn1B/lb1Srt0jr+yOd/elz8wah2BKb4WffadL9qI9EREhWmV5Jg3G0ENg05WEMUR7iGqE7pczcpe
	roq3klFXZNiMbS3D5eYAaMXfMvlcqZCjp8dqIGRKl/BK6VrByoY9/pgGDwagjsZQUYI+DGP+9B9ds
	tDNt9FuTukAV5P13I36dBo/AS11NSINlTxPIhmgGpPnslx0bUxNpGTbCrH++NOECbufbtHTDkdBRf
	7Rgtfyk/41+4mEzQ9ldgHvo/+DNghlasvYW4L9916eU2Pg0pVLKqD4w7MNk+C2r8Sqgy13hDdMQtT
	qoG4ojNwS7lt51nBWoNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE6HL-00000001NQC-25kr;
	Wed, 29 Oct 2025 13:31:55 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE6HI-00000001NMN-2Bvw
	for linux-phy@lists.infradead.org;
	Wed, 29 Oct 2025 13:31:53 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-471b80b994bso99524545e9.3
        for <linux-phy@lists.infradead.org>; Wed, 29 Oct 2025 06:31:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761744710; x=1762349510; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cDnFmawmmprbP/aIYkdXiYRzW2ZBujViLSp90PI7KCk=;
        b=uLNlUZaF+tPYJS1IonaCbdGmDKQ2s0ANr40qO3IiodjFvha2VdF5FDwnVpsJC+N/V1
         pYChL4ZZhmLLuMAkVavUk+S6mRkAp1P5+hrXhwYQtLijbVFsYORNRLi/d47DmKXKHghI
         tq/aFww4Zbw78Jp6e1hDkhfdPwVqk1XZUqlE4omQJiF1lCDUF768RTdAT4aG6YlCR1LK
         DmMpfnaWR5HlRYhmZk8RdhUDwKex+2D66riRdYmpjMilU/QIuF0ixNQbj0D65Mf07Kda
         giIrzvqb5dYQ4zLNN4WZpkMhG/jrpR+PMZeSPk4YVgpFxH6RkrNbYYYHWjBFjr0QdIal
         SBjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761744710; x=1762349510;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cDnFmawmmprbP/aIYkdXiYRzW2ZBujViLSp90PI7KCk=;
        b=sB4FwEKG/5G0TURUsYCHkaPslRNpkAT/vUFqk2FvUyMBFNzUvlRE4yWDffcMzx0NJh
         n4PJx3vqVKh7R6wsIzJDPQKYWPqAhvC1AAbIM7w0yKJiFQT9OIl6wV51IR7sYfUyF2Uv
         xe6g4atsvMZB/c2h/6AvICsRFe753QRXsb5yypHjFHlHCD/RZzFoAhJT+Mu0bGZDNEVl
         s9KTwHdOgTopxJr2W1J9N3ikPUwxZLPyhTy6Sd8SwtoM1Tl4iKOsVTlSOyjspRRr0h/Z
         FFd15NcCw9hrNtQwzTUM8Tr/ppTuNNnwX33dFA9L/t0S8m0L+xwlPDKe+hB9fmzhupoi
         E8BA==
X-Forwarded-Encrypted: i=1; AJvYcCWLINY21eP7vDoyoVjbi8XzzYKLJBdqMcO7cts2dA5KpRl0b0GdxsmSj4uTabXN1Qvv+pih9YDJYDs=@lists.infradead.org
X-Gm-Message-State: AOJu0YxivkEZTog/eM4oNvmTvI/g4FAGnu9j3C/dk4vSklM5VUeZWezf
	H1ynOG50JUNN+mZKB2JK626tj0ufzATMMeHnbLBaJepYjGG98SuIkFPmiQJNUAXP4go=
X-Gm-Gg: ASbGncuXKSu+1epdjQluRv3wPahaTK8K/Ha0JzLhO+58kfL2VAU06Hyf3AFrJ1OqQJh
	m9FBnO/OfM7TQLxN1kgvSccVN3oTlsre5VEBT4JX7aAKutLvhHDk9/wySslS6T64Ee2S/iEyepa
	/bgqGo/m+WceEyt4fBpIQQp0/+BAAS5hmFu5C9L4usAE5cJOtbJ/9C1ny9MP0jhwPd5B8eJBRef
	pk7E+c8NHQOrdXatdGiFN1lQQUFIJPXV6YdFb4B10cnYxhCqae1rsErgDPU2p+C2Rm1TsFPdsua
	I13ieDsDFwwrWeYrqhku2AJEkOtfys/JIvQAsUf9k30fLmvzzdtwgSPah5MH0c43b+9vGWvf5jR
	Hf8NoZnsxRJp0kAwO8v/VWP4ystSisaFt8DhGGLcjKW6xH7QuOt2TFhKJRt4H3M9ALBNCiwYRI5
	Dt9s9fNtW4
X-Google-Smtp-Source: AGHT+IFbg6BFEL/60ybW9+vLXJwBfQuA40HL8F0GZNxl3ke1BA0V2nBoyBT0JT9Hc1p/wv8b8DcZEQ==
X-Received: by 2002:a05:600c:46c4:b0:476:84e9:b571 with SMTP id 5b1f17b1804b1-4771e183b35mr31193495e9.14.1761744710195;
        Wed, 29 Oct 2025 06:31:50 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4771e3b7cb9sm58273015e9.15.2025.10.29.06.31.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 06:31:49 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 29 Oct 2025 15:31:31 +0200
Subject: [PATCH v4 2/3] phy: qcom: edp: Make the number of clocks flexible
MIME-Version: 1.0
Message-Id: <20251029-phy-qcom-edp-add-missing-refclk-v4-2-adb7f5c54fe4@linaro.org>
References: <20251029-phy-qcom-edp-add-missing-refclk-v4-0-adb7f5c54fe4@linaro.org>
In-Reply-To: <20251029-phy-qcom-edp-add-missing-refclk-v4-0-adb7f5c54fe4@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Sibi Sankar <sibi.sankar@oss.qualcomm.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, stable@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2600; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=8G7bBZM5fRStxMOcO22TYhdX2AnVHFbVN1k+A3ZBenc=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpAhc6s4Uh/dUfAYZupYH9eljo7awvlT+dv+1e6
 RErvJ4IpzSJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaQIXOgAKCRAbX0TJAJUV
 VjIUD/wOCZ2tSWzusRUJKd/vcgzBvxDU8jY9JQjwDoD9GHjINqFbKmkYTj5LVqVeXKpnET7fs1F
 94chs0bTrj+AOVZOq/3jz8Sxzg9sCvrwYBnhAMt2Dl8AoXf9r1b+dcnCq5bDV2mLQtVZYeCmljV
 rFKZ2DguPERu3m/vd1F5uPlQnM9nuHEYRTKEvmG3JhYWVwaqm6ssxYiqAWBTF7v8tsPO5BuhcYf
 ip4GgnypTrDkj3F3VNK4NH12mHNeagfsBbU2qw7qXQ9IUNyMGGS577/WhM4bC0z9xeBIfoNFO3n
 1zqm91VS1tKI27WFqb3RC7J/bgPvHUnzv0s0Bn4Pz8x43pmkbJSy5xdNEBaKl5FcTsmvATZhlzH
 mE2X4M5XMa6LDJ0J2N2g8TAk56Vi/9h5J7gBCN77NPjKErrPm3zHS2qSFCDEkNKsUdkRSve1oHV
 W2B/GUhH98W6POlqgQqNPiHKvtEKcDZV9pUBj9AiHtaJKjKU3hS4psPOBsafOstWL2HCcOMgAOU
 p+0EGJnYVo3s7MuiWiQRN6zNexjxJC0nLTlQcXwiPxC95lj+XiVd9EhLPHW50mFVw5pClLRvyX2
 D6EhVQpJjLW4TjYR3YLT8HgA/NvO5juEMNJROgvu4OrDy8EN/oJXqfcUoS+UGGVBA3Gl5q4phJV
 Rd1Ok9QEn26lofQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_063152_736761_5F3E3BB9 
X-CRM114-Status: GOOD (  15.76  )
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
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
