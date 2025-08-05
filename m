Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39692C87FD1
	for <linux-phy@archiver.kernel.org>; Tue,  5 Aug 2025 03:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VSv1RPGkIfF1Br7zA+xPMZPbTrqFnHtqofjKY3Qdk5s=; b=22OZYA9qh33XIE
	mv1AxNw6LdPczDkc0ofxwOYzmKrSVPoO7YvIPfPMyGv1aGgSy0J9wtfK3vX4X1NDCSyQU//eOusyj
	dNo7h2CwfNZxeylHkhlLD4AeHmKIq/x3UXl4b6Lxe7WP4TTCKgthkzmEm6214Y9NdzL6PnI+xUNT/
	vtCrdfIpFQg4S8ink3wCYZ3AEI7MElWoYxDzFROHB2Jr2w644GLmvll5We++npGF3vck2KgDinuom
	X5BrcNODQ0hS0idAGb2bMTAZKC7zB4l9m+SuM/C6mYwCXpy5bCJB14nf+N5XLoTFNbl0s4Hj8ry2Q
	IBb6Ua0+PsN5/1S+kwxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uj8aL-0000000BhYB-3FW9;
	Tue, 05 Aug 2025 03:43:33 +0000
Received: from mail-m32118.qiye.163.com ([220.197.32.118])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uj8aJ-0000000BhWv-2Tyz;
	Tue, 05 Aug 2025 03:43:33 +0000
Received: from [172.16.12.153] (gy-adaptive-ssl-proxy-3-entmail-virt135.gy.ntes [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1e4f07c8f;
	Tue, 5 Aug 2025 11:43:07 +0800 (GMT+08:00)
Message-ID: <0207826d-a987-4464-b306-29bdbfac45bc@rock-chips.com>
Date: Tue, 5 Aug 2025 11:43:05 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/5] Add Type-C DP support for RK3399 EVB IND board
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Amit Sunil Dhamne <amitsd@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
 Diederik de Haas <didi.debian@cknow.org>,
 Peter Robinson <pbrobinson@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org
References: <20250729090032.97-1-kernel@airkyi.com>
 <3kefqzjewmsyzfvyi33kvlgjd6jphjg3fsnixb3of7yb3xkgs2@hgi6xfkgd653>
 <63ec11cf-7927-431a-995e-a5fc35ef1ba7@rock-chips.com>
 <pk5wecbbpxn7v4bdwtghhdnm76fmrmglelytljwfb4cgvpu2i6@rk5turgyt5xq>
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <pk5wecbbpxn7v4bdwtghhdnm76fmrmglelytljwfb4cgvpu2i6@rk5turgyt5xq>
X-HM-Tid: 0a987853630a03abkunm29211595654c93
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkIYH1ZIHUhDHktITkoaTklWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpPSE
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=DcW3YuHAeSLpncKSFOsCLJAbVOk5HpVT5YoVQRKf2eexdA+SyxwhHdv7unhzrVeAYJNonLSqdn2TPVQJEo0QQ0LepLQK0eyqWM9QYGQ0JxsTI9aypW6Li4QgId8ZTAt7SiRbhIqshpUL9ue/FelgdhYiOgTqQcnB5jG5DlqWBv8=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=28swiPqyhJ+wqthzGqPRfqoTRJZZiDtTt4jtzU7sc6A=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_204331_810397_6014F887 
X-CRM114-Status: GOOD (  27.19  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SGkgRG1pdHJ5LAoKT24gOC8yLzIwMjUgNTo1NSBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToK
ClsuLi5dCgoKPj4gQ3VycmVudGx5LCB0aGUgc29mdHdhcmUgc2ltcGx5IHNlbGVjdHMgdGhlIGZp
cnN0IGF2YWlsYWJsZSBwb3J0LiBTbyBpZiB1c2VyCj4+IHBsdWdzIGluIERQIGRvbmdsZXMgaW4g
Ym90aCBVU0ItQyBwb3J0cywgdGhlIERQIGRyaXZlciB3aWxsIHNlbGVjdCB0aGUgZmlyc3QKPj4g
cG9ydC4gVGhpcyBwcm9jZXNzIGlzIGltcGxlbWVudGVkIGluIGNkbl9kcF9jb25uZWN0ZWRfcG9y
dCgpIC4KPj4KPiBJIHRoaW5rIFN0ZXBoZW4gQm95ZCBoYXMgYmVlbiBsb29raW5nIG9uIHNpbWls
YXIgaXNzdWVzIGZvciBDaHJvbWVib29rcywKPiB3aGljaCB3ZXJlIHNoYXJpbmcgRFAgY29udHJv
bGxlciBiZXR3ZWVuIHNldmVyYWwgVVNCLUMgcG9ydHMuIEkgZG9uJ3QKPiByZW1lbWJlciB3aGF0
IHdhcyBoaXMgbGFzdCBzdGF0dXMuIEkgdGhpbmsgdGhlcmUgaXQgd2FzIGVhc2llciBzaW5jZSB0
aGUKPiBiaWZ1cmNhdGlvbiBwb2ludCB3YXMgdGhlIEVDLgoKSSB0aGluayB0aGUgbGF0ZXN0IHBy
b2dyZXNzIHNob3VsZCBiZSBoZXJlOiBbMF0uIEl0IHNlZW1zIHRoYXQgaXQgaGFzbid0IApiZWVu
IHVwZGF0ZWQgZm9yIGEgd2hpbGUuCgpbMF06IApodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwv
MjAyNDA5MDEwNDA2NTguMTU3NDI1LTEtc3dib3lkQGNocm9taXVtLm9yZy8KCgo+Cj4gSSB0aGlu
aywgQ0ROLURQIG5lZWRzIHRvIHJlZ2lzdGVyIHVwIHRvIHR3byBlbmNvZGVycyBhbmQgdXAgdG8g
dHdvCj4gY29ubmVjdG9ycywgaGF2aW5nIGEgc2VwYXJhdGUgZHJtX2JyaWRnZSBjaGFpbiBmb3Ig
ZWFjaCBvZiB0aGUgRFAKPiBzaWduYWxzIHBhdGhzIChpbiB0aGUgZW5kLCB5b3UgY2FuIG5vdCBn
dWFyYW50ZWUgdGhhdCBib3RoIGJyYW5jaGVzIHdpbGwKPiBoYXZlIHRoZSBzYW1lIHNpbXBsZSBD
RE4tRFAgLT4gUEhZIC0+IFVTQi1DIGNvbmZpZ3VyYXRpb246IHRoZXJlIGNhbiBiZQo+IGRpZmZl
cmVudCByZXRpbWVycywgZXRjKS4KPgo+IEJvdGggZW5jb2RlcnMgc2hvdWxkIGxpc3QgdGhlIHNh
bWUgQ1JUQyBpbiBwb3NzaWJsZV9jcnRjcywgZXRjLiBPZgo+IGNvdXJzZSwgaXQgc2hvdWxkIG5v
dCBiZSBwb3NzaWJsZSB0byBlbmFibGUgYm90aCBvZiB0aGVtLgo+Cj4gVGhpcyB3YXkgaWYgdGhl
IHVzZXIgcGx1Z3MgaW4gdHdvIERQIGRvbmdsZXMsIGl0IHdvdWxkIGJlIHBvc3NpYmxlIHRvCj4g
c2VsZWN0LCB3aGljaCBvdXRwdXQgYWN0dWFsbHkgZ2V0cyBhIHNpZ25hbC4KClRoYXQgbWFrZXMg
c2Vuc2UsIGJ1dCB0aGlzIG1pZ2h0IG1ha2UgdGhlIERQIGRyaXZlciBxdWl0ZSBjb21wbGV4LiBJ
IAp3aWxsIHNlZSBpZiBJIGNhbiBtYWtlIGl0IGhhcHBlbi4KCgo+Cj4+Cj4+Pj4gQlRXLCBvbmUg
b2YgdGhlIGltcG9ydGFudCB0aGluZ3MgdG8gZG8gaXMgdG8gaW1wbGVtZW50IGV4dGNvbi1saWtl
Cj4+Pj4gbm90aWZpY2F0aW9ucy4gSSBmb3VuZCBpbmNsdWRlL2RybS9icmlkZ2UvYXV4LWJyaWRn
ZS5oICwgYnV0IGlmIHRoZQo+Pj4+IGF1eC1icmlkZ2UgaXMgdXNlZCwgdGhlIGJyaWRnZSBjaGFp
biB3b3VsZCBsb29rIGxpa2UgdGhpczoKPj4+Pgo+Pj4+IFBIWTAgYXV4LWJyaWRnZSAtLS0rCj4+
Pj4gICAgICAgICAgICAgICAgICAgICAgfCAtLS0tPiBDRE4tRFAgYnJpZGdlCj4+Pj4gUEhZMSBh
dXgtYnJpZGdlIC0tLSsKPj4+Pgo+Pj4+IE9oLCBDRE4tRFAgYnJpZGdlIGhhcyB0d28gcHJldmlv
dXMgYXV4LWJyaWRnZSEKPj4+Pgo+Pj4+IE5vdywgSSB0cnkgdG8gdXNlIGRybV9jb25uZWN0b3Jf
b29iX2hvdHBsdWdfZXZlbnQoKSB0byBub3RpZnkgSFBECj4+Pj4gc3RhdGUgYmV0d2VlbiBQSFkg
YW5kIENETi1EUCBjb250cm9sbGVyLgo+Pj4gRG9lcyBpdCBhY3R1YWxseSB3b3JrPyBUaGUgT09C
IEhQRCBldmVudCB3aWxsIGJlIHJlcG90ZWQgZm9yIHRoZSB1c2ItYwo+Pj4gY29ubmVjdG9yJ3Mg
Zndub2RlLCBidXQgdGhlIERQIGNvbnRyb2xsZXIgaXNuJ3QgY29ubmVjdGVkIHRvIHRoYXQgbm9k
ZQo+Pj4gYW55aG93LiBJZiBJJ20gbm90IG1pc3Rha2VuLCB0aGUgSFBEIHNpZ25hbCB3aWxsIG5v
dCByZWFjaCBEUCBkcml2ZXIgaW4KPj4+IHRoaXMgY2FzZS4KPj4gWWVzLsKgIFdoYXQgeW91IG1l
bnRpb25lZCBpcyB0aGUgY2FzZSBpbgo+PiBkcml2ZXJzL3VzYi90eXBlYy9hbHRtb2Rlcy9kaXNw
bGF5cG9ydC5jIC4gSSBoYXZlIGFsc28gYWRkZWQgYSBuZXcgT09CIGV2ZW50Cj4+IG5vdGlmeSBp
biB0aGUgUEhZIGRyaXZlciBpbiBQYXRjaCAzLCB3aGVyZSB0aGUgZXhwZWN0ZWQgZndub2RlIGlz
IHVzZWQgaW4KPj4gdGhlIFBIWS4gU28gbm93IHdlIGhhdmUgdHdvIE9PQiBIUEQgZXZlbnRzLCBv
bmUgZnJvbSBhbHRtb2Rlcy9kaXNwbGF5cG9ydC5jCj4+IGFuZCB0aGUgb3RoZXIgZnJvbSBQSFku
IE9ubHkgdGhlIEhQRCBmcm9tIFBIWSBpcyBldmVudHVhbGx5IHBhc3NlZCB0byB0aGUgRFAKPj4g
ZHJpdmVyLgo+IFRoaXMgd2F5IHlvdSB3aWxsIGxvb3NlIElSUV9IUEQgcHVsc2UgZXZlbnRzIGZy
b20gdGhlIERQLiBUaGV5IGFyZSB1c2VkCj4gYnkgRFBSWCAoYWthIERQIFNpbmspIHRvIHNpZ25h
bCB0byBEUFRYIChEUCBTb3VyY2UpIHRoYXQgdGhlcmUgd2FzIGEKPiBjaGFuZ2Ugb24gdGhlIERQ
Ulggc2lkZSBhbmQgdGhlIERQVFggc2hvdWxkIHJlcmVhZCBsaW5rIHBhcmFtcyBhbmQgbWF5YmUK
PiByZXRyYWluIHRoZSBsaW5rLgoKU29ycnksIEkgc3RpbGwgZG9uJ3QgcXVpdGUgdW5kZXJzdGFu
ZCB5b3VyIHBvaW50LiBJIHRoaW5rIHRoZSBlbnRpcmUgCm5vdGlmaWNhdGlvbiBwYXRoIGlzIGFz
IGZvbGxvd3M6CgpUeXBlLUMgbXV4IGNhbGxiYWNrIC0+IFJLMzM5OSBVU0JEUCBQSFkgLT4gUEhZ
IGNhbGxzIApkcm1fY29ubmVjdG9yX29vYl9ob3RwbHVnX2V2ZW50KCkgLT4gRFAgZHJpdmVyCgpB
cmUgeW91IGNvbmNlcm5lZCB0aGF0IHRoZSBJUlFfSFBEIGV2ZW50IGlzIG5vdCBiZWluZyBoYW5k
bGVkIHNvbWV3aGVyZSAKYWxvbmcgdGhlIHBhdGg/IElzIGl0IHRoYXQgdGhlIFR5cGUtQyBtdXgg
Y2FsbGJhY2sgZGlkbid0IG5vdGlmeSB0aGUgClBIWSwgb3IgdGhhdCBhZnRlciB0aGUgUEhZIHBh
c3NlZCB0aGUgZXZlbnQgdG8gdGhlIERQIGRyaXZlciB2aWEgdGhlIE9PQiAKZXZlbnQsIHRoZSBE
UCBkcml2ZXIgZGlkbid0IGhhbmRsZSBpdD8KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
