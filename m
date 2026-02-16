Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A356E7BD8B
	for <linux-phy@archiver.kernel.org>; Mon, 16 Feb 2026 10:41:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C6XzkZo29S1DpniwQDIRIy+9PbLMEULCAwGKeIHZoUU=; b=MEZn0T11uV1Lam
	BbKshrhvceNevMJJ1Sf3cQujhPGGXpYOMB3IpgcnFgzNgkWsmSZ6t3Oxf9d55jfLHrouefULRw2Ys
	sgNk+MbWNWJzxjru1mG5KLjBoaIPhkKrDoklH/0fg6dlGuOzu8KwDzmLmBO8wJSGgaYJFMfq9hxJs
	8sfEo9PtgNlhBGfPaMDasow9Gk+cYP2EElwqHUgJdp5/G62bwAspGJck7QG+mlJ9pR4rRVhA4jrqa
	YeLZvIju78bCjphELCipcLUAJzn4O/jSBYFBozTTx+YyqQz1PHzDdvrgiopXXz8YR+CMuhlktJCn7
	CH8bP1Pp4QuvIHGlcBpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrw2z-00000006N0Y-0cCk;
	Mon, 16 Feb 2026 10:41:45 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrw2y-00000006N0S-0oyW
	for linux-phy@lists.infradead.org;
	Mon, 16 Feb 2026 10:41:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 46DB3600B0;
	Mon, 16 Feb 2026 10:41:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5AB5C19422;
	Mon, 16 Feb 2026 10:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771238502;
	bh=gz+Bkg7Hm+LIbTebWklcCLYcJyitSgHeu8WvkTXpLis=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WD1wYf5Uh42SaCiML58TMhtZiwCODawtKV4wLQdkwvLmAP2uUvqm/iMyWrsN0eqOu
	 TIvV74JufuwbS8j5euvDST3q9cPilJJVtUURlqwx9q5Qq15nsv3p+ZTVJvR7/a6Zul
	 4ZMhYFNUBYxLUnHxBV798eNkLm3DYwpo0WOnBUJKhJtqvb1bVFl4pjSo8tcgyuqkHV
	 nkGg9QkWGvMq1xCG+L5GeQHV9NjjFIy5oMjzfA6qiaKKQruAErwp1pNrI3zqTJCGdk
	 P/Dvw5Oc9YBzpheUsTO2LNRPawXu6pWdHjjyd5mNiBeJM7VbDAv7sTfw5PUiEe2t8z
	 ktkLuWLkwn1mg==
Received: from johan by rho.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1vrw2s-000000000Rz-2iKl;
	Mon, 16 Feb 2026 11:41:38 +0100
Date: Mon, 16 Feb 2026 11:41:38 +0100
From: Johan Hovold <johan@kernel.org>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com,
	neil.armstrong@linaro.org, konrad.dybcio@oss.qualcomm.com,
	Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH v3 5/5] phy: qcom: snps-femto-v2: Fix possible NULL-deref
 on early runtime suspend
Message-ID: <aZL0YhiDcUwKaIz4@hovoldconsulting.com>
References: <20260205160240.748371-1-loic.poulain@oss.qualcomm.com>
 <20260205160240.748371-6-loic.poulain@oss.qualcomm.com>
 <aY7pvakkOnaYsd5p@hovoldconsulting.com>
 <CAFEp6-3yk3sPXj+hGuWvAFsFJAXjH4kWLV8k_5_v9Hax0XxaOg@mail.gmail.com>
 <aY8Asvu-1u0e02oJ@hovoldconsulting.com>
 <CAFEp6-0rzkqc0ajN72q=mv3U-TT0JHMSPmnJD6ohKuLmbPz2-A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFEp6-0rzkqc0ajN72q=mv3U-TT0JHMSPmnJD6ohKuLmbPz2-A@mail.gmail.com>
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

T24gRnJpLCBGZWIgMTMsIDIwMjYgYXQgMDQ6MDQ6NDNQTSArMDEwMCwgTG9pYyBQb3VsYWluIHdy
b3RlOgo+IE9uIEZyaSwgRmViIDEzLCAyMDI2IGF0IDExOjQ14oCvQU0gSm9oYW4gSG92b2xkIDxq
b2hhbkBrZXJuZWwub3JnPiB3cm90ZToKCj4gPiBCdXQgSSdtIGxpdGVyYWxseSBhc2tpbmcgZm9y
ICp3aGF0KiB3b3VsZCB0cmlnZ2VyIHRoZSBzdXNwZW5kIGluIHRoYXQKPiA+IGluaXRpYWwgd2lu
ZG93IGJldHdlZW4gZW5hYmxlKCkgYW5kIGZvcmJpZCgpIGNhdXNlIEkgZG9uJ3Qgc2VlIGl0Lgo+
IAo+IFRvIGJlIGhvbmVzdCwgSSBoYWQgbm90IGluaXRpYWxseSBsb29rZWQgaW50byB0aGUgZXhh
Y3QgY2F1c2Ugb2YgdGhlCj4gc3VzcGVuZCB0cmlnZ2VyIHVudGlsIG5vdywgYnV0IGhlcmUgaXMg
d2hhdCBpcyBoYXBwZW5pbmcuCj4gCj4gVGhlIFBIWSBpcyBhIHN1cHBsaWVyIG9mIHRoZSBVU0Ig
ZGV2aWNlLiBBIFVTQiBkZXZpY2UgY2Fubm90IGJlIHByb2JlZAo+IHVudGlsIGFsbCBpdHMgc3Vw
cGxpZXJzIGFyZSByZWFkeS4gQXMgbG9uZyBhcyB0aGUgUEhZIGlzIG5vdCByZWFkeSwgdGhlCj4g
ZGV2aWNlIGNvcmUga2VlcHMgcmV0cnlpbmcgdGhlIHByb2JlLCB3aGljaCBmYWlscyB3aXRoIC1F
UFJPQkVfREVGRVIuCj4gCj4gQXQgc29tZSBwb2ludCB0aGUgUEhZIHByb2JlIGZpbmFsbHkgcnVu
cywgYnV0IHRoZSBkZXZpY2UgY29yZSBtYXkgc3RpbGwgYmUKPiBhdHRlbXB0aW5nIHRvIHByb2Jl
IHRoZSBVU0IgZGV2aWNlIGNvbmN1cnJlbnRseS4KPiAKPiBJbnNpZGUgX19kcml2ZXJfcHJvYmVf
ZGV2aWNlKCksIHdlIGhhdmU6Cj4gCj4gICAgIHJldCA9IHJlYWxseV9wcm9iZShkZXYsIGRydik7
Cj4gICAgIHBtX3JlcXVlc3RfaWRsZShkZXYpOwo+IAo+ICAgICBpZiAoZGV2LT5wYXJlbnQpCj4g
ICAgICAgICBwbV9ydW50aW1lX3B1dChkZXYtPnBhcmVudCk7Cj4gCj4gICAgIHBtX3J1bnRpbWVf
cHV0X3N1cHBsaWVycyhkZXYpOwo+ICAgICByZXR1cm4gcmV0Owo+IAo+IFRoaXMgbWVhbnMgdGhh
dCB3aGVuZXZlciBhIFVTQiBwcm9iZSBhdHRlbXB0IGNvbXBsZXRlcywgd2hldGhlciB3aXRoIGFu
Cj4gZXJyb3Igb3Igbm90LCBpdHMgc3VwcGxpZXJzIGFyZSByZWxlYXNlZCB2aWEgcG1fcnVudGlt
ZV9wdXRfc3VwcGxpZXJzKCkuCj4gUmVsZWFzaW5nIHN1cHBsaWVycyBtYXkgaW4gdHVybiB0cmln
Z2VyIGEgcnVudGltZSBzdXNwZW5kLgo+IAo+IEluIG91ciBjYXNlLCBzaW5jZSB0aGUgUEhZIGlz
IGEgc3VwcGxpZXIgb2YgdGhlIFVTQiBkZXZpY2UsIHRoZSBVU0IgY29yZQo+IGtlZXBzICdsb29w
aW5nJyBpbiBfX2RyaXZlcl9wcm9iZV9kZXZpY2UoKSByZXR1cm5pbmcgLUVQUk9CRV9ERUZFUiB1
bnRpbAo+IHRoZSBQSFkgYmVjb21lcyByZWFkeS4gQXMgYSByZXN1bHQsIHBtX3J1bnRpbWVfcHV0
X3N1cHBsaWVycygpIG1heSBydW4KPiBjb25jdXJyZW50bHkgd2l0aCB0aGUgUEhZJ3MgcHJvYmUg
ZnVuY3Rpb24uIElmIHRoaXMgaGFwcGVucyBhZnRlcgo+IHJ1bnRpbWUgUE0gaGFzIGJlZW4gZW5h
YmxlZCBmb3IgdGhlIFBIWSwgYnV0IGJlZm9yZSB0aGUgZHJpdmVyIGhhcwo+IGZvcmJpZGRlbiBz
dXNwZW5kIG9yIHRha2VuIGEgUE0gcmVmZXJlbmNlLCB0aGUgUEhZIG1heSBlbmQgdXAgYmVpbmcK
PiBydW50aW1lLXN1c3BlbmRlZCAndW5leHBlY3RlZGx5Jy4KClRoYW5rcyBmb3IgdHJhY2tpbmcg
dGhhdCBkb3duLiBUaGF0J3MgYW4gdW5leHBlY3RlZCBzaWRlIGVmZmVjdCBvZgpmd19kZXZsaW5r
IGFkZGluZyBydW50aW1lIHBtIGVuYWJsZWQgbGlua3MgKHdoaWNoIGlzIHRoZSBkZWZhdWx0CmJl
aGF2aW91ciBzaW5jZSBsYXRlIDIwMjMpLgoKSm9oYW4KCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
