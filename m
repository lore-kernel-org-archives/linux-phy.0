Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2712C27C6E
	for <linux-phy@archiver.kernel.org>; Fri, 14 Jun 2024 10:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N04KLC+xiB+3YgSnQJvFhWJjp0AOGClf5SNgCOqKVgo=; b=a58clbrKodi5tF
	8eQve+vN2sk9X6U9RF/oGLMKBkvyORTsgX94tOq6vmTokzJoVrANarbOlOxRnkucmLqKtU2Vr/8fB
	K0MCObkNK8WGu8eX++U3PBHZOGQtFsFiJyV4HJZyXFuD3+2odMltT2uZpnAk89r4SPcN7cO5mEkwn
	KUyzRl5+qwtkCeFZYzP4MF41792LfEL7OEY9nrTqlliw/CPcfyMQwNaSs0dsF0E1tL32E3fv0+gds
	h4ra1ChX2DK2D+Zm3SDLvsjfnDS1GR4NMTzNL8VY/5atHD0nozAs42rRmwaYQB2W6Xfhu+OQCqN8u
	nANvf1Z9ErajO1zvlZ7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI40w-00000002Nj3-08mx;
	Fri, 14 Jun 2024 10:18:34 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI40r-00000002Ney-3yfY
	for linux-phy@lists.infradead.org;
	Fri, 14 Jun 2024 10:18:31 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2ec1ac1aed2so3300661fa.3
        for <linux-phy@lists.infradead.org>; Fri, 14 Jun 2024 03:18:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718360306; x=1718965106; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JYj+vYlav0P5TSwPVqUtIz1j4klkYA9AbEcUeqORsg0=;
        b=NzxD0rAnJYd+05qoygI/1FPEBBZj8g8Lczr39CIUpJJncp7+G+3pzI5Q/XXwKqK/YT
         WJj81+eQjxNIPyA2RUQp2mf8saNqjxG7YsWQKDexfj/9V4YFk/55IXwlr3A8ZL6cbuqp
         NL3KOY2yW0Z+v6y/NYggnTGCjCwNCB+X0eWuDfrMC9VJcfts7P4hClX6lj4YARaGRfac
         woaTWiF3b787n2r7oNUGOjTZD1w+W5XcDzSPXDosJIq/9NcQK/Ofl3m4o2kRSjCMuTGZ
         gBvfyTfSMtETxSulofOKZcb/0scNWMm1nE7qabA+mXccUMxRhatWusljV5SHKhv2SgLI
         xwww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718360306; x=1718965106;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JYj+vYlav0P5TSwPVqUtIz1j4klkYA9AbEcUeqORsg0=;
        b=Kt/0OuCLsWipZ3eqZ8Tgs75oLCj8BpjUXxJu+FirToDF24cs41KbeDe6j2pHh9Yf/I
         Cum4fsnToatEXxqXwsulFEmNSOaBQEgsGn64y83lLH2TKfCSwrIw1wh8avJamumN/teu
         hupH5VNP1+O01MxYL5Xb9j76LlqRGq5MCKvUpFfRIJC4zMNsenSB6d0s4WtIFtMrvBrg
         pUzUVlmPPIoNbSGb1lCnrCJaIa6l7aAMU+mTT05kFIj561/ooXDxGeiwJnTiWS5ETeN3
         zW/kIurLrwl6X0tqnU7xMIL+RVFIJidYLPKmgIXp4r7ORqZn9z2XaCRiv33H5ved9xuj
         GLuw==
X-Forwarded-Encrypted: i=1; AJvYcCV8RBknjw6sJuhVNKOhrwmbVSgLBBo4BSLOMjrtZcz1Jq+6Hkt/Ki+bVCPW4vPKJOlCfNIosu8XYVyUGdj1rthSMa19U01lHq1IkLeCEQ==
X-Gm-Message-State: AOJu0Yx5jFgVQq6+AZD9InlnQgVyHtlsd0T0FGzzOvzLVOafnBTY9W5f
	gjVekNX8TH/2IUoIm9Puqg625qtNloB061kH6VhDOmwooFcPeXhyVqb+iXcYIm7yPXft/MuSIm5
	2HVk=
X-Google-Smtp-Source: AGHT+IH4H3K8j6QfiGJlv35cF2UfdUw7daGofG712v461wn4hJojqEJ1PEJFBhgsfwpiXRogE71/Vw==
X-Received: by 2002:a2e:878a:0:b0:2ec:48c:8ae2 with SMTP id 38308e7fff4ca-2ec0e5d0b88mr14261061fa.23.1718360306362;
        Fri, 14 Jun 2024 03:18:26 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec05bf44c4sm5000241fa.9.2024.06.14.03.18.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 03:18:25 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v3 0/5] phy: qcom: qmp-pcie: drop second clock-output-names
 entry
Date: Fri, 14 Jun 2024 13:18:23 +0300
Message-Id: <20240614-fix-pcie-phy-compat-v3-0-730d1811acf4@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAO8YbGYC/33NzQqDMAzA8VeRnpfRL0V32nuMHVqNGthsaaVMx
 Hdf9TIGY8d/SH5ZWcRAGNmlWFnARJHclEOdCtaOZhoQqMvNJJeal1JATy/wLSH4cYHWPb2ZwfK
 +02h1ZTvD8qUPmNcO9XbPPVKcXViOJ0ns0/9eEsChNkaL0jZS8fr6oMkEd3ZhYDuY5AephP6Ny
 Iw0Da8rhaZUtv9Ctm17A/nORbv8AAAA
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2468;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=e/vS57MZRDtlro2SWvpS0gu0uEi42A6fSDn9ZPw9edg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmbBjwQrd5js8BXipsqsF5cpu5SbQHYqeKPfwwD
 JdYmlmoThyJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZmwY8AAKCRCLPIo+Aiko
 1agVB/9WS3uiu3HZIel16w7kPNn4LdNLQX7XqhyLY9sHu6oe1PD1PpxqXReCWlgn3W3g9Kcxtpz
 H9+ur40bZ2unxnckJ1e3Go1juItrgf9O4RrIgGblqqeaxdBfTcwSItG8XQaYothSKlb9IcYNiKA
 e5wCnDgFfa+pqqsLs8GCiJkjM87kb6KQPh0JHRaTUiS4ZcAvPvMO8sITHlRqU+hNkQynETq/uiP
 SGot13W3gfp9bU95srZco4aCiYPufBAGNKktkk928d1nNVLbdv5HRdboy+oIM2sAxhfk/uwufAI
 sOClMbo24MaYPpyVH8ifUcs7lBJ5lHN/uHrGz0zic1Ps1r52
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_031830_032400_976D06EB 
X-CRM114-Status: UNSURE (   9.57  )
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

While testing the linux-next on SM8450-HDK I noticed that one of the
PCIe hosts stays in the deferred state, because the corresponding PHY
isn't probed. A quick debug pointed out that while the patches that
added support for the PIPE AUX clock to the PHY driver have landed,
corresponding DT changes were not picked up for 6.10. Restore the
compatibility with the existing DT files by dropping the second entry in
the clock-output-names array and always generating the corresponding
name on the fly.

To: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: linux-phy@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Changes in v3:
- Also added DT bits to remove DT warning
- Link to v2: https://lore.kernel.org/r/20240614-fix-pcie-phy-compat-v2-0-990863ea53bf@linaro.org

Changes in v2:
- Fixed generated AUX clock name (Neil)
- Link to v1: https://lore.kernel.org/r/20240521-fix-pcie-phy-compat-v1-0-8aa415b92308@linaro.org

---
Dmitry Baryshkov (5):
      phy: qcom: qmp-pcie: restore compatibility with existing DTs
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: drop second output clock name
      arm64: dts: qcom: sm8450: drop second clock name from clock-output-names
      arm64: dts: qcom: sm8550: drop second clock name from clock-output-names
      arm64: dts: qcom: sm8650: drop second clock name from clock-output-names

 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml      | 7 +------
 arch/arm64/boot/dts/qcom/sm8450.dtsi                             | 2 +-
 arch/arm64/boot/dts/qcom/sm8550.dtsi                             | 2 +-
 arch/arm64/boot/dts/qcom/sm8650.dtsi                             | 2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c                         | 9 +++------
 5 files changed, 7 insertions(+), 15 deletions(-)
---
base-commit: 6906a84c482f098d31486df8dc98cead21cce2d0
change-id: 20240521-fix-pcie-phy-compat-b0fd4eb46bda

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
