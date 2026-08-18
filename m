Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF914C5DF67
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 08:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VV+S1NYUkQN5ILpaD2NMoLFzgUqP6NVYH+IH6MAEeAE=; b=rPXYy/+DeZEbFL
	BXr06I3VC/VF46XPn6n3AHedq87ZI0GV3j3/WX0t663Hr6YpIgyFz0AKkwFlOggyjgs1ZXcjUmR5y
	Q6sROSC54z5KDmNlCk/EyTf+NEsYy6w7vMqvFr2kWacilLynYWe5ZylDgfxy+D7f4PB+GRMZ6d58+
	WCfS4+HpKVIOos8qeBcwa6CThcLeIo+IZSvofcbZoWTwUIzw+kpmbYN7D8qBXd4iSSfy3TzvZStRc
	lNzlq5Dpr4s3JDt4qFLGr5HqoY/T4v3/L7yfHuKRs7oMMSAeFnCsGdn1OurkWkCdST4FH8HxI9sw0
	d91IuRuvo3GO6VGhuV9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwEsl-00000007Ugd-0Ru1;
	Tue, 18 Aug 2026 08:09:15 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwEsj-00000007UgP-35Fj;
	Tue, 18 Aug 2026 08:09:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B2A0B44038;
	Tue, 18 Aug 2026 08:09:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 690BB1F00A3E;
	Tue, 18 Aug 2026 08:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787040552;
	bh=KxoJzPksuK2FDItQJn1AHAFzrtCR8dkvo26/KvGtqwo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=gMDn1pQmV05dOdAY/pzoI+YyNdsCaN65uiMrqKC7ujrwsnbKmc+WDTRQjXuw8V05m
	 qYXYyUA/IHhp3OcXyxIzRK/ynvWv7mL52b31BzAsiVPnOS5wFrhnV9aSsz24QpS0oX
	 SvmWezaxRBV1BAaSZGeR5tkRZ6JFdNNliMEvPnv1A8O1UJvZVMSf/LKEERRNvS3BJ7
	 vxF4/LgC624RTmgWmngE9tCqYmENzTgbjUl5emrNQ9OEdZtyUbZp2BnNzHQa21Uuzq
	 YiyfaxAAIE85WLhYOcI3EW0NY0w5ak3SIBUh4OAxxVyI/zYzPTsp4uk6AtmzBvtAxt
	 Qg1+dBXUEsJCg==
Date: Tue, 18 Aug 2026 10:09:02 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Marek Vasut <marex@nabladev.com>
Cc: linux-usb@vger.kernel.org, Pankaj Dev <pankaj.dev@st.com>, 
	Rahul Kumar <rahul.kumar05@st.com>, Fabrice Gasnier <fabrice.gasnier@foss.st.com>, 
	=?utf-8?Q?Cl=C3=A9ment?= Le Goffic <clement.legoffic@foss.st.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Christian Bruel <christian.bruel@foss.st.com>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Rob Herring <robh@kernel.org>, Rosen Penev <rosenp@gmail.com>, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org, 
	kernel@dh-electronics.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH v2 1/9] dt-bindings: phy: Document ST STM32MP25
 USB2-FEMTO PHY
Message-ID: <20260818-imperious-thankful-perch-dcaa44@quoll>
References: <20260816213849.1044073-1-marex@nabladev.com>
 <20260816213849.1044073-2-marex@nabladev.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260816213849.1044073-2-marex@nabladev.com>
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

T24gU3VuLCBBdWcgMTYsIDIwMjYgYXQgMTE6Mzc6MDNQTSArMDIwMCwgTWFyZWsgVmFzdXQgd3Jv
dGU6Cj4gRnJvbTogUGFua2FqIERldiA8cGFua2FqLmRldkBzdC5jb20+Cj4gCj4gRG9jdW1lbnQg
VVNCMiBQSFkgZm9yIFNUTTMyTVAyNSBVU0IyIGNvbnRyb2xsZXJzLCB3aGljaCBpbmNsdWRlcyB0
aGUKPiBVU0IyLjAgaG9zdC1vbmx5IGNvbnRyb2xsZXIgYW5kIFVTQiAyLjAgcGFydCBvZiB0aGUg
RFdDMyBjb250cm9sbGVyLgo+IFR3byBzdWNoIFBIWXMgaW4gdG90YWwgYXJlIHByZXNlbnQgaW4g
U1RNMzJNUDI1IFNvQywgdGhleSBib3RoIGFyZQo+IHNsaWdodGx5IGRpZmZlcmVudCwgdGhlcmVm
b3JlIHRoZXkgdXNlIGRpZmZlcmVudCBjb21wYXRpYmxlIHN0cmluZwo+IHRvIGRpc2Nlcm4gdGhl
bS4KPiAKPiBDby1kZXZlbG9wZWQtYnk6IFBhbmthaiBEZXYgPHBhbmthai5kZXZAc3QuY29tPgo+
IFNpZ25lZC1vZmYtYnk6IFBhbmthaiBEZXYgPHBhbmthai5kZXZAc3QuY29tPgoKUGxlYXNlIHJ1
biBzY3JpcHRzL2NoZWNrcGF0Y2gucGwgb24gdGhlIHBhdGNoZXMgYW5kIGZpeCByZXBvcnRlZAp3
YXJuaW5ncy4gQWZ0ZXIgdGhhdCwgcnVuIGFsc28gJ3NjcmlwdHMvY2hlY2twYXRjaC5wbCAtLXN0
cmljdCcgb24gdGhlCnBhdGNoZXMgYW5kIChwcm9iYWJseSkgZml4IG1vcmUgd2FybmluZ3MuIFNv
bWUgd2FybmluZ3MgY2FuIGJlIGlnbm9yZWQsCmVzcGVjaWFsbHkgZnJvbSAtLXN0cmljdCBydW4s
IGJ1dCB0aGUgY29kZSBoZXJlIGxvb2tzIGxpa2UgaXQgbmVlZHMgYQpmaXguIEZlZWwgZnJlZSB0
byBnZXQgaW4gdG91Y2ggaWYgdGhlIHdhcm5pbmcgaXMgbm90IGNsZWFyLgoKPiBDby1kZXZlbG9w
ZWQtYnk6IFJhaHVsIEt1bWFyIDxyYWh1bC5rdW1hcjA1QHN0LmNvbT4KPiBTaWduZWQtb2ZmLWJ5
OiBSYWh1bCBLdW1hciA8cmFodWwua3VtYXIwNUBzdC5jb20+Cj4gQ28tZGV2ZWxvcGVkLWJ5OiBG
YWJyaWNlIEdhc25pZXIgPGZhYnJpY2UuZ2FzbmllckBmb3NzLnN0LmNvbT4KPiBTaWduZWQtb2Zm
LWJ5OiBGYWJyaWNlIEdhc25pZXIgPGZhYnJpY2UuZ2FzbmllckBmb3NzLnN0LmNvbT4KPiBDby1k
ZXZlbG9wZWQtYnk6IENsw6ltZW50IExlIEdvZmZpYyA8Y2xlbWVudC5sZWdvZmZpY0Bmb3NzLnN0
LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBMZSBHb2ZmaWMgPGNsZW1lbnQubGVnb2Zm
aWNAZm9zcy5zdC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWFyZWsgVmFzdXQgPG1hcmV4QG5hYmxh
ZGV2LmNvbT4KPiAtLS0KPiBDYzogQWxleGFuZHJlIFRvcmd1ZSA8YWxleGFuZHJlLnRvcmd1ZUBm
b3NzLnN0LmNvbT4KPiBDYzogQ2hyaXN0aWFuIEJydWVsIDxjaHJpc3RpYW4uYnJ1ZWxAZm9zcy5z
dC5jb20+Cj4gQ2M6IENvbm9yIERvb2xleSA8Y29ub3IrZHRAa2VybmVsLm9yZz4KPiBDYzogRmFi
cmljZSBHYXNuaWVyIDxmYWJyaWNlLmdhc25pZXJAZm9zcy5zdC5jb20+Cj4gQ2M6IEdyZWcgS3Jv
YWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+Cj4gQ2M6IEtyenlzenRvZiBL
b3psb3dza2kgPGtyemsrZHRAa2VybmVsLm9yZz4KPiBDYzogTWF4aW1lIENvcXVlbGluIDxtY29x
dWVsaW4uc3RtMzJAZ21haWwuY29tPgo+IENjOiBOZWlsIEFybXN0cm9uZyA8bmVpbC5hcm1zdHJv
bmdAbGluYXJvLm9yZz4KPiBDYzogUGFua2FqIERldiA8cGFua2FqLmRldkBzdC5jb20+Cj4gQ2M6
IFJhaHVsIEt1bWFyIDxyYWh1bC5rdW1hcjA1QHN0LmNvbT4KPiBDYzogUm9iIEhlcnJpbmcgPHJv
YmhAa2VybmVsLm9yZz4KPiBDYzogUm9zZW4gUGVuZXYgPHJvc2VucEBnbWFpbC5jb20+Cj4gQ2M6
IFRoaW5oIE5ndXllbiA8VGhpbmguTmd1eWVuQHN5bm9wc3lzLmNvbT4KPiBDYzogVmlub2QgS291
bCA8dmtvdWxAa2VybmVsLm9yZz4KPiBDYzogZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmcKPiBD
Yzoga2VybmVsQGRoLWVsZWN0cm9uaWNzLmNvbQo+IENjOiBsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKPiBDYzogbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZwo+IENjOiBs
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IENjOiBsaW51eC1zdG0zMkBzdC1tZC1tYWls
bWFuLnN0b3JtcmVwbHkuY29tCj4gQ2M6IGxpbnV4LXVzYkB2Z2VyLmtlcm5lbC5vcmcKPiAtLS0K
PiBWMjogLSBGaXggdXAgU29iL0NkYiBsaW5lcwo+ICAgICAtIEZpeCB1cCBjb21wYXRpYmxlIHN0
cmluZyBpbiBleGFtcGxlCj4gICAgIC0gVXNlIGFkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQo+
ICAgICAtIEV4cGFuZCBkZXNjcmlwdGlvbjoKPiAgICAgLSBVc2UgY2xvY2stY2VsbHMgPSA8MT4g
dG8gZGlzY2VybiBPU0MgYW5kIGZ1dHVyZSBQTEwgY2xvY2sgZnJvbSB0aGUgUEhZCj4gLS0tCj4g
IC4uLi9iaW5kaW5ncy9waHkvc3Qsc3RtMzItdXNiMnBoeS55YW1sICAgICAgICB8IDczICsrKysr
KysrKysrKysrKysrKysKCkkgZG8gbm90IHNlZSBhbnkgY2hhbmdlcy9pbXByb3ZlbWVudHMgZnJv
bSBwcmV2aW91cyByZXZpZXcuCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
