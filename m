Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 675F3D778B1
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jan 2026 23:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zlaV+4Kgpte4s8C0LMqDy/P2b3WytabVVNW5aKbC53U=; b=fZaFy2Y++3D5DG
	/mlL2WN0WzlTZ3ZpGwLRUMuc08udH6IB7oXcZcFamtlRosE+VhUOHprq2KsYp52MicK7EeOoyhv9a
	ZSiMhGACTGsELotWCURl7jEgQqFoA3IIgsCAeMpn8GROGEWBkPlm7CGdUrndHCglzqTd/kGMm+gKQ
	iLCvyP7D0iWycoeQ7zMhRaLwB2vlNp9a53kDMbkiXf3yc1M65UjgMufqawf9YtS2txHaq5MQTCUy1
	USBC8AwsJ/5M2RXLcvTA6fhqlwm42oNbJdeemiW/DXO8ZDr3Hy8YFBlXAwJeyqhFF/cWNpd+i4F7a
	k8lggTsl3cPOJ2B3ypqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjQwZ-00000009akb-0ViQ;
	Fri, 23 Jan 2026 23:51:59 +0000
Received: from mail-dl1-x122b.google.com ([2607:f8b0:4864:20::122b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjQwW-00000009aju-13Sq
	for linux-phy@lists.infradead.org;
	Fri, 23 Jan 2026 23:51:57 +0000
Received: by mail-dl1-x122b.google.com with SMTP id a92af1059eb24-1233702afd3so4007095c88.0
        for <linux-phy@lists.infradead.org>; Fri, 23 Jan 2026 15:51:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769212313; cv=none;
        d=google.com; s=arc-20240605;
        b=IfFkBkl/Md/cWgPphFcF89W5jioJdFTPkCwYj7Gtmwk8wEELgCqLVvHaH7B4XEh8uU
         0LIIpRPsdL1S/M87jyLO40gtNUSFanxo6M/HqtiKnP5bEpcqbGxo5QFvYJReJxzBSG+8
         mFn8ONp4BOA9tDmsIaNRNHOLH+dacmWP5Aw1ZS20xvZ8KExRfD6Nh01pIhbVFN2PWr8b
         xXx5/zpTo3kAVGB3orzx6hb2b04TuGdkeHOy9xyLIIAI+8dVXDwhUdPaNGLNBLQMrGyZ
         32NyH46Uialazf7Xx7EDeJxMdSvNdNOag1Z7Fp27rcClvuUce3hBdZVyh8MkkBqT/z23
         Gg+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=NMyJR4UL9NXXcbBjQVATLX3KPNH4xZEghdBa9fkK1fE=;
        fh=qJbb4USQGOR1Bfpkzdp8FMpW+bFLL+zi7LIkIAWOLHk=;
        b=ChzNJRK8vq/g/oEVK8KP8051Gxs+94DkSn4YD/aS9kiVKk55CKgM79ZgWTrMrPPgJo
         FnR5EYVmgDqIdKlYl8XQx2FTWpONmNAnyxTbV8K/2YJlrotKRUrHTnfFUHlCD7t0nA7P
         X29PZT+GZ6wWzlZuobean8nc5vfg5pbILJoCjFf3GODRkoguXCEpbtCX92U3I1JhTUKw
         1Wtr1GPXuGBmpcouNHvuTXCSmDrvknOGBy3Q+goPqh4cE/K5kDNTwp/Oo6OFpsFElZAN
         KwhbgjBB532nElnxrQUL92txBOKoZM6MLINUX86TxFhZxI13mnoL5sKvR7U+FIdynQgt
         lQEw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1769212313; x=1769817113; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NMyJR4UL9NXXcbBjQVATLX3KPNH4xZEghdBa9fkK1fE=;
        b=C+pq8Ml0A7GT2kFquuezSiEUmIyk6zxhD+ExRllA1f67Sl+zUxr/Z/vvWgd1VoDdSf
         Usff2q+7vE0xAc1zQj0dNcLsV7YdyJH1SFwEWccd78MqNUsdGmyn/T02ZlMy++48iolN
         yOtpCZbgj0E8SO47ISf5dXb+mRNoAhSmb45KDnk1B4FwJi7FhH6waefeqZylOKgnMuMJ
         2B8twQkmYkxUXGqL1Iphp8dSwdOBxXMQHBzjVbcTRmEeOSuEkAZD3FHthALzI2caAr0/
         KXbH3x1V1B5IW83q0xTn9UWDd+zxn3tN1CXdImOJ85zfQI+Wz2PNtO2hJTvDjctSDOrC
         cc8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769212313; x=1769817113;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NMyJR4UL9NXXcbBjQVATLX3KPNH4xZEghdBa9fkK1fE=;
        b=N4fPhLu29M34rDY5aw4yHzPS+DOcLAc7r95BflATnXWnfbLwRWN/k3OxRn9SEWiz7x
         iYdblUx4SbZXGzABMqOR5eGwebe2MtgTWG9ACQPo5FnmqPb7mwE0chkH1s3VQYViPYyD
         pkKMNme10RUi2aU5mU1f3DW30bMLtuAZaYr+jcQz+nkLbQB5TEIH/RLhBHCRnn0tC9Ic
         yo4nphbHeTPkPd/oc/PYZV1S2BgCe8SStqw5dappH6n8pjzDbNXrC1SrxZ5AB5zDcWYB
         pDq3v0ABBAYhRo7+1A5sWwOgGfLywaffdjmHwOG4h7+4PG97Cy3aLBlEIlP24D4wvoMx
         E06Q==
X-Forwarded-Encrypted: i=1; AJvYcCW2fHRLdWKUuj9ZbWKLTpOSWidtl1y4blB+xvTX+bQhkocWSiwEYA9Ffe/O3WRJ2ZxM80iqXYjh3c4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwLEgF8mUEHM0bX4XCUfJNrE9vrWy+Ozon7jGOAV4PDakw4RM0s
	GZRLLYXFZ7gJI34GnM7M6y4XOgrj3iswCv6qraeie23Q9d/J05aBs0M/A41zByV7LBvy9srXVsd
	5RXfXteZfdBWSSdvQbWi0IcOz8r0xqyjrmNMuyqQX
X-Gm-Gg: AZuq6aJ9SdyJHquj8hUquhT7LqJObnDSCP7M4dQyz4d88Q3ZUo8jkN3TxKVU69TffF4
	ZSpV0bsGfSp8lCF6aBjgpaQiN2U3rF4XTrpytBBK9eYCpbZzg688tDQ4UMULEvJeX0y+3xUevbv
	wNc6xIci3f4HyT6pVQ4PUTGktzOkjg8GYBLOGcvoYwo6FdojxeZJgPpfezLwVr1m89yriIOwT08
	3X2/9Hcy0qQx6yxTT+hEXLupR6Gym0uKZ6J4UOAZR6cXc71e5z5wq9ADT6rLvO6quxuUCPH/yNN
	OdSbYjtcnloMZfgj2Icdik4mjZbm
X-Received: by 2002:a05:7022:a8e:b0:11b:9386:a38b with SMTP id
 a92af1059eb24-1247dc161e4mr2737254c88.46.1769212312767; Fri, 23 Jan 2026
 15:51:52 -0800 (PST)
MIME-Version: 1.0
References: <20260121-next-v1-1-c18068b091b9@google.com> <7c78f9da40022e7bbf850ae8989c617bdc30cc95.camel@linaro.org>
 <CA+zupgw5H5rumo+DxaTfA_=bcvjbBOivm6R+Pw31jgE-sMyEtw@mail.gmail.com> <f956ccd3f5f694de7a634819da3f790a8dce132b.camel@linaro.org>
In-Reply-To: <f956ccd3f5f694de7a634819da3f790a8dce132b.camel@linaro.org>
From: Roy Luo <royluo@google.com>
Date: Fri, 23 Jan 2026 15:51:16 -0800
X-Gm-Features: AZwV_QgoFLO5lJ1lQA8XWJ4HuK52CnYXSZ5eL7UyBrfGdR4s2b17ZCPRTqChT0A
Message-ID: <CA+zupgwEWM4c9yK1f-Y_Cv5gk=0zYNuUb3kZyZ6O3FDRbPPvKw@mail.gmail.com>
Subject: Re: [PATCH next] phy: google: fix build dependency for Google Tensor
 USB PHY
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, kernel test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_155156_306896_B3F33156 
X-CRM114-Status: GOOD (  27.61  )
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

T24gVGh1LCBKYW4gMjIsIDIwMjYgYXQgMTA6MjjigK9QTSBBbmRyw6kgRHJhc3ppayA8YW5kcmUu
ZHJhc3ppa0BsaW5hcm8ub3JnPiB3cm90ZToKPgo+IEhpIFJveSwKPgo+IE9uIFRodSwgMjAyNi0w
MS0yMiBhdCAxMTowMCAtMDgwMCwgUm95IEx1byB3cm90ZToKPiA+IE9uIFRodSwgSmFuIDIyLCAy
MDI2IGF0IDI6MznigK9BTSBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3Jn
PiB3cm90ZToKPiA+ID4KPiA+ID4gSGkgUm95LAo+ID4gPgo+ID4gPiBPbiBXZWQsIDIwMjYtMDEt
MjEgYXQgMjI6MjEgKzAwMDAsIFJveSBMdW8gd3JvdGU6Cj4gPiA+ID4gVGhlIEdvb2dsZSBUZW5z
b3IgVVNCIFBIWSBkcml2ZXIgdXNlcyB0aGUgVHlwZS1DIHN3aXRjaCBmcmFtZXdvcmsgdG8KPiA+
ID4gPiBoYW5kbGUgb3JpZW50YXRpb24gY2hhbmdlcy4gSG93ZXZlciwgdGhlIEtjb25maWcgZGlk
IG5vdCBzcGVjaWZ5IGEKPiA+ID4gPiBkZXBlbmRlbmN5IG9uIHRoZSBUWVBFQyBmcmFtZXdvcmss
IGxlYWRpbmcgdG8gdW5kZWZpbmVkIHJlZmVyZW5jZQo+ID4gPiA+IGVycm9ycyB3aGVuIGJ1aWxk
aW5nIGZvciBhcmNoaXRlY3R1cmVzIG9yIGNvbmZpZ3VyYXRpb25zIHdoZXJlCj4gPiA+ID4gQ09O
RklHX1RZUEVDIGlzIGRpc2FibGVkIG9yIGNvbmZpZ3VyZWQgYXMgYSBtb2R1bGUuCj4gPiA+ID4K
PiA+ID4gPiBBZGQgJ2RlcGVuZHMgb24gVFlQRUMnIHRvIHRoZSBQSFlfR09PR0xFX1VTQiBlbnRy
eSB0byBlbnN1cmUgYWxsCj4gPiA+ID4gcmVxdWlyZWQgc3ltYm9scyBhcmUgYXZhaWxhYmxlIGR1
cmluZyBsaW5raW5nLgo+ID4gPiA+Cj4gPiA+ID4gRml4ZXM6IGNiY2U2NjY2OWM4MiAoInBoeTog
QWRkIEdvb2dsZSBUZW5zb3IgU29DIFVTQiBQSFkgZHJpdmVyIikKPiA+ID4gPiBSZXBvcnRlZC1i
eToga2VybmVsIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+Cj4gPiA+ID4gQ2xvc2VzOiBodHRw
czovL2xvcmUua2VybmVsLm9yZy9vZS1rYnVpbGQtYWxsLzIwMjYwMTIxMDgyNS5FTHJwUWVFRC1s
a3BAaW50ZWwuY29tLwo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFJveSBMdW8gPHJveWx1b0Bnb29n
bGUuY29tPgo+ID4gPiA+IC0tLQo+ID4gPiA+ICBkcml2ZXJzL3BoeS9LY29uZmlnIHwgMSArCj4g
PiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+ID4gPiA+Cj4gPiA+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGh5L0tjb25maWcgYi9kcml2ZXJzL3BoeS9LY29uZmlnCj4gPiA+
ID4gaW5kZXggMTQyZTdiMGVmMmVmYjkyMDk3ODE4MDBlZTQ3YjgyMGE5MWIxMTVhZS4uNTUzMWZm
MzFkODE1NmNiMTY0YzMyZTNlNTJkNGE1N2IyNmE2MmQ4ZCAxMDA2NDQKPiA+ID4gPiAtLS0gYS9k
cml2ZXJzL3BoeS9LY29uZmlnCj4gPiA+ID4gKysrIGIvZHJpdmVycy9waHkvS2NvbmZpZwo+ID4g
PiA+IEBAIC00OSw2ICs0OSw3IEBAIGNvbmZpZyBHRU5FUklDX1BIWV9NSVBJX0RQSFkKPiA+ID4g
Pgo+ID4gPiA+ICBjb25maWcgUEhZX0dPT0dMRV9VU0IKPiA+ID4gPiAgIHRyaXN0YXRlICJHb29n
bGUgVGVuc29yIFNvQyBVU0IgUEhZIGRyaXZlciIKPiA+ID4gPiArIGRlcGVuZHMgb24gVFlQRUMK
PiA+ID4KPiA+ID4gQ2FuIHlvdSBtYWtlIHRoaXMKPiA+ID4KPiA+ID4gZGVwZW5kcyBvbiBUWVBF
QyB8fCBDT01QSUxFX1RFU1QKPiA+ID4KPiA+ID4gdG8gYWxsb3cgc29tZSBiZXR0ZXIgdGVzdCBj
b3ZlcmFnZT8KPiA+ID4KPiA+ID4gQ2hlZXJzLAo+ID4gPiBBbmRyZQo+ID4KPiA+IEhpIEFuZHJl
LAo+ID4KPiA+IFdoZXRoZXIgdG8gYWRkIENPTVBJTEVfVEVTVCBmb3IgYnVpbGQgY292ZXJhZ2Ug
d2FzIGRpc2N1c3NlZCBpbgo+ID4gYW5vdGhlciB0aHJlYWQgWzFdLiBNeSB0YWtlYXdheSBmcm9t
IHRoYXQgZGlzY3Vzc2lvbiBpcyB0aGF0Cj4gPiBDT01QSUxFX1RFU1QgaXMgaW50ZW5kZWQgdG8g
c3Vic3RpdHV0ZSBmb3IgQVJDSF9YWFggaW4gYnVpbGQKPiA+IHRlc3RpbmcgYW5kIHNob3VsZCBu
b3QgYmUgdXNlZCB3aXRob3V0IGl0LiBPbmNlIEFSQ0hfR09PR0xFIGlzCj4gPiBwcmVzZW50LCB3
ZSBjYW4gYWRkICJkZXBlbmRzIG9uIChBUkNIX0dPT0dMRSB8fCBDT01QSUxURV9URVNUKSIuCj4K
PiBDT01QSUxFX1RFU1QgaXMgbm90IGxpbWl0ZWQgdG8gQVJDSF94eHguIEl0IGFsbG93cyBkcml2
ZXJzIHRvIGJlCj4gY29tcGlsZSB0ZXN0ZWQgZXZlbiBpZiB0aGUgY3VycmVudCBidWlsZCBkb2Vz
bid0IGVuYWJsZSB3aGF0ZXZlcgo+IG9wdGlvbiAobGlrZSBUWVBFQykuCj4KPiBTZWUgYWxzbyBo
dHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9odG1sL2xhdGVzdC9rYnVpbGQva2NvbmZpZy1sYW5n
dWFnZS5odG1sI2NvbXBpbGUtdGVzdGluZwoKIklmIGEgY29uZmlnIHN5bWJvbCBoYXMgYSBkZXBl
bmRlbmN5LCBidXQgdGhlIGNvZGUgY29udHJvbGxlZCBieSB0aGUKY29uZmlnIHN5bWJvbCBjYW4g
c3RpbGwgYmUgY29tcGlsZWQgaWYgdGhlIGRlcGVuZGVuY3kgaXMgbm90IG1ldCIsClRZUEVDIGRv
ZXNuJ3QgZmFsbCBpbnRvIHRoaXMgY2F0ZWdvcnkgYXMgaXQncyBtYW5kYXRvcnkgZm9yIGNvbXBp
bGluZwpQSFlfR09PR0xFX1VTQi4KV2l0aCAiZGVwZW5kcyBvbiBUWVBFQyB8fCBDT01QSUxFX1RF
U1QiLCB0aGlzIHZlcnkgYnVpbGQgZXJyb3IKd291bGQgcmVzdXJmYWNlIHdoZW4gVFlQRUM9biwg
Q09NUElMRV9URVNUPXkgYW5kClBIWV9HT09HTEVfVVNCPXkuIFBsZWFzZSBsZXQgbWUga25vdyBp
ZiBJIG1pc3NlZCBhbnl0aGluZy4KClRoYW5rcywKUm95Cgo+Cj4gQ2hlZXJzLAo+IEFuZHJlJwo+
Cj4KPiA+Cj4gPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL0NBK3p1cGd3Z2ZLd1BZ
cWo4RzJ0TmY0cEVYTkVXQSt2TDJXWUpQaEoxNnhFeGdrbzdEd0BtYWlsLmdtYWlsLmNvbS8KPiA+
Cj4gPiBSZWdhcmRzLAo+ID4gUm95CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
