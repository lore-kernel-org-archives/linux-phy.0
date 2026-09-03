Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 811D9C624D7
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 10:16:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P28qStquqpmPSwljOuBknhRLRtGtAW2P/bcj9IcdKpg=; b=LvZxCBBp9JgjzW
	GoNzicUD7T/5eI9ubzcVFnQrK/iPXkODRpLnUUQKd0WWiZyGNCggB0kTNa4FQOmkZH9lzoh+R5ear
	SJ3J6yhVR37Xa2fb1IvXa3JbnHEfMWxCNLsmN8eKgW+9l4hZjE9fQkdFwuWtcwcY7eSRekP2NoRkc
	4ZVSDqneje0aY8f2EsphshKSWSEEX8C6yoi4Z6JFrLHe92+NNm8SbOe3lyNvnlnw8q1uLBeVluZCR
	gnyU+xRU8HdDo11+qmU4GQjI+btUkojTPpxDKoc/nBf1ER0nCuXeRd1liMcAapokWYk7Op+e68XeY
	OBEDxmhwN+jEYxavs9eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x24UL-0000000H3qV-0z8C;
	Thu, 03 Sep 2026 10:16:09 +0000
Received: from mail-ed2-x0a.google.com ([2a00:1450:4864:33::a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x24UF-0000000H3p9-2DsJ
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 10:16:04 +0000
Received: by mail-ed2-x0a.google.com with SMTP id 4fb4d7f45d1cf-6a5f56eae1cso1171297a12.0
        for <linux-phy@lists.infradead.org>; Thu, 03 Sep 2026 03:16:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788430562; cv=none;
        d=google.com; s=arc-20260327;
        b=k2SEnfDUF1hrwxi1f41VZ8+JAtQRAsabl6Lq/ucKI8hRVRXwRY32bM/GmZdiF6mQ93
         nLo9LHgsDpVyBK0YFL3HtTFmJrJWY+/tb4OIWmPaiO8rcQJz5fGCZb5VNBpTk5lREvuV
         Nu2d+mQwpDgZBR3JAgpsPrMlUgpX3yoVoO2Bz4JF//PLkmW/KdV68dxaYxDDj0bU08Rt
         n91IplIW+nLN2aDakxrCx39fRYwMKz2h0aaOGosOt3rftwuw8x3oprm4fPGNWNRfdaAd
         PeyNeupCLWbrlgBYXZlHqefjwbySwFkQOYgR1XFU0sQ6Qq3vCyQhkNS1G4lN2nU330GG
         tJVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=XZZc60YapILALMj+sMrNLxAzX0DBFLxvwfnKJeCXNro=;
        fh=GqKD4/jyAwES2TnpfPO8nt7tv7fUNV2hf4exL0djuAg=;
        b=cVnk+IxZ6sefAc9QqR53raqVkwtQxw4aUL0MFz5hx2Ud3KJR+hPhHmlLhWa0PUOik8
         7k+BQqmrAVMyKBNDQ4hRmAIJZ2A4MHBOOBboHfDL95lecW34HGrIawGoph3mTwrVQTCe
         Bt8tVlq025nmrzkyGBl+aGZt45LC2tJAhsH4/s1pAa4TLkwTvYG8jRiGs1LR9J6JkLJB
         nk6zn9iIeZWa0/85uvhASkJ361BMHHOuyw9e8/wiQNwP6uoaG+gdR8+OwwQupC1VCp41
         PMsljzgcIdPvS4sB/rUbYuixCnhxqBH4YRZw9YYDabX0pL+kAJmFM7BoknJmNlOdri34
         JMcA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788430562; x=1789035362; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=XZZc60YapILALMj+sMrNLxAzX0DBFLxvwfnKJeCXNro=;
        b=Ij+eGXez0Ud8prSayzcx1xURzulfA0vDFdx3xhUuDl4ijhHcBeOibw2vzSnSP6r274
         nirwK8Qk6LBbduWEbpdfoE1yONu2aqpiyLDJKwIOegwacdjDizVH/Xx+sC1eHPRZheLE
         MA61dmJIcXoCA2xDRxECj1Pkpsezyn51x/U3hx+k1Or+8At5SKqsLpM2y9GoxiIXvORR
         wTNpCXq3LyCYFzghic5Zd5nDcp9dnfP4/S+PBc636fREFErqTUh5jUSWz7qFWGsv63cM
         m70XHTV2tCtXpAuNmTQ6yrbCD/gCWwrlgxQ4f6GTgbiqKFtnZ473Npw3z+Jolyclwvr/
         gq+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788430562; x=1789035362;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=XZZc60YapILALMj+sMrNLxAzX0DBFLxvwfnKJeCXNro=;
        b=K6y6JB11XX10Y1AdLPT2w6z8brSlsQrVANYruVUophgUZFNOdez7hffRc+WR5yZ2f9
         dcdC0gNwfh6pHYDz4j3xM4jNl7ssgi3PECMG96IVKprLXLaEiT73lEQAELg8/KkGm6Rm
         F9XynafZEpmT2dcgsGfXhxpSjFVyPPMBppGaoaSucef5xRewPP83PQE9g3ADwcClX1ns
         W0jOZJD+J9H5OR3PjhAtB8dynZ81GdktTRaBRBhmi3865PaJLFWpOxeVrG/H1bUsixCg
         +i+czHSZr928Fi6fKjqVt6ZU3wQQN04Yy+WMGSbo6X08VNxgvslbhRyR6dOwN0BMLJ+z
         hJ5A==
X-Forwarded-Encrypted: i=1; AKwUvBzlVTp/pgVCzmX9dXu1iE6VWnHkX13Klg2ODOQdh+E8gD4zFpH/cKdb+YiQ3z4RP2zCyq6NlApMwaI=@lists.infradead.org
X-Gm-Message-State: AFuF++nPECMEPTumPpgHFEDJvrQsbFmONLZgASLcvgJJRGdR6LkW6tYD
	C5WhF2GvGvGYtrj6QFPSyi64bcB+HqJajE0U8j7s7uoFlBPc8jFSUP5dz+mEY7zb4erI0ytpRCq
	jHee6OfFqQbBGawnp3AbqCdl/uFEzb8E=
X-Gm-Gg: AYBFou14Om0bRiZfvyJJQyyh+LOZBpcs5F48NOUmDhCCPCn2IhFtTjWWMUW8v2JhecJ
	8bC0tVYijV8mWUT64372OI6HtBH9V+e5rHsAn0hLHJNBX4Dm4m/zhHzdJpG2bpphJAu+ZG29hDc
	smteovjj+KBkzkQNAvgTDHY4c4cxlFl1jh2oH3Qd2XvCj0sDhEcGftTzD026tFZaIe2jwdmLMMo
	aRfshE00cz9HP9szFbTdWAm7AKIikdRmTgCONKzGaaivih0kPuu9v4uVgTP4IyfUqJsrVdWQmiW
	e/5o+4yaxOkKBpDHwylAtpK5VOPBTJkH0G359ITXUCh89ARpTmK98MquHeI=
X-Received: by 2002:a17:907:7203:b0:c25:254:292e with SMTP id
 a640c23a62f3a-c25d4c9f1a7mr635886866b.0.1788430561260; Thu, 03 Sep 2026
 03:16:01 -0700 (PDT)
MIME-Version: 1.0
References: <20260901150111.141037-1-coiaprant@gmail.com> <20260901150111.141037-8-coiaprant@gmail.com>
 <20260902150440.78D631F00A3D@smtp.kernel.org>
In-Reply-To: <20260902150440.78D631F00A3D@smtp.kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Thu, 3 Sep 2026 18:15:50 +0800
X-Gm-Features: AcwNN1WY1KXAlYP6ywO7GSbIWh5cdAyLJ9V8yYe_I0JGYIyWb1Ll7tKOm3JNX8k
Message-ID: <CALj3r0jnyqvPgwURmggRBZiCqDiQ4f03=tn13BFez0=W8LH00Q@mail.gmail.com>
Subject: Re: [PATCH net-next v3 07/10] net: pcs: xpcs: add Rockchip RK3568
 platform glue driver
To: sashiko-reviews@lists.linux.dev
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org, 
	olteanv@gmail.com, vkoul@kernel.org, devicetree@vger.kernel.org, 
	robh@kernel.org, conor+dt@kernel.org, wsa+renesas@sang-engineering.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_031603_674262_D5B8A9E8 
X-CRM114-Status: GOOD (  26.07  )
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

PHNhc2hpa28tYm90QGtlcm5lbC5vcmc+IOS6jjIwMjblubQ55pyIMuaXpeWRqOS4iSAyMzowNOWG
memBk++8mgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3Bjcy9LY29uZmlnIGIvZHJpdmVy
cy9uZXQvcGNzL0tjb25maWcKPiA+IC0tLSBhL2RyaXZlcnMvbmV0L3Bjcy9LY29uZmlnCj4gPiAr
KysgYi9kcml2ZXJzL25ldC9wY3MvS2NvbmZpZwo+ID4gQEAgLTEyLDYgKzEyLDI5IEBAIGNvbmZp
ZyBQQ1NfWFBDUwo+IFsgLi4uIF0KPiA+ICtjb25maWcgUENTX1hQQ1NfUk9DS0NISVAKPiA+ICsg
ICAgIHRyaXN0YXRlICJSb2NrY2hpcCBYUENTIGNvbnRyb2xsZXIgc3VwcG9ydCIKPiA+ICsgICAg
IGRlZmF1bHQgQVJDSF9ST0NLQ0hJUAo+ID4gKyAgICAgZGVwZW5kcyBvbiBPRiAmJiAoQVJDSF9S
T0NLQ0hJUCB8fCBDT01QSUxFX1RFU1QpCj4KPiBbU2V2ZXJpdHk6IEhpZ2hdCj4gSXMgdGhpcyBt
aXNzaW5nIGEgUE0gZGVwZW5kZW5jeT8KPgo+IElmIHRoZSBrZXJuZWwgaXMgYnVpbHQgd2l0aCBD
T05GSUdfUE0gZGlzYWJsZWQsIHBtX3J1bnRpbWVfcmVzdW1lX2FuZF9nZXQoKQo+IHJldHVybnMg
MCB3aXRob3V0IGVuYWJsaW5nIHRoZSBoYXJkd2FyZSBjbG9jay4gVGhpcyBjb3VsZCBsZWFkIHRv
IGEKPiBzeW5jaHJvbm91cyBleHRlcm5hbCBhYm9ydCAoU0Vycm9yKSB3aGVuIHRoZSB1bmNsb2Nr
ZWQgQVBCIHJlZ2lzdGVycyBhcmUKPiBzdWJzZXF1ZW50bHkgYWNjZXNzZWQgaW4geHBjc19ya19y
ZWFkX3JlZygpLgoKQVJDSF9ST0NLQ0hJUCBhbHJlYWR5IHNlbGVjdHMgQ09ORklHX1BNLgoKPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9wY3MvTWFrZWZpbGUgYi9kcml2ZXJzL25ldC9wY3Mv
TWFrZWZpbGUKPiA+IC0tLSBhL2RyaXZlcnMvbmV0L3Bjcy9NYWtlZmlsZQo+ID4gKysrIGIvZHJp
dmVycy9uZXQvcGNzL01ha2VmaWxlCj4gPiBAQCAtMSwxMCArMSw5IEBACj4gPiAgIyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+ID4gICMgTWFrZWZpbGUgZm9yIExpbnV4IFBDUyBk
cml2ZXJzCj4gPgo+ID4gLXBjc194cGNzLSQoQ09ORklHX1BDU19YUENTKSAgOj0gcGNzLXhwY3Mu
byBwY3MteHBjcy1wbGF0Lm8gXAo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
cGNzLXhwY3MtbnhwLm8gcGNzLXhwY3Mtd3gubwo+ID4gLQo+ID4gLW9iai0kKENPTkZJR19QQ1Nf
WFBDUykgICAgICAgICAgICAgICArPSBwY3NfeHBjcy5vCj4gPiArb2JqLSQoQ09ORklHX1BDU19Y
UENTKSArPSBwY3MteHBjcy5vIHBjcy14cGNzLW54cC5vIHBjcy14cGNzLXd4Lm8KPgo+IFtTZXZl
cml0eTogTG93XQo+IERvZXMgdGhpcyBzeW50YXggY3JlYXRlIHNlcGFyYXRlIG1vZHVsZXMgaW5z
dGVhZCBvZiBhIGNvbXBvc2l0ZSBtb2R1bGU/Cj4KPiBCZWNhdXNlIHBjcy14cGNzLmMgcmVmZXJl
bmNlcyBmdW5jdGlvbnMgbGlrZSBueHBfc2phMTEwNV9zZ21paV9wbWFfY29uZmlnCj4gZGVmaW5l
ZCBpbiBwY3MteHBjcy1ueHAuYyB3aXRob3V0IEVYUE9SVF9TWU1CT0wgYmVpbmcgcHJlc2VudCwg
Y3JlYXRpbmcKPiBzZXBhcmF0ZSBtb2R1bGVzIHdpbGwgYnJlYWsgc3ltYm9sIHJlc29sdXRpb24g
YW5kIGNhdXNlIG1vZHBvc3QgbGlua2FnZQo+IGZhaWx1cmVzIHdoZW4gQ09ORklHX1BDU19YUENT
PW0uCgpTdXJlLCBJIHdpbGwgcmV2ZXJ0IGl0IGluIG5leHQgdmVyc2lvbi4KCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9uZXQvcGNzL3Bjcy14cGNzLXJrLmMgYi9kcml2ZXJzL25ldC9wY3MvcGNz
LXhwY3MtcmsuYwo+ID4gLS0tIC9kZXYvbnVsbAo+ID4gKysrIGIvZHJpdmVycy9uZXQvcGNzL3Bj
cy14cGNzLXJrLmMKPiBbIC4uLiBdCj4gPiArc3RhdGljIGludCB4cGNzX3JrX2luaXRfY2xrKHN0
cnVjdCBkd194cGNzX3JrICpweHBjcykKPiA+ICt7Cj4gWyAuLi4gXQo+ID4gKyAgICAgcG1fcnVu
dGltZV9zZXRfc3VzcGVuZGVkKGRldik7Cj4gPiArICAgICByZXQgPSBkZXZtX3BtX3J1bnRpbWVf
ZW5hYmxlKGRldik7Cj4KPiBbU2V2ZXJpdHk6IEhpZ2hdCj4gVGhpcyBkZXZtIGFjdGlvbiBzY2hl
ZHVsZXMgcG1fcnVudGltZV9kaXNhYmxlKCkgdG8gcnVuIGR1cmluZyBkZXZyZXMKPiBjbGVhbnVw
IG9uIGRldmljZSByZW1vdmFsLgoKWWVzLCBJIHdpbGwgZml4IGl0IGluIG5leHQgdmVyc2lvbi4K
Cj4gWyAuLi4gXQo+ID4gK3N0YXRpYyB2b2lkIHhwY3NfcmtfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCj4gPiArewo+IFsgLi4uIF0KPiA+ICsgICAgIHBtX3J1bnRpbWVfZm9y
Y2Vfc3VzcGVuZCgmcGRldi0+ZGV2KTsKPiA+ICt9Cj4KPiBbU2V2ZXJpdHk6IEhpZ2hdCj4gV2ls
bCBjYWxsaW5nIHBtX3J1bnRpbWVfZm9yY2Vfc3VzcGVuZCgpIGhlcmUgY2F1c2UgYW4gdW5iYWxh
bmNlZCBkaXNhYmxlCj4gZGVwdGg/Cj4KPiBTaW5jZSBwbV9ydW50aW1lX2ZvcmNlX3N1c3BlbmQo
KSBpbnRlcm5hbGx5IGNhbGxzIHBtX3J1bnRpbWVfZGlzYWJsZSgpLCB0aGUKPiBkaXNhYmxlIGRl
cHRoIGlzIGluY3JlbWVudGVkIHR3aWNlIGR1cmluZyByZW1vdmFsIChvbmNlIGhlcmUsIGFuZCBv
bmNlCj4gZHVyaW5nIHRoZSBkZXZyZXMgY2xlYW51cCkuIFdoZW4gdGhlIGRyaXZlciBpcyByZWJv
dW5kLCBpdCB3aWxsIG9ubHkgYmUKPiBkZWNyZW1lbnRlZCBvbmNlLCBsZWF2aW5nIHRoZSBkZXB0
aCBhdCAxIGFuZCBwZXJtYW5lbnRseSBicmVha2luZyBydW50aW1lCj4gUE0gaGFyZHdhcmUgYWNj
ZXNzLgoKWWVzLCBJIHdpbGwgZml4IGl0IGluIG5leHQgdmVyc2lvbi4KCj4gW1NldmVyaXR5OiBI
aWdoXQo+IENhbiBhIGNvbmN1cnJlbnQgc3lzZnMgTURJTyBhY2Nlc3MgcmFjZSB3aXRoIHhwY3Nf
cmtfcmVtb3ZlKCkgYW5kIGNyYXNoIHRoZQo+IHN5c3RlbT8KPgo+IEJlY2F1c2UgdGhlIE1ESU8g
YnVzIGlzIHJlZ2lzdGVyZWQgd2l0aCBkZXZtX21kaW9idXNfcmVnaXN0ZXIoKSwgaXQgcmVtYWlu
cwo+IGFjdGl2ZSBhbmQgYWNjZXNzaWJsZSB1bnRpbCBkZXZyZXMgY2xlYW51cCBydW5zIGFmdGVy
IHhwY3NfcmtfcmVtb3ZlKCkKPiByZXR1cm5zLiBDYWxsaW5nIHBtX3J1bnRpbWVfZm9yY2Vfc3Vz
cGVuZCgpIGdhdGVzIHRoZSBoYXJkd2FyZSBjbG9jayB3aGlsZQo+IHRoZSBNRElPIGJ1cyBpcyBz
dGlsbCBleHBvc2VkIHRvIHVzZXJzcGFjZS4gQSBjb25jdXJyZW50IHN5c2ZzIHJlYWQgY291bGQK
PiBpbmNyZW1lbnQgdGhlIHVzYWdlIGNvdW50ZXIsIGNhbGwgaW50byB4cGNzX3JrX3JlYWRfcmVn
KCksIGFuZCBleGVjdXRlCj4gcmVhZGwoKSBvbiB1bmNsb2NrZWQgaGFyZHdhcmUsIHRyaWdnZXJp
bmcgYW4gU0Vycm9yIHBhbmljLgoKWWVzLCBJIHdpbGwgZml4IGl0IGluIG5leHQgdmVyc2lvbi4K
Cj4gWyAuLi4gXQo+ID4gK3N0cnVjdCBkd194cGNzICp4cGNzX3JrX2NyZWF0ZShzdHJ1Y3QgZGV2
aWNlICpkZXYsIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnApCj4gPiArewo+IFsgLi4uIF0KPiA+ICsg
ICAgIHhwY3MgPSB4cGNzX2NyZWF0ZV9tZGlvZGV2KHB4cGNzLT5idXMsIChpbnQpcG9ydCk7Cj4g
PiArICAgICBkZXZpY2VfdW5sb2NrKCZwZGV2LT5kZXYpOwo+ID4gKyAgICAgaWYgKElTX0VSUih4
cGNzKSkgewo+ID4gKyAgICAgICAgICAgICBwdXRfZGV2aWNlKCZwZGV2LT5kZXYpOwo+ID4gKyAg
ICAgICAgICAgICByZXR1cm4geHBjczsKPiA+ICsgICAgIH0KPiA+ICsKPiA+ICsgICAgIGlmICgh
ZGV2aWNlX2xpbmtfYWRkKGRldiwgJnBkZXYtPmRldiwgRExfRkxBR19BVVRPUkVNT1ZFX0NPTlNV
TUVSKSkgewo+Cj4gW1NldmVyaXR5OiBIaWdoXQo+IElzIHRoZXJlIGEgcmFjZSB3aW5kb3cgYmV0
d2VlbiBkZXZpY2VfdW5sb2NrKCkgYW5kIGRldmljZV9saW5rX2FkZCgpPwo+Cj4gSWYgYSBjb25j
dXJyZW50IHVuYmluZCBvZiB0aGUgc3VwcGxpZXIgcHJvY2VlZHMgYWZ0ZXIgdGhlIGxvY2sgaXMg
ZHJvcHBlZAo+IGJ1dCBiZWZvcmUgZGV2aWNlX2xpbmtfYWRkKCkgY3JlYXRlcyB0aGUgZGVwZW5k
ZW5jeSwgdGhlIGRldm0tbWFuYWdlZAo+IHB4cGNzLT5idXMgY291bGQgYmUgdG9ybiBkb3duIGFu
ZCBmcmVlZC4gVGhpcyB3b3VsZCBhbGxvdyB0aGUgTUFDIGRyaXZlcgo+IHRvIGNvbnRpbnVlIHBy
b2Jpbmcgd2l0aCBhIGZyZWVkIE1ESU8gYnVzLCBsZWFkaW5nIHRvIGEgdXNlLWFmdGVyLWZyZWUu
CgpvZl9maW5kX2RldmljZV9ieV9ub2RlKCkgaW5jcmVtZW50cyB0aGUgcmVmZXJlbmNlIGNvdW50
IG9mIHBkZXYtPmRldiwKc28gdGhlIHN1cHBsaWVyIGNhbm5vdCBiZSB1bmJvdW5kIGJldHdlZW4g
dGhlIGxvY2sgcmVsZWFzZSBhbmQKZGV2aWNlX2xpbmtfYWRkKCkuIFRoZSBwdXRfZGV2aWNlKCkg
aXMgb25seSBjYWxsZWQgYWZ0ZXIgZGV2aWNlX2xpbmtfYWRkKCkKY29tcGxldGVzLgoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
