Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 432F9CF34A1
	for <linux-phy@archiver.kernel.org>; Wed, 19 Nov 2025 13:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fAVE/QTVN7/L8F5Pow7J5cWVelkVCvIuMt+aLWWRHW8=; b=T9XBhNlBzX6VD/
	pHtUQtePbb7iM/74K1ux+wfp/LIZcWdtLW7m4NN94LjnBoGWkBF3ZGgZArW+cfwiuo71f0cBR4xbl
	2my4tfawuFy9YtbcyS3HZsqHreVO95KG9etekMg/zE+2GDLlhuXBQGfeDlJWDzZJdiw1iKcHI+ld1
	ErTqHvXpUknzPqRXVDDk2dMYCIMBPZDq4xFVMQ/PJCuUNuemp3u6IXag3jLi+y9Psro5h0bF+dov+
	d1CVF3r+KG3qLGmkRDmiyNlcfq6C8BnGYH+qARWILt+rUvdZN18vrKQKQ67L3ZdYMD6crMT7YEgrX
	80xKU4oRz6yKcGCuP46g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLibP-00000003JwU-3Aqq;
	Wed, 19 Nov 2025 13:52:07 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLibM-00000003Jvn-45bV
	for linux-phy@lists.infradead.org;
	Wed, 19 Nov 2025 13:52:06 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-37a49389deeso41219961fa.0
        for <linux-phy@lists.infradead.org>; Wed, 19 Nov 2025 05:52:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763560323; x=1764165123; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9Sw7qNK2MuqEfcGlDiodQEmkMQSxPXI8ojkn2672gPY=;
        b=zFAxCinZpJF/ARIHxyxWZo6P8je9wHi+0KZflHuo7z4eo+0V0YyYMEVqxBlb/xPOFU
         5DbagdPE/QyQfkFkDi3pd5rnLiZ5Bf0M1sHEihiGiWjS76nVDRtTfyp807ux/adFl3VB
         oCD+arUlUD/LjDTGM4T4C3U1vIUlpLqsw3T2z/kceLTIxf31reQkF0nOX5ae8Hz4Q9ZG
         5nqrau7gWcDbIjVCf49ZNh+tPnw8FWh766JTZQGpIp4qkOgUGfndo0OpzvKnunDXledy
         8aREe4p+jw+d5EUjz9kmR84aGx1bnJ6ZljgNeB336GuUv63I8EhPQnEwPH5cSSM1UdT4
         m2DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763560323; x=1764165123;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9Sw7qNK2MuqEfcGlDiodQEmkMQSxPXI8ojkn2672gPY=;
        b=kZ353cZRxV9zVl3/cWqr9dYsPqXoJYBibuWSOcSGg60MSMpujOeA2Ly62ce3oyJ8EA
         x1i+4Tfvy0+trq8DPcOb43vPj+gjw++Rw+eGnFGONOtPeNw/uNs3uTi1ZSUf+Mv0XRV3
         R1z+LYWmKnRDp5HBQ90QUMp4Uu55NS0M7kQnXUH8CCCKsOu84dOId6dMemy515GWYk+R
         Ekd488JDi9FOQ8mn3lNt2pRCHZj2AbLQMlNtEbb7OqCatfYNsazII6krwh9G/1Q7J9jO
         i/f82WExA0vJUaxI884Sbk0dV8FLM496u94HuBgmEe7urRP7RrfOXHRnsjSSd2rnbAlf
         DTVg==
X-Forwarded-Encrypted: i=1; AJvYcCX/dW4IsrzN/ysbCIUIOWyflwFW8KzUyvkicnOCB6YRuxD91xc9WKqBjeLN6wz9ngylGILtO882eWk=@lists.infradead.org
X-Gm-Message-State: AOJu0YzMppsMUGFOHD/miMyve2Q5YnDpBtvavUHqD0OEzevmne6r+u7q
	T9K61eqVxoRfQV0ci/FjkjG7dh2fSBQNS/ULq8AGk66B9ufvFFoak4KdHoa7kdcVfrzQIRGv7uQ
	UaLJZk+k5Uh9gnjf1/6idsPVe6aSrcWa/tBytufBizA==
X-Gm-Gg: ASbGncuG7HuN5qjgubqz7VQXfIupK3BGvTLNhu9QsTNvRrUFHteVXn61+ogcum0cJVA
	nNgMTMbaEyK0s3ECk3RkHqODednYZu8mbEqNkIUk6kBdMM2fDm3o4J/moO1flV0zOaZn8kkuLYt
	fOaOVHD0ZiU199WNXdiER/3K1UBC+hdvzNMZMeElv9oKHTXhMJ7dn1W2THVsC98WkN8XZWsF4yo
	v2PvDc4KVNi/dXFFpHKuGFJCiNP3EIOFhoq41AuWJcQg4JWLpaX+SGmcBAAN1/vlDeIJ3I=
X-Google-Smtp-Source: AGHT+IEmqj3lGDApr9edrXMaFwN0H3cZ82GlBpdq67AUQg80YKIMgCzJi1RzhM8yWFVqY0UQAGJbUbSB8ccCc0F5BHI=
X-Received: by 2002:a05:6512:3b9c:b0:578:f613:ed9c with SMTP id
 2adb3069b0e04-59584201168mr7597957e87.43.1763560322586; Wed, 19 Nov 2025
 05:52:02 -0800 (PST)
MIME-Version: 1.0
References: <20251117-upstream_pcie_rc-v5-0-b4a198576acf@aspeedtech.com> <20251117-upstream_pcie_rc-v5-3-b4a198576acf@aspeedtech.com>
In-Reply-To: <20251117-upstream_pcie_rc-v5-3-b4a198576acf@aspeedtech.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 19 Nov 2025 14:51:51 +0100
X-Gm-Features: AWmQ_blwvWUHZn6LSm0qwvTRD5Kr7vftxNarMVR6ZM3aN6PFLC6U4mHy-OgOWik
Message-ID: <CACRpkdYp4NuxDA7QLnqQ_pfd7sFZuDjCuZQ8Jim3BYXN=u=2Xw@mail.gmail.com>
Subject: Re: [PATCH v5 3/8] dt-bindings: pinctrl: aspeed,ast2600-pinctrl: Add
 PCIe RC PERST# group
To: Jacky Chou <jacky_chou@aspeedtech.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
	Andrew Jeffery <andrew@codeconstruct.com.au>, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, linux-aspeed@lists.ozlabs.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Andrew Jeffery <andrew@aj.id.au>, openbmc@lists.ozlabs.org, 
	linux-gpio@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_055205_042949_1576C567 
X-CRM114-Status: UNSURE (   7.23  )
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

T24gTW9uLCBOb3YgMTcsIDIwMjUgYXQgMTozOOKAr1BNIEphY2t5IENob3UgPGphY2t5X2Nob3VA
YXNwZWVkdGVjaC5jb20+IHdyb3RlOgoKPiBBZGQgUENJZSBQRVJTVCMgZ3JvdXAgdG8gc3VwcG9y
dCBmb3IgUENJZSBSQy4KPgo+IFNpZ25lZC1vZmYtYnk6IEphY2t5IENob3UgPGphY2t5X2Nob3VA
YXNwZWVkdGVjaC5jb20+Cj4gQWNrZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRv
Zi5rb3psb3dza2lAbGluYXJvLm9yZz4KClRoaXMgcGF0Y2ggMy81IGFwcGxpZWQgdG8gdGhlIHBp
bmN0cmwgdHJlZS4KCllvdXJzLApMaW51cyBXYWxsZWlqCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
