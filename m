Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A529CA0EEB
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 15:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9HnYAHWWN8f1LyqEt5LVuZcjDKbccM93sqGcPReSdwk=; b=1+a2VtO+x+B11m
	o97gk8tgtSfnbDQIVapy0qlt9hx8rutVDLDlp/Ku950hOfNTqqudSmVxpGCOXGtg7U1/k44Mc+0eL
	fExlzwjsC2NVqgv02I1kVknTpLgzvAnsJVvE3yyc+DGwVC+RuB7yuQ03FuoafAIaMkLFL43IOhzL2
	fDUmWE7aIqzjHOAagFDZGb/fctGs/22lmxw1s8yJ5e0koCIxRy8h8BOncMkTGSk8iCfwFf0Re+j9r
	U8NXrDKQ5iJH2uqKcr46BU+bHqoLdss+oFetd0RoRPMer9U/vf2iR+WstA3qDShq/RY04wIw3n3bt
	91d0w82XcBUGKmnSEm8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upTn0-000000032s8-3W9h;
	Fri, 22 Aug 2025 15:34:50 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upNUX-00000001zGb-33zR
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 08:51:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id CB20AA588CD;
	Fri, 22 Aug 2025 08:51:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B2FFC4CEF1;
	Fri, 22 Aug 2025 08:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755852680;
	bh=ktLkO6U8pVwA0whh88+uwMn9bVUHZCee68IJdrMKmKc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iOMj2Z4xW7EBH5KWpRROUfGXFAG9Yr3obWkcsrbRbTC8Xy7zzzvsMI+e8FJLZ3jvq
	 B8MpSqz3aAtFGBaN1hDljsyceJG/Odg4TeHdDivPWVYZHbls6FExqUFkPaS1tW6OpI
	 pxR2c1ocXQvC4G9D2wboD6P59w2t/3s4P6qIelS3O6vGBSgrbnvV8XmJkyLdhwlBFW
	 pnOIFsFoPGcs3312gI2IRw/WxB/cQrg4Mm4IvNpP/q4Utd/izWs0pVGK4gQqNtV5lW
	 N7DEn10J5xzPZgBgv9yTilKyA+HPp2AipaFusmGVZkshwuP/aQ/CPVyvYaYVTvU1EC
	 vGxA+curQoRlA==
Date: Fri, 22 Aug 2025 14:21:09 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, dmitry.baryshkov@oss.qualcomm.com, 
	andersson@kernel.org, konradybcio@kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V3 2/2] phy: qcom-qmp-ufs: Add regulator loads for SM8650
 and SM8750
Message-ID: <gvfcg5wuzti6ns337onsg6si6sp3walpy3rniouxlxuf5huthm@uay2wzbyq3wt>
References: <20250819222832.8471-1-quic_nitirawa@quicinc.com>
 <20250819222832.8471-3-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250819222832.8471-3-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_015121_907788_3418C6CB 
X-CRM114-Status: GOOD (  19.22  )
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

T24gV2VkLCBBdWcgMjAsIDIwMjUgYXQgMDM6NTg6MjZBTSBHTVQsIE5pdGluIFJhd2F0IHdyb3Rl
Ogo+IEFkZCByZWd1bGF0b3IgbG9hZCB2b3Rpbmcgc3VwcG9ydCBmb3IgU004NjUwIGFuZCBTTTg3
NTAgcGxhdGZvcm1zIGJ5Cj4gaW50cm9kdWNpbmcgZGVkaWNhdGVkIHJlZ3VsYXRvciBidWxrIGRh
dGEgYXJyYXlzIHdpdGggdGhlaXIgbG9hZAo+IHZhbHVlcy4KPiAKPiBUaGUgbG9hZCByZXF1aXJl
bWVudHMgYXJlOgo+IC0gU004NjUwOiB2ZGRhLXBoeSAoMjA1bUEpLCB2ZGRhLXBsbCAoMTcuNW1B
KQo+IC0gU004NzUwOiB2ZGRhLXBoeSAoMjEzbUEpLCB2ZGRhLXBsbCAoMTguM21BKQo+IAo+IFRo
aXMgZW5zdXJlcyBzdGFibGUgb3BlcmF0aW9uIGFuZCBwcm9wZXIgcG93ZXIgbWFuYWdlbWVudCBm
b3IgdGhlc2UKPiBwbGF0Zm9ybXMgd2hlcmUgcmVndWxhdG9ycyBhcmUgc2hhcmVkIGJldHdlZW4g
dGhlIFFNUCBVU0IgUEhZIGFuZAo+IG90aGVyIElQIGJsb2NrcyBieSBzZXR0aW5nIGFwcHJvcHJp
YXRlIHJlZ3VsYXRvciBsb2FkIGN1cnJlbnRzIGR1cmluZyBQSFkKPiBvcGVyYXRpb25zLgo+IAoK
U28gaXQgaXMgZml4aW5nIHN0YWJpbGl0eSBpc3N1ZXMgb24gdGhlc2UgcGxhdGZvcm1zLiBIZW5j
ZSwgJ0ZpeGVzJyB0YWcgcG9pbnRpbmcKdG8gdGhlIGNvbW1pdHMgdGhhdCBhZGRlZCB0aGVzZSBw
bGF0Zm9ybSBzdXBwb3J0IHNob3VsZCBiZSBhZGRlZC4KCj4gQ29uZmlndXJhdGlvbnMgd2l0aG91
dCBzcGVjaWZpYyBsb2FkIHJlcXVpcmVtZW50cyB3aWxsIGNvbnRpbnVlIHRvIHdvcmsKPiB1bmNo
YW5nZWQsIGFzIGluaXRfbG9hZF91QSByZW1haW5zIHplcm8taW5pdGlhbGl6ZWQgd2hlbiAuaW5p
dF9sb2FkX3VBCj4gaXMgbm90IHByb3ZpZGVkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE5pdGluIFJh
d2F0IDxxdWljX25pdGlyYXdhQHF1aWNpbmMuY29tPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4g
U2FkaGFzaXZhbSA8bWFuaUBrZXJuZWwub3JnPgoKLSBNYW5pCgo+IC0tLQo+ICBkcml2ZXJzL3Bo
eS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMgfCAxOSArKysrKysrKysrKysrKystLS0tCj4g
IDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMgYi9kcml2
ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMKPiBpbmRleCBhYWE4OGNhMGVmMDcu
LjFjM2NlMGZhNmFkZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1xbXAtdWZzLmMKPiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZz
LmMKPiBAQCAtMTE3MCw2ICsxMTcwLDE3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcmVndWxhdG9y
X2J1bGtfZGF0YSBxbXBfcGh5X3ZyZWdfbFtdID0gewo+ICAJeyAuc3VwcGx5ID0gInZkZGEtcGxs
IiB9LAo+ICB9Owo+IAo+ICsvKiBSZWd1bGF0b3IgYnVsayBkYXRhIHdpdGggbG9hZCB2YWx1ZXMg
Zm9yIHNwZWNpZmljIGNvbmZpZ3VyYXRpb25zICovCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgcmVn
dWxhdG9yX2J1bGtfZGF0YSBzbTg2NTBfdWZzcGh5X3ZyZWdfbFtdID0gewo+ICsJeyAuc3VwcGx5
ID0gInZkZGEtcGh5IiwgLmluaXRfbG9hZF91QSA9IDIwNTAwMCB9LAo+ICsJeyAuc3VwcGx5ID0g
InZkZGEtcGxsIiwgLmluaXRfbG9hZF91QSA9IDE3NTAwIH0sCj4gK307Cj4gKwo+ICtzdGF0aWMg
Y29uc3Qgc3RydWN0IHJlZ3VsYXRvcl9idWxrX2RhdGEgc204NzUwX3Vmc3BoeV92cmVnX2xbXSA9
IHsKPiArCXsgLnN1cHBseSA9ICJ2ZGRhLXBoeSIsIC5pbml0X2xvYWRfdUEgPSAyMTMwMDAgfSwK
PiArCXsgLnN1cHBseSA9ICJ2ZGRhLXBsbCIsIC5pbml0X2xvYWRfdUEgPSAxODMwMCB9LAo+ICt9
Owo+ICsKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfdWZzX29mZnNldHMgcW1wX3Vmc19vZmZz
ZXRzID0gewo+ICAJLnNlcmRlcwkJPSAwLAo+ICAJLnBjcwkJPSAweGMwMCwKPiBAQCAtMTYzOCw4
ICsxNjQ5LDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyBzbTg2NTBfdWZzcGh5
X2NmZyA9IHsKPiAgCQkubWF4X2dlYXIJPSBVRlNfSFNfRzUsCj4gIAl9LAo+IAo+IC0JLnZyZWdf
bGlzdAkJPSBxbXBfcGh5X3ZyZWdfbCwKPiAtCS5udW1fdnJlZ3MJCT0gQVJSQVlfU0laRShxbXBf
cGh5X3ZyZWdfbCksCj4gKwkudnJlZ19saXN0CQk9IHNtODY1MF91ZnNwaHlfdnJlZ19sLAo+ICsJ
Lm51bV92cmVncwkJPSBBUlJBWV9TSVpFKHNtODY1MF91ZnNwaHlfdnJlZ19sKSwKPiAgCS5yZWdz
CQkJPSB1ZnNwaHlfdjZfcmVnc19sYXlvdXQsCj4gIH07Cj4gCj4gQEAgLTE2NzYsOCArMTY4Nyw4
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmcgc204NzUwX3Vmc3BoeV9jZmcgPSB7
Cj4gIAkJLm1heF9nZWFyCT0gVUZTX0hTX0c1LAo+ICAJfSwKPiAKPiAtCS52cmVnX2xpc3QJCT0g
cW1wX3BoeV92cmVnX2wsCj4gLQkubnVtX3ZyZWdzCQk9IEFSUkFZX1NJWkUocW1wX3BoeV92cmVn
X2wpLAo+ICsJLnZyZWdfbGlzdAkJPSBzbTg3NTBfdWZzcGh5X3ZyZWdfbCwKPiArCS5udW1fdnJl
Z3MJCT0gQVJSQVlfU0laRShzbTg3NTBfdWZzcGh5X3ZyZWdfbCksCj4gIAkucmVncwkJCT0gdWZz
cGh5X3Y2X3JlZ3NfbGF5b3V0LAo+IAo+ICB9Owo+IC0tCj4gMi40OC4xCj4gCgotLSAK4K6u4K6j
4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
