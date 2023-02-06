Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2C9AC05027
	for <linux-phy@archiver.kernel.org>; Mon,  6 Feb 2023 09:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SX5OAraCCG0DtFzlpYisNcoEoX7/rtZqGtQqsK6eyXI=; b=40qekbP45rbt0I
	ybhfEMJOSANIhFOMPm0aTz07MNzOZJSRu+3ZoCF1DPmY/9Hp4va8qAlT7GFMNaj//sPHVfWLHVu65
	wSjZIttur0abdGLfsINxfB6mUo6m51Uf/KBNC6WNOQS/1NCGS/NVgK0lfzF10EHbqqy8a2F7TmTCS
	EaRlhL3oV8GcPTEa75yirlRlBnlZV5JWMTZvZZkQmrdNj2IC7AAgxxmAS50XW5keY/q1B4I6+jBAb
	Lj49xla9nuYBQHFiklRRd6rEIvFm2dPJuUb2RlpjHmLPU+LlQlfEBY3sfhCeLCILD9x2jBF7gzmhW
	JSastWeTwsEu1e137HTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOyHB-007yfX-7i; Mon, 06 Feb 2023 09:59:05 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOyH8-007yd7-Bx
	for linux-phy@lists.infradead.org; Mon, 06 Feb 2023 09:59:03 +0000
Received: by mail-wr1-x42a.google.com with SMTP id i5so2622712wrc.0
        for <linux-phy@lists.infradead.org>; Mon, 06 Feb 2023 01:59:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QjrenaW0UoS+7aeZaLJfjkMywdu9OcZmza4GA92KqhU=;
        b=BdsqYPuquByq/fZMeZEU46FAGdmns0+K+kVSr8LUz6V8HyFKIMMdxXqSgzK8bmTtwX
         ZHjJbl2TZqjvzHU+MP/HQXeBugOyniaFYKdhxHM5m0ObUdWJmLj6UXLifdUz/RRKVC/r
         fI8jyS4ERR5tmSmLtLrfX4M6N+gdprXPuEQGjHIecn9qastU52WU4vD40lyaKRVSqY/5
         El+IP7sk17yhnXMoau6gFOLrWSUjumafKtCq/NV6Eszlajjsf43bPimVU11GtpUQU472
         UVuGY256W99xZj2dHkshY/NJebRI5UHgfkU5luu+2ylm5wxCUuGhyeyhVSTMDdoQkQWp
         2Skw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QjrenaW0UoS+7aeZaLJfjkMywdu9OcZmza4GA92KqhU=;
        b=rfd8rhAAl+vWSVW+TlDRp8wLlg7lRjcdpuHAftqWBqaDPkr+REeuRA5D4PsxcBmpvT
         CK3TheDhtQWYGPrLTvzJaSTeCLxOaRrEtBSiG4dZcaMQb78YrYqo9BhTV/C4KMVmWfy2
         wsGcimwEJ3YZ9lTpx0V7xsmxzpJY2h5CG9/ei/6mu622ClwltKNBbAwFQbxECz4Dj7bd
         m6MKFauAnl5MDDta9+xSi95dXfpymP5HEDVceePDaU41/qKIm/5d/771/GLCy+utooH7
         xE1LqKMFiH8u5aPwaeVfUBT8gPMsIsEtVJrDjGRrHVXfWh/6gmKMuXgqQtCXD7vASKAT
         d1rA==
X-Gm-Message-State: AO0yUKW3m3hph9Jq0I2TaU27I1v21DlgmW1ylIPWigMJWq36cZFqSeRx
	d2rQZBfFDToSJ86ZLMXVZlaxJg==
X-Google-Smtp-Source: AK7set9zMlWqyCjnJTiT9EC8eFVwaiTRfh81JnSuFOVKXPMjU7KCv01VroQXJAHxuofdEmblLO49SA==
X-Received: by 2002:adf:e192:0:b0:2bd:fa1d:5291 with SMTP id az18-20020adfe192000000b002bdfa1d5291mr21204836wrb.67.1675677539111;
        Mon, 06 Feb 2023 01:58:59 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id i14-20020a0560001ace00b002bfb8f829eesm8839304wry.71.2023.02.06.01.58.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 01:58:58 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 0/2] phy: qcom: qmp-combo: add SM8350 & SM8450 support for
 combo USB3/DP PHY
Date: Mon, 06 Feb 2023 10:58:55 +0100
Message-Id: <20230206-topic-sm8350-upstream-usb-dp-combo-phy-v1-0-ed849ae6b849@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAF/P4GMC/x2Nyw7CIBAAf6XZs5sgqKi/YjwAXYSkPMIWo2n67
 xKPM4eZDZhaJIb7tEGjd+RY8oDjYQIXTH4RxnkwSCGVkOKCa6nRIaerOgvslddGJmFni3NFV5I
 tWMMXldI3RV6ftJcwYtYwoW0muzByuS/LkLWRj5///fHc9x+qEC4EjQAAAA==
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230206_015902_459533_1385903C 
X-CRM114-Status: UNSURE (   5.52  )
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

Document compatibles and add missing tables to support the USB3/DP PHY
on the SM8350/SM8450 SoCs.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Neil Armstrong (2):
      dt-bindings: phy: qcom,qmp-usb3-dp: document sm8350 & sm8450 compatible
      phy: qcom: com-qmp-combo: add SM8350 & SM8450 support

 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |   2 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 170 +++++++++++++++++++++
 2 files changed, 172 insertions(+)
---
base-commit: 27bc895137496cc5f83c40c58b1da2504ff04a0b
change-id: 20230206-topic-sm8350-upstream-usb-dp-combo-phy-33793ef747f2

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
