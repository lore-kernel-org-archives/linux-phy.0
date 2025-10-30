Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F4200CCF9FC
	for <linux-phy@archiver.kernel.org>; Thu, 30 Oct 2025 14:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ljs4UNNF64gcOVsp+91CPkLpOS/Z+6G03mljBkQs/s=; b=XlSBI22jsY76Tw
	sFLO3679XjvhLNYaT1vUwPVVpjI/9LUK/rSQCF34XYkQ721Ro/zNrZGDHSi1e/JNepSM8OiEzMGbx
	r5f4E46cmwrUZ4d/ORGPxdpjqtVib68zagTD5hOPADVKdhJ6Fubd9JQgcQHN0hpppz+7HXQqMRhxe
	OH10ExxqMlA8Bqd57KmuVjuGeykZIa7lIi48xTjbDpmT6eXDCpvUCLkhg5FD7a6Z6xMo0r1ii2Lo3
	e9qKtS5YIKr1MEufja89+rgUBTWGkn5ftVpPZbwugKjpp0WSNHlX4fqxFeVDTCRzgB9njeOkxrkka
	eZVe3R8PyPP7dhQoYZVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vETe0-00000004IvX-3ArV;
	Thu, 30 Oct 2025 14:28:52 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vETdy-00000004Iu8-3PSr
	for linux-phy@lists.infradead.org;
	Thu, 30 Oct 2025 14:28:52 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-475d9de970eso8074545e9.1
        for <linux-phy@lists.infradead.org>; Thu, 30 Oct 2025 07:28:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761834529; x=1762439329; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZMpLeMNH7sSwMA33xyRkgoL+sxT741zRGSIt87PkKn4=;
        b=gS0HKv0O0OiNxtdx1CkRgv4Y9liOMJa+J65a9fHhFfZSHpqqKd1nq9ri8L4MYw+lLO
         MZeRoR5zBqDLfkik9S4jrLmVWcosUr4yk/4psbYcCr6tkDMpq4kTOqwrtBGjUYOaFSIh
         LMELepFuFk1KJBH18NS8FVMVUbOW5lBju9QOnum0zqnm3upws84IbzB3GYwZsC9F6twz
         J5+4BKtpJacmoCNQZNk0l+Hv9IM7iFp/WeTtkkM2MgsaGZ2WiEZUUyHesOOizjKQ3Vag
         7BvjKXmok689+SpxMcu5sgLe3hME9QmNqUskOGSJry3eYRGDpqB7qCC2G4/HPqEBo91w
         fO+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761834529; x=1762439329;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZMpLeMNH7sSwMA33xyRkgoL+sxT741zRGSIt87PkKn4=;
        b=G9I1EAH1SGIhXNYxJsu1njG++gg5EU5QHs/uRVOj4PyIzMrgOJwZv5leprwEaPAkRn
         NGCIaEVKd0x81MWRdnvYcsuMWucisEhxlDXzO0cVz0KUXbO55BmM3Hb87nz/WxeVVPK3
         XUodalUF7rzLqqidDDdDuqJ6wY6CTgiw3UKijtpeN5ydBLUzj+e6F+xWd3Il7i88mmA8
         xTQUviyLyodyRfFsjtdaNxkY3EJBZD25gksDlbCz3p9zvNBrnSTFvqlCznTcC7KuAg7v
         HELhOx/1Y8uFvEqk2GJrFuWBe4rcSG1CO8oDgNc0WIr0NzjdQeiALi+peNMyrLG+8obE
         X5Bg==
X-Forwarded-Encrypted: i=1; AJvYcCUBs39FyIeWwSzcTaWZR8xXw7damYjFijXZ2kOyVAnOzxrjam0Nnt9iM0PNE9acPu3aZjoG5e3UykE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzEAqYvXir96Ai3c/d9BY5xxPQMV8o219iayOMaVHLd1s2KWdnv
	X8a7QE3loh26yJHzzuKROL0EEj77ZfU9zGX2e8EMFJ2LIs5b2sWTTRmAorFaZdaPWeA=
X-Gm-Gg: ASbGncu9dpy9vD3MuTFm6UfVUX/ngw2YO1DYSstONCt2V06VNSaL5CRJdzp6a+mIEUJ
	mhyvRHOJUV+Qigu8cygpxTsSEEB2jWduT8Vb3jU1ojysn2cPpLhDvOXP/2+Tsu6lPo8LJmL7Rwy
	6hgABJ/mbzwlhXD0O/Ru6j9NTZ1yt0r2isSgW2Ua9ACecO498+s9ukrylSgf8p0MXKsfA5W/l24
	hw8ffE/GxzNu6ynnLu2dnjQrofquUJP9lf8U1XUUVMR14QS/yNmGRcBh2/S+bjho/jpBbf7e5kn
	unDUp2HpY8m32oqiHaJyKi9B/CA+FWcceZ7RCbFEq+iqd8a6cJECStc8LFf9AgSxg9+0EsKa0Q1
	e2sSkRiE7vddyWgtpcPeAK5CL/zjtMv9jhim560LeOgXotG3Zoy1ZoncryJOikJyl5+SNtYN6JQ
	==
X-Google-Smtp-Source: AGHT+IFvUUgJt/pBfFCRkI2lUvJeGd8kmVonHz+bVaufzA3NwxMJQo/JOQuLIQsN42Yu8n2Wf5HTQA==
X-Received: by 2002:a05:600c:1c16:b0:46d:cfc9:1d0f with SMTP id 5b1f17b1804b1-477267cd090mr38409765e9.19.1761834528540;
        Thu, 30 Oct 2025 07:28:48 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4772899fdfbsm42230475e9.4.2025.10.30.07.28.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 07:28:47 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 30 Oct 2025 16:28:30 +0200
Subject: [PATCH v5 2/3] phy: qcom: edp: Make the number of clocks flexible
MIME-Version: 1.0
Message-Id: <20251030-phy-qcom-edp-add-missing-refclk-v5-2-fce8c76f855a@linaro.org>
References: <20251030-phy-qcom-edp-add-missing-refclk-v5-0-fce8c76f855a@linaro.org>
In-Reply-To: <20251030-phy-qcom-edp-add-missing-refclk-v5-0-fce8c76f855a@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2651; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=xPbBKFvyY3b0q44Ov1uGneaLSn235ugr8EcPIsxzZCg=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpA3YXRyxMK4aGRKojtn6QDRiXbclf012HYvT25
 WCOAI+j3N+JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaQN2FwAKCRAbX0TJAJUV
 VndFD/9OiCZq77cCkVqe2W7G0bhgx/Uo0ZtvIaadCqV1cMiOII57s9coJL9BN7vciu8wT8fYxol
 FDH11MlZSzdlGwritI3qsHNIYNa4osm37yz2zZKyo+Z6fh4JyRUePDyA2BJh7aoadejJ2FEKi43
 zAhK8h17ZT5jI5aT4NiMNifKQxNfM6AruXrl5XFAvj54dWwkaz78OdMySQG7vCbiV/qwkzW/Lhy
 EO/s0ZgrB568VC3W7dGbuU/ukD+JQctfBZ9Dbidtx9gLQP1kEuuOllR/CIYG52i08MmF/VqXDGz
 /SlEDzNzb3YSRmShPNfKyuvelvfE5rukVuF1KGqc1uiDrkTJLqaObruS/6CzVVwZ2AVbTQ722bz
 pIW9fRmxSGH6uzTvu8NmlGjx4E+kf66PElme/UCN20YtZ0/vbh5h5hJeQHUmNr1UWGxY1QqY4/X
 wNDLYM7ULoRJCb6klpgRXqwz8JKQqxH1By+EdC8WuB1YQf8ncL1puOzvLQ9EGCyv6OOJsGQeKFv
 Rt07HO9IyFrxTQ7YLiju3sLta8XoEbNJr3tD8ncfVCsaYOs3JyqcfP+mhe+LZ4hBRgmXOEna3CN
 UQQJd9hjzTM1N8siWbx6okvkneoaLQIKVoAFLgjb6ceZ92QU8PGVug2/Z322G4lC2RVJXKmKgsp
 2rby0e1q4ve453Q==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251030_072850_885354_65D8DE3C 
X-CRM114-Status: GOOD (  15.43  )
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
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index f1b51018683d51df064f60440864c6031638670c..06a08c9ea0f709106ceafa7b5f8c8c6856786a48 100644
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
+		return dev_err_probe(dev, edp->num_clks, "failed to get clocks\n");
 
 	edp->supplies[0].supply = "vdda-phy";
 	edp->supplies[1].supply = "vdda-pll";

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
