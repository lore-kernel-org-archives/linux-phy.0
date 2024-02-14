Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FA86C48BC3
	for <linux-phy@archiver.kernel.org>; Wed, 14 Feb 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dMBnRtW2fnucYpKHtCZgYx+3pmEGOHBp+VfFsaKdE2U=; b=xA1g5Psah6gT3u
	Y0R+VjNxF4jakpxkOSggydkOUG8u55ee9urrngHHSmvSmwV7Beznq1aghBsRIslr+BnB+WGekMXcO
	g5KTuLLuh6JhloyQ1M6BDjo+RqnWLVIaMP+JgZuSnLbEdo2hpv8X+cN2VOwyCBdt0V+MGzQNbl3D5
	TkQwa5p74DOQGX6ax9nkCt5SajW5keKunA4CuP9+vvAaS0/QWaC87XK5UarfYR8CMayMKiCRs44LL
	nQc8iE6xbb7tYEoCg+bcivODM5R6QHhfiBkewTUaAVCtp+nKoHNebIbeoc/zzKcT/7aqt9rp/Ghxh
	Umxh6dRO/gXBX0P+XXEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raEUT-0000000Cqcq-0bmm;
	Wed, 14 Feb 2024 12:35:53 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raEUQ-0000000CqbG-0leX;
	Wed, 14 Feb 2024 12:35:51 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-296e8c8d218so3938536a91.3;
        Wed, 14 Feb 2024 04:35:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707914148; x=1708518948; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KuQsJK3xx4vzJDNKSqqrpk7uzcrIY6fu81NCi7MHe2w=;
        b=XUAyaIq8gihpl+1gJcM2I4O9J/ZYf+UHnCy2IOHrHdJfQA4JTI332V1MHxRiku138r
         JHGgMfBWGmDdQxw2s6J379yu3wc82X1y2Ty0nh3w0F6DxIlTBg2EilGO12ZU1JsvO31v
         TztpN4zmes3aS6n1xRg71AbFzTtsVjEyj6zadSYAKK0qBYKIJu18QK5Mn6HMXOj5KWIa
         nthq1DaOMSrTF5vDkWufXTPQSgXKbaZn4WLPuMehP1pgnsCK0iOnGa1vKbWKZ/6XK6fr
         AsA5EV+EPUfl1sO8bdwSxpaXHdjzRGKnUTF9jBNgqlylgvw95BDLlxXL8vLnA9fbogV9
         re9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707914148; x=1708518948;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KuQsJK3xx4vzJDNKSqqrpk7uzcrIY6fu81NCi7MHe2w=;
        b=wRo+ePtdR9KyIBaoR4UkCsG9w6wvbDaNazOsS0c9EalSlencsB0Mdsb48H0/Vw8br9
         fyYXshsJ21bMuRDBuP6GnU4aS2Vy47WO3T42FbOyLLfuadmChboL/u9cW2WHg7x9WQ8o
         JZ4wvLUmmhZbxaZEhasz9A2KX5aUvH974VwwvuMo8/2R+7a6uD6nwQtzJ2OSRd0Yai1q
         +ohsF/wB0afVqnDT+ToMEmDg3joNVAqgaxsUHroCuBAgBjZxBXbOsAwNzuOgcV5qLHcC
         3RfpLJgEC/MLtRuhpgoe8zg+O6EuA6dE5TagVahbmDwN7+256Jk8gEJKzdZJXOgQLe4f
         k3NA==
X-Forwarded-Encrypted: i=1; AJvYcCWxdLXFC/V4Gq6rilAbHahuq3TymYOBulDpP8bIBjiCKDQlfu9UhU5Mw2GZrf3RPrXTbOqQa98Rx8woNl7HuPDyAG1cZ6zmFMQ4xBV5dQ==
X-Gm-Message-State: AOJu0YzAYfmyvMxh8bLa9nSMsqd1Flhnqdvh+cLOpzU7/F1rlc9eghsY
	eD1RrIM2kmzR0OQkZPnbzosvEH3tw0IwEhaE9pvlFRMBNoewxZgoA7yuGLbH7w2KTOPdhxadUDU
	m/iuq8f0F7yk/s8b8bkKbrMDn8I4=
X-Google-Smtp-Source: AGHT+IER90ym3bDK7JudSoNNudRE0z+M1P+V1ivLZu6NX3UJfAamDs2NQ97Mj+3rkSkXqNsZ2saJSmewlkm0u0vVcRk=
X-Received: by 2002:a17:90a:5d08:b0:298:a9a5:48ba with SMTP id
 s8-20020a17090a5d0800b00298a9a548bamr2462478pji.20.1707914147948; Wed, 14 Feb
 2024 04:35:47 -0800 (PST)
MIME-Version: 1.0
References: <20240210204606.11944-1-aford173@gmail.com> <20240210204606.11944-3-aford173@gmail.com>
 <20240214121448.451e2e1c@booty>
In-Reply-To: <20240214121448.451e2e1c@booty>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 14 Feb 2024 06:35:36 -0600
Message-ID: <CAHCN7xKa3svzoRiQZ=KO-zwpmXL7Dw7hOp7B0MF-2EQCQ=f-eA@mail.gmail.com>
Subject: Re: [PATCH V4 2/6] phy: freescale: add Samsung HDMI PHY
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: linux-arm-kernel@lists.infradead.org, marex@denx.de, 
	aford@beaconembedded.com, Lucas Stach <l.stach@pengutronix.de>, 
	Richard Leitner <richard.leitner@skidata.com>, Marco Felsch <m.felsch@pengutronix.de>, 
	Alexander Stein <alexander.stein@ew.tq-group.com>, 
	Frieder Schrempf <frieder.schrempf@kontron.de>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	NXP Linux Team <linux-imx@nxp.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_043550_250068_45C18584 
X-CRM114-Status: GOOD (  20.65  )
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

T24gV2VkLCBGZWIgMTQsIDIwMjQgYXQgNToxNOKAr0FNIEx1Y2EgQ2VyZXNvbGkgPGx1Y2EuY2Vy
ZXNvbGlAYm9vdGxpbi5jb20+IHdyb3RlOgo+Cj4gT24gU2F0LCAxMCBGZWIgMjAyNCAxNDo0NTo1
OCAtMDYwMAo+IEFkYW0gRm9yZCA8YWZvcmQxNzNAZ21haWwuY29tPiB3cm90ZToKPgo+ID4gRnJv
bTogTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+Cj4gPgo+ID4gVGhpcyBhZGRz
IHRoZSBkcml2ZXIgZm9yIHRoZSBTYW1zdW5nIEhETUkgUEhZIGZvdW5kIG9uIHRoZQo+ID4gaS5N
WDhNUCBTb0MuIEJhc2VkIG9uIGRvd25zdHJlYW0gaW1wbGVtZW50YXRpb24gZnJvbQo+ID4gU2Fu
ZG9yIFl1IDxTYW5kb3IueXVAbnhwLmNvbT4uICBBY2NvcmRpbmcgdG8gdGhlIFRSTSwgdGhlIFBI
WQo+ID4gcmVjZWl2ZXMgcGFyYWxsZWwgZGF0YSBmcm9tIHRoZSBsaW5rIGFuZCBzZXJpYWxpemVz
IGl0LiAgSXQKPiA+IGFsc28gc2V0cyB0aGUgUExMIGNsb2NrIG5lZWRlZCBmb3IgdGhlIFRYIHNl
cmlhbGl6ZXIuCj4gPgo+ID4gVGVzdGVkLWJ5OiBMdWNhIENlcmVzb2xpIDxsdWNhLmNlcmVzb2xp
QGJvb3RsaW4uY29tPiAodjIpCj4gPiBUZXN0ZWQtYnk6IFJpY2hhcmQgTGVpdG5lciA8cmljaGFy
ZC5sZWl0bmVyQHNraWRhdGEuY29tPiAodjIpCj4gPiBDby1kZXZlbG9wZWQtYnk6IE1hcmNvIEZl
bHNjaCA8bS5mZWxzY2hAcGVuZ3V0cm9uaXguZGU+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBNYXJjbyBG
ZWxzY2ggPG0uZmVsc2NoQHBlbmd1dHJvbml4LmRlPgo+ID4gU2lnbmVkLW9mZi1ieTogTHVjYXMg
U3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+Cj4gPiBUZXN0ZWQtYnk6IEFsZXhhbmRlciBT
dGVpbiA8YWxleGFuZGVyLnN0ZWluQGV3LnRxLWdyb3VwLmNvbT4KPiA+IFRlc3RlZC1ieTogRnJp
ZWRlciBTY2hyZW1wZiA8ZnJpZWRlci5zY2hyZW1wZkBrb250cm9uLmRlPiAjIEtvbnRyb24gQkwK
PiA+IFRlc3RlZC1ieTogTHVjYSBDZXJlc29saSA8bHVjYS5jZXJlc29saUBib290bGluLmNvbT4K
PiA+IFNpZ25lZC1vZmYtYnk6IEFkYW0gRm9yZCA8YWZvcmQxNzNAZ21haWwuY29tPgo+Cj4gWy4u
Ll0KPgo+ID4gK3N0YXRpYyBpbnQgcGh5X2Nsa19yZWdpc3RlcihzdHJ1Y3QgZnNsX3NhbXN1bmdf
aGRtaV9waHkgKnBoeSkKPiA+ICt7Cj4gPiArICAgICBzdHJ1Y3QgZGV2aWNlICpkZXYgPSBwaHkt
PmRldjsKPiA+ICsgICAgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAgPSBkZXYtPm9mX25vZGU7Cj4g
PiArICAgICBzdHJ1Y3QgY2xrX2luaXRfZGF0YSBpbml0Owo+ID4gKyAgICAgY29uc3QgY2hhciAq
cGFyZW50X25hbWU7Cj4gPiArICAgICBzdHJ1Y3QgY2xrICpwaHljbGs7Cj4gPiArICAgICBpbnQg
cmV0Owo+ID4gKwo+ID4gKyAgICAgcGFyZW50X25hbWUgPSBfX2Nsa19nZXRfbmFtZShwaHktPnJl
ZmNsayk7Cj4gPiArCj4gPiArICAgICBpbml0LnBhcmVudF9uYW1lcyA9ICZwYXJlbnRfbmFtZTsK
PiA+ICsgICAgIGluaXQubnVtX3BhcmVudHMgPSAxOwo+ID4gKyAgICAgaW5pdC5mbGFncyA9IDA7
Cj4gPiArICAgICBpbml0Lm5hbWUgPSAiaGRtaV9wY2xrIjsKPiA+ICsgICAgIGluaXQub3BzID0g
JnBoeV9jbGtfb3BzOwo+ID4gKwo+ID4gKyAgICAgcGh5LT5ody5pbml0ID0gJmluaXQ7Cj4gPiAr
Cj4gPiArICAgICBwaHljbGsgPSBkZXZtX2Nsa19yZWdpc3RlcihkZXYsICZwaHktPmh3KTsKPiA+
ICsgICAgIGlmIChJU19FUlIocGh5Y2xrKSkKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIGRldl9l
cnJfcHJvYmUoZGV2LCBQVFJfRVJSKHBoeWNsayksCj4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICJmYWlsZWQgdG8gcmVnaXN0ZXIgY2xvY2tcbiIpOwo+ID4gKwo+ID4gKyAg
ICAgcmV0ID0gb2ZfY2xrX2FkZF9wcm92aWRlcihucCwgb2ZfY2xrX3NyY19zaW1wbGVfZ2V0LCBw
aHljbGspOwo+Cj4gQXMgcGVyIG15IHY4IHJldmlldywgdGhpcyBmdW5jdGlvbiBpcyBkZXByZWNh
dGVkOgo+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2LjgtcmM0L3NvdXJjZS9k
cml2ZXJzL2Nsay9jbGsuYyNMNDg4MQo+CgpXaGVuIEkgZm91bmQgb3V0IHRoYXQgdGhlIGVudGly
ZSBkcml2ZXIgSSBwdWxsZWQgd2FzIHRoZSB3cm9uZwpzdGFydGluZyBwb2ludCwgYW5kIG5vdGlj
ZWQgdGhhdCB0aGlzIHZlcnNpb24gaGFkIHZlcnkgbGl0dGxlIGluCmNvbW1vbiB3aXRoIHRoZSBw
cmV2aW91cyBvbmUsIEkgZGlkbid0IHJldmlldyB0aGUgZmVlZGJhY2sga25vd2luZyB0aGEKdEkg
d291bGQgaGF2ZSB0aHJvd24gYXdheSBhbnkgb2YgdGhlIHRhZ3MgZnJvbSBpdCBzaW5jZSBpdCB3
YXMgc3VjaCBhCmRyYXN0aWMgY2hhbmdlLiAgSSBzaG91bGQgaGF2ZSBjYXVnaHQgaXQsIGJ1dCBJ
IG1pc3NlZCBpdCwgc28KYXBvbG9naWVzIGZvciB0aGF0LiAgSSB3aWxsIGJlIHN1cmUgdG8gaW5j
bHVkZSB0aGlzIGZlZWRiYWNrIGluIHRoZQpuZXh0IGF0dGVtcHQuCgoKPiBIb3dldmVyOgo+Cj4g
W1Rlc3RlZCB1c2luZyBBdm5ldCBNU0MgU00yUy1JTVg4UExVUyBTb00gb24gQXZuZXQgTVNDIFNN
Mi1NQi1FUDFdCj4gVGVzdGVkLWJ5OiBMdWNhIENlcmVzb2xpIDxsdWNhLmNlcmVzb2xpQGJvb3Rs
aW4uY29tPgoKVGhhbmtzIGZvciB0ZXN0aW5nLgoKYWRhbQo+Cj4gTHVjYQo+Cj4gLS0KPiBMdWNh
IENlcmVzb2xpLCBCb290bGluCj4gRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVlcmlu
Zwo+IGh0dHBzOi8vYm9vdGxpbi5jb20KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
