Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71563C4828D
	for <linux-phy@archiver.kernel.org>; Mon,  5 Feb 2024 11:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nOHN848YDEAK4+4NepGiqR4srSvg9S2nyRYwBVMS0N0=; b=N87uARhp+RE2WB
	1b9y2OWuDmbZ565rtsV7uaG01ny030OTDFrhFcQdgI64cUW2JrsDvV6ZRn3PrnpLpA8Fafa+EPz1Q
	l/aKVGrzbB27QOoLvqemZhr462eBfjgoc1VN2p08iyCnlwIVMyMGQbnS5epWAgvpuZabxql0QIMJG
	PlQZ/9RDzMvid+a2+CoX+jbcFoFbA086NBlGS99dFX4XFT7/wWno1YE0asBLsfxvZg5VMUrkukect
	lpp+JMCu3anR1nLNQyaU/JFZtccmlc3cBwg0nPipZS40he+319i0DR5IyF4UFk2QRer9nQ2T0FR7b
	MQmMv8+fmv/MawDtPMAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWx0R-00000002xoL-0cPH;
	Mon, 05 Feb 2024 11:19:19 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWx0O-00000002xmR-1JJz
	for linux-phy@lists.infradead.org;
	Mon, 05 Feb 2024 11:19:18 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-5111c7d40deso7038916e87.1
        for <linux-phy@lists.infradead.org>; Mon, 05 Feb 2024 03:19:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707131953; x=1707736753; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xWrtUvWSlugsoEEt7fKRu1nsL3urHay24xs1A+5SB/A=;
        b=liU3PGvDrPTQDYASwrHaHjJqyo2FFTK3DD96tYZQeBviqAw5+2ZgkJFBwAkUU7XaDW
         vP7FLc7rIUFAP0bPu/3Bog+wK+1l/ApJQI2j29jUDykKvXLbClji1bn5hBlZ/HY+BYZo
         EHjoKbCCc8h8KmDoT3kBLnyQGpVEesEjfZET2NrFSG3onoORrS2onylu1WDgbAbcmjxu
         77T8YgHM8iRXYMV4Z7Wyh7NrPoAMBO36kkhFgw7QvAzdC6OqP3Ykj9cIBQwtj50DBzJT
         2HmRC2bhq6iVUb9i4SMUOMCSW66NNE2AjtnPewlTc26NQUkOxf+WQyV2LkPCoI/ZKJqW
         /5/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707131953; x=1707736753;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xWrtUvWSlugsoEEt7fKRu1nsL3urHay24xs1A+5SB/A=;
        b=GnVB8iPuLngV+Yvh9ntJOFCFvOk+J/1m3j76v8z18tcr80H+lxgE1X7c6OZ/XC7h2L
         PSL4zUHhlOFQ3VAbwyKh1rV3pgqzb5R2iV0/+xRPT/YdbjOg+zH+BMo/eqdm34gXXX6E
         0lcN1XDxKZTAJ0/oj0Qy+4XM3ftaxut4NLh8x+z2P9ZtvCaH8xYZ3nUCafKED8hXYi4H
         IZqyl9sL0otiRiEcpSB989KtIiV7/ff+AJVxpjtkB9QCHZEVqZ650MGJRoa8d+XiO5S9
         x0qVLFAQkxWKJS81lMxZ7/s3vwkr2kL/O7Vwx8y12iEO2GyTNFp3jFrLNlrHwdbQi6bv
         hDRQ==
X-Gm-Message-State: AOJu0YztPGAD7/wMBueZG02T8hAIGnRv34ylEOProTOvpGrluSJC2pPO
	ocieg8wK8voL0/Pferjf98q8KhNEI6AKCuWEd8Vxwn7JPmN7jN7268YIoxKhXnA=
X-Google-Smtp-Source: AGHT+IFzoCBC7kOvJb/mA4P4aZ5p0ddHh0/TlGGBDTtCoNFLdQMCzEB3AU9o7+iQtSFc1Nkg3MXakg==
X-Received: by 2002:a05:6512:2805:b0:511:5482:398b with SMTP id cf5-20020a056512280500b005115482398bmr789853lfb.15.1707131953432;
        Mon, 05 Feb 2024 03:19:13 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCWsZc7N4uU5lXjNhfpD0pOUfSS4rEtAlUgSBgg3zJgJnXyc8Gjfy+nJ+crVArYn75GqDI5nHUvIY1kDIoAP49aXAmES5XcadzZdz3C0QmDxhPkZKzu5dPo2NHqLywTYZ5ByppsaLtzjwHih7DQhZjXpsSS3NBSjzPeCwdWpolBhJIjw1WpLzsKU2vQdKghpJaeX3R+Y7FU97enUyk77WJo2sYn0+ifW1SyMwkB7KqoGfSpG2XQFhvMF/OcewMqAJfScwqgKz1jPgdETPa7KGbQonbMPJIBV/wMKBb4PXMHPrIrG9hggpTGlTcQka6mlY+C7Eo9vwJrq6RsL8+ayycQehf3wFAky7HK2WffBCwFre4l+EeSmuIqxtBBdFLEjC0g3TL4uiqKyhtuFhy4f11HxdVWwJHDA6/gBD//Mi0IEiQx40Jn1k/gaXlyRoKx4m2qv2aahzmalRklM3/QOr7BiQkqUpRxTUcsIRjgKkTBI7+NJNzQF57I7dKJw+4DhTXiHELVYqKT4zyiNDISLFG0lkfvpMHlV54KaMDKBopoC9qm9aERXSNLLCSwkCsMcO+Qs4lKXQm0hX317NEu3tYSvVehCAnj6/tpCULNrI7VUDyg0ZcIsBgj+3mnyfPP69H1gDawlqDdTg08sThNf0aNRt4DzTIov7vjk6ShTKEn/ydZ9fj7YkmpHu6elDzKwpjxwbNt28FMg9afC3aAk9eY/W4b28HjiNF9Nzwsn01ZG0LZ3hjwXSpT/dnpiRrWX+ZiItVhRzLTZI4eaq1yalb0/2V9jaRNmA3E8cSHUFmnTDxbfavHOkdihcs+0WDCpNZtAyaWIYB7zmEvV4tyBIycTJFLnTaPDfZ5fBzA/+HSNzYz4hL2W/zq/U5EgUw26kYJ2Z9P7GD0XLMS3zgqM2tcyvnQj8Qs1WJV+wvJtCSiXko8l0IwOvQgHqnfnQd4l5AtzPb
 16n8XaO8tc3cD/j+CCJffu+x0SUhUsX4c6g0H9WhXS2VWY+5Xy65fhL312R9Sz7xkXC6XxlHRO8t6JI615jb97Z0G0RynsPeyb7sWpqcpu4pID3YHaZmZjAo9t2SLwXbUMBfSqeaSOe1Ux8Jw/ZNeKwMCQ24IKIZOypVZ3b/h81HEUc1XjPO47bhAgCw==
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id i24-20020a05600c481800b0040efb503d58sm8177158wmo.28.2024.02.05.03.19.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Feb 2024 03:19:12 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: linux-arm-kernel@lists.infradead.org, Adam Ford <aford173@gmail.com>
Cc: marex@denx.de, alexander.stein@ew.tq-group.com, 
 frieder.schrempf@kontron.de, Andrzej Hajda <andrzej.hajda@intel.com>, 
 Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Liu Ying <victor.liu@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>, 
 Lucas Stach <l.stach@pengutronix.de>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org
In-Reply-To: <20240203165307.7806-1-aford173@gmail.com>
References: <20240203165307.7806-1-aford173@gmail.com>
Subject: Re: (subset) [PATCH V8 00/12] soc: imx8mp: Add support for HDMI
Message-Id: <170713195198.1366121.9704774035651608603.b4-ty@linaro.org>
Date: Mon, 05 Feb 2024 12:19:11 +0100
MIME-Version: 1.0
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240205_031916_402202_7488313F 
X-CRM114-Status: GOOD (  11.78  )
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

Hi,

On Sat, 03 Feb 2024 10:52:40 -0600, Adam Ford wrote:
> The i.MX8M Plus has an HDMI controller, but it depends on two
> other systems, the Parallel Video Interface (PVI) and the
> HDMI PHY from Samsung. The LCDIF controller generates the display
> and routes it to the PVI which converts passes the parallel video
> to the HDMI bridge.  The HDMI system has a corresponding power
> domain controller whose driver was partially written, but the
> device tree for it was never applied, so some changes to the
> power domain should be harmless because they've not really been
> used yet.
> 
> [...]

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[07/12] dt-bindings: display: imx: add binding for i.MX8MP HDMI PVI
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=f490d0cb9360466f6df0def3eccc47fabba9775b
[08/12] drm/bridge: imx: add driver for HDMI TX Parallel Video Interface
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=059c53e877ca6e723e10490c27c1487a63e66efe

-- 
Neil


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
