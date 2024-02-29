Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A593FC48BF6
	for <linux-phy@archiver.kernel.org>; Thu, 29 Feb 2024 13:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X33JUzBWOIBdGFbM1x4ONSVsy356gW2p12ylsBvRzEw=; b=wkZZsT6YCeR4CE
	IRlKAn1x5D+dsHv+Kdn0oCROif7d1/v86uci84JW+a6//7VxKVV1szlBUB24wauBVDmACuhEZN5j6
	Ii0fx2FT01oDW7sxXPIvY43cJVOGmnJk/N6Ib9dLJ5lj3ZjBvE/QHeRbbwY4YMRWKsiiNQDdcRGa3
	bZ72Wh8/QwrGFLZnl71R4agRpRSUPPA1Z/Seh+KKYULulhTPL6POEydtzBEKRyH16zEhucfvAumIq
	21v1pxG58d14SweT9shC4zK1sP8U+wVqYuULD4poo4GCBvdQ+mf8/1MBEHYI7qWq0SBGA3wISSgjv
	dCLMpSKoNM8TDFGsIcVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfg84-0000000DbHf-43KF;
	Thu, 29 Feb 2024 13:07:16 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfg82-0000000DbFq-1Fqs
	for linux-phy@lists.infradead.org;
	Thu, 29 Feb 2024 13:07:15 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-513181719easo510325e87.3
        for <linux-phy@lists.infradead.org>; Thu, 29 Feb 2024 05:07:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709212031; x=1709816831; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VpJyTXc1Ywh+o/rrJ2pOXjJ2ggpkjWz2aQ0FDxBOhIY=;
        b=bNJB/VaItUYJainPtFJ16eJs32Ryp3COsVFGRnQtLHVQ4fAJSjKp8/vpqx9lS4Nesx
         pIyMYgmpGHnHp3/VB7X+/4WBcWsDNoocbLvsA02YLd4Bo+xQhx85W76eKj1/IftMqk89
         A5Pu8VIGdVqW9udbVl7q3DuKm3hpr/CddiG54jPXcZqwf3Qe8SmchET46qTh0sQe0xlJ
         Z6mCUDg+hsU6LzbT1TCk6HxySZdtE4chX1d5GaYsTamUnQtIGS5QmcYkAovZY29OFPFT
         gP/fYkQbSnGYekeBJ+WnaDQg/9668FxhcCol35jh9RWgjsrXns25BrBcKqbywHTPS9ke
         A8Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709212031; x=1709816831;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VpJyTXc1Ywh+o/rrJ2pOXjJ2ggpkjWz2aQ0FDxBOhIY=;
        b=Q0N2TOVmSgdo/JBlP+IqX66DSBCOyLgcNUWJrRXJsa9pNNGTUjXxa2WqikBJuNXqFI
         SYqr8NLBPHcVYfQSUU/NH86yWalAd+CyedNtb/DJdz8sTQuG9uprIWygf9wABAqbFd99
         812NTD1zkvTWk1f1FsBIM5HIrGAenEHHeQttMcFMWKEZ37kXPXi3E8ITTKP/YLZim6KN
         T8kuTcR48e4FvgZeI0bo1KkG0YrLUAw7KRv1sriBtR4GCG3TMyFztiy8Y0ulJ1WYRuHK
         ahRPiuKWRUqRyX5WPgXDdqQvbFGNhWazCpTzagerBkzQaE41UfIkMUBqUt0KQ2fySSj1
         jOfw==
X-Forwarded-Encrypted: i=1; AJvYcCU0hQBzqDuIAE/Atza4QUaAI2ZuERN8Z8QICTxaxpUoCbi6pkpjGPijg3wAFu1L2a31u55VV1FKUOg7YOzMLSHpy7uuTWnyAua77MZRnA==
X-Gm-Message-State: AOJu0YxrFAtLNTgOsduddCthryXINd7o+l0CqfXXWQPMBjizDSbQ7fUW
	bsnBTAfvi47emVf2bIm+6WMoxGK/kvcmqS80g7r9aPDvecnoA2q16AhBvC2U/qM=
X-Google-Smtp-Source: AGHT+IFTxPsS0B7q7kKEpGoSR07lplEbqHtwyaT9O3CctzbYkluJr32N4q6Bwnf9qN9P4GECQcJESQ==
X-Received: by 2002:a05:6512:138d:b0:513:2ba9:4b14 with SMTP id fc13-20020a056512138d00b005132ba94b14mr536713lfb.46.1709212031012;
        Thu, 29 Feb 2024 05:07:11 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id t7-20020a05600c198700b00412a38e732csm2071473wmq.35.2024.02.29.05.07.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Feb 2024 05:07:10 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH RFT 0/7] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
Date: Thu, 29 Feb 2024 14:07:00 +0100
Message-Id: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAHSB4GUC/x2NQQrCMBAAv1L27EKSWrA+wAdIb+KhjavdQ5olm
 0pK6d8NMqe5zOyglJgUrs0Oib6sHJcq9tSAn8flQ8iv6uCMOxvnesxR2KOGS+kMrqI50RhQ5g1
 9DFPEvAl5DGvB1k6dq9jW91B7kujN5f96wP02wPM4fuclkP+AAAAA
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2273;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=aqZRgp2yiWRPmMT6L1mHmGD73EcopqhjHSAXgidIbgk=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl4IF64Q3vQhe8Ed4JVg0rO8vaK7Imt55fyQPjvmDn
 /qxcxw+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZeCBegAKCRB33NvayMhJ0TqvD/
 9Pe1QxNJeonARwUNIv58+ZC9X0zLMPhhsW3n0g0YX64trQSgJfo1ipVCBFz3B6QRoQ7d79Zy6vr8Jo
 p3h5KqBdtD8iXEg4RjDyFG4tEZ1/yfEfPpvNHOdXL1rvzswSBelfQAtUymOLpu4wAde4d0CoNBzAtN
 wfBqrc+pgorJ9ZkQODfyH6PFEcCqYHiYi7wtr9UTupQDmQevpxezlRqgXjThLR5Wkh32vYAL6UaoZS
 oFe/4EUWdE39zYj/S5C82ovTahV20EoKKAFjW4FyZuElpIph06rPM0LqZZamwrcdvHQG8PgWMqv+Zt
 MRmv9WYWWUeXqunK4cbjd0tuK6RrcyZnB9FVoOZh1pw/h2I0ER0R3087l10FeJNCbg25IjAb6LKJ+E
 +Ylm6LwXJUWTgNYCjy4yLWxMM2tz7FgBL+4btv+2JV0ZxaxuDqud9PeiEQkG4rn5R8gKkefuLukLKq
 J1wDXNfJ7yDNDfS7Zp7kkBCruGQ06Th35oUOBsQ3XRJ2sH944iPQg/Id4PKHEMkFa/8k7sLqlZefhv
 0YxdgyR/n1TNnE2uEgzfiZ1LGDy1u4PM863oq1ZvKZff4UTRCXoZcwrnz0e0wxkkdegvNWNZVa5jCm
 AioPNYeKX4y2iIt9SQU2D/sr9fbiuuyfkR5tX4sja42vc26AccpjVDvtMO9g==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_050714_378890_9567411B 
X-CRM114-Status: UNSURE (   9.12  )
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

Register a typec mux in order to change the PHY mode on the Type-C
mux events depending on the mode and the svid when in Altmode setup.

The DisplayPort phy should be left enabled if is still powered on
by the DRM DisplayPort controller, so bail out until the DisplayPort
PHY is not powered off.

The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
will be set in between of USB-Only, Combo and DisplayPort Only so
this will leave enough time to the DRM DisplayPort controller to
turn of the DisplayPort PHY.

The patchset also includes bindings changes and DT changes.

This has been successfully tested on an SM8550 board, but the
Thinkpad X13s deserved testing between non-PD USB, non-PD DisplayPort,
PD USB Hubs and PD Altmode Dongles to make sure the switch works
as expected.

The DisplayPort 4 lanes setup can be check with:
$ cat /sys/kernel/debug/dri/ae01000.display-controller/DP-1/dp_debug
	name = msm_dp
	drm_dp_link
		rate = 540000
		num_lanes = 4
...

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Neil Armstrong (7):
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add mode-switch
      phy: qcom: qmp-combo: store DP phy power state
      phy: qcom: qmp-combo: introduce QPHY_MODE
      phy: qcom: qmp-combo: register a typec mux to change the QPHY_MODE
      arm64: dts: qcom-sm8550: allow 4 lanes for DisplayPort and enable QMP PHY mode-switch
      arm64: dts: qcom-sm8650: allow 4 lanes for DisplayPort and enable QMP PHY mode-switch
      arm64: dts: qcom-mode-switch: allow 4 lanes for DisplayPort and enable QMP PHY mode-switch

 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |   5 +
 .../dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts     |   6 +-
 arch/arm64/boot/dts/qcom/sm8550-hdk.dts            |   3 +-
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts            |   3 +-
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts            |   3 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 168 +++++++++++++++++++--
 6 files changed, 173 insertions(+), 15 deletions(-)
---
base-commit: b321c0e8ca754d8cd9f23ceba958e3ea93c6519e
change-id: 20240229-topic-sm8x50-upstream-phy-combo-typec-mux-31b5252513c9

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
