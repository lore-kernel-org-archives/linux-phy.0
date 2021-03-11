Return-Path: <SRS0=2Et4=IJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F282C433E0
	for <linux-phy@archiver.kernel.org>; Thu, 11 Mar 2021 20:32:14 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8C6C764F8D
	for <linux-phy@archiver.kernel.org>; Thu, 11 Mar 2021 20:32:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8C6C764F8D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DbvI8hOaClZE83co7GbPILK1fFnDAHW7zGziplwaDcI=; b=Pn42Hg43WC6r1oUyVxiTL+gUW
	L69mRM/A4nAguKwU8wEyw39gpkMrH5jDVqaJeAIDVHvC7CXzKYzxLSkLcky1NiXxQz3uLCmnQeqwi
	GEOZ1oSX3G3H14yUmWD8CB+wGjdWerFb5RjRuGgfJG2d80h+pCp8uoUMtL/exfOzeBtyCHkpGlbw0
	b8xpqH92r7fjVGTdpQmO0MQoRYhztz2kc3ST0yDO1CrDHhEGAUqM9pS4ioKQvpNp1PX+X1LEIme6c
	m/nQOdgC5nCMg2mFbQDis7TgkC6oB4StFMZ1lSQWdAqlmWzbyZGsqGEllTI0mLzvsZU2KZsc5qAzG
	2hudeCnLQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKRyb-00A46M-Ki; Thu, 11 Mar 2021 20:32:11 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKRyT-00A45W-7E
 for linux-phy@lists.infradead.org; Thu, 11 Mar 2021 20:32:03 +0000
Received: by mail-lj1-x22e.google.com with SMTP id u20so3862319lja.13
 for <linux-phy@lists.infradead.org>; Thu, 11 Mar 2021 12:32:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=CKnkGjn47xa7ZD0AoETSWdNCSl6QePkA6H1YePqpgRk=;
 b=R5SddUDX7JcsfaoRxdnopRqF5y0Y6lIJ+yRKOIEp3qoiAPAvf3q1REQbVmB5Lvr03Z
 1xx8JBMzmkAgLOZ2hQ/ar31Epn7HlMRI47KaA1J6ix+/hJ8oDBSF5VgPxynsBpFJZDlh
 k4g1crqta5scPMyLHhYBeQcqAAT/g5BK3nOpcDd/8eSBAQwuVi0s6In5nC+1g91S9YDV
 IvHs6MFKRtL+WSVUKfLDs9NiHZ5DA+32ZkW6V++S9VjNqgZsqkQuQiPiOjAqqXS8LOvP
 h/zRyO+Wk6GlEjcdOddyI8hM9YnAD3zFrbcIkC/lee+TZQRu+7PuIhw85Ndw29e6Zhho
 gYKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CKnkGjn47xa7ZD0AoETSWdNCSl6QePkA6H1YePqpgRk=;
 b=ICwvHrJZL2x9Pf5r9Mge0nHXlG18+Ug2VfIWBKcyIhiNX2BDJDx4noPP8f3bxc73Kz
 wnapzr21iRbHegeQQIvctw7YxYZDsU//OEOEZHMdt2t7H5olzaViFGy9yx3kiLxjH9aW
 6OrGTcLR0IcFQJlDkhV1tihFKgB/K9ova4aFrd6NO0LiMIv0tBRuVMs7WNcvvap9yPXP
 z3D6DkcSAIEV37A5NTHrdYfPkF6zaXh5Qyf5wWVLoqBS5evO+BDkl7qq8C8b7PtAWkg0
 dlu7Mhwd1gJbutLC3fk85pC7YfN0fm92xUSenEZwG5LcRDbWm8ZrAIDrfUPCPG9W2VVA
 9lhw==
X-Gm-Message-State: AOAM530mYEP4DjcW/6JayAKS1phNKnDyjlSnyyOszEfsrGwJtrVb8cc3
 +iEzzQz1RvOboUHNALdn8JI=
X-Google-Smtp-Source: ABdhPJxjS5IIsA+kqp/6+wprfQzsWbKbfDun7F5Pslcf3YIkpLewR5euFf+kYCbb8ZI9YdxKPPaxlA==
X-Received: by 2002:a05:651c:481:: with SMTP id
 s1mr371983ljc.152.1615494720334; 
 Thu, 11 Mar 2021 12:32:00 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id h24sm1341976lji.35.2021.03.11.12.31.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Mar 2021 12:31:59 -0800 (PST)
Subject: Re: [PATCH] dt-bindings: phy: bcm-ns-usb3-phy: convert to yaml
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Hauke Mehrtens <hauke@hauke-m.de>, bcm-kernel-feedback-list@broadcom.com,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 linux-phy@lists.infradead.org, Vivek Unune <npcomplete13@gmail.com>
References: <20201116074650.16070-1-zajec5@gmail.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <ed093ddb-da37-c3c4-cdd9-3b8e8db776bb@gmail.com>
Date: Thu, 11 Mar 2021 21:31:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20201116074650.16070-1-zajec5@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210311_203201_387441_A66F38B0 
X-CRM114-Status: GOOD (  25.17  )
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

SGksCgpPbiAxNi4xMS4yMDIwIDA4OjQ2LCBSYWZhxYIgTWnFgmVja2kgd3JvdGU6Cj4gRnJvbTog
UmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+IAo+IDEuIENoYW5nZSBzeW50YXgg
ZnJvbSB0eHQgdG8geWFtbAo+IDIuIERyb3AgIkRyaXZlciBmb3IiIGZyb20gdGhlIHRpdGxlCj4g
My4gRHJvcCAicmVnID0gPDB4MD47IiBmcm9tIGV4YW1wbGUgKG5vdGljZWQgYnkgZHRfYmluZGlu
Z19jaGVjaykKPiA0LiBTcGVjaWZ5IGxpY2Vuc2UKPiAKPiBTaWduZWQtb2ZmLWJ5OiBSYWZhxYIg
TWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+Cj4gLS0tCj4gSSB0aGluayB0aGlzIHNob3VsZCBn
byB0aHJvdWdoIGxpbnV4LXBoeSB0cmVlLiBLaXNob24sIFZpbm9kLCBjYW4geW91Cj4gdGFrZSB0
aGlzIHBhdGNoPwo+IAo+IFRoaXMgcGF0Y2ggZ2VuZXJhdGVzIGEgZmFsc2UgcG9zaXRpdmUgY2hl
Y2twYXRjaC5wbCB3YXJuaW5nIFswXS4KPiBQbGVhc2UgaWdub3JlOgo+IFdBUk5JTkc6IERUIGJp
bmRpbmcgZG9jcyBhbmQgaW5jbHVkZXMgc2hvdWxkIGJlIGEgc2VwYXJhdGUgcGF0Y2guIFNlZTog
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3N1Ym1pdHRpbmctcGF0Y2hlcy5yc3QK
PiAKPiBbMF0gaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMjAvMi8xOC8xMDg0CgpLaXNob24sIFZp
bm9kOiBJIHNlbnQgdGhpcyBwYXRjaCBiYWNrIGluIERlY2VtYmVyLCBpdCB3YXMgUmV2aWV3ZWQt
YnkKUm9iLCBidXQgbmV2ZXIgYWNjZXB0ZWQuCgpDb3VsZCB5b3UgcHVzaCB0aGlzIHBhdGNoIHRv
IHRoZSBsaW51eC1waHkuZ2l0PwoKCj4gLS0tCj4gICAuLi4vYmluZGluZ3MvcGh5L2JjbS1ucy11
c2IzLXBoeS50eHQgICAgICAgICAgfCAzNCAtLS0tLS0tLS0tCj4gICAuLi4vYmluZGluZ3MvcGh5
L2JjbS1ucy11c2IzLXBoeS55YW1sICAgICAgICAgfCA2MiArKysrKysrKysrKysrKysrKysrCj4g
ICAyIGZpbGVzIGNoYW5nZWQsIDYyIGluc2VydGlvbnMoKyksIDM0IGRlbGV0aW9ucygtKQo+ICAg
ZGVsZXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
YmNtLW5zLXVzYjMtcGh5LnR4dAo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYmNtLW5zLXVzYjMtcGh5LnlhbWwKPiAKPiBkaWZmIC0t
Z2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9iY20tbnMtdXNiMy1w
aHkudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9iY20tbnMtdXNi
My1waHkudHh0Cj4gZGVsZXRlZCBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMzJmMDU3MjYwMzUx
Li4wMDAwMDAwMDAwMDAKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGh5L2JjbS1ucy11c2IzLXBoeS50eHQKPiArKysgL2Rldi9udWxsCj4gQEAgLTEsMzQgKzAsMCBA
QAo+IC1Ecml2ZXIgZm9yIEJyb2FkY29tIE5vcnRoc3RhciBVU0IgMy4wIFBIWQo+IC0KPiAtUmVx
dWlyZWQgcHJvcGVydGllczoKPiAtCj4gLS0gY29tcGF0aWJsZTogb25lIG9mOiAiYnJjbSxucy1h
eC11c2IzLXBoeSIsICJicmNtLG5zLWJ4LXVzYjMtcGh5Ii4KPiAtLSByZWc6IGFkZHJlc3Mgb2Yg
TURJTyBidXMgZGV2aWNlCj4gLS0gdXNiMy1kbXAtc3lzY29uOiBwaGFuZGxlIHRvIHN5c2NvbiB3
aXRoIERNUCAoRGV2aWNlIE1hbmFnZW1lbnQgUGx1Z2luKQo+IC0JCSAgIHJlZ2lzdGVycwo+IC0t
ICNwaHktY2VsbHM6IG11c3QgYmUgMAo+IC0KPiAtSW5pdGlhbGl6YXRpb24gb2YgVVNCIDMuMCBQ
SFkgZGVwZW5kcyBvbiBOb3J0aHN0YXIgdmVyc2lvbi4gVGhlcmUgYXJlIGN1cnJlbnRseQo+IC10
aHJlZSBrbm93biBzZXJpZXM6IEF4LCBCeCBhbmQgQ3guCj4gLUtub3duIEEwOiBCQ000NzA3IHJl
diAwCj4gLUtub3duIEIwOiBCQ000NzA3IHJldiA0LCBCQ001MzU3MyByZXYgMgo+IC1Lbm93biBC
MTogQkNNNDcwNyByZXYgNgo+IC1Lbm93biBDMDogQkNNNDcwOTQgcmV2IDAKPiAtCj4gLUV4YW1w
bGU6Cj4gLQltZGlvOiBtZGlvQDAgewo+IC0JCXJlZyA9IDwweDA+Owo+IC0JCSNzaXplLWNlbGxz
ID0gPDE+Owo+IC0JCSNhZGRyZXNzLWNlbGxzID0gPDA+Owo+IC0KPiAtCQl1c2IzLXBoeUAxMCB7
Cj4gLQkJCWNvbXBhdGlibGUgPSAiYnJjbSxucy1heC11c2IzLXBoeSI7Cj4gLQkJCXJlZyA9IDww
eDEwPjsKPiAtCQkJdXNiMy1kbXAtc3lzY29uID0gPCZ1c2IzX2RtcD47Cj4gLQkJCSNwaHktY2Vs
bHMgPSA8MD47Cj4gLQkJfTsKPiAtCX07Cj4gLQo+IC0JdXNiM19kbXA6IHN5c2NvbkAxODEwNTAw
MCB7Cj4gLQkJcmVnID0gPDB4MTgxMDUwMDAgMHgxMDAwPjsKPiAtCX07Cj4gZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYmNtLW5zLXVzYjMtcGh5Lnlh
bWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JjbS1ucy11c2IzLXBo
eS55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLjdmZDQx
OWRiNDVkMAo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGh5L2JjbS1ucy11c2IzLXBoeS55YW1sCj4gQEAgLTAsMCArMSw2MiBAQAo+ICsj
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlCj4g
KyVZQU1MIDEuMgo+ICstLS0KPiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9w
aHkvYmNtLW5zLXVzYjMtcGh5LnlhbWwjCj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9y
Zy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+ICsKPiArdGl0bGU6IEJyb2FkY29tIE5vcnRoc3Rh
ciBVU0IgMy4wIFBIWQo+ICsKPiArZGVzY3JpcHRpb246IHwKPiArICBJbml0aWFsaXphdGlvbiBv
ZiBVU0IgMy4wIFBIWSBkZXBlbmRzIG9uIE5vcnRoc3RhciB2ZXJzaW9uLiBUaGVyZSBhcmUgY3Vy
cmVudGx5Cj4gKyAgdGhyZWUga25vd24gc2VyaWVzOiBBeCwgQnggYW5kIEN4Lgo+ICsgIEtub3du
IEEwOiBCQ000NzA3IHJldiAwCj4gKyAgS25vd24gQjA6IEJDTTQ3MDcgcmV2IDQsIEJDTTUzNTcz
IHJldiAyCj4gKyAgS25vd24gQjE6IEJDTTQ3MDcgcmV2IDYKPiArICBLbm93biBDMDogQkNNNDcw
OTQgcmV2IDAKPiArCj4gK21haW50YWluZXJzOgo+ICsgIC0gUmFmYcWCIE1pxYJlY2tpIDxyYWZh
bEBtaWxlY2tpLnBsPgo+ICsKPiArcHJvcGVydGllczoKPiArICBjb21wYXRpYmxlOgo+ICsgICAg
ZW51bToKPiArICAgICAgLSBicmNtLG5zLWF4LXVzYjMtcGh5Cj4gKyAgICAgIC0gYnJjbSxucy1i
eC11c2IzLXBoeQo+ICsKPiArICByZWc6Cj4gKyAgICBkZXNjcmlwdGlvbjogYWRkcmVzcyBvZiBN
RElPIGJ1cyBkZXZpY2UKPiArICAgIG1heEl0ZW1zOiAxCj4gKwo+ICsgIHVzYjMtZG1wLXN5c2Nv
bjoKPiArICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3BoYW5kbGUK
PiArICAgIGRlc2NyaXB0aW9uOgo+ICsgICAgICBQaGFuZGxlIHRvIHRoZSBETVAgKERldmljZSBN
YW5hZ2VtZW50IFBsdWdpbikgc3lzY29uCj4gKwo+ICsgICIjcGh5LWNlbGxzIjoKPiArICAgIGNv
bnN0OiAwCj4gKwo+ICtyZXF1aXJlZDoKPiArICAtIGNvbXBhdGlibGUKPiArICAtIHJlZwo+ICsg
IC0gdXNiMy1kbXAtc3lzY29uCj4gKyAgLSAiI3BoeS1jZWxscyIKPiArCj4gK2FkZGl0aW9uYWxQ
cm9wZXJ0aWVzOiBmYWxzZQo+ICsKPiArZXhhbXBsZXM6Cj4gKyAgLSB8Cj4gKyAgICBtZGlvIHsK
PiArICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiArICAgICAgICAjc2l6ZS1jZWxscyA9
IDwwPjsKPiArCj4gKyAgICAgICAgdXNiMy1waHlAMTAgewo+ICsgICAgICAgICAgICBjb21wYXRp
YmxlID0gImJyY20sbnMtYXgtdXNiMy1waHkiOwo+ICsgICAgICAgICAgICByZWcgPSA8MHgxMD47
Cj4gKyAgICAgICAgICAgIHVzYjMtZG1wLXN5c2NvbiA9IDwmdXNiM19kbXA+Owo+ICsgICAgICAg
ICAgICAjcGh5LWNlbGxzID0gPDA+Owo+ICsgICAgICAgIH07Cj4gKyAgICB9Owo+ICsKPiArICAg
IHVzYjNfZG1wOiBzeXNjb25AMTgxMDUwMDAgewo+ICsgICAgICAgIHJlZyA9IDwweDE4MTA1MDAw
IDB4MTAwMD47Cj4gKyAgICB9Owo+IAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
