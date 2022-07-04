Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA705CCA481
	for <linux-phy@archiver.kernel.org>; Mon,  4 Jul 2022 16:11:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W8CxDUj+uFxSR1CkNwVvalkejLWMNGIw85r8nJ7ryf8=; b=cq3UuU4UHAj7Hx
	zoJKLQ5v62GOKg3CMlZ4+TiipeBgbXMdP0rmtewwsU4w9RxZj4KtS0y4OgQfxNu0lLHCHaVPZ6LeU
	Pgvc0oyy40fxqu3MqleL7GYLVHBVATpkeclfo40KDPTXL5U1YQgdvr/5/iWR8i+KgNkL63JBsRDYS
	Dvqqe53BOOkv3ccNesWG3pVog/01QLo7FcEQjrXSFChDFvnj5uybN4WW711gKUtGZFdJKcjMe7bDy
	87l1oB2/mQoq8lsmGNMv66nOKZ3hv5mpZB4/YSJ6rD3ZGa62tMggpigHT5JlEGUUAp5Iep+ztwTmV
	vrm9XWkzkJNIP8/Os3gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8Og1-009uN2-58; Mon, 04 Jul 2022 16:11:57 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8Ofy-009uLb-5I
	for linux-phy@lists.infradead.org; Mon, 04 Jul 2022 16:11:56 +0000
Received: by mail-lf1-x131.google.com with SMTP id t19so15884017lfl.5
        for <linux-phy@lists.infradead.org>; Mon, 04 Jul 2022 09:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rvpMkL8rwQeoEo+SMzO+GF3s7pNzolh8BqnzxKkFoo4=;
        b=PRa8oeritKHlX5Cuo59DeIr0jqFFxqZ1SUAiCm7V/3n46EK/pO7XM36ROBw3DzXSXQ
         YxJhUduCoQbUeCSf4f+YyP0BecLCr5Bdx0rzFxhPwJiYWfbtX1FSwGRSAoCvzxET1Aze
         d8bQuCcF05gDIgavHgfmsknIUBq4J7Cv/dhY0Q7FDmoPhqCMKh/YwDkOgUpXAZTVm6kx
         xj6PcFZA+zxLttELoWt2i3Nsro/aZyINoJiHx3vMmZ313zFWalf6OIYMpBFqs/QB+Zh2
         facRBNtre9zuGmBE7bQfhiLwEWoNOsuccYUiGxdwwsf9Fwk8OCu0Shq5UH8A38/eTp84
         QPig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rvpMkL8rwQeoEo+SMzO+GF3s7pNzolh8BqnzxKkFoo4=;
        b=pEW2YMipNJ3rxDF63ZO53YeXw1Hl9IsQfg9kw25XxzUzbCgAcqL+kdjNtrJ7fdNAk6
         EiBdxnHxy33u2o+3DHwrT8F9UrkMT8DiCsub5UzxfXvGvqi6wI2k3PnAo9RlTG2W8xIT
         751namQNygytSGLeo7eNKfedzHD0yqHMidfOCc6AO6g5nnpa5gh3My7A9ONUOx5g1Br9
         sV5flv64pal46BUt1DiYpod87s6Lt/r2R2gzMbTZey2gpET0zxJevFUFcGKrlPkwyyKR
         DwkM+Z4RH1foECx7Q+GxW87ED4VAxYcgTFuUP2KkuPz3UKPXNVJp9rlLpOGXJe3z++Ol
         NX7w==
X-Gm-Message-State: AJIora8K9VSbgJ93nyVjRwS6CKm0nZQwHB+arn+dRJoCazl924i8Dv5F
	oeGW5u0VqQmiCZKsgQP/+cLlvj28Rt6exQ==
X-Google-Smtp-Source: AGRyM1tTn7DtmPOMMB8Ftu3ZrQuStfkpwldPqX63M2wVWQqfl+bhBR3Ly0in/NV3wLfdHb+lrvQP0g==
X-Received: by 2002:ac2:489c:0:b0:47f:6c54:7c56 with SMTP id x28-20020ac2489c000000b0047f6c547c56mr18196383lfc.529.1656951110018;
        Mon, 04 Jul 2022 09:11:50 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id bj16-20020a2eaa90000000b0025d254180d7sm381273ljb.113.2022.07.04.09.11.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jul 2022 09:11:49 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Stephen Boyd <swboyd@chromium.org>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 0/3] drm/msm/hdmi: turn MSM8996 HDMI PHY into OF clock provider
Date: Mon,  4 Jul 2022 19:11:45 +0300
Message-Id: <20220704161148.814510-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_091154_240095_59961CC3 
X-CRM114-Status: UNSURE (   9.15  )
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

On MSM8996 the HDMI PHY is the QMP PHY, it provides an HDMI PLL clock
used by the MMCC. Add support for providing this clock to the OF
framework by registerding the clock provider and adding #clock-cells
property to the DT node.

The dt-bindings from this series depends on changes from [1] (part of
linux-next, but not of the msm-next yet).

[1]: https://patchwork.freedesktop.org/series/104836/

Changes since v2:
- Added minItems: 2 to clock-names property (Rob)
- Explicitly mentioned dependencies

Changes since v1:
- Also handle the xo clock (include it into the dtsi, use parent_data
  instead of parent_names). The patches were changed, so I didn't pick
  up the R-b tags.

Dmitry Baryshkov (3):
  dt-bindings: phy: qcom,hdmi-phy-qmp: add clock-cells and XO clock
  drm/msm/hdmi: make hdmi_phy_8996 OF clk provider
  arm64: dts: qcom: msm8996: add #clock-cells and XO clock to the HDMI
    PHY node

 .../bindings/phy/qcom,hdmi-phy-qmp.yaml       | 15 ++++++++---
 arch/arm64/boot/dts/qcom/msm8996.dtsi         |  8 ++++--
 drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c      | 25 +++++++++++--------
 3 files changed, 32 insertions(+), 16 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
