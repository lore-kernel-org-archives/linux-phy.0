Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B8E7CCD183
	for <linux-phy@archiver.kernel.org>; Fri, 10 Oct 2025 00:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OouSu+ZPZC8df9ThY/VYd7SDn7u71et8VVowsz/fxBY=; b=Gb6HJdp7iNkgOG
	2jWjCpNV/rE5oARJ+9IEsPZILH3VkZgL59oW53i7PRSIuVj9Tkrm5kjD6H40b/jdWMy2AApvkMRQ/
	Rzq5a6CgOQShL3Fx8xpQ/G//HPy5eLOaBwuqB7r6VKB+9t6cJ+yzKLPJplz97dEC7rvTHl1Ri2KJr
	7uB7CwMJ4APZXMPbDMp6ZVlC74b8QVuNVh2kaoQwXQZjARoXNJYsEqAaIZnrSI5T0zVlDMsQ7lmgj
	hUQjLBbvIZVPt3jdQ9FsikW8Kbt30VHWCQzXXzaihs8VJZJ/UhdtbxmxcKij6g9UaLB/lSC2hoA3Q
	VMo4StUwv253bk+OmHBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v70tc-00000007MuQ-3qiO;
	Fri, 10 Oct 2025 00:22:08 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v70ta-00000007Mti-1hDg
	for linux-phy@lists.infradead.org;
	Fri, 10 Oct 2025 00:22:07 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-32eb76b9039so2118102a91.1
        for <linux-phy@lists.infradead.org>; Thu, 09 Oct 2025 17:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1760055725; x=1760660525; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EFIzsRx5u+TjLRxFDsuPe1onjkTRP2yLnHKqtm1kJjU=;
        b=Df0H7kxnkRGU5SWoF9CoQAJ4Txb4ZZaTWSNfro3E4UcqGW9LraLj0KoxW3ikF8Q/CM
         HLR1XvdmSwch8TkITi+FZYgFgtj8yy0B6LC3a3Bs+4flUFHaOjTLh5fQrJ6N0KGub0rA
         b4yB9aIokAryu5p6mov8zx/i/fiI+LjC2B3nNj2PRqViVaoFl7QSsWJFOykiRnovQcwQ
         mcRkegFaM5F0oDjsMBXMCB3TvVHa68+hTBhNykBE0nxfD8HBC3+eYilHT+J/npdw2zpL
         Lp8ya2i78n/sJkE7h3wJMm9f8kTOnjfJFKTedwlvUp35hd4uGbXyBUaTffKd9PYzgY4Z
         AY4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760055725; x=1760660525;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EFIzsRx5u+TjLRxFDsuPe1onjkTRP2yLnHKqtm1kJjU=;
        b=GbjqXEkRs1o7bjOBfVNHJsAJnJMbJyZUDxoNCUhmhaZwohxg4rP2SUKoNFaf/dbBQP
         LgnKv46f1RWiV02mSNUXdAc9CezpvZFKnWsjRth7f6M52CUv5y8oe/L6pdzdk94KPFRi
         qzOXPBKgO2xHcgjDhG52a8JSbZCnJbefsJ3DD15PQ79BHW6lNKR/+K5Lzc0xz8RFi5S6
         XHJhL+hMa/pbAfcViRjzyo9rXSh1LClxjgA0A16Y8gsPCrEb6Mp4cNJDSz4nrAGUb5l5
         vo/0aExEyk2K8ei1ZK590RUv/l8I3sflXtmb06ZDdvUy+kq3/N27rig+vS6dtznesJaR
         m6gw==
X-Forwarded-Encrypted: i=1; AJvYcCXJaurpocjmFCfZd3uUdb4u9k+die6QBuW48WzvtYtbgucSzWX7Dwc75Gq2X78u9AK4EkN+Mtlu6Bk=@lists.infradead.org
X-Gm-Message-State: AOJu0YxPyc4O0ckCDTFx9+7PdMXVj/4iVIIub8WCZ6+hoMliPtDJFews
	gKT+jFDsAWrStGlyjZTq37VKsF7UX7Q3gj4yJWY9LTqSEuUVg/HtXhcEReRjVNK5xh3EToIcEBZ
	gwoH+w5YCAWIALLsDUlSwGOo3qRG0LombMBorJHA/
X-Gm-Gg: ASbGnctWf7d8YQjxeDJGheQr9vT/YcH7P+olJk1Sf6GC+8jWe7iy7wjqhDwf+EaO1sy
	k/xf2dfJLm0f8nJj0+3tsE2roY1JuPBrx8Xdc/ecNSIkYeFbvBKjAYA84EYH15siPtHCi3ePc5M
	P6KbZky2rTMnNGYDuJNSTJ01x30zkRWXpiC6I8ZFFqj7wjVr39j43i6bWFmf7XJ+yZXfmyVF07E
	L06PJSjHhmoTE47lNjUQhXrEGEX2Lp4+q/tXhOrHcAnNwHqrg==
X-Google-Smtp-Source: AGHT+IGgcF8PSmTCucb4se7xEsYvasKr34DgUTWPZOYiUTBUmeR+w0x0qQVtaKpSbfh4u5srIAgqWPVaIcKX9+EuOes=
X-Received: by 2002:a17:90b:3844:b0:32e:d649:f98c with SMTP id
 98e67ed59e1d1-33b510f8fc3mr12348912a91.1.1760055725085; Thu, 09 Oct 2025
 17:22:05 -0700 (PDT)
MIME-Version: 1.0
References: <20251008060000.3136021-1-royluo@google.com> <20251008060000.3136021-2-royluo@google.com>
 <8966b6a9-ff70-4833-a5c7-c6d6c13c6c8b@kernel.org> <CA+zupgwLu-y26X9eiENyC28i9ZxCkuhb0X8X9H6HBpqkqJ7O3w@mail.gmail.com>
 <9ee299c1-edf4-4738-8b5e-6a684f683fbd@kernel.org>
In-Reply-To: <9ee299c1-edf4-4738-8b5e-6a684f683fbd@kernel.org>
From: Roy Luo <royluo@google.com>
Date: Thu, 9 Oct 2025 17:21:27 -0700
X-Gm-Features: AS18NWC5EQBnjFzz6UkQXL4eyHUSSa6uRuaVLKwpG97sE-urd9eRzDvfbspqP2k
Message-ID: <CA+zupgxMfXE0YPTCFDsDOcwgQ0mzB40xZ=tLboMwzxxGfLj7kg@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: usb: dwc3: Add Google Tensor G5 DWC3
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, Badhri Jagan Sridharan <badhri@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_172206_465522_C7351F6B 
X-CRM114-Status: GOOD (  37.52  )
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

T24gVGh1LCBPY3QgOSwgMjAyNSBhdCAxMjoyNuKAr0FNIEtyenlzenRvZiBLb3psb3dza2kgPGty
emtAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiAwOS8xMC8yMDI1IDE0OjEyLCBSb3kgTHVvIHdy
b3RlOgo+ID4gT24gV2VkLCBPY3QgOCwgMjAyNSBhdCA0OjU24oCvUE0gS3J6eXN6dG9mIEtvemxv
d3NraSA8a3J6a0BrZXJuZWwub3JnPiB3cm90ZToKPiA+Pgo+ID4+IE9uIDA4LzEwLzIwMjUgMTQ6
NTksIFJveSBMdW8gd3JvdGU6Cj4gPj4+IERvY3VtZW50IHRoZSBkZXZpY2UgdHJlZSBiaW5kaW5n
cyBmb3IgdGhlIERXQzMgVVNCIGNvbnRyb2xsZXIgZm91bmQgaW4KPiA+Pj4gR29vZ2xlIFRlbnNv
ciBTb0NzLCBzdGFydGluZyB3aXRoIHRoZSBHNSBnZW5lcmF0aW9uLgo+ID4+Pgo+ID4+PiBUaGUg
VGVuc29yIEc1IHNpbGljb24gcmVwcmVzZW50cyBhIGNvbXBsZXRlIGFyY2hpdGVjdHVyYWwgZGVw
YXJ0dXJlIGZyb20KPiA+Pgo+ID4+Cj4gPj4gRzUgZG9lcyBub3QgaGF2ZSBhIG1vZGVsIG51bWJl
ciBsaWtlIEcxLUc0Pwo+ID4KPiA+IFRoZXJlJ3Mgbm8gbW9kZWwgbnVtYmVyIGZvciBHNSwgSSdt
IHN0aWNraW5nIHRvIHRoZSBleGlzdGluZyAiZ3MiIHByZWZpeAo+ID4gYXMgdGhleSdyZSBzdGls
bCBpbiB0aGUgc2FtZSBTb0MgZmFtaWx5LiAgUGxlYXNlIGxldCBtZSBrbm93IGlmIHlvdSBoYXZl
IGFueQo+ID4gY29uY2VybnMuCj4gPgo+ID4+Cj4gPj4+IHByZXZpb3VzIGdlbmVyYXRpb25zIChs
aWtlIGdzMTAxKSwgaW5jbHVkaW5nIGVudGlyZWx5IG5ldyBjbG9jay9yZXNldAo+ID4+PiBzY2hl
bWVzLCB0b3AtbGV2ZWwgd3JhcHBlciBhbmQgcmVnaXN0ZXIgaW50ZXJmYWNlLiBDb25zZXF1ZW50
bHksCj4gPj4+IGV4aXN0aW5nIFNhbXN1bmcvRXh5bm9zIERXQzMgVVNCIGJpbmRpbmdzIGFuZCBk
cml2ZXJzIGFyZSBpbmNvbXBhdGlibGUsCj4gPj4KPiA+PiBEbyBub3QgcmVmZXJlbmNlIGRyaXZl
cnMuIEV4cGxhaW4gdGhlIGhhcmR3YXJlLgo+ID4KPiA+IEFjaywgYWxsIG1lbnRpb25zIG9mICJk
cml2ZXIiIHdpbGwgYmUgcmVtb3ZlZCBpbiB0aGUgbmV4dCBwYXRjaC4KPiA+Cj4gPj4KPiA+Pj4g
bmVjZXNzaXRhdGluZyB0aGlzIG5ldyBkZXZpY2UgdHJlZSBiaW5kaW5nLgo+ID4+Pgo+ID4+PiBU
aGUgVVNCIGNvbnRyb2xsZXIgb24gVGVuc29yIEc1IGlzIGJhc2VkIG9uIFN5bm9wc3lzIERXQzMg
SVAgYW5kIGZlYXR1cmVzCj4gPj4+IER1YWwtUm9sZSBEZXZpY2Ugc2luZ2xlIHBvcnQgd2l0aCBo
aWJlcm5hdGlvbiBzdXBwb3J0Lgo+ID4+Pgo+ID4+PiBTaWduZWQtb2ZmLWJ5OiBSb3kgTHVvIDxy
b3lsdW9AZ29vZ2xlLmNvbT4KPiA+Pj4gLS0tCj4gPj4+ICAuLi4vYmluZGluZ3MvdXNiL2dvb2ds
ZSxncy1kd2MzLnlhbWwgICAgICAgICAgfCAxNDUgKysrKysrKysrKysrKysrKysrCj4gPj4+ICAx
IGZpbGUgY2hhbmdlZCwgMTQ1IGluc2VydGlvbnMoKykKPiA+Pj4gIGNyZWF0ZSBtb2RlIDEwMDY0
NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL2dvb2dsZSxncy1kd2MzLnlh
bWwKPiA+Pj4KPiA+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy91c2IvZ29vZ2xlLGdzLWR3YzMueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy91c2IvZ29vZ2xlLGdzLWR3YzMueWFtbAo+ID4+PiBuZXcgZmlsZSBtb2RlIDEwMDY0
NAo+ID4+PiBpbmRleCAwMDAwMDAwMDAwMDAuLjllYjBiZjcyNmU4ZAo+ID4+PiAtLS0gL2Rldi9u
dWxsCj4gPj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvZ29v
Z2xlLGdzLWR3YzMueWFtbAo+ID4+PiBAQCAtMCwwICsxLDE0NSBAQAo+ID4+PiArIyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAgT1IgQlNELTItQ2xhdXNlKQo+ID4+PiArIyBDb3B5
cmlnaHQgKGMpIDIwMjUsIEdvb2dsZSBMTEMKPiA+Pj4gKyVZQU1MIDEuMgo+ID4+PiArLS0tCj4g
Pj4+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3VzYi9nb29nbGUsZ3MtZHdj
My55YW1sIwo+ID4+PiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1h
cy9jb3JlLnlhbWwjCj4gPj4+ICsKPiA+Pj4gK3RpdGxlOiBHb29nbGUgVGVuc29yIFNlcmllcyAo
RzUrKSBEV0MzIFVTQiBTb0MgQ29udHJvbGxlcgo+ID4+PiArCj4gPj4+ICttYWludGFpbmVyczoK
PiA+Pj4gKyAgLSBSb3kgTHVvIDxyb3lsdW9AZ29vZ2xlLmNvbT4KPiA+Pj4gKwo+ID4+PiArZGVz
Y3JpcHRpb246IHwKPiA+Pgo+ID4+Cj4gPj4gRG8gbm90IG5lZWQgJ3wnIHVubGVzcyB5b3UgbmVl
ZCB0byBwcmVzZXJ2ZSBmb3JtYXR0aW5nLgo+ID4KPiA+IEFjaywgd2lsbCBmaXggdGhpcyBpbiB0
aGUgbmV4dCBwYXRjaC4KPiA+Cj4gPj4KPiA+Pj4gKyAgRGVzY3JpYmVzIHRoZSBEV0MzIFVTQiBj
b250cm9sbGVyIGJsb2NrIGltcGxlbWVudGVkIG9uIEdvb2dsZSBUZW5zb3IgU29DcywKPiA+Pj4g
KyAgc3RhcnRpbmcgd2l0aCB0aGUgRzUgZ2VuZXJhdGlvbi4gQmFzZWQgb24gU3lub3BzeXMgRFdD
MyBJUCwgdGhlIGNvbnRyb2xsZXIKPiA+Pj4gKyAgZmVhdHVyZXMgRHVhbC1Sb2xlIERldmljZSBz
aW5nbGUgcG9ydCB3aXRoIGhpYmVybmF0aW9uIGFkZC1vbi4KPiA+Pj4gKwo+ID4+PiArcHJvcGVy
dGllczoKPiA+Pj4gKyAgY29tcGF0aWJsZToKPiA+Pj4gKyAgICBpdGVtczoKPiA+Pj4gKyAgICAg
IC0gZW51bToKPiA+Pj4gKyAgICAgICAgICAtIGdvb2dsZSxnczUtZHdjMwo+ID4+PiArCj4gPj4+
ICsgIHJlZzoKPiA+Pj4gKyAgICBtaW5JdGVtczogMwo+ID4+Cj4gPj4gRHJvcAo+ID4+Cj4gPj4+
ICsgICAgbWF4SXRlbXM6IDMKPiA+Pj4gKwo+ID4+PiArICByZWctbmFtZXM6Cj4gPj4+ICsgICAg
ZGVzY3JpcHRpb246IHwKPiA+Pj4gKyAgICAgIFRoZSBmb2xsb3dpbmcgbWVtb3J5IHJlZ2lvbnMg
bXVzdCBwcmVzZW50Ogo+ID4+PiArICAgICAgICAtIGR3YzNfY29yZTogQ29yZSBEV0MzIElQIHJl
Z2lzdGVycy4KPiA+Pj4gKyAgICAgICAgLSBob3N0X2NmZ19jc3I6IEhpYmVybmF0aW9uIGNvbnRy
b2wgcmVnaXN0ZXJzLgo+ID4+PiArICAgICAgICAtIHVzYmludF9jc3I6IEhpYmVybmF0aW9uIGlu
dGVycnVwdCByZWdpc3RlcnMuCj4gPj4KPiA+PiBEcm9wIGRlc2NyaXB0aW9uIG9yIG1vdmUgaXQg
dG8gaXRlbXMgaW4gcmVnLiBTZWUgb3RoZXIgYmluZGluZ3MuCj4gPgo+ID4gQWNrLCB3aWxsIHVz
ZSBhbiBpdGVtIGxpc3QgaW4gcmVnIGluc3RlYWQuCj4gPgo+ID4+Cj4gPj4+ICsgICAgaXRlbXM6
Cj4gPj4+ICsgICAgICAtIGNvbnN0OiBkd2MzX2NvcmUKPiA+Pj4gKyAgICAgIC0gY29uc3Q6IGhv
c3RfY2ZnX2Nzcgo+ID4+PiArICAgICAgLSBjb25zdDogdXNiaW50X2Nzcgo+ID4+PiArCj4gPj4+
ICsgIGludGVycnVwdHM6Cj4gPj4+ICsgICAgbWluSXRlbXM6IDMKPiA+Pgo+ID4+IERyb3AKPiA+
Cj4gPiBBY2ssIHdpbGwgdXNlIGFuIGl0ZW0gbGlzdCBpbnN0ZWFkLgo+ID4KPiA+Pgo+ID4+PiAr
ICAgIG1heEl0ZW1zOiAzCj4gPj4+ICsKPiA+Pj4gKyAgaW50ZXJydXB0LW5hbWVzOgo+ID4+PiAr
ICAgIGRlc2NyaXB0aW9uOiB8Cj4gPj4+ICsgICAgICBUaGUgZm9sbG93aW5nIGludGVycnVwdHMg
bXVzdCBwcmVzZW50Ogo+ID4+PiArICAgICAgICAtIGR3Y191c2IzOiBDb3JlIERXQzMgaW50ZXJy
dXB0Lgo+ID4+PiArICAgICAgICAtIGhzX3BtZV9pcnE6IEhpZ2ggc3BlZWQgcmVtb3RlIHdha2V1
cCBpbnRlcnJ1cHQgZm9yIGhpYmVybmF0aW9uLgo+ID4+PiArICAgICAgICAtIHNzX3BtZV9pcnE6
IFN1cGVyIHNwZWVkIHJlbW90ZSB3YWtldXAgaW50ZXJydXB0IGZvciBoaWJlcm5hdGlvbi4KPiA+
Pgo+ID4+IEZyb20gd2hlcmUgZGlkIHlvdSBnZXQgdGhpcyBzdHlsZT8gRG9uJ3Qgd3JpdGUgYmlu
ZGluZ3Mgd2l0aCBjaGF0IGdwdCBvcgo+ID4+IHdoYXRldmVyIG90aGVyIHRvb2wuIGl0IGlzIGEg
d2FzdGUgb2Ygb3VyIHRpbWUuCj4gPgo+ID4gSSByZWZlcmVuY2VkIHRoZSBzdHlsZSBmcm9tIGEg
cmVjZW50IGR0IGJpbmRpbmcgY2hhbmdlIFsxXSB0aGF0IGFkZHMKPiA+ICJEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvdXNiL3Fjb20sc25wcy1kd2MzLnlhbWwiLgo+ID4gSSB0aG91
Z2h0IGl0IHdvdWxkIGJlIGEgZ29vZCByZWZlcmVuY2UgYmVjYXVzZSBpdCdzIHJlbGF0aXZlbHkg
bmV3Cj4gPiBhbmQgaXMgYWxzbyBhIGJpbmRpbmcgZm9yIFNOUFMgZHdjMyBnbHVlIGxvZ2ljLiBQ
ZXJoYXBzIHRoYXQgc3R5bGUKPiA+IGRvZXNuJ3QgYXBwbHkgaGVyZSBiZWNhdXNlIHFjb20sc25w
cy1kd2MzLnlhbWwgc3VwcG9ydHMKPiA+IG11bHRpcGxlIGNvbXBhdGlibGUgYW5kIGhlcmUgd2Ug
aGF2ZSBvbmx5IG9uZT8KPiA+Cj4gPiBKdXN0IHRvIGNsYXJpZnksIEknbSBhIEdlbWluaSB1c2Vy
IGFuZCB0aGlzIHBhdGNoIGlzIDEwMCUgb3JnYW5pYywKPiA+IGhhbmQtY3JhZnRlZCBieSBhIGxp
dmluZyBodW1hbiBicmFpbiA6KQo+ID4KPiA+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9h
bGwvMjAyNTA0MTQtZHdjMy1yZWZhY3Rvci12Ny0yLWYwMTViMzU4NzIyZEBvc3MucXVhbGNvbW0u
Y29tLwo+Cj4gWW91ciBjb2RlIGlzIG5vdCBhdCBhbGwgbGlrZSBhYm92ZSwgeW91IGRvIG5vdCBo
YXZlIGFueSB2YXJpYW50cyBoZXJlLAo+IHNvIHlvdSBjYW5ub3QgdXNlIHRoYXQgc3ludGF4IC0g
aXMgbm90IGNvcnJlY3QgaGVyZS4KPgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKClRoYW5r
cyBmb3IgdGhlIGNsYXJpZmljYXRpb24uCgpSZWdhcmRzLApSb3kgTHVvCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
