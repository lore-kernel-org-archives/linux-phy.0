Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAF02C531F9
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jul 2026 02:01:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UvJspRNnqGFN6OZUlzOrAPjLAvshiqCRA8ZaKv9Y3RY=; b=WI8eWbQ+KiMRZc
	fooTRTM3p6Lk7zZTeThBax1sB41meQogc8mPEQOK38DTuxK15RbTemvUNWsZgUbSTZZyN6di0pJhv
	2gJAwbW1Q6MN4d6JAZFjjhNeV0hGrUtjk8rNEFsJ806BUpG6H3akPcMb0/gunYC+s1Ty+TEh0W4T8
	qNyWL46jPiOy+YdLc095KShNLM0OBL+OrluCpNPA1cLh7YLw7l7HjUrb1/xZ/5k8p+QqqnhGMfEBb
	+zwSHDMUio0nJjwYcgDEy6jvAKdR6tXOL9e4b/K8oRTtKv46nfeQqD6KJ4EECWPNz4wS4ac0fkEwG
	WLs60jIAVBfJODB7xXnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woAed-00000001nEE-14o8;
	Mon, 27 Jul 2026 02:01:19 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woAea-00000001nDt-0Y4h
	for linux-phy@lists.infradead.org;
	Mon, 27 Jul 2026 02:01:18 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-69e0f4eb4ecso424197a12.0
        for <linux-phy@lists.infradead.org>; Sun, 26 Jul 2026 19:01:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785117674; cv=none;
        d=google.com; s=arc-20260327;
        b=cH1z+887qV1W42q4LmR0uxkEeAok38XeMjNrDCzDT9+GA5xQFc9uvevQYz9EU6d12i
         LPEXcPDRLBLd8NS6T85qb4vOPyeHMyaJz2PvEqqNkKCtze/k7JV/GsAlEDXll/vUTrR8
         cPyRXEqev9qe1DGu+Jy1Rqz2tBy9lFAT4VQCLE8AkSFaPAmDWvCsElLaJ+/6GM7xKgXt
         8HyYsbVhZjPTLg4idv/2y50flAiCSgiG52Y13rsl/Jp+v9VEGsVXfuxxd/dM1obi0z0A
         S+fcRwvvD5a+k2/HYhmTQnes6IUzX3Uuz32uL3QDxyU4ElujTXIBpjCeI4Xhm8/1nrYF
         cWyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=5+/AHWCEducqpwF8K7BV+G/0gvvxyPh5lYi8bnFbPfA=;
        fh=meViytrpRwq7KRsE5mSc2sKgOVJpL777Uv9v95vtOEA=;
        b=d8PyV7u+GMGOxA1eWwEaoncCr4oQvJFU9KRgFq3ZMwLyp59G9Kdj6NqqUAVsvEzK73
         K888kxr6fIfzVgqbsC3KZwM/pA8MLg5VjrSfjRfQhMzXlJQWrYSgJD7om+5MV8Af7Hjq
         GK4bzMEM/vFOZCqUvEN0QKH9Jqmnka5X6y9i1em/2UJ5e8r1c8hmC1axxVT/CH0C6jDu
         qfZSJY+vzJLK+7J3Ql6JQlYvsh2kI34G0CtHltROD66Rb1zT0xgeQhyEDVbf0erQC6WP
         Pmw3p+owjyggXje/6L8SWgQuNWk7QoseJ84Ot0czM4n+AeY0BVQb5NRdnfoHifCxlgbx
         arvA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785117674; x=1785722474; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=5+/AHWCEducqpwF8K7BV+G/0gvvxyPh5lYi8bnFbPfA=;
        b=eW0MMJ+uu1fDG+igW0VzKyrgOiqZNW9zMe4Adu1GlPYBTQSoWlOkvhfBETrgpuGU1v
         EfCfMRl4/GRady5nODjZL0mLJUawCFG/pGyQCW4n/sawOSb023Ux3lPq0Zp8/eSSrXQb
         qjaYuFkocuKlcu7vBgXpD/ZGxLvmRNQJudxn/39yKkBYL4e5X7AjyZ6hRQoFMgnahUb5
         zwlH/TwfxdhPpWxm0SmdmbTFXVTpaynKcTuPdOT7I3D/mRE83fQEEIUIX72oWbG/B77A
         O8Q1dCRs5xg7SHlIM3v05Y9XALIChwErgiptBLvosOdYn4vl8JYrZHRUddunbkQ2fOMu
         wi0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785117674; x=1785722474;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5+/AHWCEducqpwF8K7BV+G/0gvvxyPh5lYi8bnFbPfA=;
        b=pzk4EniZQzLEgF6eW9NFXeLRQHI0Q+HmnJjuq3HCJmNR5Kba6795+lkO2mu+P5Hkz3
         8aJQ4Z1fFg+9mf17JptDWEQUqy/sf0G1tMClM/RKBm0w2vx/WBvvKGhTJ5B0r6HBDrMn
         tsif9R9Tml1sjKuEFeFV3lGK3LIbbgZNcVw6D8gCl/V+F5qhO+sMhDaWdOcCK1QujFKn
         UtbAAFdvAi5VTMlz4U+7wvYjZIfdAM8B0F56UZOSBEu4shUiL0AsT2bhU8GbVwpzWRDN
         cl0xWRDgp/NXmnzqK+S9lVsmZmyMkbhgZL45Jigz26J0MtyhDkKLMEsy+oPv2Hhm1U1E
         kvcA==
X-Forwarded-Encrypted: i=1; AHgh+RpETOAro20BqsQY7fECrxc9MpGS8DNYmTr8fwSILah07Oyp2D0byVbV9u16tRL4rvGr5F7maaa/SJs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx9cdRUz45UGzER6X/zGLvx5a4occKhr7zXfqlKWYQRC4hsWa38
	atskJFAK9+p/UoNpRE3PW5AV6cuQF9WG/hGkGKf97iaHV1tr14r+jLvQIyJac1l1k5yT+96XCVz
	PeaWP1WXb5hkJPfukf8+8rZ1s2MHAky4=
X-Gm-Gg: AR+sD11gd7/m3EJYWOahM57OxTePZDuADWCIYLlArJm85LQa8hBA1DYqhTYhoN6Lv78
	REaSmPnB3mHxUejA6vkhuIipO1oc65CigBBTYO8fcAVDTCqsuHgnr0ZDpNQIPEqQiOg5rt0lJu3
	0/dbAIJwt1NCChcXPOu8HrHEhsc0sfd838JP17PxHI+NuQll4ySQNPfLYRZKjB7vaG6g2+MofGd
	lsZwZds05AiWvnKGgIa/CCg+oXs4WeI+9RjT//E4A7flr2r9EjRDKy5nOMK240LjzscE6A=
X-Received: by 2002:a05:6402:234f:b0:698:81d7:b812 with SMTP id
 4fb4d7f45d1cf-69fc1160318mr1644222a12.3.1785117673656; Sun, 26 Jul 2026
 19:01:13 -0700 (PDT)
MIME-Version: 1.0
References: <20260726-dcphy-rx-v1-v2-0-cf9cc34a412a@gmail.com>
 <20260726-dcphy-rx-v1-v2-4-cf9cc34a412a@gmail.com> <20260726150717.05D3F1F000E9@smtp.kernel.org>
In-Reply-To: <20260726150717.05D3F1F000E9@smtp.kernel.org>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Mon, 27 Jul 2026 10:01:01 +0800
X-Gm-Features: AUfX_mxPeRAwfMB1LW6SbwIcSwcwD6Ov9zJ0Sq5EDYBErYupCAq0i7GTmKZBjAA
Message-ID: <CAPwA33K1oxnyzPgFOSTGyjCX2RLE8BEupUHe6XOn5A6UWSPKfw@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] phy: rockchip-samsung-dcphy: add MIPI D-PHY
 receiver support
To: sashiko-reviews@lists.linux.dev
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, conor+dt@kernel.org, 
	vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260726_190116_746663_CA513792 
X-CRM114-Status: GOOD (  28.95  )
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

PiBEb2VzIHRoaXMgY29kZSBwb2xsIGZvciBQSFlfUkVBRFkgd2hpbGUgdGhlIFBIWSBpcyBzdGls
bCBoZWxkIGluIHJlc2V0PwoKWWVzLCBhbmQgdGhhdCBpcyB0aGUgc2VxdWVuY2UgdGhlIFRSTSBz
cGVjaWZpZXM6IHRoZSBSSzM1ODggVFJNCnN0YXJ0LXVwIHNlcXVlbmNlIChmaWd1cmUgMjItOCkg
YXNzZXJ0cyBTX1JFU0VUTiwgcHJvZ3JhbXMgdGhlIHNldHRsZQpyZWdpc3RlcnMsIGVuYWJsZXMg
dGhlIGxhbmVzLCB3YWl0cyBmb3IgUEhZX1JFQURZIHRvIGdvIGhpZ2gsIGFuZCBvbmx5CnRoZW4g
ZGVhc3NlcnRzIFNfUkVTRVROLiBUaGUgcG9sbCBkb2VzIHN1Y2NlZWQgb24gcmVhbCBoYXJkd2Fy
ZSAtCmV2ZXJ5IGNhcHR1cmUgbGlzdGVkIGluIHRoZSBjb3ZlcidzIFRlc3Rpbmcgc2VjdGlvbiB3
ZW50IHRocm91Z2ggdGhpcwpleGFjdCBwYXRoLgoKPiBXaXRob3V0IHRoaXMgaW4gdGhlIFJYIHBh
dGgsIGNvdWxkIHRoZSBzaGFyZWQgQVBCIGJ1cyBpbnRlcmZhY2UgYW5kIEJJQVMKPiBibG9jayBy
ZW1haW4gaW4gYW4gdW5pbml0aWFsaXplZCBzdGF0ZSBmcm9tIHRoZSBib290bG9hZGVyPwoKVGhp
cyBvbmUgY2FtZSB1cCBvbiB2MSBhcyB3ZWxsOyBzdW1tYXJpemluZyB0aGUgZGlzcG9zaXRpb246
IHRoZQp2ZW5kb3IgQlNQJ3MgUlggYnJpbmctdXAgZG9lcyBub3QgdG91Y2ggdGhlIEFQQiByZXNl
dCBlaXRoZXIsIHRoZSBUUk0KZG9lcyBub3QgcmVxdWlyZSBpdCBmb3IgdGhlIHJlY2VpdmVyLCBh
bmQgdGhlIENTSS1vbmx5IGNvbmZpZ3VyYXRpb24gLQp3aGVyZSB0aGUgcmVjZWl2ZXIgaXMgdGhl
IG9ubHkgZGlyZWN0aW9uIGV2ZXIgcG93ZXJlZCAtIGNhcHR1cmVzCmZyYW1lcyBvbiByZWFsIGhh
cmR3YXJlIHdpdGhvdXQgdGhlIEFQQiByZXNldCBldmVyIGJlaW5nIGlzc3VlZC4gVGhlCkJJQVMg
YmxvY2sgaXMgcHJvZ3JhbW1lZCBleHBsaWNpdGx5IGJ5IHdoaWNoZXZlciBkaXJlY3Rpb24gcG93
ZXJzIG9uCmZpcnN0LCBzbyBub3RoaW5nIHJlbGllcyBvbiBib290bG9hZGVyIHN0YXRlLgoKSGFw
cHkgdG8gcmV2aXNpdCBpZiBlaXRoZXIgYXNzZXNzbWVudCBsb29rcyB3cm9uZy4KClRoYW5rcywK
SmFzb24KCgo8c2FzaGlrby1ib3RAa2VybmVsLm9yZz4g5pa8IDIwMjblubQ35pyIMjbml6XpgLHm
l6Ug5LiL5Y2IMTE6MDflr6vpgZPvvJoKPgo+IFRoYW5rIHlvdSBmb3IgeW91ciBjb250cmlidXRp
b24hIFNhc2hpa28gQUkgcmV2aWV3IGZvdW5kIDIgcG90ZW50aWFsIGlzc3VlKHMpIHRvIGNvbnNp
ZGVyOgo+IC0gW0hpZ2hdIFRoZSBSWCBwb3dlci1vbiBzZXF1ZW5jZSBmYWlscyB0byB0b2dnbGUg
dGhlIHNoYXJlZCBBUEIgcmVzZXQgKGBhcGJfcnN0YCkgd2hlbiBpdCBpcyB0aGUgZmlyc3QgUEhZ
IGRpcmVjdGlvbiB0byBwb3dlciBvbiwgcG90ZW50aWFsbHkgbGVhdmluZyBzaGFyZWQgUEhZIHN0
YXRlIHVuaW5pdGlhbGl6ZWQuCj4gLSBbSGlnaF0gVGhlIFJYIGxhbmUgZW5hYmxlIGZ1bmN0aW9u
IHBvbGxzIGZvciBgUEhZX1JFQURZYCB3aGlsZSB0aGUgUEhZIGlzIHN0aWxsIGhlbGQgaW4gcmVz
ZXQsIGd1YXJhbnRlZWluZyBhIHRpbWVvdXQgZmFpbHVyZS4KPiAtLQo+Cj4gLS0tIFBhdGNoIFs0
XTogW1BBVENIIHYyIDQvNF0gcGh5OiByb2NrY2hpcC1zYW1zdW5nLWRjcGh5OiBhZGQgTUlQSSBE
LVBIWSByZWNlaXZlciBzdXBwb3J0IC0tLQo+IGNvbW1pdCA4YjFmNWFkYmQwNmRmNTZhZDAzZTJi
OGQwODFhNjU4N2JlNWZlNzFkCj4gQXV0aG9yOiBKYXNvbiBZYW5nIDxqYXNvbjk4MTY2QGdtYWls
LmNvbT4KPgo+IHBoeTogcm9ja2NoaXAtc2Ftc3VuZy1kY3BoeTogYWRkIE1JUEkgRC1QSFkgcmVj
ZWl2ZXIgc3VwcG9ydAo+Cj4gVGhpcyBwYXRjaCBpbXBsZW1lbnRzIHRoZSByZWNlaXZlciAoQ1NJ
KSBkaXJlY3Rpb24gb2YgdGhlIEQtUEhZIGZvciB0aGUKPiBSb2NrY2hpcCBTYW1zdW5nIGRyaXZl
ci4gSXQgYWRkcyB0aGUgUlggcmVnaXN0ZXIgbGF5b3V0LCBIUy1mcmVxdWVuY3kgc2V0dGxlCj4g
dGFibGUsIGFuZCBob29rcyB0aGUgcmVjZWl2ZXIgYnJpbmctdXAgYW5kIHRlYXJkb3duIGludG8g
dGhlIHBlci1kaXJlY3Rpb24KPiBwb3dlciBwYXRocy4gVGhlIFBMTCBzZXF1ZW5jZSBpcyBhbHNv
IHNraXBwZWQgZm9yIHRoZSByZWNlaXZlIHBhdGggYXMgdGhlCj4gc2Vuc29yIHN1cHBsaWVzIHRo
ZSBsaW5rIGNsb2NrLgo+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5
LXJvY2tjaGlwLXNhbXN1bmctZGNwaHkuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2Nr
Y2hpcC1zYW1zdW5nLWRjcGh5LmMKPiA+IGluZGV4IDk1ZWIxMjAwY2FiNDguLmY2ZDExMjkzNWMw
MTYgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ft
c3VuZy1kY3BoeS5jCj4gPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAt
c2Ftc3VuZy1kY3BoeS5jCj4gWyAuLi4gXQo+ID4gQEAgLTk4OCw2ICsxMDQ2LDIyOCBAQCBzdHJ1
Y3Qgc2Ftc3VuZ19taXBpX2RwaHlfdGltaW5nIHNhbXN1bmdfbWlwaV9kcGh5X3RpbWluZ190YWJs
ZVtdID0gewo+IFsgLi4uIF0KPiA+ICtzdGF0aWMgaW50IHNhbXN1bmdfbWlwaV9kcGh5X3J4X2xh
bmVfZW5hYmxlKHN0cnVjdCBzYW1zdW5nX21pcGlfZGNwaHkgKnNhbXN1bmcpCj4gPiArewo+ID4g
KyAgICAgc3RydWN0IHNhbXN1bmdfbWlwaV9kY3BoeV9kaXIgKnBkID0gJnNhbXN1bmctPnBoeXNb
UktfRENQSFlfRElSX1JYXTsKPiA+ICsgICAgIHUzMiBzdHM7Cj4gPiArICAgICBpbnQgcmV0LCBp
Owo+ID4gKwo+ID4gKyAgICAgcmVnbWFwX3VwZGF0ZV9iaXRzKHNhbXN1bmctPnJlZ21hcCwgRFBI
WV9TQ19HTlJfQ09OMCwgUEhZX0VOQUJMRSwgUEhZX0VOQUJMRSk7Cj4gPiArICAgICBmb3IgKGkg
PSAwOyBpIDwgcGQtPmxhbmVzOyBpKyspCj4gPiArICAgICAgICAgICAgIHJlZ21hcF91cGRhdGVf
Yml0cyhzYW1zdW5nLT5yZWdtYXAsIHJ4X2RhdGFfbGFuZV9nbnJfY29uMFtpXSwKPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIFBIWV9FTkFCTEUsIFBIWV9FTkFCTEUpOwo+ID4g
Kwo+ID4gKyAgICAgcmV0ID0gcmVnbWFwX3JlYWRfcG9sbF90aW1lb3V0KHNhbXN1bmctPnJlZ21h
cCwgRFBIWV9TQ19HTlJfQ09OMCwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBzdHMsIHN0cyAmIFBIWV9SRUFEWSwgMjAwLCA0MDAwKTsKPgo+IFtTZXZlcml0eTogSGln
aF0KPiBEb2VzIHRoaXMgY29kZSBwb2xsIGZvciBQSFlfUkVBRFkgd2hpbGUgdGhlIFBIWSBpcyBz
dGlsbCBoZWxkIGluIHJlc2V0Pwo+Cj4gTG9va2luZyBhdCBzYW1zdW5nX21pcGlfZHBoeV9yeF9w
b3dlcl9vbigpLCBzYW1zdW5nLT5zX3BoeV9yc3QgaXMgYXNzZXJ0ZWQsCj4gdGhlbiBzYW1zdW5n
X21pcGlfZHBoeV9yeF9sYW5lX2VuYWJsZSgpIGlzIGNhbGxlZCwgYW5kIG9ubHkgYWZ0ZXIgdGhh
dCBpcwo+IHNfcGh5X3JzdCBkZWFzc2VydGVkLgo+Cj4gV2lsbCB0aGlzIGNhdXNlIHRoZSBQSFlf
UkVBRFkgcG9sbCB0byBhbHdheXMgdGltZW91dD8KPgo+ID4gKyAgICAgaWYgKHJldCkgewo+ID4g
KyAgICAgICAgICAgICBkZXZfZXJyKHNhbXN1bmctPmRldiwgIlJYIGNsb2NrIGxhbmUgbm90IHJl
YWR5XG4iKTsKPiA+ICsgICAgICAgICAgICAgZ290byBlcnJfbGFuZV9kaXNhYmxlOwo+ID4gKyAg
ICAgfQo+IFsgLi4uIF0KPiA+IEBAIC0xMDA0LDYgKzEyODQsNDQgQEAgc3RhdGljIHZvaWQgc2Ft
c3VuZ19taXBpX2RjcGh5X2JpYXNfYmxvY2tfZW5hYmxlKHN0cnVjdCBzYW1zdW5nX21pcGlfZGNw
aHkgKnNhbXMKPiBbIC4uLiBdCj4gPiArc3RhdGljIGludCBzYW1zdW5nX21pcGlfZHBoeV9yeF9w
b3dlcl9vbihzdHJ1Y3Qgc2Ftc3VuZ19taXBpX2RjcGh5ICpzYW1zdW5nKQo+ID4gK3sKPiA+ICsg
ICAgIGJvb2wgZmlyc3QgPSAhc2Ftc3VuZy0+cGh5c1tSS19EQ1BIWV9ESVJfVFhdLnBvd2VyZWQ7
Cj4gPiArICAgICBpbnQgcmV0Owo+ID4gKwo+ID4gKyAgICAgaWYgKCFzYW1zdW5nLT5waHlzW1JL
X0RDUEhZX0RJUl9SWF0uaHNfY2xrX3JhdGUpCj4gPiArICAgICAgICAgICAgIHJldHVybiAtRUlO
VkFMOwo+ID4gKwo+ID4gKyAgICAgcmVzZXRfY29udHJvbF9hc3NlcnQoc2Ftc3VuZy0+c19waHlf
cnN0KTsKPiA+ICsKPiA+ICsgICAgIGlmIChmaXJzdCkKPiA+ICsgICAgICAgICAgICAgc2Ftc3Vu
Z19taXBpX2RjcGh5X2JpYXNfYmxvY2tfZW5hYmxlKHNhbXN1bmcpOwo+Cj4gW1NldmVyaXR5OiBI
aWdoXQo+IElmIHRoZSBSWCBkaXJlY3Rpb24gaXMgcG93ZXJlZCBvbiBmaXJzdCwgZG9lcyBpdCBu
ZWVkIHRvIHRvZ2dsZSB0aGUgc2hhcmVkIEFQQgo+IHJlc2V0IChhcGJfcnN0KSBiZWZvcmUgZW5h
YmxpbmcgdGhlIGJpYXMgYmxvY2s/Cj4KPiBJbiBzYW1zdW5nX21pcGlfZHBoeV90eF9wb3dlcl9v
bigpLCB3aGVuIGZpcnN0IGlzIHRydWUsIGl0IGRvZXM6Cj4KPiAgICAgICAgIGlmIChmaXJzdCkg
ewo+ICAgICAgICAgICAgICAgICByZXNldF9jb250cm9sX2Fzc2VydChzYW1zdW5nLT5hcGJfcnN0
KTsKPiAgICAgICAgICAgICAgICAgdWRlbGF5KDEpOwo+ICAgICAgICAgICAgICAgICByZXNldF9j
b250cm9sX2RlYXNzZXJ0KHNhbXN1bmctPmFwYl9yc3QpOwo+ICAgICAgICAgfQo+Cj4gV2l0aG91
dCB0aGlzIGluIHRoZSBSWCBwYXRoLCBjb3VsZCB0aGUgc2hhcmVkIEFQQiBidXMgaW50ZXJmYWNl
IGFuZCBCSUFTCj4gYmxvY2sgcmVtYWluIGluIGFuIHVuaW5pdGlhbGl6ZWQgc3RhdGUgZnJvbSB0
aGUgYm9vdGxvYWRlcj8KPgo+ID4gKyAgICAgc2Ftc3VuZ19taXBpX2RwaHlfcnhfY29uZmlnX2Nv
bW1vbihzYW1zdW5nKTsKPiA+ICsKPiA+ICsgICAgIHJldCA9IHNhbXN1bmdfbWlwaV9kcGh5X3J4
X2NvbmZpZ19zZXR0bGUoc2Ftc3VuZyk7Cj4gPiArICAgICBpZiAocmV0KQo+ID4gKyAgICAgICAg
ICAgICBnb3RvIG91dF9kZWFzc2VydDsKPiA+ICsKPiA+ICsgICAgIHJldCA9IHNhbXN1bmdfbWlw
aV9kcGh5X3J4X2xhbmVfZW5hYmxlKHNhbXN1bmcpOwo+ID4gKwo+ID4gK291dF9kZWFzc2VydDoK
PiA+ICsgICAgIHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQoc2Ftc3VuZy0+c19waHlfcnN0KTsKPiA+
ICsKPiA+ICsgICAgIHJldHVybiByZXQ7Cj4gPiArfQo+Cj4gLS0KPiBTYXNoaWtvIEFJIHJldmll
dyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MjYtZGNwaHktcngtdjEt
djItMC1jZjljYzM0YTQxMmFAZ21haWwuY29tP3BhcnQ9NAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
