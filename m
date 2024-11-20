Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FDEAD44171
	for <linux-phy@archiver.kernel.org>; Wed, 20 Nov 2024 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wnyof9VuPaJqg9Ky9ycx4xUKJOaaA40wKPUKjUaKBfk=; b=w4GuND4muDet8B
	CFb3y2uUCFc24V+HWO056MJUZRgDuTGlD56oLk0Dg7cvCzqGG/3Q97zvhIvECmmt+XvJSERRfaUbg
	BVdWEIBDKG7rUJR91tpX2RhmdmRcMiSjVOQVlpedprRBVA9bWwjnHoXAfayiQ3DxAiOkUN6ADQ+Kd
	xuh2UopxCqwIdPWjGa/alJ5LRLd8wvWGxMh2uf5BxEO64kNZRpdl3l7Z8zyJCrJh1ZFIdBUzWLSQD
	BenIg8vgiXgrVjb2J/dZyuzd+XLK+q2oXS225P56W54nyDKDZ8gDcJirslEPKYcBKXoMITNv9u0DH
	4awZtFC0ZYDKqVcTVSzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDh9Q-0000000EvxW-3K9M;
	Wed, 20 Nov 2024 09:37:32 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDh9N-0000000Evw8-3yNL
	for linux-phy@lists.infradead.org;
	Wed, 20 Nov 2024 09:37:31 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-38231e9d518so3319049f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 20 Nov 2024 01:37:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1732095447; x=1732700247; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U4fsqGfyvQJKmn8zoPFdQOQX2dN/AEtzDhH6yM067EA=;
        b=WQW5J6pUCscOdiVoDvq90TJYiLCgW40PLpQ2KX6Mj6DT+QldqFCWyTHZbHPZ6oGlp8
         TP3DhsoNv371Ux5eEtPhtcBe1G1ax5kpPOw6bZZIlt17Pt4g+rOUDXO6HoOTrrLQshFQ
         auq1keDfG7I/27L+P7WNSWUojRTEF6NCRFgaWRyywxLiLliY4Pn+oHY+Nz4xOFhfmGbi
         cTToV0Cm2meuTSO5mfKEQC3ejo+senxZ7WaECSLYdYiaJEGnZRKrpgWNsx0cgPv00UPs
         /ukXi2op8O+chFTmFH1/sDa+ii2US5qXA7bxCMduXFVP/IQ/GRxFLhxMJN11qRdwuuDT
         Pf/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732095447; x=1732700247;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U4fsqGfyvQJKmn8zoPFdQOQX2dN/AEtzDhH6yM067EA=;
        b=DVOirpYZASHlS99MG4/XUiNiN6sB4PYmDugdSh6p4Q/8j7orQVmvB9Oml6oskjiRES
         QaC+kQ0gHaoNbwpNI0vtiy6OWw/K3E3dmgjRfwbQI6H7/WDIxlL4YgRuNXpT9KVhgdZ3
         Z9Q1ImDguMJjMN52DbdHg/tzxj1MMKhCd2RYvgiPkT12YFLDFtmO5ctWBQQ+CGectv+J
         S1gqWgIIpGjTpElZ6tGUz0/B6YGElzomushZhfG5Znc/yQnD9ZHBZyUgPxt/xXkSpXA7
         aY0uXH769eoYRCCnDAtY8wEGQaVY1S8qM2jSdi/s/+HKrOMKPC3vSyfZQ7I7heSqXTBh
         UZOg==
X-Forwarded-Encrypted: i=1; AJvYcCXMmA0HEHsyBTlCnnMBQd60P1I3oQj36DuBpi49Ni+UnaHcK5K3JMoUWB+Ve6Ej6LDqKkVCNYT1Ihc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxVJ52s0cYTUU6cW8aGMlCuTxCboTPLwBMX7jlPFs3/2ub+YYKZ
	XUQBj1UVOs54IXx0atHFC7ZpJlV53UQEm7/1C7qg56LBcU3y/60IOk+L+GFX0uw=
X-Google-Smtp-Source: AGHT+IERdcVQmp8I/UOWOPIWa5oeyrgUNsR/Mbrq7h+WHYexcjQUaJAOdjbwnyqP/omN2/s+hyZreg==
X-Received: by 2002:a5d:47aa:0:b0:382:6f2:df7b with SMTP id ffacd0b85a97d-38254adf3camr1373292f8f.12.1732095447599;
        Wed, 20 Nov 2024 01:37:27 -0800 (PST)
Received: from fedora.. ([91.90.172.13])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38254933c32sm1555709f8f.70.2024.11.20.01.37.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Nov 2024 01:37:27 -0800 (PST)
From: Daniel Semkowicz <dse@thaumatec.com>
To: heiko@sntech.de
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	kishon@kernel.org,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	quentin.schulz@cherry.de,
	robh@kernel.org,
	sebastian.reichel@collabora.com,
	vkoul@kernel.org,
	Daniel Semkowicz <dse@thaumatec.com>
Subject: Re: [PATCH v3 0/2] MIPI DSI phy for rk3588
Date: Wed, 20 Nov 2024 10:36:38 +0100
Message-ID: <20241120093702.9018-1-dse@thaumatec.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241113221018.62150-1-heiko@sntech.de>
References: <20241113221018.62150-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241120_013730_209576_B1521337 
X-CRM114-Status: GOOD (  20.81  )
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

Hello Heiko,

> This adds the phy driver need for DSI output on rk3588.
> 
> The phy itself is used for both DSI output and CSI input, though the
> CSI part for the whole chain needs a lot more work, so is left out for
> now and only the DSI part implemented.
> 
> This allows the rk3588 with its current VOP support to drive a DSI display
> using the DSI2 controller driver I'll submit in a next step.
> 
> Only generic phy interfaces are used, so the DSI part is pretty straight
> forward.
> 
> changes in v3:
> - add Krzysztof review tag to the binding
> - address Sebastian's review comments
>   - better error handling
>   - dropping empty function
>   - headers
>   - not using of_match_ptr - this should also make the
>     test-robot happier
> 
> changes in v2:
> - fix error in dt-binding example
> - drop unused frequency table
> - pull in some more recent improvements from the vendor-kernel
>   which includes a lot less magic values
> - already include the support for rk3576
> - use dev_err_probe
> 
> Heiko Stuebner (2):
>   dt-bindings: phy: Add Rockchip MIPI CSI/DSI PHY schema
>   phy: rockchip: Add Samsung CSI/DSI Combo DCPHY driver
> 
>  .../phy/rockchip,rk3588-mipi-dcphy.yaml       |   82 +
>  drivers/phy/rockchip/Kconfig                  |   12 +
>  drivers/phy/rockchip/Makefile                 |    1 +
>  .../phy/rockchip/phy-rockchip-samsung-dcphy.c | 1647 +++++++++++++++++
>  4 files changed, 1742 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml
>  create mode 100644 drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
> 
> -- 
> 2.45.2

Thank you very much for these patches!

I tested this series on top of v6.12 with DSI/LVDS bridge
in the following configuration:

RK3588 Tiger SoM (dsi0) --> TC358775 DSI/LVDS bridge --> LVDS display

I did not observe any undesirable artifacts on the display.
Display blank/unblank works correctly.

Tested-by: Daniel Semkowicz <dse@thaumatec.com>

Kind regards
Daniel


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
