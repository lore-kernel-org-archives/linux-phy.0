Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D7DECCA476
	for <linux-phy@archiver.kernel.org>; Tue,  7 Oct 2025 20:22:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gFlCJ4wtqI/be4efbDZzukm1PHKqla+AywWqC5Nq//M=; b=gc0OgdsZKDhBHD
	+8qaIV8hv0lsRxYvfijDZNuvAJ8dBE+hRre+K/Gj+lU9yWuP+P57s4fq7bSYD9FrokmEJxNfcJpun
	tVjIboJeB/b/NjJuIrssX1TI5ExPzZVUXOICMXQfUheqwhDOqqrBLhYLDREtnh36MAnve7/9IBBEV
	sp9hP99gmFNDIZQbArP7vgjg/SMBGvDc3xDxCukPmGBOND3mXW1NyuBW+C8Bd6fhQX9zEirrBmrVt
	qNACml1VHkvd9OARn11xLv6Okj83O9ZhfklNorwHg+Z2TQxSbDSzrA5yAHDvtLm0lICVtQQKi7Gzn
	z6yvEScTZ1enputHJYHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6ECY-00000002kRU-3yfy;
	Tue, 07 Oct 2025 20:22:26 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6ECW-00000002kR4-3YR9
	for linux-phy@lists.infradead.org;
	Tue, 07 Oct 2025 20:22:25 +0000
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-43f8116a130so3140342b6e.2
        for <linux-phy@lists.infradead.org>; Tue, 07 Oct 2025 13:22:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759868544; x=1760473344; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=99kLDRNcHlgnavL66VTSyY3RE11yFNpexHuJRqTB2DE=;
        b=mivs2NzN7v7YbCOAfN7nvBn9z4G47STIkRedOY+ns62q2PXIIskZpAd8lAa9CzR9KZ
         b4VQbEKZfN2h3wUn6+xqtFKwQkk1TdPchy+B12g+yPn098QNzW50sVuMOgiaB6QHTPEW
         qJJ7n2gTLMtDVdhTViX4BPdezsrbawdjWCihOYbdDz6q3lPu3vkeGph0EcpZGAc505TK
         C4BFZOGS4ksDvv2JxoilYEfhGqJN5Yu1QRO2bSpkzJH8V0FMLU1hECd/8bhvyUFyS0sg
         nMDN10D09IiTLk1FLagxovxCTDVICPFyE0492IUijkWAF4D/WuRtm06cL3EdxpeXxkCJ
         sk5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759868544; x=1760473344;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=99kLDRNcHlgnavL66VTSyY3RE11yFNpexHuJRqTB2DE=;
        b=MdpJzyxYQr3RaVSOiA9Q1OSqoabtSnGaNoOq3BgXDxKtwvNtvUdKqePoLf8eE2uayW
         ulBq3XsVnUiujt8Vee7AyI5iaMJsGH33zcKlG/380ij6NyLcEioUNVk4E/IO5j90fn8H
         LmnejxmJTOKrgzcQBCiJBiYHXNLktE6ErgFbCCN7NsoYFfHYJq+fX6asR44I8jDqlekG
         hNdGoTBrttGwwmoPYsVNvH211sM9mn8Vbg8cp0M9rttk/nJ8cUhBGK5z3zluQ160+gya
         GaAMyDQXJ2hBNxgFPcVYjlh8ePAWbpc9dt0MFdvXR4z9AAssdKvxGDcHJ04R3Yq7h1s7
         HPEA==
X-Forwarded-Encrypted: i=1; AJvYcCV/G+ZB5yq1W0WU6JLEcQWHb/s3RQ78qVt31HgAhjXz7seir0i4D+inc7OLgCMGDUGzYd9OgDdKjmI=@lists.infradead.org
X-Gm-Message-State: AOJu0YyfzGaCuCAFaozpLfKZiAOF+bFEdWMOEaD+LryxEBAthQs/DpIp
	fuTKU8JOQ9g3b7NqbPTmzPywLpIB0+TUuJDh3KIIyhRc7O/vD9UjPL11nWtSo9UjeYHomvNitdj
	gZSEv3V5mD7Ugr7gsiLRdU+4ax0x0zKk8pY5GP3LUbA==
X-Gm-Gg: ASbGncviE3zbpc43j0PKoO+Omzqplcl5Sjx+DeojFQqOrHlMm7lRRfcKvIyepkT9gk2
	4rFyvLdFfyvobC1vWjKOU87+LCv7Y1Si1igfaHY+s1RxnVsh9+ReqtiiTF4LPu3L9+WTaJQr8Ud
	To9yAaj8qsLuuJgHzmAG7MZzghfpsPfPqmIIOH2RvZKGV7jpXM5l1PCsx0mBA9TxdRbvNJjvEfJ
	7qRJtU/t8V8Ug7BNXE6aSST+n3pTwHuWt77gA==
X-Google-Smtp-Source: AGHT+IE/AGhWoEZF8eeHiwHizK+fQtU9vN562PI/VURhBYA8B0UfvYKXR081LitZs9K/HxZnjQrqasxdS5YMFPxMAew=
X-Received: by 2002:a05:6808:1586:b0:43f:2c27:b720 with SMTP id
 5614622812f47-4417b2fad79mr438719b6e.20.1759868543830; Tue, 07 Oct 2025
 13:22:23 -0700 (PDT)
MIME-Version: 1.0
References: <20251007-power-domains-phy-samsung-usb3-drd-phy-v1-1-3cb5f80a72ef@linaro.org>
In-Reply-To: <20251007-power-domains-phy-samsung-usb3-drd-phy-v1-1-3cb5f80a72ef@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 7 Oct 2025 21:22:13 +0100
X-Gm-Features: AS18NWBUEeIDeP4sTK_A9MLo1ylabC6RjwGQmLe7UcknWuIT9I9jC3p7X44WHog
Message-ID: <CADrjBPokeXuKGQP1Pi6dwt46bYYTGOthfvFv=Zn3toi03wwDWA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: phy: samsung,usb3-drd-phy: add power-domains
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_132224_885667_A7E4529A 
X-CRM114-Status: UNSURE (   7.62  )
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

T24gVHVlLCA3IE9jdCAyMDI1IGF0IDE3OjAwLCBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3pp
a0BsaW5hcm8ub3JnPiB3cm90ZToKPgo+IFRoZSBVU0IgcGh5IGNhbiBiZSBwYXJ0IG9mIGEgcG93
ZXIgZG9tYWluLCBzbyB3ZSBuZWVkIHRvIGFsbG93IHRoZQo+IHJlbGV2YW50IHByb3BlcnR5ICdw
b3dlci1kb21haW5zJy4KPgo+IFNpZ25lZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5k
cmFzemlrQGxpbmFyby5vcmc+Cj4gLS0tCgpSZXZpZXdlZC1ieTogUGV0ZXIgR3JpZmZpbiA8cGV0
ZXIuZ3JpZmZpbkBsaW5hcm8ub3JnPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
