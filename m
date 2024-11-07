Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C184CD5D674
	for <linux-phy@archiver.kernel.org>; Thu,  7 Nov 2024 17:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SLBKV68XhsaoLDAXI6NxbesYydw0/oo9hKNiBg1UICE=; b=WwQmN4RrOXEq9v
	Pa5DdfVsJYWW1s48DMnmC7brrUQUlrLzvK4yXgVBy4RctYa+ItX3mYwXkxIN3HPQG9FcTOYC+Hf3z
	zbNWgXyyd+ePd5CSQVijavKpeeJaFb8BSbqcdvqhrxANlS6gaJGQvt7MMfUm30X9leNmzRU8h8Np5
	+QkIvvXK/db8D8kjJnE4PKmULKPtKo0wsDC4E21L1hK1YMI75egz8MXqfjRF8CUp3vqPXFXaR3PQ8
	ADEL92SGkqmd5jNz5EwN+W7VcpQ8yYvUDnqdj5snkGSR/FsLBpoUPhon9yzeYsd0aRPOh6BREI+oG
	cMF8Pn82LM+f5HR9GZDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t96Ng-00000007pCR-3yKD;
	Thu, 07 Nov 2024 17:33:17 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t96Nf-00000007pBO-0BPd
	for linux-phy@lists.infradead.org;
	Thu, 07 Nov 2024 17:33:16 +0000
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-7e9e38dd5f1so1020988a12.0
        for <linux-phy@lists.infradead.org>; Thu, 07 Nov 2024 09:33:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731000793; x=1731605593; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6HftcmsOOs+Ls9qs/ilXFXGyq529PGQ4QO+JwXX/wik=;
        b=PokBaFpNxgfMcDamPZxXdIH9qWQ6M3Yg2Cwo9Imm6jXp6nMmULpiB06iOw9/FnDudA
         Is8vdGi2YyGoUlsKYO1V4xW0GnTfYt0NPwjmHMgnx+IbITDiOJVCPqYFCJm8WQdSvjc6
         Zb+dK/bVD73hXOkVu/QDu9Hhum5meYd3ChyXfIruulkVEVfJGx2oqa5dq+4M4UirUKsC
         F8yaYBp/b93YW9DYs+jhb7owVayXL5YYC9LpgSFFAQ66DCfv/J0AvlBAQCHkL0HTMAMP
         ImXK3+vQLtNRmtYhh5BS217BFQakI37eQf8Lqt7W+N61rJEeeR500jU4cYibSCDEaqZY
         QUYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731000793; x=1731605593;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6HftcmsOOs+Ls9qs/ilXFXGyq529PGQ4QO+JwXX/wik=;
        b=EvzV3634MPFLGNUMaHvmttv3M3yS6uy0XI/ORccNRxUV3wcp2RAdAXTcN+ezI0HJcO
         40jskOBJKtvgwrqg8yrJ58gpxeY0D7HRvQvsg1kGOyHuJtWYh+fROlDLyFqxW0nEB/VO
         DJwWkhEvDnRmgeCF9Vi2LzmmvdRcht4VZ1pGqho89kBvCBoPliUXus9o5zsm74mvYNlO
         o14yBMgPz3cgt34YnAiwS4gNHgOprFI0hPMHuR7rEr70sBMuB8Gyl9HUVm2tzOjjrX1p
         zTDF8dmu3fNT8fAArPrwgst87gyXbLXTbQqEFbukwmy7xY4+Bn18iRlA9Y2Jvfj/Qb3v
         mpRQ==
X-Gm-Message-State: AOJu0Yzc3zaY52I6pEwaYzmJO4Y6/6mRmtHXq1sNMZDC2hRQ6N8IqUYu
	BFuXLKnsubmW7bzXKceBe+FUu20HySNzr37GKQ5xghn0h/rVlGTs/rhIH89dhODMpOouFJs+SPW
	+9v5Z4FgeFjLfrKnIHC7IEyItUp9cVw==
X-Google-Smtp-Source: AGHT+IEJ8zWmzbfoKjIq//36/+CYuY7j1PnwnpoNb20YuudbiCyf8+lGcJqZlqV568JLMcy5XcjBjUGlLD8TC4ubmdw=
X-Received: by 2002:a17:90b:2f03:b0:2e9:20d8:4147 with SMTP id
 98e67ed59e1d1-2e9b1475c8fmr54805a91.33.1731000793175; Thu, 07 Nov 2024
 09:33:13 -0800 (PST)
MIME-Version: 1.0
References: <20241026132014.73050-1-aford173@gmail.com>
In-Reply-To: <20241026132014.73050-1-aford173@gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Thu, 7 Nov 2024 11:33:01 -0600
Message-ID: <CAHCN7x+Mdp72oiuLb3dM+sOy7DfdVWoakxH92yxvmW3oSPNPLw@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20241107_093315_103050_4EE7C8E2 
X-CRM114-Status: GOOD (  17.99  )
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
cmllZGVyIFNjaHJlbXBmIDxmcmllZGVyLnNjaHJlbXBmQGtvbnRyb24uZGU+Cj4gLS0tCj4gVjI6
ICBGaXggdHlwbyBpbiBjb21tZW50CgpWaW5vZCwKCklzIHRoZXJlIGFueSBjaGFuY2UgdGhpcyBz
ZXJpZXMgY291bGQgYWxzbyBiZSBhcHBsaWVkIGZvciB0aGUgbmV4dApyZWxlYXNlPyAgSSBkb24n
dCBrbm93IHdoYXQgdGhlIGN1dG9mZiBkZWFkbGluZSBpcywgc28gaWYgSSdtIHRvbwpsYXRlLCBJ
IGFwb2xvZ2l6ZS4KCmFkYW0KPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUv
cGh5LWZzbC1zYW1zdW5nLWhkbWkuYyBiL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNh
bXN1bmctaGRtaS5jCj4gaW5kZXggMmM4MDM4ODY0MzU3Li40MTJjMDNiN2RjZDYgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMKPiArKysg
Yi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhkbWkuYwo+IEBAIC00MDYs
MTYgKzQwNiwxNSBAQCBzdGF0aWMgdW5zaWduZWQgbG9uZyBmc2xfc2Ftc3VuZ19oZG1pX3BoeV9m
aW5kX3Btcyh1bnNpZ25lZCBsb25nIGZvdXQsIHU4ICpwLCB1MQo+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgY29udGludWU7Cj4KPiAgICAgICAgICAgICAgICAgICAgICAgICAvKgo+
IC0gICAgICAgICAgICAgICAgICAgICAgICAqIFRPRE86IFJlZiBNYW51YWwgZG9lc24ndCBzdGF0
ZSB0aGUgcmFuZ2Ugb2YgX20KPiAtICAgICAgICAgICAgICAgICAgICAgICAgKiBzbyB0aGlzIHNo
b3VsZCBiZSBmdXJ0aGVyIHJlZmluZWQgaWYgcG9zc2libGUuCj4gLSAgICAgICAgICAgICAgICAg
ICAgICAgICogVGhpcyByYW5nZSB3YXMgc2V0IGJhc2VkIG9uIHRoZSBvcmlnaW5hbCB2YWx1ZXMK
PiAtICAgICAgICAgICAgICAgICAgICAgICAgKiBpbiB0aGUgbG9va3VwIHRhYmxlCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICogVGhlIFJlZiBtYW51YWwgZG9lc24ndCBleHBsaWNpdGx5IHN0
YXRlIHRoZSByYW5nZSBvZiBNLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAqIGJ1dCBpdCBk
b2VzIHNob3cgaXQgYXMgYW4gOC1iaXQgdmFsdWUsIHNvIHJlamVjdAo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAqIGFueSB2YWx1ZSBhYm92ZSAyNTUuCj4gICAgICAgICAgICAgICAgICAgICAg
ICAgICovCj4gICAgICAgICAgICAgICAgICAgICAgICAgdG1wID0gKHU2NClmb3V0ICogKF9wICog
X3MpOwo+ICAgICAgICAgICAgICAgICAgICAgICAgIGRvX2Rpdih0bXAsIDI0ICogTUhaKTsKPiAt
ICAgICAgICAgICAgICAgICAgICAgICBfbSA9IHRtcDsKPiAtICAgICAgICAgICAgICAgICAgICAg
ICBpZiAoX20gPCAweDMwIHx8IF9tID4gMHg3YikKPiArICAgICAgICAgICAgICAgICAgICAgICBp
ZiAodG1wID4gMjU1KQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29udGludWU7
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgX20gPSB0bXA7Cj4KPiAgICAgICAgICAgICAgICAg
ICAgICAgICAvKgo+ICAgICAgICAgICAgICAgICAgICAgICAgICAqIFJldiAyIG9mIHRoZSBSZWYg
TWFudWFsIHN0YXRlcyB0aGUKPiAtLQo+IDIuNDUuMgo+CgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
