Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E0EECD4F4C
	for <linux-phy@archiver.kernel.org>; Mon,  9 Sep 2024 07:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tAqNjj0Z9Er1KOwtrgnraCcbAfjW7/6amuHTQHA4CRY=; b=Ly1T8rnrdydu2u
	RVAzMO16ukkwfmN57mXGCAX2Z+tDjamsFc/tgS1SW4dBEaU654SvaIzy4uPvmPJAxGwAMtq9hoXYi
	qrdyMuTmYRrNXHPvYfxgV/pYZJQZdQIOr+r1HNXeGL52vhLcdC5JSN3cehzv0hijLlyKgw59ug6Ep
	pBfeccQTdxmB2JNeNsKmnnmtWLlb3285YJ21l7eL6Qw6UCHWyZdWFnZ4rGqK/EnZf6Jy662wTbJtP
	12iiePI+rgp49/DSs4fyyB9t8EY/gCm7VQq6YxbzbYU6C5SVwUp+ba2m+euligZJknAftyAVuT3j7
	QfcD7x7AgK+KMiHsWdrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snYVA-00000000jM3-0LXn;
	Mon, 09 Sep 2024 07:07:56 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snYV7-00000000jLO-2c13
	for linux-phy@lists.infradead.org;
	Mon, 09 Sep 2024 07:07:55 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-5c3cdba33b0so4372715a12.1
        for <linux-phy@lists.infradead.org>; Mon, 09 Sep 2024 00:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1725865671; x=1726470471; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pO9t18GD+i5fBFY4VXd+D6OTewDWbOLXCFnosdNxa/U=;
        b=GpSISOPswRULZ+oWenVzvdMYYrUmAt2ntrXGuY0PVgd0VTvFjHJhBZLWYMJAyUMEp3
         KJIIp16qpCpIpBN8PGB6+il9OqEaHyrMza/CnrLRv6GRudRKm6A1qU8Patrn50v0I34S
         BDyVYANmGXH/M+zktjOr4jvcaQcaEQdyG5R/VXE56276DFK0G3yYMThBGaDYKOk+1+hC
         a7yYxgoPkT4VAD8gQdleQMZRPvPCnHafpBIbv3/0LOxpqqrZ5R+CzCx0pWKER/roVFRl
         wmqYWInw4LqYPy/xyBVHz+sSQU9oqYLUUH2ASIuXAsubJIkyVCiuC44w1sF4WsukFcmG
         bDhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725865671; x=1726470471;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pO9t18GD+i5fBFY4VXd+D6OTewDWbOLXCFnosdNxa/U=;
        b=S8HBVIk3//UtmquOHoTdEXjGZrQ5sG3+Q3wCo8WGDp47jo3iheIk4Qbtr3zWm2LGji
         PMeiYiRc/oAGSYniz7R3bSoDAYh68GW+wVD1JEMLxsFwj48vv/KgF6wASEZz/BP8xEFY
         lgubaUDb0M2VluSztJhFgNG7RvBzmcmFABVfyBW2tCl7uVmRvXXo5hAqmT4XmUQoMLeQ
         76qwMVVm8ntA2H1Tf/fnKOFTTVbfe6BKQvcSHFQeTaCaFUXQOdorbA7pSRAvYsLMYhg6
         bORCB/KLSwr7SaiGpBUu2IF0nSwChShsOpCBvk7z8xbdrBtGOlgxhX4v3zskHxS7OWTH
         eV/g==
X-Forwarded-Encrypted: i=1; AJvYcCWWi52c1N/7MchvEM/asPdtqAajbrBKiLXBkpPcVYgXMWHMljpTcZ+xt3k98gTKU0ZcUyebi8h4i1U=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw7yU37w05MSEPU09FWzwLkWLKSetIAkFRaJkMmKTjxBthKAPpA
	WbxWWei9hlEK7BGnyEnsCyTj+RxYfddhGBbmfmap4+Knlg7si248PV2+zZHJB20=
X-Google-Smtp-Source: AGHT+IEzFtJpDjpFcpaOK3zi2wC6+pmxuHOiV7xQ9M52ggf8MDENIzb7c111uhTAimm5UAc+Fb65+g==
X-Received: by 2002:a17:907:7421:b0:a8a:8d81:97a8 with SMTP id a640c23a62f3a-a8a8d81aa63mr707722566b.1.1725865670935;
        Mon, 09 Sep 2024 00:07:50 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8d25d40064sm297908166b.190.2024.09.09.00.07.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Sep 2024 00:07:50 -0700 (PDT)
Message-ID: <503ed037-a16c-41b0-bb13-4ea11fcd2362@tuxon.dev>
Date: Mon, 9 Sep 2024 10:07:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: renesas: rcar-gen3-usb2: Fix an error handling
 path in rcar_gen3_phy_usb2_probe()
Content-Language: en-US
To: Biju Das <biju.das.jz@bp.renesas.com>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
References: <4efe2d0419cbe98163e2422ebe0c7896b8a5efed.1725717505.git.christophe.jaillet@wanadoo.fr>
 <TY3PR01MB113468D1573C1E50AC9F97DCF86982@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <d01bed96-7811-4ace-8b92-1ee9fafac649@wanadoo.fr>
 <TY3PR01MB113466A2B99EE80E8BB0A94AD86992@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <TY3PR01MB113466A2B99EE80E8BB0A94AD86992@TY3PR01MB11346.jpnprd01.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_000753_792428_57245564 
X-CRM114-Status: GOOD (  22.18  )
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

CgpPbiAwOS4wOS4yMDI0IDA5OjAwLCBCaWp1IERhcyB3cm90ZToKPiBIaSBDaHJpc3RvcGhlIEpB
SUxMRVQsCj4gCj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4+IEZyb206IENocmlzdG9w
aGUgSkFJTExFVCA8Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI+Cj4+IFNlbnQ6IFN1bmRh
eSwgU2VwdGVtYmVyIDgsIDIwMjQgNTo1OSBQTQo+PiBTdWJqZWN0OiBSZTogW1BBVENIIHYyXSBw
aHk6IHJlbmVzYXM6IHJjYXItZ2VuMy11c2IyOiBGaXggYW4gZXJyb3IgaGFuZGxpbmcgcGF0aCBp
bgo+PiByY2FyX2dlbjNfcGh5X3VzYjJfcHJvYmUoKQo+Pgo+PiBMZSAwOC8wOS8yMDI0IMOgIDE4
OjM5LCBCaWp1IERhcyBhIMOpY3JpdMKgOgo+Pj4gSGkgQ2hyaXN0b3BoZSBKQUlMTEVULAo+Pj4K
Pj4+IFRoYW5rcyBmb3IgdGhlIHBhdGNoLgo+Pj4KPj4+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2Ut
LS0tLQo+Pj4+IEZyb206IENocmlzdG9waGUgSkFJTExFVCA8Y2hyaXN0b3BoZS5qYWlsbGV0QHdh
bmFkb28uZnI+Cj4+Pj4gU2VudDogU2F0dXJkYXksIFNlcHRlbWJlciA3LCAyMDI0IDI6NTkgUE0K
Pj4+PiBTdWJqZWN0OiBbUEFUQ0ggdjJdIHBoeTogcmVuZXNhczogcmNhci1nZW4zLXVzYjI6IEZp
eCBhbiBlcnJvcgo+Pj4+IGhhbmRsaW5nIHBhdGggaW4KPj4+PiByY2FyX2dlbjNfcGh5X3VzYjJf
cHJvYmUoKQo+Pj4+Cj4+Pj4gSWYgYW4gZXJyb3Igb2NjdXJzIGFmdGVyIHRoZSByY2FyX2dlbjNf
cGh5X3VzYjJfaW5pdF9idXMoKSwKPj4+PiByZXNldF9jb250cm9sX2Fzc2VydCgpIG11c3QgYmUg
Y2FsbGVkLCBhcyBhbHJlYWR5IGRvbmUgaW4gdGhlIHJlbW92ZSBmdW5jdGlvbi4KPj4+Pgo+Pj4+
IFRoaXMgaXMgZmluZSB0byByZS11c2UgdGhlIGV4aXN0aW5nIGVycm9yIGhhbmRsaW5nIHBhdGgs
IGJlY2F1c2UgZXZlbgo+Pj4+IGlmICJjaGFubmVsLT5yc3RjIiBpcyBzdGlsbCBOVUxMIGF0IHRo
aXMgcG9pbnQsIGl0IGlzIHNhZmUgdG8gY2FsbCByZXNldF9jb250cm9sX2Fzc2VydChOVUxMKS4K
Pj4+Pgo+Pj4+IEZpeGVzOiA0ZWFlMTYzNzUzNTcgKCJwaHk6IHJlbmVzYXM6IHJjYXItZ2VuMy11
c2IyOiBBZGQgc3VwcG9ydCB0bwo+Pj4+IGluaXRpYWxpemUgdGhlIGJ1cyIpCj4+Pj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXN0b3BoZSBKQUlMTEVUIDxjaHJpc3RvcGhlLmphaWxsZXRAd2FuYWRvby5m
cj4KPj4+PiAtLS0KPj4+PiBDaGFuZ2VzIGluIHYyOgo+Pj4+ICAgIC0gUmUtdXNlICdlcnJvcicg
dG8gc2ltcGxpZnkgdGhlIHBhdGNoICAgW2NsYXVkaXUgYmV6bmVhXQo+Pj4+ICAgIC0gVXBkYXRl
IHRoZSBjb21taXQgZGVzY3JpcHRpb24gdG8gZXhwbGFpbiB3aHkgaXQgaXMgc2FmZS4KPj4+Pgo+
Pj4+IHYxOgo+Pj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9mYzlmN2I0NDRmMGNhNjQ1
NDExODY4OTkyYmJlMTY1MTRhZWNjZmVkLgo+Pj4+IDE3MjU2NTI2NTQuZ2l0LmNocmlzdG9waGUu
amFpbGxldAo+Pj4+IEB3YW5hZG9vLmZyLwo+Pj4+IC0tLQo+Pj4+ICAgZHJpdmVycy9waHkvcmVu
ZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYyB8IDEgKwo+Pj4+ICAgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcmVuZXNhcy9w
aHktcmNhci1nZW4zLXVzYjIuYwo+Pj4+IGIvZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1n
ZW4zLXVzYjIuYwo+Pj4+IGluZGV4IDU4ZTEyMzMwNTE1Mi4uY2NiMGI1NGI3MGY3IDEwMDY0NAo+
Pj4+IC0tLSBhL2RyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmMKPj4+PiAr
KysgYi9kcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jCj4+Pj4gQEAgLTgw
Myw2ICs4MDMsNyBAQCBzdGF0aWMgaW50IHJjYXJfZ2VuM19waHlfdXNiMl9wcm9iZShzdHJ1Y3Qg
cGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+Pj4+ICAgCXJldHVybiAwOwo+Pj4+Cj4+Pj4gICBlcnJv
cjoKPj4+PiArCXJlc2V0X2NvbnRyb2xfYXNzZXJ0KGNoYW5uZWwtPnJzdGMpOwo+Pj4KPj4+IFRo
aXMgd2lsbCByZXN1bHQgaW4gZWl0aGVyIGtlcm5lbCBjcmFzaCBbMV0gb3IgcmVzZXQgdXNhZ2Ug
Y291bnQKPj4+IGltYmFsYW5jZSBpbiBjYXNlIG9mIGVycm9yIFsyXSBhbmQgWzNdIGluCj4+PiBy
Y2FyX2dlbjNfcGh5X3VzYjJfaW5pdF9idXMoKSBzZWUgWzRdLiBBbHNvIHJlc2V0IGNvbnRyb2wg
QVBJIGlzIG5vdAo+Pj4gcmVzcGVjdGVkIGZvciBTb0NzIG90aGVyIHRoYW4gUlovRzNTLiBGb3Ig
dGhvc2UgU29DJ3MgcmVzZXQgYXNzZXJ0IGlzCj4+PiBjYWxsZWQgd2l0aG91dCBjYWxsaW5nIGEg
Z2V0KCkuIE1heWJlIGFkZCBhIGNoZWNrIChwaHlfZGF0YS0+aW5pdF9idXMpCj4+PiBmb3IgYXNz
ZXJ0IGFwaSdzLCB0aGF0IGd1YXJhbnRlZXMgYXNzZXJ0IGlzIGNhbGxlZCBhZnRlciBjYWxsaW5n
IGEgZ2V0KCkgYXMgaXQgdmFsaWQgb25seSBmb3IKPj4gUlovRzNTPz8KPj4+Cj4+PiBbMV0KPj4+
IGNoYW5uZWwtPnJzdGMgPSBkZXZtX3Jlc2V0X2NvbnRyb2xfYXJyYXlfZ2V0X3NoYXJlZChkZXYp
Owo+Pj4gCWlmIChJU19FUlIoY2hhbm5lbC0+cnN0YykpCj4+PiAJCXJldHVybiBQVFJfRVJSKGNo
YW5uZWwtPnJzdGMpOwo+Pj4KPj4+IFsyXQo+Pj4gcmV0ID0gcG1fcnVudGltZV9yZXN1bWVfYW5k
X2dldChkZXYpOwo+Pj4gCWlmIChyZXQpCj4+PiAJCXJldHVybiByZXQ7Cj4+PiBbM10KPj4+IHJl
dCA9IHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQoY2hhbm5lbC0+cnN0Yyk7Cj4+PiAJaWYgKHJldCkK
Pj4+IAkJZ290byBycG1fcHV0OwoKSW5kZWVkLCBJIG1pc3NlZCB0aGF0LiBUaGFuayB5b3UsIEJp
anUsIGZvciBwb2ludGluZyBpdCBvdXQuCgo+Pj4KPj4+IFs0XQo+Pj4gaHR0cHM6Ly9lbGl4aXIu
Ym9vdGxpbi5jb20vbGludXgvdjYuMTEtcmM2L3NvdXJjZS9kcml2ZXJzL3Jlc2V0L2NvcmUuYwo+
Pj4gI0w0ODMKPj4KPj4gU28sIGlmIEkgdW5kZXJzdGFuZCBjb3JyZWN0bHksIHYxIFs1XSB3YXMg
Y29ycmVjdC4gOikKPiAKPiBZZXMsIEkgYWdyZWUgdjEgWzVdIGlzIGNvcnJlY3QsIGlmIHdlIGln
bm9yZSAicmVzZXQgY29udHJvbCBBUEkgaXMgbm90IHJlc3BlY3RlZCBmb3IgU29DcyIuCj4gCj4g
QW5vdGhlciBzb2x1dGlvbiBjb3VsZCBiZSB1c2luZyBhY3Rpb25fb3JfcmVzZXQoKSBmb3IgY2xl
YW51cCBmb3IKPiByY2FyX2dlbjNfcGh5X3VzYjJfaW5pdF9idXMoKSwgc28gdGhhdCBpdCBpcyBh
cHBsaWNhYmxlIG9ubHkgZm9yIFJaL0czUz8/CgpUaGF0IHNlZW1zIGxpa2UgYSBjbGVhbmVyIHNv
bHV0aW9uIHRvIG1lLgoKVGhhbmsgeW91LApDbGF1ZGl1IEJlem5lYQoKPiAKPiBDaGVlcnMsCj4g
QmlqdQo+IAo+Pgo+Pgo+PiBJIGRvbid0IHRoaW5rIHRoYXQgWzFdIHdvdWxkIGNyYXNoLCBiZWNh
dXNlIG9mIFs2XS4gSXQgd291bGQgb25seSBXQVJOX09OLiBCdXQgd2l0aCB2MSwgaXQgaXMgbm90
Cj4+IGNhbGxlZC4KPj4KPj4gV2l0aCB2MSwgcmVzZXRfY29udHJvbF9hc3NlcnQoKSBpcyBub3Qg
Y2FsbGVkIGlmCj4+IHJjYXJfZ2VuM19waHlfdXNiMl9pbml0X2J1cygpIGZhaWxzLiBTbyBbMl0g
YW5kIFszXSBjYW4ndCBvY2N1ci4KPj4KPj4gSSBjYW4gc2VuZCBhIHYzLCB3aGljaCBpcyB0aGUg
c2FtZSBvZiB2MSwgb3IgeW91IGNhbiBwaWNrIHYxIGFzLWlzIChpZiBJJ20gY29ycmVjdC4uLiA6
KSkgb3IgeW91IGNhbgo+PiBqdXN0IGlnbm9yZSBpdCBpZiAicmVzZXQgY29udHJvbCBBUEkgaXMg
bm90IHJlc3BlY3RlZCBmb3IgU29DcyIuCj4+Cj4+Cj4+IElmIG9mIGludGVyZXN0LCBJIHNwb3R0
ZWQgaXQgd2l0aCBvbmUgb2YgbXkgY29jY2luZWxsZSBzY3JpcHQgdGhhdCBjb21wYXJlcyBmdW5j
dGlvbnMgY2FsbGVkCj4+IGluIC5yZW1vdmUgZnVuY3Rpb24sIGJ1dCBub3QgaW4gZXJyb3IgaGFu
ZGxpbmcgcGF0aCBvZiBwcm9iZS4KPj4KPj4KPj4gQ0oKPj4KPj4gWzVdOgo+PiBodHRwczovL2xv
cmUua2VybmVsLm9yZy9hbGwvZmM5ZjdiNDQ0ZjBjYTY0NTQxMTg2ODk5MmJiZTE2NTE0YWVjY2Zl
ZC4xNzI1NjUyNjU0LmdpdC5jaHJpc3RvcGhlLmphaWxsZXQKPj4gQHdhbmFkb28uZnIvCj4+Cj4+
IFs2XToKPj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYuMTEtcmM2L3NvdXJj
ZS9kcml2ZXJzL3Jlc2V0L2NvcmUuYyNMNDczCj4+Cj4+Pgo+Pj4gQ2hlZXJzLAo+Pj4gQmlqdQo+
Pj4KPj4+PiAgIAlwbV9ydW50aW1lX2Rpc2FibGUoZGV2KTsKPj4+Pgo+Pj4+ICAgCXJldHVybiBy
ZXQ7Cj4+Pj4gLS0KPj4+PiAyLjQ2LjAKPj4+Pgo+Pj4KPj4+Cj4+Pgo+IAoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
