Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2331E7491D
	for <linux-phy@archiver.kernel.org>; Wed, 24 Dec 2025 06:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cA/20A2YLTFZApnOuNALlcRJQplUgUYZaYtwMJ/FqMs=; b=0hUFzMquiOrrTS
	/kweddI8Hac/C9/ENKuk7gJNrBrTLv2FF1E30SoOtYecm/NMEsJ+xi5Hbh1UVUWlGg7GCLqsg7KtB
	BiufaYxeMrQY9f2GTEM1ll9MDrBtjXRYantIZAly/o/jqZzRMyL66IEr/ojZZ23x4CyyeuuT1EIBj
	sXfUIJyTe86IB+aQ6SWrFXTvhARfOn/M3tGvSgjtBom+JOmxa3MWxSDM0HokVZKSsAGTdtq6HAcde
	WR/PS2DbsCjp9lgdyF6BxiZM8H8pA5vMGn4ano4LsIVR6Hpk25pHTAeVwEWX55N6Dv/3NtSdt0GWf
	4gc4lQ3YucQ6Mr4sDARA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYIMC-0000000GUbq-06tV;
	Wed, 24 Dec 2025 06:28:24 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYIM9-0000000GUat-0N7n
	for linux-phy@lists.infradead.org;
	Wed, 24 Dec 2025 06:28:22 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-b7eff205947so811854166b.1
        for <linux-phy@lists.infradead.org>; Tue, 23 Dec 2025 22:28:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766557699; x=1767162499; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GbaH+a+oOqZVpDHfusOZ2KBO86+xeapDP8jAPSyFee0=;
        b=rDttTUA9h4ngdkDjU0K9TJDBAnyMaQ0MczTwf0l/zztwCEAQs65huKBjA3ALCIxA6J
         myutsVYGg1EzTGIxE8D9wlpLLpa0TkE4Bos0XGmRpyGU9fSEN/Sl27GM6evAg0XOD2mo
         gUhaNXFpCNJA41BN2WYZpqTpPcYVi4zfK+6/u1U7iuPTy2eLNdcqpOfAozQSAsNJhNrV
         zCMB+ZYvlpjn++qv3ZU3FR3XTaVwXswa/2F+b/ii8NaQatNkqChMTa1QkQPnQgluyp3q
         i8fVJLlYRq/WvNJ3cOR0theI1jDP/jcoQK60pYFeAavBplhPixbdA6rETLPaI1prG9zF
         /szw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766557699; x=1767162499;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GbaH+a+oOqZVpDHfusOZ2KBO86+xeapDP8jAPSyFee0=;
        b=Ajb6xStIbunmo2X4UOu+Zs3S8afr9Tycrc2p0qM8FtxvQ+BsCvPkT+qkwMgXtFJLSy
         AFqRr2t0wwo8ylz+JTkTL4CfSiFzm7n19RH9oiG9CKwg9yvCp1MWfjvdz1iYLMkwsxSD
         Kfbjk85t/j8iFnoJ3wvMc63XYbIePmZ20X1XLIQaQOrDR8nrjaL/IkxS+tFRrtsaqnP3
         Vhct+QzAejex/R2GQLBHURUSSzwPDEoyHzaS2bulmeFlI/wyrhWa7SikLocDe2CID0gS
         j+6dWMCb2kIXyzikrid4i80Zg8+JPPi/Pd3vEHnCa4K/58ThlqfE/t301QB/j6NVGaqm
         ugUQ==
X-Forwarded-Encrypted: i=1; AJvYcCUJXuBfMp9tfMiwxlJxE0tXdxGQeHLi2DF9Rw9hDs2yq9v1JARJdQjP9d/oZjpEkWTJBhh9RYtv79E=@lists.infradead.org
X-Gm-Message-State: AOJu0YwfhEfmTrMA5tn2J45XQ1VrlnGuEvDLkFWXR/W8Pu5hbHjWqGEE
	sdxw7znhWF/IfsTm6BkafZ2AojmVe1um+up6cvkkNgSMhBytebYYchNQ+O3bBOWs/PQ=
X-Gm-Gg: AY/fxX47//0azhgprfCxEmMCqu1ofnTn71ft6LHicUcDzmWEZgNkRVYfpch7a6WCxX9
	WLWK0AkLPUna3FOrltspEWqJ6gYqSEW3V0wjaBBNRxqCSQbEPJrud4EKVqMpGFcwxO1ZPF6iuGw
	LYgfI7nKKsDbgvQ5B5/7b10WOiewaaS1UILideXq48u+/qjrzmb9DcvOGmLlX5OCOpy3DSNtXMt
	E2z7INeE/94SN0A9Mg8kVVdf5WJEstAeTBE0pkOcWGYG2dWWOlM4AeqZ2wyaIPh30vMYkkmnFSr
	l0gvqYQPaDPsZKmLbxsmLRUAajtI7dsuE3qipbfGFbiPYl2nJLh8JcPpYWBc4WAiHLisXrFAYak
	sN1pZeFhokR8GD6TaU2nSozJIUGoX5IYBysKAI6mA8Y3y2iZz6c+Fc1IH3MwAKevmeqM0lD9ort
	VEhWE2TaNLy5p1zyDq7Eflsb17PqRPMTHe8V/n5GnxqIYv63GHD6q3REIbe7hCrb0VqjW4qwXS6
	pT4Bg==
X-Google-Smtp-Source: AGHT+IGyNLU2MeVldvGpj+RzjrS3qruF4p0UInnrJlxEeqQr45URmSTCH2tmGITCWTBn2n6o3tjKyA==
X-Received: by 2002:a17:906:4fd0:b0:b70:b700:df98 with SMTP id a640c23a62f3a-b8036ebbe4amr1721435366b.5.1766557699273;
        Tue, 23 Dec 2025 22:28:19 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f0cc52sm1643366766b.52.2025.12.23.22.28.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 22:28:18 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 24 Dec 2025 06:28:18 +0000
Subject: [PATCH v2 2/2] dt-bindings: phy: samsung,usb3-drd-phy: add
 power-domains
MIME-Version: 1.0
Message-Id: <20251224-power-domains-dt-bindings-phy-samsung-ufs-phy-v2-2-581089639982@linaro.org>
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
X-CRM114-CacheID: sfid-20251223_222821_142097_5BCD044F 
X-CRM114-Status: UNSURE (   7.28  )
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

VGhlIFVTQiBwaHkgY2FuIGJlIHBhcnQgb2YgYSBwb3dlciBkb21haW4sIHNvIHdlIG5lZWQgdG8g
YWxsb3cgdGhlCnJlbGV2YW50IHByb3BlcnR5ICdwb3dlci1kb21haW5zJy4KClJldmlld2VkLWJ5
OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+ClJl
dmlld2VkLWJ5OiBQZXRlciBHcmlmZmluIDxwZXRlci5ncmlmZmluQGxpbmFyby5vcmc+ClNpZ25l
ZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+CgotLS0K
djI6IGNvbGxlY3QgdGFncwotLS0KIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9w
aHkvc2Ftc3VuZyx1c2IzLWRyZC1waHkueWFtbCB8IDMgKysrCiAxIGZpbGUgY2hhbmdlZCwgMyBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3BoeS9zYW1zdW5nLHVzYjMtZHJkLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3BoeS9zYW1zdW5nLHVzYjMtZHJkLXBoeS55YW1sCmluZGV4IGVhMTEzNWM5
MWZiNzRjMDFiYTg2MGI5NTg4Y2E4OWU2MTE3MDEzNTkuLjhhNTJiMmNmYjM3MjQ4MDI2YjRhYzdm
YWQxNzQxZDRlN2IxYjkxNzIgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvc2Ftc3VuZyx1c2IzLWRyZC1waHkueWFtbAorKysgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3NhbXN1bmcsdXNiMy1kcmQtcGh5LnlhbWwKQEAgLTUx
LDYgKzUxLDkgQEAgcHJvcGVydGllczoKICAgICAgICAgICBzZXR0aW5ncyByZWdpc3Rlci4gIEZv
ciBFeHlub3M1NDIwIHRoaXMgaXMgZ2l2ZW4gYXMgJ3NjbGtfdXNicGh5MzAnCiAgICAgICAgICAg
aW4gdGhlIENNVS4gSXQncyBub3QgbmVlZGVkIGZvciBFeHlub3MyMjAwLgogCisgIHBvd2VyLWRv
bWFpbnM6CisgICAgbWF4SXRlbXM6IDEKKwogICAiI3BoeS1jZWxscyI6CiAgICAgY29uc3Q6IDEK
IAoKLS0gCjIuNTIuMC4zNTEuZ2JlODRlZWQ3OWUtZ29vZwoKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
