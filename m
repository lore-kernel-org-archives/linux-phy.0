Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E6DECA1016
	for <linux-phy@archiver.kernel.org>; Mon,  8 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gWdaXWksmeotIPGnrZDNcKXQKaZ6V3X2NiIrCu0V4JI=; b=JoIW6WVoWkySpp
	9RYV8LuNTZxT8Ecii+AGV1MzWmi4TPhOg7EAwTlnSo5i3A3g7ypHFNZkW5ILQw5QDwZ+yVfOWS4S9
	KqceX5JapCoBzv/c1YbaWrik5NRC2896Lc8oWxwVv+xB07fOKDB0IrmZHUE5MMX5jGaZC67AaT5x/
	uG60xumvfGJYgaAMB76yG9/uw4oH9pTF4xJ2DnElIZDch04jB1dEOAjH+WZfT9zyouwa/xVBd7zPJ
	xxEqRLmAOjsVp/1DVwZ60qJPkznqnrRRyyJkiGbSQcTfIvJfhqgmk9vXF8BO4+UNZeekC8ygdiWiG
	1RtxT2eOCunvi1qz5xug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvfNI-0000000139p-3VMS;
	Mon, 08 Sep 2025 17:09:53 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvbXo-0000000HEqz-2Rs1
	for linux-phy@lists.infradead.org;
	Mon, 08 Sep 2025 13:04:29 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-45de64f89a9so7512645e9.1
        for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 06:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757336667; x=1757941467; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4X5mW1qB7suLhxQR7vN67LmE2/9l2QgAFiGjCe5Ekvo=;
        b=xLki38bMe96SVKRU0aV2R9Voe7j+ZcefQPsYE2Vj4QzAYVVrQjDPqfXhvGo8DUiD4n
         ecZR7uYmEOPYtRWyDGPdFST3NdtjvHDZoCo26ya7mwE9Nv/SB9fp7FQvDw0Qepol3tE3
         0u2ML1Bnk12IqUa2nl1JKH9HhbhhblL0J2FEmI1CUH3rVwYDo1sx2d4M/C3gX/aqWEso
         AzU6ztZs3vWhTPXyLOX58sf9IMo2XuoFHzEc96M54hGyllV1JvDKlUcHSL6cRaa+Jp2A
         lgDABkJcaxehCnZERZVb1a0ejyUOFUx3SbeGfZ/AHtoHTNlu9P7xvoF0aXzzoSVKLqpo
         poRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757336667; x=1757941467;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4X5mW1qB7suLhxQR7vN67LmE2/9l2QgAFiGjCe5Ekvo=;
        b=Cluukp44Fcv9hFVfTqZ2mvbINj9GGpSTJzN4p0823jOKzMZ2bHgMVWgf9GZEhdTRjR
         yQxIqCJxecMceJlIEfT5DNDfn0EF78KvM7jrkwk3W23bByMbhY6pcEDNpkmOvjOYNV6w
         WxO64XFqBFMMsyJ/fOZu9buGknb9fnRPyBcm7ct6bEbsRftCateHGSEMWjAopyLo7yGv
         Rn8TQE3O+1a+NSjZp3XKakqQB9WQbKbotgmay9WCM/KiMdzXX5dW4V3TwOi9PXjAyqAc
         lY/6q+sZSxV6QDhvXes4BesGGfu/wvW2Bei9Z3RSzKY+Wl7d+uDuYZWQcAM9dl/E1dAl
         V2vw==
X-Forwarded-Encrypted: i=1; AJvYcCX4l3Z3QjJ6/y37nmcSrx4BS5teV9T5WW3B8ZS2Naj9lqmCbGRtk4GSmSX2oGv5i0W/xEpwVcvDbTc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxU0pt5wMHmuL75hA9funIKJ3wRWeS2xx6fdxrXaLoQjgTIkR+Q
	igy9GCVEAab/7GLA0dxDDFEnav14MrOzNO+HcTkWXcFfVtTR53NInecN4E5LGXYYO3E=
X-Gm-Gg: ASbGncuQbCkYJnuAbwys2rwXDq85XZwoBEOLYPKy7fDFLyekUMHQHNXBBqTzaVJiO/K
	Brxb1RM2290sBKkPAc6eNGuHfOzyCFL0oad4LYDwrq9G2AGEJY5EutEwpms0v5GFxdpAR+ogq3f
	oWSakOTXfogz8VSV2S9agnBMjc60uiyv04ljQOs/MSOpz6Fkg9xrVyQji21a3tmNbv8xn9+S5/f
	tHx0nFQkxNKv9v1qBoVHQxQX2ryT0U2mGFNBdG5fPsx+Ix4Kp22eU2UlTl2G1Yq6zcdt1Avain7
	qFMN3LbPT231kA3e6FOfVaDwzcymVXIV2+hLx2eryP8w/PTxKUoppZHLmVQYbX5biNWQ5rIUgLJ
	M6taQsxVDQFV0hZN6GzXZxkiquI1EzgvqTGFQrknw+gdssJaTTcrHDnxpBXTcOHwJ
X-Google-Smtp-Source: AGHT+IEGJNo8lvHD3KT1nd3z0SZyukocp+3vpAes2A8i8fYAVWbJ1r9NqWQEV9vNhvmGaNyomqk4OQ==
X-Received: by 2002:a05:600c:3b1d:b0:45b:8ac2:9761 with SMTP id 5b1f17b1804b1-45dde20e5c0mr71641885e9.13.1757336666930;
        Mon, 08 Sep 2025 06:04:26 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45dd6891d23sm145632475e9.4.2025.09.08.06.04.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 06:04:26 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 08 Sep 2025 15:04:19 +0200
Subject: [PATCH v3 2/5] drm/bridge: simple: add Realtek RTD2171 DP-to-HDMI
 bridge
MIME-Version: 1.0
Message-Id: <20250908-topic-x1e80100-hdmi-v3-2-c53b0f2bc2fb@linaro.org>
References: <20250908-topic-x1e80100-hdmi-v3-0-c53b0f2bc2fb@linaro.org>
In-Reply-To: <20250908-topic-x1e80100-hdmi-v3-0-c53b0f2bc2fb@linaro.org>
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
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1010;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=57wYQRJRg4ExArTqXm5cpG0+xrX0pV4cmaNg44EIRGY=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBovtRWQc6EqvDQUILTPG2XMP0l4jGNYemvl7JX0cwS
 ZQL48r6JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaL7UVgAKCRB33NvayMhJ0bWxD/
 9GOARmjbH2RhQfFuwESyv5NkmWCcN/CI2i9DNfY/SfhlryWRHAlztPNcY3o93MW3GOANYV7L0wAhTB
 C7qiw4uh10jFrOkhxeHewFGc55BdptV0ZuALp9fKoKpUSUvYU1rQ+jdgm0TJmWXoJUkrqbchBbMA4E
 pQsPkfWINXsZ3Km5s0bKu+j6e/2GfqhtLXnW07cjOEUfdr2MMNYK4JHrhU0iXSTtQMYh4txKmi2NkJ
 59htO8o93xz9hWLFoZWKKEyjm7SpZRZbwcwKN0Gfen/vSduFv/FNZYd5eDMbYwoqh7vSM1/pRhk5vg
 pnBHMDL+yg6zAvfBNvoSFPjqqTWlX8NySuam9JE1tluCspNls9s65c+U7eK+OKYvx/P5w3NGASQK66
 dNOGUz5/3160k52iVHpxgPdZMmVffGChGKctVoUbda98pR80nm2yEKmre/ky3IHog4ZqTBcIs2TU9u
 i2XqCudzV1iqvnxR70jMiGjVFp4yDTwq8ClGhFnkK6sfJwLfvK3wPjwYYhR5u/FSJdYmxyILYJgsBN
 cFvByrkVdDKR44TOtXhSXe7K11w2/z2u7pzCGzqrS8zpHXb/0BAqBpbkGDRPE3CT91hFnFlzd/6NCd
 lxp4tzknBJLQus3yJHTmE7pMiwLC8t+TXPiw+c1Pl4lu1eKClLhmFD8eYKCQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_060428_623953_F1D79A0F 
X-CRM114-Status: GOOD (  10.42  )
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

Add support for the transparent Realtek RTD2171 DP-to-HDMI bridge.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/gpu/drm/bridge/simple-bridge.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/bridge/simple-bridge.c b/drivers/gpu/drm/bridge/simple-bridge.c
index 1f16d568bcc4e0fb56c763244389e6fecbcb2231..e4d0bc2200f8632bcc883102c89c270a17c68d0c 100644
--- a/drivers/gpu/drm/bridge/simple-bridge.c
+++ b/drivers/gpu/drm/bridge/simple-bridge.c
@@ -266,6 +266,11 @@ static const struct of_device_id simple_bridge_match[] = {
 		.data = &(const struct simple_bridge_info) {
 			.connector_type = DRM_MODE_CONNECTOR_HDMIA,
 		},
+	}, {
+		.compatible = "realtek,rtd2171",
+		.data = &(const struct simple_bridge_info) {
+			.connector_type = DRM_MODE_CONNECTOR_HDMIA,
+		},
 	}, {
 		.compatible = "ti,opa362",
 		.data = &(const struct simple_bridge_info) {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
