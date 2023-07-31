Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F32ACC001DF
	for <linux-phy@archiver.kernel.org>; Mon, 31 Jul 2023 11:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r4NQQ8Q2WSinv056uH7A9OJ3WlCq2VdSZ9VflTF7I+E=; b=PYn6C/8Mc/q2lL
	PV4TDXWW3MeAwMGVL0FvVt9gqtzpbUvIyZYfJ8pikvPnznId3OXDmp5GDU1epqbTiPKnfREwVxhCE
	xR6RymTYFQpCKbx78whu5N9IBaAPI3JU84iKj7Dc6JygaICP/pCr+RqYIggDoxqT2f+diHQ+U0ACu
	ErSQc7DX+XTQlgrYkScQUksAWufFSEa78zpTW7suD1mMHiY2zIV/WNnR5SCyiFlKhG7joXjGw3eWT
	H8KIXH9fVmdB2T/DiBAE5cWvDit/yREquDx9prcFqh+zG7vKW9i9aTcD6hm/rt1tZc/sbAEZlKyiC
	PFrUlkxZ09wIdiouPtoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQRGG-00FLyk-2I;
	Mon, 31 Jul 2023 11:40:28 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQRGD-00FLyA-2l
	for linux-phy@lists.infradead.org;
	Mon, 31 Jul 2023 11:40:27 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-3fe078dcc3aso25900105e9.2
        for <linux-phy@lists.infradead.org>; Mon, 31 Jul 2023 04:40:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690803623; x=1691408423;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lpsB/ElvQMGjwWkfRPLhrxgtPWCbUwSCi16uuII2EPE=;
        b=HRdLE1HZR47SzouBsrKG1OFfuang7aQvfv08D6YBhkRO1OWtZNtunpNhmVC+XRZzfm
         C1FEjVq7OlZnsnJr9slb9Wlmryma5StgI3SR/LYULrmfZo9Ae2mMxP4jRtVpGewRkwH5
         pxMnTM7b+s0YnV3OvsCfUEry/CEYm+r3QiU0viwdrHytY992JunB/TViAcra00feqBAf
         ZLaiJqsAG22pf6OXho9VVIA0r5PADcBpz/MGA5zgjw4gUyLnpxooX2QMGz/9m6P0IlPk
         dXya6RBuP3nbAU8OISecRYQl3pKFU926ja+uWAul/hzBU4UtA5hpwz4IizUXXEDgGdYm
         AsrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690803623; x=1691408423;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lpsB/ElvQMGjwWkfRPLhrxgtPWCbUwSCi16uuII2EPE=;
        b=kbs5ksPiKZUUjrXWG5Z1bgYHzq7moULnSbTumDhA018MTVym7mlmG/cpCe9GfTBEEF
         ew91KkOuhk40OMlTodI7UjieJWuJBdQ4iM6befBLi+DjLZ7MFK0vPLUd9zKqFxplnIcT
         Idz2M6PYqRtoEQlkJ/A2bMSp6IrxYJg0QcRHyC4V44z7hJ4BBnAGd4aya+61hF+ETTY5
         xPNJ6YcRUbs9MLWM4uD6n0jqv2e4EQigK+hWKvcu3O+7U0mfky61n6Rbnm0sx5OWSMDR
         kgP4b2MDj93gTnFP36RgE5ZRQyyTKyzpnRfkvqgMHE1dkRSTncZJFXE3YgFih5qCrp05
         W2IA==
X-Gm-Message-State: ABy/qLZIjuk9n1oVZ9x7elrzWKMLVUUva0bJHaeRPPMph2wgOeuqAGfY
	K1C4CVr+AVZzaGrXT2z/RPc35tsQq+EpXsMNHHw=
X-Google-Smtp-Source: APBJJlHxLXer4ql+uqpOBOW5nVd6x7tTnXS1FS+v8/2jLQCB087DDz+esZOTi+rRfE0RilfNiGEnSg==
X-Received: by 2002:a7b:c045:0:b0:3fc:62c:8275 with SMTP id u5-20020a7bc045000000b003fc062c8275mr7067393wmc.35.1690803623681;
        Mon, 31 Jul 2023 04:40:23 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id n19-20020a7bc5d3000000b003fbc30825fbsm11077341wmk.39.2023.07.31.04.40.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:40:23 -0700 (PDT)
Date: Mon, 31 Jul 2023 14:40:20 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Stanley =?utf-8?B?Q2hhbmdb5piM6IKy5b63XQ==?= <stanley_chang@realtek.com>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
Subject: Re: [bug report] phy: realtek: usb: Add driver for the Realtek SoC
 USB 2.0 PHY
Message-ID: <e7ff2870-c30c-4d8d-a7a9-d2d6a4962eb5@kadam.mountain>
References: <707bcae8-3178-4247-a272-50e8b8d3e5a2@moroto.mountain>
 <00d467e7ff1e419c98f827b3cfc02554@realtek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00d467e7ff1e419c98f827b3cfc02554@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_044025_948794_3C7976CD 
X-CRM114-Status: GOOD (  17.21  )
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

T24gTW9uLCBKdWwgMzEsIDIwMjMgYXQgMTA6NDQ6NDFBTSArMDAwMCwgU3RhbmxleSBDaGFuZ1vm
mIzogrLlvrddIHdyb3RlOgo+ID4gICAgIDg5NiAgICAgICAgIH0gZWxzZSB7Cj4gPiAgICAgODk3
ICAgICAgICAgICAgICAgICB1bnNpZ25lZCBjaGFyICpidWY7Cj4gPiAgICAgODk4ICAgICAgICAg
ICAgICAgICBzaXplX3QgYnVmX3NpemU7Cj4gPiAgICAgODk5Cj4gPiAgICAgOTAwICAgICAgICAg
ICAgICAgICBidWYgPSBudm1lbV9jZWxsX3JlYWQoY2VsbCwgJmJ1Zl9zaXplKTsKPiA+IAo+ID4g
bnZtZW1fY2VsbF9yZWFkKCkgY2FuIGZhaWwuCj4gPiAKPiA+IFNvbWV0aW1lcywgaXQncyBva2F5
IG90IGlnbm9yZSBlcnJvcnMsIGxpa2UgaWYgeW91ciByZWFkcyBmcm9tIFBDSSBzdGFydCBmYWls
aW5nLAo+ID4gdGhlbiB0aGVyZSBpcyBub3RoaW5nIHdlIGNhbiBkbyBhcyBhIGtlcm5lbC4gIFRo
ZSB1c2VyIG5lZWRzIHRvIGJ1eSBuZXcKPiA+IGhhcmR3YXJlLiAgV2UgbmVlZCB0aGUgc2VyZW5p
dHkgdG8gaWdub3JlIHRoZSB0aGluZ3Mgd2UgY2Fubm90IGZpeC4KPiA+IAo+ID4gQnV0IGhlcmUg
dGhlIGFsbG9jYXRpb24gY2FuIGZhaWwuICBTbyB0aGF0IG5lZWRzIHRvIGJlIGNoZWNrZWQgYW5k
IGhhbmRsZWQKPiA+IGNvcnJlY3RseS4KPiA+IAo+ID4gLS0+IDkwMSAgICAgICAgICAgICAgICAg
dmFsdWUgPSBidWZbMF0gJiBwaHlfY2ZnLT5kY19kcml2aW5nX21hc2s7Cj4gPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIF5eXl5eXgo+ID4gd2FybmluZwo+ID4gCj4gPiAgICAgOTAy
Cj4gPiAgICAgOTAzICAgICAgICAgICAgICAgICBrZnJlZShidWYpOwo+ID4gICAgIDkwNCAgICAg
ICAgICAgICAgICAgbnZtZW1fY2VsbF9wdXQoY2VsbCk7Cj4gPiAgICAgOTA1ICAgICAgICAgfQo+
ID4gICAgIDkwNgo+ID4gCj4gCj4gSSB3aWxsIGZpeCB0aGlzIGVycm9yLgo+IAo+IEkgcmFuIGJ5
Cj4gMS4gbWFrZSAtajMyIENIRUNLPSIvaG9tZS90b29scy9zbWF0Y2gvc21hdGNoL3NtYXRjaCIg
Qz0xCj4gMi4gfi9wYXRoL3RvL3NtYXRjaC9zbWF0Y2hfc2NyaXB0cy9rY2hlY2tlciAtLXNwYW1t
eSBkcml2ZXJzL21vZGlmaWVkX2ZpbGUuYwo+IFJlZmVyIHRvIGh0dHBzOi8vYmxvZ3Mub3JhY2xl
LmNvbS9saW51eC9wb3N0L3NtYXRjaC1zdGF0aWMtYW5hbHlzaXMtdG9vbC1vdmVydmlldy1ieS1k
YW4tY2FycGVudGVyCj4gCj4gQnV0IEkgY2FuJ3QgZ2V0IHRoaXMgZXJyb3IuCj4gCj4gUGxlYXNl
IGhlbHAgcHJvdmlkZSB0aGUgY2hlY2sgbWV0aG9kLgoKWW91IG5lZWQgdG8gaGF2ZSB0aGUgY3Jv
c3MgZnVuY3Rpb24gZGF0YWJhc2UgZm9yIHRoaXMuICBUaGUgbm9ybWFsCndheSB3b3VsZCBiZSB0
byBydW4gc21hdGNoX3NjcmlwdHMvYnVpbGRfa2VybmVsX2RhdGEuc2ggYnV0IGl0IHRha2VzCmhv
dXJzIGFuZCBob3VycyB0byBydW4uCgpZb3UgY291bGQganVzdCBsb2FkIHRoZSBpbmZvcm1hdGlv
biBmcm9tIGRyaXZlcnMvbnZtZW0vY29yZS5jIGlmIHlvdQp3YW50OgoKfi9wYXRoL3RvL3NtYXRj
aC9zbWF0Y2hfc2NyaXB0cy9rY2hlY2tlciAtLWluZm8gZHJpdmVycy9udm1lbS9jb3JlLmMgfCB0
ZWUgb3V0Cn4vcGF0aC90by9zbWF0Y2gvc21hdGNoX2RhdGEvZGIvY3JlYXRlX2RiLnNoIG91dAp+
L3BhdGgvdG8vc21hdGNoL3NtYXRjaF9zY3JpcHRzL2tjaGVja2VyIGRyaXZlcnMvcGh5L3JlYWx0
ZWsvcGh5LXJ0ay11c2IyLmMKCnJlZ2FyZHMsCmRhbiBjYXJwZW50ZXIKCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
