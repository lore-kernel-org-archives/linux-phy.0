Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAB91D29DEF
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jan 2026 09:07:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P5y02XxQTgU45u6rF0HRy5Op8NFVN0s406aGr0lzY5g=; b=o6/+Md/DecWs+b
	aDG3px4hF0shaGYdwY0LVCtvq7MZz+VMUKmNqzKgDFLrXrqh4Uycn75AqCN1fdxfJKlVUpkwcItEw
	8lA7NXcSGSkCZaWgK4oZYkmvuMlVK63698ckrz0pNMLZsph1TyxjzTxMRHK3bIWKviagNJMaaMTsN
	kVd+VcQTK8usyvCasTswi65MneBTRdTXkSEI4aBV2gqGFYnwY4iIWmZSlsvfE8THOjRyPCc7GwzDP
	0yfKpKR1Qjr40p7xBM/hUEYCGB99F2+Ou6QH/vFx8eCM+HgQ4dYZ9REcLxF/QYJtXkonjR6woQ61B
	70oNZ2ZXWC2nNQhKhsug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfaMx-00000006nei-1lmX;
	Tue, 13 Jan 2026 09:07:19 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfaMt-00000006ndW-0xft
	for linux-phy@lists.infradead.org;
	Tue, 13 Jan 2026 09:07:18 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-59b710d46ceso6294281e87.3
        for <linux-phy@lists.infradead.org>; Tue, 13 Jan 2026 01:07:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1768295232; x=1768900032; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/i3Juaj0N8yH4MFpXlG+cGqZ2qEdPdNcnpSqQBlYTGU=;
        b=GdjdKD8GJ0+xLLmEPWVOIP+1B9o9jn4hG7pSryYJL5g/KXk/3N6Nx47XsZDo8JRHGE
         J8V+Go6PRbz0zZ/12hFCc7uiaRlw4OcgY8heSlRln1eC06SNMmYil2IWzoLNI/2+sLtZ
         XBrO3XC9ILrJhNrSMaLnNMPdEiLO/XwxggKkujH+hx+9ZpnaK6mZLiEATdrzkv8JR9rG
         m1aKP+NbKLDhYNcz14iz72rzDTA/scvvtT3MbwOi15UP4bnYZ302P6FJWIaSN/Df2IiL
         9b51m1Lkw5OTlXg0c+f6IsKflwKgglHohGXybCzffkNiL0MHH/n4vN50YknJWUjI4RPZ
         7Yvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768295232; x=1768900032;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/i3Juaj0N8yH4MFpXlG+cGqZ2qEdPdNcnpSqQBlYTGU=;
        b=DAe7a9QZhO3hPdlDETnjeuOzGAn/MZrms3XMAa0Bi+ecCK9yLWiuaGRd+XDHn58/e4
         YgiAzFpxA5wKaMuKBZ6HCbymB3430SD6f5VLo0Kk+H/Tmoq1YmIMxpMWaPp+SJgK6F9A
         +1Qgr4vmcUO9AINcEchvlRl4YqtdyKmmLaSOdctTZRXqFxcdZ9hyD1zv2GReWlGpvigr
         67RCdydppG7PQLKOzXbVTPoEd3hBPABVy4FeyGgFtTY+v6tgBa23Sgie7OOPeoeTFcwC
         B6uZyj6kkHD+LA2isUsPgfIZNr3Yq52OpidnuOgUXjWN7k/dwguMBfFyU/UOv/Fw27bG
         c/VQ==
X-Forwarded-Encrypted: i=1; AJvYcCXdwoRawF06i4U582gh/UmFEaS4oAQNf5slOCCkSRVsZsmOCHBajbCrSE2hOcUJ6DGFG1XhTh/PcnE=@lists.infradead.org
X-Gm-Message-State: AOJu0YybcLliCGUs1LgKGFyu1DMvwWH4wio19gLr2/P0or5rGwmdtPmD
	ZMJoxUAFnbBlVTAGXwcFPI8F7lyCZMGeoRAWxU3FOTvVpzyT6TwbCGYp4ddfZ33ijaXmsilGmAK
	4lwF7fmBvfzOPo9023olGs24yGQv/xZbERGP+xPlTyA==
X-Gm-Gg: AY/fxX5bM9ZD39n4iP1yJFfzhlsLrA7uf4Qszpft2ABg5UH9PTUqZmwN4AIKmsG7I4z
	Nwtnh7TGxDQ5EBGw58AB3xL9tDpazJcJKn0zcyV9QUZ9a6UV0U8/51AbjvQeMb775X/g9IMxbgu
	w9iHeUcTAg71EuBARnhoyt2mOPAhxsbFcPDt1RYoSUCmlC2ap0nCMkZL2j/EpgK2kYi06tg9xs0
	eVe8D/KCZz8nk2dxruJO2PX6P7hW7YbnXyLb8yRZqvpVGyL+izcSHNMvgB2139D3SyiC4kvdwvm
	9bo40ylKNegN/JDicBIZvb8h6RQL
X-Google-Smtp-Source: AGHT+IGftEHtLClyb69mOyaEsN3lAH2/jF+5CBMjP/ZmjjcqXy+C8GOSWAl6T7IxwZIVnFTBz/aNdum5oAdTU7TVZB0=
X-Received: by 2002:a05:6512:3041:b0:595:9152:b932 with SMTP id
 2adb3069b0e04-59b6f03e5a9mr7195718e87.47.1768295232445; Tue, 13 Jan 2026
 01:07:12 -0800 (PST)
MIME-Version: 1.0
References: <20251105152023.259813-1-marco.crivellari@suse.com>
In-Reply-To: <20251105152023.259813-1-marco.crivellari@suse.com>
From: Marco Crivellari <marco.crivellari@suse.com>
Date: Tue, 13 Jan 2026 10:07:01 +0100
X-Gm-Features: AZwV_QhM0_519Wp7eCusKGLkLbDhbtlDLW63gw69Hikozl3LItms4ZWAJbUiCUI
Message-ID: <CAAofZF423Fmsxb4c+J5q4Nf4t6YO+=-SBjna+7TvqJ=C1K0DYQ@mail.gmail.com>
Subject: Re: [PATCH] phy: sun4i-usb: replace use of system_wq with system_percpu_wq
To: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Cc: Tejun Heo <tj@kernel.org>, Lai Jiangshan <jiangshanlai@gmail.com>, 
	Frederic Weisbecker <frederic@kernel.org>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
	Michal Hocko <mhocko@suse.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_010715_276136_A5F3305F 
X-CRM114-Status: UNSURE (   6.75  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBOb3YgNSwgMjAyNSBhdCA0OjIw4oCvUE0gTWFyY28gQ3JpdmVsbGFyaQo8bWFyY28u
Y3JpdmVsbGFyaUBzdXNlLmNvbT4gd3JvdGU6Cj4gWy4uLl0KPiAgZHJpdmVycy9waHkvYWxsd2lu
bmVyL3BoeS1zdW40aS11c2IuYyB8IDE0ICsrKysrKystLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2Vk
LCA3IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgoKR2VudGxlIHBpbmcuCgpUaGFua3Mh
CgotLSAKCk1hcmNvIENyaXZlbGxhcmkKCkwzIFN1cHBvcnQgRW5naW5lZXIKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
