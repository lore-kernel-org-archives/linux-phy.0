Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BDE0E7716C
	for <linux-phy@archiver.kernel.org>; Thu,  5 Dec 2024 11:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0fofQ5jyNPm9mqNCjN/3nYNOFjayP1omfaH8PKD2evM=; b=jSZaa0n8yTKwUi
	AVqbRFTmQe/+wPpxAOwRMXeqtaoOfHZzpGTCyslFEOoQKIxkAdmnw+y6D89Lcx6Km9reF6g8O1FsU
	TIy1t18+ZNFPCgt9oo/KXb8Jucx5VxTqO6t5f4IChZpvsLYNiewg/CKqShY8ehKtDi9yH1GNaWuCq
	1xT/voeuYiwHHDnL2x4ypO9+v28G86pXb83TsTtuqauGxYmn2pSNVZM/qsgyc/Zz/5AyJD5UUy1tr
	iJCthiUhkeAsoXqjGX0Qs9Mu8GYMUubV0vH7Z3aK/HcMkZ0aEkj+8TMGVbhigzs9KHoLUX5tnKYuA
	SFmXoit9ajMDqOMAD8tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJAIK-0000000FlsU-0Vze;
	Thu, 05 Dec 2024 11:45:20 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJADx-0000000Fknb-2N5c
	for linux-phy@lists.infradead.org;
	Thu, 05 Dec 2024 11:40:50 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-e0875f1e9edso1103443276.1
        for <linux-phy@lists.infradead.org>; Thu, 05 Dec 2024 03:40:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733398848; x=1734003648; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kVlR8SfhnG5cey0ump1Xp1q6+3VfWCJyhprNP3dwbtc=;
        b=aq2o+9wKcyMYjUyj3DSVdMc5oM0PI1+tnZ/8ab0UMV3eQzt/2LfBcf4quIucaznpB1
         Mnb4eoCRUFt9hJNBDbgzZCBTEfceCYcjmgWuncB17IIiri6G+0qe62v5kC+0h3cdl6ef
         usOYic56VbZzllt9lrQL/QQ5hLQEHDG9OtRLcAVA7RP4+jvmC4vSDjewCUrp3+fQyHnw
         fktnAMJkFqfY1Knm+ivlc8jJL9ZC/I5J7PK1QvbbWRhod0wrK6pKIEK2IOW64170p98d
         Hl5Pq/+JPOEZOWnsaBE6XeM2ilahxV9tKAIqdHHuZ1nGdXox6eqdJwLVNziCr5/YFGVj
         aj3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733398848; x=1734003648;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kVlR8SfhnG5cey0ump1Xp1q6+3VfWCJyhprNP3dwbtc=;
        b=kG6ab1BldqRBT2roeK532ZP6zSOXLYj7pvDJIwgawcfCLVWOR2gCoVBAhiyYqU4PkD
         VaqX5LZr8YgtMUNkp2NwQwA3TXpCvG0ql7Nin8KgKGu+Meo1gFBYGKC4gaLUQDyUENq3
         33/PN0J0BaK+oBl/518mJF5yLFBKcQcoWSfgZBIgKNR40Ry5Xv1UWxguMcTn18SlShT/
         f3YQ7zT4hhsDgbBzK1SZgPTz/8m+UKKV+cNNNP/7WczootFRIC3YFgHVfrZw3ZaEqNf/
         0yVI/JpB++jm6n9ZLmsSL7QmymH3jcgzjE0GclmE98GrV1brJy2WrtIOBA0DfQ0leY6c
         KMpw==
X-Forwarded-Encrypted: i=1; AJvYcCXxYb5erS2/7Oq4P6xezUpBSM1Iz932xaiVOON4gx2UCRxwPuBtu0xwzbD+Fh6x0osKz2iOv4Ee6Ns=@lists.infradead.org
X-Gm-Message-State: AOJu0YxrwcUMMPE9ubSEm5mCmKa3kl+u4/E3qkl+RnhYKe/jsN9uaJLv
	U3ppaIX3nxn6ckQfGugUas0Cd2cWF7LqUglehcx5YkqxqbB4GVjq9Z/04gMCLGCqatVh1OzHcum
	f8yDVJWBHieQcCo08KLFala+DhhWnftF1J7/7Ew==
X-Gm-Gg: ASbGncuE74zfgrhlbVavmu2sU3NCUmdD415/iJ0wkaig7ZJ1vcl0lbsFJmTE8Bqykpi
	y1yXnPPHKHt39zHWWDOotYvuzLHo4kcjifG+W/X9fv+a58g==
X-Google-Smtp-Source: AGHT+IE7HGuIvq1u8h8I8rkPJdzS+9WwLlvVg6WJaLoZvVrKFT+XlrLuu0kqLNSwgkmrfDwW/eoD4F5p5LcplIqXWkE=
X-Received: by 2002:a05:6902:cc5:b0:e39:b0de:fed8 with SMTP id
 3f1490d57ef6-e39d3a293cdmr10638085276.17.1733398848266; Thu, 05 Dec 2024
 03:40:48 -0800 (PST)
MIME-Version: 1.0
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-5-09a4338d93ef@quicinc.com>
 <CAA8EJpoY8hySQd00yODGeHjSpVZpEBLjF3aBiKGJPUhpr-2mgw@mail.gmail.com>
 <d2a3cd6f-1077-4edb-9f0c-0c940a639050@quicinc.com> <zvapsvfftai4fp6vwrn33edqsyuuprq2pxz6spij6j7t4y6xmn@zzgp7gbsivbk>
 <93ddb63c-42da-43c8-9a77-c517ca5d6432@quicinc.com>
In-Reply-To: <93ddb63c-42da-43c8-9a77-c517ca5d6432@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 5 Dec 2024 13:40:37 +0200
Message-ID: <CAA8EJprAFYD6ykN10-r=JwHM4A4XeDDcZVcVWYp_5A5FP-=RyA@mail.gmail.com>
Subject: Re: [PATCH 5/8] drm/msm/dp: Add support for lane mapping configuration
To: Xiangxu Yin <quic_xiangxuy@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, quic_lliu6@quicinc.com, quic_fangez@quicinc.com, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-gpio@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_034049_623946_1DDA1A49 
X-CRM114-Status: GOOD (  35.55  )
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

T24gVGh1LCA1IERlYyAyMDI0IGF0IDEzOjI4LCBYaWFuZ3h1IFlpbiA8cXVpY194aWFuZ3h1eUBx
dWljaW5jLmNvbT4gd3JvdGU6Cj4KPgo+Cj4gT24gMTIvMi8yMDI0IDY6NDYgUE0sIERtaXRyeSBC
YXJ5c2hrb3Ygd3JvdGU6Cj4gPiBPbiBNb24sIERlYyAwMiwgMjAyNCBhdCAwNDo0MDowNVBNICsw
ODAwLCBYaWFuZ3h1IFlpbiB3cm90ZToKPiA+Pgo+ID4+Cj4gPj4gT24gMTEvMjkvMjAyNCA5OjUw
IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+ID4+PiBPbiBGcmksIDI5IE5vdiAyMDI0IGF0
IDA5OjU5LCBYaWFuZ3h1IFlpbiA8cXVpY194aWFuZ3h1eUBxdWljaW5jLmNvbT4gd3JvdGU6Cj4g
Pj4+Pgo+ID4+Pj4gQWRkIHRoZSBhYmlsaXR5IHRvIGNvbmZpZ3VyZSBsYW5lIG1hcHBpbmcgZm9y
IHRoZSBEUCBjb250cm9sbGVyLiBUaGlzIGlzCj4gPj4+PiByZXF1aXJlZCB3aGVuIHRoZSBwbGF0
Zm9ybSdzIGxhbmUgbWFwcGluZyBkb2VzIG5vdCBmb2xsb3cgdGhlIGRlZmF1bHQKPiA+Pj4+IG9y
ZGVyICgwLCAxLCAyLCAzKS4gVGhlIG1hcHBpbmcgcnVsZXMgYXJlIG5vdyBjb25maWd1cmFibGUg
dmlhIHRoZQo+ID4+Pj4gYGRhdGEtbGFuZWAgcHJvcGVydHkgaW4gdGhlIGRldmljZXRyZWUuIFRo
aXMgcHJvcGVydHkgZGVmaW5lcyB0aGUKPiA+Pj4+IGxvZ2ljYWwtdG8tcGh5c2ljYWwgbGFuZSBt
YXBwaW5nIHNlcXVlbmNlLCBlbnN1cmluZyBjb3JyZWN0IGxhbmUKPiA+Pj4+IGFzc2lnbm1lbnQg
Zm9yIG5vbi1kZWZhdWx0IGNvbmZpZ3VyYXRpb25zLgo+ID4+Pj4KPiA+Pj4+IFNpZ25lZC1vZmYt
Ynk6IFhpYW5neHUgWWluIDxxdWljX3hpYW5neHV5QHF1aWNpbmMuY29tPgo+ID4+Pj4gLS0tCj4g
Pj4+PiAgZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9jYXRhbG9nLmMgfCAxMSArKysrKy0tLS0t
LQo+ID4+Pj4gIGRyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfY2F0YWxvZy5oIHwgIDIgKy0KPiA+
Pj4+ICBkcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2N0cmwuYyAgICB8ICAyICstCj4gPj4+PiAg
ZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9wYW5lbC5jICAgfCAxMyArKysrKysrKysrLS0tCj4g
Pj4+PiAgZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9wYW5lbC5oICAgfCAgMyArKysKPiA+Pj4+
ICA1IGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQo+ID4+
Pj4KPiA+Cj4gPj4+PiBAQCAtNDYxLDYgKzQ2MCw3IEBAIHN0YXRpYyBpbnQgbXNtX2RwX3BhbmVs
X3BhcnNlX2R0KHN0cnVjdCBtc21fZHBfcGFuZWwgKm1zbV9kcF9wYW5lbCkKPiA+Pj4+ICAgICAg
ICAgc3RydWN0IG1zbV9kcF9wYW5lbF9wcml2YXRlICpwYW5lbDsKPiA+Pj4+ICAgICAgICAgc3Ry
dWN0IGRldmljZV9ub2RlICpvZl9ub2RlOwo+ID4+Pj4gICAgICAgICBpbnQgY250Owo+ID4+Pj4g
KyAgICAgICB1MzIgbGFuZV9tYXBbRFBfTUFYX05VTV9EUF9MQU5FU10gPSB7MCwgMSwgMiwgM307
Cj4gPj4+Pgo+ID4+Pj4gICAgICAgICBwYW5lbCA9IGNvbnRhaW5lcl9vZihtc21fZHBfcGFuZWws
IHN0cnVjdCBtc21fZHBfcGFuZWxfcHJpdmF0ZSwgbXNtX2RwX3BhbmVsKTsKPiA+Pj4+ICAgICAg
ICAgb2Zfbm9kZSA9IHBhbmVsLT5kZXYtPm9mX25vZGU7Cj4gPj4+PiBAQCAtNDc0LDEwICs0NzQs
MTcgQEAgc3RhdGljIGludCBtc21fZHBfcGFuZWxfcGFyc2VfZHQoc3RydWN0IG1zbV9kcF9wYW5l
bCAqbXNtX2RwX3BhbmVsKQo+ID4+Pj4gICAgICAgICAgICAgICAgIGNudCA9IGRybV9vZl9nZXRf
ZGF0YV9sYW5lc19jb3VudChvZl9ub2RlLCAxLCBEUF9NQVhfTlVNX0RQX0xBTkVTKTsKPiA+Pj4+
ICAgICAgICAgfQo+ID4+Pj4KPiA+Pj4+IC0gICAgICAgaWYgKGNudCA+IDApCj4gPj4+PiArICAg
ICAgIGlmIChjbnQgPiAwKSB7Cj4gPj4+PiArICAgICAgICAgICAgICAgc3RydWN0IGRldmljZV9u
b2RlICplbmRwb2ludDsKPiA+Pj4+ICsKPiA+Pj4+ICAgICAgICAgICAgICAgICBtc21fZHBfcGFu
ZWwtPm1heF9kcF9sYW5lcyA9IGNudDsKPiA+Pj4+IC0gICAgICAgZWxzZQo+ID4+Pj4gKyAgICAg
ICAgICAgICAgIGVuZHBvaW50ID0gb2ZfZ3JhcGhfZ2V0X2VuZHBvaW50X2J5X3JlZ3Mob2Zfbm9k
ZSwgMSwgLTEpOwo+ID4+Pj4gKyAgICAgICAgICAgICAgIG9mX3Byb3BlcnR5X3JlYWRfdTMyX2Fy
cmF5KGVuZHBvaW50LCAiZGF0YS1sYW5lcyIsIGxhbmVfbWFwLCBjbnQpOwo+ID4+Pj4gKyAgICAg
ICB9IGVsc2Ugewo+ID4+Pj4gICAgICAgICAgICAgICAgIG1zbV9kcF9wYW5lbC0+bWF4X2RwX2xh
bmVzID0gRFBfTUFYX05VTV9EUF9MQU5FUzsgLyogNCBsYW5lcyAqLwo+ID4+Pj4gKyAgICAgICB9
Cj4gPj4+Cj4gPj4+IFdoeT8gVGhpcyBzb3VuZHMgbW9yZSBsaWtlIGRwX2NhdGFsb2cgb3IgKGFm
dGVyIHRoZSByZWZhY3RvcmluZyBhdAo+ID4+PiBbMV0pIGRwX2N0cmwuIEJ1dCBub3QgdGhlIGRw
X3BhbmVsLgo+ID4+Pgo+ID4+PiBbMV0gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Byb2plY3QvZnJlZWRyZW5vL3Nlcmllcy8/b3JkZXJpbmc9LWxhc3RfdXBkYXRlZAo+ID4+Pgo+
ID4+IFdlIGFyZSB1c2VkIHRoZSBzYW1lIHByb3AgJ2RhdGEtbGFuZXMgPSA8MyAyIDAgMT4nIGlu
IG1kc3NfZHBfb3V0IHRvIGtlZXAgc2ltaWxhciBiZWhhdmlvdXIgd2l0aCBkc2lfaG9zdF9wYXJz
ZV9sYW5lX2RhdGEuCj4gPj4gRnJvbSB0aGUgbW9kdWxlcyB1c2VkLCBjYXRhbG9nIHNlZW1zIG1v
cmUgYXBwcm9wcmlhdGUsIGJ1dCBzaW5jZSB0aGUgbWF4X2RwX2xhbmVzIGlzIHBhcnNlZCBhdCBk
cF9wYW5lbCwgaXQgaGFzIGJlZW4gcGxhY2VkIGhlcmUuCj4gPj4gU2hvdWxkIGxhbmVfbWFwIHBh
cnNpbmcgaW4gbXNtX2RwX2NhdGFsb2dfZ2V0LCBhbmQga2VlcCBtYXhfZHBfbGFuZXMgcGFyc2lu
ZyBhdCB0aGUgZHBfcGFuZWw/Cj4gPgo+ID4gbXNtX2RwX2NhdGFsb2dfZ2V0KCkgaXMgZ29pbmcg
dG8gYmUgcmVtb3ZlZC4gU2luY2UgdGhlIGZ1bmN0aW9ucyB0aGF0Cj4gPiBhcmUgZ29pbmcgdG8g
dXNlIGl0IGFyZSBpbiBkcF9jdHJsIG1vZHVsZSwgSSB0aG91Z2h0IHRoYXQgZHBfY3RybC5jIGlz
Cj4gPiB0aGUgYmVzdCBwbGFjZS4gQSBiZXR0ZXIgb3B0aW9uIG1pZ2h0IGJlIHRvIG1vdmUgbWF4
X2RwX2xhbmVzIGFuZAo+ID4gbWF4X2RwX2xpbmtfcmF0ZSB0byBkcF9saW5rLmMgYXMgdGhvc2Ug
YXJlIGxpbmsgcGFyYW1zLiBUaGVuCj4gPiBsYW5lX21hcHBpbmcgYWxzbyBsb2dpY2FsbHkgYmVj
b21lcyBhIHBhcnQgb2YgZHBfbGluayBtb2R1bGUuCj4gPgo+ID4gQnV0IG5vdyBJIGhhdmUgYSBt
b3JlIGltcG9ydGFudCBxdWVzdGlvbiAodHJpZ2dlcmVkIGJ5IEtyaXNobmEncyBlbWFpbAo+ID4g
YWJvdXQgU0FSMjEzMFAncyBVU0IpOiBpZiB0aGUgbGFuZXMgYXJlIHN3YXBwZWQsIGRvZXMgVVNC
IDMgd29yayBvbiB0aGF0Cj4gPiBwbGF0Zm9ybT8gT3IgaXMgaXQgYmVpbmcgZGVtb3RlZCB0byBV
U0IgMiB3aXRoIG5vYm9keSBub3RpY2luZyB0aGF0Pwo+ID4KPiA+IElmIGxhbmVzIDAvMSBhbmQg
Mi8zIGFyZSBzd2FwcGVkLCBzaG91bGRuJ3QgaXQgYmUgaGFuZGxlZCBpbiB0aGUgUU1QCj4gPiBQ
SFksIHdoZXJlIHdlIGhhbmRsZSBsYW5lcyBhbmQgb3JpZW50YXRpb24gc3dpdGNoaW5nPwo+ID4K
PiBJIGhhdmUgY2hlY2tlZCB0aGUgRFAgaGFyZHdhcmUgcHJvZ3JhbW1pbmcgZ3VpZGUgYW5kIGFs
c28gZGlzY3Vzc2VkIGl0IHdpdGggS3Jpc2huYS4KPgo+IEFjY29yZGluZyB0byB0aGUgSFBHIHNl
Y3Rpb24gJzMuNC4yIFBOIGFuZCBMYW5lIFN3YXA6IFBIWSBzdXBwb3J0cyBQTiBzd2FwIGZvciBt
YWlubGluayBhbmQgQVVYLCBidXQgaXQgZG9lc24ndCBzdXBwb3J0IGxhbmUgc3dhcCBmZWF0dXJl
LicKPgo+IFRoZSBsYW5lIHN3YXAgbWFpbmx5IHJlZmVycyB0byB0aGUgbG9naWNhbCB0byBwaHlz
aWNhbCBtYXBwaW5nIGJldHdlZW4gdGhlIERQIGNvbnRyb2xsZXIgYW5kIHRoZSBEUCBQSFkuIFRo
ZSBQSFkgaGFuZGxlcyBwb2xhcml0eSBpbnZlcnNpb24sIGFuZCB0aGUgbGFuZSBtYXAgZG9lcyBu
b3QgYWZmZWN0IFVTQiBiZWhhdmlvci4KPgo+IE9uIHRoZSBRQ1M2MTUgcGxhdGZvcm0sIHdlIGhh
dmUgYWxzbyB0ZXN0ZWQgd2hlbiBEUCB3b3JrcyB3aXRoIGxhbmUgc3dhcCwgb3RoZXIgVVNCIDMu
MCBwb3J0cyBjYW4gd29ya3Mgbm9ybWFsbHkgYXQgc3VwZXIgc3BlZWQuCgoiT3RoZXIgVVNCIDMu
MCBwb3J0cyI/IFdoYXQgZG9lcyB0aGF0IG1lYW4/IFBsZWFzZSBjb3JyZWN0IG1lIGlmIEknbQp3
cm9uZywgeW91IHNob3VsZCBoYXZlIGEgVVNCK0RQIGNvbWJvIHBvcnQgdGhhdCBpcyBiZWluZyBt
YW5hZ2VkIHdpdGgKY29tYm8gUEhZLiBEb2VzIFVTQiAzIHdvcmsgb24gdGhhdCBwb3J0PwoKSW4g
b3RoZXIgd29yZHMsIHdoZXJlIHRoZSBvcmRlciBvZiBsYW5lcyBpcyBhY3R1YWxseSBpbnZlcnRl
ZD8gQmV0d2VlbgpEUCBhbmQgY29tYm8gUEhZPyBXaXRoaW4gY29tYm8gUEhZPyBCZXR3ZWVuIHRo
ZSBQSFkgYW5kIHRoZSBwaW5vdXQ/CkdyYW50ZWQgdGhhdCBTTTYxNTAgd2FzIHN1cHBvcnRlZCBp
biBtc20tNC4xNCBjb3VsZCB5b3UgcG9zc2libHkgcG9pbnQKb3V0IGEgY29ycmVzcG9uZGluZyBj
b21taXQgb3IgYSBzZXQgb2YgY29tbWl0cyBmcm9tIHRoYXQga2VybmVsPwoKPgo+IEFkZGl0aW9u
YWxseSwgaWYgaXQgd2VyZSBwbGFjZWQgb24gdGhlIFBIWSBzaWRlLCB0aGUgUEhZIHdvdWxkIG5l
ZWQgYWNjZXNzIHRvIGRwX2xpbmvigJlzIGRvbWFpbiB3aGljaCBjYW4gYWNjZXNzIFJFR19EUF9M
T0dJQ0FMMlBIWVNJQ0FMX0xBTkVfTUFQUElORy4KCkkgd2FzIHRoaW5raW5nIGFib3V0IGludmVy
dGluZyB0aGUgU1dfUE9SVFNFTF9WQUwgYml0LgoKPiBUaGVyZWZvcmUsIHdlIGJlbGlldmUgdGhh
dCB0aGUgIG1heF9kcF9saW5rX3JhdGUsbWF4X2RwX2xhbmVzIGFuZCBsYW5lX21hcCBtb3ZlIHRv
IGRwX2xpbmsgc2lkZSBpcyBiZXR0ZXIuCj4KPiA+Pj4+ICsKPiA+Pj4+ICsgICAgICAgbWVtY3B5
KG1zbV9kcF9wYW5lbC0+bGFuZV9tYXAsIGxhbmVfbWFwLCBtc21fZHBfcGFuZWwtPm1heF9kcF9s
YW5lcyAqIHNpemVvZih1MzIpKTsKPiA+Pj4+Cj4gPj4+PiAgICAgICAgIG1zbV9kcF9wYW5lbC0+
bWF4X2RwX2xpbmtfcmF0ZSA9IG1zbV9kcF9wYW5lbF9saW5rX2ZyZXF1ZW5jaWVzKG9mX25vZGUp
Owo+ID4+Pj4gICAgICAgICBpZiAoIW1zbV9kcF9wYW5lbC0+bWF4X2RwX2xpbmtfcmF0ZSkKPiA+
Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX3BhbmVsLmggYi9kcml2
ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX3BhbmVsLmgKPiA+Pj4+IGluZGV4IDBlOTQ0ZGIzYWRmMmYx
ODdmMzEzNjY0ZmU4MGNmNTQwZWM3YTE5ZjIuLjc2MDNiOTJjMzI5MDJiZDNkNDQ4NTUzOWJkNjMw
ODUzN2ZmNzVhMmMgMTAwNjQ0Cj4gPj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2Rw
X3BhbmVsLmgKPiA+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfcGFuZWwuaAo+
ID4+Pj4gQEAgLTExLDYgKzExLDggQEAKPiA+Pj4+ICAjaW5jbHVkZSAiZHBfYXV4LmgiCj4gPj4+
PiAgI2luY2x1ZGUgImRwX2xpbmsuaCIKPiA+Pj4+Cj4gPj4+PiArI2RlZmluZSBEUF9NQVhfTlVN
X0RQX0xBTkVTICAgIDQKPiA+Pj4+ICsKPiA+Pj4+ICBzdHJ1Y3QgZWRpZDsKPiA+Pj4+Cj4gPj4+
PiAgc3RydWN0IG1zbV9kcF9kaXNwbGF5X21vZGUgewo+ID4+Pj4gQEAgLTQ2LDYgKzQ4LDcgQEAg
c3RydWN0IG1zbV9kcF9wYW5lbCB7Cj4gPj4+PiAgICAgICAgIGJvb2wgdmlkZW9fdGVzdDsKPiA+
Pj4+ICAgICAgICAgYm9vbCB2c2Nfc2RwX3N1cHBvcnRlZDsKPiA+Pj4+Cj4gPj4+PiArICAgICAg
IHUzMiBsYW5lX21hcFtEUF9NQVhfTlVNX0RQX0xBTkVTXTsKPiA+Pj4+ICAgICAgICAgdTMyIG1h
eF9kcF9sYW5lczsKPiA+Pj4+ICAgICAgICAgdTMyIG1heF9kcF9saW5rX3JhdGU7Cj4gPj4+Pgo+
ID4+Pj4KPiA+Pj4+IC0tCj4gPj4+PiAyLjI1LjEKPiA+Pj4+Cj4gPj4+Cj4gPj4+Cj4gPj4KPiA+
Pgo+ID4+IC0tCj4gPj4gbGludXgtcGh5IG1haWxpbmcgbGlzdAo+ID4+IGxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCj4gPj4gaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cj4gPgo+CgoKLS0gCldpdGggYmVzdCB3aXNoZXMKRG1pdHJ5Cgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
