Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A5B5C25B74
	for <linux-phy@archiver.kernel.org>; Mon, 27 May 2024 08:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=brN6VKv2d3xM8fvf04MsNlpRjtv8a6jNBADu2BxviWk=; b=MTlBDEurrIT7C2
	A588chPT3BHWeflugELCDiB6xmiGdBxT3hReJb0yzpUMYwPVVTdfe4MFOLMz82J2mH+fuqSikovYg
	Qs/KLBwrUjbmnM5gclGGZkVM/d/c08fbq6rB7K+4kW6m+OTHBw/8xUIsOYf74RMV9v3ioq+lRvOYg
	u+nedF10SRjXB2sSaL3mSTUxRVjNEmxl7TprdgBUlgL8iJXY1lv1MWbnLSRhBV04x2RyHtNd2/Yem
	5EvF1jRnKME4gG8M5mEjpYJ7UcSTge1urWNDDzQOiW81kIgCkkBVufh13LhVkM4WreUOke5ipy532
	kBbzBWJbbl2H2ow9fwkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBVwO-0000000EHHX-3vmD;
	Mon, 27 May 2024 08:42:48 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBVwL-0000000EHF8-1Qow
	for linux-phy@lists.infradead.org;
	Mon, 27 May 2024 08:42:46 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-35507e3a5deso1539960f8f.1
        for <linux-phy@lists.infradead.org>; Mon, 27 May 2024 01:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716799362; x=1717404162; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=v6Gc+kT2JekTX9NL/YClyq4Cu4TmQMdt+1e1Ze3dy8w=;
        b=tVolXSwTyLqOxpOyq8H52c7J5gSwLJrvFuIF2ayrtBbz6UjU8rl4/RafuPZbkVWgFB
         UfDmZPUUWZW1yw2rBly17/dk+cpIxK6dRonE5wOHs9lEXVr2YdqiHpyGr768HhfX7Nb9
         8hk/jhHolVscmMJgoC9dMQEq+nx/p8tX7QTw0zu7qBQZR5iCHAKX16WfHOSlXW4LHK3W
         pO3UZGfXZY/TCZKFWB/DA9BzpR0aJs4S0rFbl6EYNle61WoE2cYOMkWzGRdJSKCyCak2
         xOwL3uQ2Fz+zKyWZBvLfyR/XtLOLDFGT5Fq5I8xp9l5aHzXKzaSYUGxkf6GO7cx2go+5
         HGwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716799362; x=1717404162;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v6Gc+kT2JekTX9NL/YClyq4Cu4TmQMdt+1e1Ze3dy8w=;
        b=imydZH6cItDmLC5Tgu8mo+xQsoU8tNfe7ciJPFKZHpwD7sJKiCos7La/sAcglW0ren
         2rw1789enIYwnuTjAPOIc/+maeSIDkroNEsFNvMqjCZxQRfaNw2yz0YePja2TdDRnOYT
         eNSclj1iw+ueR7px/UrtHMcsI1m3VPQntMFCuDU1D+ZlNO0OToiHoohI5SKW8DMGPLUD
         MRbeabf3Ov8l/8+OAMHm6aCal0AsPvp5C+PCQCpNOpYjaqFF+/fpb5cf/bFeMxh1Wllc
         dIyiRjM1aqc8Zv4Cl0Y31JTdBAyBRlx/Fd/v9ThMeOKxqyqv4MQ1nMyb7aDdNLUsM0/w
         8siw==
X-Forwarded-Encrypted: i=1; AJvYcCWIr8N6HtUO/j2PServwNdfviL2mXuNpAR9Bn0oBFd2Um9MHvfsEXeWTobW6ckQ07y8i5k9P+aIzWncj9/VxDVM/uoPjID+k1sKBmYQ+g==
X-Gm-Message-State: AOJu0YxaFwcGbjNSP8p4Nt8c9hAr2OHXqQaL+IC1gyc70TVxR7DII4V3
	V8MHYk+9gO7D1w6xyv9egLuaYL6A/nXJ4aB2noifn5lZRapWm3ZDKT/kD1xKroQ=
X-Google-Smtp-Source: AGHT+IE/gbYd8CmEJe1Fnu3+bm4ciMI00a+mz01IIfc82xZMwUel0Jl18pHTsHxDsU+h61BBkMmsJA==
X-Received: by 2002:adf:b608:0:b0:35a:62e3:710d with SMTP id ffacd0b85a97d-35a62e37412mr160188f8f.28.1716799362005;
        Mon, 27 May 2024 01:42:42 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3558889fb57sm8447292f8f.114.2024.05.27.01.42.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 01:42:41 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v2 0/7] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
Date: Mon, 27 May 2024 10:42:32 +0200
Message-Id: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAHhHVGYC/52NQQ6CMBBFr0K6dkw7QARX3sOwKHWESSxt2kIgh
 LtbOYL5q/cX7+0iUmCK4l7sItDCkd2UAS+FMKOeBgJ+ZRYosZKILSTn2UC0zVpLmH1MgbQFP25
 gnO0dpM2TATuvUKq+xjxVmlZknw/05vVsPbvMI8fkwnamF/V7/6ksCiTIG2GlsVRNJR8fnnRwV
 xcG0R3H8QUlPzwb4wAAAA==
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3510;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=ShNumuEqHFtQaXqkFlIDAFs1IqCQ3du3nnDnxol1h5Y=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmVEd7QtwNlGO1CbXCgSWwpHXk0bJO6vEQQKIXjTdM
 1vXDDTyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZlRHewAKCRB33NvayMhJ0TpDEA
 CFHOekFof52PWcrjj7sU0m2q+u0kpEdqyx08ZwgvQTTeUyuRRsfrzZoGLTrqjDhdlOgIWK/hZJmY4W
 mCo0btwkv0j8MSKCrRNKWwFq9/bwj6xF3/lXqFl4Y05lxNt8ai4VS0rmz/qzIZK24GggZ6XvGoiFMr
 xwRw8h95wjra1PqrTXnCpfdNfYH4sO6Fr7kmzgno7K/KCOUEzvbQFBAOTxQGwJMNYO7iNxfDkOfmQ4
 OuW+wWa5HgopQZ3kcbWAr/jRRMIHLkD4xVQyypp0vRvu9ONd5FWG3WVc/xve9Syl4g+wYghuKhPYPg
 p5ZqVVQSTzIe9pgrI+wUls9iNZZw3URiHRaGgMo/2RzDQ+2bR1mqh+YGzChdb2jjklL6wOXcLBY9l9
 ex+X398Sg62iAUWjrakX6p9X4h9UY2BulA4+RiUYcsJc8UJo0ANzfyYcpAnx2MROcNihs2jRJ16Ttc
 PJrjH/bt9WsPDO3M9Oj8Ce/0/5uPdNgLQtXe+i9IxQVMAJwCpXyoEZGVEa/q/x3mPRWvbBbQelUvXD
 qa7DJBh/Diaj9BYCxUzzgmB+1N7IAwOoyybp8RU0SUCWlYi+1ys43B080BpY407Dg7OQ9FH2dYIpn3
 4tfC9PWINs21ng9xOi+DYlQjjtVj8UujKJi6FxnderPp+ogIIv9DZ5k0ngBg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_014245_473454_68E7F96F 
X-CRM114-Status: GOOD (  11.66  )
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

This patchset depends on [1] to allow broadcasting the type-c mode
to the PHY, otherwise the PHY will keep the combo state while the
retimer would setup the 4 lanes in DP mode.

[1] https://lore.kernel.org/all/20240527-topic-sm8x50-upstream-retimer-broadcast-mode-v1-0-79ec91381aba@linaro.org/

To: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

Changes in v2:
- Reference usb-switch.yaml in bindings patch
- Fix switch/case indenting
- Check svid for USB_TYPEC_DP_SID
- Fix X13s patch subject
- Update SM8650 patch to enable 4 lanes on HDK aswell
- Link to v1: https://lore.kernel.org/r/20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org

---
Neil Armstrong (7):
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Reference usb-switch.yaml to allow mode-switch
      phy: qcom: qmp-combo: store DP phy power state
      phy: qcom: qmp-combo: introduce QPHY_MODE
      phy: qcom: qmp-combo: register a typec mux to change the QPHY_MODE
      arm64: dts: qcom-sm8550: allow 4 lanes for DisplayPort and enable QMP PHY mode-switch
      arm64: dts: qcom-sm8650: allow 4 lanes for DisplayPort and enable QMP PHY mode-switch
      arm64: dts: qcom: sc8280xp-lenovo-thinkpad-x13: allow 4 lanes for DisplayPort and enable QMP PHY mode-switch

 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |   7 +-
 .../dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts     |   6 +-
 arch/arm64/boot/dts/qcom/sm8550-hdk.dts            |   3 +-
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts            |   3 +-
 arch/arm64/boot/dts/qcom/sm8650-hdk.dts            |   3 +-
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts            |   3 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 169 +++++++++++++++++++--
 7 files changed, 174 insertions(+), 20 deletions(-)
---
base-commit: d4eef8b2e18d3e4d2343fb3bb975f8ac4522129a
change-id: 20240229-topic-sm8x50-upstream-phy-combo-typec-mux-31b5252513c9

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
