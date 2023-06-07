Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49C69C7EE25
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jun 2023 05:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=52gONLLFzKkCIfE1n71bKcvqknz+BG4AC5QG3jBsDlw=; b=xJE8kL2GlCHdyR
	xVWJ9VCYUWjI1xg/Tu8hic9eu84Dg2uWFZ6ml0fKS9atKNvd9fKhpIh+K2sW1XAIF+Wmje4zLRx6+
	Gxx9H6O6P4Jq6ycFmvqt1DIpHJgZ34giuKMIB9W/P3JHixQB18EqoW0GsZVgkwyHVfTkwaq7c3s9u
	FffxRGkhlW/y10h2P3ctdk48mo0aJzwmbqY1inZZYSYMeJUExbj5FzAAzLZ6LeM9nB9L1QvviEtOu
	Qw8FO5lV9BE8G8C9NlDuVrbgi74/4EFmWCX8M20YXJW1z0WRx2RnH5c5S5Ceg/0LYCRJeUHy9lLW6
	0ZdqaJeHsy11iLQkSBAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6lHe-004MK1-2u;
	Wed, 07 Jun 2023 05:00:34 +0000
Received: from mail-qv1-xf30.google.com ([2607:f8b0:4864:20::f30])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6lHc-004MIU-0J;
	Wed, 07 Jun 2023 05:00:33 +0000
Received: by mail-qv1-xf30.google.com with SMTP id 6a1803df08f44-6261616efd2so53804926d6.2;
        Tue, 06 Jun 2023 22:00:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686114029; x=1688706029;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BnDSNztBm4J3NasuTfQRWgwfyES7T9XRaUOrSTDLNZ4=;
        b=hfOxgLDZXBPnbDuIG7QLJvtBnPCEgqErrK1gQCRO8R2Wv36kpvTnKynhJCefBg/5NR
         NgSk+cqo5oY2Gh58WRiu06UYRiXSUdH5znj7CDiyDPfN7QnE/Wi1dNHq5bTLSO/wRuNu
         9TXuzHyIen3xPyALTGrZdxvFldOR1EHSDFcoKAjDx4I5pM5+vZv7ZxLOpuUbQXh2NF0k
         XnmX3zbaLDU2rrftRUuBPIL4NTJ1l4UGaB7RSbsYqcUilHqJfY0P3NqG5LS5cUyIU/N8
         XdpJVR2MHevcF+aVYrkSDLyqlanxCJ01MOugzFHuwgoCdgEczFtQCC3X2mepC+cTQPHA
         wjLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686114029; x=1688706029;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BnDSNztBm4J3NasuTfQRWgwfyES7T9XRaUOrSTDLNZ4=;
        b=VbRcGQu4N/C/K8djhLcbUL+cICpZW0JO5Z+6ebg4Nmb+lfHuE2bKsM8JZzB+e8Nher
         93m+Bjrr2BxuxuwuENOHneSJGCNSYHt0wyF30d79Lj1ncK2eFj6Ff5H/TYDBATrQ5Goe
         6su5C848XCTSTiD3YgxihX/S//3HQUBiMXelnno7beL6I5YHcFEcDkvpc7kUML/KiwM+
         834pyRV14KcpnH8Syk5qV4vTk47nvnf63lS9C90TkXEzXNrqhL0yXf4Y0AZ4w8oMyskr
         Io/KwdzvjqpEHx838XktW7frOiKofKA2eoQwGvyRGjVTahroYfRnY3RIewnrBL69BQac
         kn9g==
X-Gm-Message-State: AC+VfDw8uGWhNiKXYxWEt1EGtR9qyKLYC+j5WHMVbxiHmWOAKp6f2psE
	6xr3y7KHlt/5OY8asrHHLq8=
X-Google-Smtp-Source: ACHHUZ6FSOUL8gqKJKG6injW2YR28bdwhMVki0CET5tehnYzxt3S9hid7iykw0he0o1Ml6HfPwuWIw==
X-Received: by 2002:a05:6214:1d2b:b0:625:b3a2:f637 with SMTP id f11-20020a0562141d2b00b00625b3a2f637mr2236823qvd.8.1686114029079;
        Tue, 06 Jun 2023 22:00:29 -0700 (PDT)
Received: from Latitude-E6420.mynetworksettings.com ([2600:4040:2007:9800:c358:f4f2:89b6:ca7d])
        by smtp.gmail.com with ESMTPSA id m1-20020ad44481000000b00621430707f7sm5848980qvt.83.2023.06.06.22.00.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jun 2023 22:00:28 -0700 (PDT)
From: Rudraksha Gupta <guptarud@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	soc@kernel.org
Cc: Rudraksha Gupta <guptarud@gmail.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 0/4] Samsung Galaxy Express SGH-I437 Support
Date: Wed,  7 Jun 2023 01:00:19 -0400
Message-Id: <20230607050025.86636-1-guptarud@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_220032_131220_F15673D8 
X-CRM114-Status: GOOD (  15.08  )
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

This patch series adds support for the Samsung Galaxy Express SGH-I437.
Currently the following things work on this phone: UART, eMMC, SD Card, and
USB.

version 5:
- use enum instead of anyOf in qcom,usb-hs-phy.yaml

version 4:
- Rebase onto rc1
- Fix qcom,usb-hs-phy.yaml patch so it doesn't break other devices

version 3:
- Added Ack
- Fixed compatible in qcom,usb-hs-phy.yaml. `make dt_binding_check dtbs_check`
  no longer complains about USB
- Fixed formatting in qcom-msm8960.dtsi and qcom-msm8960-samsung-expressatt.dts
- Fixed the spi1_default node in qcom-msm8960-samsung-expressatt.dts.
  `make dt_binding_check dtbs_check` no longer complains

version 2:
- Combined patch 1 into patch 4, as the sleep_clk label is specifically needed
  for the USB node.
- Reformatted the commit messages to align with the style used in other commit
  messages that modify the same files.
- Included a cover letter to provide an overview of the patch series.
- Slight refactoring of the device tree source (DTS) file.

Rudraksha Gupta (4):
  dt-bindings: arm: qcom: Add Samsung Galaxy Express
  dt-bindings: phy: qcom,usb-hs-phy: Add compatible
  ARM: dts: qcom: msm8960: Add USB node
  ARM: dts: qcom: Add Samsung Galaxy Express support

 .../devicetree/bindings/arm/qcom.yaml         |   1 +
 .../bindings/phy/qcom,usb-hs-phy.yaml         |   5 +-
 arch/arm/boot/dts/Makefile                    |   1 +
 .../dts/qcom-msm8960-samsung-expressatt.dts   | 331 ++++++++++++++++++
 arch/arm/boot/dts/qcom-msm8960.dtsi           |  34 +-
 5 files changed, 370 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boot/dts/qcom-msm8960-samsung-expressatt.dts

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
