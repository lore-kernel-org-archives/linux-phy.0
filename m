Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52637C79F82
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 08:01:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yHtH3ZBbR9twostoZ7v1SSYi+1+2GbWRTSMoO6Dpe6s=; b=1Z/pjN6x9cALx0
	AJVvTOSkGG3I5u9GsGWaHcH3l6z4alXdq4O/Y66zeHpiP1Wg/noZEpAgEZWKjX6YoGrUvUJ0V+JP4
	wn7YfErwwKl+i+Xg3WOAqAv6BSj/ve7fMqax+jZFd61nCQt6Mxa9fcdAY2yLyPJmzP73UIS83kYeM
	35BH9VP8V7HO2fctmrti0y3FjNgz+MCFBdGwpAyQuyR525gRB2DwiHoiOZraWgo8ysTpi9guA9+wc
	fpK9ZdOm8Qg/VmFYL2cmhiSM2qhzH+1IvfsabsTF22YC0qAl0SHiDWQdvQGzzTsHXJOuTUJQ1O9UU
	U+N2atGfZ4H8FWkaSwjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3qlT-00000008Ktg-0CWr;
	Tue, 08 Sep 2026 08:01:11 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3qlS-00000008KtD-1DF9
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 08:01:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B677243847;
	Tue,  8 Sep 2026 08:01:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D92A31F00A3D;
	Tue,  8 Sep 2026 08:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788854469;
	bh=ZTAso+iJzQQ2v66QiG2+Q5PpjuVHDKzuLvEqX/PALh8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=gLfm4yDeY4OQvh7gcqebY00CK677SxIW9UFulHLTSp62kuqEEBllPGjSRJKnfx+2e
	 cfV3DADe2pVBxlKxdQN5eQpoNMrXdYhUgsQ2gvGAIZZl4AIoxpREfGSjcdmyrMQULJ
	 vgKf/IaxeN+RsStsrsDfeOsS3XtVN3Hf0IwELpp4nu/zZ1vY20KKCr3oZafvlpBtt/
	 f8BM+W5na2ZVz7rIDeHv9CIw4fyN1DYOBCxrMqelh75dPrtSZU6suPcclrapeuopkE
	 e855ma0iu7cT8RUoc5qBglxpMr/BXYEHoHw/7ewvIl00rsLOgBB4TzCqStOeLkB73q
	 F5+RBAwuBD2AQ==
Date: Tue, 8 Sep 2026 10:00:59 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Herman van Hazendonk <github.com@herrie.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, 
	Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, llvm@lists.linux.dev, konrad.dybcio@oss.qualcomm.com, 
	dmitry.baryshkov@oss.qualcomm.com
Subject: Re: [PATCH v3 0/2] phy: qcom: usb-hs: MSM8x60 vendor ULPI init
Message-ID: <dlbizaj2j4cfxv64qgktc4s7hesgirk3yy5riqha2sef7jczgj@aetmxz6omq7x>
References: <20260616-submit-phy-usb-hs-vendor-init-seq-v3-0-7d21fb1d1484@herrie.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260616-submit-phy-usb-hs-vendor-init-seq-v3-0-7d21fb1d1484@herrie.org>
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

T24gVHVlLCBKdW4gMTYsIDIwMjYgYXQgMDM6MjY6NTJQTSArMDIwMCwgSGVybWFuIHZhbiBIYXpl
bmRvbmsgd3JvdGU6Cj4gdjMgKHRoaXMgcm91bmQpOgo+ICAtIFJlLWludHJvZHVjZSBhIG11Y2gg
c21hbGxlciBEVCBiaW5kaW5nIHBhdGNoIGZvbGxvd2luZyBLb25yYWQncwo+ICAgICJkbyB3ZSBo
YXZlIHZhbHVlcyBmb3IgTVRQL1FSRCIgcXVlc3Rpb24gYW5kIERtaXRyeSdzCj4gICAgInFjb20s
aHNkcnZzbG9wZSAob3Igc2ltaWxhcmx5IG5hbWVkKSBwcm9wZXJ0eSBpbiBEVCIgc3VnZ2VzdGlv
bi4KPiAgLSBTdXJ2ZXkgb2YgZXZlcnkgTVNNOHg2MC1jbGFzcyBkb3duc3RyZWFtIHRyZWUgSSBj
b3VsZCByZWFjaCAtLQo+ICAgIFF1YWxjb21tIHJlZmVyZW5jZSAoU1VSRi9GRkEvRmx1aWQvRHJh
Z29uL0Z1c2lvbiB2aWEKPiAgICBib2FyZC1tc204eDYwLmMgb24gYW5kcm9pZC5nb29nbGVzb3Vy
Y2UuY29tKSwgU2Ftc3VuZyBHYWxheHkgUzIKPiAgICBmYW1pbHkgKFExIC8gQ2Vsb3ggLyBEYWxp
IC8gZ2VuZXJpYyA4eDYwIE1UUCksIFNvbnkgTVNNODY2MAo+ICAgIChzb255LWtlcm5lbC1tc204
NjYwKSwgSFRDIE1TTTg2NjAgcG9ydHMKPiAgICAoc2hvb3RlciAvIGhvbGlkYXkgLyBweXJhbWlk
IC8gZG91Ymxlc2hvdCAvIHNob290ZXJfdSAvIHJ1YnkpIGFuZAo+ICAgIEhQIFRvdWNoUGFkIC0t
IHNob3dzIHRoYXQgcHJlLWVtcGhhc2lzLCBDRFIgYXV0by1yZXNldCBhbmQgU0UxCj4gICAgZ2F0
aW5nIHZhbHVlcyBhcmUgKmlkZW50aWNhbCogYWNyb3NzIGV2ZXJ5IHJlZmVyZW5jZSBib2FyZC4K
PiAgICBPbmx5IHRoZSA0LWJpdCBIUyBkcml2ZXIgc2xvcGUgaW4gcmVnIDB4MzIgWzM6MF0gdmFy
aWVzLgo+ICAtIFBhdGNoIDEvMiBhZGRzIGEgc2luZ2xlIHFjb20saHMtZHJ2LXNsb3BlIERUIHBy
b3BlcnR5ICh1MzIsCj4gICAgcmFuZ2UgMC4uMTUpIGdhdGVkIHRvIHRoZSBxY29tLHVzYi1ocy1w
aHktbXNtODY2MCBjb21wYXRpYmxlLgo+ICAtIFBhdGNoIDIvMiBoYXJkY29kZXMgdGhlIHRocmVl
IHBsYXRmb3JtLXdpZGUgd3JpdGVzIGluIHRoZSBkcml2ZXIKPiAgICBiZWhpbmQgdGhlIHNhbWUg
Y29tcGF0aWJsZSBtYXRjaCwgY29uc3VtZXMgcWNvbSxocy1kcnYtc2xvcGUgZm9yCj4gICAgdGhl
IGJvYXJkLXNwZWNpZmljIGJpdHMsIGFuZCBsZWF2ZXMgdGhlIHNpbGljb24gZGVmYXVsdCBpbiBw
bGFjZQo+ICAgIHdoZW4gdGhlIHByb3BlcnR5IGlzIGFic2VudCAtLSB3aGljaCBtYXRjaGVzIFF1
YWxjb21tJ3Mgb3duIE1UUCwKPiAgICBTYW1zdW5nIGFuZCBTb255IHJlZmVyZW5jZSBiZWhhdmlv
dXIuCj4gIC0gVGhlIGJpdC1sZXZlbCBtZWFuaW5nIHdlICpkbyogaGF2ZSBjb21lcyBmcm9tIENv
ZGUgQXVyb3JhJ3MKPiAgICBkb3duc3RyZWFtIGFyY2gvYXJtL21hY2gtbXNtL2luY2x1ZGUvbWFj
aC9tc21faHN1c2JfaHcuaCwgd2hpY2gKPiAgICBTYW1zdW5nIGFuZCBIUCBib3RoIHNoaXBwZWQg
Ynl0ZS1mb3ItYnl0ZSBpZGVudGljYWwuCj4gIC0gUGVyIERtaXRyeSdzIHJlcXVlc3QsIGJvdGgg
Y29tbWl0IG1lc3NhZ2VzIGNhbGwgb3V0IGV4cGxpY2l0bHkKPiAgICB0aGF0IHRoZXJlIGlzIG5v
IHB1YmxpYyBRdWFsY29tbSBkb2N1bWVudGF0aW9uIGRlc2NyaWJpbmcgaG93IHRoZQo+ICAgIDQt
Yml0IHNsb3BlIHZhbHVlIG1hcHMgdG8gYW4gYWN0dWFsIHNsZXcgcmF0ZSAvIFYvbnMgLyAlLiAg
VGhlCj4gICAgZmllbGQgaXMgYW4gb3BhcXVlIGhhcmR3YXJlIGNvbnRyb2w7IGJvYXJkcyBtdXN0
IGNvcHkgdGhlIHZhbHVlCj4gICAgZnJvbSB0aGVpciB2ZW5kb3IgLyBkb3duc3RyZWFtIGtlcm5l
bCBhcyBhIG1lYXN1cmVkLXBlci1sYXlvdXQKPiAgICBrbm9iLCBub3QgYSBkZXJpdmVkIG9uZS4K
PiAKPiB2MjoKPiAgLSBEcm9wcGVkIHRoZSBvcmlnaW5hbCBxY29tLHZlbmRvci1pbml0LXNlcSBE
VCBwcm9wZXJ0eSBlbnRpcmVseQo+ICAgIGFuZCBmb2xkZWQgYWxsIHRoZSB2ZW5kb3ItcmVnaXN0
ZXIgcHJvZ3JhbW1pbmcgaW50byB0aGUgZHJpdmVyCj4gICAgYmVoaW5kIHRoZSBxY29tLHVzYi1o
cy1waHktbXNtODY2MCBjb21wYXRpYmxlLgo+ICAtIEhTIGRyaXZlciBzbG9wZSB3YXMgaGFyZGNv
ZGVkIGluIHYyLiAgdjMgcHJvbW90ZXMgdGhhdCBvbmUKPiAgICB2YXJ5aW5nIHZhbHVlIHRvIGEg
RFQgcHJvcGVydHkgYXMgRG1pdHJ5IHJlcXVlc3RlZC4KPiAKPiBDb21wYW5pb24gVG91Y2hQYWQg
RFRTIHdvcmsgKGZsaXBwaW5nIHRoZSBQSFkgY29tcGF0aWJsZSBmcm9tCj4gInFjb20sdXNiLWhz
LXBoeS1hcHE4MDY0IiB0byAicWNvbSx1c2ItaHMtcGh5LW1zbTg2NjAiIGFuZCBhZGRpbmcKPiBx
Y29tLGhzLWRydi1zbG9wZSA9IDw1Pikgd2lsbCBiZSBzZW50IHNlcGFyYXRlbHkgd2l0aCB0aGUg
cmVzdCBvZgo+IHRoZSBhcHE4MDYwLXRlbmRlcmxvaW4gRFQgc2VyaWVzLgo+IAo+IE9uLWRldmlj
ZSB2YWxpZGF0aW9uIChIUCBUb3VjaFBhZCAvIEFQUTgwNjApOgo+ICAtIEJvb3RlZCB3aXRoIHYz
ICsgdGhlIHVwY29taW5nIERUUyBob29rdXAuICBQSFkgZHJpdmVyIGJvdW5kLAo+ICAgIG1zbV9o
c3VzYiBIUyBsaW5rIGNhbWUgdXAgYXQgaGlnaC1zcGVlZC4gIE5vIHJlZ3Jlc3Npb24gdnMgdGhl
IHYyCj4gICAgaGFyZGNvZGVkIGJ1aWxkLgo+IAo+IEJ1aWxkIC8gc2NoZW1hIHZlcmlmaWNhdGlv
bjoKPiAgLSBkdF9iaW5kaW5nX2NoZWNrIERUX1NDSEVNQV9GSUxFUz0uLi4vcWNvbSx1c2ItaHMt
cGh5LnlhbWw6IGNsZWFuLgo+ICAtIGR0YnNfY2hlY2sgb24gcWNvbS1hcHE4MDYwLWRyYWdvbmJv
YXJkLmR0YiBhbmQKPiAgICBxY29tLW1zbTg5NjAtY2RwLmR0YiAodGhlIHR3byBleGlzdGluZyBp
bi10cmVlIHVzYi1ocy1waHkKPiAgICBjb25zdW1lcnMpOiBjbGVhbi4KPiAgLSBkcml2ZXJzL3Bo
eS9xdWFsY29tbS9waHktcWNvbS11c2ItaHMubyBidWlsZHMgY2xlYW4uCj4gIC0gY2hlY2twYXRj
aC5wbCAtLXN0cmljdDogbm8gd2FybmluZ3Mgb24gZWl0aGVyIHBhdGNoLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IEhlcm1hbiB2YW4gSGF6ZW5kb25rIDxnaXRodWIuY29tQGhlcnJpZS5vcmc+CgpSZXZp
ZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3Nz
LnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDg
rprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
