Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEC51C43458
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 08:02:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jAfibcSEwNZXOWSrrUsupj+zxm23pCyk5rJ60qICyGc=; b=WPV00kFh76jNUN
	rAueHII/ZJMZuPXkVKsCwon+8QlVYsHX01K/CY3MiCpB5VMmctJx3cyUorkTg3WLrL9eWQqReDMTN
	8LXXkmFJtM9Tr7uDwUQgS7TZssioh5rUiI+BZjrmA9VvaY25IH6BDS/tAPqOghTwaKk4M4osKfOcH
	Wg/iTFOedyF3OcArIKxJOVzyIUYVvMhLGAOiecsjKD6hvnDDWi3gH2bcxChFcm2/AgHNEHChKMpYn
	ysKPT73fA4lNMAuzUX4A/5GCmRk9H0yPmxRup1dhFWdZi5xFhVN1FN1CWoEWXRaNFFaTskRriMwAu
	rMcaLnK0/LYHqmj0U40w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whNFA-0000000GZqY-2rVh;
	Wed, 08 Jul 2026 08:02:56 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whNF9-0000000GZqG-0Trn
	for linux-phy@lists.infradead.org;
	Wed, 08 Jul 2026 08:02:55 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 30DBB6001D;
	Wed,  8 Jul 2026 08:02:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 127121F00A3A;
	Wed,  8 Jul 2026 08:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783497773;
	bh=XvtzY0SdiIWqZfalwqsBjG5PLQAum4xxC26Jvtrq7IY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=lq16RL1UDgOfvF4rt9ju2Ld+wVJPWvqi6TWmyFysck9ZRl8iKudMFDj4N7hn0cZtR
	 5QQOvKQMylc8XipxS1ED+9uXBAj8Y/BVxts2YA5v58Pvl5hp7dnaDhFPiVj+ljKz6P
	 Aq9fylb9ZnXT28E3zjsCBWhDSTwcfPOyjBZc/L88JKjecF34luDqlgSQUCD/YGYff6
	 f4TNgHjNDDHX02fP/DO88whZ8UkzNTIqq17fh1NHG3WThPDsbq9ppIgUY6GBdVL6iL
	 gWNy9mNJRRV9L87qtP5bYYp04xw+D8jy37zNd6YNeHAn80+FRiy2vSBeqiZAmdzaFy
	 kJuUVqjl4m+1A==
Date: Wed, 8 Jul 2026 10:02:38 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, Bartosz Golaszewski <brgl@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH 0/9] PCI: qcom: Add PCIe support for Shikra SoC
Message-ID: <e2inl7k5gsjj6oomv2k5ximuzpb3gfiz66ufet3b4hvov7zqt4@qz4pifbos7yf>
References: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
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

T24gV2VkLCBKdWwgMDEsIDIwMjYgYXQgMTI6MzI6NDJBTSArMDUzMCwgU3VzaHJ1dCBTaHJlZSBU
cml2ZWRpIHdyb3RlOgo+IEFkZCBQQ0llIHN1cHBvcnQgZm9yIFNoaWtyYSB0YXJnZXQsIGJ5IGFk
ZGluZyBkdC1iaW5kaW5ncyBmb3IgcGh5LAo+IGNvbnRyb2xsZXIgYW5kIGNvcnJlc3BvbmRpbmcg
cGh5ICYgY29udHJvbGxlciBkcml2ZXJzL2RldmljZS10cmVlCj4gY2hhbmdlcy4KPiAKPiBTaGlr
cmEgUkMgaXMgY29ubmVjdGVkIHRvIFRDOTU2MyBQQ0llIHN3aXRjaCBvbiBhbGwgdGhyZWUKPiBF
VksgdmFyaWFudHM6IENRUywgQ1FNIGFuZCBJUVMuIFRoZSBpbmRpdmlkdWFsIGRvd25zdHJlYW0g
cG9ydHMKPiBvZiBUQzk1NjMgY29ubmVjdCBsaWtlIGJlbG93Ogo+IAo+IERTUDE6IE0uMiBCLUtl
eSBmb3IgNUcgTW9kZW0KPiBEU1AyOiBNLjIgTS1LZXkgZm9yIE5WTWUKPiBEU1AzOiBFbWJlZGRl
ZCBldGhlcm5ldCBkZXZpY2UKPiAKPiBQb3dlciBhbmQgcmVzZXQgdG8gTS4yIEIgYW5kIE0uMiBN
IHNsb3QgYXJlIGNvbnRyb2xsZWQgdmlhCj4gVEM5NTYzIEdQSU8ncy4gSGVuY2UsIGFkZCBEVCBu
b2RlcyB0byBlbmFibGUgVEM5NTYzIHN3aXRjaAo+IGFuZCBpbmNsdWRlIGNvcnJlc3BvbmRpbmcg
Y2hhbmdlcyB0byBjb25maWd1cmUgcG93ZXIvcmVzZXQKPiB0byBUQzk1NjMgZW5kcG9pbnRzIGFz
IHBhcnQgb2YgcG93ZXIgb24gc2VxdWVuY2UuCj4gCj4gU2lnbmVkLW9mZi1ieTogU3VzaHJ1dCBT
aHJlZSBUcml2ZWRpIDxzdXNocnV0LnRyaXZlZGlAb3NzLnF1YWxjb21tLmNvbT4KPiAtLS0KPiBT
dXNocnV0IFNocmVlIFRyaXZlZGkgKDkpOgo+ICAgICAgIGR0LWJpbmRpbmdzOiBwaHk6IHNjODI4
MHhwLXFtcC1wY2llOiBEb2N1bWVudCBTaGlrcmEgUENJZSBwaHkKPiAgICAgICBkdC1iaW5kaW5n
czogUENJOiBxY29tOiBEb2N1bWVudCB0aGUgU2hpa3JhIFBDSWUgQ29udHJvbGxlcgo+ICAgICAg
IGR0LWJpbmRpbmdzOiBQQ0k6IEFkZCBiaW5kaW5ncyBmb3IgZW5kcG9pbnQgZ3Bpb3MKPiAgICAg
ICBQQ0k6IHFjb206IEFkZCBzdXBwb3J0IGZvciBTaGlrcmEKPiAgICAgICBwaHk6IHFjb206IHFt
cC1wY2llOiBBZGQgUU1QIFBDSWUgUEhZIHN1cHBvcnQgZm9yIFNoaWtyYQo+ICAgICAgIFBDSS9w
d3JjdHJsOiB0Yzk1NjM6IEFkZCBBUEkgdG8gY29udHJvbCBlbmRwb2ludCBwb3dlciBhbmQgcmVz
ZXQKClRDOTU2MyBzaG91bGQgYmUgbW9kZWxlZCBhcyBhIEdQSU8gY29udHJvbGxlciB0byBkcml2
ZSB0aGUgUEVSU1QjIGFuZCBwb3dlci1vbgpHUElPcy4gVGhlcmUgaXMgYSBwYXRjaCBzZXJpZXMg
dW5kZXIgcmV2aWV3IFsxXSB0aGF0IGFkZHMgdGhpcyBzdXBwb3J0LiBTbyBpdApkb2Vzbid0IG1h
a2Ugc2Vuc2UgdG8gZHVwbGljYXRlIHRoZSBlZmZvcnQgaGVyZSAod2hpY2ggaXRzZWxmIGlzIGhh
Y2tpc2gpLiBTbwpwbGVhc2UgZHJvcCBhbGwgdGhlIHN3aXRjaCByZWxhdGVkIHBhdGNoZXMgZnJv
bSB0aGlzIHNlcmllcyBhbmQgcmVzdWJtaXQgdGhlbQpvbmNlIHRoZSBhYm92ZSBtZW50aW9uZWQg
c2VyaWVzIGZyb20gQWxleCBnZXRzIG1lcmdlZC4KCkJ1dCB5b3UgY2FuIGNvbnRpbnVlIHdpdGgg
dGhlIFNoaWtyYSBQQ0llIFJDL1BIWSBwYXRjaGVzLgoKLSBNYW5pCgpbMV0gaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvYWxsLzIwMjYwNjA1MDEwMDIyLjk2ODYxMi0xLWVsZGVyQHJpc2NzdGFyLmNv
bQoKPiAgICAgICBhcm02NDogZHRzOiBxY29tOiBzaGlrcmE6IEFkZCBQQ0llIFBIWSBhbmQgY29u
dHJvbGxlciBub2Rlcwo+ICAgICAgIGFybTY0OiBkdHM6IHFjb206IHNoaWtyYS1ldms6IEFkZCBU
Qzk1NjMgUENJZSBzd2l0Y2ggbm9kZSBmb3IgUENJZQo+ICAgICAgIGFybTY0OiBkdHM6IHFjb206
IHNoaWtyYS0oY3FtL2Nxcy9pcXMpLWV2azogRW5hYmxlIFBDSWUgUEhZIG5vZGUKPiAKPiAgLi4u
L2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20sc2hpa3JhLXBjaWUueWFtbCAgfCAyMTEgKysr
KysrKysrKysrKysrKysrKysrCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS90b3NoaWJh
LHRjOTU2My55YW1sICAgIHwgIDIyICsrLQo+ICAuLi4vYmluZGluZ3MvcGh5L3Fjb20sc2M4Mjgw
eHAtcW1wLXBjaWUtcGh5LnlhbWwgICB8ICAgMiArCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNv
bS9zaGlrcmEtY3FtLWV2ay5kdHMgICAgICAgIHwgICA3ICsKPiAgYXJjaC9hcm02NC9ib290L2R0
cy9xY29tL3NoaWtyYS1jcXMtZXZrLmR0cyAgICAgICAgfCAgIDcgKwo+ICBhcmNoL2FybTY0L2Jv
b3QvZHRzL3Fjb20vc2hpa3JhLWV2ay5kdHNpICAgICAgICAgICB8IDE1MiArKysrKysrKysrKysr
KysKPiAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NoaWtyYS1pcXMtZXZrLmR0cyAgICAgICAg
fCAgIDcgKwo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2hpa3JhLmR0c2kgICAgICAgICAg
ICAgICB8IDE1NCArKysrKysrKysrKysrKysKPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2Mv
cGNpZS1xY29tLmMgICAgICAgICAgICAgfCAgIDEgKwo+ICBkcml2ZXJzL3BjaS9wd3JjdHJsL3Bj
aS1wd3JjdHJsLXRjOTU2My5jICAgICAgICAgICB8IDE1MiArKysrKysrKysrKystLS0KPiAgZHJp
dmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUuYyAgICAgICAgICAgfCAgNzMgKysr
KysrKwo+ICAxMSBmaWxlcyBjaGFuZ2VkLCA3NjQgaW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25z
KC0pCj4gLS0tCj4gYmFzZS1jb21taXQ6IDU2NWZhMDJmNzU0NDhjZTFkZGQxOGJkYTZiMzFhZDk4
NWNmNzU0MTEKPiBjaGFuZ2UtaWQ6IDIwMjYwNzAxLXNoaWtyYS11cHN0cmVhbS0xNGI4NjY4ZjEw
MDEKPiAKPiBCZXN0IHJlZ2FyZHMsCj4gLS0gCj4gU3VzaHJ1dCBTaHJlZSBUcml2ZWRpIDxzdXNo
cnV0LnRyaXZlZGlAb3NzLnF1YWxjb21tLmNvbT4KPiAKPiAKCi0tIArgrq7grqPgrr/grrXgrqPg
r43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
