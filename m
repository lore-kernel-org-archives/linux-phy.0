Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D3D1CAC581
	for <linux-phy@archiver.kernel.org>; Mon,  8 Sep 2025 17:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZVmzDn2s+1YedCYVe2Y2/uaeo3CXFfLw4ZzNG6pIMCQ=; b=Ae6Ad9tMsLZtD0
	cxpSlWYX2DGw+OElDE8tKfoa1mQ8SVlbPJXCP1o5H35rJ3xxLmtFEzcILtBfbAYxfC2W9Y5ELfcCG
	uUs6xQjzIfP1Lt64sS8V7Li9HJYyXvrPDzkfhefxtlDAFXvDdoVpwM+LkwDkxuj/li9pgmmH0davP
	UGzdzmfSL9kpufqseFJqyeNVp0o1W8Zxe9Le3IRJPY2Ph3/8n2mj+svZYAV2SXZlmzozKvZprLy3n
	jrXsPRCkU+I4OdbJO1kSEFm1ykKrvVOE1XEfAoQbKF3P4YFU/hyUlTlRXLm+5R9yAGEcGmDduJ39z
	o5IxVmvXbJs75at9e5FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvfNI-00000001388-0Bts;
	Mon, 08 Sep 2025 17:09:52 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvbXm-0000000HEpl-3TxZ
	for linux-phy@lists.infradead.org;
	Mon, 08 Sep 2025 13:04:28 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-45dcff2f313so26316325e9.0
        for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 06:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757336665; x=1757941465; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=F+BmpLQdceYRG7RY6FfRDG60NShGiPldYqA/h5za8sM=;
        b=JpVO4fdEPlvpObYFbsV8xXVriChcLnmlZjfoEP85kKv9JoKeWgG66UclMqGvyxReGz
         n9LlI569TCyRQFu/pmsjGlvOZd6rZ71kfHUXFQFZibPrQGzOZG5cWgc5EhXTTrViBPqe
         xf7Jylcv9AuC5IsNUa+7GDEM/Ams+NXWkk41LmEm2Pp/ETeWmhHWCjpUZWIiQkNYJ1Zi
         y72kgKajp+JG0L9VjmjtSkWNnbyy2ZnhK0LvXc1aFktfPpT7H4sWBQ7hKXYkJF3lLRgw
         zGR0BDW8n4loorBxj630mzp7XsxnVAEiFxAT95RVXNXLbxlWYR2jwGn/fSaYH1arOy+v
         69bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757336665; x=1757941465;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F+BmpLQdceYRG7RY6FfRDG60NShGiPldYqA/h5za8sM=;
        b=CQtJZinLJHK4IzvXSZH8YaL9pJ7QV3/yFXoSGQslML3y6Lj7LUyRTNq/9NoOfa3XGX
         PS8SLHG9HmVLkSZIdmMjkWXLTLKSdSfLLjEBvEaTx+ug1JWqDxtR7feaHDfUAkHvZtuY
         4CWYLmfqpa34B13o8j8Xbb2gEE8/A4S3aceBggcTK7x3CIeBqF4uGb3NFRLIvxvpiycK
         ryAycO0U1/jWpmag5hNzaF9sAEgAb0OdLZuX+aYoomXb3ivvUMSNTxjO7qKWF6BGKGnA
         nuTzx64OII+ZUIW2oZHQ6pa3eC7lMoWLk2cV4DYwNaxAGG7tWpt+cEherrFbUObiSbcL
         KNrg==
X-Forwarded-Encrypted: i=1; AJvYcCVc7R5tfyeLdS5/EeI81VZ+gZFj2FzUgPNyabOLH6yqP9SltvGV5SDoRmwoRBoJeghqRRiNTzWyXdM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/8xqn0AC45/MZ31x5JmQQBQ8bNeQqPzV4VWxWk8SipjMsGu6p
	x6KWn+aycS7exTNMsgaN/Y2f/p47eytiQW7aYabSikOchXnURZqk7dKt3IQIN5M4X2c=
X-Gm-Gg: ASbGncsVIwAQXabRTzK3Ludw9tK9SZ8XoIGpBCs8zdDnxjxRfVup5zYIoZNpKEskzOR
	3PGxzCvL8aEhGFPGRbU3CFK08cdKz69ouqBbl/fIc2/oLveJ5xy4dgOBn+8mC++HUM9s/BAp4wE
	EN2IYaupyqyzDYbohLx0e3CB9MfgLE4NDJcK1ZWbk2FZ5DEh1XMm0BUQ+b/VmfQdxMM93KM5gMB
	9pcu9lGtEfBq209V3fRTkjo4OEwMM1iIFicaswQFhIpA6B3kt5fNxxM1i9XNclSmXeYchaRI1x6
	uXzKDnZeMd7D0uNTmPCGfyICnZQZqwDTpCT2prk184oW4tF0WBm3m6pY8XqIZQ5tqjdLezgrBJM
	/eqr/C0tnKeb8tYywkTlntlksiwzfCCDkZ54aIgRcijQ1d6UNc7Tz8g==
X-Google-Smtp-Source: AGHT+IGTXRp8nBogkgIlcEf9RUlMXZE1MYZ7qwfcb5uuGBnjJTSjf3Iluna5GLbfmKKFomw1sOdvFQ==
X-Received: by 2002:a05:600c:3b25:b0:45b:9a41:5d58 with SMTP id 5b1f17b1804b1-45dddea60cbmr64611275e9.4.1757336665015;
        Mon, 08 Sep 2025 06:04:25 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45dd6891d23sm145632475e9.4.2025.09.08.06.04.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 06:04:24 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v3 0/5] arm64: qcom: x1e78100-lenovo-thinkpad-t14s: add
 support for HDMI output
Date: Mon, 08 Sep 2025 15:04:17 +0200
Message-Id: <20250908-topic-x1e80100-hdmi-v3-0-c53b0f2bc2fb@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAFHUvmgC/33NTQrCMBCG4auUrI1M0lYTV95DXOS3HdCmJCVUS
 u9u2o0I4vL9YJ5ZSHIRXSKXaiHRZUwYhhL1oSKmV0PnKNrShANvQXBGpzCioTNzAhgA7e0Taa1
 tq1ttuZUnUi7H6DzOu3q7l+4xTSG+9ieZbet/LzMK1LNGWdnU4IS4PnBQMRxD7MgGZv5BJPDfC
 N+QxhgPzp+l0l/Iuq5vVuxBq/wAAAA=
X-Change-ID: 20250821-topic-x1e80100-hdmi-3bd5b5bd2d96
To: Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2716;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=GJhPHTORzQeMZdAUCocINlbQeRuM3KT1od1O9w0/Xmo=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBovtRVDMVGgxHzLejb7eBbyoFwp6E4YEQMRKPg72/U
 Rwjh/ruJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaL7UVQAKCRB33NvayMhJ0VxID/
 4wFkdgfYu9J7loTdKrRz5TqNDd63WB1xnl/W4hVSu2QdX9wb2jyH6rUY37phQY9rtVycGyJTzy4cnd
 bi2OjtCN2t5VD8MJF2QB6RTWRYeGqRu4Rturr3w/3WcTHwlJ854MSYrHL2hppI1f8bZyB6wqswekus
 xYvmd2waH5jU0iXp1rLwrCdBphUPyvJylV8oSUb3kyIcZjNbgmjUpIuBSZIkBekeYsesIh8s3Il5zg
 oRiIcBFWFJA8XLfk4Q+Rva2EWkGskG1obCzljpnJDspCLDirzii4iD19ShH59aTy7dJu36GdP7/Qsa
 ISdwycHc7lETEQ7dzSF14MzvjAzSB5fDCqhA7eny3MpxBperELbkHibfuDBClM4cT7u7wT4H0jwh0U
 EHwpwuOgpCH7CM4z4nqMmOKlwUy8hZursraRsi2sFYghdAKSJKOK95FakAnAYIcTDPRNDcNNdACV4j
 mMhQ4hD3ZW0YNJbhQ+PVu+9XT7Qw+eBcueBCBbTZJVj5Za25jgprIzt8y85t6nv6yz3nAkUAM8dNC0
 ACpUhXWFsEKTVcFO+3wmtS5pPNqWOww0dSqma3wv4kx1s0LeU/ZKSbdWR9fPnVjnLXQno4onht+nvJ
 f9JXE2dW/js9wgGCRf5Z3Ca4GV19HstrNjpQYFXQ7mQtwZDhH+hhVM9dOVCg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_060426_875559_BD6FB6E9 
X-CRM114-Status: GOOD (  12.01  )
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

The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
connected to the third QMP Combo PHY 4 lanes.

The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
of a combo glue to route either lanes to the 4 shared physical lanes.

The routing of the lanes can be:
- 2 DP + 2 USB3
- 4 DP
- 2 USB3

We need be able to specify the lanes mapping to DisplayPort
and/or USB3 peripherals when not connected to a Type-C complex.

Add the documentation for data-lanes in the out endpoints amd
use those in the driver to setup the right PHY mode and
orientation.

Finally Add all the data routing in DT, disable mode switching and specify
the QMP Combo PHY should be in DP-Only mode to route the 4 lanes to
the underlying DP phy.

Depends on:
- [1] https://lore.kernel.org/all/20250902-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v1-1-5b4a51c8c5a8@linaro.org/
- [2] https://lore.kernel.org/all/20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com/
- [3] https://lore.kernel.org/all/20250822-topic-x1e80100-4lanes-v3-0-5363acad9e32@linaro.org/

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v3:
- Move the static lanes mapping in data-lanes in the out endpoints
	- new bindings
	- new drivewr implementation
	- new DT layout
- rebased on next, fixed simple bridge rebase
- added link frequencies for dp2
- Link to v2: https://lore.kernel.org/r/20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org

Changes in v2:
- Model the HDMI transceiver as a simple bridge
- Switch to a static lanes mapping property
- Link to v1: https://lore.kernel.org/r/20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org

---
Neil Armstrong (5):
      dt-bindings: display: bridge: simple: document the Realtek RTD2171 DP-to-HDMI bridge
      drm/bridge: simple: add Realtek RTD2171 DP-to-HDMI bridge
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Document lanes mapping when not using in USB-C complex
      phy: qcom: qmp-combo: get the USB3 & DisplayPort lanes mapping from DT
      arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s: add HDMI nodes

 .../bindings/display/bridge/simple-bridge.yaml     |   1 +
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |  59 ++++++++-
 .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    |  82 +++++++++++++
 drivers/gpu/drm/bridge/simple-bridge.c             |   5 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 132 +++++++++++++++++++--
 5 files changed, 270 insertions(+), 9 deletions(-)
---
base-commit: 947efd54a86984b5f7dee9cf18c1ee82ec0361a2
change-id: 20250821-topic-x1e80100-hdmi-3bd5b5bd2d96

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
