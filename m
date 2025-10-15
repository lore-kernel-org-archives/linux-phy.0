Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8142CCD185
	for <linux-phy@archiver.kernel.org>; Wed, 15 Oct 2025 17:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SWTzYJ6mPrj1HhzSBT1cB3YoXbKjT55AcdoEnpYWLoQ=; b=Ps+w+Gh9UzP/Dj
	o0LzwErWInFw1jJzVpDnec5OiGWHHUsMpStXdH2wWGHqncWpdqEQwIDN5+eQadS8/bzVu9zpigtRZ
	GoDAnUC0XDS1NYUC1JlJGB1xzpUS6gafG9GrqG7AwY0HJw1PGJzFYIelCAKbAh/Acm5obThVtf/Sw
	mxJmYtacsGbd9Y9LiR6RcIqYQsWq8Vda0wwCyiR85ZTVQ9/4r6tKxP+Dgh0nVwCi4+j/+WqVI8g7p
	ek66FRz0kKNFoJZVeyvSovnUk9W9bxk2TIZrOKs7nrL9S+K2YqXEHSlaLMr1Y8WzOKPr9lLwInU7d
	4mx/MDHTCeQfOBoOToUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v95UI-00000002Sqk-2v93;
	Wed, 15 Oct 2025 17:40:34 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v95UF-00000002Sp9-1z8w
	for linux-phy@lists.infradead.org;
	Wed, 15 Oct 2025 17:40:33 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-b556284db11so5959410a12.0
        for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 10:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1760550031; x=1761154831; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xkp4QiQO+ZGOJJIskGqlgSdH1DbycxG+pl4uWz6LL4o=;
        b=YWltN+HgVRYhoHbw5p661sgJnOR1aIwp+4FI/yT4m2iPuMwl/lJw+nrUzeDJYD2Ine
         ReyeP/N83WLf8TmnDPQ8WZ6bzRCu1Z4DF3hGsu0zhdh/Ni7qZxqmyxYXjO20UkataH8Q
         XltP+lpbnSDLoETtoBySnHLa1aB1jOYgpQCVCLk27v+Ra6vzt7MfXO0f0cENoX7yCJk9
         DCJAyN8QJCBxpdslq8S+2yO3n0LoHCPeT/NNcMYrMWJ/Bn8HwdOUZpAGA9DcmjSErjAr
         D3nk4lu37u6Wt2dBs4QdWmCov2NkVxtOYdlEwvy37nMph7VzWYB8EjeCMttEyTKdacxd
         Bltw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760550031; x=1761154831;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xkp4QiQO+ZGOJJIskGqlgSdH1DbycxG+pl4uWz6LL4o=;
        b=cYeAaM5SUsDPkoHKDi6w4mmb6PxVekpWNZkQxFtDoJlsoiHapKLTcBXdLBJU9oZVnw
         ovaSLX6mXc0wDwNEeN1WUhsQrJ1GMpFT3+NYDji/dzCNvn5zrL/UE1UHRfCaWzfH6For
         bm87Vinml9onn9yXv3D93zJiXueIrS7C/OV0hBfTwxmlpMvMQcYQEBZi8d1Yk/RFOz08
         WkL7tNBSpGCecZ3W9D92jxMS3IyE1o5evNF8b2QJq6ZDlZjrttoJPcHgVoTy1ylXkHId
         7UkAZGy8AmoIAYtb5LBlJH4vvbMLjXlMfjzyjcI59s+Igk+HqQ1zg2qM9l2QZZ/r/Bu/
         54YQ==
X-Forwarded-Encrypted: i=1; AJvYcCWHWtRXDNkBnnIyEzWx0y5ay87e30fkv8ay+IXweBiJFkZD+NOJK+cfGwPUMT5SvScwowmlMRt8ZGE=@lists.infradead.org
X-Gm-Message-State: AOJu0YyANp8ntNB1GESJrVwEHRYqTg73+FGJdNOyXHvN3LNZJYkL+Dtn
	Bhue4nyREHt7p2S89dRzoAvxGwtSSyJX87eqtWglq0Sq9njIn3NsBuOzdnzqQxmfFMaOLb1Aa+9
	fkZCl9kZxoFG4D+TMjqmGkNqeEHR5Rnwf0r+VynCO
X-Gm-Gg: ASbGncs7BbqWDDoYqvJMkoJsyx6vrAqFoJoCY0K96BUvtuw07A2kCL5LR4/LCH62ix/
	BofrfF2BZPqkz2mgz59SKIiA8rGbirA0TyPKVy7dVkT4wmSPnqNxoiTTeL3cLUhZq/DZ/ar8pKA
	XQU7/Hdxeptxh/D9/XZjUCr5Vq5btK9MH/1q35aezT+1ssq9XUQXExDEd1wczXY97LLFoQ6MQSz
	A4wl2r3vFqYEPUM9w/P8rGR8qzQ85i0qOUgOGX7GU2AVKuprNvZr2N8BC4YjTXmMw==
X-Google-Smtp-Source: AGHT+IGtM8hvN4lqZlO0WHIvTbL3D48lIHd91NHDkSwH6JM5GHtQa8Pa5RXv0ZasuodiKcuODGfruyjdLC0lq/iK870=
X-Received: by 2002:a17:902:e94e:b0:279:daa1:6780 with SMTP id
 d9443c01a7336-2902741cf99mr376217665ad.52.1760550030102; Wed, 15 Oct 2025
 10:40:30 -0700 (PDT)
MIME-Version: 1.0
References: <20251010201607.1190967-1-royluo@google.com> <20251010201607.1190967-3-royluo@google.com>
 <20251015002744.sntua4kqidgusafo@synopsys.com>
In-Reply-To: <20251015002744.sntua4kqidgusafo@synopsys.com>
From: Roy Luo <royluo@google.com>
Date: Wed, 15 Oct 2025 10:39:53 -0700
X-Gm-Features: AS18NWDkbrVxIDG8dAIZI0TtKFaXgEljVUvTQC724DiczltW9oPtD4sVlkXhIBk
Message-ID: <CA+zupgxbGjU_01JSFR_-2humZAyxwcVT5JR6h6mTVUT=3fFQ6Q@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] usb: dwc3: Add Google Tensor SoC DWC3 glue driver
To: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Peter Griffin <peter.griffin@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, Badhri Jagan Sridharan <badhri@google.com>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_104031_510430_A5D2310C 
X-CRM114-Status: GOOD (  16.98  )
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

T24gVHVlLCBPY3QgMTQsIDIwMjUgYXQgNToyOOKAr1BNIFRoaW5oIE5ndXllbiA8VGhpbmguTmd1
eWVuQHN5bm9wc3lzLmNvbT4gd3JvdGU6Cj4KPiBIaSwKPgo+IE9uIEZyaSwgT2N0IDEwLCAyMDI1
LCBSb3kgTHVvIHdyb3RlOgo+ID4gKyNlbmRpZiAvKiBDT05GSUdfUE0gKi8KPiA+ICsKPiA+ICtz
dGF0aWMgY29uc3Qgc3RydWN0IGRldl9wbV9vcHMgZHdjM19nb29nbGVfZGV2X3BtX29wcyA9IHsK
PiA+ICsgICAgIFNFVF9TWVNURU1fU0xFRVBfUE1fT1BTKGR3YzNfZ29vZ2xlX3BtX3N1c3BlbmQs
IGR3YzNfZ29vZ2xlX3BtX3Jlc3VtZSkKPiA+ICsgICAgIFNFVF9SVU5USU1FX1BNX09QUyhkd2Mz
X2dvb2dsZV9ydW50aW1lX3N1c3BlbmQsIGR3YzNfZ29vZ2xlX3J1bnRpbWVfcmVzdW1lLAo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgIGR3YzNfZ29vZ2xlX3J1bnRpbWVfaWRsZSkKPgo+IENh
biB3ZSB1c2UgdGhlIG5ldyBwbV9wdHIoKSBhbmQgKl9QTV9PUFMgbWFjcm9zIHRvIGdldCByaWQg
b2YgdGhlIGlmZGVmCj4gQ09ORklHX1BNIGd1YXJkcz8KClllcywgd2lsbCByZXBsYWNlIGl0IHdp
dGggcG1fcHRyIGluIHRoZSBuZXh0IHBhdGNoLgpQLlMuIFRoZSBrZXJuZWwgdGVzdCByb2JvdCBp
cyBhbHNvIGNvbXBsYWluaW5nIGFib3V0IGl0LiBbMV0KClsxXSBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9saW51eC11c2IvMjAyNTEwMTExMzM1Lm95T0FzOU1CLWxrcEBpbnRlbC5jb20vCgo+Cj4g
PiArICAgICAuY29tcGxldGUgPSBkd2MzX2dvb2dsZV9jb21wbGV0ZSwKPiA+ICsgICAgIC5wcmVw
YXJlID0gZHdjM19nb29nbGVfcHJlcGFyZSwKPiA+ICt9Owo+ID4gKwo+ID4gK3N0YXRpYyBjb25z
dCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGR3YzNfZ29vZ2xlX29mX21hdGNoW10gPSB7Cj4gPiArICAg
ICB7IC5jb21wYXRpYmxlID0gImdvb2dsZSxnczUtZHdjMyIgfSwKPiA+ICsgICAgIHsgfQo+ID4g
K307Cj4gPiArTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgZHdjM19nb29nbGVfb2ZfbWF0Y2gpOwo+
ID4gKwo+ID4gK3N0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIGR3YzNfZ29vZ2xlX2RyaXZl
ciA9IHsKPiA+ICsgICAgIC5wcm9iZSAgICAgICAgICA9IGR3YzNfZ29vZ2xlX3Byb2JlLAo+ID4g
KyAgICAgLnJlbW92ZSAgICAgICAgID0gZHdjM19nb29nbGVfcmVtb3ZlLAo+ID4gKyAgICAgLmRy
aXZlciAgICAgICAgID0gewo+ID4gKyAgICAgICAgICAgICAubmFtZSAgID0gImdvb2dsZS1kd2Mz
IiwKPiA+ICsgICAgICAgICAgICAgLnBtICAgICA9ICZkd2MzX2dvb2dsZV9kZXZfcG1fb3BzLAo+
ID4gKyAgICAgICAgICAgICAub2ZfbWF0Y2hfdGFibGUgPSBkd2MzX2dvb2dsZV9vZl9tYXRjaCwK
PiA+ICsgICAgIH0sCj4gPiArfTsKPiA+ICsKPiA+ICttb2R1bGVfcGxhdGZvcm1fZHJpdmVyKGR3
YzNfZ29vZ2xlX2RyaXZlcik7Cj4gPiArTU9EVUxFX0xJQ0VOU0UoIkdQTCIpOwo+ID4gK01PRFVM
RV9ERVNDUklQVElPTigiRGVzaWduV2FyZSBEV0MzIEdvb2dsZSBHbHVlIERyaXZlciIpOwo+ID4g
LS0KPiA+IDIuNTEuMC43NDAuZzZhZGIwNTRkMTItZ29vZwo+ID4KPgo+IEdpdmUgbWUgc29tZSB0
aW1lLCBhbmQgSSdsbCByZXZpZXcgdGhlIHJlc3Qgb2YgdGhpcyBwYXRjaC4KClRoYW5rcyBUaGlu
aCEgYW5kIGEgaGVhZHMgdXAsIEknbSBzcGxpdHRpbmcgdGhpcyBwYXRzZXQgaW50bwp0d28gc2Vw
YXJhdGUgc2VyaWVzIGFzIEtyenlzenRvZiBzdWdnZXN0ZWQ7IG9uZSBmb3IgdGhlCmNvbnRyb2xs
ZXIgYW5kIG9uZSBmb3IgdGhlIHBoeSwgc28gdGhlIHNlcmllcyB0aXRsZSBtaWdodApjaGFuZ2Ug
aW4gdGhlIG5leHQgdmVyc2lvbi4KClJlZ2FyZHMsClJveSBMdW8KCj4KPiBUaGFua3MsCj4gVGhp
bmgKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
