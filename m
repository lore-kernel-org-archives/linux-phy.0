Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B9FAC31D97
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jul 2024 22:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hCmLYNSz4MK1RcqvURjxDeXULVoJsf1iasIB7ca8S+s=; b=ejjY9xe4QQjn1d
	vlc9dY4HQ7mgu1+TH0o1n2pWLpdDKZZ63d2fN3UC+P6iXwgrrTwF1JQ/92vnXraaJCboCjcsmpnb4
	/ixsEUa5nXExXrjKtXhHDPX4fyjEpMX4HPgkzeD4kihlGIIEDk3qQWihxfV9WWsxkPmmYINqHT09Z
	IiB5n/eQJUcjHeKsE4Ag79yQ/m+/b+7QGTR2FWENfEF0aAEIqEHUeEQN9Z8+Qa5fa+8Jm7v9ZxJHp
	s4LiGuA2XnB/X83jowQk2fq6bHAUuqOQA7riPm8m+cPNkzJ9w1LhpjR3n1v6cNRskXxGEJBXqagyh
	tBUhPkSHedtqx464DSUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP86X-0000000BbDZ-0qjg;
	Wed, 03 Jul 2024 22:05:33 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP86U-0000000BbCu-20lz
	for linux-phy@lists.infradead.org;
	Wed, 03 Jul 2024 22:05:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 649BF61852
	for <linux-phy@lists.infradead.org>; Wed,  3 Jul 2024 22:05:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17A02C2BD10
	for <linux-phy@lists.infradead.org>; Wed,  3 Jul 2024 22:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720044329;
	bh=B61XaGM995N7SJeiHLBLh4ORAhzl9yq4niV8X1ZoSNI=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=AHcaop3OPQ/ROK670kOFW85pdOwWoLqOZPJouey5b25A9Ru0jtTnlATbKXF7x9Xw9
	 j6SkkPl75eiHPSKr086vCuYOnfvIaQKlyKr71e9PyvFATQ00U+QY7LXsMTFqlTy1f5
	 n8NLnMRuaJb1PjJ2nZ+ci6EwIJYQ4ZG0bE4YtgobGlP3ovdV/2zPXNwaMgy4uRfNlM
	 3I3XkCTFYCK8koLe+ZASgBTNlm4AxQsuScXnEquMoxEpWB5B0ja5DvtGI2V0EJF870
	 JfKXOk6dQqUTkLvzNHxAjXbSFBLOprI/331YV5Wsv0RmoCiwHyolB1IEd0MqvpBxSK
	 H4l+oUtwswAKg==
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-52cecba8d11so7092239e87.1
        for <linux-phy@lists.infradead.org>; Wed, 03 Jul 2024 15:05:29 -0700 (PDT)
X-Gm-Message-State: AOJu0YwS7WzxSalgtf1p6rAvraeLvVDcF6eKDDfS6GKiz+wOW1UeGpME
	3vUrwxvVO0RvvDBRIMb1ZqalASiXr/jg/X4UIjYHHBWy8ZX+hQjbT+6th+PfgTAxytpNF1n7q+H
	eoQ4C11D55sAbUXrOlcy4Q3mBnA==
X-Google-Smtp-Source: AGHT+IGlEoNPEhKDkX6VNY4tzzwO//NHXwb7mZ7QnS8r6c1pgcQ157nLAxpPf+F4By3xFDbI9+5kd1ft7j7Fe1MzQjQ=
X-Received: by 2002:a05:6512:33cd:b0:52c:ddce:4fda with SMTP id
 2adb3069b0e04-52e82646d35mr9330064e87.2.1720044327388; Wed, 03 Jul 2024
 15:05:27 -0700 (PDT)
MIME-Version: 1.0
References: <20240703215905.2031038-1-robh@kernel.org>
In-Reply-To: <20240703215905.2031038-1-robh@kernel.org>
From: Rob Herring <robh@kernel.org>
Date: Wed, 3 Jul 2024 16:05:14 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLB4Ec2tTpNWCT+Bu9rFDOqsxSmcchKCfg3k6_8P=uhhw@mail.gmail.com>
Message-ID: <CAL_JsqLB4Ec2tTpNWCT+Bu9rFDOqsxSmcchKCfg3k6_8P=uhhw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: phy: hisilicon,hi3798cv200-combphy: Convert
 to DT schema
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawn.guo@linaro.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_150530_588841_DCF3A014 
X-CRM114-Status: GOOD (  13.60  )
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

T24gV2VkLCBKdWwgMywgMjAyNCBhdCAzOjU54oCvUE0gUm9iIEhlcnJpbmcgKEFybSkgPHJvYmhA
a2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBDb252ZXJ0IHRoZSBoaXNpbGljb24saGkzNzk4Y3YyMDAt
Y29tYnBoeSBiaW5kaW5nIHRvIERUIHNjaGVtYSBmb3JtYXQuCj4KPiBEcm9wIHRoZSBleGFtcGxl
IGFzIGFybS9oaXNpbGljb24vY29udHJvbGxlci9oaTM3OThjdjIwMC1wZXJpY3RybC55YW1sCj4g
YWxyZWFkeSBjb250YWlucyBhbiBleGFtcGxlIG9mIHRoaXMgYmluZGluZy4KPgo+IFNpZ25lZC1v
ZmYtYnk6IFJvYiBIZXJyaW5nIChBcm0pIDxyb2JoQGtlcm5lbC5vcmc+Cj4gLS0tCj4gIC4uLi9w
aHkvaGlzaWxpY29uLGhpMzc5OGN2MjAwLWNvbWJwaHkueWFtbCAgICB8IDU3ICsrKysrKysrKysr
KysrKysrKwo+ICAuLi4vYmluZGluZ3MvcGh5L3BoeS1oaTM3OThjdjIwMC1jb21icGh5LnR4dCAg
fCA1OSAtLS0tLS0tLS0tLS0tLS0tLS0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgNTcgaW5zZXJ0aW9u
cygrKSwgNTkgZGVsZXRpb25zKC0pCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2hpc2lsaWNvbixoaTM3OThjdjIwMC1jb21icGh5Lnlh
bWwKPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9waHkvcGh5LWhpMzc5OGN2MjAwLWNvbWJwaHkudHh0Cj4KPiBkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9oaXNpbGljb24saGkzNzk4Y3YyMDAtY29t
YnBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9oaXNpbGlj
b24saGkzNzk4Y3YyMDAtY29tYnBoeS55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRl
eCAwMDAwMDAwMDAwMDAuLjgxNDUwNDQ5MmYzMAo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2hpc2lsaWNvbixoaTM3OThjdjIwMC1j
b21icGh5LnlhbWwKPiBAQCAtMCwwICsxLDU3IEBACj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXI6IEdQTC0yLjAKPiArJVlBTUwgMS4yCj4gKy0tLQo+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVl
Lm9yZy9zY2hlbWFzL3BoeS9oaXNpbGljb24saGkzNzk4Y3YyMDAtY29tYnBoeS55YW1sIwo+ICsk
c2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPiAr
Cj4gK3RpdGxlOiBIaVNpbGljb24gU1RCIFBDSUUvU0FUQS9VU0IzIFBIWQo+ICsKPiArbWFpbnRh
aW5lcnM6Cj4gKyAgLSBTaGF3biBHdW8gPHNoYXduLmd1b0BsaW5hcm8ub3JnPgo+ICsgIC0gSmlh
bmd1byBTdW4gPHN1bmppYW5ndW8xQGh1YXdlaS5jb20+CgpBbmQgdGhpcyBib3VuY2VzLCBzbyBJ
IGd1ZXNzIFNoYXduIGlzIHN0dWNrIHdpdGggaXQuLi4KClJvYgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
