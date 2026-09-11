Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36E50C88E45
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 15:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bexQcRI/zIHk4SR+NwHSV/9Y+sE5U/kP03x61wQ7BU0=; b=W/mntUUYcZFVHQ
	x7CJ/G0sCF8l3NFFg90lggw8b6SjBRzF8Ia0z9r828f7zF58vTIXqemjd/1nqhIJc37SRqP7Exero
	Y1B4P3vSS/iLe4hWUZKMZ6cAwdDB1igEpv+ZHx5FLKr0T9bz6DXeWSKqI003dz8+U0Kef6Zv6SYzs
	0Ktf5J3l1hSXGkVQJ07Nfw1kRYfeRbIvrrmUtcXpG/bXc4xMzQL0yZ0JB/pSYQXUGiUXAeIri2Xby
	P9WMw475RsZq6k1Ao68EzRfnxOxDUR9ZDdTakLoY1cBM5zcAr9SUn9RRdLck7VPVe3YatzNFRAAzS
	8dzGlFx1RJwbEpSbKszA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53YS-0000000H9FB-3uyC;
	Fri, 11 Sep 2026 15:52:44 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53YR-0000000H9EX-1vEk
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 15:52:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B191060202;
	Fri, 11 Sep 2026 15:52:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E01061F000FF;
	Fri, 11 Sep 2026 15:52:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789141962;
	bh=DQF2TcrsjmsJUxKzEazdTNP9aOG6WziNEWQ8N0SmEGk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UiisYy433kVS5J0urxniFGL6xCiVs2HQZdXnRQ+sMZPuilGRxer5Us/g+jAkvLowD
	 v0VO8IPlFEhKYejp/X0dW4YcMMNYn9axMKdVN/K7etgttzV4UspfByBORVkTTqXtS4
	 0Xl7QTPV7fOVB43ZC8KlMLHVw23/XWPB9OSP/O7Pfqa+oxB9XzLZlVvoeNDu4sbfBC
	 bQQ272+Yk4iIdRB13vXayuThOW/wLIeNM15gHlzGDC2SxbLg9yCgkvynYeBtLkJXFg
	 sngKzV9u7zEiSRZEPd2sbHphZWl9Yg6dn6zXVndRVjvO8dQndICr3edOnC3MJB4HfS
	 tiY8kiMcHUEaw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 15/17] phy: qcom: edp: Add Nord LDO, TX lane and TX
 resistor calibration callbacks
To: "Nabige Aala" <nabige.aala@oss.qualcomm.com>
Cc: neil.armstrong@linaro.org, robh@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, vkoul@kernel.org, olteanv@gmail.com
In-Reply-To: <20260911-nord-drv-dt-v1-15-e25c073cf1b6@oss.qualcomm.com>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-15-e25c073cf1b6@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 15:52:41 +0000
Message-Id: <20260911155241.E01061F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBgcWNvbV9lZHBf
bGRvX2NvbmZpZ19ub3JkKClgIGZ1bmN0aW9uIHVuY29uZGl0aW9uYWxseSBoYXJkY29kZXMgTERP
IGNvbmZpZ3VyYXRpb24gdmFsdWVzLCBjb250cmFkaWN0aW5nIHRoZSByZXF1aXJlbWVudHMgZG9j
dW1lbnRlZCBpbiBpdHMgYmxvY2sgY29tbWVudCBhbmQgdGhlIGNvbW1pdCBtZXNzYWdlLgotLQoK
Y29tbWl0IGM0ZTNmYzVjNzkyOTkyZTMwOTNkNWE2NDNjZGVhZWU0OTlkMzI2ZjUKQXV0aG9yOiBS
aXRlc2ggS3VtYXIgPHJpdGVzaC5rdW1hckBvc3MucXVhbGNvbW0uY29tPgoKcGh5OiBxY29tOiBl
ZHA6IEFkZCBOb3JkIExETywgVFggbGFuZSBhbmQgVFggcmVzaXN0b3IgY2FsaWJyYXRpb24gY2Fs
bGJhY2tzCgpUaGlzIGNvbW1pdCBhZGRzIFBIWSBjb25maWd1cmF0aW9uIGNhbGxiYWNrcyBmb3Ig
dGhlIE5vcmQgcGxhdGZvcm0sIGludHJvZHVjaW5nCnNwZWNpZmljIExETyBsZXZlbHMsIFRYIGxh
bmUgY29udHJvbCBvZmZzZXRzLCBhbmQgVFggcmVzaXN0b3IgY2FsaWJyYXRpb24gY29kZXMKYmFz
ZWQgb24gSFBHIFRhYmxlIDItMS1kLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNv
bW0vcGh5LXFjb20tZWRwLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1lZHAuYwo+
IGluZGV4IDRkMWIyYzgxZDk1NjMuLjM2MWY0ZTQ2NzM1MTggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZWRwLmMKPiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29t
bS9waHktcWNvbS1lZHAuYwoKWyAuLi4gXQoKPiArLyoKPiArICogbm9yZCBMRE8gY29uZmlndXJh
dGlvbi4KPiArICogRnJvbSBIUEcgVGFibGUgMi0xLWQ6IExETyBDb25maWd1cmF0aW9uIHNlY3Rp
b24uCj4gKyAqIGVEUCBtb2RlOiAweEQxIGZvciByYXRlcyA8PSA4LjEgR2JwcywgMHgwMCBmb3Ig
VUhCUiAoPjguMSBHYnBzKS4KPiArICogRFAgbW9kZTogYWx3YXlzIDB4MDAuCj4gKyAqIEFsc28g
cHJvZ3JhbXMgRURQMl9EUF9QSFlfTERPX0NGRzogMHgwMyBmb3IgZURQIHJhdGVzIDw9IDguMUcs
IDB4MDAgb3RoZXJ3aXNlLgo+ICsgKi8KPiArc3RhdGljIGludCBxY29tX2VkcF9sZG9fY29uZmln
X25vcmQoY29uc3Qgc3RydWN0IHFjb21fZWRwICplZHApCj4gK3sKPiArCWNvbnN0IHN0cnVjdCBw
aHlfY29uZmlndXJlX29wdHNfZHAgKmRwX29wdHMgPSAmZWRwLT5kcF9vcHRzOwo+ICsJdTMyIGxk
b19jb25maWc7Cj4gKwl1MzIgcGh5X2xkb19jZmc7Cj4gKwo+ICsJbGRvX2NvbmZpZyA9IDB4ZDA7
Cj4gKwlwaHlfbGRvX2NmZyA9IDB4MDM7CgpbU2V2ZXJpdHk6IEhpZ2hdClRoZSBibG9jayBjb21t
ZW50IGRpcmVjdGx5IGFib3ZlIHNwZWNpZmllcyB0aGF0IHRoZSBMRE8gY29uZmlndXJhdGlvbgpz
aG91bGQgYmUgc2V0IGR5bmFtaWNhbGx5IGJhc2VkIG9uIHRoZSBvcGVyYXRpbmcgbW9kZSBhbmQg
bGluayByYXRlLCBzdWNoIGFzCjB4RDEgZm9yIGVEUCByYXRlcyA8PSA4LjEgR2JwcyBhbmQgMHgw
MCBmb3IgVUhCUiBvciBEUCBtb2RlLgoKRG9lcyB1bmNvbmRpdGlvbmFsbHkgaGFyZGNvZGluZyB0
aGVzZSB2YWx1ZXMgdG8gMHhkMCAod2hpY2ggYWxzbyBhcHBlYXJzIHRvIGJlCmEgdHlwbyBmb3Ig
MHhEMSkgYW5kIDB4MDMgY2F1c2UgaW5jb3JyZWN0IExETyB2b2x0YWdlcyB0byBiZSBhcHBsaWVk
IHdoZW4gdGhlClBIWSBpcyBpbml0aWFsaXplZCBmb3IgRFAgbW9kZSBvciBoaWdoLXNwZWVkIGVE
UCBsaW5rcz8KCkFwcGx5aW5nIHRoZXNlIHZhbHVlcyB1bmNvbmRpdGlvbmFsbHkgZHVyaW5nIGRl
dmljZSBwcm9iZSBvciBsaW5rIHRyYWluaW5nCm1pZ2h0IGxlYWQgdG8gUEhZIGluc3RhYmlsaXR5
IG9yIGxpbmsgZmFpbHVyZXMgd2hlbiBvcGVyYXRpbmcgaW4gRFAgbW9kZQpvciBoaWdoLXNwZWVk
IGVEUCBtb2RlcyB3aGVyZSB0aGUgaGFyZHdhcmUgcHJvZ3JhbW1pbmcgZ3VpZGUgcmVxdWlyZXMg
MHgwMC4KCj4gKwo+ICsJd3JpdGVsKGxkb19jb25maWcsIGVkcC0+dHgwICsgVFhuX0xET19DT05G
SUcpOwo+ICsJd3JpdGVsKGRwX29wdHMtPmxhbmVzID4gMiA/IGxkb19jb25maWcgOiAweDAwLCBl
ZHAtPnR4MSArIFRYbl9MRE9fQ09ORklHKTsKPiArCXdyaXRlbChwaHlfbGRvX2NmZywgZWRwLT5l
ZHAgKyBEUF9QSFlfTERPX0NGRyk7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KCi0tIApTYXNoaWtv
IEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MTEtbm9y
ZC1kcnYtZHQtdjEtMC1lMjVjMDczY2YxYjZAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTE1CgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
