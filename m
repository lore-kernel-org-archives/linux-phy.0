Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9037DCD4F21
	for <linux-phy@archiver.kernel.org>; Wed, 13 May 2026 17:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qju4oOoqq2fbw2IwJOoRGfqDHG7B8LithJLw0GL3SJg=; b=iRMVC04QdClAY6
	2sogD9JoieJn4FxJQK7FtK69XQ7ICKOZTXgxI/Y/uCqhH/4S++IMCKGItYW0GCj427urhnlasHh2G
	uzYgMQ32kzyZ0/Nyi/CGWrIRq5Wdy79gr9cPMwSAiADRLh/SLZXymV0lHLheVH24SgdD6Xm/RhwHc
	XTYa5pmySxU2M7H8sHcRbkRz46UXlhHCjiTPQJ1mcbn2sbIefc5lEXRNRPUSonFdRatbLBQivxoz5
	Pri6fTK+JeT9ESXqtNSoOEb7bENVwWNaOIc4eIAfl0nkAzcOF+MRSb/maiiuASm2MZQzdNMBmXkrr
	yfbeWK8vr21gAYpd2DGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNDU5-00000003MsV-1PSR;
	Wed, 13 May 2026 17:35:01 +0000
Received: from mail-dy1-x1334.google.com ([2607:f8b0:4864:20::1334])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNDU3-00000003Mrh-0B6L
	for linux-phy@lists.infradead.org;
	Wed, 13 May 2026 17:35:00 +0000
Received: by mail-dy1-x1334.google.com with SMTP id 5a478bee46e88-2ff5472f263so3272716eec.1
        for <linux-phy@lists.infradead.org>; Wed, 13 May 2026 10:34:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778693698; cv=none;
        d=google.com; s=arc-20240605;
        b=jp2q3+i+VLq5+X5GZMMI04sx/1wlshl454UT77WRYl3AQHMwoIV0G3BefDqG2ZIK9V
         VhMfNFna1x/mz7xpwYv0SO6I19inFqOIFaTeunH3oaUTVRn595HKScT2+9heGa0bsmfA
         g02Xwa9jpgflkuU/FcJAX3+oF/an6lVWZPdXXKp2j6t7wxfPkAMrPK3iCAQRf1HzstPg
         j1CmMysFSELp9gkLqOWKF9AjwvZRJ+PP/EnC5asp6a4NeTbO56f+4CLgMcZGWTpt8AU3
         gOywx0E2mDxw5tsfvgdDBzSrR8k83n8l7foHUyysZ+nYO7IkxFXHai6qFT2yeJFaclC4
         3s7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=SpmEe38ixB0yNCM9L2G46PM6Le+IQzZX2ErAyq3Ln7g=;
        fh=F7miG/PamAO3R4rHmvKjn0yy1bry2WXdAEt829X33dg=;
        b=QG2b/Tc0hRiHD/GQfliAYHCeuLw9k0xL21xEur0a8qd9FeD1zlchetAo22Xiv95RpQ
         h/WOKesW70TqLIEJfw3NzgP9zksEvf88Xq41gM2uWYe5DnlLQIHqN+HDhOgy6jtcY7FN
         wlN8Qd4o4ePK2PQSQoZwh15pVwhu14+AtSugZZKvX0KTqqpOQmRRzR2OXRFkGeyGzfpA
         mr6ibK+MNShgriHqcpe5WQYrgojXzMvGLQizWDFlU+0yBKGVdMFWvmKIMAVYC4J0nC79
         XOdLVbbMctn8EjWTlTps+7ThojuNaLxYYbk6MGtjyjQFNlMWuFX2qeWNX3efeiEU0+S7
         Ow/A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778693698; x=1779298498; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SpmEe38ixB0yNCM9L2G46PM6Le+IQzZX2ErAyq3Ln7g=;
        b=C6VNGJPd2Dna4xw3nA2KRSR8y9ec58ERs8s2CuYfLXWXJcYjJSuv/MBv7HA4Az8Aur
         QHotCdO04zkLO5yGZTL6xnD/ISXK6c4edSXGGMiAActwbEMb+ve6ScVXem22qOGkv1PE
         cq+xqDZrCJEdWi/qHl5QGqKA6xcEz8ZmrUj0Ii+XBTWOoDvFnGn3taUZEp2q0E+Sqlys
         XPQ9T/rjh1OZuqo13yN9XtWc1vxKt/XvqWSZNs++MQwo+Sy32kRxe0Ngnwv2bbbwokj+
         XSMV4/my4EfHa/nJbSrjn/c+GgJFEwGUocIlVfwDg+DglNGs4dD8mDihu2LMdgPXzqOk
         Nk5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778693698; x=1779298498;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SpmEe38ixB0yNCM9L2G46PM6Le+IQzZX2ErAyq3Ln7g=;
        b=b7KWVHpWoT5jZOaEkPSiCROGXLKNwKpXbNsaNECF6QcjzoAamco6FrVpLRegLfTklZ
         NpqE1G8vuLed8ED8UhsEDK6xnIQTNbrZ5CJgyOzwcQiB6z6+W7HjqWXNZoaPj4hh5SVX
         qz0QrkikFWHd8yV6Hd8BlmXhC487Uv0f3vqi8GjNCxrIbnBPAF1LGI9ApAWnETHqe8ff
         gsCmBqTQZZq+NnDVH1qqADAg3leDd5hk1zPkQ29mWf6jY4qvH0RLp77Bo7+aiYwhnxej
         Y2lKfSY5DBCXl6mKhZTDGkhbblQu4W3JklaTrdOx3xsNiFAtwyjSTT75HOZc/AeCKdsa
         R/PQ==
X-Forwarded-Encrypted: i=1; AFNElJ/M7+N7heO8z8W0xZAlDjEQ64qjVZ8eXdzVGnGQTPrQ4YIpCcMIeSuME4l3D1PHAA3Rl2u67y7Oltg=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywa14Ni43vPgZ4zRxwMcCtYFUlbWW7hcyGwG+MSmoQr0Zf1OqH6
	GwS0GKHSwUqG1f3kE43v293f1ez5Lh1ZYv5r2VaxF8fNt9hDOQIJJKfzUehz82M9yywiuzvyw00
	PXG9Df6fjUWO9QXCXK3bXEomhQcUaO7Y=
X-Gm-Gg: Acq92OE/xDEfZd3qFDG61S71WRB/8EFdqSiqM6P+rFSjHS6reCvhMpHmB7sngKAlZzI
	Klf+yvpwsn+Zvhzo+AeqeVsabPANsgrbT4VnTJjr6rNZ9Xwlyt1+L7tHg7ayBhZdB7Zu2fe3Ams
	TooNbq/JLy2jHiAdc3xrJIyQUB2T8Db6NytoEVF2Y3Yg0DDt5OnFuVufeCLkPuaG6f5k2A1DOE3
	XEJYElUI8fmRXRmfPbDnGzRn5VqAUW68Peb0MQcF7++zinq6tOsHF+NAn7KiHOx3B+R66utLE4H
	w3jSRWwaDkrID9D4MR0=
X-Received: by 2002:a05:7301:198c:b0:2da:d4b4:c85a with SMTP id
 5a478bee46e88-3011747e13bmr2818209eec.11.1778693697976; Wed, 13 May 2026
 10:34:57 -0700 (PDT)
MIME-Version: 1.0
References: <20260511135703.62470-1-clamor95@gmail.com> <20260511135703.62470-2-clamor95@gmail.com>
In-Reply-To: <20260511135703.62470-2-clamor95@gmail.com>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Wed, 13 May 2026 20:34:45 +0300
X-Gm-Features: AVHnY4Jn_9cXsf7GdBN5Zma5dh7sHSjSA1xGhyeTeuyfFq_71h-4QZdAyPVKUFI
Message-ID: <CAPVz0n2GkucfHqvgusF=K_KakqaJmZSLP=8VYMyVT5HAVDD_XQ@mail.gmail.com>
Subject: Re: [PATCH v1 1/6] dt-bindings: usb: ci-hdrc-usb2: Document
 nvidia,external-control property
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Svyatoslav Ryhel <clamor95@gmail.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_103459_397291_199A7F7F 
X-CRM114-Status: GOOD (  13.96  )
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

0L/QvSwgMTEg0YLRgNCw0LIuIDIwMjbigK/RgC4g0L4gMTY6NTcgU3Z5YXRvc2xhdiBSeWhlbCA8
Y2xhbW9yOTVAZ21haWwuY29tPiDQv9C40YjQtToKPgo+IERvY3VtZW50IHRoZSBudmlkaWEsZXh0
ZXJuYWwtY29udHJvbCBwcm9wZXJ0eSByZXF1aXJlZCwgZm9yIGV4YW1wbGUsIGZvcgo+IFVTQiBs
aW5lcyBpbiBIU0lDIG1vZGUgY29ubmVjdGVkIHRvIGEgbW9kZW0sIHdoZXJlIHRoZSBtb2RlbSBy
ZXF1aXJlcwo+IHByZWNpc2UgY29udHJvbCBvdmVyIHRoZSBVU0IgYnVzIHRvIHByb3Blcmx5IGVu
dW1lcmF0ZSBhbGwgaXRzIHN0YWdlcyBhbmQKPiBpbnRlcm1lZGlhdGUgZGV2aWNlcy4KPgo+IFNp
Z25lZC1vZmYtYnk6IFN2eWF0b3NsYXYgUnloZWwgPGNsYW1vcjk1QGdtYWlsLmNvbT4KPiAtLS0K
PiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9jaS1oZHJjLXVzYjIueWFt
bCB8IDcgKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCj4KPiBkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9jaS1oZHJjLXVz
YjIueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvY2ktaGRyYy11
c2IyLnlhbWwKPiBpbmRleCA2OTFkNmNmMDJjMjcuLmExM2MxZWY0OWE1NyAxMDA2NDQKPiAtLS0g
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL2NpLWhkcmMtdXNiMi55YW1s
Cj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9jaS1oZHJjLXVz
YjIueWFtbAo+IEBAIC03NSw2ICs3NSwxMyBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgdHlwZTogYm9v
bGVhbgo+ICAgICAgZGVwcmVjYXRlZDogdHJ1ZQo+Cj4gKyAgbnZpZGlhLGV4dGVybmFsLWNvbnRy
b2w6Cj4gKyAgICBkZXNjcmlwdGlvbjoKPiArICAgICAgSW5kaWNhdGVzIHRoYXQgdGhlIGNvbnRy
b2xsZXIgaXMgY29uZmlndXJlZCBleHRlcm5hbGx5IGFuZCB0aGF0IHRoZSBob3N0Cj4gKyAgICAg
IHNob3VsZCBub3QgYXR0ZW1wdCB0byB0b3VjaCBpdC4gVXN1YWxseSB1c2VkIGJ5IGEgbW9kZW0g
d2hpY2ggcmVxdWlyZXMKPiArICAgICAgcHJlY2lzZSBidXMgY29uZmlndXJhdGlvbi4KPiArICAg
IHR5cGU6IGJvb2xlYW4KPiArCgpXb3VsZCBzY2hlbWEgbWFpbnRhaW5lcnMgbWluZCBpZiBJIGNy
ZWF0ZSBzZXBhcmF0ZSBzY2hlbWEgbGlrZQpjaGlwaWRlYSx1c2IyLWlteC55YW1sIGlzIGhhbmRs
ZWQ/IEF0IHRoZSBtb21lbnQgY2ktaGRyYy11c2IyIGhvbGRzIGEKbWl4ZWQgcHJvcGVydGllcyBv
ZiBzZXZlcmFsIFNvQyBhbmQgY2FuIGNhdXNlIHVud2FudGVkL3Vuc3VwcG9ydGVkCm5vZGUgY29t
YmluYXRpb25zLgoKPiAgICB1bHBpOgo+ICAgICAgdHlwZTogb2JqZWN0Cj4gICAgICBhZGRpdGlv
bmFsUHJvcGVydGllczogZmFsc2UKPiAtLQo+IDIuNTEuMAo+CgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
