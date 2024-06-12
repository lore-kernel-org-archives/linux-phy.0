Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F630C27C53
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jun 2024 19:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BsqbTpO0tqXAbaRN0mMTVDvadM8TBYLKycYO7QOPnHo=; b=Ym/pb+Gue5A//J
	7vS2aeButzlAsC3QdJ/9G33nIHyLdEph+BiSYCFn49oQ8BGrooH6hb9Lwij8NKIP2VBuscfS7otCk
	REVD2iAnYtgD06cTs6PibWyl/jlWAJ7UR9aCU2Tmggh9qSXrmQNssLbmStMWZZBJEjYl3ALv8AmED
	LWm4UhUJrks/CuAgIXAX2wFDWZLgv63uUNjMgbt1cxRoyVhIA0xJS3XEHb1hZHOkFx08+Rfk5J+Fq
	4puJ8//t7+rAoMDqRSzuG2VskUrMAC75UCyAVvL0Yk6jePHlflMuiGRYaxaqtB9ZSKthQMD3KmPnW
	CopM8heuCXYIL7WDrrmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHTS9-0000000DryM-0Z94;
	Wed, 12 Jun 2024 19:16:13 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHTS6-0000000Drwy-19Uo
	for linux-phy@lists.infradead.org;
	Wed, 12 Jun 2024 19:16:11 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-63097363e63so2481847b3.3
        for <linux-phy@lists.infradead.org>; Wed, 12 Jun 2024 12:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718219765; x=1718824565; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fTOoAkY+XFAaDVAn5K5dGWlrUR6Zg5YNXYx5cYl0uTA=;
        b=is8U0KODd/naZuyyB8jkKzWnDWaYI0zHJGZ2lqli/+0v6iFeOXOD3skyU8sLWEkdhM
         U6zteVE9BxxplZpHHRHyyf1jKPUiKF2F+ftoZC/AAZbsCLTur+XXw5fZniYj+ahX2jaE
         ASmuaX5XI9Qv36xafg1mQh17oG1vXgxEZHcxFBJKRblHzszrTmaHmyypNaJxrFOoQ3au
         IFI7A52Lx5pXF/ry4Frw9/t+7Ntrzv1sOUn24dC6oKolxItYSMKt/CVDqjyGXVK9xmSm
         Qf+GWL9iCdDYjYCSBZHPJROP/fkyz8NDx7cDrNjUscMl6jqip9dP28CZyczQu8AjP9al
         LnOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718219765; x=1718824565;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fTOoAkY+XFAaDVAn5K5dGWlrUR6Zg5YNXYx5cYl0uTA=;
        b=maE8iGkoVrW0ufBsTQP5B8ZbZ3WmazybMPYVY6dsXoLnLkDlSE3xE5R9H06te4CMqG
         gtsKVwM6abIg1UBlUGXoSiaAgQVzoICi0I3p4KCHdR71V0bRCtEpzSnlioMi+KHPfiEn
         XZhG0ef+Ap6SwMfNDt32Qeyfpmvj5jIsfyXLPDLsdHk6Ctf7PSD+fASI8iiFlKxA2NkC
         kax9bbRVIwex2QxGpvjTlEWwPrSwDluR6owqnDx19mI5Y+bwSzcAyDXHvB4Cq42qgYIV
         p3jJKAUapQNKI1lI10XKDxn+4MsJ4+BD7sYdygkPesUkJT2Url85XDfbf9wonTNaNyhz
         pwpg==
X-Forwarded-Encrypted: i=1; AJvYcCWdtAuxulzNacABxmHf9k64bgyMCBWNrQSnrXLB0gD4McjrM7NaHgFLDpANr5MRPTInVcZOGownNAxVbXz+kFtKzBKKnAvkc5StN50zCw==
X-Gm-Message-State: AOJu0Yytr5F/psBNFikcGwZVK9b+CpNzohbAajfT2h7UxA0y/JFOVr8A
	Iw0Vr87fmWwFHzrFCgf78YKmUo2aoIOaUguRYbl3A7hoy5GBl4SmXUR5+kLMxRxXwmU9fPPlOT+
	xLRF072wQ/D+gRAqjW3S8UAIzix4as5vIYq1WWg==
X-Google-Smtp-Source: AGHT+IG5dsLLwBGQuoG4Hoy7VVSKfSzrxGdFqSvbA7MGEl1gf4yhjr5zOnzliAi/dYKgH3eizXYGtPwh7TsAUPZRI9E=
X-Received: by 2002:a81:a189:0:b0:615:15fe:3cb8 with SMTP id
 00721157ae682-62fbaf3794cmr28360767b3.28.1718219765456; Wed, 12 Jun 2024
 12:16:05 -0700 (PDT)
MIME-Version: 1.0
References: <20240507-samsung-usb-phy-fixes-v1-0-4ccba5afa7cc@linaro.org> <171821470509.586907.3119518278516252634.b4-ty@kernel.org>
In-Reply-To: <171821470509.586907.3119518278516252634.b4-ty@kernel.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Wed, 12 Jun 2024 14:15:54 -0500
Message-ID: <CAPLW+4kgsSrbVbsHgFOhM_FppoPngnk2XhvbmByLtyUKkEWgWQ@mail.gmail.com>
Subject: Re: [PATCH 0/5] a few fixes for the Samsung USB phy driver
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_121610_335958_EA469A91 
X-CRM114-Status: GOOD (  13.58  )
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

T24gV2VkLCBKdW4gMTIsIDIwMjQgYXQgMTI6NTHigK9QTSBWaW5vZCBLb3VsIDx2a291bEBrZXJu
ZWwub3JnPiB3cm90ZToKPgo+Cj4gT24gVHVlLCAwNyBNYXkgMjAyNCAxNToxNDo0MyArMDEwMCwg
QW5kcsOpIERyYXN6aWsgd3JvdGU6Cj4gPiBCZWZvcmUgY29taW5nIHRvIGFuIGFncmVlbWVudCBv
biBteSBTYW1zdW5nIFVTQjMxIC8gZ3MxMDEgcGh5IGNoYW5nZXMgWzFdCj4gPiBbMl0sIEkgZGVj
aWRlZCB0byBzcGxpdCBvdXQgdGhvc2UgY2hhbmdlcyBmcm9tIHRoYXQgc2VyaWVzIHdoaWNoIGNh
biBhbHNvIGJlCj4gPiBhcHBsaWVkIGluZGVwZW5kZW50bHkgYW5kIGFkZCBhIGZldyBhZGRpdGlv
bmFsIGZpeGVzIEkgaGFkIGx5aW5nIGFyb3VuZC4KPiA+Cj4gPiBUaGlzIGNvbnRhaW5zIG1vc3Rs
eSBjbGVhbnVwLCBidXQgYWxzbyBhIGNoYW5nZSB0byB1c2luZyBmc2xlZXAoKSBhcwo+ID4gcmVj
b21tZW5kZWQgYnkgdGhlIHRpbWVycy1ob3d0bywgYW5kIGEgZml4IGZvciBzZXR0aW5nIHRoZSBy
ZWYgZnJlcXVlbmN5IGZvcgo+ID4gRTg1MC4KPiA+Cj4gPiBbLi4uXQo+Cj4gQXBwbGllZCwgdGhh
bmtzIQo+Cj4gWzEvNV0gcGh5OiBleHlub3M1LXVzYmRyZDogdW5pZm9ybSBvcmRlciBvZiByZWdp
c3RlciBiaXQgbWFjcm9zCj4gICAgICAgY29tbWl0OiAyYTBkYzM0YmFiOGVkZTVmYTUwMzc4ZWYy
MDZmNTgwMzAzZWVkOGRlCj4gWzIvNV0gcGh5OiBleHlub3M1LXVzYmRyZDogY29udmVydCB1ZGVs
YXkoKSB0byBmc2xlZXAoKQo+ICAgICAgIGNvbW1pdDogMjdmM2QzZjZkODdmNjUwY2M2YjNlYTA4
MzM1ZGVhNzQ5ZjFiMDRhYQo+IFszLzVdIHBoeTogZXh5bm9zNS11c2JkcmQ6IG1ha2UgcGh5X2lz
b2woKSB0YWtlIGEgYm9vbCBmb3IgY2xhcml0eQo+ICAgICAgIGNvbW1pdDogZjJiNmZjNGQ1Yzk3
OTNjNTU2NDEyZTlhOGFjMTIyNjcwYTBkOGRjYgo+IFs0LzVdIHBoeTogZXh5bm9zNS11c2JkcmQ6
IGZpeCBkZWZpbml0aW9uIG9mIEVYWU5PUzVfRlNFTF8yNk1IWgo+ICAgICAgIGNvbW1pdDogMzJi
MjQ5NWU3MzFmMmE1NjExODAzNGU5YzY2NWU2ZmU1NmJiZmUzYQo+IFs1LzVdIHBoeTogZXh5bm9z
NS11c2JkcmQ6IHNldCByZWYgY2xrIGZyZXEgaW4gZXh5bm9zODUwX3VzYmRyZF91dG1pX2luaXQo
KQo+ICAgICAgIGNvbW1pdDogZDE0YzE0NjE4ZTg1MWViMjVkNTU4MDc4MTBjMmMxNzkxYTYzNzcx
Mgo+CgpEaWQgc29tZWJvZHkgYWN0dWFsbHkgdGVzdCBpdCBvbiBFeHlub3M4NTA/CgoKPiBCZXN0
IHJlZ2FyZHMsCj4gLS0KPiBWaW5vZCBLb3VsIDx2a291bEBrZXJuZWwub3JnPgo+CgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
