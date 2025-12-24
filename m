Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9A74E7491F
	for <linux-phy@archiver.kernel.org>; Wed, 24 Dec 2025 06:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kY7Xbk5Ldd5eQbxiIG9fjfdLqFBx2Z4Nc/Tfx+OoGmo=; b=YmPsyNH/5E1I1y
	os84CjEbc4NKT5TrZWLfqmsCWiQteoAdKJpwJkMXLRwT2texWbZhtoaiTLYN6etjfWt5mgXkHJq+D
	Ctrm5IgJltNQ9DxuKeejnmGELAz1ZYLt0cirhJtGSqwGu9QdNDWqXWjE0a0S+ahkWD45/PxZ8LUMo
	0UVRacW7BjbXOnbOBlnuc7tkQlmo+asVU4ryMhq7HBMwyUs+mjXg0cjNFSXtVymCoxiRZczMjBObF
	vDzJ3ATc46Ee8EvWFnGaSZ+nXCrpRu0+gTiaVJM7EHxAULoq8+Al841K5X5virvE5CHEnm1oTzri5
	oof0QxDlBOdhDS8pzqwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYIMD-0000000GUcN-24tb;
	Wed, 24 Dec 2025 06:28:25 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYIM9-0000000GUas-0SZu
	for linux-phy@lists.infradead.org;
	Wed, 24 Dec 2025 06:28:23 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-b713c7096f9so910313266b.3
        for <linux-phy@lists.infradead.org>; Tue, 23 Dec 2025 22:28:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766557699; x=1767162499; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5CnmRbtVX4KWjkCR57DNdl2BztEJTFPfW7BxiAwfS/4=;
        b=lDI4Dpufg6mUGk1QB+Cpaq+bvqjP2SkeOhgYd0NOo50scR+63qQvM9pu3Qav+DOVtb
         6N001WZloF3/lXciUkMi4/LDxMbXoN1hZED3T4fcxzz08izeQUQBTGqyGZqK8BtoiYyJ
         7g2EEoARONdwt53v0kDUL6iCgbj8sBTgGjFdnRL1oTw9bosFbAhHBvrpkj+CYp/h05C2
         6ZMtfJqsfEA9uZWjLZZzaQpN7qzAZwV4ZvIF0TyBpj8WEg1HvBLelQ0IgF21b+9lNTJI
         wFlZM2xmYhk8RCrEv05N5rBFJak2KQ8H1MPbWBU+0uEqPG10C5hO7WDKia6hO0bVp/v4
         8iZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766557699; x=1767162499;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5CnmRbtVX4KWjkCR57DNdl2BztEJTFPfW7BxiAwfS/4=;
        b=aC0KIXx0/hD6lUE04MzrUHLzsC47XG0qo5RTLeu4EdjVEOQVC0+ZAqfn2EcmLVVudo
         eRYcFczl9w5Ao43HNjAXDiu46v+BrOb3yMlN7DjTGpp4gOIGXdzfhBLyJpRMhOwwiRGU
         SK2zitsLs2XJDsrxFOaokFvMcQBA1t8gBYyLX3MpanXUnhigsys2co/XwVO4jJTIzjt+
         SAdL2wMKz7QEhS4IhpoUGh63iua0wwvT6PlEOh/lFy8TCcIhlnYvQKmdly9B4YuC/rmL
         qerqlJy4ThPfiA33ToW64D32x+OsLfVv4E04s+cKRuNVi/2M6rwSPGAxaf7iMX98JpL2
         E+9A==
X-Forwarded-Encrypted: i=1; AJvYcCXo8cP1OR79fG/mKMXFl2W/zKb190CWs89EBbwm3orVxz7Ed5zuUzpkYE/Y1sOCkrnaUbuGjHI+lII=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx5cN8sslNlfORt2cR5E4OM8kv6HdKem/GW2uXn/50kwdXI1UAO
	QEZeqO7vxHifbgBN5ncRM3MdhHiixcAh5nvVt4v/KZAvkwOWxgqLHZ+3JSm+wXeykN8=
X-Gm-Gg: AY/fxX5V/bbGWyk9e7ijbNeQWui0yXMmFPhHUaUEPLqZK3rvqtxjZiI/UZj9j3ymVhO
	uXc5PDb+21LAyhvrpcBgd6RvTN0i0NTjPsGm6DXXmIpi4pvVwFTP9QpVDkIsio9Es6B8KyBS9HS
	fmr3O2mJHwEMyzqN4o2y2TivAAobKRWxO9fq7XTjLHDcVK48PddLq6JKadoIzswnKUju7SQvgSJ
	hl/ZeOmi6zPwQJ2PnkbDtgjlgtwk8WYVWaOOlWvjC5PRDuzcBMxs3ZMCz6SP6gvtzluFllJB8A4
	w0sbjuXwy9BQTvCAa/PkiLNsNeN8uLeH5y7PAU3sYIAwcMLU+5Ree2LsayPbmr0i2eEjgE4Yksp
	P8BXPEWERLFCOs+Gzixyn8aIF7HEpS71LWHDpshZ6aDbNyLZXdODms9ozJrKqqKBwEJicwMPSVF
	XdgEMxqGG4vbwIBDgbMKpDDnnIoKzciLotPIniVBth0GiIwqZit93DoxZUaePLbDN7teGbC/Ewq
	htEqg==
X-Google-Smtp-Source: AGHT+IGY8TTf1udnOdufm3EoqY8WYtA/ntlZTGw+8YeGAAdBvWzzBHzyBpPakkpLjhF8o11NY1fmug==
X-Received: by 2002:a17:907:1c01:b0:b7d:22b1:2145 with SMTP id a640c23a62f3a-b8036f2a9f9mr1638472366b.23.1766557698786;
        Tue, 23 Dec 2025 22:28:18 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f0cc52sm1643366766b.52.2025.12.23.22.28.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 22:28:18 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 24 Dec 2025 06:28:17 +0000
Subject: [PATCH v2 1/2] dt-bindings: phy: samsung,ufs-phy: add
 power-domains
MIME-Version: 1.0
Message-Id: <20251224-power-domains-dt-bindings-phy-samsung-ufs-phy-v2-1-581089639982@linaro.org>
References: <20251224-power-domains-dt-bindings-phy-samsung-ufs-phy-v2-0-581089639982@linaro.org>
In-Reply-To: <20251224-power-domains-dt-bindings-phy-samsung-ufs-phy-v2-0-581089639982@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Juan Yescas <jyescas@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_222821_165535_F41C32A1 
X-CRM114-Status: UNSURE (   6.98  )
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

VGhlIFVGUyBwaHkgY2FuIGJlIHBhcnQgb2YgYSBwb3dlciBkb21haW4sIHNvIHdlIG5lZWQgdG8g
YWxsb3cgdGhlCnJlbGV2YW50IHByb3BlcnR5ICdwb3dlci1kb21haW5zJy4KClJldmlld2VkLWJ5
OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+ClJl
dmlld2VkLWJ5OiBQZXRlciBHcmlmZmluIDxwZXRlci5ncmlmZmluQGxpbmFyby5vcmc+ClNpZ25l
ZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+CgotLS0K
djI6IGNvbGxlY3QgdGFncwotLS0KIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9w
aHkvc2Ftc3VuZyx1ZnMtcGh5LnlhbWwgfCAzICsrKwogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9w
aHkvc2Ftc3VuZyx1ZnMtcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGh5L3NhbXN1bmcsdWZzLXBoeS55YW1sCmluZGV4IGQ3MGZmZWI2ZTgyNGJmYzE5NjY4ZTBm
Njc4Mjc2YWNkODc5YTYyMTcuLjJiMjBjMGE1ZTUwOTQ4ODllYjNlODBkY2MyMWI1MDU5NDNjNjg1
MjMgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ft
c3VuZyx1ZnMtcGh5LnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3BoeS9zYW1zdW5nLHVmcy1waHkueWFtbApAQCAtMzYsNiArMzYsOSBAQCBwcm9wZXJ0aWVzOgog
ICAgIG1pbkl0ZW1zOiAxCiAgICAgbWF4SXRlbXM6IDQKIAorICBwb3dlci1kb21haW5zOgorICAg
IG1heEl0ZW1zOiAxCisKICAgc2Ftc3VuZyxwbXUtc3lzY29uOgogICAgICRyZWY6IC9zY2hlbWFz
L3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3BoYW5kbGUtYXJyYXkKICAgICBtYXhJdGVtczogMQoK
LS0gCjIuNTIuMC4zNTEuZ2JlODRlZWQ3OWUtZ29vZwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
