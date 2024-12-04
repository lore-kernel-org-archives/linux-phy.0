Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF2F4E77170
	for <linux-phy@archiver.kernel.org>; Wed,  4 Dec 2024 16:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0iKGMIF/GbHbsKZmWP719UTe1wOzt8Tm3XX1F3q4L6k=; b=w3KgrV2pWluX7t
	799JIAx2vzTGVxFMrn+Uf38c4oAUyWNn4reqqS2gqYZCdQLXgZdlNi98C3eYY6zb/jekQs3rXyiKy
	zHNHxtj2pY+LFjQoG6pcV1VGuSyHNh0HwCszygSe7P0o2jnis7fUKIrtjE0G9ZlGYbghMC6uQggAK
	JR2hYGPkuKH801xd2yS9w8ZxeoBZ2Cu+l10L1y4bT0JbrGfchcc4nQzTWlIZlu6SUHqXUaVVvpcfe
	UZAN9dbNP4o/K5dy2yY1FXxyLKdG2GMGfaKkNzroCtStOh1xTSjsoRQ/f+MP1uXKISDb53RRHk7S9
	MzlK5SB6Hqx1rUYuTcrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIsFL-0000000DBqb-2Cll;
	Wed, 04 Dec 2024 16:29:03 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIqGE-0000000Couk-3oV9
	for linux-phy@lists.infradead.org;
	Wed, 04 Dec 2024 14:21:52 +0000
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-7258ed68cedso688077b3a.1
        for <linux-phy@lists.infradead.org>; Wed, 04 Dec 2024 06:21:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733322108; x=1733926908; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gRP0LK379oO2c2wmV7bc4BGWSbNhwQ82H70Yc7kGYLE=;
        b=nqUpH7WXKJAZufPmweQaH6FVG0VcE1/M4kNChho8wRaM+e2o/P1fv/+v1bnQKw6aSL
         bBZ7DcJkFdT37ANAsJ8pGiPwJsQXQ9ix7Hw/foeLmRTniy0w9Z0V8MXNVxUpHEiEJ8hb
         0bl9rBuwYc0jNFBU9ViVDmKzsRHg2yxHT/nh2HI3XyqhmRqUkWx7x9MTac76vvauQaqj
         79J03+X5ufwElNAOC40l8yODy6youq0ABxOivc2N8osPGEiObicPJnlHRD02fwQF5eBY
         u1lOpIbCCGbHE9OH/JSi1uZTxAsTX/fj75umq6mpWiKsbNbAAAjoQyqMYJbLdsmODb7B
         q5xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733322108; x=1733926908;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gRP0LK379oO2c2wmV7bc4BGWSbNhwQ82H70Yc7kGYLE=;
        b=BNEGtjqftayh5ASIvjfmSCfW8wSRnzdwb/6lMWwnE/SZA+4YMpBZyUNY3kMRh/lsmt
         ++fV/3vam/rT6oLGv3R/DrObAO/lkfbbbcI2pru2h+WkHEVfafjm4k6Dh3xNRi9EmNsI
         0ddhgTNWPjjRu6W8gP2Qq22eGH6u9q53m14wAcAqT8FkbNhCI0Pffs+KzL4mTwRJT5rK
         FCLPVG/OJ02abvjpYMGw52yFpqkemCnGPS53tWAoTCjXDhbBoANrNbCA0a98g3V6WgE1
         ckHbCc8dM9YE+23kDfPPAPj/NVR19QjNtsQGhDKoqakp5n2bDASWMfkwU70sj59MMWpC
         j3LA==
X-Gm-Message-State: AOJu0YxSfnH/t5o7QYjS8w3IzDZVI0XFEozY+yt/GR9z/ywnCpeDHEqq
	30ix5PNSyLHSPsMQyOr5NEiwoy4ryBMHWmLTJ01D5OBNiW9yeKFzZhgqWL+IpvJYt2sotwfYbyT
	DExjZmdeSG0vZK0EsBbpjMZpamNYvKA==
X-Gm-Gg: ASbGncuRQt2VhNtW7LUxwG4skCV2zlZdYV5OX61G0KasnQ22BHKOFrp6OTutKaKQdBS
	z5Ljw2MtaTIsqs1RmcK/y2HBurOZhgbc=
X-Google-Smtp-Source: AGHT+IEhQp50zTrtMghVbxKM6Ou+CIF3ijU487pVYVEw9sK5K7QfwReJj5ycsmTPECwvl95PID2IRePOADM6FuNTzJw=
X-Received: by 2002:a17:902:ecc5:b0:215:8f2e:eeda with SMTP id
 d9443c01a7336-215bd26a3fbmr73008755ad.52.1733322108412; Wed, 04 Dec 2024
 06:21:48 -0800 (PST)
MIME-Version: 1.0
References: <20241026132014.73050-1-aford173@gmail.com>
In-Reply-To: <20241026132014.73050-1-aford173@gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 4 Dec 2024 08:21:37 -0600
Message-ID: <CAHCN7xKH40UiLq3XaBA40B2uhvRadhPGLTWqqtLBaVNQJC=9nw@mail.gmail.com>
Subject: Re: [PATCH V2 1/3] phy: freescale: fsl-samsung-hdmi: Expand Integer
 divider range
To: linux-phy@lists.infradead.org
Cc: aford@beaconembedded.com, sandor.yu@nxp.com, 
	Frieder Schrempf <frieder.schrempf@kontron.de>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, 
	Dominique Martinet <dominique.martinet@atmark-techno.com>, 
	Marco Felsch <m.felsch@pengutronix.de>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	Lucas Stach <l.stach@pengutronix.de>, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_062150_943643_33044A18 
X-CRM114-Status: GOOD (  18.26  )
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

T24gU2F0LCBPY3QgMjYsIDIwMjQgYXQgODoyMOKAr0FNIEFkYW0gRm9yZCA8YWZvcmQxNzNAZ21h
aWwuY29tPiB3cm90ZToKPgo+IFRoZSBJbnRlZ2VyIGRpdmRlciB1c2VzIHZhbHVlcyBvZiBQLE0s
IGFuZCBTIHRvIGRldGVybWluZSB0aGUgUExMCj4gcmF0ZS4gIEN1cnJlbnRseSwgdGhlIHJhbmdl
IG9mIE0gd2FzIHNldCBiYXNlZCBvbiBhIHNlcmllcyBvZgo+IHRhYmxlIGVudHJpZXMgd2hlcmUg
dGhlIHJhbmdlIHdhcyBsaW1pdGVkLiAgU2luY2UgdGhlIHJlZiBtYW51YWwKPiBzaG93cyBpdCBp
cyA4LWJpdCB3aWRlLCBleHBhbmQgdGhlIHJhbmdlIHRvIGJlIHVwIHRvIDI1NS4KPgo+IFNpZ25l
ZC1vZmYtYnk6IEFkYW0gRm9yZCA8YWZvcmQxNzNAZ21haWwuY29tPgo+IFJldmlld2VkLWJ5OiBG
cmllZGVyIFNjaHJlbXBmIDxmcmllZGVyLnNjaHJlbXBmQGtvbnRyb24uZGU+CgpWaW5vZCwKCkRv
IHlvdSBoYXZlIGFueSBmZWVkYmFjayBvbiB0aGlzIHNlcmllcz8gIFJDMSBpcyBhdmFpbGFibGUs
IGFuZCBpdAp3b3VsZCBiZSBuaWNlIHRvIHNlZSB0aGlzIHNlcmllcyBtZXJnZWQgc29vbiB1bmxl
c3MgeW91IGhhdmUgY2hhbmdlcwp5b3Ugd2FudCBpbXBsZW1lbnRlZC4KClRoYW5rIHlvdSwKCmFk
YW0KPiAtLS0KPiBWMjogIEZpeCB0eXBvIGluIGNvbW1lbnQKPgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhkbWkuYyBiL2RyaXZlcnMvcGh5L2Zy
ZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jCj4gaW5kZXggMmM4MDM4ODY0MzU3Li40MTJj
MDNiN2RjZDYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ft
c3VuZy1oZG1pLmMKPiArKysgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1zdW5n
LWhkbWkuYwo+IEBAIC00MDYsMTYgKzQwNiwxNSBAQCBzdGF0aWMgdW5zaWduZWQgbG9uZyBmc2xf
c2Ftc3VuZ19oZG1pX3BoeV9maW5kX3Btcyh1bnNpZ25lZCBsb25nIGZvdXQsIHU4ICpwLCB1MQo+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29udGludWU7Cj4KPiAgICAgICAgICAg
ICAgICAgICAgICAgICAvKgo+IC0gICAgICAgICAgICAgICAgICAgICAgICAqIFRPRE86IFJlZiBN
YW51YWwgZG9lc24ndCBzdGF0ZSB0aGUgcmFuZ2Ugb2YgX20KPiAtICAgICAgICAgICAgICAgICAg
ICAgICAgKiBzbyB0aGlzIHNob3VsZCBiZSBmdXJ0aGVyIHJlZmluZWQgaWYgcG9zc2libGUuCj4g
LSAgICAgICAgICAgICAgICAgICAgICAgICogVGhpcyByYW5nZSB3YXMgc2V0IGJhc2VkIG9uIHRo
ZSBvcmlnaW5hbCB2YWx1ZXMKPiAtICAgICAgICAgICAgICAgICAgICAgICAgKiBpbiB0aGUgbG9v
a3VwIHRhYmxlCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICogVGhlIFJlZiBtYW51YWwgZG9l
c24ndCBleHBsaWNpdGx5IHN0YXRlIHRoZSByYW5nZSBvZiBNLAo+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAqIGJ1dCBpdCBkb2VzIHNob3cgaXQgYXMgYW4gOC1iaXQgdmFsdWUsIHNvIHJlamVj
dAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAqIGFueSB2YWx1ZSBhYm92ZSAyNTUuCj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICovCj4gICAgICAgICAgICAgICAgICAgICAgICAgdG1wID0g
KHU2NClmb3V0ICogKF9wICogX3MpOwo+ICAgICAgICAgICAgICAgICAgICAgICAgIGRvX2Rpdih0
bXAsIDI0ICogTUhaKTsKPiAtICAgICAgICAgICAgICAgICAgICAgICBfbSA9IHRtcDsKPiAtICAg
ICAgICAgICAgICAgICAgICAgICBpZiAoX20gPCAweDMwIHx8IF9tID4gMHg3YikKPiArICAgICAg
ICAgICAgICAgICAgICAgICBpZiAodG1wID4gMjU1KQo+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgY29udGludWU7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgX20gPSB0bXA7Cj4K
PiAgICAgICAgICAgICAgICAgICAgICAgICAvKgo+ICAgICAgICAgICAgICAgICAgICAgICAgICAq
IFJldiAyIG9mIHRoZSBSZWYgTWFudWFsIHN0YXRlcyB0aGUKPiAtLQo+IDIuNDUuMgo+CgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
