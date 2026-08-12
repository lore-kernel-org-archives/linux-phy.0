Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05CE2C5B572
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 15:09:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EbEb436cktFfTwJpUyxVDHQKjkRYljbSh0Z2WIj/G+8=; b=CsL6Y7APeCABFf
	GuyCx/jpKWqwiPVSvFj3kEYyGABx+4y3KxbXq1+MztE7lMk1hyDwvUSF203wL6B7b1+W14BQVYwlr
	+CGf4N0Bm9H2kMAGIDxMEf7z0uxQX54FF69jjeIv7FQv/gDglIZJ0mJ1Wwz/KG+gTGJtiG9jv3u0w
	eZgiBWSWc+Qaj+/3CDuddZhWsSWJOOMyrZZ4l2w76quGkCyPKArfpxqotS/PoxHsLBg3MParCrB2d
	5szlS+vKFFR6+hwxLkmUdNkRDSio95OeoYQoA88Nnr9mx7nIQQV+Ke2+uPW4aMsNcfQWWyTJmDGPd
	NMxzVqgjaUnBnMC5b+rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuAa3-0000000GRTP-2u6g;
	Wed, 12 Aug 2026 15:09:23 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuAa3-0000000GRTC-0oxk
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 15:09:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6079260A7D;
	Wed, 12 Aug 2026 15:09:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A7161F000E9;
	Wed, 12 Aug 2026 15:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786547362;
	bh=aaqq2H2JimvVJmpoJx6SRa5PHhNV2698HwqcWY02mTg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=knX8w7tuFaejNzJ612ZhC4U4PMt8qOPH8Y3y6YDnuHGZl7P9z2xfb0BkaQNDANCPm
	 rai61Ks+jVyMqAl+DHgK/OlTduKSGI5d++w9qaHpR6ZX5VvWVGmuuclQRHJnJyWtXN
	 XqW8FC5QzVTa1IpcLcL2KUoGeRI+PD3A7XOvgM+RAhYbn97UkquAmKBAKEKHuXNS+J
	 ggDMlVaRHk4IOThl/4cZjaXH764+2k7y5qTe2oNZkHaqsay6PV4rTdgHH+yKw0guIO
	 aiLEOj4JumuiFii6f1byHdFOt3q53wTw0oxP4/xto+g3mH3d+6SYt6MCI5kviHSptj
	 /Zm56nlCIzKzQ==
Date: Wed, 12 Aug 2026 17:09:13 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, 
	Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v9 2/5] phy: qualcomm: hdmi-28lpm: provide dynamic
 configuration
Message-ID: <xrkv6tfmaccqbpf2azecbx3kowrqvysgcgvgqpg4avaggb22zv@43uwievfbkzt>
References: <20260513-fd-hdmi-phy-v9-0-ca98c72f1f9f@oss.qualcomm.com>
 <20260513-fd-hdmi-phy-v9-2-ca98c72f1f9f@oss.qualcomm.com>
 <qxuzipnza3tzoig7xp3653vcqwgubf6zerzbgdmx5h6acof7zm@quy7xzjml7kn>
 <w6mq6a63mjzhjirvvgetcdptutkq3upa5v5kmdcezjke6rhkm3@lctdutlbnbud>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <w6mq6a63mjzhjirvvgetcdptutkq3upa5v5kmdcezjke6rhkm3@lctdutlbnbud>
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

T24gV2VkLCBBdWcgMTIsIDIwMjYgYXQgMDU6Mjg6NTBQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBPbiBXZWQsIEF1ZyAxMiwgMjAyNiBhdCAwMzo1MToxNlBNICswMjAwLCBNYW5p
dmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiBPbiBXZWQsIE1heSAxMywgMjAyNiBhdCAwOTox
NDowNVBNICswMzAwLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+ID4gPiBSZXBsYWNlIGZpeGVk
IHZhbHVlIGNvbmZpZ3VyYXRpb24gdGFibGVzIHdpdGggdGhlIHZhbHVlcyBjYWxjdWxhdGVkIGF0
Cj4gPiA+IHRoZSBydW50aW1lLiBJbiBzb21lIGNhc2VzIHRoZSB2YWx1ZXMgbWlnaHQgZGlmZmVy
IGZyb20gdGhlIG9yaWdpbmFsCj4gPiA+IHZhbHVlcy4gVGhvc2Ugd2VyZSB2YWxpZGF0ZWQgb24g
dGhlIElGQzY0MTAgYm9hcmQuCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgQmFy
eXNoa292IDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+Cj4gPiAKPiA+IE9uZSBu
aXQgYmVsb3cuIFdpdGggdGhhdCBmaXhlZCwKPiA+IAo+ID4gQWNrZWQtYnk6IE1hbml2YW5uYW4g
U2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+Cj4gPiAK
PiA+ID4gLS0tCj4gPiA+ICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1oZG1pLTI4bHBt
LmMgfCAzMjUgKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+ID4gIDEgZmlsZSBjaGFu
Z2VkLCAxMDQgaW5zZXJ0aW9ucygrKSwgMjIxIGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+ID4gLXN0
YXRpYyBjb25zdCBzdHJ1Y3QgcGxsX3JhdGUgKnFjb21faGRtaV84OTYwX3BsbF9maW5kX3JhdGUo
dW5zaWduZWQgbG9uZyByYXRlKQo+ID4gPiArc3RhdGljIGlubGluZSB2b2lkIHdyaXRlMTYodTE2
IHZhbCwgdm9pZCBfX2lvbWVtICpyZWcpCj4gPiAKPiA+IE5vICdpbmxpbmUnIGtleXdvcmQgaW4g
LmMgZmlsZXMgcGxlYXNlLgo+IAo+IFdoeT8KPiAKCkJlY2F1c2UgdGhlIG1vZGVybiBjb21waWxl
cnMgYXJlIHNtYXJ0ZXIgZW5vdWdoIHRvIGRlY2lkZSB3aGV0aGVyIGEgc3BlY2lmaWMKZnVuY3Rp
b24gc2hvdWxkIGJlIGlubGluZWQgb3Igbm90LiBUaGVyZSBpcyBubyBndWFyYW50ZWUgdGhhdCB0
aGUgJ2lubGluZScKa2V5d29yZCB0aGF0IHlvdSBwYXNzIHdpbGwgYmUgaG9ub3JlZCBieSB0aGUg
Y29tcGlsZXIgYWxzbywgaXQgaXMganVzdCBhIGhpbnQuClRoYXQncyB3aHkgaXQgaXMgcHJlZmVy
cmVkIHRvIGRyb3AgJ2lubGluZScga2V5d29yZCBmcm9tIC5jIGZpbGVzIHRvIGF2b2lkIGNodXJu
CmFuZCBsZWF2ZSB0aGUganVkZ2VtZW50IHRvIHRoZSBjb21waWxlcnMuCgotIE1hbmkKCi0tIArg
rq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
