Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10699C2BD09
	for <linux-phy@archiver.kernel.org>; Mon, 24 Jun 2024 11:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8i+xphYJHjCAzPhCaGq+mlZL8eFfdKkVFrzgjaLo9AY=; b=3eCYMPUBF+bmqf
	3rxBU5HfgimT2PvHh/lVIdus5ZLU0Yd+D7bEIQ2YG/lYhCk65GHjhzCKFWRjyFc5X5fmJgIHdyPKS
	emEiLaKP3ko46mQ9gRrhRBiw9MrMkzA59CM62UvhMkwfDuFslf8g4JGS7YU7gJpqjABDk+dKkuVQr
	Yfeilw9hN7apDng2GsihjL4Zkc+MFIU9tWJxfwCpMqawWu3NbjmvsSqMYb0KA7kzGYSjh+cZfAPp3
	5IS4ZimkblPsBrdfJICL/8dYNbmJR5Pk+Ug+0cjmUSlcA0FL3/yKRs+zib9OpjnD8O+qZ1KRD4x/+
	X+c5gsfsfYstiZlGxVxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLhwt-0000000Gcag-1CVk;
	Mon, 24 Jun 2024 11:33:27 +0000
Received: from mail-oo1-xc35.google.com ([2607:f8b0:4864:20::c35])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLhwn-0000000GcZ4-383A
	for linux-phy@lists.infradead.org;
	Mon, 24 Jun 2024 11:33:23 +0000
Received: by mail-oo1-xc35.google.com with SMTP id 006d021491bc7-5c1d2f7ab69so1695033eaf.3
        for <linux-phy@lists.infradead.org>; Mon, 24 Jun 2024 04:33:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719228800; x=1719833600; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=odpMfJJZ8NPTYLZvgutefDIcMfEDKS6u2cQ2F9qXb2A=;
        b=CwEIRiOaFeUc4kUK04N2L6G4/EKU/zCiqC/c+EPf0mGSmOjGv4xmPcaVG0qM+yi0hL
         RwXRaMvwP2IXEuPhqv6i0a1yyKGpaUKZviQ8ZM2FkOTuEoVakCtmVZiWcWLx8HtIaACx
         DZ6Rw0KuIt1N6DnbTalPznml8BrSrudyjqSNfJe3y4hPyKGeYjv9UZHRTk9Y1TFa9vn3
         F7mCcZS00zW+hpwEOxzlJJkr7PH0esH/oLLgx4fRMBBDcrwYfoIUSOmd2OQc1lDun6gX
         u/OtUHi9uTq//ylk579eYDIurwpWOtY1j1eIYSvxbNGYFVNUk8XfNg7+iZoqq7XvVDJ4
         djew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719228800; x=1719833600;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=odpMfJJZ8NPTYLZvgutefDIcMfEDKS6u2cQ2F9qXb2A=;
        b=KzEWxaWRe+cVkLTIocI+GBIy6Sr3+Jq+a0tAl5zJFeZ1F9KepcGrH72K8rEHQTdBc2
         0xXGjJ8hgMAh6qiEaJDfocWChFVRJ/JZpuRegTNK4jWpmTO+HpTqyi1T//aVuT0rexRP
         QJ7uJo1P6ZOatlxl8wrDKbmt7pS9TRD8te8jbY1YWVvJ1wRWEpdTHNfWNgyiwecsbdzo
         1h6FrNPc/3T+3AmUGRMeRjc+N2KOH35WOYzzz6+Cv5AuNNnKZz3EBJQJiP1VXsCOX0ww
         R5jca8ONLaJwgb/4MtTJeWmA9bXqaRDdtSIHkNIr4NQt79Zz4S78OLPPAU09dAzS6gt4
         lOng==
X-Forwarded-Encrypted: i=1; AJvYcCXcYLqhw1kBoS5Yxs0SMy1ZiouKFNHT/15T/IP4s7p1SSkZQcOqDz7AFLYuBALE/msfEelDKBvBRXOb0X0tchrXy6pCDvIbxGCbcUOkkw==
X-Gm-Message-State: AOJu0Yw/ZnevEQ/y6hEEMkzcRzTGdRngmle5M9mgdZr9bxN0hCO1MM3O
	5bELOGJOYq4xT+7IFZilp/MC30dlnXjzYyJf27w9Jjx6l7KKV4blJwyl0pM25iV5cl92ZGp8rfX
	ouBLsbmbfrQKCvNSATHaQm6ZC70XjozIPhHpNWA==
X-Google-Smtp-Source: AGHT+IGmvLU2Uh+ee6D/ZczJ3wgdd7eqWxvkUL1HgsQRsgH4xuQIXM0iyYoA9GudXgodjHC0GIwB+1yLti8wulJ2M18=
X-Received: by 2002:a4a:870d:0:b0:5c1:ae16:acb3 with SMTP id
 006d021491bc7-5c1eb76906fmr4738478eaf.0.1719228800566; Mon, 24 Jun 2024
 04:33:20 -0700 (PDT)
MIME-Version: 1.0
References: <20240617-usb-phy-gs101-v3-0-b66de9ae7424@linaro.org> <20240617-usb-phy-gs101-v3-6-b66de9ae7424@linaro.org>
In-Reply-To: <20240617-usb-phy-gs101-v3-6-b66de9ae7424@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 24 Jun 2024 12:33:09 +0100
Message-ID: <CADrjBPrg6_3FhD=2W8X=yaSrTMbmcfjRo3HVo1LyHVcUM8P=0g@mail.gmail.com>
Subject: Re: [PATCH v3 6/6] phy: exynos5-usbdrd: support Exynos USBDRD 3.1
 combo phy (HS & SS)
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Sam Protsenko <semen.protsenko@linaro.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, kernel-team@android.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_043321_842214_A96B0A1B 
X-CRM114-Status: GOOD (  26.15  )
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

SGkgQW5kcsOpLAoKT24gTW9uLCAxNyBKdW4gMjAyNCBhdCAxNzo0NSwgQW5kcsOpIERyYXN6aWsg
PGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBBZGQgc3VwcG9ydCBmb3IgdGhl
IEV4eW5vcyBVU0IgMy4xIERSRCBjb21ibyBwaHksIGFzIGZvdW5kIGluIEV4eW5vcyA5Cj4gU29D
cyBsaWtlIEdvb2dsZSBHUzEwMS4gSXQgc3VwcG9ydHMgVVNCIFNTLCBIUyBhbmQgRGlzcGxheVBv
cnQuCj4KPiBJbiB0ZXJtcyBvZiBVVE1JKywgdGhpcyBpcyB2ZXJ5IHNpbWlsYXIgdG8gdGhlIGV4
aXN0aW5nIEV4eW5vczg1MAo+IHN1cHBvcnQgaW4gdGhpcyBkcml2ZXIuIFRoZSBkaWZmZXJlbmNl
IGlzIHRoYXQgdGhpcyBjb21ibyBwaHkgc3VwcG9ydHMKPiBib3RoIFVUTUkrIChIUykgYW5kIFBJ
UEUzIChTUykuIEl0IGFsc28gc3VwcG9ydHMgRFAgYWx0IG1vZGUuCj4KPiBUaGUgbnVtYmVyIG9m
IHBvcnRzIGZvciBVVE1JKyBhbmQgUElQRTMgY2FuIGJlIGRldGVybWluZWQgdXNpbmcgdGhlCj4g
TElOS1BPUlQgcmVnaXN0ZXIgKHdoaWNoIGFsc28gZXhpc3RzIG9uIEV4eW5vcyBFODUwKS4KPgo+
IEZvciBTdXBlclNwZWVkIChTUykgYSBuZXcgU1MgcGh5IGlzIGluIHVzZSBhbmQgaXRzIFBJUEUz
IGludGVyZmFjZSBpcwo+IG5ldyBjb21wYXJlZCB0byBFeHlub3MgRTg1MCwgYW5kIGFsc28gdmVy
eSBkaWZmZXJlbnQgZnJvbSB0aGUgZXhpc3RpbmcKPiBzdXBwb3J0IGZvciBvbGRlciBFeHlub3Mg
U29DcyBpbiB0aGlzIGRyaXZlci4KPgo+IFRoZSBTUyBwaHkgbmVlZHMgYSBiaXQgbW9yZSBjb25m
aWd1cmF0aW9uIHdvcmsgYW5kIHJlZ2lzdGVyIHR1bmluZyBmb3IKPiBzaWduYWwgcXVhbGl0eSB0
byB3b3JrIHJlbGlhYmx5LCBwcmVzdW1hYmx5IGR1ZSB0byB0aGUgaGlnaGVyCj4gZnJlcXVlbmN5
LCBlLmcuIHRvIGFjY291bnQgZm9yIGRpZmZlcmVudCBib2FyZCBsYXlvdXRzLiBBZGRpdGlvbmFs
bHksCj4gcG93ZXIgbmVlZHMgdG8gYmUgZW5hYmxlZCBiZWZvcmUgd3JpdGluZyB0byB0aGUgU1Mg
cGh5IHJlZ2lzdGVycy4KPgo+IFRoaXMgY29tbWl0IGFkZHMgdGhlIG5lY2Vzc2FyeSBjaGFuZ2Vz
IGZvciBVU0IgSFMgYW5kIFNTIHRvIHdvcmsuCj4gRGlzcGxheVBvcnQgaXMgb3V0IG9mIHNjb3Bl
IGluIHRoaXMgY29tbWl0Lgo+Cj4gTm90ZXM6Cj4gKiBGb3IgdGhlIHJlZ2lzdGVyIHR1bmluZywg
ZXh5bm9zNV91c2JkcmRfYXBwbHlfcGh5X3R1bmVzKCkgaGFzIGJlZW4KPiAgIGFkZGVkIHdpdGgg
dGhlIGFwcHJvcHJpYXRlIGRhdGEgc3RydWN0dXJlcyB0byBzdXBwb3J0IHR1bmluZyBhdAo+ICAg
dmFyaW91cyBzdGFnZXMgZHVyaW5nIGluaXRpYWxpc2F0aW9uLiBTaW5jZSB0aGVzZSBhcmUgaGFy
ZHdhcmUKPiAgIHNwZWNpZmljLCB0aGUgcGxhdGZvcm0gZGF0YSBpcyBzdXBwb3NlZCB0byBiZSBw
b3B1bGF0ZWQgYWNjb3JkaW5nbHkuCj4gICBUaGUgaW1wbGVtZW50YXRpb24gaXMgbG9vc2VseSBt
b2RlbGxlZCBhZnRlciB0aGUgU2Ftc3VuZyBVRlMgUEhZCj4gICBkcml2ZXIuCj4KPiAgIFRoZXJl
IGlzIG9uZSB0dW5pbmcgc3RhdGUgZm9yIFVUTUkrLCBQVFNfVVRNSV9QT1NUSU5JVCwgdG8gZXhl
Y3V0ZQo+ICAgYWZ0ZXIgaW5pdCBhbmQgZ2VuZXJhbGx5IGludGVuZGVkIGZvciBIUyBzaWduYWwg
dHVuaW5nLCBhcyBkb25lIGluCj4gICB0aGlzIGNvbW1pdC4KPgo+ICAgUFRTX1BJUEUzX1BSRUlO
SVQgUFRTX1BJUEUzX0lOSVQgUFRTX1BJUEUzX1BPU1RJTklUCj4gICBQVFNfUElQRTNfUE9TVExP
Q0sgYXJlIHR1bmluZyBzdGF0ZXMgZm9yIFBJUEUzLiBJbiB0aGUgZG93bnN0cmVhbQo+ICAgZHJp
dmVyLCBwcmVpbml0IGRpZmZlcnMgYnkgRXh5bm9zIFNvQywgYW5kIHBvc3Rpbml0IGFuZCBwb3N0
bG9jawo+ICAgYXJlIGRpZmZlcmVudCBwZXIgYm9hcmQuIFRoZSBsYXR0ZXIgaGF2ZW4ndCBiZWVu
IGltcGxlbWVudGVkIGZvcgo+ICAgZ3MxMDEgaGVyZSwgYmVjYXVzZSBkb3duc3RyZWFtIGRvZXNu
J3QgdXNlIHRoZW0gb24gZ3MxMDEgZWl0aGVyLgo+Cj4gKiBTaWduYWwgbG9jayBhY3F1aXNpdGlv
biBmb3IgU1MgZGVwZW5kcyBvbiB0aGUgb3JpZW50YXRpb24gb2YgdGhlCj4gICBVU0ItQyBwbHVn
LiBTaW5jZSB0aGVyZSBjdXJyZW50bHkgaXMgbm8gaW5mcmFzdHJ1Y3R1cmUgdG8gY2hhaW4KPiAg
IGNvbm5lY3RvciBldmVudHMgdG8gYm90aCB0aGUgVVNCIERXQzMgZHJpdmVyIGFuZCB0aGlzIHBo
eSBkcml2ZXIsIGEKPiAgIHdvcmstYXJvdW5kIGhhcyBiZWVuIGFkZGVkIGluCj4gICBleHlub3M1
X3VzYmRyZF91c2JkcF9nMl92NF9wbWFfY2hlY2tfY2RyX2xvY2soKSB0byBjaGVjayBib3RoCj4g
ICByZWdpc3RlcnMgaWYgaXQgZmFpbGVkIGluIG9uZSBvZiB0aGUgb3JpZW50YXRpb25zLgo+Cj4g
KiBFcXVhbGx5LCB3ZSBjYW4gb25seSBlc3RhYmxpc2ggU1Mgc3BlZWQgaW4gb25lIG9mIHRoZSBj
b25uZWN0b3IKPiAgIG9yaWVudGF0aW9ucyBkdWUgdG8gcHJvZ3JhbW1pbmcgZGlmZmVyZW5jZXMg
d2hlbiBzZWxlY3RpbmcgdGhlIGxhbmUKPiAgIG11eCBpbiBleHlub3M1X3VzYmRyZF91c2JkcF9n
Ml92NF9wbWFfbGFuZV9tdXhfc2VsKCksIHdoaWNoIHJlYWxseQo+ICAgbmVlZHMgdG8gYmUgZHlu
YW1pYywgYmFzZWQgb24gdGhlIG9yaWVudGF0aW9uIG9mIHRoZSBjb25uZWN0b3IuCj4KPiAqIEFz
IGlzLCB3ZSBjYW4gZXN0YWJsaXNoIGEgSFMgbGluayB1c2luZyBhbnkgY2FibGUsIGFuZCBhbiBT
UyBsaW5rIGluCj4gICBvbmUgb3JpZW50YXRpb24gb2YgdGhlIHBsdWcsIGZhbGxpbmcgYmFjayB0
byBIUyBpZiB0aGUgb3JpZW50YXRpb24gaXMKPiAgIHJldmVyc2VkIHRvIHRoZSBleHBlY3RhdGlv
bi4KPgo+IFNpZ25lZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFy
by5vcmc+Cj4KPiAtLS0KClJldmlld2VkLWJ5OiAgUGV0ZXIgR3JpZmZpbiA8cGV0ZXIuZ3JpZmZp
bkBsaW5hcm8ub3JnPgphbmQKVGVzdGVkLWJ5OiBQZXRlciBHcmlmZmluIDxwZXRlci5ncmlmZmlu
QGxpbmFyby5vcmc+CgpUZXN0ZWQgdXNpbmcgbXkgUGl4ZWwgNiBwcm8gZGV2aWNlLiBVU0IgY29t
ZXMgdXAgYW5kIGl0IGlzIHBvc3NpYmxlIHRvCnVzZSBhZGIgZnJvbSB0aGUgaG9zdCBjb21wdXRl
ciB0byB0aGUgcGhvbmUuCgpyZWdhcmRzLAoKUGV0ZXIKClsuLl0KCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
