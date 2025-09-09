Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B179CAC583
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 16:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wBkw4/37rtm4C7IQtRo+GMdAjeh4IhN4wVaUWr5orXw=; b=QLmKMjXFmLh68x
	z722+5ugghTi6RIb8GSJoNnz6lShJjQdB6FaNQGPNAap8m8f6zc4DDKrRXvaE2vGilGHhbGlSQIpG
	xh18xXAkPF4+eEupy91eiuRtiC1rzONGPsWxfHBV6JjTRlsvTUt8EZKb27mKRvlNubgd1PnGfE11K
	B1JxXbLzAdaAAnFAg9A2N7eU0mc8jaEj5a+CSAlF7gbIiWi0/f0fE9AOhp/MXuSY40rnCCYcTPmgf
	XHoQaAZu4xwifxuiHeSGyinOtK0mw1UV57eGcwYpLhC9LuYirVdK70ZLhvj05oWbX4MAn/aP3lAsU
	89RiiwOPgHx0wGY3p+8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw1QK-00000008b5Y-03ZU;
	Tue, 09 Sep 2025 16:42:28 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvvGi-00000006Fos-3Mmr
	for linux-phy@lists.infradead.org;
	Tue, 09 Sep 2025 10:08:10 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-6188b5ae1e8so6423771a12.0
        for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 03:08:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757412487; x=1758017287; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+MjkjuuumUbUDHtDIz2dF54RODSv0Du6+TYcnVJO6uY=;
        b=TBa+0Az6pahpr0Wvd8Me2IB+njY6PAWXi9BlJmMAMrPSKUXGYVEzV5is60upO9I3U5
         XK3dlWgXqlvq4/4vzvfhiTCzUumWcOUtEHFKVLBjqnzOBagq0kjsMWA6FHRj6skazrDD
         BZd9EHYKVC6CUZSk0NKADjpnTwP7ij4RVbtUepNhvIQ0WLwlMQIcp+AG/e2oeC7iiWG5
         /tM2gMruWRlO2wlB1KK77hn4fVQdgg0nICKEhZTXcCqaai1bvIe9zhO5bV3K735+V8fz
         tQ8TsVNV3rVXBRj0XvL5vLH1s07Sy6ZDyzYtnRUFFg9CqU/8pOpYYfSgrM3+cECYbr3O
         8z3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757412487; x=1758017287;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+MjkjuuumUbUDHtDIz2dF54RODSv0Du6+TYcnVJO6uY=;
        b=M6FaCuFTh8s56+RYlmTGCLcRwM5lNxTCHDEmDZiCYDrz5KGEZQTpB9dszATdKQLrIO
         65/ppZzhrcAFXxNELgEa5G/Y1TCxBai+HWkKxOZ99erfpoOcn/MTIk+KR/Hbmf6HjtGL
         KnbKUHJ+WDsVnfacZrKhbyiUw9ukmZJpGtl/AGa0EOqs3nw7W7FzkhEBEj8RqZkiDKaB
         quN4t/WCbk41gRIsiwTQbLhfovTVL0g8uKiMjSlDrAYFA2ccqLWOphoLUyZkSiFwephC
         kzIHqV6GeJBL5G6V5INLLs7lVJG/iCDqcVI7zoe2EQ0ruJFNGkMD+vPXTx8hd/9PtgzK
         C0fg==
X-Forwarded-Encrypted: i=1; AJvYcCU24keRwKOjggZ0F1KWOJD5bkoVv93lpksOh0AN9H0kLKQaV4pcN+7M3D5Ef/OIohoD2aJ9Hv9swh4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx/BhwecACKR1i+7BccZq6WrZzLzH/vzFGlmsD7DzUlD6bPeLnu
	4RIXgS5vzk2JzqdqP4rFXp73emC18xsjPTmdy+M6oaMjVphrJ6i45xsnjVqboCZCnno=
X-Gm-Gg: ASbGncsqbgyjmlQGDXFZmAR3pApwOshFAcKq2S+YqfbtbLJY4kcxhxcMLzGQl9dBsgp
	h0iZO9XJgD5JEkoH5vOCkqXpEfgc5ATsO7LUg6nqeeJ75mGZ1WLiW5m4E+Urkjh61IaxcixekFS
	9R8j3bede9perOBDIFRyzGN4hSmViicnF5p4zSlMuA6tT1ZS4q2OebdrMa3e1Y43dhe4zIg6J+Z
	NApiE8iphvbgxPaTA4Fhw9gy65MegWT8/UKyRVqYVDQ9NcaRDZIZTxcrFQLOZqGNOrkN2CZskun
	5wfd3vSN7BJXrApcGTlqa3odL2CEFBY486Yb9nAlGbi4PC+/3kr3UlIdM3d/a7YAwYJ1m7pKYY2
	xcXvzRvAkgdtZB4lecOpP83U=
X-Google-Smtp-Source: AGHT+IH56pjx4S+xCzwszByBGw0i4rHRRP48D6P7XzQ02qobQwECTA0WZ5Ve2z2zBNo3UUrAel+vNQ==
X-Received: by 2002:a05:6402:304f:b0:621:d92:d85 with SMTP id 4fb4d7f45d1cf-6237b87545amr7716194a12.25.1757412487214;
        Tue, 09 Sep 2025 03:08:07 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62c018f65afsm965379a12.41.2025.09.09.03.08.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 03:08:06 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v2 0/3] phy: qcom: edp: Add support for Glymur platform
Date: Tue, 09 Sep 2025 13:07:25 +0300
Message-Id: <20250909-phy-qcom-edp-add-glymur-support-v2-0-02553381e47d@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAF38v2gC/4WNQQ6CMBAAv0L27Jq2gFJP/sNwKLRCE6B1C42E8
 HcriWePM4eZDYIhawLcsg3IRBusmxKIUwZtr6bOoNWJQTBRMsly9P2Kr9aNaLRHpTV2wzouhGH
 x3tGMQlWcX7UUTSUhVTyZp30fh0eduLdhdrQew8i/9tcu/rYjR4amyttLIxUvyuY+2EmROzvqo
 N73/QNKR+2JzwAAAA==
X-Change-ID: 20250903-phy-qcom-edp-add-glymur-support-2a8117d92b89
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1311; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=ORlIfeVuUFj8TqCHe+6GbxbXVnDrP5dWUNMSw05JOiw=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBov/x3qh+1zkzDZKKOEjks5vxfK+KWla2sIQ5P5
 CtcqF+Ai16JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaL/8dwAKCRAbX0TJAJUV
 VrOND/0bhPxTsAz/y8hRCHNuaCoalofm1WeqNCg0xItbMiYGXqqM34dXABJB610AlCboDhmrxOg
 F96oqb6pfPgXC+Ly+5OxT95evYyGGaz+QQu/pt4x4KqQ5Fp2yTeqIpcWQ12qEt0K0Jsh9d1i3VF
 893hpYSpuynvLkbW5Njyawl+LcFc2oiml2cqojIfTRAeGTJjtNpwQDQvj4h81ICCX36xG0f0oPL
 dtt7AVhIqKNO4WgQ2E7t/1bqV/nRoPxbtNpgZDEwqTTCiWyUMi6yScBXSB9RYT8LV35dWmbf6jz
 0x1w+9BZN+j+XmIHNWgVbDCs0YX/6CbBOqZIIbcZMlsBvwgQtpBOcidLQjv3/hC0dsXeGh7Vwer
 Z//L3yzcsihZ3xRGm7bDUg4nnPYC300faDTIq6Xt0GK8iaAjMoOwMZOg3EJH18jN+sryNy8nfmi
 MbODlV66UA5e3DwFxY770D/0pK2y2h7IqjLSQd1opCUYBEWR1v2FfZBgXogiB/iF4X/m/BlZZoh
 xTeycGgrL/kNQqSQWBuyBdjLMIcvPA37RUIwsCnRrQELlBW6bPb0PQHT8PHw8y/Vse+9jkGWnYs
 PAB2h7t2hdQL7WrudaCexQMV71bF6u9Aytn5j2rvi0lSOi/ca8ty681aNJiyIt5lrp2mzuUUKAX
 wSiRGQjFsorC3UQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_030808_870996_FB2928FD 
X-CRM114-Status: UNSURE (   8.55  )
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

The Glymur platform implements the eDP/DP PHY version 8.
Add the necessary registers, rework the driver to accommodate
this new version and add the Glymur specific configuration data.

This patchset depends on:
https://lore.kernel.org/all/20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org/

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v2:
- Sorted alphabetically the both the compatible and v8 specific
  configuration.
- Prefixed the new offsets with DP in order differentiate from PCIe ones
- Link to v1: https://lore.kernel.org/r/20250904-phy-qcom-edp-add-glymur-support-v1-0-e83c6b9a145b@linaro.org

---
Abel Vesa (3):
      dt-bindings: phy: Add DP PHY compatible for Glymur
      phy: qcom-qmp: qserdes-com: Add v8 DP-specific qserdes register offsets
      phy: qcom: edp: Add Glymur platform support

 .../devicetree/bindings/phy/qcom,edp-phy.yaml      |   2 +
 drivers/phy/qualcomm/phy-qcom-edp.c                | 242 ++++++++++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h  |  52 +++++
 3 files changed, 289 insertions(+), 7 deletions(-)
---
base-commit: 8128ba77e80a40f545381f1b31267f2f204380fe
change-id: 20250903-phy-qcom-edp-add-glymur-support-2a8117d92b89

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
