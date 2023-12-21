Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99088C35274
	for <linux-phy@archiver.kernel.org>; Thu, 21 Dec 2023 10:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nuJL0+mbWl+eX/16pUpMJbGVQlIk3vT2oCPQoJ70gs4=; b=oNjXnRFscaJzEx
	jpCeQj4C5+FnnvQqjptlFkz8OCslhK2A/iJFxy49vAHORuqfgk6whjnUhtHTh+QIgAt2zQIitxyHw
	DY9syfpFQpVWDxoNgbuvaV1BipwnEZi4cx1dr/2Z8klHCxE/4F8p7GFWzFkTt/xQXHtDCp622uvRw
	nKzgH4UXIMXu6VFs35++rDol6hFCqEgP35hCrGLSty4I+AoJMFCcarzigIAKbzEFRFmje1BxmCqB7
	1SzTiz5aM+6gS5TrK03Na/kKL8QcgjYjzn2H+pwu5XNbPLf51FhL9KsuEPmEiHKO2W39KQkoViqRj
	ZZlFP54bHO8JEGbnodxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGGEr-002Q7h-1A;
	Thu, 21 Dec 2023 10:25:13 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGGEo-002Q6Z-1U
	for linux-phy@lists.infradead.org;
	Thu, 21 Dec 2023 10:25:11 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-50e2786e71fso810764e87.0
        for <linux-phy@lists.infradead.org>; Thu, 21 Dec 2023 02:25:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703154307; x=1703759107; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pYNLBDFWO3LrdFkIMvJ8nxiptH8Derg0mKqbJmtxv8s=;
        b=e7iOMapW61vHF+PmyWTAQi+/UdFhJzUzA3t4GoHqvBvphZ34IQEo/LazRFPxYyR2i4
         LsZUntLNDxZixHLaiB1JwrTgWl5UxLkRCx0HpYFvWUd8jXK9/P2cDEUXEWr+3CGA3tdA
         B5AQhr5iIE5jrnb2YOPZvw4MAwSR9njAEs22noJEVv2dtyReiR8j6tdIZe7fL03a2fna
         PS0Odt/icw/kTRdmyPN2d4nOhew4PEJNcseUEj6LV2cHHn8DyL/Cy74BmprpcBsTflmC
         zlaWpiREIukxOcEaFJ2fPRSry/oQ976Ru5pKcZUGGRCgy0CUV+hV31fX8kJTJkHIbCGe
         d6sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703154307; x=1703759107;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pYNLBDFWO3LrdFkIMvJ8nxiptH8Derg0mKqbJmtxv8s=;
        b=ihVwrm2Cqi1cLkAH6qkyWVclTiilGvwUrikHahshTvSECWivn0gEYbI5aQlMU2t3bT
         ig+BcdFd3U0wPwHzg9sqGnqhscM1UebZTH8tcXC+lpz9pjUygnxKCT7PstJrqlJt7nLl
         CLkRTPfd0OWO9otslo8CqIWrGlpyJ7gaRwiGs54E+eZcKrW93XACb+te0qodo8tBousB
         Bmz8SkHHzRNJY8dbOgTjeaz553oVE2KXozQDIi77T1PTjO+qLBygQeR2yj1brqBbfRHl
         Aqb2pz9uk0+wucYHivAvQnOke/mO1wzeosxKhYPiMVtHpGxKSeTU6k/CyI9D+H5ALjou
         /nwg==
X-Gm-Message-State: AOJu0YwjCsy5Kr8goxi2r3aLDOiamwUXhySuLnDbjMlHMDAbBYRuBqHq
	a0dUOJmhKQUCez3+7msKxsMWxg==
X-Google-Smtp-Source: AGHT+IH6pMrLYwHqjlp1850CLT8V4kczgmX00VnjUzgg0aKA4yDbM+awaOvHnZsumP3WdOAsyEN9Dg==
X-Received: by 2002:a05:6512:238e:b0:50e:4c33:1266 with SMTP id c14-20020a056512238e00b0050e4c331266mr2146675lfv.72.1703154307282;
        Thu, 21 Dec 2023 02:25:07 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id m26-20020a056512359a00b0050aaae62dbdsm231671lfr.62.2023.12.21.02.25.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Dec 2023 02:25:06 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Stephen Boyd <swboyd@chromium.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	Krishna Manikandan <quic_mkrishn@quicinc.com>,
	Jonathan Marek <jonathan@marek.ca>,
	linux-phy@lists.infradead.org
Subject: [RFC PATCH 0/2] dt-bindings: display: msm: correct schema filenames
Date: Thu, 21 Dec 2023 12:25:04 +0200
Message-Id: <20231221102506.18320-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_022510_569558_A90F6A71 
X-CRM114-Status: UNSURE (   6.44  )
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

During the email discussion Aiqun Yu (Maria) pointed out that the file
names for some of the MSM display schema files might not be obvious.
Indeed they do not fully follow the established practice of matching the
file name and one of compat strings.

Move DSI PHY schemas to the PHY subdir (renaming them meanwhile) and
rename remaining schema files.

Note, I have intentinally left dpu-common.yaml and mdss-common.yaml
untouched, they describe common properties for a family of devices.

Also I have left dp-controller.yaml intact. I could not come up with a
good enough file name. Suggestions for this file are appreciated.

Dmitry Baryshkov (2):
  dt-bindings: display: msm: move DSI PHY schema to bindings/phy
  dt-bindings: display: msm: mass-rename files

 .../bindings/display/msm/{gmu.yaml => qcom,adreno-gmu.yaml}   | 2 +-
 .../bindings/display/msm/{gpu.yaml => qcom,adreno.yaml}       | 2 +-
 .../bindings/display/msm/{hdmi.yaml => qcom,hdmi-tx.yaml}     | 2 +-
 .../bindings/display/msm/{mdp4.yaml => qcom,mdp4.yaml}        | 2 +-
 .../msm/{dsi-controller-main.yaml => qcom,mdss-dsi-ctrl.yaml} | 2 +-
 .../msm/dsi-phy-10nm.yaml => phy/qcom,dsi-phy-10nm.yaml}      | 4 ++--
 .../msm/dsi-phy-14nm.yaml => phy/qcom,dsi-phy-14nm.yaml}      | 4 ++--
 .../msm/dsi-phy-20nm.yaml => phy/qcom,dsi-phy-20nm.yaml}      | 4 ++--
 .../msm/dsi-phy-28nm.yaml => phy/qcom,dsi-phy-28nm.yaml}      | 4 ++--
 .../msm/dsi-phy-7nm.yaml => phy/qcom,dsi-phy-7nm.yaml}        | 4 ++--
 .../msm/dsi-phy-common.yaml => phy/qcom,dsi-phy-common.yaml}  | 2 +-
 11 files changed, 16 insertions(+), 16 deletions(-)
 rename Documentation/devicetree/bindings/display/msm/{gmu.yaml => qcom,adreno-gmu.yaml} (99%)
 rename Documentation/devicetree/bindings/display/msm/{gpu.yaml => qcom,adreno.yaml} (99%)
 rename Documentation/devicetree/bindings/display/msm/{hdmi.yaml => qcom,hdmi-tx.yaml} (98%)
 rename Documentation/devicetree/bindings/display/msm/{mdp4.yaml => qcom,mdp4.yaml} (97%)
 rename Documentation/devicetree/bindings/display/msm/{dsi-controller-main.yaml => qcom,mdss-dsi-ctrl.yaml} (99%)
 rename Documentation/devicetree/bindings/{display/msm/dsi-phy-10nm.yaml => phy/qcom,dsi-phy-10nm.yaml} (96%)
 rename Documentation/devicetree/bindings/{display/msm/dsi-phy-14nm.yaml => phy/qcom,dsi-phy-14nm.yaml} (94%)
 rename Documentation/devicetree/bindings/{display/msm/dsi-phy-20nm.yaml => phy/qcom,dsi-phy-20nm.yaml} (93%)
 rename Documentation/devicetree/bindings/{display/msm/dsi-phy-28nm.yaml => phy/qcom,dsi-phy-28nm.yaml} (94%)
 rename Documentation/devicetree/bindings/{display/msm/dsi-phy-7nm.yaml => phy/qcom,dsi-phy-7nm.yaml} (94%)
 rename Documentation/devicetree/bindings/{display/msm/dsi-phy-common.yaml => phy/qcom,dsi-phy-common.yaml} (90%)

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
