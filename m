Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF2D1C27C79
	for <linux-phy@archiver.kernel.org>; Fri, 14 Jun 2024 10:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yrjbdYKoLit/FF6R5bDkd832if/iGl2WR9exYDuTYTU=; b=XQpJd7XrGuFmqn
	f70dLmu3yEFq4qBD8c5rsN5yJVi8xXRizTqEErebGeOjS0IqdMc4pPGbcxIhiFgr00Svgf2EXgaqU
	xQYEBbIJK+8cj3Tt8xr8oezDNM/bn7LDnE4JbGcPDupqfuZWjLUlz4FEuLGbQzFlpI/GqLc083BTx
	5Dnc/z+7o7Laxjoi6WeyhXKLv2MCiO3YdD8MZM0ccxt0+8rC/v6Vf8yQTZXoCQqGyYQZg/pgHsHTT
	8NfSldhMc2/jJ/NRKFF70gHRyi8RZ9Er8XhvwKV+Prk4FQkxdc7ZFZDyfSskgOsEF0fEFoAvp2pay
	xYxRt8R8FnCNJ6wsu9Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI40y-00000002Nju-2NME;
	Fri, 14 Jun 2024 10:18:36 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI40s-00000002NfI-3dh3
	for linux-phy@lists.infradead.org;
	Fri, 14 Jun 2024 10:18:32 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2eaafda3b5cso23116841fa.3
        for <linux-phy@lists.infradead.org>; Fri, 14 Jun 2024 03:18:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718360307; x=1718965107; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cu/gvkK5JV8o/AwZTjhXVurT12iJLCtsIO6X1RdbaeU=;
        b=QrYUqULnK7Y/1RAIty1wvBVQMRjXuGzmhASqSJ74LMJDriBabSPEMVX4unvPTOPBTW
         Lw9TQA2Hj2w+fkOvuv9sp7hUqopWiiEXIQ5d+9GgWcAe4lRxCIm0Wz7DHo3RFPluji7X
         Tk1ily+TMngZAIy7YtDJUXE1kQsIlP/yh8cAzJx4wGA7Dt7YkHWkya/KheSS2yiKkYK7
         d/EZFfCgo1BW9bPCWhYKyTNic1O7f2dv7a6E2O19E0I+m56L9ClI1uAEE6x+F9iAJAIb
         BnhLpmttKuvcSYfFuR8Cn+AEFI3GwTSgEyizdc3ydgxwr+MIgGRWQfcnx9AAf/b9CN3q
         TL2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718360307; x=1718965107;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cu/gvkK5JV8o/AwZTjhXVurT12iJLCtsIO6X1RdbaeU=;
        b=OsYTbzPdxeXCZvPhOAL+rnSmdplbVug49pvKbHzcySrurBhbkvCbWYTRX3bIyJZlfn
         Yf579/YB8/ARvfPt0F3Y2Ow4Dy5O53WjtB44DaTlmJ7EQeF3bUCEaaneTryz2Fmw5Xw7
         0FovLNlK08FjpWW9OwsHCWrXKCdH74M4Si9DOM1N2487fat3dG4XkrDKtbFpQWrjFOrv
         pxIPxULUqoAikdoG/ANtik1cYY6kWt/nlI1P1NGeuDoc5lPqXzc4YFDCgHt5T+0AjJeQ
         2IZvHvJ9S7s9REAKOllROhfN88De2o1Q/L4exHkulYNDzfRm9S7Z2n/gg/tJP4g+E9dr
         Is3w==
X-Forwarded-Encrypted: i=1; AJvYcCXQoxN0H1dxkNFOGp0ZKmBNVZKTOK382D54ZS7ExeyK0FbExPz5iNnTm6ghXH2fxaZVXrGLoemsAGn/Lkp0puAkSOcLPgQgY3oASAQ1Dw==
X-Gm-Message-State: AOJu0Yx0suEpsW1Xd21M8+hHQIv3/eVcKV48fv4zhCGSx4tsuxId4XxS
	bwqD+/4z4XAgCnMZzLF+zgA5Y1uwi//pWNvG7P86IiEPIu+U7XafKfnvKlHEmQQ=
X-Google-Smtp-Source: AGHT+IE9Igf80a9v9jW4+hHgFtvj4dzuHZGTY6Ba0xBnG4L+4RhK36KB+2EyI+LPKREkLy/AmHU+Cg==
X-Received: by 2002:a2e:7c0e:0:b0:2ec:1334:7ee0 with SMTP id 38308e7fff4ca-2ec1334832bmr9702561fa.38.1718360307264;
        Fri, 14 Jun 2024 03:18:27 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec05bf44c4sm5000241fa.9.2024.06.14.03.18.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 03:18:26 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 14 Jun 2024 13:18:24 +0300
Subject: [PATCH v3 1/5] phy: qcom: qmp-pcie: restore compatibility with
 existing DTs
MIME-Version: 1.0
Message-Id: <20240614-fix-pcie-phy-compat-v3-1-730d1811acf4@linaro.org>
References: <20240614-fix-pcie-phy-compat-v3-0-730d1811acf4@linaro.org>
In-Reply-To: <20240614-fix-pcie-phy-compat-v3-0-730d1811acf4@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1592;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=T3DjvXEe+sumQ+ecA/DCNSeChO1xZMZY4sezj86K88Y=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmbBjwWST2vn0/HBi504jSxpaS/FcGYEQXws/0Z
 Li9eCQgMTCJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZmwY8AAKCRCLPIo+Aiko
 1SIhB/4inbA4gW2P2tS7P/P1h40jhnWYgOhODA3nURHZNRa2WbLmoL/QVHztCJmCBE/k+9E5BDX
 cmjO6e9MO2whENnZ/hCIXYdsnH26ykaSADDVq4w+ZdY4M6n61Ey8F0FWppsIjGEq7vFdD+ND1tr
 rvF9yZd1I3yXCuyCEzB/g8Y7WQkjW8qosq2/n1m973uV74+XHx9pXdP60YlaiDwkjdvS0Pb6wIv
 RQHgjSzBkZ2lH+YDnW0dnz6eCpdDsjTMgopujrOiScm3dzlFKcWJOmk+wskNoQQVO17/FVBvIaM
 FUhA9QYgbBiJ80/+mMos1OhMQby4ExOQnUYN5yth2ihXACUz
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_031830_915490_73862BD6 
X-CRM114-Status: GOOD (  10.62  )
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

Existing device trees specify only a single clock-output-name for the
PCIe PHYs. The function phy_aux_clk_register() expects a second entry in
that property. When it doesn't find it, it returns an error, thus
failing the probe of the PHY and thus breaking support for the
corresponding PCIe host.

Follow the approach of the combo USB+DT PHY and generate the name for
the AUX clocks instead of requiring it in DT.

Fixes: 583ca9ccfa80 ("phy: qcom: qmp-pcie: register second optional PHY AUX clock")
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 8cb91b9114d6..5b36cc7ac78b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -4033,14 +4033,11 @@ static int phy_aux_clk_register(struct qmp_pcie *qmp, struct device_node *np)
 {
 	struct clk_fixed_rate *fixed = &qmp->aux_clk_fixed;
 	struct clk_init_data init = { };
-	int ret;
+	char name[64];
 
-	ret = of_property_read_string_index(np, "clock-output-names", 1, &init.name);
-	if (ret) {
-		dev_err(qmp->dev, "%pOFn: No clock-output-names index 1\n", np);
-		return ret;
-	}
+	snprintf(name, sizeof(name), "%s::phy_aux_clk", dev_name(qmp->dev));
 
+	init.name = name;
 	init.ops = &clk_fixed_rate_ops;
 
 	fixed->fixed_rate = qmp->cfg->aux_clock_rate;

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
