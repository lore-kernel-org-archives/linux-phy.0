Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C73CC982C9
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 15:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VMOkC6sC5z68iTj9lXRmvEYKJBX5OH5S3S8H8jm6tsQ=; b=epPH9NKB/07wnG
	2qTFn5oZraQAR4fa+qymfri5szILwDdDIY/R08OF9NTRjBPWdowI75Uc9FBKGxrrCawfq0LKm0bVD
	8SaRQ0LBhR1KxgUbY+N5YflxXxJEqnB5j1eUBfff9CA5mRScreRIzOURRihTRjPrdvuKfJeJPTlil
	QB2NlHYfycNTMtDEn3owtqD0Mq7EjbMj/LRoivOUopj0qU/Sdr+LGPTaD+p2NPoO+kG3qJ/xlY1MT
	q9js39/Y1xeM9We+l76yStWUUPZoTlCMZr2k65bzjmbS3k2leMR9eUbo7PJFSo4yUPRrSQcoZngZR
	T0FAR6vidHNyYMg72iPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6rxp-00000009eTR-20Ds;
	Wed, 16 Sep 2026 15:54:26 +0000
Received: from mail-ej2-x05.google.com ([2a00:1450:4864:34::5])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6rxn-00000009eSJ-1nOO
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 15:54:24 +0000
Received: by mail-ej2-x05.google.com with SMTP id a640c23a62f3a-c294938a983so316629766b.0
        for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 08:54:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789574061; cv=none;
        d=google.com; s=arc-20260327;
        b=PxwBeqfj4G5E9tf3WWHS1okwXv8Lq5fZyFnCj03x7MPia5EEcluyXvJDy0c9TlK246
         9qJ/kg6/95FGpgFFWCjqgIptw9cCT+IQWi0EMSJd64wnsMQBUQhteTnbsRKhC09elmEf
         8ZW5ugHBvsOq+KswQA5XBrfN+v8h9Ucxbg32UCfLxJlnZCp7eowQctrhpcBHNBdGwO0q
         BUvXfnPCq0VVfpgJcd6Kjl8EayRWBbvVQX0Ps1czkLMRYOW1SzibjHpHShqRvHcLGfS6
         AEGom18sEsO8R3Ofdmy9FuIOeLHlCYrV/N6tswNEagIUyAEvkajYT9fQ+w9ksbdZLpIE
         QGYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=8j+JwEudxR1MPbpx1/HWXM6CVKH1JpRcqP9oj2gRPYA=;
        fh=rOaHcqmj1LCTkZfXAQad1m6iwGiW9FlM/w4UCK2us3g=;
        b=GMI8Q8Dyg9059yUsVsw7CWwJkqL5DHUXW4onrGecH13jy6YP8mjaTiAQTp3EKApJHY
         oEIOgxrY3yQGQ6tTdr8BQvAsyW/gf0EtDHRaFYT7tlLIYSrooUNOqfuUxEC+H4nSWYDh
         ZspO6YdQOyReD4UlM0bHKzljWRIGD9Qjx3h/rbVZQONsLo3HDIukT0wcxqEl6rYFB3x7
         bXGOLj5K71W87AY/hmDLGsRZbsWuAoRBKeGLid9c2+8WSXTHw7CqTJQ8qNrctQ8+9Rtf
         mwjbnsIwzKIQsQGO2AOfVQ+0/lILqzWsGj6thVix8gbhpJ+YAcJGkdRx3Z6qVRj8kerm
         1uEw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789574061; x=1790178861; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=8j+JwEudxR1MPbpx1/HWXM6CVKH1JpRcqP9oj2gRPYA=;
        b=FQ6t58JTwuCMwknsFbwR+xfwbBRl5PReCCTKFW6xv2Gg+K4SNj7PvT3SMq2fV+4UFj
         0Z6TVtxaopzlUXUh0241EyjcMvREfJwDSL1TqxjyrMO7PiwuB/pRUTx7DnQtti9Y/0l+
         Hi0r102nerUuApKypYqtKqMe9vCqNtMfKqEyJE1ZxIaOpYYw/SSvdSuaHDhp2r7mW2vj
         QtGWQXCS3dsuB5WghKTIf7ZPvXnCWae6vlLY221h8iDrpMIjEMu6ZJy+rN3LiyuH10S5
         ZIixEk3F2xKz0Oxr/+RhPDuLxR3zwtR4ngPEy12AIUfTcn9mtvaFSBWGnMPy++mP1bol
         PKOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789574061; x=1790178861;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=8j+JwEudxR1MPbpx1/HWXM6CVKH1JpRcqP9oj2gRPYA=;
        b=yGwpBi8+wRXbFxFBvzIAvihfaf4nwCwRQD7S0YIlxMQ4FpJG7f70SDnRJwg1cj2EVX
         tcoeV+dE8RMHsfrNfVq1VmO1AIZPs1fPZ54pMCNRYfEV1B6CJNiqWgtfQy6InWcRu4cO
         jeb3m3TWf3q9sSZbiUgY4ZvVEhl27wt5iNDL5uvgTcD/yvyL7Kg66ePL5A/r43dkRmAp
         QUinfsJSbTkjEKqGg9VizPnhzRJIJAnqShzZkKPq6miJUzfrNqXdh3dVuP10Crx4pUZT
         rYRrRxAKlWmpmR5sj6jGrV13u9yLX9Ah+HrEk7s2aspN8EctBz5T/pBiriTyY+q3ckU/
         3YzA==
X-Forwarded-Encrypted: i=1; AKwUvBzAF8yqkUxbGaRD/SRkF4FHidPfaOwhIZxzziY32+M/Lvpn4KhA4n1rigfMO4RgpqtjdiCYuhO0w14=@lists.infradead.org
X-Gm-Message-State: AFuF++lIkPyM2uXTeo/i3oM1qz7/J77wFnB6pUVlmScDQn0zTPMIUTZp
	1NbGKiIZzi7Ry9EuunAmIMzr+qK9tp1134Z03sc9SBs+Uocl7dVf7B5Mkwm6jOEBPqGFXvxK4kv
	kiQnUtxJHAlzggt12tGda4mD5pDNJJJgXSdaKTZ9nLw==
X-Gm-Gg: AYBFou2MjIYmEiK2ce55OTRsOkYYDP4XdSRWhe78lbbannQ+Wx3vE1hSsLr4liERlYG
	a9JjhYj/BKAYTCwdu6FScnXiXm528hMlcYtbTjm6OR8B4V5khfjGnB8PVcuMELo22aoDVBbIb44
	keCRDAYYB4Z8v8NiX9M2j6J8ppG9OonfPP3llau+13xP/UnU7i8uAwLAacQD/ofSQby0GxcJINY
	tQzE3VuFM6LvpAVqR4JQczIWcFG86JqcbYc+l47YZ4hPOtYHzcnBxvOPFqo1NM8ozbiVJ+TWWhd
	zkv18c/v8eGujtRVMa3ZvtLvI6qHvI5e5MODqPyWdd342bO6YPqLHPyR8g==
X-Received: by 2002:a17:907:a689:b0:c26:2a5:819 with SMTP id
 a640c23a62f3a-c29e533436cmr419239466b.18.1789574061173; Wed, 16 Sep 2026
 08:54:21 -0700 (PDT)
MIME-Version: 1.0
References: <20260915123802.1561724-1-coiaprant@gmail.com> <20260915123802.1561724-8-coiaprant@gmail.com>
 <20260916145017.E901A1F00893@smtp.kernel.org>
In-Reply-To: <20260916145017.E901A1F00893@smtp.kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Wed, 16 Sep 2026 23:54:09 +0800
X-Gm-Features: AcwNN1XzWka-gBP6JzQo7V21TLELEHt1FwivFATTB3eG1OP-0RdzvQzVP33L0zA
Message-ID: <CALj3r0gt9jFM6LHPBT_Ow62etk-ij7JmYWnx3fMmRjJavf6_Pw@mail.gmail.com>
Subject: Re: [PATCH net-next v6 07/11] net: pcs: xpcs: add Rockchip RK3568
 platform glue driver
To: sashiko-reviews@lists.linux.dev
Cc: neil.armstrong@linaro.org, conor+dt@kernel.org, robh@kernel.org, 
	vkoul@kernel.org, wsa+renesas@sang-engineering.com, 
	devicetree@vger.kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_085423_510091_E6146451 
X-CRM114-Status: GOOD (  26.55  )
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

PHNhc2hpa28tYm90QGtlcm5lbC5vcmc+IOS6jjIwMjblubQ55pyIMTbml6XlkajkuIkgMjI6NTDl
hpnpgZPvvJoKPgo+IFRoYW5rIHlvdSBmb3IgeW91ciBjb250cmlidXRpb24hIFNhc2hpa28gQUkg
cmV2aWV3IGZvdW5kIDMgcG90ZW50aWFsIGlzc3VlKHMpIHRvIGNvbnNpZGVyOgo+IC0gW0hpZ2hd
IG5ldDogcGNzOiBVQUYgaW4geHBjc19ya19jcmVhdGUgZHVlIHRvIGxvY2tsZXNzIGRydmRhdGEg
YWNjZXNzCj4gLSBbTG93XSBrY29uZmlnOiB1bm1ldCBQTV9HRU5FUklDX0RPTUFJTlMgZGVwZW5k
ZW5jeSB2aWEgc2VsZWN0Cj4gLSBbTG93XSBuZXQ6IHBjczogaW50ZWdlciB1bmRlcmZsb3cgaW4g
RUVFIG11bHRpcGxpZXIgY2FsY3VsYXRpb24KPiAtLQo+Cj4gY29tbWl0IDQ1ZmE5ZjA4OGI5ZDRh
ZTY1NmYyYzY3ZTg2NGE0NjJiNGQyMjk4MTUKPiBBdXRob3I6IENvaWEgUHJhbnQgPGNvaWFwcmFu
dEBnbWFpbC5jb20+Cj4gbmV0OiBwY3M6IHhwY3M6IGFkZCBSb2NrY2hpcCBSSzM1NjggcGxhdGZv
cm0gZ2x1ZSBkcml2ZXIKPgo+IFRoaXMgY29tbWl0IGFkZHMgYSBSb2NrY2hpcCBSSzM1NjggcGxh
dGZvcm0gZ2x1ZSBkcml2ZXIgZm9yIHRoZSBTeW5vcHN5cwo+IERlc2lnbldhcmUgWFBDUyBjb250
cm9sbGVyLiBJdCBjcmVhdGVzIGEgdmlydHVhbCBNRElPIGJ1cyB0byB0cmFuc2xhdGUgTURJTwo+
IG9wZXJhdGlvbnMgdG8gQVBCMyByZWdpc3RlciBhY2Nlc3NlcyBhbmQgZGVyaXZlcyB0aGUgRUVF
IG11bHRpcGxpZXIgYXQgcnVudGltZS4KPgo+IExpbms6IGh0dHBzOi8vZGwucmFkeGEuY29tL3Jv
Y2szL2RvY3MvaHcvZGF0YXNoZWV0L1JvY2tjaGlwJTIwUkszNTY4JTIwVFJNJTIwUGFydDElMjBW
MS4xLTIwMjEwMzAxLnBkZgo+IExpbms6IGh0dHBzOi8vZGwucmFkeGEuY29tL3JvY2szL2RvY3Mv
aHcvZGF0YXNoZWV0L1JvY2tjaGlwJTIwUkszNTY4JTIwVFJNJTIwUGFydDIlMjBWMS4xLTIwMjEw
MzAxLnBkZgo+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvcGNzL0tjb25maWcgYi9kcml2
ZXJzL25ldC9wY3MvS2NvbmZpZwo+ID4gLS0tIGEvZHJpdmVycy9uZXQvcGNzL0tjb25maWcKPiA+
ICsrKyBiL2RyaXZlcnMvbmV0L3Bjcy9LY29uZmlnCj4gWyAuLi4gXQo+ID4gK2NvbmZpZyBQQ1Nf
WFBDU19ST0NLQ0hJUAo+ID4gKyAgICAgdHJpc3RhdGUgIlJvY2tjaGlwIFhQQ1MgY29udHJvbGxl
ciBzdXBwb3J0Igo+ID4gKyAgICAgZGVmYXVsdCBBUkNIX1JPQ0tDSElQCj4gPiArICAgICBkZXBl
bmRzIG9uIE9GICYmIChBUkNIX1JPQ0tDSElQIHx8IENPTVBJTEVfVEVTVCkKPiA+ICsgICAgIHNl
bGVjdCBHRU5FUklDX1BIWQo+ID4gKyAgICAgc2VsZWN0IFBNX0dFTkVSSUNfRE9NQUlOUwo+Cj4g
W1NldmVyaXR5OiBMb3ddCj4gV2lsbCBzZWxlY3RpbmcgUE1fR0VORVJJQ19ET01BSU5TIHdpdGhv
dXQgaW5oZXJpdGluZyBpdHMgUE0gZGVwZW5kZW5jeSBjYXVzZQo+IHVubWV0IGRpcmVjdCBkZXBl
bmRlbmN5IHdhcm5pbmdzPwo+Cj4gVGhlIGNvbmZpZyBQTV9HRU5FUklDX0RPTUFJTlMgaGFzIGEg
c3RyaWN0IGRlcGVuZGVuY3kgb24gUE0uIElmCj4gUENTX1hQQ1NfUk9DS0NISVAgaXMgZW5hYmxl
ZCBvbiBhIHBsYXRmb3JtIHdoZXJlIFBNIGlzIGRpc2FibGVkLCB3b24ndCB0aGlzCj4gZm9yY2Ug
UE1fR0VORVJJQ19ET01BSU5TIG9uIGFuZCB0cmlnZ2VyIEtjb25maWcgd2FybmluZ3M/CgpQTSBp
cyBhbHJlYWR5IHNlbGVjdGVkIGJ5IEFSQ0hfUk9DS0NISVAsIHNvIFBNX0dFTkVSSUNfRE9NQUlO
UyBoYXMgaXRzCmRlcGVuZGVuY3kgc2F0aXNmaWVkIG9uIHRoZSB0YXJnZXQgcGxhdGZvcm0uIE9u
IENPTVBJTEVfVEVTVCB0aGUgZHJpdmVyCmlzIG5vdCBydW4gb24gaGFyZHdhcmUsIHNvIHRoZSB1
bm1ldCBkZXBlbmRlbmN5IGRvZXMgbm90IG1hdHRlci4KCj4gPiArICAgICBoZWxwCj4gPiArICAg
ICAgIFN1cHBvcnQgZm9yIFhQQ1MgY29udHJvbGxlciBvbiBSb2NrY2hpcCBSSzM1NnggU29DLgo+
IFsgLi4uIF0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9wY3MvcGNzLXhwY3MtcmsuYyBi
L2RyaXZlcnMvbmV0L3Bjcy9wY3MteHBjcy1yay5jCj4gPiAtLS0gL2Rldi9udWxsCj4gPiArKysg
Yi9kcml2ZXJzL25ldC9wY3MvcGNzLXhwY3MtcmsuYwo+IFsgLi4uIF0KPiA+ICtzdGF0aWMgaW50
IHhwY3NfcmtfaW5pdF9jbGsoc3RydWN0IGR3X3hwY3NfcmsgKnB4cGNzKQo+ID4gK3sKPiBbIC4u
LiBdCj4gPiArICAgICAvKgo+ID4gKyAgICAgICogQ29tcHV0ZSB0aGUgbXVsdGlwbGllciBmb3Ig
dGhlIEVFRSBjbG9jayBzbyB0aGF0Cj4gPiArICAgICAgKiBjbGtfZWVlX3BlcmlvZCAqIChtdWx0
X2ZhY3QgKyAxKSBmYWxscyB3aXRoaW4gODAuLjEyMCBucy4KPiA+ICsgICAgICAqCj4gPiArICAg
ICAgKiBPbiBSSzM1NjgsIGNsa194cGNzX2VlZSBpcyBtdXhlZCBiZXR3ZWVuIGdwbGwyMDAgKDIw
MCBNSHosIDUgbnMpCj4gPiArICAgICAgKiBhbmQgY3BsbDEyNSAoMTI1IE1IeiwgOCBucyksIHNl
bGVjdGVkIGJ5IENSVV9DTEtTRUxfQ09OMjkgYml0IDEzLgo+ID4gKyAgICAgICogVGhlIHJlc2V0
IHZhbHVlIGlzIDAgKDIwMCBNSHopLCBidXQgZGVyaXZlIHRoZSB2YWx1ZSBhdCBydW50aW1lIHRv
Cj4gPiArICAgICAgKiBzdGF5IGNvcnJlY3QgaWYgdGhlIG11eCBpcyBjaGFuZ2VkIGJ5IGEgYm9h
cmQuCj4gPiArICAgICAgKgo+ID4gKyAgICAgICogVXNlIGEgNjQtYml0IGludGVybWVkaWF0ZTog
b24gMzItYml0IGJ1aWxkcywgMTAwICogMjAwMDAwMDAwCj4gPiArICAgICAgKiBkb2VzIG5vdCBm
aXQgaW4gdW5zaWduZWQgbG9uZy4gQ2xhbXAgdG8gdGhlIDQtYml0Cj4gPiArICAgICAgKiBEV19W
Ul9NSUlfRUVFX01VTFRfRkFDVF8xMDBOUyBmaWVsZC4KPiA+ICsgICAgICAqLwo+ID4gKyAgICAg
cmF0ZSA9IGNsa19nZXRfcmF0ZShweHBjcy0+ZWVlX2Nsayk7Cj4gPiArICAgICBpZiAoIXJhdGUp
Cj4gPiArICAgICAgICAgICAgIHJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgLUVJTlZBTCwgIklu
dmFsaWQgRUVFIGNsb2NrIHJhdGVcbiIpOwo+ID4gKwo+ID4gKyAgICAgbXVsdCA9IERJVl9ST1VO
RF9DTE9TRVNUX1VMTCgxMDBVTEwgKiByYXRlLCBOU0VDX1BFUl9TRUMpIC0gMTsKPiA+ICsgICAg
IHB4cGNzLT5lZWVfbXVsdF9mYWN0ID0gbWluX3QodTY0LCBtdWx0LCAxNSk7Cj4KPiBbU2V2ZXJp
dHk6IExvd10KPiBEb2VzIHRoaXMgY2FsY3VsYXRpb24gdW5kZXJmbG93IGlmIHRoZSBFRUUgY2xv
Y2sgcmF0ZSBpcyB2ZXJ5IGxvdz8KPgo+IElmIHRoZSBib2FyZCBjb25maWd1cmF0aW9uIHByb3Zp
ZGVzIGEgY2xvY2sgcmF0ZSB1bmRlciA1IE1IeiwgdGhlIGRpdmlzaW9uCj4geWllbGRzIDAuIFN1
YnRyYWN0aW5nIDEgY2F1c2VzIGFuIHVuc2lnbmVkIHVuZGVyZmxvdyB0byBVSU5UNjRfTUFYLgo+
Cj4gV29uJ3QgdGhlIHN1YnNlcXVlbnQgbWluX3QoKSBjbGFtcGluZyBsb2dpYyBldmFsdWF0ZSBV
SU5UNjRfTUFYIDwgMTUgYXMgZmFsc2UsCj4gaW5jb3JyZWN0bHkgYXNzaWduaW5nIHRoZSBtYXhp
bXVtIG11bHRpcGxpZXIgb2YgMTUgaW5zdGVhZCBvZiAwPwoKY2xrX3hwY3NfZWVlIGlzIG11eGVk
IGJldHdlZW4gZ3BsbDIwMCAoMjAwIE1IeikgYW5kIGNwbGwxMjUgKDEyNSBNSHopLApzbyB0aGUg
cmF0ZSBjYW4gbmV2ZXIgYXBwcm9hY2ggdGhlIDUgTUh6IHVuZGVyZmxvdyB0aHJlc2hvbGQuIFRo
ZQpleGlzdGluZyAhcmF0ZSBjaGVjayBpcyBzdWZmaWNpZW50LgoKPiA+ICsgICAgIHJldHVybiAw
Owo+ID4gK30KPiBbIC4uLiBdCj4gPiArc3RydWN0IGR3X3hwY3MgKnhwY3NfcmtfY3JlYXRlKHN0
cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZV9ub2RlICpucCkKPiA+ICt7Cj4gWyAuLi4g
XQo+ID4gKyAgICAgaWYgKCFkZXZpY2VfbGlua19hZGQoZGV2LCAmcGRldi0+ZGV2LCBETF9GTEFH
X0FVVE9SRU1PVkVfQ09OU1VNRVIpKSB7Cj4gPiArICAgICAgICAgICAgIHB1dF9kZXZpY2UoJnBk
ZXYtPmRldik7Cj4gPiArICAgICAgICAgICAgIHJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwo+ID4g
KyAgICAgfQo+ID4gKwo+ID4gKyAgICAgcHhwY3MgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2
KTsKPiA+ICsgICAgIGlmICghcHhwY3MgfHwgIXB4cGNzLT5idXMpIHsKPgo+IFtTZXZlcml0eTog
SGlnaF0KPiBDYW4gdGhpcyBsb2NrbGVzcyBhY2Nlc3MgdG8gdGhlIHN1cHBsaWVyJ3MgZHJ2ZGF0
YSBjYXVzZSBhIHVzZS1hZnRlci1mcmVlPwo+Cj4gSWYgdGhlIHN1cHBsaWVyIGRyaXZlciBpcyBj
b25jdXJyZW50bHkgdW5ib3VuZCB2aWEgc3lzZnMsIHRoZSBzdXBwbGllciBtaWdodAo+IGhhdmUg
YWxyZWFkeSBwYXNzZWQgdGhlIGNvbnN1bWVyIHVuYmluZCBjaGVja3MgYmVmb3JlIHRoaXMgZGV2
aWNlIGxpbmsgd2FzCj4gZXN0YWJsaXNoZWQuCj4KPiBJZiB0aGUgc3VwcGxpZXIgdGhlbiBwcm9j
ZWVkcyB0byBkZXZyZXMgY2xlYW51cCBhbmQgZnJlZXMgdGhlIHB4cGNzIG1lbW9yeSwKPiB3b24n
dCBkZXJlZmVyZW5jaW5nIHB4cGNzLT5idXMgYWNjZXNzIGZyZWVkIG1lbW9yeT8KPgo+IFNob3Vs
ZCB0aGUgY29uc3VtZXIgaG9sZCBkZXZpY2VfbG9jaygmcGRldi0+ZGV2KSB3aGlsZSB2YWxpZGF0
aW5nIHRoZSBzdXBwbGllcgo+IHN0YXRlIGFuZCByZWFkaW5nIGl0cyBkcnZkYXRhIHRvIHByZXZl
bnQgdGhpcyByYWNlPwoKVGhlIGxpbmsgaXMgZXN0YWJsaXNoZWQgYmVmb3JlIHJlYWRpbmcgdGhl
IGRydmRhdGEsIHNvIHRoZSB3aW5kb3cgeW91CmRlc2NyaWJlIGRvZXMgbm90IGV4aXN0OiBkZXZp
Y2VfbGlua19hZGQoKSByZWplY3RzIGEgc3VwcGxpZXIgdGhhdCBpcwpiZWluZyB1bmJvdW5kIGFu
ZCByZXR1cm5zIE5VTEwsIGFuZCB0aGUgY2FsbGVyIGRlZmVycyBiZWZvcmUgdG91Y2hpbmcKcGxh
dGZvcm1fZ2V0X2RydmRhdGEoKS4KCkkgYWxzbyByZW1vdmVkIHRoZSBleHBsaWNpdCBkZXZpY2Vf
bGlua19yZW1vdmUoKSBjYWxscyBvbiB0aGUgZmFpbHVyZQpwYXRocy4gRExfRkxBR19BVVRPUkVN
T1ZFX0NPTlNVTUVSIGFscmVhZHkgcmVsZWFzZXMgdGhlIGxpbmsgd2hlbiB0aGUKY29uc3VtZXIg
ZGV2aWNlIGlzIGRlc3Ryb3llZCwgd2hpY2ggY292ZXJzIGFsbCBwcm9iZSBmYWlsdXJlIGNhc2Vz
LCBhbmQKbWFudWFsIHJlbW92YWwgYWRkcyBjb21wbGV4aXR5IGZvciBubyBiZW5lZml0LgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
