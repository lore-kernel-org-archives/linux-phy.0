Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3264BCA9ED1
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 08:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSvxOcsB35wSiDBa6aRGfrDahx2t+2X3mBzXhI0e5m0=; b=Tm0y2K+GwTivZC
	Qll7q9uwZTjvAiTZa0fRdeYPOv5+m1KMN3cPLq8/d5hXIXswUZhis3kj/Nxa6LOG7q5Kzid9QnvaT
	DfXfp1lcD69dJoMvixkPHsGbUt5VBOVbgMmoJ4cEFo4SEArf6Wk4RqNGAt6tvGI6thQGgupPxeurb
	D940bwuXOIdCSFZ5ozsKcaoLTlZbo2q+e4oWS+H8qpS7QTFjnkyE3S0XNUoJnGteSWLyu3d5JG94S
	4ViC/F8RmxYEv01qZGDg3qEkC/A0VOWsNCV28Ptgio1hbr7diIhZH7+6QQSfZh04yE+rx7k8ObOXl
	VUjnK6paaZOXgtVtKvoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGBhO-00000009z9r-2u0W;
	Mon, 12 Oct 2026 08:47:58 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGBhN-00000009z9W-37gL
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 08:47:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 35DAF40248;
	Mon, 12 Oct 2026 08:47:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9DC281F0089E;
	Mon, 12 Oct 2026 08:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791794877;
	bh=zIaovKbpORetJFMV2g32jUqq0XNo4TNii9P+2eJRh9A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=KTFuMnT3Km982dOJoJpLE0aOF8IO2hCdp+tHoH1o9jUMWN+3J5nwqs8RgjapMhKAH
	 +kGFwU/wOTUngnha0SCSVetVj5mc5E4Z1bnNEl/Yv50XbXeEbqNKYPiS96tqfGpgsK
	 Mb/9sj0Nbl6E7F3Rnejogj7kMVlDXL/aSmq4KevRlCsXfVjyZZXjr4h3fFuLR5SIgI
	 G4N8QD6UHgWhcYA/+ZerDOmDtjUWe1dBygcF0AgHYBVlYr9KczhqGv3g39Z8JuC9+1
	 dfVaMwSmcrugzZL5qlVzStPfJz2ejU/prqunnozY8fACRn2mtX9h7j07tRYUTtG3sL
	 Ywr3gbA3ks96g==
Date: Mon, 12 Oct 2026 14:17:44 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bartosz Golaszewski <brgl@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Xu Yang <xu.yang_2@nxp.com>, Peng Fan <peng.fan@nxp.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Peter Chen <peter.chen@kernel.org>, Pavankumar Kondeti <quic_pkondeti@quicinc.com>, 
	Stephen Boyd <stephen.boyd@linaro.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-phy@lists.infradead.org, Greg Kroah-Hartman <gregkh@suse.de>, 
	Peter Chen <peter.chen@nxp.com>
Subject: Re: [PATCH 08/10] usb: chipidea: host: calibrate the PHY after
 starting the host
Message-ID: <asyeTY7H9lCzA4m-@debian>
References: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
 <20260810-msm8974-usb-hsic-v1-8-e5f93ea76ffa@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260810-msm8974-usb-hsic-v1-8-e5f93ea76ffa@oss.qualcomm.com>
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

T24gTW9uLCBBdWcgMTAsIDIwMjYgYXQgMDY6NDI6MTJQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBTb21lIFBIWXMgbmVlZCBhIGZpbmFsIHByb2dyYW1taW5nIHN0ZXAgYWZ0ZXIg
dGhlIGhvc3QgY29udHJvbGxlciBpcwo+IHVwOiB0aGUgUXVhbGNvbW0gSFNJQyBQSFkgbGF0Y2hl
cyB0aGUgZGV2aWNlIGNvbm5lY3QgYXQgdGhlIG1vbWVudAo+IEhTSUMgbW9kZSBpcyBlbmdhZ2Vk
LCBzbyB0aGF0IHdyaXRlIG11c3QgaGFwcGVuIHdpdGggdGhlIHJvb3QgcG9ydAo+IGFscmVhZHkg
cnVubmluZywgb3IgYW4gYWxyZWFkeS1jb25uZWN0ZWQgSFNJQyBkZXZpY2UgKHRoZSBzdHJvYmUv
ZGF0YQo+IGxpbmVzIGhhdmUgbm8gaG90cGx1ZykgaXMgbmV2ZXIgc2Vlbi4gVGhlIGdlbmVyaWMg
UEhZIGZyYW1ld29yawo+IHByb3ZpZGVzIHBoeV9jYWxpYnJhdGUoKSBmb3IgZXhhY3RseSB0aGlz
IGtpbmQgb2YgcG9zdC1pbml0IGZpeHVwIGFuZAo+IGR3YzMgYWxyZWFkeSBjYWxscyBpdDsgdGhl
IGNoaXBpZGVhIGhvc3QgZG9lcyBub3QsIGxlYXZpbmcgbm8gcGxhY2UKPiBmb3Igc3VjaCBQSFkg
d29yay4KPiAKPiBDYWxsIHBoeV9jYWxpYnJhdGUoKSBvbmNlIHRoZSBIQ0QgaGFzIGJlZW4gYWRk
ZWQsIG5leHQgdG8gdGhlIGV4aXN0aW5nCj4gaS5NWCBIU0lDIGFjdGl2ZS1ldmVudCBob29rIHdo
aWNoIHNlcnZlcyB0aGUgc2FtZSBwdXJwb3NlLiBQSFlzCj4gd2l0aG91dCBhIGNhbGlicmF0ZSBv
cCBhcmUgdW5hZmZlY3RlZC4KPiAKPiBBc3Npc3RlZC1ieTogQ2xhdWRlOmNsYXVkZS1mYWJsZS01
Cj4gU2lnbmVkLW9mZi1ieTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJhcnlzaGtvdkBvc3Mu
cXVhbGNvbW0uY29tPgo+IC0tLQo+ICBkcml2ZXJzL3VzYi9jaGlwaWRlYS9ob3N0LmMgfCA0ICsr
KysKPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3VzYi9jaGlwaWRlYS9ob3N0LmMgYi9kcml2ZXJzL3VzYi9jaGlwaWRlYS9ob3N0LmMK
PiBpbmRleCBjZWQ2MDc2YTgyNDguLjYyYmIyOTk5ZWRiNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L3VzYi9jaGlwaWRlYS9ob3N0LmMKPiArKysgYi9kcml2ZXJzL3VzYi9jaGlwaWRlYS9ob3N0LmMK
PiBAQCAtMTUsNiArMTUsNyBAQAo+ICAjaW5jbHVkZSA8bGludXgvcmVndWxhdG9yL2NvbnN1bWVy
Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9zdHJpbmdfY2hvaWNlcy5oPgo+ICAjaW5jbHVkZSA8bGlu
dXgvcGluY3RybC9jb25zdW1lci5oPgo+ICsjaW5jbHVkZSA8bGludXgvcGh5L3BoeS5oPgo+ICAK
PiAgI2luY2x1ZGUgIi4uL2hvc3QvZWhjaS5oIgo+ICAKPiBAQCAtMTkyLDYgKzE5Myw5IEBAIHN0
YXRpYyBpbnQgaG9zdF9zdGFydChzdHJ1Y3QgY2lfaGRyYyAqY2kpCj4gIAkJCShjaS0+cGxhdGRh
dGEtPmZsYWdzICYgQ0lfSERSQ19JTVhfSVNfSFNJQykpCj4gIAkJCWNpLT5wbGF0ZGF0YS0+bm90
aWZ5X2V2ZW50Cj4gIAkJCQkoY2ksIENJX0hEUkNfSU1YX0hTSUNfQUNUSVZFX0VWRU5UKTsKPiAr
Cj4gKwkJaWYgKGNpLT5waHkpCj4gKwkJCXBoeV9jYWxpYnJhdGUoY2ktPnBoeSk7CgpBcyBLb25y
YWQgbm90ZWQsIHBoeV9jYWxpYnJhdGUoKSBoYW5kbGVzIE5VTEwgcG9pbnRlci4gU28geW91IGRv
bid0IG5lZWQgdGhlCmNoZWNrLiBXaXRoIGl0IHJlbW92ZWQsCgpSZXZpZXdlZC1ieTogTWFuaXZh
bm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4K
Ci0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/g
rrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
