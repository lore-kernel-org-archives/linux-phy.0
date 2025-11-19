Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 852C3CF256B
	for <linux-phy@archiver.kernel.org>; Wed, 19 Nov 2025 08:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eggjmRPwFR8WZERHEYY+I8UyArV0hUeR3pCrdT1qAx0=; b=yr49XpERwHAGcH
	QON4vxBz5HIaN4/A10eJmaPaO06evfFRYn3iSlcIvz3RdzXC0ImtLy579dQ8tcbVsAp1zXLMJ5epN
	u6w4AxvxUV1uQ0J9sGiCjwldwzROSHjFkjSfgpmsogRga+NfSHjQ+Lo3cTii1v7QNh8H/PEdSz46u
	aXZa4aY5kMVFAAINZjIZvthR/isVEjBrRwLCVVpq6DciZFxtS0oivxMESSHc4/kbqz+TJ3AM0ZBPs
	MCjGeyaPsSKGNBcGHcXqHBDNkYOBi8wPBZAIczKSjHSnvpEZIF1PSdJIkmzpVQHkHxk8tl7zuHbeU
	MyD3PqredSadCLCpenWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLdoz-00000002oi2-0IiI;
	Wed, 19 Nov 2025 08:45:49 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLdow-00000002ogf-2BoM
	for linux-phy@lists.infradead.org;
	Wed, 19 Nov 2025 08:45:47 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-429ce7e79f8so4480124f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 19 Nov 2025 00:45:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763541945; x=1764146745; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=E3GucV+GzoG4WyLANsgiY2XfGGlIy+gJfrdoUBjs0Ww=;
        b=EpSl/h2AtMjXJc+soot2eoSSyuCbQcCbg4p6+iWHSwwKACxzuidgGoyl9LmSt3Y9kz
         uQoYl5kpltQvZ5DhYZMLD55JmisCG5ZlkCxDRPzDpu4XnDJs93t1cM0f4MzEckvOw6KF
         RCHmnUM0U0yDF7HnBwAhsf+BNAaMaKubJvbZY3X755F0Pp/sg81t4ErJ1xlSZ697nQqB
         AxgbwMsVFx8Dx8C0FasLrJWpRBw+k3CtsQUGeyTzoKi+SW0o030p+7nDYi2dY50/eklM
         d+F6WuIP1PXlMxV3Aw1Afbzx+/XxlwxuDhvkbwc9AaAJ8rPAU4JIHUfGOeNJJk6R5wxY
         GqQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763541945; x=1764146745;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E3GucV+GzoG4WyLANsgiY2XfGGlIy+gJfrdoUBjs0Ww=;
        b=i39kkQF/SiS3S0up+ne3Fu+hI0q/P6t4h64KPYtCW94GZOEjseXaFqeoRoVuup9UQd
         Mc3e6bXoXYbGMBlAeuoG+/lc4Y9rEfu4PlHqRNRsFyCO5ZlM7k/qSUqZEGzgcxfJROY3
         AOJRQyyzPe+cMi8ad/6UtoFO8R1Gm9v0wTegak4+oK3qEeA0HzSZ5IkOrzb9eFNvkZHa
         DYSHS6VG06lrW1ohuwsK1PrSlz40jwZj2OEG+grhPS/jbKpjXIgg1jjru4k2L8OCkCsY
         NP18edyMcDhL3Yp9JohK9OwpprmLX27oiwEXXYw+XeAwns02s71s5OpxcgnHhV/Tfy9Q
         +IEw==
X-Forwarded-Encrypted: i=1; AJvYcCXc7mHptolYV5SOEvo+Ph3lZJyy5KPPXyY1S3h/FWWk9nVTs0z1NWn3ts8wnkdABeSMRdYXipNbaGU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyh7k4m0xVxNYYZbwOFcL6O8kmVPqN939wBsKf+O2jGIUz4m5BP
	iPgChI4JzJbQgjVOhXPyxqwQuSmXqKtvTUt27WVWDl2Lfix9VBXzlxmDEhU7wCXKGtg=
X-Gm-Gg: ASbGncsiHvG17ndBWzM73a0CsE0QHE1LHYHV2fUR9tFOuzJqD9wlnGi1KqtyOt9TsoD
	H0J/KV0uSZSImupG77/3aAT5P2jKEtpxDQ5vaznf4m5Ct0DPDgXs49Dyu6pIwd58/SE5WLCmvs1
	80v58510sN7QQm379BuCDdq2eAi6pm8M7cJdI0fRId2OAIsbdXouQe/hj7SoHraOp3vubdx7cKX
	F34O/5bXWWmsr3qyKO2Rnnm+/8+yDMjpH0wEOTToRqlS9tzDQ6j83oCwU5MrEUrFBzsHEv4jXrY
	A0zdvmCYGpJhUgEJ22F46k5W8hpQ7mzmnop9oDZCDhN0rR2AG2ggN4S8lsNYqotK7ndNHLE6ezA
	CzpPUUOwLT9WU1zjuQi+TnCpDlcv/kFoIBEpy0O9yI++ZrgA5Ftp2C/DKwi92talBvSYE/6GXh1
	w5kR5XU1GpbaBXrsOfc1FzUoOYXbZ86ZRMNQ1/ZBIQmV2hTqhgYA5q
X-Google-Smtp-Source: AGHT+IG4Gv3cm9hV53MWodUTfGOGPmkC5Ip7TMWoRz7vtoZP8JZ7tgzPXUhPB/bP42Xqla588Cy9Yg==
X-Received: by 2002:a05:6000:2909:b0:429:d66b:507f with SMTP id ffacd0b85a97d-42b5939111dmr19492885f8f.48.1763541944528;
        Wed, 19 Nov 2025 00:45:44 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f0b894sm38132306f8f.26.2025.11.19.00.45.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 00:45:44 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v7 0/3] arm64: qcom: x1e78100-lenovo-thinkpad-t14s: add
 support for HDMI output
Date: Wed, 19 Nov 2025 09:45:39 +0100
Message-Id: <20251119-topic-x1e80100-hdmi-v7-0-2bee0e66cc1b@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALODHWkC/33SS07DMBAG4KtUXmM0fsZmxT1QF342liAuThoVV
 bk7TkEQFIvlP9Z8Y2nmhsZQUhjR0+GGSpjTmPJQQ/dwQK43wyng5GtGFKgARQme8jk5fCVBAQH
 AvX9LmFkvrLCeei1R7TyXENP1rr4ca+7TOOXycR8yk7X6vzcTDDgSbrzmDIJSz69pMCU/5nJCK
 zjTX0QDbSN0RbhzEULstLE7hG0R1UZYRZxgFiK1jsY9wjcIgzbCK6KkITwow7hxO0T8ILVJthG
 x/qS+MkK80L7bIXKDENZGZEWY0U7FToD08g+yfK2uhPdLvYPpe3/L8gmmTTMdJQIAAA==
X-Change-ID: 20250821-topic-x1e80100-hdmi-3bd5b5bd2d96
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Abel Vesa <abel.vesa@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3228;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=TXuhYGsW55IISOwAX0hINh3nofc7z+3ojcxWvdtoRek=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBpHYO1U8ojRWdv78LxWJ9eYS08dukYx1P4RMCSAkrC
 ibKx3M2JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaR2DtQAKCRB33NvayMhJ0VE9EA
 CVGIvcK2g0ddWKb0+iPh+T4WJK8x6lUVCl3zAI7fKh1LMi6c1xdHJNkWj9T9K4rA7NmvZyltEK9KWo
 bzN5+qkh5kkhGly8L3wELBfQBa8oMcFv8YjzwmYU6iqczQ2OxEkqG3bk82WUWAp6b7h8+YE5UZvhZv
 RJKp29IlxRt6awl1KOjsdERyM81F3zBm5VkdwP8PEdO2cDCY2d6K0Nbif1ihTx9TaV9GK6/qeBt5xa
 Y0auTfTeGxPyBzw8rSsUslHeS3kPPYlp0pOPfCnyP+iJu7SnLl4f/A8QJQpsri1fFETrvMbQYA3zeX
 Iu2lD4FwSdQkCXraV1gEMFN6j4ptokn2igg+SWENqbPAV6X3ypJXUgyCz9KJnTMrUOnkApW+m3OEnR
 Xy70o2HWTM9PYwhxWKHxyMH82VuA4a4iUob/60aOOZKGblGEohF2WNqB2NzmXSWjNBn7MefwPZEKSj
 br59xaVlSr32qxYllmq/3Jhr300Q8yQwn9h4K3c4HNVAymuVIEVLU6ogxIYaPEwS+E6L+dgXeBgio7
 yhZHgWMgCnrWdvusstfQbrx6gFB5Oq23GwamUoVT+aLHotWKZjOZWCvJVoT5MeyDz2sqMSb/DjPS/b
 gVbQH8vbbcfxmgc9itT2X+sX+YRc9IUG6Z5cQdbrg4Opv6fVA2viazMmtKKw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_004546_606339_262F38E1 
X-CRM114-Status: GOOD (  13.46  )
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
- 1/2 DP + 2 USB3
- 1/2/4 DP
- 2 USB3

We need be able to specify the lanes mapping to DisplayPort
and/or USB3 peripherals when not connected to a Type-C complex.

Add the documentation for data-lanes in the out endpoints amd
use those in the driver to setup the right PHY mode and
orientation.

Finally Add all the data routing in DT, disable mode switching and specify
the QMP Combo PHY should be in DP-Only mode to route the 4 lanes to
the underlying DP phy.

All dependencies were merged on -next.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v7:
- Rebased on -next, all dependencies are merged
- Link to v6: https://lore.kernel.org/r/20251013-topic-x1e80100-hdmi-v6-0-3a9c8f7506d6@linaro.org

Changes in v6:
- Switched to __free(device_node)
- Fixed to min_t, added review tags
- Link to v5: https://lore.kernel.org/r/20251006-topic-x1e80100-hdmi-v5-0-c006311d59d7@linaro.org

Changes in v5:
- Fixed bindings tab
- Add comment about exlusivity of the static lanes mapping
- Fixed the single lane phy entries
- Switched to of_property_present()
- Moved the ss2 nodes after ss1 in DT
- Link to v4: https://lore.kernel.org/r/20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org

Changes in v4:
- Add definition for single lane DP
- Fix lanes mapping for DP in bindings and driver
- Add documentation on how to interpret the data-lanes numbers
- Rewrite driver support for be simpler and split into helpers
- Rebase DT on next and drop phy.h include, and use proper mapping
- Link to v3: https://lore.kernel.org/r/20250908-topic-x1e80100-hdmi-v3-0-c53b0f2bc2fb@linaro.org

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
Neil Armstrong (3):
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Document lanes mapping when not using in USB-C complex
      phy: qcom: qmp-combo: get the USB3 & DisplayPort lanes mapping from DT
      arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s: add HDMI nodes

 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |  69 +++++++++-
 .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    |  81 ++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 142 +++++++++++++++++++--
 3 files changed, 283 insertions(+), 9 deletions(-)
---
base-commit: fe4d0dea039f2befb93f27569593ec209843b0f5
change-id: 20250821-topic-x1e80100-hdmi-3bd5b5bd2d96

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
