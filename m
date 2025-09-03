Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 286D5CA101F
	for <linux-phy@archiver.kernel.org>; Wed,  3 Sep 2025 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lWx24MmrfrtZCO9HTDiuv6/zjwzM36N/H0dzQYMItqc=; b=47T97JBuJtd0nx
	IdEylKaM+X4bOYJxsuGvGxrd4gU2Tm6mo2BnO53HNnhf2eiVodliQz303GHZnrGm5DpoDsCLd5fnn
	06Kjb1qDGnJOvqkVBLoAVCoI4i896ze6AD184HlOC5s4qGfjRq8SQxxdCgTAdvif6vH1X5WJeyqI+
	A3rxNYfSj+nAluhPazpfx+LYRUo9NzBJhzGh06pVgb+9YxzxstvtqZSZlgEeBvZCk/3rT5PA/HU1m
	bI2X5L2RBgqYEk1gboTwgJ83Yd/1eVeEbaRcdjYcyanpaVcXDAW2Dc6KqA4Q2DJKE8FyQNBX5v2KK
	rpIBU5d8FcdmPo7POeng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utomV-00000006lQD-3eco;
	Wed, 03 Sep 2025 14:48:15 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utmkT-00000006PgH-40zX
	for linux-phy@lists.infradead.org;
	Wed, 03 Sep 2025 12:38:03 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-45b83ae1734so30368315e9.0
        for <linux-phy@lists.infradead.org>; Wed, 03 Sep 2025 05:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756903080; x=1757507880; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K0sQCAkcI3HRZ4G7wKFkOyZb3siVF0JBhbJFbd5M2Ho=;
        b=yrbD0HXziUfYPtsdM0uW7Wf1LfhLfxThe0BqE3TsKhtpkTqCCGlI0eBe0UnO6ZJGTr
         1rALwido5DrGjolnsnqCkH4wnRWF/1+y/LxN3D7u0U+rMQjX81o7iDMG7ZzTuLFwwc+7
         qO5muyMxHfMPs7a3O2yZO3563W7ntYzivyLx41fTKCLXir/zWXW9aEkFLrGNs5evCIz/
         5XROM0B/AZcSiObKeBfk3aQuUbwltZjbRQck/vnKwDWykZ3syRA2cw+Th/Fv3KKdmr6+
         EC1Snf/8ZzAZ39v23p6tYFsvt7Njhw8zf0pubTOHdLil280uVm0+oxa0jEPsiAv6s2AL
         w/aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756903080; x=1757507880;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K0sQCAkcI3HRZ4G7wKFkOyZb3siVF0JBhbJFbd5M2Ho=;
        b=cuwPCuIKOj3AZJBuyvMvkI3imx9XyLdcEAkPusmDucZuLWtq8h2BibU3byNQsSTO7j
         zJhXMp8jeUBSGkbVZ6k8uZyC0BGFhEJXeryIqEwRi34zYVay9QX5dWDkDUXWouN2VatE
         2GQQkYU6xFD/ot2ocvDz867wAIUhTC37fZqGQe+HHXwD8IVywsE/2JJktzYZJDbJUsl4
         xjmLuMcbs7AgPwZKPv8CKMeJRGh6k7NXnTg0W6iLPaur78PZTYNegpAeASNiTSUCpOj+
         sQW8SbKzgwWQ9wOLgO6J92N91U0ttAZoriE1nXukactf5G9hFi5W9G2xMkq6EJcJocP3
         phQw==
X-Forwarded-Encrypted: i=1; AJvYcCXK25ziMDq67g2JVzHZqgRhvoomYJVI43hZ+ScGDtuMnnSnwW3gQfwt3axUIoWF4sDvAAhVFZ2xy1Y=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz+bf/d9znhgVZKHnv1AY6+4gBMN6kvGxF3wL/R0Oq+DEsGZqj0
	cqjgybyVLILSrfyaquz0+uuIBeRiQEYBe2WIkwOh7ROP+nlgAQDPRHyPZw+8VdZ6ZG1gi1yAp+M
	Ty+eo
X-Gm-Gg: ASbGnctA39qSqVBMQ1iB6q0WsNf9G72u8IMVM9gMGq2OBstHKmxKTY5b3oVnDuH6m0V
	kZRXfIfRvlxrXKvk2+2GsKjXRcthWSLUossetTb7b3569S+/F5jw9XqoxbDmIwZVgsTUhlx3rTD
	d6ktwtTaA2yRhZwrXfmZE0FRbytuQst/PeO/viqSsTdycmIHzsgz9h53O2fLUsEnw4/NmK37p1W
	ol8pIhvR4VE3Z+xtwqOUzs6t316FXLVsggWBsF9SXeFCHEzLChu9BojE0ZyP8ipW+DpQ2bgh1Da
	KSHEHGomxOYlb6QhjIP/nhzfrXrX5XhZRw3sXGlXfBpqNYMMeAGqmN2oJiiFQbOhg6TWZuHQbar
	FYhu9HBSWn+YYFYnhEe9BJXdE8vk+bJtc9A==
X-Google-Smtp-Source: AGHT+IEbLnDCsM4sB75vMKi6w7QYg5rUiB42IQxhXphR0JNJN7hi0gEar3z81FBgH479cIIAURm5Mw==
X-Received: by 2002:a05:600c:548a:b0:45c:b5f7:c6e4 with SMTP id 5b1f17b1804b1-45cb5f7c9fcmr18333175e9.35.1756903080372;
        Wed, 03 Sep 2025 05:38:00 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d0a7691340sm22526782f8f.39.2025.09.03.05.37.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 05:37:59 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 03 Sep 2025 15:37:43 +0300
Subject: [PATCH v2 2/3] phy: qcom: edp: Make the number of clocks flexible
MIME-Version: 1.0
Message-Id: <20250903-phy-qcom-edp-add-missing-refclk-v2-2-d88c1b0cdc1b@linaro.org>
References: <20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org>
In-Reply-To: <20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2122; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=aoMZGWqu/xZzw49ERZ15szXiccJVNQvYuNgPnpFIZcg=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBouDafbS+nkc8kWOV4DK0zkPyYfwLjgSaBZE/7y
 +15peFlhqeJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaLg2nwAKCRAbX0TJAJUV
 Vo7fD/0YbtaTpC+kddzF7LNDkHXDOyQzlNpy7c0Rqpxj1lscRMv1uk/5VG7ukyTVXF3Crxwyxqk
 F0SaB/NcafklYsw+SK9X+VmXRzONuFux2cENvi7J+Ydl3Z6H0dENS/2VQ2OpbybJ64aPUJhNo7x
 Sd/HLR+NeKmBpiJ5/mwn+TLJplY0DbP2+O6oya7Kuaw1KNBfY7mir5nBQq0O6ZqbRLrvjb0k/eT
 abgWb8tGGI9dvl/iiJChLZKQwTdKpOiSVyMjJtQS+Z5LtXUae4afVktbuYQ0R+YZ+1aUAmeOAlR
 Z0dApgeSvbdJShbRZr/3bQX32o1Qw8C60J+DaqStNniuIY5eFpjubHFASJjbnqrD6Lqot3SHrkZ
 HqzI69Ukm/Bg7j93zkoEK/CumV+4fEoVqC8DfadiqPBgp2xh7vV9iGpzk8XkUyciCJC4defwgJg
 dLVXQ/EWP9twSSjj1nJQVFXjfQQniEBVgiP5v1kXBninV/OUD5WRGTUCbDVAO9F8iSHkgBzvNt1
 uBN/r7Q7oWCoSTTXImkZxybGVktc4bCP1tUiZWoNfapUfF/8Mly3+8maxxIolXuqbaIVGTcT90g
 +6qLYYr4RCxIxbBdEXSvOG2e3T7EjaL4Ro5gxL1ld0ncazvcXrd369yltG3KB4WgYJ03tqWmb90
 RfTeXPPXG5ABZpw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_053801_999367_A5E6795C 
X-CRM114-Status: GOOD (  12.76  )
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

On X Elite, the DP PHY needs another clock called refclk,
while all other platforms do not. So get all the clocks
regardless of how many there are provided.

Cc: stable@vger.kernel.org # v6.10
Fixes: db83c107dc29 ("phy: qcom: edp: Add v6 specific ops and X1E80100 platform support")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index f1b51018683d51df064f60440864c6031638670c..116b7f7b4f8be93e5128c3cc6f382ce7576accbc 100644
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
@@ -1092,11 +1094,11 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
 	if (IS_ERR(edp->pll))
 		return PTR_ERR(edp->pll);
 
-	edp->clks[0].id = "aux";
-	edp->clks[1].id = "cfg_ahb";
-	ret = devm_clk_bulk_get(dev, ARRAY_SIZE(edp->clks), edp->clks);
-	if (ret)
-		return ret;
+	edp->num_clks = devm_clk_bulk_get_all(dev, &edp->clks);
+	if (edp->num_clks < 0) {
+		dev_err(dev, "Failed to get clocks\n");
+		return edp->num_clks;
+	}
 
 	edp->supplies[0].supply = "vdda-phy";
 	edp->supplies[1].supply = "vdda-pll";

-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
