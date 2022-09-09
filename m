Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 558A4ECAAD3
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 13:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IPR08X1UkSN0j58iSbRvNZ0HdhbwqZEQNT14/XZAlIg=; b=cDcWOKNQuzPL1m
	BBvyYRNK+8/sJdCEF0hh5PUlu64a4UxBN6Od1WZb6nzxJxx8TNc4fQQpvh/hu1bGrW60cKWQkpJOO
	wyqLs1pXsineZdTS4v27etSz3ZM150mXwhgvYC5N2tJkB+6E9Q33aEYyu48FNt70JHGywYCD+rlbH
	5RdBBwBYeYGPaOQAHSqnCjz91eg0ZAJHCOT/RhM+tjCQx88FGurvoJlTrDzcPIjtmrQ8WYA7YRpgP
	C7t4BfqRxzK6y9YgdzQjxLDBipCvHyGfVbpy5Ereu92GOn8RyyEnNhPhrqWH6VSSr5veoU/Jwrsez
	c1Fc+7ueyQEOyPyzTqRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWdvb-00GI85-GN; Fri, 09 Sep 2022 13:20:15 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWdvZ-00GI6S-L1
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 13:20:14 +0000
Received: by mail-lj1-x236.google.com with SMTP id v6so1843903ljj.0
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 06:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=kgJjmgG2j9l0YQpQfT7K6JYUcHmLucXmfDAIxewDkEQ=;
        b=wLdx0WQVdKaFuiXotEDVrzACdRbkEtP9/VBIvllgGPpc+JEy5nKwDRtFOzYvIJ3wms
         5Tr5BtHE28y3onBYCiJpYJJe+y6eBOtV4ZHol9mH79XTg71QsWeI4swlLxSfXCkWssyo
         fFtEv8Z/BRY3oYmgriQnaTFtvHPsRvuYhCkV9KW6MSlwILz2AD1V095/wOx/B53qx5So
         AH4N7BmLonlgNRNJiS8pdRRg/xy989x5H9J0r0WEFUZ/cr8vYH5Z8H+Kj0zJEJLcz6sp
         TmHNzQB62cAI3gPs/L4JW4N2eW7uzPMysykpmjC6TRuX4TQxysXls2Na28aGT0rgE3gS
         MTdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=kgJjmgG2j9l0YQpQfT7K6JYUcHmLucXmfDAIxewDkEQ=;
        b=4InUIYt4zsJpa1eSsqhw/mxWibdP0dvvZum/34CP8C5PsmflHwE3Huq5rMnIzTr8zv
         eERFlIhFIGYCdi4B4HNqOzQxs2gTHa3YSNdMlJyDo6dGJOuX3T5GlcxlJMT5feopmG7E
         OafINQI0h+XB7WWxtR+IeL81IAw4XIFNSCUIxmALuxr4qH6ltSf28UKzg/NwY0xXEZek
         ZW9EkEmOdE7o89n+k92wc15QZDvNn9tIFc9d4P2hW1zKNUiWX0VrhcZlP2t7OzLN36kq
         YR9455ObneAcStGqKRROCLP0fcYWSi1VP9/z8tvzc/DJZRoft/C3jalvwc3dJb1HVApu
         lOzA==
X-Gm-Message-State: ACgBeo1U8y3depnqQboNn0XDLDlLgma1cQy98Hn4aSSRMrLgNrph+Lof
	WWEXOkhfNyRteTQQQUABQGx8tQ==
X-Google-Smtp-Source: AA6agR7eLB8sTMVNhaJuhk7/vByF7NnH/TSWVo/5doL8NS2RA9cF1ZgL7lBuo49eromWnnKmZGz5iQ==
X-Received: by 2002:a2e:9604:0:b0:25e:4ed7:ef45 with SMTP id v4-20020a2e9604000000b0025e4ed7ef45mr3818736ljh.389.1662729611374;
        Fri, 09 Sep 2022 06:20:11 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v10-20020a056512348a00b00498ff4ae746sm71729lfr.294.2022.09.09.06.20.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Sep 2022 06:20:10 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org,
	Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH 0/6] drm/msm/hdmi: update hdmi_pll_8960 driver
Date: Fri,  9 Sep 2022 16:20:04 +0300
Message-Id: <20220909132010.3814817-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_062013_718504_B9A9FDA6 
X-CRM114-Status: UNSURE (   6.89  )
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

- Update hdmi_pll_8960 to use parent_data rather than parent_names,
- Make hdmi_pll_8960 the clock provider,
- Update the apq8064.dtsi to provide pxo clock and to link hdmi_phy as
  provider for MMCC's hdmipll.

Dmitry Baryshkov (6):
  dt-bindings: phy: qcom,hdmi-phy-other: use pxo clock
  dt-bindings: phy: qcom,hdmi-phy-other: mark it as clock provider
  drm/msm/hdmi: switch hdmi_pll_8960 to use parent_data
  drm/msm/hdmi: make hdmi_phy_8960 OF clk provider
  ARM: dts: qcom: apq8064: add #clock-cells to the HDMI PHY node
  ARM: dts: qcom: apq8064: use hdmi_phy for the MMCC's hdmipll clock

 .../bindings/phy/qcom,hdmi-phy-other.yaml     | 27 ++++++++++++++++---
 arch/arm/boot/dts/qcom-apq8064.dtsi           |  3 ++-
 drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c      | 21 +++++++++------
 3 files changed, 39 insertions(+), 12 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
