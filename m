Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E734CCCF9EB
	for <linux-phy@archiver.kernel.org>; Wed, 29 Oct 2025 13:31:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OtCubwQNzjr1TYK18IBbkNe5cJIMEkZrNIlqRfCOY0Y=; b=kOkaRJPEbm1XcG
	fF/kQCa96+SbSeFs4pMQgXbXVMCj9PvNZ8DgC2xrtyGa4hahc5dsFOdBVQ/fYjzYNiG/RS6IqIVok
	eRlUtnSoKEiawsAWr2IqDQG25P8oWsh4XO9HuGe+V728RsQnou9tmhZkfY91WRbz3UxXEF1cYYGXg
	tpHLHDvI0vzGAWfNSBnujD5s0aAnADcvL8P9iwWJDHicxQEUlJU+U6L5vvlx9Y0qaGVZTMp3AHFXq
	lRhksBcJWTmsKvjPn0ayQFoHEAiADXI/YvpxZSpSRLprM6GVD857yhjNAZvFUBRIkWZX4XUzKNmrf
	RzOWTNofjNaz9xP4d9Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE6HG-00000001NLz-2Lbw;
	Wed, 29 Oct 2025 13:31:50 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE6HD-00000001NKK-1PRG
	for linux-phy@lists.infradead.org;
	Wed, 29 Oct 2025 13:31:48 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-471191ac79dso77394225e9.3
        for <linux-phy@lists.infradead.org>; Wed, 29 Oct 2025 06:31:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761744705; x=1762349505; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sqaEwbyfWq5z+9uWBI43KLr77IOM/bA9Dq5RLeFvP/0=;
        b=Xeagqfhz7qbwocIgvhxRp+FlAIHwu9mqdOAsmaZ/xzqpQPV/n08cIwXP4/E6WM0C3S
         YlAwDVcQXivFgZuQLNESS+mgQdSixtB6STk5R2dKAyFzn9mpLIgWxjBjQpk2oDQxn0Ls
         xfwmGzoOX89Z6PGV6iFub2vbDrhqKBSmlB+sG044hdFSngvLykJULcmBdz+WG1gUPlLO
         Yx8QNO9trapcRhB62/Mlb1hqcAwoK+p+mXgUz7CvBwjm2tZixjpPqAUl0w0graFzIVoi
         Rwv3gXJZ8Eopzo9ypasNUk2hy8BG5J6O2XSkFIB5OO+l5M12Tyawj081nXUSPu77aglo
         /DNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761744705; x=1762349505;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sqaEwbyfWq5z+9uWBI43KLr77IOM/bA9Dq5RLeFvP/0=;
        b=bajZ4EYAYyVksg3bdZmbJi1oPn4aKQywQy4N6zRxnZgI0IStmk/ViVwtvtFxGTEtJE
         w3XM4Glu8TMqJR4Spt4mpXAgdCAC1UXN9I+M6NhVkx4ucpLZbH9Jd9GR9xe8w0BSSY30
         2mdoRUofo8FjRbx13s4dsWZ+Rj0YwZIyT8hB6sZ8Lb38YqV44CzIAdmlt8Bm8xVYnJd6
         fcfxV99YhTxD5+9wPMt3JOTMlVteMDt7p5qFit8Wk4Ab+0LbtRsC/lLeKwvlgB6E/9oZ
         857RYqFurIw95mA8Xvycrj5hl6pYIV0OiJqf3dr81ivruKH+BhN8RE0SVwiRFC6Hnq3R
         L3nQ==
X-Forwarded-Encrypted: i=1; AJvYcCUMljPcwK75w3dzXnF2DICP3vFBidKEOu32Earx7G4ZtxxIuGWKlAp/6JISb80CYuHyB1DUf52y6+4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw9DpG+/XtaSUeD5t5PWD6zkIsgC990tenlQFGOl/MBhoJhzmr9
	HIs/3Rh+23UPN9tPyjIcXAWfevc5u/CheD9xX4ufEdcY8SaSjl0EygdD8GaN+52yX0E=
X-Gm-Gg: ASbGncshepw257RhR3DVR+QNvhj8OEOzQnGSUYaNkVOl9amVY0BF/qqRvifQOu4gEO+
	AcJ+OaG++vQu25yL2EAzzDMg95WRZUYcBQJoPuUQHDveiKd0fn1E6aAichFZDGC6mJm5OGmqfM+
	HYVe3Z0OUm0aSuSWkeHUmYVJ5QflqsJ6mlRgqQw0qNmnhShaIVlFbVTXZ5gNasDhsVvG37ObhUo
	fkntwG74U9f/MI5smKNTQhCVwum4GfbHqCHhSAFp2IBjiQ6JzZ6ptgSDb6OXJnKWoh3VRbVfUBO
	IJU3KwIiC5nGwpFK5WTcCgzYCVedhRA8zb08eAMHNMGWKtPWTwR5Z/I0xkbCz/bk7+3oWgR87lc
	QXe59dXQF32YJY077QLAbqQZSNzOGz2cKEgeJNAiHuBTkEJRrM6IRxelKRB0XHUqtPtEV7CeJ5g
	==
X-Google-Smtp-Source: AGHT+IEUo5K1L3jXjehmVgAr9vID9LU63vPIgz1DPh5I2bBQUa8TMjUk7SLEqbkkRkNVIiF8q89ejQ==
X-Received: by 2002:a05:600c:4e46:b0:46f:b327:ecfb with SMTP id 5b1f17b1804b1-4771e17ef98mr27350035e9.9.1761744704790;
        Wed, 29 Oct 2025 06:31:44 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4771e3b7cb9sm58273015e9.15.2025.10.29.06.31.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 06:31:42 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v4 0/3] phy: qcom: edp: Add missing ref clock to x1e80100
Date: Wed, 29 Oct 2025 15:31:29 +0200
Message-Id: <20251029-phy-qcom-edp-add-missing-refclk-v4-0-adb7f5c54fe4@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADEXAmkC/43OwW7CMAwG4FdBOc/ISQvNOO09EIc0cVpr0HQJq
 qhQ3x3DYRPiwGTJ0v8fPvuqCmWmonarq8o0ceE0SKg/Vsr3bugIOEhWBs0Gmwph7Gf48ekEFEZ
 wIcCJS+Ghg0zRH79h41prZKKlRokySs+Xx4X9QXLP5Zzy/Dg46Xv7f3vSgLCNjXWRXGh9/Dry4
 HJap9ypOz6ZP/ATq/egETBY63WLPsh+AatfUKOu34OVgNjYlrDWAbfPHy7LcgNd96uFcQEAAA=
 =
X-Change-ID: 20250730-phy-qcom-edp-add-missing-refclk-5ab82828f8e7
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2420; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=3unlR1V2gIolUh+XahCUQ3NCnp6cJj0xrnKUy90nCSg=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpAhc0KTq9ZO6jp/IGBgo+1QQxZFspJxS2iy6aT
 gqsHS6lg+OJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaQIXNAAKCRAbX0TJAJUV
 VsOeD/0RpM8IdFbeGWgAKeuXg07gvm9epnctye48bBTSimA8oSr0WxlhViGXushp72gJvkYWyoK
 4PsWltTJGl4hBWInkVNhuhwqFvdDQeq0pOylr7CMud3O9EPMx0Wkp0Q69uVxef5HMda3I5CN1Xv
 lcF6QWWMXKmbcxWFmPUpx6vsMJvyHN6lsUIPcSPQ1bG52iJbu+1ZiuK2em92AwPSPTCiOEVcWe+
 AKzjuRNPcsdf9kO1FtRsFUEtefbqL/mYsbIu+Qdm7p+ql9OMS4NdXCpOcx1+nF/T0aW3ky++c3F
 pSJby1MAu8h584RaGY4xZgNp1CMLliHhNTA1BtFR65ADVvqbs9AORtTcEEQXNyqbIjvwfX+qU6o
 u7VSseKaXTHa3Pr3zdNjCMPvnGldn2YXtmiR/p5bnzu/CALjDbXDJC0INmKQsobapmOESz8gMPr
 Pvs03Jed0mhQp+Bn+FVot9D+0eonLiDwV7FA3QQZyn23PZjSaJfNTrbHM/26NlJt8W5lvGRcVIy
 nTGs6DvdEhoKD0+MF2LtOIc1s2hQe0GhdQGiHH6fXtYAoqgMrmAy/m3Co+dcPKhmlccxBOkMxUT
 9MBTrBhR7OdSru9WVZNfUJIFLLfNPS2S3Zbwc1PsVJtJsInM7TMGNTHM2TOx2OvFJWf7+SEPBUw
 f8oB0GZLa73Vjcg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_063147_413249_9B63E7A2 
X-CRM114-Status: GOOD (  14.10  )
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

According to documentation, the DP PHY on x1e80100 has another clock
called ref.

The current X Elite devices supported upstream work fine without this
clock, because the boot firmware leaves this clock enabled. But we should
not rely on that. Also, when it comes to power management, this clock
needs to be also disabled on suspend. So even though this change breaks
the ABI, it is needed in order to make we disable this clock on runtime
PM, when that is going to be enabled in the driver.

So rework the driver to allow different number of clocks, fix the
dt-bindings schema and add the clock to the DT node as well.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v4:
- Picked Dmitry's R-b tag for the driver patch
- Added x1e80100 substring to subject of dts patch
- Link to v3 (resend): https://lore.kernel.org/r/20251014-phy-qcom-edp-add-missing-refclk-v3-0-078be041d06f@linaro.org

Changes in v3 (resend)
- picked-up Krzysztof's R-b tag for bindings patch
- Link to v3: https://lore.kernel.org/r/20250909-phy-qcom-edp-add-missing-refclk-v3-0-4ec55a0512ab@linaro.org

Changes in v3:
- Use dev_err_probe() on clocks parsing failure.
- Explain why the ABI break is necessary.
- Drop the extra 'clk' suffix from the clock name. So ref instead of
  refclk.
- Link to v2: https://lore.kernel.org/r/20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org

Changes in v2:
- Fix schema by adding the minItems, as suggested by Krzysztof.
- Use devm_clk_bulk_get_all, as suggested by Konrad.
- Rephrase the commit messages to reflect the flexible number of clocks.
- Link to v1: https://lore.kernel.org/r/20250730-phy-qcom-edp-add-missing-refclk-v1-0-6f78afeadbcf@linaro.org

---
Abel Vesa (3):
      dt-bindings: phy: qcom-edp: Add missing clock for X Elite
      phy: qcom: edp: Make the number of clocks flexible
      arm64: dts: qcom: x1e80100: Add missing TCSR ref clock to the DP PHYs

 .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 28 +++++++++++++++++++++-
 arch/arm64/boot/dts/qcom/hamoa.dtsi                | 12 ++++++----
 drivers/phy/qualcomm/phy-qcom-edp.c                | 16 ++++++-------
 3 files changed, 43 insertions(+), 13 deletions(-)
---
base-commit: f9ba12abc5282bf992f9a9ae87ad814fd03a0270
change-id: 20250730-phy-qcom-edp-add-missing-refclk-5ab82828f8e7

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
