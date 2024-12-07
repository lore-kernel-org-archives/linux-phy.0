Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C616E7717D
	for <linux-phy@archiver.kernel.org>; Sat,  7 Dec 2024 22:03:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zcmCeo+SqU9avdxzjvBsfbF+M/h/Dt6DvAQJfNHwmX0=; b=ZOFieBMfsY35wC
	bqDkHFmJW4NN9097B3UisyodPprFAI6dv92sdI5Sqx4XdG5n30MP+SfOViRK4sbHlyd/1eMj+N8wt
	vaMepcFdOpTLAKfLramjg73gm+c4zv/oiWmvpIhCzxVX3ynzIaJqH4b03/PjwCLnENbevtqyM7+d1
	OTJOyekdsdzfrvMSnaB2yeRzlcF/5IVXDVpKnxeYtjPS30TjLRBWsFq8NZtSeIrSGVC7bvaAxA7ra
	Sadh8ZMTqkQgGbt+ZyOnSfllPvnAmaEt2APxEy6v6ZzwPGBj8atZO5fcfmCY7tuu4p4bJvPkPN02q
	1IrjRzVZK8N1JUclkiaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tK2te-00000004TlT-2Efe;
	Sat, 07 Dec 2024 22:03:30 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tK2tb-00000004Tke-3Dnt
	for linux-phy@lists.infradead.org;
	Sat, 07 Dec 2024 22:03:29 +0000
Received: by mail-oi1-x234.google.com with SMTP id 5614622812f47-3eb4002eabcso173004b6e.2
        for <linux-phy@lists.infradead.org>; Sat, 07 Dec 2024 14:03:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733609006; x=1734213806; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8GXM0+BHtSGWHXqNnKhtHtPN9SdqgsAE77m643km+40=;
        b=NbGWc/h3ql4ZLogaasY0dHVdwbdNLDbfRAnuaJzSur96AOpo1wF/6sOAonFItGs2+y
         BxGiprYIhD85GwnvETpw8TVqPJkJTtW05tHbFc2GvSclT7I2jP2gk4AdlmND9/4NJbzy
         WRtdX/lK0xJkow3s9yR9C58CPAI7mWiHqTv0USbJuPyXzILtFuyZFSNwICn/sm5nWIur
         AdD7/+Fj0gyftFjxINLhTwYE3zXIjZwpmOYBJ3BjPrVqlg2t/AMCvkOPkELBS/Y6zOLP
         s3KdR46jsJ5i5O7aoOswm6E/j3HkgoC44Z27WZZwT1P/BAHGwv57TrHSQsasB7C4yv0v
         nxMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733609006; x=1734213806;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8GXM0+BHtSGWHXqNnKhtHtPN9SdqgsAE77m643km+40=;
        b=Jo6dTCds1O7EYjhizNqnW03pCf2N0zIpwszpg+15USWS4rS8fD8dURPqRiNY7HJ2BS
         +A9mXlJcAyqjIsimf4sPsBEjAnD0dLSs1SwwIqBz2utbcWC94GpPvEdC9EdFUmULSNaB
         lTf78XwEjCwKTfSyBf0WSz2xSE6qJtBWq6kNb0ShLzjjE12RAIirRQMPZlTLxhWqmdop
         N2263jGU1FpWwO3CNUbj1f/jXrE+AVmsKflfHlr2WlkF2WK00gff6Jl+TPiU3uRg/zJ9
         A9nWogXD5eCTSf32LFYndathJbyFd1Qm1+1qbf/FV+5Le1TqLIJHmrc5xi94SqeQ9ofi
         l0GQ==
X-Forwarded-Encrypted: i=1; AJvYcCXoV8YJvAS7VWLi3kFvj+8bbYJEgzAXd+gv5u2wJ5M7SxJyU2/iA6jh+jlGFUhR0EcFtK4KOth+vRo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw0v3VsWdxkhgRT8ADfxLSLYBD/FKpwNrMYhBe5RaT7ggYltPW1
	rtyAnF3gEQTkQ79i3t6LNPlocj8U6MWrpC1u7ZTCi0oWuDs2BzhVLNc8JXOoU/m4xPxhTnEbTLf
	aSLqH/hTBd/mvBsYsv9ehNx2Vd3ntwab5XvYpBw==
X-Gm-Gg: ASbGncvZnaz3OP+diD+wBAgKuH6vEY0OZoA7Zeni7RodfFye7gBcBShdcXcSHsiQKGz
	q9kcyMI8L4eJHNGuhisPIn9FSPzhEsAM=
X-Google-Smtp-Source: AGHT+IFySGjzoy5FCW6UW8sdkAac1K6u7Brr2FiRkrW+1TN5iMSt/PqT8OWXDemRttmZeKYZRyGTsy/kAkU/2DL3BXc=
X-Received: by 2002:a05:6871:c709:b0:29e:392d:afc8 with SMTP id
 586e51a60fabf-29f7329ae2dmr7184218fac.15.1733609006594; Sat, 07 Dec 2024
 14:03:26 -0800 (PST)
MIME-Version: 1.0
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
 <20241206-gs101-phy-lanes-orientation-phy-v4-7-f5961268b149@linaro.org>
In-Reply-To: <20241206-gs101-phy-lanes-orientation-phy-v4-7-f5961268b149@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Sat, 7 Dec 2024 22:03:15 +0000
Message-ID: <CADrjBPrz1qUxbEVFR8OT785xLPwWmu3_ZThSne+EtpS8_NHEEg@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20241207_140327_936082_9550709F 
X-CRM114-Status: GOOD (  16.79  )
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

SGkgQW5kcsOpLAoKT24gRnJpLCA2IERlYyAyMDI0IGF0IDE2OjMxLCBBbmRyw6kgRHJhc3ppayA8
YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPiB3cm90ZToKPgo+IFRvIG1ha2UgVVNCIHJ1bnRpbWUg
c3VzcGVuZCB3b3JrIHdoZW4gYSBVREMgaGFzIGJlZW4gYm91bmQsIHRoZSBwaHkKPiBuZWVkcyB0
byBpbmZvcm0gdGhlIFVTQkRSRCBjb250cm9sbGVyIChEV0MzKSB0aGF0IFZidXMgYW5kIGJ2YWxp
ZCBhcmUKPiBnb25lLCBzbyB0aGF0IGl0IGNhbiBpbiB0dXJuIHJhaXNlIHRoZSByZXNwZWN0aXZl
IGdhZGdldCBpbnRlcnJ1cHQgd2l0aAo+IGV2ZW50ID09IERXQzNfREVWSUNFX0VWRU5UX0RJU0NP
Tk5FQ1QsIHdoaWNoIHdpbGwgY2F1c2UgdGhlIFVTQiBzdGFjawo+IHRvIGNsZWFuIHVwLCBhbGxv
d2luZyBEV0MzIHRvIGVudGVyIHJ1bnRpbWUgc3VzcGVuZC4KPgo+IE9uIGU4NTAgYW5kIGdzMTAx
IHRoaXMgaXNuJ3Qgd29ya2luZywgYXMgdGhlIHJlc3BlY3RpdmUgc2lnbmFscyBhcmUgbm90Cj4g
ZGlyZWN0bHkgY29ubmVjdGVkLCBhbmQgaW5zdGVhZCB0aGlzIGRyaXZlciB1c2VzIG92ZXJyaWRl
IGJpdHMgaW4gdGhlCj4gUEhZIElQIHRvIHNldCB0aG9zZSBzaWduYWxzLiBJdCBjdXJyZW50bHkg
Zm9yY2VmdWxseSBzZXRzIHRoZW0gdG8gJ29uJywKPiBzbyB0aGUgYWJvdmUgbWVudGlvbmVkIGlu
dGVycnVwdCB3aWxsIG5vdCBiZSByYWlzZWQsIHByZXZlbnRpbmcgcnVudGltZQo+IHN1c3BlbmQu
Cj4KPiBUbyBkZXRlY3QgdGhhdCBzdGF0ZSwgdXBkYXRlIHRoaXMgZHJpdmVyIHRvIGFjdCBvbiB0
aGUgVENQQydzCj4gb3JpZW50YXRpb24gc2lnbmFsIC0gd2hlbiBvcmllbnRhdGlvbiA9PSBOT05F
LCBWYnVzIGlzIGdvbmUgYW5kIHdlIGNhbgo+IGNsZWFyIHRoZSByZXNwZWN0aXZlIGJpdHMuIFNp
bWlsYXJseSwgZm9yIG90aGVyIG9yaWVudGF0aW9uIHZhbHVlcyB3ZQo+IHJlLWVuYWJsZSB0aGVt
Lgo+Cj4gVGhpcyBtYWtlcyBydW50aW1lIHN1c3BlbmQgd29yayBvbiBwbGF0Zm9ybXMgd2l0aCBh
IFRDUEMgKGxpa2UgUGl4ZWw2KSwKPiB3aGlsZSBrZWVwaW5nIGNvbXBhdGliaWxpdHkgd2l0aCBw
bGF0Zm9ybXMgd2l0aG91dCAoZTg1MC05NikuCj4KPiBXaXRoIHJ1bnRpbWUgc3VzcGVuZCB3b3Jr
aW5nLCBVU0ItQyBjYWJsZSBvcmllbnRhdGlvbiBkZXRlY3Rpb24gbm93Cj4gYWxzbyBmdWxseSB3
b3JrcyBvbiBzdWNoIHBsYXRmb3JtcywgYW5kIHRoZSBsaW5rIGNvbWVzIHVwIGFzIFN1cGVyc3Bl
ZWQKPiBhcyBleHBlY3RlZCBpcnJlc3BlY3RpdmUgb2YgdGhlIGNhYmxlIG9yaWVudGF0aW9uIGFu
ZCB3aGV0aGVyIFVEQyAvCj4gZ2FkZ2V0IGFyZSBjb25maWd1cmVkIGFuZCBhY3RpdmUuCj4KPiBT
aWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgoK
QXMgbWVudGlvbmVkIG9uIHRoZSBsYXN0IHBhdGNoLCBpbiBteSB0ZXN0aW5nIGNhYmxlIG9yaWVu
dGF0aW9uCmRldGVjdGlvbiBpcyB3b3JraW5nLCBidXQgUGl4ZWwgaXMgZGV0ZWN0ZWQgYXMgYSBz
dXBlcnNwZWVkIGRldmljZSBpbgpvbmUgb3JpZW50YXRpb24sIGFuZCBoaWdoIHNwZWVkIGRldmlj
ZSBpbiB0aGUgb3RoZXIgb3JpZW50YXRpb24uIFNvCnlvdSBzaG91bGQgZWl0aGVyIGNoYW5nZSB0
aGUgd29yZGluZyBvZiB0aGUgbGFzdCBwYXJhZ3JhcGggaW4gdGhlCmNvbW1pdCBtZXNzYWdlIChh
c3N1bWluZyB5b3UgZ2V0IHRoZSBzYW1lIHJlc3VsdHMgYXMgbWUpIG9yIG1ha2UgaXQKZGV0ZWN0
IGFzIHN1cGVyc3BlZWQgaW4gYm90aCBvcmllbnRhdGlvbnMuCgpUaGFua3MsCgpQZXRlci4KCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
