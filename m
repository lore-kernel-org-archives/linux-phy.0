Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24972C61DC2
	for <linux-phy@archiver.kernel.org>; Thu, 27 Aug 2026 12:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+l5MG9RQbWv3py+O/IRET5ZlB3WQJyf5C0Pci8GJs0=; b=VT4yGXIDhhjZXL
	PSIopNjqtmCUDgjDSzckFwXZiojUdTxHEtL1KHO3cz6ceVBypZokCxA3nnUX6f/VpgBsaZ/p1YILp
	5XAuYCScrmsAy/cNwEdtQdGfcdkGGSSzAJ/H9VLBkCA6J8L0MTIUTYeTmZ9dCIvMxBuUHaLa3Okrx
	I/isGksjG/yyRSRFUGfouYtiw6XlNa6Yi+MUhsAv8dLiZMy0UaGjGlN37HPWLq3409z7vLA6mIVLr
	1rXWgrkNxygT9rgseec8ovsAIRrH278zcvKGMFQFG1r+zboELmXmkkEcGpyYeOKPjwT5nMsk5GwCz
	u+RvPt91moShvz4kr+ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzZht-000000040ip-2yqN;
	Thu, 27 Aug 2026 12:59:49 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzZhs-000000040iR-1CVF;
	Thu, 27 Aug 2026 12:59:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9B269601F0;
	Thu, 27 Aug 2026 12:59:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BFCE1F000E9;
	Thu, 27 Aug 2026 12:59:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787835587;
	bh=nHj2MclCk+X9SP4Q2c6F2gv56YQ8ZRF79zdrdZI3CCo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=PQNM85raTj4YxX05iQsQNYL4K3pmBOKj8+SY1N9Rp95qrAdSBNPQIqAfAt0N7Vo1O
	 NUYMPl6VlmBXwIrdldCjY4vNMB6OsVK4vkFWm7sxWj4PjKwVLR0zN/qZvt14DUaoLf
	 q9Pq3dvGmHhK9MlVQjaEbrWrWt0aNCj0qjPhJAlHVvGj/ckov8IuZ4aFQfa3yXPeCB
	 Islc4QKwFb5jcnOPcOztzUx/OH4NAHHo3hGLz2TIDrqjvbbEgG9sIwCwfP3BFY5Bn4
	 E7dbYjLKuSnj1BcIn2sIt4/eW/yUz8VFsdOg3WOpUNoxy5pMTVw9cj+jtoN6G50PmZ
	 LV1uSKjxDdaXQ==
Date: Thu, 27 Aug 2026 14:59:44 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Marek Vasut <marex@nabladev.com>
Cc: linux-usb@vger.kernel.org, fabrice.gasnier@foss.st.com, 
	Pankaj Dev <pankaj.dev@st.com>, 
	=?utf-8?Q?Cl=C3=A9ment?= Le Goffic <clement.legoffic@foss.st.com>, Gatien Chevallier <gatien.chevallier@foss.st.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Christian Bruel <christian.bruel@foss.st.com>, 
	Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rahul Kumar <rahul.kumar05@st.com>, 
	Rob Herring <robh@kernel.org>, Rosen Penev <rosenp@gmail.com>, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org, 
	kernel@dh-electronics.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH v3 5/9] dt-bindings: usb: dwc3: Document ST STM32MP2 DWC3
 xHCI USB controller
Message-ID: <20260827-strategic-hallowed-lynx-ca3bcc@quoll>
References: <20260822074816.548662-1-marex@nabladev.com>
 <20260822074816.548662-6-marex@nabladev.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260822074816.548662-6-marex@nabladev.com>
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

T24gU2F0LCBBdWcgMjIsIDIwMjYgYXQgMDk6NDY6MzhBTSArMDIwMCwgTWFyZWsgVmFzdXQgd3Jv
dGU6Cj4gVGhlIFNUIFNUTTMyTVAyIFNvQyBjb250YWlucyBzaW5nbGUgaW5zdGFuY2Ugb2YgRFdD
MyBVU0IgY29udHJvbGxlciB3aXRoCj4gZ2x1ZSBsb2dpYyB3cmFwcGVyIGFyb3VuZCBpdCBjb250
cm9sbGVkIGJ5IHN5c2Nvbi4gRG9jdW1lbnQgdGhlIGdsdWUKPiBsb2dpYyBhbmQgRFdDMyBjb250
cm9sbGVyLgo+IAo+IENvLWRldmVsb3BlZC1ieTogUGFua2FqIERldiA8cGFua2FqLmRldkBzdC5j
b20+Cj4gU2lnbmVkLW9mZi1ieTogUGFua2FqIERldiA8cGFua2FqLmRldkBzdC5jb20+Cj4gQ28t
ZGV2ZWxvcGVkLWJ5OiBDbMOpbWVudCBMZSBHb2ZmaWMgPGNsZW1lbnQubGVnb2ZmaWNAZm9zcy5z
dC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgTGUgR29mZmljIDxjbGVtZW50LmxlZ29m
ZmljQGZvc3Muc3QuY29tPgo+IENvLWRldmVsb3BlZC1ieTogR2F0aWVuIENoZXZhbGxpZXIgPGdh
dGllbi5jaGV2YWxsaWVyQGZvc3Muc3QuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEdhdGllbiBDaGV2
YWxsaWVyIDxnYXRpZW4uY2hldmFsbGllckBmb3NzLnN0LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBN
YXJlayBWYXN1dCA8bWFyZXhAbmFibGFkZXYuY29tPgo+IC0tLQo+IENjOiBBbGV4YW5kcmUgVG9y
Z3VlIDxhbGV4YW5kcmUudG9yZ3VlQGZvc3Muc3QuY29tPgo+IENjOiBDaHJpc3RpYW4gQnJ1ZWwg
PGNocmlzdGlhbi5icnVlbEBmb3NzLnN0LmNvbT4KPiBDYzogQ29ub3IgRG9vbGV5IDxjb25vcitk
dEBrZXJuZWwub3JnPgo+IENjOiBGYWJyaWNlIEdhc25pZXIgPGZhYnJpY2UuZ2FzbmllckBmb3Nz
LnN0LmNvbT4KPiBDYzogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9u
Lm9yZz4KPiBDYzogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6aytkdEBrZXJuZWwub3JnPgo+IENj
OiBNYXhpbWUgQ29xdWVsaW4gPG1jb3F1ZWxpbi5zdG0zMkBnbWFpbC5jb20+Cj4gQ2M6IE5laWwg
QXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPgo+IENjOiBQYW5rYWogRGV2IDxw
YW5rYWouZGV2QHN0LmNvbT4KPiBDYzogUmFodWwgS3VtYXIgPHJhaHVsLmt1bWFyMDVAc3QuY29t
Pgo+IENjOiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgo+IENjOiBSb3NlbiBQZW5ldiA8
cm9zZW5wQGdtYWlsLmNvbT4KPiBDYzogVGhpbmggTmd1eWVuIDxUaGluaC5OZ3V5ZW5Ac3lub3Bz
eXMuY29tPgo+IENjOiBWaW5vZCBLb3VsIDx2a291bEBrZXJuZWwub3JnPgo+IENjOiBkZXZpY2V0
cmVlQHZnZXIua2VybmVsLm9yZwo+IENjOiBrZXJuZWxAZGgtZWxlY3Ryb25pY3MuY29tCj4gQ2M6
IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IENjOiBsaW51eC1rZXJuZWxA
dmdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCj4gQ2M6
IGxpbnV4LXN0bTMyQHN0LW1kLW1haWxtYW4uc3Rvcm1yZXBseS5jb20KPiBDYzogbGludXgtdXNi
QHZnZXIua2VybmVsLm9yZwo+IC0tLQo+IFYyOiBGaXggdXAgU29iL0NkYiBsaW5lcwo+IFYzOiAt
IERvY3VtZW50IG1heGltdW0tc3BlZWQKPiAgICAgLSBTd2l0Y2ggcmVzZXRzIHRvIG1heEl0ZW1z
OiAxCj4gICAgIC0gRHJvcCBsYWJlbCBmcm9tIGV4YW1wbGUKPiAgICAgLSBVc2UgZ2VuZXJpYyBv
dmVyLWN1cnJlbnQtYWN0aXZlLWxvdwo+ICAgICAtIFVzZSByZWY6IHNucHMsZHdjMy1jb21tb24u
eWFtbCBhbmQgZHJvcCBnZW5lcmljIGRyX21vZGUvbWF4aW11bS1zcGVlZC9waHlzL3BoeS1uYW1l
cwo+IC0tLQo+ICAuLi4vYmluZGluZ3MvdXNiL3N0LHN0bTMybXAyNS1kd2MzLnlhbWwgICAgICAg
fCA5NyArKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA5NyBpbnNlcnRpb25z
KCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvdXNiL3N0LHN0bTMybXAyNS1kd2MzLnlhbWwKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9zdCxzdG0zMm1wMjUtZHdjMy55YW1sIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9zdCxzdG0zMm1wMjUtZHdjMy55YW1s
Cj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi45NmJkNTU3MzI3
MjUyCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy91c2Ivc3Qsc3RtMzJtcDI1LWR3YzMueWFtbAo+IEBAIC0wLDAgKzEsOTcgQEAKPiArIyBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAgT1IgQlNELTItQ2xhdXNlKQo+ICslWUFN
TCAxLjIKPiArLS0tCj4gKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvdXNiL3N0
LHN0bTMybXAyNS1kd2MzLnlhbWwjCj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9t
ZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+ICsKPiArdGl0bGU6IFNUTWljcm9lbGVjdHJvbmljcyBT
VE0zMiBNUFUgRFdDMyBVU0IgU29DIGNvbnRyb2xsZXIKPiArCj4gK2Rlc2NyaXB0aW9uOgo+ICsg
IFRoZSBTVE0zMiBNUFUgRFdDMyBVU0IgU29DIGNvbnRyb2xsZXIgYmxvY2sgc3VwcG9ydHMgYm90
aAo+ICsgIEhvc3QoU1MvSFMvRlMvTFMpIGFuZCBEZXZpY2UoU1MvSFMvRlMpIG1vZGUgb3BlcmF0
aW9uCj4gKwo+ICttYWludGFpbmVyczoKPiArICAtIEZhYnJpY2UgR2FzbmllciA8ZmFicmljZS5n
YXNuaWVyQGZvc3Muc3QuY29tPgo+ICsgIC0gTWFyZWsgVmFzdXQgPG1hcmV4QG5hYmxhZGV2LmNv
bT4KPiArCj4gK2FsbE9mOgo+ICsgIC0gJHJlZjogc25wcyxkd2MzLWNvbW1vbi55YW1sIwoKSG9u
ZXN0bHksIEkgYW0gbG9zdC4gSXQgc2VlbXMgdGhpcyByZXNvbHZlcyBteSBjb21tZW50IGF0IHYy
LCBidXQgbm93IEkKd2VudCB0aHJvdWdoIHBhdGNoc2V0IGZyb20gRmFicmljZSBHYXNuaWVyIHdo
aWNoIHdhcyBPTiBUT1Agb2YgdGhpcwpwYXRjaCBhZGRpbmcgdGhpcyBsaW5lLgoKSXQgaXMgbm90
IHlvdXIgZmF1bHQsIGFsdGhvdWdoIGlmIHRoZXJlIGFyZSBwZW5kaW5nIGNvbW1lbnRzIGV4cHJl
c3NlZApub3QgdmlhIHJldmlldyBidXQgdmlhIHBhdGNoc2VzIG9uIHRvcCBvZiB0aGluZ3MgYmVp
bmcgcmV2aWV3ZWQsIHRoZW4KY2FuIHlvdSBjaGVjayBmb3IgdGhlbT8KCkJlc3QgcmVnYXJkcywK
S3J6eXN6dG9mCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
