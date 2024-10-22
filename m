Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06736D1CDA1
	for <linux-phy@archiver.kernel.org>; Tue, 22 Oct 2024 05:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1IKsBKw3tE81yZVkNDjSN9wnP2WmeptA9VlJub+Czrc=; b=ucjd0/I+LUoJS0
	ARajHhSSe9wA/zejYhYFL7PiL/8wa4sFczL0jtPQm4IG2CX6Z+EiYUrRe1d0gs9WvSHemM9pSUC3D
	bm3UjYtDhZ0qd9yoUEWfwnbOXX8as5fs+unXt4R5vPDRtmTtlbQIgQ3H5M5fxPAPJiJ/e1H5Aav/W
	RAFzlXBtrQ3IHBzAmLr86inYBxutKsGq2dFvG5FGymmETlqxihon6dScASuLArvLr19s9s+Gemgep
	Ok0RT/QroLf8dxRyUdgg5E3jTRcTLtYg/8j+RWzn9uRdyvHhaWG5pSXK/nNj+z0I309yGVO2G4T4L
	1BQBtiAGFAcTnhopcURw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t37YU-00000009fvq-23j1;
	Tue, 22 Oct 2024 05:35:42 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t37VM-00000009f1I-22rf
	for linux-phy@lists.infradead.org;
	Tue, 22 Oct 2024 05:32:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 9F509A40BBC;
	Tue, 22 Oct 2024 05:32:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0663FC4CEE7;
	Tue, 22 Oct 2024 05:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729575147;
	bh=H/fnf6f8qWM0l7nfUX7YQ+kJ3euoRzwtgYvKc7YmD7Q=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=j1eVMsHrrvPHO9QH70PqlSwBzrBkOuM898guN7cm3+O586sdjSSCUWFa1ivvs2dA7
	 5vBs6kc5g8lE7ou4Hs0sGGJUFk19K7iNQMSSF0/V/1/FDUvGxIkIpebc9JwfQ0qrXJ
	 5mAqA2GBi8CVWBEi9FNDx7P7e8KdjQ8rk7FdznQKCgc3NBVStrnM6FK57BxDOyY1zG
	 btaQUSJRN27WuY2caESWsLn0/+7rNeJDOEhJ0+DH2TiQGD69/bCzlAukDHv11Fu6LE
	 5qgJ5C9bvoinPQjMhogh28t09AhlPeT6lZvsTKv5JgRY6YD/pztWwSH+dsfPWArXxn
	 ofN6s8NPYlPTQ==
From: Vinod Koul <vkoul@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: Jeff Johnson <quic_jjohnson@quicinc.com>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
In-Reply-To: <20240913044557.28315-1-zajec5@gmail.com>
References: <20240913044557.28315-1-zajec5@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: bcm-ns-usb2-phy: drop deprecated
 variant
Message-Id: <172957514491.488852.7301483623512252577.b4-ty@kernel.org>
Date: Tue, 22 Oct 2024 11:02:24 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_223228_612104_F328677E 
X-CRM114-Status: UNSURE (   7.09  )
X-CRM114-Notice: Please train this message.
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

Ck9uIEZyaSwgMTMgU2VwIDIwMjQgMDY6NDU6NTYgKzAyMDAsIFJhZmHFgiBNacWCZWNraSB3cm90
ZToKPiBUaGUgb2xkIGJpbmRpbmcgdmFyaWFudCAodGhlIG9uZSBjb3ZlcmluZyB3aG9sZSBETVUg
YmxvY2spIHdhcwo+IGRlcHJlY2F0ZWQgMyB5ZWFycyBhZ28uIExpbnV4IGtlcm5lbCB3YXMgd2Fy
bmluZyB3aGVuIHVzaW5nIGl0IGZvcgo+IHNpbWlsYXIgYW1vdW50IG9mIHRpbWUuCj4gCj4gVGhl
cmUgYXJlbid0IGFueSBrbm93biBOb3J0aHN0YXIgZGV2aWNlcyB3aXRoIGJvb3Rsb2FkZXIgcHJv
dmlkaW5nIERUIHRvCj4gb3BlcmF0aW5nIHN5c3RlbS4gQWN0dWFsbHkgT3BlbldydCBzZWVtcyB0
byBiZSB0aGUgb25seSBwcm9qZWN0IHVzaW5nCj4gdGhpcyBiaW5kaW5nIGFuZCBpdCBhbHdheXMg
YXBwZW5kcyBEVEIgdG8ga2VybmVsLiBJdCBoYXMgc3dpdGNoZWQgdG8gdGhlCj4gbm9uLWRlcHJl
Y2F0ZWQgYmluZGluZyB5ZWFycyBhZ28uCj4gCj4gWy4uLl0KCkFwcGxpZWQsIHRoYW5rcyEKClsx
LzJdIGR0LWJpbmRpbmdzOiBwaHk6IGJjbS1ucy11c2IyLXBoeTogZHJvcCBkZXByZWNhdGVkIHZh
cmlhbnQKICAgICAgY29tbWl0OiBjMzYzOWQ0MjNkNzZjOTM1YjU4ODI3Mjk2YTEyNGU4ZjEzZDc5
YjRiClsyLzJdIHBoeTogYmNtLW5zLXVzYjI6IGRyb3Agc3VwcG9ydCBmb3Igb2xkIGJpbmRpbmcg
dmFyaWFudAogICAgICBjb21taXQ6IDAxNzVhNjczZTQ3OGVlZDk5YTg2ZmMwOTRlN2Q5MWVkMmYz
ZDVhMzQKCkJlc3QgcmVnYXJkcywKLS0gCn5WaW5vZAoKCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
