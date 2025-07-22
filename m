Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EA09C83F1A
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 16:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/9SYvBhkxiY45vHo8T9+JoUE7P+YpnZU4wfJ2Fw5aF4=; b=hC+zYb5W3cZGYo
	0+OjurBwVMXI0bz3uHrFRKbggwwktYSCzJGMfmDGdDkBVVOh+YW7v/om7Q0kWtHJ3geJHHW54OFaN
	zCszRV4kZjXu9t9XrU1o1wcXmvPyyFzudaQpEtbW7y3Q6KthwGJC+cjuL8dVlB4Bl4nEISWz5J7Y3
	ZpT3pdZqBOs3OfboaGj0nBlRMV/g6bDn57LKuNWd1LA/ImIq0q1YuB507vY4U9qoa+F+mBImWL1fS
	J0++v/b1/2uIM4Pi3Ruvow0jWsUUC1bUOgUcTmsv6NV19mjXcLnJRpwsrXilnrsK9zSlfVPwtKcZE
	tWibQk+0PEejaDk+hMjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueGJ6-000000034aS-3R6Z;
	Tue, 22 Jul 2025 16:57:36 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueFwZ-000000032VH-3WqZ;
	Tue, 22 Jul 2025 16:34:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 9ED8CA56238;
	Tue, 22 Jul 2025 16:34:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A86E0C4CEEB;
	Tue, 22 Jul 2025 16:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753202058;
	bh=aP0kRJnomYTNmKcx92VJhprLZ5W2ThM9Yi65CH9ynA0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SUA84AF31j/BjwV6SDkZ2aGqvUGYg/QxwTcRFuaVaEHs0nz4sogzQ+HsnSRo62JrC
	 Kj5L6kuMXoX8yWeLhspJ1z/pHLNWH3qdA17mCbBY9dorWlS6P3pyTWf5EFmznQq/5c
	 Fz4bTAWBbsorgHA94aAyTIp0CLFmJ3sEPyJe2IWb1BBQjGeseVFzZrV1F9ViT3/1g9
	 1ImLafdQQ80H0W82fahVsYLAs7HQ/djpaKb1J42Gh59CZB38i8w1xogHSMvUuSx3F0
	 vtzcoKWuwaia0JhtxaJmH+YyNLXebiPWOQlJ9YYtY9mW7SlvEIhEBvTov1l/YWbgIW
	 paI9oAIHTX5mw==
Date: Tue, 22 Jul 2025 22:04:08 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Peter Griffin <peter.griffin@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, =?utf-8?B?QW5kcsOp?= Draszik <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, kernel-team@android.com, 
	William Mcvicker <willmcvicker@google.com>
Subject: Re: [PATCH v2 1/2] phy: add new phy_notify_pmstate() api
Message-ID: <e2lhm237c3xtbdjux2wuesq5fwu7nky3w7oq2fnsgn2pqcg5kh@xhxktriooyes>
References: <20250703-phy-notify-pmstate-v2-0-fc1690439117@linaro.org>
 <20250703-phy-notify-pmstate-v2-1-fc1690439117@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250703-phy-notify-pmstate-v2-1-fc1690439117@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_093420_022909_E28DA44A 
X-CRM114-Status: GOOD (  24.45  )
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

T24gVGh1LCBKdWwgMDMsIDIwMjUgYXQgMDI6MDM6MjJQTSBHTVQsIFBldGVyIEdyaWZmaW4gd3Jv
dGU6Cj4gQWRkIGEgbmV3IHBoeV9ub3RpZnlfcG1zdGF0ZSgpIGFwaSB0aGF0IG5vdGlmaWVzIGFu
ZCBjb25maWd1cmVzIGEgcGh5IGZvciBhCj4gZ2l2ZW4gUE0gbGluayBzdGF0ZSB0cmFuc2l0aW9u
Lgo+IAo+IFRoaXMgaXMgaW50ZW5kZWQgdG8gYmUgYnkgcGh5IGRyaXZlcnMgd2hpY2ggbmVlZCB0
byBkbyBzb21lIHJ1bnRpbWUKPiBjb25maWd1cmF0aW9uIG9mIHBhcmFtZXRlcnMgZHVyaW5nIHRo
ZSB0cmFuc2l0aW9uIHRoYXQgY2FuJ3QgYmUgaGFuZGxlZCBieQo+IHBoeV9jYWxpYnJhdGUoKSBv
ciBwaHlfcG93ZXJfe29ufG9mZn0oKS4KPiAKPiBUaGUgZmlyc3QgdXNhZ2Ugb2YgdGhpcyBBUEkg
aXMgaW4gdGhlIFNhbXN1bmcgVUZTIHBoeSB0aGF0IG5lZWRzIHRvIGlzc3VlCj4gc29tZSByZWdp
c3RlciB3cml0ZXMgd2hlbiBlbnRlcmluZyBhbmQgZXhpdGluZyB0aGUgaGliZXJuYXRlIGxpbmsg
c3RhdGUuCj4gCj4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgR3JpZmZpbiA8cGV0ZXIuZ3JpZmZpbkBs
aW5hcm8ub3JnPgo+IC0tLQo+ICBkcml2ZXJzL3BoeS9waHktY29yZS5jICB8IDI1ICsrKysrKysr
KysrKysrKysrKysrKysrKysKPiAgaW5jbHVkZS9saW51eC9waHkvcGh5LmggfCAyNSArKysrKysr
KysrKysrKysrKysrKysrKysrCj4gIDIgZmlsZXMgY2hhbmdlZCwgNTAgaW5zZXJ0aW9ucygrKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9waHktY29yZS5jIGIvZHJpdmVycy9waHkvcGh5
LWNvcmUuYwo+IGluZGV4IDA0YTVhMzRlN2E5NTBhZTk0ZmFlOTE1NjczYzI1ZDQ3NmZjMDcxYzEu
LjBiMjliYzJjNzA5ODkwZDdmYzI3ZDE0ODBhMzVjZGE2YTgyNmZkMzAgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9waHkvcGh5LWNvcmUuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3BoeS1jb3JlLmMKPiBA
QCAtNTIwLDYgKzUyMCwzMSBAQCBpbnQgcGh5X25vdGlmeV9kaXNjb25uZWN0KHN0cnVjdCBwaHkg
KnBoeSwgaW50IHBvcnQpCj4gIH0KPiAgRVhQT1JUX1NZTUJPTF9HUEwocGh5X25vdGlmeV9kaXNj
b25uZWN0KTsKPiAgCj4gKy8qKgo+ICsgKiBwaHlfbm90aWZ5X3Btc3RhdGUoKSAtIHBoeSBsaW5r
IHN0YXRlIG5vdGlmaWNhdGlvbgoKJ3Btc3RhdGUnIGRvZXNuJ3QgY29ycmVzcG9uZCB0byAnbGlu
ayBzdGF0ZScuIFNvIGhvdyBhYm91dCwKcGh5X25vdGlmeV9saW5rX3N0YXRlKCk/CgpzL3BoeS9Q
SFkgKGhlcmUgYW5kIGJlbG93KQoKPiArICogQHBoeTogdGhlIHBoeSByZXR1cm5lZCBieSBwaHlf
Z2V0KCkKPiArICogQHN0YXRlOiB0aGUgbGluayBzdGF0ZQo+ICsgKgo+ICsgKiBOb3RpZnkgdGhl
IHBoeSBvZiBzb21lIFBNIGxpbmsgc3RhdGUgdHJhbnNpdGlvbi4gVXNlZCB0byBub3RpZnkgYW5k
CgpMaW5rIHN0YXRlIGNoYW5nZSBpcyBjb21tb24gZm9yIHRoZSBQSFkuIFNvIHJlbW92ZSAnUE0n
LgoKPiArICogY29uZmlndXJlIHRoZSBwaHkgYWNjb3JkaW5nbHkuCj4gKyAqCj4gKyAqIFJldHVy
bnM6ICUwIGlmIHN1Y2Nlc3NmdWwsIGEgbmVnYXRpdmUgZXJyb3IgY29kZSBvdGhlcndpc2UKPiAr
ICovCj4gK2ludCBwaHlfbm90aWZ5X3Btc3RhdGUoc3RydWN0IHBoeSAqcGh5LCBlbnVtIHBoeV9s
aW5rc3RhdGUgc3RhdGUpCgpJIHRoaW5rIHlvdSBuZWVkIHRvIHVzZSAnaW50IHN0YXRlJyBhbmQg
bGV0IGRyaXZlcnMgcGFzcyB0aGVpciBvd24gbGluayBzdGF0ZQp2YWx1ZXMuIFlvdSBjYW5ub3Qg
aGF2ZSBnZW5lcmljIGxpbmsgc3RhdGVzIGFjcm9zcyBhbGwgcGVyaXBoZXJhbHMuCgo+ICt7Cj4g
KwlpbnQgcmV0Owo+ICsKPiArCWlmICghcGh5IHx8ICFwaHktPm9wcy0+bm90aWZ5X3Btc3RhdGUp
Cj4gKwkJcmV0dXJuIDA7Cj4gKwo+ICsJbXV0ZXhfbG9jaygmcGh5LT5tdXRleCk7Cj4gKwlyZXQg
PSBwaHktPm9wcy0+bm90aWZ5X3Btc3RhdGUocGh5LCBzdGF0ZSk7Cgonbm90aWZ5X2xpbmtfc3Rh
dGUnCgo+ICsJbXV0ZXhfdW5sb2NrKCZwaHktPm11dGV4KTsKPiArCj4gKwlyZXR1cm4gcmV0Owo+
ICt9Cj4gK0VYUE9SVF9TWU1CT0xfR1BMKHBoeV9ub3RpZnlfcG1zdGF0ZSk7Cj4gKwo+ICAvKioK
PiAgICogcGh5X2NvbmZpZ3VyZSgpIC0gQ2hhbmdlcyB0aGUgcGh5IHBhcmFtZXRlcnMKPiAgICog
QHBoeTogdGhlIHBoeSByZXR1cm5lZCBieSBwaHlfZ2V0KCkKPiBkaWZmIC0tZ2l0IGEvaW5jbHVk
ZS9saW51eC9waHkvcGh5LmggYi9pbmNsdWRlL2xpbnV4L3BoeS9waHkuaAo+IGluZGV4IDEzYWRk
MGMyYzQwNzIxZmU5Y2EzZjAzNTBkMTNjMDM1Y2QyNWFmNDUuLmQ5MDRlYzRlZGI3ZTJiZTQxZmNm
NmFiNzgwZDMxNDhjMmVlOGE5NTAgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51eC9waHkvcGh5
LmgKPiArKysgYi9pbmNsdWRlL2xpbnV4L3BoeS9waHkuaAo+IEBAIC01Myw2ICs1MywxMSBAQCBl
bnVtIHBoeV9tZWRpYSB7Cj4gIAlQSFlfTUVESUFfREFDLAo+ICB9Owo+ICAKPiArZW51bSBwaHlf
bGlua3N0YXRlIHsKPiArCVBIWV9VRlNfSElCRVJOOF9FTlRFUiwKPiArCVBIWV9VRlNfSElCRVJO
OF9FWElULAo+ICt9OwoKUGxlYXNlIG1vdmUgdGhlc2UgdG8gaW5jbHVkZS9saW51eC9waHkvdWZz
LmggYXMgZGVmaW5lcy4KCj4gKwo+ICAvKioKPiAgICogdW5pb24gcGh5X2NvbmZpZ3VyZV9vcHRz
IC0gT3BhcXVlIGdlbmVyaWMgcGh5IGNvbmZpZ3VyYXRpb24KPiAgICoKPiBAQCAtMTMyLDYgKzEz
NywxOCBAQCBzdHJ1Y3QgcGh5X29wcyB7Cj4gIAlpbnQJKCpjb25uZWN0KShzdHJ1Y3QgcGh5ICpw
aHksIGludCBwb3J0KTsKPiAgCWludAkoKmRpc2Nvbm5lY3QpKHN0cnVjdCBwaHkgKnBoeSwgaW50
IHBvcnQpOwo+ICAKPiArCS8qKgo+ICsJICogQG5vdGlmeV9wbXN0YXRlOgo+ICsJICoKPiArCSAq
IE9wdGlvbmFsLgo+ICsJICoKPiArCSAqIFVzZWQgdG8gbm90aWZ5IGFuZCBjb25maWd1cmUgdGhl
IHBoeSBmb3IgYSBQTSBsaW5rIHN0YXRlCj4gKwkgKiB0cmFuc2l0aW9uLgo+ICsJICoKPiArCSAq
IFJldHVybnM6IDAgaWYgc3VjY2Vzc2Z1bCwgYW4gbmVnYXRpdmUgZXJyb3IgY29kZSBvdGhlcndp
c2UKCkkgdGhpbmsgeW91IGNhbiBkcm9wIHRoZSBpbmxpbmUgY29tbWVudCBhbmQganVzdCBhZGQg
dG8gdGhlIHRvcCBsZXZlbAprZXJuZWwtZG9jLgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j
4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
