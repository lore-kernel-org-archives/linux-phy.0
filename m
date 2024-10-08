Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC330CED26B
	for <linux-phy@archiver.kernel.org>; Tue,  8 Oct 2024 06:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LDYxegI0aWR9WBCx4rkUI7DrddhxlRxNtNP/QWkuFs4=; b=dFKypn51iXbExG
	TucMentBoqkRnH/cnGHpt0RIjZhxET0sI3RyQLiXytramnCcscy6og48zq506w1huFUbNoY/7R9Vv
	chEDQQXZZUIrQuX/JUr5Kgi7pbYl6Szoft9skcsKJnmP0Xs9pHxiu9xjz5kf0NYnyxJ60fJ9n/kLx
	Xc9HsFDu2yCJWfPccbqD3N0KLXPCApPSHTpofRvDIjnbY8fdTPJekL3e1OXDCokbpxmY8tWEjNy85
	skuyf432OhT1Y6ZdPA41B4K1tFN3+S8edZItn9+b0+dMpdVl8P41OM0C8Nrnw7msKG9ZazDFcBTqs
	pnBkM//Qz7xd/KE0HDKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sy3XA-00000004ctk-2WMH;
	Tue, 08 Oct 2024 06:17:24 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sy3X7-00000004cse-3EEO
	for linux-phy@lists.infradead.org;
	Tue, 08 Oct 2024 06:17:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B07C45C5E64;
	Tue,  8 Oct 2024 06:17:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F862C4CEC7;
	Tue,  8 Oct 2024 06:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728368240;
	bh=i3/YYK+zwGioFP3KdfCLRz5j+sEhuuUKcpg34C+yTZY=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=Tdid+FNNDTBLLNzMe1h6DBOKbPFbic7Dj1F6be/W19pIZnyjQuBOdOAqLoSa6rn0y
	 C1ybfQlBssqDmadm10iWkh2mFv45gi2Bxn4c4npm3NTYnvyrLdBJLJ/MvMmm0PjSfh
	 L6Yu7Tn9RRR/Zl/YSQCY/RHXFjR6AZ1c9xGkcSpci8xmbTofyUfaGihreG00/gxH5o
	 mEI2yRfbyQRZyvaFe81dbaKPZTQXXSUyELILnBntnxYPwZUMflhdOJ5L2523EYPm+6
	 +dJejTw4L8v+Vln/RO7CybohM2LMBdd7po5EMtM6gd4RkmGMZ8wSUOuOm1L57wVAMu
	 0BItUXet25jEQ==
Message-ID: <d23ba989-2ada-4033-a890-928bf4e746b3@kernel.org>
Date: Tue, 8 Oct 2024 08:17:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: AW: [PATCH v2 1/3] dt-bindings: phy: add realtek,otto-serdes PHY
 binding
To: markus.stockhausen@gmx.de, linux-phy@lists.infradead.org,
 chris.packham@alliedtelesis.co.nz, devicetree@vger.kernel.org
References: <20241007163623.3274510-1-markus.stockhausen@gmx.de>
 <20241007163623.3274510-2-markus.stockhausen@gmx.de>
 <e0355f2b-9d77-4792-9405-14b0bf79ac32@kernel.org>
 <000b01db1944$5bd444b0$137cce10$@gmx.de>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <000b01db1944$5bd444b0$137cce10$@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_231721_940363_D1280B1B 
X-CRM114-Status: GOOD (  12.29  )
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

T24gMDgvMTAvMjAyNCAwNzozOCwgbWFya3VzLnN0b2NraGF1c2VuQGdteC5kZSB3cm90ZToKPj4g
LS0tLS1VcnNwcsO8bmdsaWNoZSBOYWNocmljaHQtLS0tLQo+PiBWb246IEtyenlzenRvZiBLb3ps
b3dza2kgPGtyemtAa2VybmVsLm9yZz4gCj4+IEdlc2VuZGV0OiBNb250YWcsIDcuIE9rdG9iZXIg
MjAyNCAyMToyNgo+PiBBbjogTWFya3VzIFN0b2NraGF1c2VuIDxtYXJrdXMuc3RvY2toYXVzZW5A
Z214LmRlPjsgbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmc7IGNocmlzLnBhY2toYW1AYWxs
aWVkdGVsZXNpcy5jby5uejsgZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmcKPj4gQmV0cmVmZjog
UmU6IFtQQVRDSCB2MiAxLzNdIGR0LWJpbmRpbmdzOiBwaHk6IGFkZCByZWFsdGVrLG90dG8tc2Vy
ZGVzIFBIWSBiaW5kaW5nCj4+Cj4+IC4uLiBhbmQgc3RpbGwgbm90IHRlc3RlZC4gU2VuZGluZyB1
bnRlc3RlZCBjb2RlIGlzIHdhc3RlIG9mIG91ciB0aW1lLgo+IAo+IEhpIEtyenlzenRvZiwKPiAK
PiBhcHByZWNpYXRlIHlvdXIgZmVlZGJhY2sgYW5kIEkgZG8gbm90IHdhbnQgdG8gd2FzdGUgeW91
ciB0aW1lLiBNeSBmaXhlcyB3aGVyZSBhIG1peAo+IG9mIHlvdXIgZmVlZGJhY2sgYW5kIHNvbWUg
aGFsZi1iYWtlZCAibWFrZSBkdF9iaW5kaW5nX2NoZWNrIiBmZWVkYmFja3MgKGJlY2F1c2UKPiBw
YWNrYWdlcyB3aGVyZSBtaXNzaW5nKS4gTXkgZmF1bHQgYW5kIHNvcnJ5IGZvcnQgaGUgbm9pc2Uu
Cj4gCj4gVG8gZ2V0IG5leHQgdmVyc2lvbiBpbiBiZXR0ZXIgc2hhcGUgdHdvIHF1ZXN0aW9ucyBy
ZWdhcmRpbmcgeW91ciBmZWVkYmFjazoKPiAKPiAxLiAiTWVzc2VkIHdyYXBwaW5nIjogQWNjb3Jk
aW5nIHRvIGNoZWNrcGF0Y2ggMTAwIGNoYXJzL2xpbmUgYXJlIGFjY2VwdGVkLiAKPiBTbyBJIGRl
c2lnbmVkIHRoZSBjb21tZW50cyBpbiB0aGUgZHJpdmVyLiBEb2VzIGRldmljZXRyZWUgZGlmZmVy
IGZyb20gdGhhdD8KCmNoZWNrcGF0Y2ggaXMgbm90IGEgY29kaW5nIHN0eWxlLiBJIGFza2VkIHRv
IGZvbGxvdyBjb2Rpbmcgc3R5bGUsIHBsZWFzZQpyZWFkIGVudGlyZSBkb2N1bWVudCBpbiBEb2N1
bWVudGF0aW9uL3Byb2Nlc3MuCgo+IAo+IDIgIkJpbmRpbmdzIHZzIGRyaXZlcnMiLiBUaGUgaWRl
YSBhYm91dCBjb250cm9sbGVkIHBvcnRzIGNhbWUgZnJvbSBvdGhlciBiaW5kaW5ncy4KCkVudGly
ZSBwcm9wZXJ0eSBkZXNjcmlwdGlvbiBzcGVha3MgYWJvdXQgZHJpdmVyLCBub3QgYmluZGluZ3Mu
Cgo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZh
bGRzL2xpbnV4LmdpdC90cmVlL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pbnRl
cnJ1cHQtY29udHJvbGxlci9zdCxzdGloNDA3LWlycS1zeXNjZmcueWFtbD9oPXY2LjEyLXJjMgoK
c3RpaCBpcyByYXRoZXIgcG9vciBleGFtcGxlIHRvIHVzZS4gVGhlIHByb3BlcnR5IHdhcyBhZGRl
ZCBpbiAyMDE1ICghKQp3aXRob3V0IHJldmlldyAoISEhKS4KCgo+IEUuZy4gc3QsaW52ZXJ0LWV4
dC4gU29tZXRoaW5nIGxpa2UgdGhpcyB3aWxsIGJlIG5lZWRlZCBpbiB0aGUgZnV0dXJlIGJlY2F1
c2UgdGhlCj4gU2VyRGVzIGFsbG93IHRvIHN3YXAgcG9sYXJpdHkgd2hpY2ggbXVzdCBiZSBjaGFu
Z2VkIGRlcGVuZGluZyBvbiB0aGUgc3dpdGNoCj4gZGVzaWduLiBIb3cgdG8gZG8gdGhpcz8KCkkg
ZG8gbm90IHVuZGVyc3RhbmQgdGhlIGhhcmR3YXJlIGFzcGVjdCBkaXNjdXNzZWQgaW4gdGhlIHBy
b3BlcnR5CmRlc2NyaXB0aW9uLi4uIHByb2JhYmx5IGJlY2F1c2UgdGhlcmUgaXMgbm8gaGFyZHdh
cmUgZGVzY3JpcHRpb24gYXQgYWxsLApidXQgaW5zdGVhZCB5b3Ugc3BlYWsgYWJvdXQgZHJpdmVy
LgoKSSBkbyBub3QgdW5kZXJzdGFuZCBob3cgcG9sYXJpdHkgaGFzIGFueXRoaW5nIHRvIGRvIHdp
dGggVS1Cb290CmNvbmZpZ3VyaW5nIHNlcmRlcy4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
