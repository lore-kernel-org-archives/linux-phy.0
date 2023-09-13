Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25C7FCA5534
	for <linux-phy@archiver.kernel.org>; Wed, 13 Sep 2023 09:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GBfdljhOsPO1dE2JwlfW671YMURQu9At0oW3FMfdHxY=; b=xdpEvGI7ZeVz0i
	bOl8TEErx+SAOFH3T48Mg2go7kzwlna4MTmzDw4mWRMsnxQwRQsBWmshEX54V1czHhwmT2pGWcrMu
	AY737v/3Y+tCcM8QRLq0B2nt5gFoccP8Xtp3TBPtwH+wFK016JaFYrnVbJYoC1SvvIVGohMgubzlF
	xIxoP6eaGD+7dF60uk8O4g2FsGsfaj55ev0Cyrym9hmSIJPffq4Vjj5X+o74GRIi21mdtv9Tz+n/j
	xA3ExoTOkpGQVcWaTm2ZKGBKfnNiwuH/0DEqAqi8f8rYWiOBq2uMooR1fEXChpk4Spk1TJ+M7yP8u
	QdXUJChwgwNC0FlHa5cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgMZO-005M0T-1z;
	Wed, 13 Sep 2023 09:54:02 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgMZM-005LzS-1M
	for linux-phy@lists.infradead.org;
	Wed, 13 Sep 2023 09:54:01 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-9936b3d0286so870985366b.0
        for <linux-phy@lists.infradead.org>; Wed, 13 Sep 2023 02:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694598838; x=1695203638; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fad1rR7O92f8MbM+uIDjcw5AGbZOnibqZ09Elwwq4ek=;
        b=BgnM7/tBfAvrQsJyRBQagSn+ZEH1XdAOWJX0bBWMJXLd2Hwl08tKu9ttrbcStmpzIT
         8u9sMs6dmWwioy8kiB9dneG6VNOhMuQntIKuK+SItSO3NMElPSa1YLHf3xRjyDE7rS3o
         NIVAVnvF2dZbou1/JDyHw8q91KO3OWtLMLVnwKeBU823iuYYiK+uftlrgrH0fhZtcqnh
         +75bxglrHoL5hcaNKDHT87MVlCrKVmLbSPG2o0nzs2JBI1Ekez0HUc8ZUT9Gh0F6vdYF
         2LGN6Uh8gtViUzwk9ZYU0qd27/4H4L/hKakvkUswC8jHl9D6DAY/SV+UBgFXcVKPOdSP
         wl3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694598838; x=1695203638;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fad1rR7O92f8MbM+uIDjcw5AGbZOnibqZ09Elwwq4ek=;
        b=oRQAtSKE5sSpHkkqY/YCC55ZgMSoj2G3GcdfRRyHO0u3KzZgF5E/EHVio28Emf3N9C
         ekE2FGq1ZxtLhGbdFPdubzvUcmqQW1DRnht/102mD+IU4qJEt+w9ICllI/kvMeXgVBLm
         ZVR16RFagr0wKFKLQDhQbL9mMOn5gKbmNhpza9Mf5B5xnnlSBt1BwuxquIQ6pCJnIFzG
         rnkETRTxCj5/Q277IMxS4WwcUt/by54Q6a/ofEEI8ITOFKq07R3J6hRmp6ouzmE50txC
         +VhAzEIEiKm1EvO5uXZiOYZBxrTzRZfTjAvVEMw/gJQFU4LI6u5d/09Q+KbaxZ6PpPjd
         w8VQ==
X-Gm-Message-State: AOJu0YwnfDfeqIivFtWojyaPnyQBpyqfalwIEwP0jgGE06hofmBiQmt1
	p2kJJ/VHaeDurpMen4QOo+wsrA==
X-Google-Smtp-Source: AGHT+IGnGtXQchEs2Ii+OMSkJplLM+jTdktXjIslZBx2soTdmdINHLx0PipggsOaf3dRDQU6Re+rfg==
X-Received: by 2002:a17:906:315a:b0:99b:e5c3:2e45 with SMTP id e26-20020a170906315a00b0099be5c32e45mr1481772eje.28.1694598838102;
        Wed, 13 Sep 2023 02:53:58 -0700 (PDT)
Received: from [10.167.154.1] (178235177106.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.106])
        by smtp.gmail.com with ESMTPSA id l21-20020a170906939500b00985ed2f1584sm8092669ejx.187.2023.09.13.02.53.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Sep 2023 02:53:57 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH v2 0/4] EUSB2 repeater init sequence override
Date: Wed, 13 Sep 2023 11:53:22 +0200
Message-Id: <20230830-topic-eusb2_override-v2-0-7d8c893d93f6@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJOGAWUC/4WNQQqDMBAAv1JybkpMqqQ99R9FyiauuiCJbDS0i
 H9v6gd6nIFhNpGQCZO4nzbBmClRDAX0+ST8CGFASV1hoZU2yhollziTl7gmp18xIzN1KAGaput
 vHpprJUrqIKF0DMGPJQ7rNBU5M/b0Pl7PtvBIaYn8Oda5+tk/l1xJJcFpY3VtbA32MVEAjpfIg
 2j3ff8C0hIX/M4AAAA=
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694598835; l=1192;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=QZkLavErYAckHPtysRiIt6y82qlIstwn9hPWxIXGKnk=;
 b=H7+WiwYdLnKaEO7l/O93t4KHu1fBwQsdrs/2pnS29hKZFdQNJp5Rh7y9E99j1+dFPXAR9Itkq
 99FGy8WHI22AEhxFhXSenjlO7+mivRXWZ1G6vU7ghafVhKptQEZRRxW
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230913_025400_463058_34FEC12D 
X-CRM114-Status: UNSURE (   6.64  )
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

The EUSB2 repeater goes through a tuning sequence as part of its
initialization. This series ensures the tuning is "clean" and can be
overridden for devices that need it.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Changes in v2:
- Change register names to something more human readable in bindings (RobH)
- Make "Zero out untouched tuning regs" actually do what it says
- Link to v1: https://lore.kernel.org/r/20230830-topic-eusb2_override-v1-0-ab23825385a8@linaro.org

---
Konrad Dybcio (4):
      dt-bindings: phy: qcom,snps-eusb2-repeater: Add magic tuning overrides
      phy: qualcomm: phy-qcom-eusb2-repeater: Use regmap_fields
      phy: qualcomm: phy-qcom-eusb2-repeater: Zero out untouched tuning regs
      phy: qualcomm: phy-qcom-eusb2-repeater: Add tuning overrides

 .../bindings/phy/qcom,snps-eusb2-repeater.yaml     |  21 +++
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c     | 146 ++++++++++++++++-----
 2 files changed, 132 insertions(+), 35 deletions(-)
---
base-commit: 3c13c772fc233a10342c8e1605ff0855dfdf0c89
change-id: 20230830-topic-eusb2_override-aa66df9ca641

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
