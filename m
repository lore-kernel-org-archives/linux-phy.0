Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A811D13C1B
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jan 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dm5IaaL/sjcm2KWDe/m3KfqU07/AGmWxkg2Krx9XRKk=; b=uD7xA5H4f13/wQ
	8+n9p0h04cJzh6rtTFOKSaW4ELqMkcFIkoBQEaRpM5VAx6+QKTiNHOplAtpcmZ2x4J+Uw8ygQnIrU
	Ux2So81yuA6i1YTLMFru8AA0gjPXzx4kfGj1l7Tcr3Gt/Hd4zlJiGZqgh7M+Pus6bEMwS78Y/OeBj
	pS9FmvmljJjqNBWAnO9haSamTxR8JesVySp4+7tLU8Y3qFG0+ryP0Lfo94lkz3ELRfklaWvqqTNY/
	g3vjb77AgG8zLl4LKAuS0Gr3PXSIyikREldDEVPJft1FGRU0e7kjEPRpIjcyJzkQD7jtaJ+yvHDvV
	lC3uCQIf5hOj49ShOPmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkYuq-0000000DUpG-39xn;
	Tue, 27 Jan 2026 02:34:52 +0000
Received: from mail-dl1-x1229.google.com ([2607:f8b0:4864:20::1229])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkYuo-0000000DUo4-0Bud
	for linux-phy@lists.infradead.org;
	Tue, 27 Jan 2026 02:34:51 +0000
Received: by mail-dl1-x1229.google.com with SMTP id a92af1059eb24-1233b953bebso12952660c88.1
        for <linux-phy@lists.infradead.org>; Mon, 26 Jan 2026 18:34:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769481288; cv=none;
        d=google.com; s=arc-20240605;
        b=e4PLqInEYq6yBXps63gLMoPBEfz5Kb2fm6bF1z6X6+651YBvcNHFBI6ngAsW/JeBbv
         2n85SUvcfPdquWW10DTxSPbEVDU47xQU4E3f7Ko9TO/ROQFmPKeW3A95JLdDBm/RdL2o
         cwVswmTRrhMBd3K/0Yg9uTpdQCRM10CVKqYGZHwagmNyKM9xTRP19c/6X3PNa+8h9Axm
         lnpyhhNVeig0wAiki7ThLzlsQv/wJ1C1Rd5JVMQrwK91cZcLWpjgo8fKrhza5BEY1BqH
         6UcYCxFwcQWNEnDdblYE+d42UXIoX1b0oacL2k0YCTwmKY0vLB53S2hdu6GBWfcK/fsa
         EoDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=JFip2kLExDGxMI3IhhLYqAjmWzM0b5u9zb5Bf6gXzsc=;
        fh=sylYJVNUkUDCCL8BIdGoVMDO5cP1UxiMnB4nt3PlOy0=;
        b=iGRreYuKcSolGm6i7ZyK3gvrYHRG5ep4s9/Lug/AzUWHPG5dZ6gFsEPQvjNIDAyA9N
         X6dnZvYPw3bw3yKv1hIcxgkvXLe+YrSB5yz6DPDZ2nYVMSKcCzL4aeCQBGCxXTHtXK5C
         yA7IcZmg0OiMNmLxav+/UDIS2JV4Iyg/l2I+fkh14zD8L6zaD70/vtCi9T/iKES3Z0vx
         7zdUYVLntzPuRAwOZTPguFVGTXi7l14o1v7NPPMXYpETTNdX9GFLqYc4CdsXB11bzjU4
         7LZ4mi6RW4PovvsdCPZjRSGFaTov5g9ViCntbi54zotUaghxSFkm2X9V4KuGRbOzp1L5
         T5Wg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1769481288; x=1770086088; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JFip2kLExDGxMI3IhhLYqAjmWzM0b5u9zb5Bf6gXzsc=;
        b=xZ3xZ2YFt6LYDd3MblCEGeQ2LZOuaM6xBJVhC5kenSfHCO9ar16J7irxrsP81uShfX
         A2QkES9svLYx9t0qjURJdL2VE3ZYq6ZWq8ZF0n0wgSqQI0apwDueoPAlSVjqQ8gzfBsg
         EHeEHLT4bsbKUG4eLh+tHnPunZoq7kI7vLdKpdIjuI/TTu/bONZkSQwpeIQcUC+GLCIr
         69SLwNFyi00OxmDBm+OqoRfQjOZwsUGSLDE/9PZ52QNhWYYTCbyt4DSjoe8My3NwpR18
         30q75DaXDLizOnyHgiMbZu9y9W0rhCBWUw7OKH0iLDNUupGurgdkMU6kB6pfbhmoz7N7
         Xlrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769481288; x=1770086088;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JFip2kLExDGxMI3IhhLYqAjmWzM0b5u9zb5Bf6gXzsc=;
        b=tDyl+pjUpe+KDOIh+XeVG5cb1vlEIExrNVhxMAArlblFttZ4QlkJaM6MGxv4RkVnsJ
         TYSQRIljHbH9a8jzPAjp4SzvAoP9zFn+UoXGdTF1ZuB4G8O4dishN8/M8GjsFoMJfLaI
         860QgccBg33WHABRI6X0VJ3chaJRNuPjHqEduUYpyrIuYlxscOFkwXd44ehP7a/yMWAm
         MS3beBtIRqZiMnjjbTy42Nl/tl3/YjO0FCI2OaKDODvZeJ174Zuml6sKFbcL4D393Q6M
         MHINXZVIFvpebjTk5PndonUOD29Fk3yOvYGXeDpYRm2I27BhTry/yen+Bby7nudmP5fP
         fvvw==
X-Forwarded-Encrypted: i=1; AJvYcCXY4IfqJ2zm4aEVrj6c++f4jz10aVOZZWu6zEzkuucjLMVbNSxbfTK7XdTb9TfSvmRrYejZ3+gfh1M=@lists.infradead.org
X-Gm-Message-State: AOJu0YxF2/xRytQSlU9d0af6CLvzfd0I1tdxara1Iy8BN8ZObmekhi61
	+FaVspwmMxM3g1mPyPl6qVgSTY+Yv4qyC4V/j+ziC+NalxdqPbmiUpByr/uIS8tWeNIH8CdaSd1
	lyprqTLM+sQCqnVuxnUV5/RYSD5ocdoPhlrsNZbbN
X-Gm-Gg: AZuq6aKn3JVctYcXLPb9i/4MVKy+f3StbBxVB3kuNQiwKpp7XNGWZC8Xiy42MBWoZi5
	CcQAIEVDZ2Bbg/QAM76USTZIhX4GvXxyi6n5qFQ3VeQ6h+U5hLUecG6D1HAj27QEd+dAoPmifRw
	9hi7Wn4WXQXj8aYoKlTxPniJRO7iNirfH9U5umiulPsmxKDaBPccxT+iJaBhhrzmLbRGzIAL58d
	TRWKeA6K9psOjc+eYs8atk/P2Qhfrl99EsOawWpRemUNkX9FQZxo82I9a0uaTeNXLW6QctGeoN9
	ZNo1J0IG8182UT0xL6uuoB4DbGmG
X-Received: by 2002:a05:701a:c94e:b0:119:e56b:c75b with SMTP id
 a92af1059eb24-124a00c7356mr169215c88.32.1769481287984; Mon, 26 Jan 2026
 18:34:47 -0800 (PST)
MIME-Version: 1.0
References: <20260121-next-v1-1-c18068b091b9@google.com> <7c78f9da40022e7bbf850ae8989c617bdc30cc95.camel@linaro.org>
 <CA+zupgw5H5rumo+DxaTfA_=bcvjbBOivm6R+Pw31jgE-sMyEtw@mail.gmail.com>
 <f956ccd3f5f694de7a634819da3f790a8dce132b.camel@linaro.org>
 <CA+zupgwEWM4c9yK1f-Y_Cv5gk=0zYNuUb3kZyZ6O3FDRbPPvKw@mail.gmail.com> <eebefae5273bccce2d0fcd97afe3ea28bedf27cd.camel@linaro.org>
In-Reply-To: <eebefae5273bccce2d0fcd97afe3ea28bedf27cd.camel@linaro.org>
From: Roy Luo <royluo@google.com>
Date: Mon, 26 Jan 2026 18:34:11 -0800
X-Gm-Features: AZwV_QhhJrxrvzBO-TQhPiIPXuGUoaw8HO-KdRUINuCSkmnzos1YfxT_-yBlkN4
Message-ID: <CA+zupgztBHTJwNPEOfXjdw9TpcpiVGO=hdFBYk3PUo-0Vf95mg@mail.gmail.com>
Subject: Re: [PATCH next] phy: google: fix build dependency for Google Tensor
 USB PHY
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, kernel test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_183450_091228_A524EBBD 
X-CRM114-Status: GOOD (  21.32  )
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

T24gRnJpLCBKYW4gMjMsIDIwMjYgYXQgMTA6NTLigK9QTSBBbmRyw6kgRHJhc3ppayA8YW5kcmUu
ZHJhc3ppa0BsaW5hcm8ub3JnPiB3cm90ZToKPgo+IEhpIFJveSwKPgo+IE9uIEZyaSwgMjAyNi0w
MS0yMyBhdCAxNTo1MSAtMDgwMCwgUm95IEx1byB3cm90ZToKPiA+IE9uIFRodSwgSmFuIDIyLCAy
MDI2IGF0IDEwOjI44oCvUE0gQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9y
Zz4gd3JvdGU6Cj4gPiA+Cj4gPiA+Cj4gPiA+IENPTVBJTEVfVEVTVCBpcyBub3QgbGltaXRlZCB0
byBBUkNIX3h4eC4gSXQgYWxsb3dzIGRyaXZlcnMgdG8gYmUKPiA+ID4gY29tcGlsZSB0ZXN0ZWQg
ZXZlbiBpZiB0aGUgY3VycmVudCBidWlsZCBkb2Vzbid0IGVuYWJsZSB3aGF0ZXZlcgo+ID4gPiBv
cHRpb24gKGxpa2UgVFlQRUMpLgo+ID4gPgo+ID4gPiBTZWUgYWxzbyBodHRwczovL3d3dy5rZXJu
ZWwub3JnL2RvYy9odG1sL2xhdGVzdC9rYnVpbGQva2NvbmZpZy1sYW5ndWFnZS5odG1sI2NvbXBp
bGUtdGVzdGluZwo+ID4KPiA+ICJJZiBhIGNvbmZpZyBzeW1ib2wgaGFzIGEgZGVwZW5kZW5jeSwg
YnV0IHRoZSBjb2RlIGNvbnRyb2xsZWQgYnkgdGhlCj4gPiBjb25maWcgc3ltYm9sIGNhbiBzdGls
bCBiZSBjb21waWxlZCBpZiB0aGUgZGVwZW5kZW5jeSBpcyBub3QgbWV0IiwKPiA+IFRZUEVDIGRv
ZXNuJ3QgZmFsbCBpbnRvIHRoaXMgY2F0ZWdvcnkgYXMgaXQncyBtYW5kYXRvcnkgZm9yIGNvbXBp
bGluZwo+ID4gUEhZX0dPT0dMRV9VU0IuCj4gPiBXaXRoICJkZXBlbmRzIG9uIFRZUEVDIHx8IENP
TVBJTEVfVEVTVCIsIHRoaXMgdmVyeSBidWlsZCBlcnJvcgo+ID4gd291bGQgcmVzdXJmYWNlIHdo
ZW4gVFlQRUM9biwgQ09NUElMRV9URVNUPXkgYW5kCj4gPiBQSFlfR09PR0xFX1VTQj15LiBQbGVh
c2UgbGV0IG1lIGtub3cgaWYgSSBtaXNzZWQgYW55dGhpbmcuCj4KPiBObyBpdCB3b3VsZG4ndC4g
SWYgeW91IGxvb2sgYXQgdGhlIGJ1aWxkIGxvZyAmIC5jb25maWcgZnJvbSB0aGUgcmVwb3J0ZWQK
PiBmYWlsdXJlLCB0aGUgZXJyb3Igd2FzIGJlY2F1c2U6Cj4KPiBDT05GSUdfUEhZX0dPT0dMRV9V
U0I9eQo+IENPTkZJR19UWVBFQz1tCgpZb3UncmUgcmlnaHQgYWJvdXQgdGhlIGNhdXNlIG9mIHRo
ZSBidWlsZCBlcnJvciBhbmQgc29ycnkgSSBnYXZlCnRoZSB3cm9uZyBleGFtcGxlLiBMZXQncyBs
b29rIGF0IHRoaXMgYnVpbGQgZXJyb3Igc2NlbmFyaW8gd2l0aAoiZGVwZW5kcyBvbiBUWVBFQyB8
fCBDT01QSUxFX1RFU1QiOgpHaXZlbiBDT01QSUxFX1RFU1Q9eSBhbmQgQ09ORklHX1RZUEVDPW0s
IHRoZQoiZGVwZW5kcyBvbiIgd291bGQgYmUgZXZhbHVhdGVkIGFzIG1heCh5LG0pID0geS4KSGVu
Y2UsIENPTkZJR19QSFlfR09PR0xFX1VTQiBpcyBhbGxvd2VkIHRvIGJlCnNldCB0byB5LCBtIG9y
IG4uIFdoZW4gaXQncyBzZXQgdG8geSwgdGhlIGV4YWN0IGJ1aWxkIGVycm9yCndvdWxkIGJlIGlu
dHJvZHVjZWQuIEkgYWxzbyB0ZXN0ZWQgdGhpcyBsb2NhbGx5IGFuZCBzYXcKdGhlIGJ1aWxkIGVy
cm9yLgoKVGhhbmtzLApSb3kKCj4KPiBidWlsdC1pbiBjb2RlIGNhbiBub3QgbGluayBhZ2FpbnN0
IGNvZGUgZnJvbSBhIG1vZHVsZS4KPgo+IFRoZSB0eXBlYyBBUElzIGFyZSBhbGwgc3R1YmJlZCBv
dXQgd2hlbiBUWVBFQz1uLgo+Cj4gQ2hlZXJzLAo+IEFuZHJlJwo+Cj4KPgo+ID4KPiA+IFRoYW5r
cywKPiA+IFJveQo+ID4KPiA+ID4KPiA+ID4gQ2hlZXJzLAo+ID4gPiBBbmRyZScKPiA+ID4KPiA+
ID4KPiA+ID4gPgo+ID4gPiA+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvQ0ErenVw
Z3dnZkt3UFlxajhHMnROZjRwRVhORVdBK3ZMMldZSlBoSjE2eEV4Z2tvN0R3QG1haWwuZ21haWwu
Y29tLwo+ID4gPiA+Cj4gPiA+ID4gUmVnYXJkcywKPiA+ID4gPiBSb3kKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
