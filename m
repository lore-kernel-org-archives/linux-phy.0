Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAB7EE7717D
	for <linux-phy@archiver.kernel.org>; Wed, 11 Dec 2024 17:54:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YxjVKhOVHfiXSyzxG5zn4GQhFlGLLp6ENjlknW2+/6k=; b=HyTwf2nerfXmpK
	ONrfPfRFwWPxfe6mpugy1kDQnRlNwAMTZJOcz2CzIWaKiWX+CCiXcgzzG6WViCJVwoNRGxHHwAgrj
	IznhUmr0s62059QZjwoxzDFyqZbmYfikzOvnnwgXtArNe/5o66CpIXtOYqm7L5bk9t6ERm2F5AG3E
	Kn3EnnNEbW1MAn5KrF+QWXM3zKLa3vkEKFfbMgfoNEddztGBgVcIblx41noNn25dbHGaU8Q1MXTs0
	scjJt6ZtAuv/VL/TBaCTMhF2ZV0IKNcZt6szyP7wTF01+bwfnyvbYACvuPrIJpFrWjPvCfOiQVRf6
	fg3/wGoWV9Xgy3rtCcgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLQub-0000000FfTk-230o;
	Wed, 11 Dec 2024 17:54:13 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLQuZ-0000000FfSd-0mUd
	for linux-phy@lists.infradead.org;
	Wed, 11 Dec 2024 17:54:12 +0000
Received: by mail-oi1-x230.google.com with SMTP id 5614622812f47-3eb66b02e1cso871830b6e.3
        for <linux-phy@lists.infradead.org>; Wed, 11 Dec 2024 09:54:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733939650; x=1734544450; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SBAUUgHHCorAYYhe1b/RpcaSfhfVVFDNGT3lM1F0Fxg=;
        b=qKV2stB/dYUVqrY8dOGfMhycNzx5L1yaQiTCjhYZSA4dbqoiAzQeiLEuLA5lxwJgAX
         v3/NU3CuriYjXT81bw3mtjdDCgRYdmHw6CpMbjq3kllAwIePUs4AIh15xy1qlwWCoXpU
         yx1dvttWpAVGtLmfGhNhDGRNpm34CUU386QvfCUnRdB0foSXWESAi26Ptltuq2XH4i2B
         1wlwToB6O2v9otLZTwUbYY6umy7w4PNrExW2B/c3GNGKqUyoq0HZbTAh6Ma4nYixyrBC
         TIXOchTsGx0QTrFgMQ3rwH0dstwcqhwYkzOqQFLSXbfPu5oIM0OV/HfP8JEj8M+fzcaj
         vp/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733939650; x=1734544450;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SBAUUgHHCorAYYhe1b/RpcaSfhfVVFDNGT3lM1F0Fxg=;
        b=I1vBVNIfGvha1knZ1h+La8akgMtTBj3BojT9U/hTPnJBh3IR/ZlAsdL0aHHac3E7X1
         TnrfCdTmZbGGXznMvCOsJETAfwsXHYpe+SRufiC5lFme269CVlGgoxucrjK1roDlpPzH
         HStXkf+F3I3qx1F1MzUDiLI9J8snL9JnaU6gSh/kWfKk1hi8XMlxApyEoDd+JxLK0Nyd
         NTvbxPQq92DfvQ1e+HUd6xjSvx1ZhN5147Bfc6Xi5RGW3+TsHRp44CsUt/emSUeX/RBe
         4BZrfILTY37CaTRz3G03xCf0UdS9r6tO4HBfHq7PdwPRwAlbbW9Fpqq/qdmO4wNL7yu3
         6/Rw==
X-Forwarded-Encrypted: i=1; AJvYcCWbweTSueNv49wQfkbu+yXIgzczxzQ/mxxUzTuj7pppvBLY0GBtx8m0R44AmbB4PAhRrQBUYHB4gek=@lists.infradead.org
X-Gm-Message-State: AOJu0YxdSIylXrfN6WP+bFKrZpwMP+p9Me/ZG82k5oisjsw4AVmbTsZ2
	mPbqNWutGjmqnQ5D1Qim67ZyTOd3t/PHrazmgfnm27v3/BUfR9XwNBjKPDS1LPK7yNRyC2yl4ej
	8jaBN2ZjixKmr8lo6Q3vGl1MEp7no6CuuoRCptowMIUoDYz2M
X-Gm-Gg: ASbGncvbpQNBALrTE0+LwCRrRYihKTvY4iiSj8+fTlH6548NsSxUdJ/Ab7z7eksZ3p8
	1RcIFcfT+PuevfPnvxzbay9SH/ApBs9EJ3tY=
X-Google-Smtp-Source: AGHT+IFfj39z5VsWFUtc547a2JiE2gqj7fMrc6Hgv7LJC75wfYKzbNhVcat1Y4z8nTrgUp65iUPhRZVJvBmlgSE3NeQ=
X-Received: by 2002:a05:6808:1304:b0:3eb:3cca:8829 with SMTP id
 5614622812f47-3eb85d14a42mr2424138b6e.34.1733939649689; Wed, 11 Dec 2024
 09:54:09 -0800 (PST)
MIME-Version: 1.0
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
 <20241206-gs101-phy-lanes-orientation-phy-v4-7-f5961268b149@linaro.org> <CADrjBPrz1qUxbEVFR8OT785xLPwWmu3_ZThSne+EtpS8_NHEEg@mail.gmail.com>
In-Reply-To: <CADrjBPrz1qUxbEVFR8OT785xLPwWmu3_ZThSne+EtpS8_NHEEg@mail.gmail.com>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 11 Dec 2024 17:53:57 +0000
Message-ID: <CADrjBPqW81kaK=Wco7wMg50APTXGRwhnfFjbnogrSQ-T_mWnUQ@mail.gmail.com>
Subject: Re: [PATCH v4 7/7] phy: exynos5-usbdrd: allow DWC3 runtime suspend
 with UDC bound (E850+)
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	Roy Luo <royluo@google.com>, kernel-team@android.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_095411_244633_75AAC9BA 
X-CRM114-Status: GOOD (  22.76  )
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

SGkgQW5kcsOpLAoKT24gU2F0LCA3IERlYyAyMDI0IGF0IDIyOjAzLCBQZXRlciBHcmlmZmluIDxw
ZXRlci5ncmlmZmluQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gSGkgQW5kcsOpLAo+Cj4gT24gRnJp
LCA2IERlYyAyMDI0IGF0IDE2OjMxLCBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5h
cm8ub3JnPiB3cm90ZToKPiA+Cj4gPiBUbyBtYWtlIFVTQiBydW50aW1lIHN1c3BlbmQgd29yayB3
aGVuIGEgVURDIGhhcyBiZWVuIGJvdW5kLCB0aGUgcGh5Cj4gPiBuZWVkcyB0byBpbmZvcm0gdGhl
IFVTQkRSRCBjb250cm9sbGVyIChEV0MzKSB0aGF0IFZidXMgYW5kIGJ2YWxpZCBhcmUKPiA+IGdv
bmUsIHNvIHRoYXQgaXQgY2FuIGluIHR1cm4gcmFpc2UgdGhlIHJlc3BlY3RpdmUgZ2FkZ2V0IGlu
dGVycnVwdCB3aXRoCj4gPiBldmVudCA9PSBEV0MzX0RFVklDRV9FVkVOVF9ESVNDT05ORUNULCB3
aGljaCB3aWxsIGNhdXNlIHRoZSBVU0Igc3RhY2sKPiA+IHRvIGNsZWFuIHVwLCBhbGxvd2luZyBE
V0MzIHRvIGVudGVyIHJ1bnRpbWUgc3VzcGVuZC4KPiA+Cj4gPiBPbiBlODUwIGFuZCBnczEwMSB0
aGlzIGlzbid0IHdvcmtpbmcsIGFzIHRoZSByZXNwZWN0aXZlIHNpZ25hbHMgYXJlIG5vdAo+ID4g
ZGlyZWN0bHkgY29ubmVjdGVkLCBhbmQgaW5zdGVhZCB0aGlzIGRyaXZlciB1c2VzIG92ZXJyaWRl
IGJpdHMgaW4gdGhlCj4gPiBQSFkgSVAgdG8gc2V0IHRob3NlIHNpZ25hbHMuIEl0IGN1cnJlbnRs
eSBmb3JjZWZ1bGx5IHNldHMgdGhlbSB0byAnb24nLAo+ID4gc28gdGhlIGFib3ZlIG1lbnRpb25l
ZCBpbnRlcnJ1cHQgd2lsbCBub3QgYmUgcmFpc2VkLCBwcmV2ZW50aW5nIHJ1bnRpbWUKPiA+IHN1
c3BlbmQuCj4gPgo+ID4gVG8gZGV0ZWN0IHRoYXQgc3RhdGUsIHVwZGF0ZSB0aGlzIGRyaXZlciB0
byBhY3Qgb24gdGhlIFRDUEMncwo+ID4gb3JpZW50YXRpb24gc2lnbmFsIC0gd2hlbiBvcmllbnRh
dGlvbiA9PSBOT05FLCBWYnVzIGlzIGdvbmUgYW5kIHdlIGNhbgo+ID4gY2xlYXIgdGhlIHJlc3Bl
Y3RpdmUgYml0cy4gU2ltaWxhcmx5LCBmb3Igb3RoZXIgb3JpZW50YXRpb24gdmFsdWVzIHdlCj4g
PiByZS1lbmFibGUgdGhlbS4KPiA+Cj4gPiBUaGlzIG1ha2VzIHJ1bnRpbWUgc3VzcGVuZCB3b3Jr
IG9uIHBsYXRmb3JtcyB3aXRoIGEgVENQQyAobGlrZSBQaXhlbDYpLAo+ID4gd2hpbGUga2VlcGlu
ZyBjb21wYXRpYmlsaXR5IHdpdGggcGxhdGZvcm1zIHdpdGhvdXQgKGU4NTAtOTYpLgo+ID4KPiA+
IFdpdGggcnVudGltZSBzdXNwZW5kIHdvcmtpbmcsIFVTQi1DIGNhYmxlIG9yaWVudGF0aW9uIGRl
dGVjdGlvbiBub3cKPiA+IGFsc28gZnVsbHkgd29ya3Mgb24gc3VjaCBwbGF0Zm9ybXMsIGFuZCB0
aGUgbGluayBjb21lcyB1cCBhcyBTdXBlcnNwZWVkCj4gPiBhcyBleHBlY3RlZCBpcnJlc3BlY3Rp
dmUgb2YgdGhlIGNhYmxlIG9yaWVudGF0aW9uIGFuZCB3aGV0aGVyIFVEQyAvCj4gPiBnYWRnZXQg
YXJlIGNvbmZpZ3VyZWQgYW5kIGFjdGl2ZS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBBbmRyw6kg
RHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgo+Cj4gQXMgbWVudGlvbmVkIG9uIHRo
ZSBsYXN0IHBhdGNoLCBpbiBteSB0ZXN0aW5nIGNhYmxlIG9yaWVudGF0aW9uCj4gZGV0ZWN0aW9u
IGlzIHdvcmtpbmcsIGJ1dCBQaXhlbCBpcyBkZXRlY3RlZCBhcyBhIHN1cGVyc3BlZWQgZGV2aWNl
IGluCj4gb25lIG9yaWVudGF0aW9uLCBhbmQgaGlnaCBzcGVlZCBkZXZpY2UgaW4gdGhlIG90aGVy
IG9yaWVudGF0aW9uLiBTbwo+IHlvdSBzaG91bGQgZWl0aGVyIGNoYW5nZSB0aGUgd29yZGluZyBv
ZiB0aGUgbGFzdCBwYXJhZ3JhcGggaW4gdGhlCj4gY29tbWl0IG1lc3NhZ2UgKGFzc3VtaW5nIHlv
dSBnZXQgdGhlIHNhbWUgcmVzdWx0cyBhcyBtZSkgb3IgbWFrZSBpdAo+IGRldGVjdCBhcyBzdXBl
cnNwZWVkIGluIGJvdGggb3JpZW50YXRpb25zLgoKWW91IGNhbiBkaXNyZWdhcmQgdGhpcyBwb2lu
dCwgSSBoYWQgYSB0eXBvIGluIG15IHRlc3Qgc2V0dXAgOiggSSBqdXN0CmNvbmZpcm1lZCB0aGF0
IGl0IGlzIGRldGVjdGVkIGFzIFN1cGVyU3BlZWQgaW4gYm90aCBvcmllbnRhdGlvbnMuCgpUaGFu
a3MsCgpQZXRlcgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
