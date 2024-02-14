Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DC4CC48BC3
	for <linux-phy@archiver.kernel.org>; Wed, 14 Feb 2024 13:46:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Mu3PM5sFqAEYwG8tVI2+FAklvOaXNuXBoy/JQgIqwQ=; b=pQlvR4A4ipMVP7
	Km+JRcdHYVwnu2jDZ9pHswDyHxS9RuauoXP0CYFTs0S9JLjt2LEpRfCulV+L6I+HAdOVDguCfNPu0
	OHGTapTv+Wh7MSKShu507jpFLcG2l433TTho1EIEMWWHoeL510bVBoXfJ4VNY14VLsj6zO6A+WXFD
	ndYVSkHHG7KfJqDW8qoS8hsQqm0cWgrSZv89cQtLEWYVAhfigwS9aCQef24V5LjRF9KtDy16h7gz0
	D2vV7kx2cwWsTGUZ2ZtPERrXRBywLFBBGGy8ti63aGrK/vJEkTyCvniiB4NPz/Bbsz0JgsaA3ARUM
	SKjsSt0c1yfYvLh5nqQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raFah-0000000D4Eq-1DP2;
	Wed, 14 Feb 2024 13:46:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raERi-0000000Cq8J-2LP5;
	Wed, 14 Feb 2024 12:33:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=X1Ye0dunwLazzlcONdORYQz6R5DZTpTLJFqvm1NaBMM=; b=ToVzRp8IJH1mWq3Xx8eY/Jn754
	Nagc1u+IilWR2ZovE3LCJGm6+fBIUvP+ABLh4Ews9gLGUBmduZl0WfrMljnOs6gHgJCf6iM1xp63U
	IzOnfC3k+bVSYU/3yBXQxse7CVZsMZsDX+nHtZeG2slsxRhjEmCFy/SN9GhbPDHAqB5dkwHAPl1/5
	v2+OhUp/+wxJP4C1+AYk5Y2ztkRWGsIFMqw0hwgU01smJuwIBo/yRB1z6TrbAgVDjqOjZVYG3hW6N
	jBg+hOMzCwlAM65QEy3chDsW1QBwBeAWGJY5TkHF0W2ZJJ1J8nIkU08mphjFyj56AC0XZKaTRZRkn
	9NbKFntg==;
Received: from mail-pj1-f45.google.com ([209.85.216.45])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raERb-0000000GEOt-16PK;
	Wed, 14 Feb 2024 12:33:01 +0000
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-296e22f85abso3404865a91.3;
        Wed, 14 Feb 2024 04:32:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707913971; x=1708518771; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X1Ye0dunwLazzlcONdORYQz6R5DZTpTLJFqvm1NaBMM=;
        b=IJtcVwWfvRsRpni3ubic++roUiY9AdfRCc9YZy+T2SlaEf62gjZF+Dax12OfTYyvuR
         t1SrAHIEckyS8hpsv0AN4cSKkZuKQUZd1ZzWTfpMEEMz2L+kyT6ybfnkUWezW/i0w6Kv
         BXce6Dvi4fuWhZF70tDBv7hx4/zbLWjMHRdeG35YDRMPgEj+9qRnci1Jw2jCKuOhPKwX
         5iQOGvdjXbGxi5GsxXo+VwBv38goJ0Nn+JlIly78UYcL0O5qAKHAroNRVkhzQTxU6YSq
         NygZiNRtbTcMb55WutUXZniH+0/uM5sQnmUqpp8n0V/WSRzktim7SWcCOIil9xfOKGIm
         m5ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707913971; x=1708518771;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X1Ye0dunwLazzlcONdORYQz6R5DZTpTLJFqvm1NaBMM=;
        b=n+wqzTZd0SXdQVOrTCyOckRj2qF3WABNLrGFpbNwAw2/2yzWgmboRsZLf6ruT/Gq9w
         MDmFMGd+Y7kMKB1SFMQxEChtzU0VWuNhNJ7+kIaCLnSWcGk5rb2bDTP37EV6F9tCl1to
         ncOhQ6EODkXVFBMDeGFhlUc5p5ec3xF9rO3fNJMWFjAVowMz7NvLykppJYdZQT/5OzRw
         Bzp6rueqgI7yeroSvz19fJE42NRoGJbmHZkLAwJKK2dei7MSY3mpCMg4/UOYXsOEerGC
         VPBXkGeq58JptbAiodS0Se7fdRggexT69zWhqJSU3/py+iiyjXxk3IBygRQIS6x4coEP
         GS9g==
X-Forwarded-Encrypted: i=1; AJvYcCUAXaNJBsrj1byYh4aW5ubnODXyJcOcI4EaRbRPvG0WJ20c7U6kpdf9YBV6xg/0XKYLQb9WDZoshol8x2NVIs6f9QdyBwQsGM+ZS3JGkQ==
X-Gm-Message-State: AOJu0YzJ6+3LAX1MKStmwg+ruZ7VhdQX4bFkpr4gqL7Ca1ngpH2aK07m
	4lp8mg6zbNhnCYw8Vt/IBNVVMbbRUnzTWRC1HPxzEWp9OCsdfStKVPecECmDm++THIo4epdSEUS
	dEvVvCHSmXkazB/eUdHBjj0mZ+X8=
X-Google-Smtp-Source: AGHT+IHVmdw1nY0+4qD7E7k6QaVH+5XJQDDsj/LW3oDNKR06kE80kLwbeGs6MxsY6a+Qs73lI5I8l/GC4hlcwQZRmYY=
X-Received: by 2002:a17:90a:f407:b0:296:2f49:6c04 with SMTP id
 ch7-20020a17090af40700b002962f496c04mr2192291pjb.19.1707913971359; Wed, 14
 Feb 2024 04:32:51 -0800 (PST)
MIME-Version: 1.0
References: <20240210204606.11944-1-aford173@gmail.com> <20240210204606.11944-2-aford173@gmail.com>
 <20240214121438.331a9f20@booty>
In-Reply-To: <20240214121438.331a9f20@booty>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 14 Feb 2024 06:32:40 -0600
Message-ID: <CAHCN7x+y9bcdEqDkpma1oaY88WvjHsWUOm55B4XNsPy5HM_-vw@mail.gmail.com>
Subject: Re: [PATCH V4 1/6] dt-bindings: phy: add binding for the i.MX8MP HDMI PHY
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: linux-arm-kernel@lists.infradead.org, marex@denx.de, 
	aford@beaconembedded.com, Lucas Stach <l.stach@pengutronix.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	NXP Linux Team <linux-imx@nxp.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_123255_725085_D8888DAF 
X-CRM114-Status: GOOD (  19.51  )
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

T24gV2VkLCBGZWIgMTQsIDIwMjQgYXQgNToxNOKAr0FNIEx1Y2EgQ2VyZXNvbGkgPGx1Y2EuY2Vy
ZXNvbGlAYm9vdGxpbi5jb20+IHdyb3RlOgo+Cj4gSGkgQWRhbSwKPgo+IE9uIFNhdCwgMTAgRmVi
IDIwMjQgMTQ6NDU6NTcgLTA2MDAKPiBBZGFtIEZvcmQgPGFmb3JkMTczQGdtYWlsLmNvbT4gd3Jv
dGU6Cj4KPiA+IEZyb206IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPgo+ID4K
PiA+IEFkZCBhIERUIGJpbmRpbmcgZm9yIHRoZSBIRE1JIFBIWSBmb3VuZCBvbiB0aGUgaS5NWDhN
UCBTb0MuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0
cm9uaXguZGU+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBBZGFtIEZvcmQgPGFmb3JkMTczQGdtYWlsLmNv
bT4KPiA+IFJldmlld2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93
c2tpQGxpbmFyby5vcmc+Cj4KPiBJIHdhcyBhIGJpdCBwdXp6bGVkIGJ5IHRoaXMgdjQgc2VyaWVz
IGFzIGl0IGNvbWVzIGFmdGVyIHY4Li4uIGhvd2V2ZXIKPiB0aGFua3MgZm9yIGtlZXBpbmcgdXAh
CgpJdCB3YXMgY29uZnVzaW5nIHRvIG1lIHRvIHRyeSBhbmQgZmlndXJlIG91dCB3aGVyZSB0aGUg
bGF0ZXN0IG9mIGVhY2gKb2YgdGhlIHZhcmlvdXMgY29tcG9uZW50cyB3ZXJlIGZvdW5kLiAgSSB0
cmllZCB0byBleHBsYWluIGl0IGluIHRoZQpjb3ZlciBsZXR0ZXIsIGJ1dCBiYXNpY2FsbHkgdGhl
IHByZXZpb3VzIFY4IHdhcyBkdWUgdG8gdGhlIGZhY3QgdGhhdApzb21lIHBvcnRpb24gb2YgaXQg
aGFkIGJlZW4gYXR0ZW1wdGVkIDcgdGltZXMuICBXaGVuIGl0IHdhcyBicm91Z2h0IHRvCm15IGF0
dGVudGlvbiB0aGF0IHRoZSBQSFkgZHJpdmVyIEkgdXNlZCB3YXMgbm90IGhlIHJpZ2h0IG9uZSBh
bmQgdGhlCkhETUktVFggYW5kIHRoZSBQVkkgZHJpdmVyIHdlcmUgYWxyZWFkeSBhcHBsaWVkLCBJ
IHJldmVydGVkIHRvIHVzaW5nCnRoZSByZXZpc2lvbiBoaXN0b3J5IG9mIHRoZSB2ZXJzaW9uIG9m
IHRoZSBQSFkgZHJpdmVyIEkgcHVsbGVkIHdoaWNoCndhcyBWMyBhbmQgd2l0aCBteSBjaGFuZ2Vz
IGJlY2FtZSBWNC4KCkkgZGViYXRlZCBvbiBtYWtpbmcgdGhpcyBWOSwgYnV0IGlucmVhbGl0eSB0
aGlzIGNvZGUgd2FzIG9ubHkKYXR0ZW1wdGVkIDMgdGltZXMsIGFuZCB0aGUgc3Vic2VxdWVudCBk
ZXZpY2UgdHJlZSBzdHVmZiBoYWQgdW5kZXJnb25lCnNvbWUgY2hhbmdlcywgYnV0IGl0IHdhcyBl
YXNpZXIgdG8ga2VlcCB0aGVtIHBhaXJlZCB0b2dldGhlciB3aXRoIHRoZQpQSFkgZHJpdmVyIHNv
IHRoZSBzZXJpZXMgY291bGQgYmUgYXBwbGllZCBhcyBhIHdob2xlLgoKSSB3aWxsIGJlIG1ha2lu
ZyBhIFY1IGR1ZSB0byBzb21lIGJ1aWxkLWJvdCBmZWVkYmFjayBhbmQgeW91cgpmZWVkYmFjaywg
YnV0IEknbGwgYmUgc3VyZSB0byBwdWxsIHlvdXIgdGFncyB3aGVuIEkgdHJ5IGFnYWluLiAgSSBq
dXN0CndhbnQgdG8gZ2l2ZSBwZW9wbGUgYXJvdW5kIGEgd2VlayB0byBtdWxsIGl0IG92ZXIgYW5k
IHRlc3QgaXQuCgphZGFtCj4KPiBUaGlzIHBhdGNoIGlzIGlkZW50aWNhbCB0byB0aGUgdjggSSBh
bHJlYWR5IHJldmlld2VkLCBzbzoKPgo+IFJldmlld2VkLWJ5OiBMdWNhIENlcmVzb2xpIDxsdWNh
LmNlcmVzb2xpQGJvb3RsaW4uY29tPgo+Cj4gLS0KPiBMdWNhIENlcmVzb2xpLCBCb290bGluCj4g
RW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVlcmluZwo+IGh0dHBzOi8vYm9vdGxpbi5j
b20KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
