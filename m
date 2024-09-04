Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C2A2CD3431
	for <linux-phy@archiver.kernel.org>; Wed,  4 Sep 2024 10:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p43zDFvmB+sVXozNY+0Th47bytSO3XEgv26Fvd7Wv8c=; b=Wbx7ER8R/mBlRn
	pdGJ+/L3HsiVVZ1bLhctMe+X4pEkVJEdTFR1Ui2p7EgGlO+k3q1EIMAnDq/qfKiJybcbwd9p/MVUy
	fEMsvZ7JFYtg/ef8RejMJoQp22b3OHACrs7PxuRsOQRsMMHDSwOpTjAZ8icmGoErwvQE+DdrRfiMQ
	kFdb+pctUZlIExLwNBwUH3+6YOJz2hM7QbayNEksxLhP0Expf+Z6p/SWfrA8+knGcHGXf3unNrCqD
	IyHGUv/kFOtTZhCQIzxs7ohLBH78B0JLq1kZJZju4A7KSWmwR1MZ5aJmNyK+AbRT/AEIUHQqARc2L
	4VR7g6aWhTgpc0xznq/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slnUI-00000003yKE-0Tzd;
	Wed, 04 Sep 2024 10:43:46 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slnNw-00000003xJL-1P31
	for linux-phy@lists.infradead.org;
	Wed, 04 Sep 2024 10:37:13 +0000
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-2da4e84c198so477276a91.0
        for <linux-phy@lists.infradead.org>; Wed, 04 Sep 2024 03:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725446231; x=1726051031; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pbu/icIc7/hyFZ/DdTfsPV3H3VognL1oCqHfvJ4X8DU=;
        b=DUenAH6V/wHQ9SgGQWvL7JNUmSithJ5M4fUTDbRJklRWxmn7kPAhUxy5Z7roJVxrNW
         Sl27kdmMjNnh04E/V0h7QaSl25+f2gfS2YFr1Q6rofuxUx8vsjlHii6x5vB+t6Ul+61s
         8K5I+OiU8kXLiYF9yhWFWw6MjM6VAnMSPgSIJ/tgahZNlD2czsKCTwRuz/oq9UiTrj0T
         VybnwFClnAJlbv4Tl6g4+QGGsXGKobezOXsySFQD9vX5YHIH8bN5yDlshNZmMUL/MpWu
         57ddUWK76DLYqDKvD/YD2RwGwoE1M+LxEFGaFlKFVgdWFYf5VXJh2jaAqPCDrBE+SU1u
         0zcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725446231; x=1726051031;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pbu/icIc7/hyFZ/DdTfsPV3H3VognL1oCqHfvJ4X8DU=;
        b=o9RgoWGLJkOKOyrHcna7NzYaJEpj2oDSYBcYPEm/RFcYiWeS21XWdEpwLBnAPVNbZF
         459bQt7uFUupvkTp6aenTT5oMB0AND8RdEWDuQWQNhW7MLg7hjvO9fmjrzvjh2g/iIE9
         zmfeIxsQrEdURbs+jnfWcr3Gkjk1m6CQl+hVQjdafCDo12AJNzjiZP+J2xR2PbIj/Ix9
         AvOK1QpOcQHPIOh6nNQelj2g6AlxPMWIdMVIcD3NgFLN5TvarXQnrBgFFsma1R9RCilG
         J3DXxXST7qANOqinmkIUQxe98faDOv26VV/jCdZCyptcHgvKfHOJ+5GaUnE96t2S49tl
         HSZA==
X-Gm-Message-State: AOJu0Yy0XNVLD0ST0sYtmnyAmwCP06Q29e78ZmPAmIlvgAGt3D2yF3Pn
	7HsSkEo+MY3+ODbb3tIH74cAozuzMK/37viXnLvHx0GcvVauoZmhkRLw+umg8r+9jP9dQ+4Tx+V
	cAriAM6l5Uu15KUqjglvGnvZWz4c=
X-Google-Smtp-Source: AGHT+IEqnCHpM71TxcCzxlh5HmS53l5IAtHeNDxP7q4z8YV/B7I7l4DlGy62WOJiAHqcnCLGZfdviQfJoLhOumsdlDs=
X-Received: by 2002:a17:90b:4b45:b0:2d8:b923:b56a with SMTP id
 98e67ed59e1d1-2d8b923b62emr10140827a91.41.1725446231190; Wed, 04 Sep 2024
 03:37:11 -0700 (PDT)
MIME-Version: 1.0
References: <20240903013113.139698-1-aford173@gmail.com> <20240903013113.139698-4-aford173@gmail.com>
 <ZtgaOlHi93b_py7T@atmark-techno.com>
In-Reply-To: <ZtgaOlHi93b_py7T@atmark-techno.com>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 4 Sep 2024 05:37:00 -0500
Message-ID: <CAHCN7xJs1AefLJ1=0FfOs=A2B-gE5sC_VSVS6aGVhnSPOKDuxg@mail.gmail.com>
Subject: Re: [PATCH V4 3/5] phy: freescale: fsl-samsung-hdmi: Support dynamic integer
To: Dominique Martinet <dominique.martinet@atmark-techno.com>
Cc: linux-phy@lists.infradead.org, linux-imx@nxp.com, festevam@gmail.com, 
	frieder.schrempf@kontron.de, aford@beaconembedded.com, Sandor.yu@nxp.com, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Lucas Stach <l.stach@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_033712_414516_0B1BAACB 
X-CRM114-Status: GOOD (  39.26  )
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

T24gV2VkLCBTZXAgNCwgMjAyNCBhdCAzOjI44oCvQU0gRG9taW5pcXVlIE1hcnRpbmV0Cjxkb21p
bmlxdWUubWFydGluZXRAYXRtYXJrLXRlY2huby5jb20+IHdyb3RlOgo+Cj4gQWRhbSBGb3JkIHdy
b3RlIG9uIE1vbiwgU2VwIDAyLCAyMDI0IGF0IDA4OjMwOjQ1UE0gLTA1MDA6Cj4gPiBUaGVyZSBp
cyBjdXJyZW50bHkgYSBsb29rLXVwIHRhYmxlIGZvciBhIHZhcmlldHkgb2YgcmVzb2x1dGlvbnMu
Cj4gPiBTaW5jZSB0aGUgcGh5IGhhcyB0aGUgYWJpbGl0eSB0byBkeW5hbWljYWxseSBjYWxjdWxh
dGUgdGhlIHZhbHVlcwo+ID4gbmVjZXNzYXJ5IHRvIHVzZSB0aGUgaW50Z2VyIGRpdmlkZXIgd2hp
Y2ggc2hvdWxkIGFsbG93IG1vcmUKPiA+IHJlc29sdXRpb25zIHdpdGhvdXQgaGF2aW5nIHRvIHVw
ZGF0ZSB0aGUgbG9vay11cC10YWJsZS4KPiA+Cj4gPiBJZiB0aGUgbG9va3VwIHRhYmxlIGNhbm5v
dCBmaW5kIGFuIGV4YWN0IG1hdGNoLCBmYWxsIGJhY2sgdG8gdGhlCj4gPiBkeW5hbWljIGNhbGN1
bGF0b3Igb2YgdGhlIGludGVnZXIgZGl2aWRlci4KPiA+Cj4gPiBQcmV2aW91c2x5LCB0aGUgdmFs
dWUgb2YgUCB3YXMgaGFyZC1jb2RlZCB0byAxLCB0aGlzIHJlcXVpcmVkIGFuCj4gPiB1cGRhdGUg
dG8gdGhlIHBoeV9wbGxfY2ZnIHRhYmxlIHRvIGFkZCBpbiB0aGUgZXh0cmEgdmFsdWUgaW50byB0
aGUKPiA+IHRhYmxlLCBzbyBpZiB0aGUgdmFsdWUgb2YgUCBpcyBjYWxjdWxhdGVkIHRvIGJlIHNv
bWV0aGluZyBlbHNlCj4gPiBieSB0aGUgUE1TIGNhbGN1bGF0b3IsIHRoZSBjYWxjdWxhdGVkX3Bo
eV9wbGxfY2ZnIHN0cnVjdHVyZQo+ID4gY2FuIGJlIHVzZWQgaW5zdGVhZCB3aXRob3V0IGhhdmlu
ZyB0byBrZWVwIHRyYWNrIG9mIHdoaWNoIG1ldGhvZAo+ID4gd2FzIHVzZWQuCj4gPgo+ID4gU2ln
bmVkLW9mZi1ieTogQWRhbSBGb3JkIDxhZm9yZDE3M0BnbWFpbC5jb20+Cj4KPiBJJ3ZlIHJlY2hl
Y2tlZCB0aGlzIHNlcmllcyB3aXRoIGFicygpIGFkZGVkIGluIHRoZSBsYXRlciBwYXRjaCBhbmQg
dGhpcwoKT2ggc2hvb3QsIEkgdG90YWxseSBtaXNzZWQgeW91ciByZXF1ZXN0IGZvciB0aGUgYWJz
IHBhdGNoLgpTb3JyeSBhYm91dCB0aGF0LiAgRG8geW91IHdhbnQgbWUgdG8gZG8gYSBWNj8KCmFk
YW0KCj4gbG9va3MgZmluZTsgYWxsIG1vZGVzIEkgdHJpZWQgcHJvcGVybHkgc3luY2VkIHVwIHdp
dGggbXkgbW9uaXRvci4KPiAoZXhjZXB0IG9uZSBidXQgSSBkb24ndCBzZWUgc2V0X3JhdGUoKSBi
ZWluZyBjYWxsZWQgZm9yIGl0IHNvIGl0J3MKPiBzb21ldGhpbmcgZWxzZSkKPgo+IChPbiBhIHNl
bWktdW5yZWxhdGVkIG5vdGUgb24gbXkgYmFja3BvcnQgSSBnZXQgYSAiUExMIGZhaWxlZCB0byBs
b2NrIgo+IG1lc3NhZ2UgZm9yIHRoZSBmaXJzdCBzeW5jIG9ubHksIGJ1dCBldmVyeXRoaW5nIHNl
ZW1zIHRvIHdvcmsgcmVnYXJkbGVzcwo+IGV2ZW4gaWYgdGhlcmUgaXMgbm8gZnVydGhlciBzZXRf
cmF0ZSgpLCBzbyBJJ2xsIHByZXRlbmQgSSBkaWRuJ3Qgc2VlCj4gdGhhdC4uLiB0aGUgb2xkIGNv
ZGUganVzdCBoYXMgYSAyMG1zIHdhaXQgd2l0aG91dCBhbnkgY2hlY2sgc28gaXQncyBub3QKPiBs
aWtlIGl0IHdhcyBhbnkgYmV0dGVyLi4uIGFueXdheSB0aGF0J3MgdW5yZWxhdGVkIHRvIHRoaXMg
c2VyaWUpCj4KPiBJJ20gYWxzbyBjb25maWRlbnQgZW5vdWdoIHNldF9yYXRlKCkgd29uJ3QgYmUg
Y2FsbGVkIGluIHBhcmFsbGVsIHdpdGgKPiBkaWZmZXJlbnQgcmF0ZXMgZm9yIG15IGRldmljZSBz
byBJJ20gZmluZSB3aXRoIHRoZSBuZXcgZ2xvYmFsLCBsZXR0aW5nCj4gb3RoZXJzIGNvbXBsYWlu
IGlmIHRoYXQncyBhIHByb2JsZW0gZm9yIHRoZW0uCj4KPgo+IFNvLCBmZWVsIGZyZWUgdG8gYWRk
IHRoaXMgdG8gYWxsIDUgcGF0Y2hlczoKPiBUZXN0LWJ5OiBEb21pbmlxdWUgTWFydGluZXQgPGRv
bWluaXF1ZS5tYXJ0aW5ldEBhdG1hcmstdGVjaG5vLmNvbT4KPgo+IEp1c3Qgb25lIHN0eWxlIG5p
dHBpY2s6Cj4KPiA+IEBAIC00NTMsMjkgKzU0MSw3MCBAQCBzdGF0aWMgdW5zaWduZWQgbG9uZyBw
aHlfY2xrX3JlY2FsY19yYXRlKHN0cnVjdCBjbGtfaHcgKmh3LAo+ID4gIHN0YXRpYyBsb25nIHBo
eV9jbGtfcm91bmRfcmF0ZShzdHJ1Y3QgY2xrX2h3ICpodywKPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgdW5zaWduZWQgbG9uZyByYXRlLCB1bnNpZ25lZCBsb25nICpwYXJlbnRfcmF0
ZSkKPiA+ICB7Cj4gPiArICAgICB1MzIgaW50X2Rpdl9jbGs7Cj4gPiAgICAgICBpbnQgaTsKPiA+
ICsgICAgIHUxNiBtOwo+ID4gKyAgICAgdTggcCwgczsKPiA+ICsKPiA+ICsgICAgIC8qIElmIHRo
ZSBjbG9jayBpcyBvdXQgb2YgcmFuZ2UgcmV0dXJuIGVycm9yIGluc3RlYWQgb2Ygc2VhcmNoaW5n
ICovCj4gPiArICAgICBpZiAocmF0ZSA+IDI5NzAwMDAwMCB8fCByYXRlIDwgMjIyNTAwMDApCj4g
PiArICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+ID4KPiA+ICsgICAgIC8qIENoZWNrIHRo
ZSBsb29rLXVwIHRhYmxlICovCj4gPiAgICAgICBmb3IgKGkgPSBBUlJBWV9TSVpFKHBoeV9wbGxf
Y2ZnKSAtIDE7IGkgPj0gMDsgaS0tKQo+ID4gICAgICAgICAgICAgICBpZiAocGh5X3BsbF9jZmdb
aV0ucGl4Y2xrIDw9IHJhdGUpCj4gPiAtICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHBoeV9w
bGxfY2ZnW2ldLnBpeGNsazsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBicmVhazsKPiA+ICsg
ICAgIC8qIElmIHRoZSByYXRlIGlzIGFuIGV4YWN0IG1hdGNoLCByZXR1cm4gaXQgbm93ICovCj4g
PiArICAgICBpZiAocmF0ZSA9PSBwaHlfcGxsX2NmZ1tpXS5waXhjbGspCj4gPiArICAgICAgICAg
ICAgIHJldHVybiBwaHlfcGxsX2NmZ1tpXS5waXhjbGs7Cj4gPiArCj4gPiArICAgICAvKgo+ID4g
KyAgICAgICogVGhlIG1hdGggb24gdGhlIGxvb2t1cCB0YWJsZSBzaG93cyB0aGUgUE1TIG1hdGgg
eWllbGRzIGEKPiA+ICsgICAgICAqIGZyZXF1ZW5jeSA1IHggcGl4Y2xrLgo+ID4gKyAgICAgICog
V2hlbiB3ZSBjaGVjayB0aGUgaW50ZWdlciBkaXZpZGVyIGFnYWluc3QgdGhlIGRlc2lyZWQgcmF0
ZSwKPiA+ICsgICAgICAqIG11bHRpcGx5IHRoZSByYXRlIHggNSBhbmQgdGhlbiBkaXZpZGUgdGhl
IG91dGNvbWUgYnkgNS4KPiA+ICsgICAgICAqLwo+ID4gKyAgICAgaW50X2Rpdl9jbGsgPSBmc2xf
c2Ftc3VuZ19oZG1pX3BoeV9maW5kX3BtcyhyYXRlICogNSwgJnAsICZtLCAmcykgLyA1Owo+Cj4g
SSBzdGlsbCB0aGluayBpdCBtYWtlcyBtb3JlIHNlbnNlIHRvIG1vdmUgdGhlICogNSwgLyA1IGFu
ZCBjb21tZW50Cj4gaW5zaWRlIGZzbF9zYW1zdW5nX2hkbWlfcGh5X2ZpbmRfcG1zIC0tIHRoZSBv
dGhlciBjYWxsZXIgZG9lc24ndCBoYXZlCj4gc3VjaCB0aGUgY29tbWVudCBzbyBpdCBtaWdodCBs
b29rIG9kZCBkZXBlbmRpbmcgb24gd2hlcmUgb25lIHN0YXJ0ZWQKPiBsb29raW5nLgo+Cj4gLS0K
PiBEb21pbmlxdWUKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
