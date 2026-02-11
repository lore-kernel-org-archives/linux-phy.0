Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76D4FECD6C4
	for <linux-phy@archiver.kernel.org>; Wed, 11 Feb 2026 16:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0XmRjJerCDmaIkoKaNpC//B54yJ+DPglwTMIC86tZp4=; b=gnKwbkk/+lwJ3O
	yzG1qfZ2wYxvhZsBXENVjbCykzVEdjmlXzu71hlXuD58v7MJ43wF6avpQKdcXfOstBSK84fhh/MBk
	wSO2lJdE9OhYly4oi/VFqlvVgw8ViqN+FXoGDLxTlNnPAyeZNMt7kDnosDDBtcHjw4b47ZSxQQeWj
	+IfVtAWapfKoqRWnIcDZDICwZpPRrpGxd0cnxvXp465fPqrR49QHQlVB+o0XLsi2CMQ6FuGc+YvAo
	PYXWDOoIJlSKOuCek+2kKAGH4HMgpYziIUWrO6UbFO5UodCBYiUSGp12YZbhtH64Yw2R6BcMngMy5
	gaw+ILy6jGaBgX8XeMhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqCue-00000000pzZ-41up;
	Wed, 11 Feb 2026 16:18:00 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqCuc-00000000pxN-05Ik
	for linux-phy@lists.infradead.org;
	Wed, 11 Feb 2026 16:17:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3767842AD9;
	Wed, 11 Feb 2026 16:17:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9726EC19423;
	Wed, 11 Feb 2026 16:17:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770826676;
	bh=18o8X62YvanS093uMPggd8PbG5ryv2EK9QMou/okpbY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MB8We5Y6o1kt/kCfSmacIh7m1Ca7XBsgDXkhhPkmAn6zH7gvm7qfVzEB9CqjX7CW+
	 TSQPKpc9AhrWmh4MovqTvW+ui/DP+wzpZKcBXoAyxnCnfSQEVM2ZTluI9ttayJ90TV
	 iLuhZoFxUqqCjLJfh93CL+QhCsf08z6sklw8Y9p+m5ACFVWNbx4YVQx3VZJamvWWPM
	 IkT/1ozSBiPxqwRZ8vj+dJ0lmddC38e83LK3uhrQLPpYgPwUaV8Ln9s53E8+KXi9E+
	 bzta94dKj91dQacKCr1wCuL303N2uVpxXEM7cONqPPKtRHrNs1prTSOiPBTbR9T2ox
	 2vVOee6RL9gzg==
Date: Wed, 11 Feb 2026 21:47:52 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
	Vladimir Oltean <olteanv@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>,
	linux-phy@lists.infradead.org, linux-mmc@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org, linux-next@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH next] phy: renesas: rcar-gen3-usb2: Drop local
 devm_mux_state_get_optional()
Message-ID: <aYyrsPTH1923jV7y@vaman>
References: <67c8c4f9bf9f09fd0c13daedef27b82ff389ddfb.1770720452.git.geert+renesas@glider.be>
 <CAPDyKFpY2X8hephSfHq7rj_DaKX76ZSkWSCYXrGTEBUFHkvOzg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFpY2X8hephSfHq7rj_DaKX76ZSkWSCYXrGTEBUFHkvOzg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_081758_102421_E5DFA7D1 
X-CRM114-Status: GOOD (  17.36  )
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

T24gMTAtMDItMjYsIDE0OjM0LCBVbGYgSGFuc3NvbiB3cm90ZToKPiBPbiBUdWUsIDEwIEZlYiAy
MDI2IGF0IDExOjUzLCBHZWVydCBVeXR0ZXJob2V2ZW4KPiA8Z2VlcnQrcmVuZXNhc0BnbGlkZXIu
YmU+IHdyb3RlOgo+ID4KPiA+IE5vdyB0aGUgbXV4IGNvcmUgcHJvdmlkZXMgZGV2bV9tdXhfc3Rh
dGVfZ2V0X29wdGlvbmFsKCk6Cj4gPgo+ID4gICAgIGRyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJj
YXItZ2VuMy11c2IyLmM6OTQ0OjE6IGVycm9yOiBzdGF0aWMgZGVjbGFyYXRpb24gb2Yg4oCYZGV2
bV9tdXhfc3RhdGVfZ2V0X29wdGlvbmFs4oCZIGZvbGxvd3Mgbm9uLXN0YXRpYwo+ID4gICAgICBk
ZWNsYXJhdGlvbgo+ID4gICAgICAgOTQ0IHwgZGV2bV9tdXhfc3RhdGVfZ2V0X29wdGlvbmFsKHN0
cnVjdCBkZXZpY2UgKmRldiwgY29uc3QgY2hhciAqbXV4X25hbWUpCj4gPiAgICAgICAgICAgfCBe
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPiA+ICAgICBJbiBmaWxlIGluY2x1ZGVkIGZyb20g
ZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYzoyMDoKPiA+ICAgICBpbmNs
dWRlL2xpbnV4L211eC9jb25zdW1lci5oOjY0OjE5OiBub3RlOiBwcmV2aW91cyBkZWNsYXJhdGlv
biBvZiDigJhkZXZtX211eF9zdGF0ZV9nZXRfb3B0aW9uYWzigJkgd2l0aCB0eXBlIOKAmHN0cnVj
dCBtdXhfc3RhdGUgKihzdHJ1Y3QgZGV2aWNlICosIGNvbnN0IGNoYXIgKinigJkKPiA+ICAgICAg
ICA2NCB8IHN0cnVjdCBtdXhfc3RhdGUgKmRldm1fbXV4X3N0YXRlX2dldF9vcHRpb25hbChzdHJ1
Y3QgZGV2aWNlICpkZXYsIGNvbnN0IGNoYXIgKm11eF9uYW1lKTsKPiA+ICAgICAgICAgICB8ICAg
ICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+ID4KPiA+IEZpeCB0
aGlzIGJ5IGRyb3BwaW5nIHRoZSB0ZW1wb3JhcnkgbG9jYWwgd3JhcHBlci4KPiA+Cj4gPiBGaXhl
czogYWQzMTQzNDhjZWI0ZmUxZiAoIm11eDogQWRkIGhlbHBlciBmdW5jdGlvbnMgZm9yIGdldHRp
bmcgb3B0aW9uYWwgYW5kIHNlbGVjdGVkIG11eC1zdGF0ZSIpCj4gPiBGaXhlczogOGJiOTJmZDdh
MDQwNzc5MiAoInBoeTogcmVuZXNhczogcmNhci1nZW4zLXVzYjI6IFVzZSBtdXgtc3RhdGUgZm9y
IHBoeXJzdCBtYW5hZ2VtZW50IikKPiA+IFNpZ25lZC1vZmYtYnk6IEdlZXJ0IFV5dHRlcmhvZXZl
biA8Z2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU+Cj4gCj4gVGhhbmtzIEdlZXJ0IGZvciBoZWxwaW5n
IG91dCEKPiAKPiA+IC0tLQo+ID4gICAtIGFkMzE0MzQ4Y2ViNGZlMWYgaXMgaW4gbW1jL25leHQs
IGFuZCBhIFBSIGhhcyBhbHJlYWR5IGJlZW4gc2VudAo+ID4gICAgIGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnLzIwMjYwMjA5MTMzNDQxLjU1NjQ2NC0xLXVsZi5oYW5zc29uQGxpbmFyby5vcmcKPiA+
ICAgLSA4YmI5MmZkN2EwNDA3NzkyIGlzIGluIHBoeS9uZXh0Cj4gCj4gVmlub2QsIGRvIHlvdSB3
YW50IHRvIHBpY2sgdXAgdGhlICRzdWJqZWN0IHBhdGNoIGFzIGEgZml4IGZvciA3LjAtcmMxCj4g
b3IgZG8geW91IHByZWZlciBtZSB0byBoYW5kbGUgaXQ/CgpTaG91bGQgSSBkcm9wIHRoZSA4YmI5
MmZkN2EwNDA3NzkyIGFuZCBpdCBtYWtlcyB0aGluZ3MgZWFzaWVyIGZvcgpldmVyeW9uZSBhbmQg
dGhlbiB3ZSBjYW4gcGljayBmaXhlZCBjb21taXQgZm9yIDcuMSBjeWNsZS4uCgpEb2VzIHRoYXQg
d29yayBmb3IgZXZlcnlvbmUuIEkgd2FzIGFib3V0IHRvIHNlbmQgUFIsIHdpbGwgaG9sZCBvZmYg
Zm9yIGEKYml0LgoKVGhhbmtzCi0tIAp+Vmlub2QKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
