Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69636C54FD2
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 09:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p5TnGDujhkchzb+X19SVMfAHEdnurQCMZKrGok5SIZU=; b=I8A9aKpgukJsqu
	mfcBjhk27DA1cauxuFD/OmsCS4Ybi8SMh7WHDENG7xyoxbl9DTk9wxkhvMnvjnTMJuSX4RUdtxx32
	QU8xuzW8ZHtbOmPhaV6b3lVgOTDbIVikZTrZqB0EQv4VgoJpfQoUHdJ+0ie3vJVRCJDlMMWogsJrQ
	ai+XKCvzy2V+EdrejNHrCGudfOC+hMYyc3XF1kYu/B+GxfXywcMcmferfpzYA4vzJRKBl3kkuIhZZ
	HwGwXgyyvWXz5T8VbsOa8ipUHT0CAZwJdzfoT7cF5PUbxFY7s5lkPSraQfq9gj6GBqbuZ9fbAFAHr
	BToJmUtxht+cwp2H6E/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpNW8-0000000A7Z7-0Spm;
	Thu, 30 Jul 2026 09:57:32 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpNW6-0000000A7Yn-2hko
	for linux-phy@lists.infradead.org;
	Thu, 30 Jul 2026 09:57:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C04CA600AB;
	Thu, 30 Jul 2026 09:57:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A8891F00A3A;
	Thu, 30 Jul 2026 09:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785405449;
	bh=b+vfWu1ola51xy9nswRhq9CC0HcMCp0ViCVth5o0f2A=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jqchFDnEVVu59jScbr8g+voltb1YxA+ir9chWBov/wVPbNocMehlw+6ryOCTw44Bv
	 8pzVJ9DUgK4gLcp3E5a5lmHAx33bxMhzIQW5En7SSJ0ZEA1F2ru77RjqRfWLHFmIbl
	 VegsCRloIMFLBA72734EZ2yOHwB0OiZXLqTS/PSzYENSicYDhIWS9H838bAxfQPwCa
	 TNoTPfD5QGwXKagSsX4WOIBC0dGZSJqTTyeRF96cgguUEsnlVpMNmeAJDlsQBuwgW3
	 fJXKXEuL+qG20QSi9Zd8p0D8dvlZQuBZENdVMs2SwPycSkdnNbsRWslFltRa6yUiid
	 KYoYEbzA4scgA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 02/26] dt-bindings: ufs: mediatek,ufs: Complete the
 binding
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: conor+dt@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, robh@kernel.org, vkoul@kernel.org, linux-scsi@vger.kernel.org
In-Reply-To: <20260730-mt8196-ufs-v10-2-bc5ecef202dc@collabora.com>
References: <20260730-mt8196-ufs-v10-0-bc5ecef202dc@collabora.com>
 <20260730-mt8196-ufs-v10-2-bc5ecef202dc@collabora.com>
Date: Thu, 30 Jul 2026 09:57:28 +0000
Message-Id: <20260730095729.0A8891F00A3A@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIHByb3BlcnR5IGBj
bG9jay1uYW1lc2AgaXMgbWlzc3BlbGxlZCBhcyBgY2xvY2tzLW5hbWVzYCBpbiB0aGUgTVQ4MTky
IGNvbmRpdGlvbmFsIGJsb2NrLCBsZWF2aW5nIHRoZSBhY3R1YWwgcHJvcGVydHkgdW5jb25zdHJh
aW5lZC4KLS0KCi0tLSBQYXRjaCBbMl06IFtQQVRDSCB2MTAgMDIvMjZdIGR0LWJpbmRpbmdzOiB1
ZnM6IG1lZGlhdGVrLHVmczogQ29tcGxldGUgdGhlIGJpbmRpbmcgLS0tCmNvbW1pdCA1MTUzMTI0
MDVkM2UyMjM3Y2FkNTc4ZjZlOWJjMDg1ZWUzNzcyNDMxCkF1dGhvcjogTmljb2xhcyBGcmF0dGFy
b2xpIDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFib3JhLmNvbT4KCmR0LWJpbmRpbmdzOiB1ZnM6
IG1lZGlhdGVrLHVmczogQ29tcGxldGUgdGhlIGJpbmRpbmcKClRoaXMgY29tbWl0IHVwZGF0ZXMg
dGhlIE1lZGlhVGVrIFVGUyBiaW5kaW5nIHRvIHJlcGxhY2UgZGVwcmVjYXRlZCBmcmVxdWVuY3kK
dGFibGVzIHdpdGggb3BlcmF0aW5nLXBvaW50cy12MiBhbmQgYWRkcyBtaXNzaW5nIG9wdGlvbmFs
IHJlc2V0cy4gSXQgYWxzbwpjb3JyZWN0cyB0aGUgY2xvY2sgZGVmaW5pdGlvbnMgZm9yIGRpZmZl
cmVudCBTb0MgdmFyaWFudHMgYW5kIGRvY3VtZW50cyB0aGUKcmVxdWlyZWQgcG93ZXIgc3VwcGxp
ZXMuCgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdWZz
L21lZGlhdGVrLHVmcy55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vm
cy9tZWRpYXRlayx1ZnMueWFtbAo+IGluZGV4IDE1YzM0N2Y1ZTY2MDQuLmU3ZTM2MGM1OWJhNTkg
MTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9tZWRp
YXRlayx1ZnMueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91
ZnMvbWVkaWF0ZWssdWZzLnlhbWwKClsgLi4uIF0KCj4gQEAgLTU0LDI5ICs5Niw0MSBAQCBhbGxP
ZjoKClsgLi4uIF0KCj4gKyAgLSBpZjoKPiArICAgICAgcHJvcGVydGllczoKPiArICAgICAgICBj
b21wYXRpYmxlOgo+ICsgICAgICAgICAgY29udGFpbnM6Cj4gKyAgICAgICAgICAgIGNvbnN0OiBt
ZWRpYXRlayxtdDgxOTItdWZzaGNpCj4gKyAgICB0aGVuOgo+ICAgICAgICBwcm9wZXJ0aWVzOgo+
ICAgICAgICAgIGNsb2NrczoKPiAtICAgICAgICAgIG1heEl0ZW1zOiAxCj4gKyAgICAgICAgICBt
aW5JdGVtczogMwo+ICsgICAgICAgICAgbWF4SXRlbXM6IDMKPiArICAgICAgICBjbG9ja3MtbmFt
ZXM6CiAgICAgICAgICAgXl5eXl5eXl5eXl5eCgpbU2V2ZXJpdHk6IExvd10KSXMgdGhlcmUgYSB0
eXBvIGluIHRoaXMgcHJvcGVydHkgbmFtZT8gSXQgYXBwZWFycyB0byBzYXkgY2xvY2tzLW5hbWVz
IGluc3RlYWQKb2YgY2xvY2stbmFtZXMuIFRoaXMgbWlnaHQgbGVhdmUgdGhlIGFjdHVhbCBjbG9j
ay1uYW1lcyBwcm9wZXJ0eSB1bmNvbnN0cmFpbmVkCmZvciB0aGUgTVQ4MTkyIGhhcmR3YXJlIHZh
cmlhbnQgYW5kIGNhdXNlIHNjaGVtYSB2YWxpZGF0aW9uIHRvIG1pc3MgaW5jb3JyZWN0CmRldmlj
ZSB0cmVlIGNvbmZpZ3VyYXRpb25zLgoKPiArICAgICAgICAgIG1pbkl0ZW1zOiAzCj4gKyAgICAg
ICAgICBtYXhJdGVtczogMwo+ICsgICAgICAgIGF2ZGQwOS1zdXBwbHk6IGZhbHNlCgotLSAKU2Fz
aGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzMw
LW10ODE5Ni11ZnMtdjEwLTAtYmM1ZWNlZjIwMmRjQGNvbGxhYm9yYS5jb20/cGFydD0yCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
