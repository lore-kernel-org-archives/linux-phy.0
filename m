Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99A49C77B75
	for <linux-phy@archiver.kernel.org>; Fri, 12 May 2023 13:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wP50jbY2Ts/q0avNT/x3Y9G7EFwFY3CFlLypjGOO6vc=; b=ZynRCIxT8Bd2Sv
	QGnaDHfytCqnpgxm4XlhekTEmNy6kXiATFyU/WfzvIFYLWeZ1bQhIQCGpU6IG7uxDtiFlIPnwPXkx
	m+j25sJo5NfxRA6ZFsjGQtmEJOrc8K6JFICEma0K3W645VPWbYbW4/ze2QLD2Tj/GGokwDYd7LDE4
	kR7bbiN3BhpNkER3jwHOHHE4lot88WQsgvI5XmisvU/+ls+rF90Hr6eqWJqCmVMgYIIAuHuFbSCNb
	hg7xTov0CVhPW4kg8jl/yQ+9VFEyR3HIzqbjQNW1x3tZaPVTe2KbI7+3qdwYQh2zLhkIvDBgLsylY
	+aJviX+2XLe0exhrzXvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxT0V-00C2yG-0d;
	Fri, 12 May 2023 13:40:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxT0T-00C2w4-1M
	for linux-phy@bombadil.infradead.org;
	Fri, 12 May 2023 13:40:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=Z2u4iA556Q3YLEzTDMSIWMB9153khMSJN9i27z6trtw=; b=arOENSgAh5wpP0hAG491gqMWPi
	7vAFYW6tlq/eSFmnO6tM+jQzQLebVtEeKEUkKbQvsVeXn8omtLZmAdy+R7UMOL6mNGVB3jD9S2+VR
	UYgtAKS4XzN4hLsCbrOy70LaS2RwxIqM+H17241t+2C7slzMkWqVbX6D01wtMt7AsuWDlFgX3nYdP
	Nls30GqT5iZ9JgbZ3rWt5BdPaAXqkmB1V2izTDmuRU0k/94rcmKtqjGr1UJvPqWOJuZyaEj4qy2Sd
	Qsjm/zF9HbwF24b6pDCZ2Gd271qdnu/iyXH6AXgQpcowva7fgx8gMlphWVTtkeDbFV8MtkUldy5jX
	fo+LueJg==;
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxSZ8-0099Of-0o
	for linux-phy@lists.infradead.org;
	Fri, 12 May 2023 13:12:13 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-3f315712406so321519945e9.0
        for <linux-phy@lists.infradead.org>; Fri, 12 May 2023 06:12:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683897120; x=1686489120;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z2u4iA556Q3YLEzTDMSIWMB9153khMSJN9i27z6trtw=;
        b=UIqCieSWYin+oz7auJGatVSLrMXRlfI0zD77cvuETRm9Sek6lJ8Liof7+r3WSkCAeZ
         cmkN0Pknbc+9VD0MGtDqwD5ykfUdJ1+U2MTrceMwfZvj4X63vrUoBAkLTbsPS5QT2r+q
         Yf0DcpGJzqqVuWyl9Gsw7Jpzm+t8jzan5aZBkrdVLZUDZUH8kzchGM15V9DKz9nTHtTE
         wtTDqAZvbDrYjtXG0lGh6YA28042KBdSrCbQ60U0YpawPAwtjLmUkXJkW1wEHAdsrQH1
         7BAMPCbYSckLhcD7TlmXVCcdq3ePnLNK7w/k5/OCPQpcyFYMFiRro20FLqw4rE28r3jJ
         Fd1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683897120; x=1686489120;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z2u4iA556Q3YLEzTDMSIWMB9153khMSJN9i27z6trtw=;
        b=S2XWZK26AnBslCYGrR0HJkVO+bpcL6C93IRx5jh/p6Jtdbm+3BIbptgrNvGABDMZRa
         9T0F0nkLUMSZpLc0g5CCKyjvXADs5GN4UBq+SDlpY1LFMFUFg8QVRycoiJNDjOSJfWas
         Fu4rJfY6/Vw+K/Oq8mXO4UK+euAwIEu5hEJJv/LBhMJDX1UlGf1OoI/xP0/glZ8i1PBX
         1jQp4ncDY7vbSKGCVTm0LGYztCf37hVLBj7Glva/bJgERBWKV6CWW2BmoHp6DMuScMuN
         gRVFdmie+mpD2c62yTzQ7QD09zOOfmMO5DXbzKCYFBhdo12BtXZxLkJruXRpJAWSsKBC
         DDLA==
X-Gm-Message-State: AC+VfDxeUa1wdOArM0cQFr4Yo0klI6lx1kfBRybJGm8ZVzJYQrm2D9nw
	xSWc0KNXOsjdVy5LfOjHO12P9Q==
X-Google-Smtp-Source: ACHHUZ4Lpk6BMX1cUJbI+yBItJVI1j+yCCvXCZzw7+9gNnPJg3syKo8+U4tcTOu7JpVmH1Zi5RRfmA==
X-Received: by 2002:a7b:cb93:0:b0:3f4:2374:3511 with SMTP id m19-20020a7bcb93000000b003f423743511mr13961936wmi.10.1683897119822;
        Fri, 12 May 2023 06:11:59 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id v10-20020a5d610a000000b0030647449730sm23461965wrt.74.2023.05.12.06.11.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 May 2023 06:11:59 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 12 May 2023 15:11:37 +0200
Subject: [PATCH v4 06/13] drm/meson: fix unbind path if HDMI fails to bind
MIME-Version: 1.0
Message-Id: <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v4-6-2592c29ea263@linaro.org>
References: <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v4-0-2592c29ea263@linaro.org>
In-Reply-To: <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v4-0-2592c29ea263@linaro.org>
To: Jerome Brunet <jbrunet@baylibre.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Sam Ravnborg <sam@ravnborg.org>
Cc: Nicolas Belin <nbelin@baylibre.com>, linux-amlogic@lists.infradead.org, 
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2139;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=wXntKS2MMfbFGVJHEKvTbL5c60ujsPIrzZFwFPZkQn0=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBkXjsUe2Bl34Y1X3oYbjtzCiQcgLvemuSQ6t+LekDO
 xNWliTuJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZF47FAAKCRB33NvayMhJ0SyLEA
 CJbVHW7/fL6lQG5TdpE4H3PQA+IisR16XaLpnTihPM0NgB8lHdrDxpzS3OHp0RyypkLUzfWqjb45Ns
 iuTpf4zgdW9Diou+fZuBOgOdhrKKRF7F4MNzCU1C8HSPTv7ZxhMvOpHLps5eXd6GwCd/N9Y7QMWnRn
 sumQ/pV3R+yl3knCPdKvCbNjR2dHMEbfQq9MvPWo45MwXSXGnV0jXmX0ZbXiC08vLPBQDnKlse4VeS
 8+hDOW8c/NG7xOpnVLO51YWrQblNWBl7ZqeVVX85DKUFkQ9/L9G9BrAy9WP395oAe6AhBWzh8ilUIS
 Zz3amS2N9WWigj3k/1a+RXLzlizOuoRXTZT144Q/y3+caNLnzbwP3Uag41YtLmxGuw4wqc1n/qSBCl
 bE960wuDbE2VaqoTKiH/bLCqUCwC7ytpMOgRC2r6jlbduGQwmyZf+LUStJx9KHVt6XAqycBfjoilXU
 Lx3QgqtqVFEQOMWwhIypsE1/cY8Pg09299hheyNtQ225CaQGHIQN//dq3KDp/EBptUHa0FlKuWiaY3
 qD7iobfzR+Cm1nz1gz0Tlfm427bSmxQTySUahYcW0fztQgCCuFkbmC5dKJrpawjcnDDNYMqPaLjngt
 lIy0v4JZ+3OiiXMWgkoYdtDoVkXxxtF2ydKv6pYykjslmWkIIG2QMovNrcrQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_141210_380295_E6DA1AED 
X-CRM114-Status: GOOD (  11.29  )
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

If the case the HDMI controller fails to bind, we try to unbind
all components before calling drm_dev_put() which makes drm_bridge_detach()
crash because unbinding the HDMI controller frees the bridge memory.

The solution is the unbind all components at the end like in the remove
path.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/gpu/drm/meson/meson_drv.c | 23 ++++++++++++++---------
 1 file changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_drv.c b/drivers/gpu/drm/meson/meson_drv.c
index bb72fda9106d..a30d61f1c817 100644
--- a/drivers/gpu/drm/meson/meson_drv.c
+++ b/drivers/gpu/drm/meson/meson_drv.c
@@ -316,32 +316,34 @@ static int meson_drv_bind_master(struct device *dev, bool has_components)
 		goto exit_afbcd;
 
 	if (has_components) {
-		ret = component_bind_all(drm->dev, drm);
+		ret = component_bind_all(dev, drm);
 		if (ret) {
 			dev_err(drm->dev, "Couldn't bind all components\n");
+			/* Do not try to unbind */
+			has_components = false;
 			goto exit_afbcd;
 		}
 	}
 
 	ret = meson_encoder_hdmi_init(priv);
 	if (ret)
-		goto unbind_all;
+		goto exit_afbcd;
 
 	ret = meson_plane_create(priv);
 	if (ret)
-		goto unbind_all;
+		goto exit_afbcd;
 
 	ret = meson_overlay_create(priv);
 	if (ret)
-		goto unbind_all;
+		goto exit_afbcd;
 
 	ret = meson_crtc_create(priv);
 	if (ret)
-		goto unbind_all;
+		goto exit_afbcd;
 
 	ret = request_irq(priv->vsync_irq, meson_irq, 0, drm->driver->name, drm);
 	if (ret)
-		goto unbind_all;
+		goto exit_afbcd;
 
 	drm_mode_config_reset(drm);
 
@@ -359,15 +361,18 @@ static int meson_drv_bind_master(struct device *dev, bool has_components)
 
 uninstall_irq:
 	free_irq(priv->vsync_irq, drm);
-unbind_all:
-	if (has_components)
-		component_unbind_all(drm->dev, drm);
 exit_afbcd:
 	if (priv->afbcd.ops)
 		priv->afbcd.ops->exit(priv);
 free_drm:
 	drm_dev_put(drm);
 
+	meson_encoder_hdmi_remove(priv);
+	meson_encoder_cvbs_remove(priv);
+
+	if (has_components)
+		component_unbind_all(dev, drm);
+
 	return ret;
 }
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
