Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4010CCF9E5
	for <linux-phy@archiver.kernel.org>; Mon, 27 Oct 2025 23:22:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ist9Ped1nMYB1hSf+AytFaBU5EoT0OdsvJxWbfFHLO8=; b=d/Nka4cLmCKBQG
	XNfmWomcafDcA44OYiMEvjELGzekqnk++Vgowuh/xrnJ0oaPWaqUVHbK3t4Y3/lL/S44Yc4LMxz+7
	NS0PD1QRBu0x69KaN/0MUqfpVbCo+SWPHSnhdQpWd9Eclh9Okd3U8lRkMs85rqMmGQcrcV9BUVAbn
	g/xwuikQmjeeWPWX1fLx0LHQt+3UVRnQ4RMpex1GOFDa8qP5CDCmTtqjtmDIP+Fsac6gh3aBlFwCc
	FW2392M5DCiQbafihbhGfPw1UxtWyWAJXk+j35Ag15En8LdZjC36OREQdpLxV+VSivXH0IV3RfwVb
	+b7Rm/QLy0OBG1pbam+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDWXV-0000000EvaO-1yRD;
	Mon, 27 Oct 2025 23:22:13 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDWXT-0000000EvZg-0zUb
	for linux-phy@lists.infradead.org;
	Mon, 27 Oct 2025 23:22:12 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-28e7cd6dbc0so65663645ad.0
        for <linux-phy@lists.infradead.org>; Mon, 27 Oct 2025 16:22:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1761607330; x=1762212130; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iiPQWeIHeevsOV0YNnrSX+B9LNP43U3Api7ejFSH8cQ=;
        b=QDFVEm6s164rlt8rY28WZPNY+tw3tf8p+lGl485Hr5eMY5g0s+P+378Lb/SddiUU/q
         ByPoJDxH5Y4hXrIgYcJ9neocCAruy9eh0MLKfyD4sJsRWjIgFyW9jd1KLWOINnBMHAzU
         vQoJJ7TiRme2BE3mix6hTXKHp5MqNFR69ErvLq4gtceHsnyYK2G/DtwB6EJhiUuWi6t7
         wOSWoGrnAFgyJh3C0apdHxhBt2a0kvbFy3Kn8qtChbG+08EsiYsqLGUv+Tyw+4rhVwo/
         zCht0w82iOvKT4XxXr6TpPu7IlXKodOISRTZBz8h4v9gYmA1howSFcUAHkBz2hEQZztD
         6Ibg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761607330; x=1762212130;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iiPQWeIHeevsOV0YNnrSX+B9LNP43U3Api7ejFSH8cQ=;
        b=LXuFMAPndel9nJY+IKxD4FkJN2R7dTZNpjsk/jwiDOSeBwDreJvcjJd0V5iMoWKJll
         9RgXtptXrHaISnlvbDm4jxio3CbR/GgQBUVlIAeNO1Qv3RaUvry6gvHOY2tCJ2N3qgyH
         7sH9yCpUMUHuN7dQdZeJSIbXFJony0o67mmAhbfjtewN3G5dJdZWmaK0afR6ixc2KIP6
         MuRqxo8QMFDbQDXwYP691x+ha0gE71LIRgoURfCVLMs8D42183h4tBecuX+csl4FLXXW
         PRpvLz1OyreptKwJ6/TtsTgoWVatsVUP/qGD+v2W4syqcYQG2DxzFaWcpfrLIN8n0C0a
         Mw8A==
X-Forwarded-Encrypted: i=1; AJvYcCXv6OWDIIPUR9HqsZ58jreJmPOOPIlCH+xjTlrSP4js50ljr6OKe6wNgVm0DMLUeIGzAlbxeJ/By7Y=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw+erC5isVzPfsJXCEB+4QXgAGo7bEe1efxBMHQLFk3HzqiWttO
	OxYy1b84TXDluAtxSk2ASv69IqJJZ1iv8sse1yCPDxE0hYgPgHX8WdryHZTR/ZnVCAwWuk2Ky7F
	e7SvVYOQ2w39Uvg4/v/NoqRKl+rmtQginWjLCu4os
X-Gm-Gg: ASbGncuh5y2jJ51rUpI1MvTMDBrETW/4fU9WfVcUL0zIb2LBtEe9dKIecPePbusfMeU
	kVxwkjgaxsfwpkqcjmyBFEUJG80mzykgVI/BIQE5igmiGXmskacUSbf7DtL+PPEWwOpAEkGT3T4
	NB9qz4s+XUGIs1pZQyGONDxOFHmlU42OrDbEJ4uZ7KT0Ef78eNDYXI4LiLPcMORmgsPZfNlU0Ai
	RsfyNPT/2imG3LfbQwLRTe9BLr4giUtO1eQ0fo03chJn8relvBey3UD35+HuckqjgGQodsE73vo
	rD+MqqM9PxhwFjY4lA==
X-Google-Smtp-Source: AGHT+IFw/jdLBZAkI7aI48cv68geMt8046dhZdRqyhbPorbEN5vUOHFP9Zbu6h+jTvEqQPeotPAALO6GhBMyaapG0Vg=
X-Received: by 2002:a17:902:f609:b0:290:ad27:c1fc with SMTP id
 d9443c01a7336-294cb6893fcmr16828025ad.55.1761607329339; Mon, 27 Oct 2025
 16:22:09 -0700 (PDT)
MIME-Version: 1.0
References: <20251017235159.2417576-1-royluo@google.com> <20251017235159.2417576-2-royluo@google.com>
 <20251023-collie-of-impossible-plenty-fc9382@kuoka> <CA+zupgwQTLEs8_7i-VsGbGV7O2Y3XFA1C3aV7iuv2HLOwKns3w@mail.gmail.com>
 <8e4c8875-10bc-4f4c-a675-a7cefc68c863@kernel.org>
In-Reply-To: <8e4c8875-10bc-4f4c-a675-a7cefc68c863@kernel.org>
From: Roy Luo <royluo@google.com>
Date: Mon, 27 Oct 2025 16:21:32 -0700
X-Gm-Features: AWmQ_bnZfP-h63jIJfnjGht1z_4tHKDRepUQGmMIkJ_dLhOGQfclonH0qtun2RU
Message-ID: <CA+zupgzzkX2CEicrLaW7oGB08qNVqF=5Jpfgcw5HWS1kDW72qg@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: google: Add Google Tensor G5 USB PHY
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, Badhri Jagan Sridharan <badhri@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_162211_286679_80EEBD86 
X-CRM114-Status: GOOD (  14.98  )
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

T24gTW9uLCBPY3QgMjcsIDIwMjUgYXQgNzowMuKAr0FNIEtyenlzenRvZiBLb3psb3dza2kgPGty
emtAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiAyNC8xMC8yMDI1IDAwOjIyLCBSb3kgTHVvIHdy
b3RlOgo+ID4+PiArCj4gPj4+ICsgIGNsb2NrczoKPiA+Pj4gKyAgICBpdGVtczoKPiA+Pj4gKyAg
ICAgIC0gZGVzY3JpcHRpb246IFVTQjIgUEhZIGNsb2NrLgo+ID4+PiArICAgICAgLSBkZXNjcmlw
dGlvbjogVVNCMiBQSFkgQVBCIGNsb2NrLgo+ID4+PiArCj4gPj4+ICsgIGNsb2NrLW5hbWVzOgo+
ID4+PiArICAgIGl0ZW1zOgo+ID4+PiArICAgICAgLSBjb25zdDogdXNiMl9waHkKPiA+Pgo+ID4+
IGNvcmUKPiA+Pgo+ID4+PiArICAgICAgLSBjb25zdDogdTJwaHlfYXBiCj4gPj4KPiA+PiBhcGIK
PiA+Pgo+ID4KPiA+IEp1c3QgdG8gcHJvdmlkZSB0aGUgZnVsbCBjb250ZXh0LCB0aGVzZSB0d28g
Y2xvY2tzL3Jlc2V0cwo+ID4gKHVzYjJfcGh5IGFuZCB1MnBoeV9hcGIpIGFyZSBzcGVjaWZpY2Fs
bHkgZm9yIGVVU0IyIFBIWS4KPiA+IFVTQjMvRFAgY29tYm8gUEhZIGhhcyBpdHMgb3duIGNsb2Nr
L3Jlc2V0IHRoYXQgaGFzbid0Cj4gPiBiZWVuIGFkZGVkIHlldCwgd2Ugd291bGQgaGF2ZSB0byBk
aWZmZXJlbnRpYXRlIHRoZW0gb25jZQo+Cj4gVGhhdCdzIGNvbmZ1c2luZyBhIGJpdC4gWW91IG11
c3QgYWRkIGFsbCBjbG9ja3MsIGFsbCByZXNldHMsIGFsbCBwb3dlcgo+IGRvbWFpbnMsIGFsbCBw
aW5zIGV0Yy4gQmluZGluZ3MgYXJlIHN1cHBvc2VkIHRvIGJlIGNvbXBsZXRlLCBzZWUgd3JpdGlu
Zwo+IGJpbmRpbmdzIGRvYy4KPgo+Cj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgoKT2sgZm91
bmQgdGhpcyBpbiB0aGUgd3JpdGluZyBiaW5kaW5nIGRvYzoKIkRPIGF0dGVtcHQgdG8gbWFrZSBi
aW5kaW5ncyBjb21wbGV0ZSBldmVuIGlmIGEgZHJpdmVyIGRvZXNu4oCZdApzdXBwb3J0IHNvbWUg
ZmVhdHVyZXMuIEZvciBleGFtcGxlLCBpZiBhIGRldmljZSBoYXMgYW4gaW50ZXJydXB0LAp0aGVu
IGluY2x1ZGUgdGhlIOKAmGludGVycnVwdHPigJkgcHJvcGVydHkgZXZlbiBpZiB0aGUgZHJpdmVy
IGlzIG9ubHkKcG9sbGVkIG1vZGUuIgoKSSB3aWxsIGFkZCBhbGwgdGhlIGNsb2NrcyBhbmQgcmVz
ZXRzIGluY2x1c2l2ZSBvZiB1c2IzIGluIHRoZQpuZXh0IHZlcnNpb24uCgpUaGFua3MsClJveSBM
dW8KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
