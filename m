Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEF9DCAC585
	for <linux-phy@archiver.kernel.org>; Mon,  8 Sep 2025 17:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WFEeie4pRt5dEtaqhV1GhvP5zLP+6k2MTB4VV7nFokc=; b=QHjmutZuMKW6HM
	OsQyoTFcodeYAhFcMfFwqmMv7fah3ZMg2rjvSTFuGoEDnaqAwKXDtJHMGHGf9Gz7E3by4XXUuCvDK
	+1fFV6NlR92UyrIxAwdPyB37z64QXc1sbLn83FU7fmWDCkU1kl/mk+O/hvo7dxsxombTLqStEoIiW
	QLh6qlp9GlYyjbaE9tP+yABNDCZqOy3kEOwq9L0dsQHDFE5KktDF69nYYFYJ2vVfL7vEXQAwKRil3
	nW4D03rdNrv+AXRsB4YzjM+0lphLKsdtWfxUav5Tuy/EcwGsCyipNqTnbKvs8a4XCOoWWi3ry6eSU
	Hu/VkvZcLCUE2mSNvvvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvfNI-00000001394-26zg;
	Mon, 08 Sep 2025 17:09:52 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvbXn-0000000HEqN-2fk2
	for linux-phy@lists.infradead.org;
	Mon, 08 Sep 2025 13:04:28 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-45de1e6d76fso14171415e9.2
        for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 06:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757336666; x=1757941466; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2GDdn26faX8+Rd19RRlHwI66hY8ZBEzdxwGwtCXn4n8=;
        b=GN3A27Wt5iAAl3p7MWWTtenx/cNk0LTAe1fV68QXByIVQ4y6izqKWjw3vBr+wUYLew
         bla4ZdAW5ClBB9cNL7YvUtezLMxnVxh4UhRnEbY7sPEUFrQQWzFgLZ5q/N48up0YMONi
         8HJaNmUCxOm3JcSFEf35DfhMwJodyjTet5IgFHa2/1Ai6S9zNEdRnJrPofCCeuN1Dhrn
         31DsL8WdRejY9qyF4SQCvXsfOuNI7PLK6tBw8eeqP04U6EPj3SbNTBEql1TzPqVdEfws
         8lAaYGGeJYGivbOf9QsBtMtG2zFqgdwMV0K/hoMB4piBGnwmKNina4guXDJzEFOZr2jx
         pjaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757336666; x=1757941466;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2GDdn26faX8+Rd19RRlHwI66hY8ZBEzdxwGwtCXn4n8=;
        b=pYesZbtQKBICOfvDkD8PGf/yLABpZzVQX71qg1p/N0sLkYn8IGsisrpVEkHiI5l5cf
         hKkUtGDLEoTXyz1Dp0MXc2wteM9NYWxbZ5S9CufM6E3U4kFK8PW4LLG/SMMKE/IbxulR
         Lh9d5iDMBrp7ZZnEb2o+vGt4OdIayBLprViVphx3y8KKvAwYsj0R7R3WjhRXJKAVY7wC
         oxRWqb+J1tPkygUnIIU4PY5qffAY4WsUL6PsCPp0LPJ2lVoSImbobF3G06B9lj7cgFuO
         yeSugZ2P5lx6LOTpILoGoPw8JAh2fItp+NCsD9arkI1Buu9vkiBS8iMEQelLmQ/iWz1P
         E7og==
X-Forwarded-Encrypted: i=1; AJvYcCXfPFAhl53SlQBVeA9/zXohrqBkdePA+7Gg4BrD05JI3XxpatDZLImct7N+R35TaKtu4WOxACmudDw=@lists.infradead.org
X-Gm-Message-State: AOJu0YyHj7RKhtyQ2WDblWybouO9Z0sUfe25tL0dE6cX8d+GC3exvlud
	CqIlIKHQmndd7xa59thiwIzYMEcCbKGhAhMC1U1GDbHv1ll3QLzr6wH/odMUMb5vzB0=
X-Gm-Gg: ASbGncuq50QP7VC6I3RlibECb5bvqrjPr2R9utmYzhTaHzi6C0yGcUrz2J6dX6I8DxE
	zfiZBVfeH1H8ZOZ4zxSnld7A6pi4aW/cAOqVe7cq9//1Iv7ZjgolV/1TlPD3EPb5/bcGwquyS0O
	XG4puoMo6x9zGMylz0QmrDHmBlWnf08ANSkh5L2ztG3XzJ7GNB16awftkU2nfKR4ar7YNNUUt/v
	v9ShTIvJ6vK36Lk8GyGh8EvwSA8BYnOiVPAad9UPysuTGSocx7IyK8SfD7Au1ZItWiDN5jRor2U
	GzzlbbUZR/qY2qvQzvD/3S3mnqTIaTocKh4YQ/UkSZi3WsKaFFA36hCudCUckzH7WptfLpCZ/Lo
	H3vSe2oAoXs5RgFL8PDadpplNNVJLeCz0t4DSXdQL7oJADK7jzRAHeA==
X-Google-Smtp-Source: AGHT+IE+QQMsvXfniwarXtFZkCcmmT2rZk6Fee10DBHIU433hV2b4Xz5UNo3Gvh1D6s/nDMeM1UWiQ==
X-Received: by 2002:a05:600c:4f03:b0:45d:e54b:fa29 with SMTP id 5b1f17b1804b1-45de8e21be6mr18156375e9.14.1757336665980;
        Mon, 08 Sep 2025 06:04:25 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45dd6891d23sm145632475e9.4.2025.09.08.06.04.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 06:04:25 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 08 Sep 2025 15:04:18 +0200
Subject: [PATCH v3 1/5] dt-bindings: display: bridge: simple: document the
 Realtek RTD2171 DP-to-HDMI bridge
MIME-Version: 1.0
Message-Id: <20250908-topic-x1e80100-hdmi-v3-1-c53b0f2bc2fb@linaro.org>
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
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1066;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=z7PAuGtYNvNlORz36aPmSnF79TimixozQax/x4u5xJA=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBovtRV0EWZ3GTngV+VZoqNOfxTMbRfZ7L5uMzyt+BQ
 Gcxw7xWJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaL7UVQAKCRB33NvayMhJ0bWGD/
 9FmFWdexA2fU+CtWIWKbFIwMNtPEpiwf9clzEvPTLk1asoldTXFdDdKzIqNt2UImqiqUFDoOcmXw9t
 gIsk4GdSeV+bFCJgNSDKS+ThVbkQ27MBqv1iG8vZLattjMV4QG6Gc3XTPr5CDWOzg1p4BcXzKz5m5T
 Z73ct5hdeSi9ZQEaoehnuS3RC2+0P1MwQtKOR9mvUb/Nv6PcNjr6QR7ITS6hNczvmuPJQlF7iWuW5p
 Wu+KIBDIiMOwtM9ShXzTLo5gRbY9Q3VsC/LXusa6s2qolctz4pQLoiE61Gn8RxbMpQA2Gl5DPwrloU
 0Nu1bbUVlgKrGwSEQ7YN/MqzWV0nN/8su7VChcF26g6yhxcTfibRYw7O3+bOzob6IAQz2JMco8dLTS
 knda27GBDE3ODLhBmsMBvfdPcDIVrdunRQzXUY0wbp0lPiI2FguqNxUUQHEEIu+vWyC4uEEYjDhw0W
 3deHkxjR5FZdpZNuKxBCkVSMhXGiZ7NBe/eY4LP62g6fuCjtLqkMA9F/CCq3RlV1scYO9UMI/a1RMW
 0JaH5uUXxE91HoAeVxZAv+v85t7ibs02J9/7oR+FAcLYp51VBgFuhV4TEEn+4jHhKJLKU/pKJaa9jj
 4Ozwu1O+JQcG7aMdmLl9jqU/yt1XqxL0uKfgeLrHYxygloky0Zp2auM7SE1A==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_060427_680830_78F7B4D7 
X-CRM114-Status: UNSURE (   8.33  )
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

The Realtek RTD2171 chipset is a transparent DisplayPort 1.4 to
HDMI 2.0 bridge.

This chipset is usually found in USB-C To HDMI Adapters and Docks,
or laptops to provide HDMI display output.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
index 421f99ca42d9b75ba1963493d36fc89fa9d8252c..9ef587d4650602699efac634c5466eb2e8aafecd 100644
--- a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
@@ -29,6 +29,7 @@ properties:
           - adi,adv7123
           - dumb-vga-dac
           - radxa,ra620
+          - realtek,rtd2171
           - ti,opa362
           - ti,ths8134
           - ti,ths8135

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
