Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47918FF886F
	for <linux-phy@archiver.kernel.org>; Sun,  3 May 2026 19:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0DOFvQ69S2FoY9MmoQhoOrFX1cbDwKeluPG4CmPVee8=; b=jomCHKEiSM3oDq
	1kflWqS4tNtl9Wfc3dbpv26Zg4EGvLplYQGycYAkCA0A4eWRcs9CMjvDy8oKe1OgkB73A3Kcdxkyy
	LWzqPqAwCxpDHNW8wY7FRB2F8A8fm++9+oiW29lIpk+/ik6wV2PulSl2VJOuLEYNYqpcOZD9bkWnM
	2C9LJzV+1Zke8JjRLGUX5vDz+Xz6bM6jxD/0adAh65q4L1Zrf3pfBNYubyGOXkLy5qSF7jv/6vt6a
	1FwM7ZL9Qr6tRmmYGMmj1N6iLRN+y3DnZZLgmMhQqVmee7bTf24+mr6+ztcuc2GJbIgqSPSG3zzmp
	Q8Za3u7NecwqLv5KTRog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJcFB-0000000BYzB-2GA5;
	Sun, 03 May 2026 19:12:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJcF9-0000000BYyS-1n9F;
	Sun, 03 May 2026 19:12:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=m7XKCC7wug1pLQcd2TXaUp0A00zqa9MN2HJS7LUAVAQ=; b=1Ov63H+17UQdOzimU/qw/ypJLo
	GrHdu2501S1ECDfJf0YtMh4cylYS8qL98v2cozq8QLw+mHT2BqRXsHFVZibaqGdNeV3xcT7TsB3VR
	797Ya0ofOY4X7zyP6dNw0ihs7DqfBqHibaNdG8Qb4qD6UIS+qCSf/rbinetsn/bjz5FLIPvQmcxWa
	cHhOrPjsSgbhpttiRMsVU1pusZUzhOBG8d0faboKYfZuaZ3n54AYy96sCSFw67YYXVDaPgMCqZNRN
	gVx3b4P8NlthIn7Q9US2pE1CQKIGJN6lGS0YKyzX/sWopwVY+qrE1YbA2hzCy5RIVGZ4IgBRqi5h3
	MFGSJrAQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Frank Wang <frank.wang@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Alexey Charkov <alchark@gmail.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 devicetree@vger.kernel.org, William Wu <william.wu@rock-chips.com>
Subject: Re: [PATCH v4 00/16] phy: rockchip: usbdp: Fixes,
 DP 1-lane support and cleanups
Date: Sun, 03 May 2026 21:12:33 +0200
Message-ID: <6960660.0VBMTVartN@phil>
In-Reply-To: <afd8xMS2hz208Lcl@vaman>
References: <20260428-rockchip-usbdp-cleanup-v4-0-7775671ece22@collabora.com>
 <afd8xMS2hz208Lcl@vaman>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_121243_548124_FF042DA4 
X-CRM114-Status: GOOD (  19.22  )
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

SGkgVmlub2QsCgpBbSBTb25udGFnLCAzLiBNYWkgMjAyNiwgMTg6NTA6MTIgTWl0dGVsZXVyb3DD
pGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBWaW5vZCBLb3VsOgo+IEhpIFNlYmFzdGlhbiwKPiAK
PiBPbiAyOC0wNC0yNiwgMTg6MTMsIFNlYmFzdGlhbiBSZWljaGVsIHdyb3RlOgo+ID4gVGhpcyBz
ZXJpZXMgb3ZlcmhhdWxzIHRoZSBSb2NrY2hpcCBVU0JEUCBkcml2ZXI7IGFwYXJ0IGZyb20gYQo+
ID4gYSBidW5jaCBvZiBjbGVhbnVwcyBhbmQgc21hbGwgaW1wcm92ZW1lbnRzIHRoZSBtYWluIGdv
YWwgaXMgdG8KPiA+IGdldCB0aGUgZHJpdmVyIHJlYWR5IGZvciBwcm9wZXIgVVNCLUMgRFAgQWx0
TW9kZSBzdXBwb3J0Lgo+ID4gCj4gPiBPbmNlIHRoaXMgc2VyaWVzIGhhcyBsYW5kZWQsIGl0IHVu
YmxvY2tzIGVuYWJsaW5nIHByb3BlciBVU0ItQwo+ID4gRFAgQWx0TW9kZSBvbiB0aGUgUkszNTg4
IGFuZCBSSzM1NzYgcGxhdGZvcm1zIGluY2wuIHJ1bnRpbWUgUE0KPiA+IGZvciB0aGUgU3lub3Bz
eXMgRGVzaWduV2FyZSBEaXNwbGF5UG9ydCBjb250cm9sbGVyLgo+ID4gCj4gPiBBcGFydCBmcm9t
IHRoaXMgc2VyaWVzLCBmdXJ0aGVyIGNoYW5nZXMgYXJlIHJlcXVpcmVkIG9uIHRoZQo+ID4gRFJN
IHNpZGUuIFRoZXJlIGFyZSBubyBjb21waWxlLXRpbWUgZGVwZW5kZW5jaWVzIGJldHdlZW4gdGhl
Cj4gPiBEUk0gc2lkZSBhbmQgdGhlIFBIWSBzaWRlLCBidXQgdGhlIFBIWSBzaWRlIG11c3QgYmUg
YXBwbGllZAo+ID4gdG8gYXZvaWQgU0Vycm9ycyBvbmNlIHJ1bnRpbWUgUE0gaXMgYWRkZWQgdG8g
dGhlIERpc3BsYXlQb3J0Cj4gPiBjb250cm9sbGVyIGRyaXZlci4gVGh1cyBpdCB3b3VsZCBiZSBy
ZWFsbHkgZ29vZCB0byBsYW5kIHRoaXMKPiA+IHNlcmllcyBpbiB0aGUgbmV4dCBtZXJnZSB3aW5k
b3cuCj4gCj4gTG9va3MgbGlrZSBzYXNpa28gaGFzIGZsYWdnZWQgOCBoaWdoIHdhcm5pbmcsIGNh
biB5b3UgcGxlYXNlIGNoZWNrIHRoZW0KCigxKSBhcyBtZW50aW9uZWQgaW4gYSBkaWZmZXJlbnQg
cGF0Y2ggdGhyZWFkLCByZXZpZXcgc2hvdWxkIGJlIGhhcHBlbmluZwpvbiB0aGUgbGlzdHMuIFRv
b2xzIHJlZ3VsYXJseSBkdW1wIG9sZCByZXN1bHRzLCBzbyBhbnlvbmUgbG9va2luZyBhdCB0aGUK
bWFpbGluZ2xpc3QgdGhyZWFkIG1pZ2h0IG5vdyBiZSBhYmxlIHRvIGZvbGxvdyBhbG9uZyB3aXRo
IHdoYXQgaGFwcGVuZWQKaW4gMiBtb250aHMgb3Igc28uCgpBbHNvIG90aGVyIHJvYm90IHRvb2xz
IGNhbiByZXBseSBvbiB0aGUgbGlzdHMganVzdCBmaW5lLgoKCigyKSBpZiAxLiBpcyBzbyBodWdl
bHkgaW1wb3NzaWJsZSwgcGxlYXNlIGF0IGxlYXN0IHByb3ZpZGUgc29tZSByZWZlcmVuY2UKdG8g
d2hhdCB5b3UgbWVhbi4gTm90IGV2ZXJ5Ym9keSBrbm93cyBhbGwgdGhlIGh5cGUtdG9vbHMtb2Yt
dGhlLXdlZWsgYW5kCnNpbXBseSBzZWFyY2hpbmcgZm9yIHRoYXQgbXlzdGVyaW91cyAic2FzaWtv
IiBbMF0gZGlkIG5vdCBwcm92aWRlIGFueQptZWFuaW5nZnVsIHJlc3VsdHMgZm9yIG1lLCBkZXNw
aXRlIHNvbWUgYW1hem9uIG9yIHlvdXR1YmUgbGlua3MgZm9yIHNvbWUKbm9uLWtlcm5lbCB1c2Vz
IG9mIHRoYXQgdGVybSA7LSkKClNvIGEgbGluayBzaG91bGQgYmUgcHJlc2VudCBhdCBsZWFzdCBw
bGVhc2UuCgoKVGhhbmtzCkhlaWtvCgoKWzBdIGh0dHBzOi8vZHVja2R1Y2tnby5jb20vP3E9JTIy
c2FzaWtvJTIyCgoKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
