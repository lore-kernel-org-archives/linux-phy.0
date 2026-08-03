Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE4CBC55196
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 19:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lF8VUMZ4xycKU8fqR0RmWKf3gtt7gmCmu26pFLP9XBc=; b=wLPV9CYiNZEZDs
	MzRNSWqe2aWBkMVssjuiOJQaUWKvHngYDMuX6EF8ud3c0GHHxsfK0bdjIgk4yRzOEbhcu8ZP5hEno
	XH5hQzYsEol/P3VOoYlYJpEFWWYNlnysQFNVxn8UgvMsUMmTb2EOJ86wFUef1B4p47Yzy3RsnzS+m
	mIGEajXYW2NZ9Iyc3tWYto3oNxrcwu2C/PIc+UPT/2z+ypvsEJ5SUi6HO419ISX6VF7XMWM7i/XYn
	nKq50ArXNwqFxXROd2m5A3zz3s71+4lCAybAU1VLZOUYJOUB4Ye0PbwqnEGgu6tDV2RJZKge7pd18
	QWPiw3f6VtW/7y9J3NCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqyUe-00000000Rpo-15HL;
	Mon, 03 Aug 2026 19:38:36 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqyUd-00000000Rpf-1NFf
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 19:38:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1362F416C6;
	Mon,  3 Aug 2026 19:38:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECF8D1F000E9;
	Mon,  3 Aug 2026 19:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785785915;
	bh=C+zVe4KgTptqZcobunsR8qlrsOpMEXYIZbDKPI+EPvk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=emmLfs9+njtgAWF6oAesa8/K/8rmTlHMDt6ITeElTpPELL7Ae76FFuIpZCiT7MgKE
	 0zpy+2aQYp/ss3da36Y+QiekaKkFMN9QO1zLkeCnFiq/2dJIg+RWpLmKY9u3qu5gME
	 bjhVdzVuLSitYQvoQc4xHDh83YQUhDWPY9WzQrc/o/PeYvW0siHnsNUHDfaeU32Cwo
	 RiHd8dpVZVjOMmZIHadhpkbIxfADH6fT/T5qVXBNBTEpd7MlYeqc/Dhx3uaTFm6MBi
	 tLUq8j95+DSpQ0i43gT9rHbN6yfAIpPpTIYbyu4T4KHPJYrWX2px66wfOR07KMZN1R
	 qVqZJ4gDOkadQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/6] phy: qcom: sgmii-eth: vote for both voltage
 rails with correct current loads
To: "Mohd Ayaan Anwar" <mohd.anwar@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, robh@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260804-b4-sgmiieth_serdes_regulator-v2-2-c4bc688177dd@oss.qualcomm.com>
References: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
 <20260804-b4-sgmiieth_serdes_regulator-v2-2-c4bc688177dd@oss.qualcomm.com>
Date: Mon, 03 Aug 2026 19:38:33 +0000
Message-Id: <20260803193833.ECF8D1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBUaGUgUEhZIHByb3ZpZGVyIGlzIHJlZ2lzdGVyZWQgYmVmb3JlIGl0cyBkcml2ZXIg
ZGF0YSBpcyBzZXQsIGNyZWF0aW5nIGEgcmFjZSBjb25kaXRpb24gd2hlcmUgYSBjb25zdW1lciBj
b3VsZCB0cmlnZ2VyIGEgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlLgotLQoKLS0tIFBhdGNoIFsy
XTogW1BBVENIIHYyIDIvNl0gcGh5OiBxY29tOiBzZ21paS1ldGg6IHZvdGUgZm9yIGJvdGggdm9s
dGFnZSByYWlscyB3aXRoIGNvcnJlY3QgY3VycmVudCBsb2FkcyAtLS0KY29tbWl0IDEyMDNmYjVh
OWJhMDgyNDcwYTAzODNiZWZlNjRmNjJjNDg0YWM3ZDUKQXV0aG9yOiBNb2hkIEF5YWFuIEFud2Fy
IDxtb2hkLmFud2FyQG9zcy5xdWFsY29tbS5jb20+CgpwaHk6IHFjb206IHNnbWlpLWV0aDogdm90
ZSBmb3IgYm90aCB2b2x0YWdlIHJhaWxzIHdpdGggY29ycmVjdCBjdXJyZW50IGxvYWRzCgpUaGlz
IGNvbW1pdCB1cGRhdGVzIHRoZSBkcml2ZXIgdG8gZXhwbGljaXRseSB2b3RlIGZvciBib3RoIHZv
bHRhZ2Ugc3VwcGx5CnJhaWxzIHdpdGggdGhlaXIgY29ycmVjdCBwZWFrIGN1cnJlbnQgbG9hZHMg
dXNpbmcKZGV2bV9yZWd1bGF0b3JfYnVsa19nZXRfY29uc3QoKSwgcmF0aGVyIHRoYW4gcmVseWlu
ZyBvbiB0aGUgUEhZIGZyYW1ld29yaydzCmltcGxpY2l0IHNpbmdsZS1yYWlsIHZvdGluZy4gSXQg
YWxzbyBhZGRzIHRoZSBuZWNlc3NhcnkgcmVndWxhdG9yCmVuYWJsZS9kaXNhYmxlIGNhbGxzIGlu
IHRoZSBwb3dlciBwYXRoLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5
LXFjb20tc2dtaWktZXRoLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1zZ21paS1l
dGguYwo+IGluZGV4IGY0OGZhYTI5MjlhNjguLjcxMzcyMDBjM2YzMTAgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tc2dtaWktZXRoLmMKPiArKysgYi9kcml2ZXJz
L3BoeS9xdWFsY29tbS9waHktcWNvbS1zZ21paS1ldGguYwoKWyAuLi4gXQoKPiBAQCAtMzgxLDYg
KzQwNCwxMiBAQCBzdGF0aWMgaW50IHFjb21fZHdtYWNfc2dtaWlfcGh5X3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAlpZiAoSVNfRVJSKGRhdGEtPnJlZmNsaykpCj4gIAkJ
cmV0dXJuIFBUUl9FUlIoZGF0YS0+cmVmY2xrKTsKPiAgCj4gKwlyZXQgPSBkZXZtX3JlZ3VsYXRv
cl9idWxrX2dldF9jb25zdChkZXYsIFFDT01fU0dNSUlfTlVNX1NVUFBMSUVTLAo+ICsJCQkJCSAg
ICBxY29tX2R3bWFjX3NnbWlpX3BoeV92cmVncywKPiArCQkJCQkgICAgJmRhdGEtPnZyZWdzKTsK
PiArCWlmIChyZXQpCj4gKwkJcmV0dXJuIHJldDsKPiArCj4gIAlwcm92aWRlciA9IGRldm1fb2Zf
cGh5X3Byb3ZpZGVyX3JlZ2lzdGVyKGRldiwgb2ZfcGh5X3NpbXBsZV94bGF0ZSk7Cj4gIAlpZiAo
SVNfRVJSKHByb3ZpZGVyKSkKPiAgCQlyZXR1cm4gUFRSX0VSUihwcm92aWRlcik7CgpbU2V2ZXJp
dHk6IEhpZ2hdClRoaXMgaXMgYSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1dCBkb2VzIHJlZ2lzdGVy
aW5nIHRoZSBQSFkgcHJvdmlkZXIgYmVmb3JlCnNldHRpbmcgdGhlIGRyaXZlciBkYXRhIGNyZWF0
ZSBhIHJhY2UgY29uZGl0aW9uIGhlcmU/CgpMb29raW5nIGF0IHRoZSBlbmQgb2YgcWNvbV9kd21h
Y19zZ21paV9waHlfcHJvYmUoKToKCglwcm92aWRlciA9IGRldm1fb2ZfcGh5X3Byb3ZpZGVyX3Jl
Z2lzdGVyKGRldiwgb2ZfcGh5X3NpbXBsZV94bGF0ZSk7CglpZiAoSVNfRVJSKHByb3ZpZGVyKSkK
CQlyZXR1cm4gUFRSX0VSUihwcm92aWRlcik7CgoJcGh5X3NldF9kcnZkYXRhKHBoeSwgZGF0YSk7
CgpCeSBjYWxsaW5nIGRldm1fb2ZfcGh5X3Byb3ZpZGVyX3JlZ2lzdGVyKCkgZmlyc3QsIHRoZSBQ
SFkgaXMgbWFkZSBhdmFpbGFibGUKdG8gY29uc3VtZXJzIGJlZm9yZSBwaHlfc2V0X2RydmRhdGEo
KSBpbml0aWFsaXplcyB0aGUgcHJpdmF0ZSBkYXRhLgoKSWYgYSBjb25zdW1lciAoc3VjaCBhcyBh
IGRlZmVycmVkIHByb2JlIHdvcmtxdWV1ZSkgY29uY3VycmVudGx5IGxvb2tzIHVwIHRoZQpQSFkg
YW5kIGltbWVkaWF0ZWx5IGludm9rZXMgYW4gb3BlcmF0aW9uIGxpa2UgcGh5X3Bvd2VyX29uKCks
IGNvdWxkCnFjb21fZHdtYWNfc2dtaWlfcGh5X3Bvd2VyX29uKCkgcmVhZCBhIE5VTEwgZHJpdmVy
IGRhdGEgcG9pbnRlciBhbmQgY2F1c2UKYSBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2Ugd2hlbiBh
dHRlbXB0aW5nIHRvIGFjY2VzcyBkYXRhLT52cmVncz8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDC
tyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA4MDQtYjQtc2dtaWlldGhfc2Vy
ZGVzX3JlZ3VsYXRvci12Mi0wLWM0YmM2ODgxNzdkZEBvc3MucXVhbGNvbW0uY29tP3BhcnQ9MgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
