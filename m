Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A435BC982E6
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 17:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A0nplbe9sjtg2pMShEpblYIvb01gzBX+BGuWxiKLA4E=; b=xYY6DCBwhlJCW5
	dZySPprdnGbPw7KZlUf8qcS0mYb5eatALUy+nVUWnfpzOU0ttPFtwZDya15+NJB7jrfYWNuYlYg5I
	ht6PtyJC3MlHq409FQdQWhSmFUphshXlYIt/A0lRDTOcv9iCMLseDyuQQtqtlGRqFMDib5D0y8T/Z
	wjfwNun00bUPyYI7Ym1PDM6dwrIW6UMWrsYiablD7Rv0r1I4j1XWEoLCysliW1mKDeyegdEBVk4Fp
	se4ude4l2KSlTLJI93ixpLBaihdHUTEK/Zc4cZostB4emsFw+ypbxfGtzptj8xTfxhiXT5sTwD41j
	R/u71WRhjcQxeSPd+m0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8ht2-00000002zcr-0TKr;
	Mon, 21 Sep 2026 17:33:04 +0000
Received: from mail-ej2-x0b.google.com ([2a00:1450:4864:34::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8ht0-00000002zbj-0u0D
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 17:33:03 +0000
Received: by mail-ej2-x0b.google.com with SMTP id a640c23a62f3a-c25541acec6so207475066b.0
        for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 10:33:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1790011980; cv=none;
        d=google.com; s=arc-20260327;
        b=PQwc+HtdliuS9NtUZFihTJiqnGNCmzaDfV8SlbDArLrrMonLUxinhD6IMKj2254ajF
         LxWPHHax82d1Ks7/JekKWhPMtiiuR86k5iLEufuf6f9jhwd51h55ow/gFmhaydwK13yc
         NOvLIaE6tdGLqwyQ42r3RP+SYVPBArXjS76hkMM8uYM8Yfe6tr3Pzd4VBPCA39Nx5XL5
         pPKG+uJHTjkxYO0TXda2iY1VkbyCjlo9EB/gRnK8+Kv6F8xiO3g3PH3gnOw+PxAAxqg9
         4DAmqIAsWIuTC93E4eJPkJ9qtjCs6oEQus6J5VPz7QMw310Wee0qJ5+bndtXh//4C563
         T2bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=VuKnziCRcnwT2EUABNsJz91YeadinAdPu4p/tIggi6A=;
        fh=FjcTbVTnXOwtWQ1K80AfVMjIsm5YYveJW++iGdhAx/4=;
        b=G09wCNOEZVOHAvxqcbsvxs5zSDo81Ua70VfyQspnw0djFcMEiBl44SrPcNUODuw0rs
         mm1jBlPbihFdz4AwpKnU1lFjivHxJJMXPnPVNgXxTcMNTXyLrORPgTxzQKwz1L7dvTxV
         K7o2fQ+eDSjUr0Lm9cXsiE92UFVGmeiIVj+vVi+m5C0kISA6WyQo58JawllEYShlm+1f
         T4dJhaPnrPWcFIuxfeh+LBsNPvI4gc0xVLNLINl188jYZG0MCBsQElyYDy3rd59PekgT
         VMDBtCuQjyPQVvFjsNj+AHEyAXaxwx/JVJ6jbzYLj0iKmTxyq78ANg4+g5Se4ZtT0V2D
         HzSA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790011980; x=1790616780; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=VuKnziCRcnwT2EUABNsJz91YeadinAdPu4p/tIggi6A=;
        b=GxHeHDBf8bg+1xYMrzrHu9hyFlawW77tE+Cqh6va6ApAOpucCC6S3QoovsQwWbXXva
         qs5xBMaeOsqn3kOSrQSOxE2wugyWBhwIN8uBLcfGNH4OEDBmfTiVtTJU+qSVpKiOAK+R
         Z7+p+QvcxJ5SDazyg/hHctSjT803xasfrlIwiptmRSR2U47R5swy58eNlxAPiTNCmzBH
         yELQOdnkDUc8tCQzzx8oejYO02orN4PuMrtnw0NQWTtNxkj3pyi1I017HKi2hH0WK1K/
         3F6y6SDVKg+er/iU9tMB5aPMgDBy9ReWLd7VUObW2Lm+/cemm20++bgfUngRAW9eZ6cN
         UdGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790011980; x=1790616780;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=VuKnziCRcnwT2EUABNsJz91YeadinAdPu4p/tIggi6A=;
        b=2sBQbHVJ4X6XGi3Vd4Iz6wCfaeuxb89TUVSPxVkvQW4DlKOL0BO25G9KyNeyQYQv4S
         6QbH5kvYob1npen11s5xW+tdhxuDc/SZZQGTZdtGQW269OqjF9kseDtO7KHoLFc39/rQ
         pqf3HTw5KUh0FoVulq1vH8d0bjflOFld4dHJKbcnBaZV5ARedEv4gb9iRWa/R0jEYrIP
         VnMHz/y8icPFtvhDZBcZfB9iiED34OxMt9/uJFLDE1LFr7Q3wYibZKNgwSVTDvnIP84z
         aqGOp+ZiYx9ToEDdFJGblowW2xIOH1MVXQKh2L3m87bLbD6quTcZ6TU1KPwwLWGZtOjk
         umRg==
X-Forwarded-Encrypted: i=1; AKwUvBzJp76MD3UU1jk+JYI79fqHYYMaak9S4gye3dh1H1OwWEVspFQgCcVdHpY7egvO5/G4ytDFTdafDUU=@lists.infradead.org
X-Gm-Message-State: AFuF++lPfmjM/qANxNVjMJEwRTHr6s0DfAiU6RFK2lwiqfT00386kzQy
	orFGt8lVXj+jCB9ayWIPQH2EjbwBeTUuNHTnjob9IZmkyqMKSk4NxjJKkcev54c8fzCY8TMXP2f
	lSLlyP9c+V4FzttafuP66V6dz8SuHNGM=
X-Gm-Gg: AYBFou1+YSA09TABf2pVVlTyMlLtwNhkZmrFpBeFUp7XX0fI83ajKgn9PTJnFRANPNB
	J/Y4IqwB2k4WE1lXAdYCfb9LTQYak6Ml9RKSTmpJNEJ6BpwkTzg6szxPIa9X6DpTunWB+v0C9sB
	AIg55p6XZdJL4fA4XUkOmo5xOPOUuooljihDxRnDasTQ8xGr0d1UlSx2Tj/TE3YdoQ/Va27ydqk
	qx4yLfKXreCuO4R6Q0f4MvpHZpPZ+HutRfq5rRGaU3nGFoPjAcI/Zx1YGAFW6dbGh2cl8zUxEsu
	v5r955FyEct8JdcbnItWMF4mp02JfkuDH9r0Nhn9kX/dSDWy5TBwqqAdbQ==
X-Received: by 2002:a17:907:d18:b0:c27:420b:7c82 with SMTP id
 a640c23a62f3a-c2a15e0e909mr1026408166b.48.1790011979683; Mon, 21 Sep 2026
 10:32:59 -0700 (PDT)
MIME-Version: 1.0
References: <20260920170116.3624104-1-coiaprant@gmail.com> <20260920170116.3624104-6-coiaprant@gmail.com>
 <20260921170343.4CA421F000FF@smtp.kernel.org>
In-Reply-To: <20260921170343.4CA421F000FF@smtp.kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Tue, 22 Sep 2026 01:32:48 +0800
X-Gm-Features: AcwNN1UD6p5KTncPSk1LxfRScJC4KOn99w2_Eqc8eBCD3CAs0EpL3r44H49taEU
Message-ID: <CALj3r0iMGUoM_VmS70NnnA99-G7_TjgA3s_x8ZmvNe12QxWoxw@mail.gmail.com>
Subject: Re: [PATCH net-next v9 05/11] arm64: dts: rockchip: rk3568: add XPCS
 and fixed-clock nodes
To: sashiko-reviews@lists.linux.dev
Cc: wsa+renesas@sang-engineering.com, vkoul@kernel.org, olteanv@gmail.com, 
	linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, 
	neil.armstrong@linaro.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_103302_283611_3C7F4C39 
X-CRM114-Status: GOOD (  17.99  )
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

PHNhc2hpa28tYm90QGtlcm5lbC5vcmc+IOS6jjIwMjblubQ55pyIMjLml6XlkajkuowgMDE6MDPl
hpnpgZPvvJoKPgo+IFRoYW5rIHlvdSBmb3IgeW91ciBjb250cmlidXRpb24hIFNhc2hpa28gQUkg
cmV2aWV3IGZvdW5kIDEgcG90ZW50aWFsIGlzc3VlKHMpIHRvIGNvbnNpZGVyOgo+IC0gW0xvd10g
RFQgc3R5bGUgdmlvbGF0aW9uOiBub24tcmVnIG5vZGVzIHBsYWNlZCBvdXQgb2Ygb3JkZXIKPiAt
LQo+Cj4gY29tbWl0IDE2NzRmY2ZhZWJhNzAwMzk4NzFkOTJhZjBhMDI5MDFmOWQwMDk4ODYKPiBB
dXRob3I6IENvaWEgUHJhbnQgPGNvaWFwcmFudEBnbWFpbC5jb20+Cj4KPiBhcm02NDogZHRzOiBy
b2NrY2hpcDogcmszNTY4OiBhZGQgWFBDUyBhbmQgZml4ZWQtY2xvY2sgbm9kZXMKPgo+IFRoaXMg
Y29tbWl0IGFkZHMgdGhlIFN5bm9wc3lzIERlc2lnbldhcmUgWFBDUyBhbmQgdHdvIGZpeGVkLWNs
b2NrIG5vZGVzIGZvcgo+IEdNQUMgcmVmZXJlbmNlIGNsb2NrcyB0byB0aGUgUkszNTY4IGRldmlj
ZSB0cmVlLiBJdCBwbGFjZXMgdGhlIG5vZGVzIGFuZCBhZGRzCj4gbmVjZXNzYXJ5IHByb3BlcnRp
ZXMgZm9yIGJvYXJkLWxldmVsIGNvbmZpZ3VyYXRpb24uCj4KPiA+IGRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1NjguZHRzaQo+ID4gaW5kZXggM2JjNjUzZjAyN2YxZi4uMjI3ZDAzZTMz
NjA0MyAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4
LmR0c2kKPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kK
PiBbIC4uLiBdCj4gPiBAQCAtMTEwLDYgKzExMCw1MSBAQCBzYXRhMDogc2F0YUBmYzAwMDAwMCB7
Cj4gPiAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gPiAgICAgICB9Owo+ID4K
PiA+ICsgICAgIHhwY3M6IGV0aGVybmV0LXBjc0BmZGEwMDAwMCB7Cj4gWyAuLi4gXQo+ID4gKyAg
ICAgICAgICAgICB4cGNzX21paTM6IGV0aGVybmV0LXBjcy1taWlAMyB7Cj4gPiArICAgICAgICAg
ICAgICAgICAgICAgcmVnID0gPDM+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9
ICJkaXNhYmxlZCI7Cj4gPiArICAgICAgICAgICAgIH07Cj4gPiArICAgICB9Owo+ID4gKwo+ID4g
KyAgICAgY2xrX2dtYWMwX3hwY3NfbWlpOiBjbG9jay14cGNzLWdtYWMwIHsKPiA+ICsgICAgICAg
ICAgICAgY29tcGF0aWJsZSA9ICJmaXhlZC1jbG9jayI7Cj4gPiArICAgICAgICAgICAgIGNsb2Nr
LWZyZXF1ZW5jeSA9IDwxMjUwMDAwMDA+Owo+ID4gKyAgICAgICAgICAgICBjbG9jay1vdXRwdXQt
bmFtZXMgPSAiY2xrX2dtYWMwX3hwY3NfbWlpIjsKPiA+ICsgICAgICAgICAgICAgI2Nsb2NrLWNl
bGxzID0gPDA+Owo+ID4gKyAgICAgfTsKPiA+ICsKPiA+ICsgICAgIGNsa19nbWFjMV94cGNzX21p
aTogY2xvY2steHBjcy1nbWFjMSB7Cj4gPiArICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiZml4
ZWQtY2xvY2siOwo+ID4gKyAgICAgICAgICAgICBjbG9jay1mcmVxdWVuY3kgPSA8MTI1MDAwMDAw
PjsKPiA+ICsgICAgICAgICAgICAgY2xvY2stb3V0cHV0LW5hbWVzID0gImNsa19nbWFjMV94cGNz
X21paSI7Cj4gPiArICAgICAgICAgICAgICNjbG9jay1jZWxscyA9IDwwPjsKPiA+ICsgICAgIH07
Cj4KPiBbU2V2ZXJpdHk6IExvd10KPiBBY2NvcmRpbmcgdG8gc3RhbmRhcmQgRGV2aWNlIFRyZWUg
Y29kaW5nIHN0eWxlIGd1aWRlbGluZXMKPiAoRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2R0cy1jb2Rpbmctc3R5bGUucnN0KSwgc2hvdWxkIG5vZGVzCj4gd2l0aG91dCBhICdyZWcn
IHByb3BlcnR5IGJlIHBsYWNlZCBhdCB0aGUgdG9wIG9mIHRoZSBmaWxlIChvciB0aGUgdG9wIG9m
Cj4gdGhlIHJvb3Qgbm9kZSkgYW5kIHNvcnRlZCBhbHBoYWJldGljYWxseSwgYmVmb3JlIGFueSBu
b2RlcyB3aXRoIGEgJ3JlZycKPiBwcm9wZXJ0eT8KPgo+IFRoZXNlIGNsb2NrLXhwY3MtZ21hYzAg
YW5kIGNsb2NrLXhwY3MtZ21hYzEgbm9kZXMgaW4KPiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU2OC5kdHNpIGxhY2sgYSAncmVnJyBwcm9wZXJ0eSBidXQgYXJlCj4gcGxhY2VkIGRp
cmVjdGx5IGFmdGVyIGV0aGVybmV0LXBjc0BmZGEwMDAwMCBhbmQgYmVmb3JlIHN5c2NvbkBmZGM3
MDAwMC4KPgo+IENvdWxkIHRoZXNlIGJlIG1vdmVkIHRvIHRoZSB0b3Agb2YgdGhlIHJvb3Qgbm9k
ZSBhbG9uZ3NpZGUgb3RoZXIgbm9uLXJlZwo+IG5vZGVzIGxpa2Ugb3BwLXRhYmxlPwo+Cj4gPiAr
Cj4gPiAgICAgICBwaXBlX3BoeV9ncmYwOiBzeXNjb25AZmRjNzAwMDAgewo+ID4gICAgICAgICAg
ICAgICBjb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU2OC1waXBlLXBoeS1ncmYiLCAic3lzY29u
IjsKPiA+ICAgICAgICAgICAgICAgcmVnID0gPDB4MCAweGZkYzcwMDAwIDB4MCAweDEwMDA+Owo+
CgpUaGFua3MgZm9yIHRoZSByZXZpZXcuIFRoaXMgaXMgYSB2YWxpZCBEVCBjb2Rpbmcgc3R5bGUg
aXNzdWUuCgpJJ2xsIG1vdmUgdGhlIHR3byBmaXhlZC1jbG9jayBub2RlcyAoY2xrX2dtYWMwX3hw
Y3NfbWlpIGFuZApjbGtfZ21hYzFfeHBjc19taWkpIHRvIHRoZSB0b3Agb2YgdGhlIHJvb3Qgbm9k
ZSwgYWxvbmdzaWRlIHRoZSBvdGhlcgpub24tcmVnIG5vZGVzLCBhbmQgc29ydCB0aGVtIGFscGhh
YmV0aWNhbGx5IGluIHYxMC4gTm8gZnVuY3Rpb25hbApjaGFuZ2UuCgpTaW5jZSB0aGlzIGlzIGEg
bG93LXNldmVyaXR5IHN0eWxlIGlzc3VlIGFuZCBubyBvdGhlciBjb21tZW50cyBoYXZlCmJlZW4g
cmFpc2VkIHNvIGZhciwgSSdsbCB3YWl0IDI0IGhvdXJzIGZvciBhbnkgZnVydGhlciBmZWVkYmFj
ayBiZWZvcmUKc2VuZGluZyB2MTAuIElmIHRoZXJlIGFyZSBubyBhZGRpdGlvbmFsIGNvbW1lbnRz
LCBJJ2xsIHNlbmQgdjEwIGFmdGVyCnRoYXQuCgpUaGFua3MsCkNvaWEgUHJhbnQKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
