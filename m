Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1D93CF6491
	for <linux-phy@archiver.kernel.org>; Mon, 30 Sep 2024 07:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hH9zlbXFKUlxGIPtBtNQLJa/7ZZmF7kCCRmUJpgCGs4=; b=wCxv78H95dA7c7
	WfRDcQFaUhWgMq3wIXyIB5XtmwE91RCMxdO3MzXedDQaXaV3XGTqp0kLN24skrdbPFx5CiigYRfE8
	Iz13E+iybhL9w8scCjatddLu98y5QIQoW9MBunDhsUHJSqum1Dntl0HK5sCMYZqiMNJxSIzj1VH3q
	p5t/S17kxHd6mX6O0aWBXnLpo0LDa2wG4DVp1oRatMJKRckiVEXiA1l/oML/DE6r3hBTvbtnHTnfQ
	jD10HmR1i71fbrmYZ26a3OoDS2c5bA9aJj7s9VQie9T9/Wx9Ia6/VWyMsbO1XVcrqJKW3wq7OQ9i6
	flTYqUo5b0r5mSNMdQeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svAto-0000000GBWB-20h7;
	Mon, 30 Sep 2024 07:32:52 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svAtP-0000000GBPo-064r
	for linux-phy@lists.infradead.org;
	Mon, 30 Sep 2024 07:32:28 +0000
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-71798a15ce5so3794948b3a.0
        for <linux-phy@lists.infradead.org>; Mon, 30 Sep 2024 00:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727681546; x=1728286346; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4L8BDWjvT1FoY+aWVwXIIXuy6O1ffNNtpnMyJVSb/Ds=;
        b=p5X22g44XUPkF9ak6nxCyPuXLejhJKa8WrhefBxZJYULsybxBPoOHpg8ijVSPlcg/o
         SHQUsps6oL6FC+TXI7lvb+jWA/EfBCfl4/BWtWglAUcz7r5VfO+JeIw8QxZs62CElzNf
         ORx/+nCDSaTitx3YYaKG+IIMqOtFV0NA3fikzA7VbBAWYBbwZt4sKC8VkrNDG3uMnAlx
         bGEnD0Z2xN7kJJ3ahgqPFW1wIWuu5LvVlvQEj14RzByFALqf2O4NIeKPCwDmbHyTjkce
         CK25413nLKWJQxCaO36Bj52MgmiHhXiZs15zvzMNcauJr0L02N/H/wuyBkxtBIFOi+zz
         Gb1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727681546; x=1728286346;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4L8BDWjvT1FoY+aWVwXIIXuy6O1ffNNtpnMyJVSb/Ds=;
        b=ozIAxYSveN8w8EuH0h1tthgPabm2BPLIOubg6wtJaS5XI7nq4ZST4+pFlmNayu4p2a
         rwwWyOxai/I2Zh3Ppro51NF0UgEsUktGC3Xz6eiC1vrwP8BW6HWymuRlaEgso0fExlAo
         NlXJabPxomnn2lgN6M/g7Ir6XuI/N/7QkdY+385T4mfnjUxEeYWuaTl2ERn+4JKpMotl
         jeyoTOPOt+s9fPD7U43sr+0BommUd1wLySftZMRlvaSzIrlYiboA+bI/ag8DF/jqKoKc
         73FP2dRwt8TmM0pidLFLyXo/oFb4yBG2deR9jiTwGgEzrrBlZhhxa7hTIX2FNbhTvmWN
         lDtQ==
X-Forwarded-Encrypted: i=1; AJvYcCVLF0EbPBIbRzo0OKchf8eHip84Yd7POhUpCnicxU9kKJhMW/5NPf1ZDZBQ7VVh+3VkVR3tRvV2+FM=@lists.infradead.org
X-Gm-Message-State: AOJu0YwqXKOrT62VUK6rNYqlo6Pp+hL9dbASFLLshUlLJnGRH+cDpGDG
	0ac/SRWhpI8+hm8l2mBnVMJDBbRfn8ohaHWzVvox1Sr9VURL1CKaCFeQKPxjug==
X-Google-Smtp-Source: AGHT+IEq3zoeTCqyFXtaJdMPaUJR4eEGYvl46M67ZjoepKvo2w8xVxGnJwKP2rNQKKJJSwuO8QKYdQ==
X-Received: by 2002:a05:6a21:3416:b0:1d5:118a:b53a with SMTP id adf61e73a8af0-1d5118ab69fmr7685813637.21.1727681545936;
        Mon, 30 Sep 2024 00:32:25 -0700 (PDT)
Received: from thinkpad ([36.255.17.150])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71b264b63d9sm5630117b3a.52.2024.09.30.00.32.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Sep 2024 00:32:25 -0700 (PDT)
Date: Mon, 30 Sep 2024 09:32:17 +0200
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>, vkoul@kernel.org,
	kishon@kernel.org, robh@kernel.org, andersson@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
	sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v4 6/6] arm64: dts: qcom: x1e80100: Add support for PCIe3
 on x1e80100
Message-ID: <20240930073217.5vcg5codqa25xfco@thinkpad>
References: <20240924101444.3933828-1-quic_qianyu@quicinc.com>
 <20240924101444.3933828-7-quic_qianyu@quicinc.com>
 <9a692c98-eb0a-4d86-b642-ea655981ff53@kernel.org>
 <20240925080522.qwjeyrpjtz64pccx@thinkpad>
 <4ee4d016-9d68-4925-9f49-e73a4e7fa794@kernel.org>
 <2731e17d-c1ad-4fb4-ab60-82ceafeffbaf@kernel.org>
 <20240925125224.53g6rw46qufxsw6m@thinkpad>
 <1c6bf1a9-a781-4152-a7a1-7992c6f15829@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1c6bf1a9-a781-4152-a7a1-7992c6f15829@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_003227_096955_FD3978F4 
X-CRM114-Status: GOOD (  40.51  )
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

T24gVGh1LCBTZXAgMjYsIDIwMjQgYXQgMTE6MTU6MzRBTSArMDgwMCwgUWlhbmcgWXUgd3JvdGU6
Cj4gCj4gT24gOS8yNS8yMDI0IDg6NTIgUE0sIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToK
PiA+IE9uIFdlZCwgU2VwIDI1LCAyMDI0IGF0IDExOjQ2OjM1QU0gKzAyMDAsIEtvbnJhZCBEeWJj
aW8gd3JvdGU6Cj4gPiA+IE9uIDI1LjA5LjIwMjQgMTE6MzAgQU0sIEtvbnJhZCBEeWJjaW8gd3Jv
dGU6Cj4gPiA+ID4gT24gMjUuMDkuMjAyNCAxMDowNSBBTSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFt
IHdyb3RlOgo+ID4gPiA+ID4gT24gVHVlLCBTZXAgMjQsIDIwMjQgYXQgMDQ6MjY6MzRQTSArMDIw
MCwgS29ucmFkIER5YmNpbyB3cm90ZToKPiA+ID4gPiA+ID4gT24gMjQuMDkuMjAyNCAxMjoxNCBQ
TSwgUWlhbmcgWXUgd3JvdGU6Cj4gPiA+ID4gPiA+ID4gRGVzY3JpYmUgUENJZTMgY29udHJvbGxl
ciBhbmQgUEhZLiBBbHNvIGFkZCByZXF1aXJlZCBzeXN0ZW0gcmVzb3VyY2VzIGxpa2UKPiA+ID4g
PiA+ID4gPiByZWd1bGF0b3JzLCBjbG9ja3MsIGludGVycnVwdHMgYW5kIHJlZ2lzdGVycyBjb25m
aWd1cmF0aW9uIGZvciBQQ0llMy4KPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBRaWFuZyBZdSA8cXVpY19xaWFueXVAcXVpY2luYy5jb20+Cj4gPiA+ID4gPiA+ID4g
UmV2aWV3ZWQtYnk6IERtaXRyeSBCYXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZAbGluYXJvLm9y
Zz4KPiA+ID4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ID4gUWlhbmcsIE1hbmkKPiA+ID4gPiA+ID4g
Cj4gPiA+ID4gPiA+IEkgaGF2ZSBhIFJUUzUyNjEgbW1jIGNoaXAgb24gUENJZTMgb24gdGhlIFN1
cmZhY2UgTGFwdG9wLgo+ID4gPiA+ID4gSXMgaXQgYmFzZWQgb24geDFlODAxMDA/Cj4gPiA+ID4g
WW91IHdvdWxkIHRoaW5rIHNvIDpQCj4gPiA+ID4gCj4gPiA+ID4gPiA+IEFkZGluZyB0aGUgZ2xv
YmFsIGlycSBicmVha3Mgc2RjYXJkIGRldGVjdGlvbiAodGhlIGNoaXAgc3RpbGwgY29tZXMKPiA+
ID4gPiA+ID4gdXAgZmluZSkgc29tZWhvdy4gUmVtb3ZpbmcgdGhlIGlycSBtYWtlcyBpdCB3b3Jr
IGFnYWluIDp8Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBJJ3ZlIGNvbmZpcm1lZCB0aGF0IHRo
ZSBpcnEgbnVtYmVyIGlzIGNvcnJlY3QKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiBZZWFoLCBJIGRp
ZCBzZWUgc29tZSBpc3N1ZXMgd2l0aCBNU0kgb24gU004MjUwIChSQjUpIHdoZW4gZ2xvYmFsIGlu
dGVycnVwdHMgYXJlCj4gPiA+ID4gPiBlbmFibGVkIGFuZCBJJ20gd29ya2luZyB3aXRoIHRoZSBo
dyBmb2xrcyB0byB1bmRlcnN0YW5kIHdoYXQgaXMgZ29pbmcgb24uIEJ1dAo+ID4gPiA+ID4gSSBk
aWRuJ3Qgc2VlIHRoZSBzYW1lIGlzc3VlcyBvbiBuZXdlciBwbGF0Zm9ybXMgKHNhODc3NXAgZXRj
Li4uKS4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gQ2FuIHlvdSBwbGVhc2UgY29uZmlybSBpZiB0aGUg
aXNzdWUgaXMgZHVlIHRvIE1TSSBub3QgYmVpbmcgcmVjZWl2ZWQgZnJvbSB0aGUKPiA+ID4gPiA+
IGRldmljZT8gQ2hlY2tpbmcgdGhlIC9wcm9jL2ludGVycnV0cHMgaXMgZW5vdWdoLgo+ID4gPiA+
IFRoZXJlJ3Mgbm8gbXNpLW1hcCBmb3IgUENJZTMuIEkgcmVjYWxsICtKb2hhbiB0YWxraW5nIGFi
b3V0IHNvbWUgc29ydCBvZgo+ID4gPiA+IGEgYnVnIHRoYXQgcHJldmVudHMgdXMgZnJvbSBhZGRp
bmcgaXQ/Cj4gPiBZZWFoLCB0aGF0J3MgZm9yIHVzaW5nIEdJQy1JVFMgdG8gcmVjZWl2ZSBNU0lz
LiBCdXQgdGhlIGRlZmF1bHQgb25lIGlzIHRoZQo+ID4gaW50ZXJuYWwgTVNJIGNvbnRyb2xsZXIg
aW4gRFdDLgo+ID4gCj4gPiA+IFVubGVzcyB5b3UganVzdCBtZWFudCB0aGUgbXNpMC4uPTcgaW50
ZXJydXB0cywgdGhlbiB5ZWFoLCBJIG9ubHkgZ2V0IG9uZSBpcnEKPiA+ID4gZXZlbnQgd2l0aCAi
Z2xvYmFsIiBpbiBwbGFjZSBhbmQgaXQgc2VlbXMgdG8gbmV2ZXIgZ2V0IG1vcmUKPiA+ID4gCj4g
PiBPay4gVGhlbiBtb3N0IGxpa2VseSB0aGUgc2FtZSBpc3N1ZSBJIHNhdyBvbiBTTTgyNTAgYXMg
d2VsbC4gQnV0IEknbSBjb25mdXNlZAo+ID4gd2h5IFFpYW5nIGRpZG4ndCBzZWUgdGhlIGlzc3Vl
LiBJIHNwZWNpZmljYWxseSBhc2tlZCBoaW0gdG8gYWRkIHRoZSBnbG9iYWwKPiA+IGludGVycnVw
dCBhbmQgdGVzdCBpdCB3aXRoIHRoZSBlbmRwb2ludCB0byBjaGVjayBpZiB0aGUgaXNzdWUgYXJp
c2VzIG9yIG5vdC4KPiA+IAo+ID4gUWlhbmcsIGNhbiB5b3UgcGxlYXNlIGNvbmZpcm0/Cj4gU29y
cnksIEkgbWlzdW5kZXJzdG9vZCB3aGF0IHlvdSBtZWFuLiBJIG9ubHkgdmVyaWZpZWQgaWYgbGlu
ayB3YXMgdXAgYnV0Cj4gaWdub3JlZCB0aGUgc3RhdHVzIG9mIGVwIGRldmljZQo+IGRyaXZlci4K
PiAKPiBCdXQgbG9vayBsaWtlIHRoaXMgaXNzdWUgaXMgYmVjYXVzZSBzbnBzeXMgTVNJIGlycSBp
cyBtc2tlZCBkdXJpbmcgcHJvYmUuCj4gQ2FuIHlvdSBwbGVhc2UgYWxzbyB1bm1hc2sgQklUKDIz
KSAtIEJJVCgzMCkgd2hlbiB1bm1hc2sKPiBQQVJGX0lOVF9BTExfTElOS19VUCwKPiBsaWtlIHRo
aXMKPiAKPiBAQCAtMTc3Miw3ICsxNzcyLDggQEAgc3RhdGljIGludCBxY29tX3BjaWVfcHJvYmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZQo+ICpwZGV2KQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBlcnJfaG9zdF9kZWluaXQ7Cj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0KPiAKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB3cml0ZWxfcmVsYXhlZChQQVJGX0lOVF9BTExfTElOS19VUCwgcGNpZS0+cGFyZiArCj4gUEFS
Rl9JTlRfQUxMX01BU0spOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHdyaXRlbF9y
ZWxheGVkKFBBUkZfSU5UX0FMTF9MSU5LX1VQIHwgR0VOTUFTSygzMCwgMjMpLAo+IHBjaWUtPnBh
cmYgKyBQQVJGX0lOVF9BTExfTUFTSyk7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
ZGV2X2VycihkZXYsICJJTlRfQUxMX01BU0s6IDB4JXhcbiIsCj4gcmVhZGxfcmVsYXhlZChwY2ll
LT5wYXJmICsgUEFSRl9JTlRfQUxMX01BU0spKTsKPiDCoMKgwqDCoMKgwqDCoCB9Cj4gCj4gQWZ0
ZXIgdGhhdCwgdGhpcyBpc3N1ZSBpcyBmaXhlZCBvbiBteSBzZXR1cC4KPiAKCkkgZGlkIHNlZSB0
aG9zZSBiaXRzLCBidXQgdGhleSB3ZXJlIG1lbnRpb25lZCBhcyBkaWFnbm9zdGljIGludGVycnVw
dHMuIFNvIEkgd2FzCm5vdCBzdXJlIHdoeSBkaXNhYmxpbmcgdGhlbSBtYXNrcyBNU0kuIEZ1cnRo
ZXJtb3JlLCBNU0kgc2VlbXMgdG8gd29yayBvbiBTTTg0NTAKd2l0aG91dCBlbmFibGluZyB0aGVz
ZSBiaXRzLgoKQW55d2F5LCBzaW5jZSB5b3UgbWVudGlvbmVkIHRoYXQgaXQgaGVscHMgaW4gYnJp
bmdpbmcgYmFjayBNU0kgb24gdGhpcyBwbGF0Zm9ybSwKaXQgZG9lc24ndCBodXJ0IHRvIGVuYWJs
ZSB0aGVzZSBpbnRlcnJ1cHRzLiBJIHdpbGwgcG9zdCBhIHBhdGNoIGZvciB0aGF0LAp0aGFua3Mh
CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/
4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
