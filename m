Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40B10C98306
	for <linux-phy@archiver.kernel.org>; Fri, 25 Sep 2026 05:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bVkL4nLy9ZtmnpMjAm/Nv3/3KfMaQsMJgIiQuPM9uag=; b=xbFxWy5ie8FSLT
	UkjJGeWUW8pWkFz3d9EBQbxsnZB5GjHFQvmFgySm8+Rp7Jn9z39IbNT2TdOiehHRHPBU/9giNEVf0
	S7rnzwTzG2W6GLy6B6wPfqhgrYu4wo4bwOVBvO/oDog9+iLltV27rho4vbjVOsoY3QqRflR53xQQq
	Gv/azi5wQa8ib5pAbQo5OR59QSAdC/KWErV35SXJrkCyEwrHg0rTVtqsTnfPtJqR7b+KSy9PLdsmM
	YuaV1QJAtTw6MATOo2/5CrQNr57zTDeSZ5kZXBwasg1VW6JJ8kSkk9zNSkCo7VEMUP/P7Ae/rvIeL
	rMv6KIZJSjT+QaHBDBDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9yxF-0000000CjFW-38vr;
	Fri, 25 Sep 2026 05:58:41 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9yxD-0000000CjFC-47kw
	for linux-phy@lists.infradead.org;
	Fri, 25 Sep 2026 05:58:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 18EBB6022F;
	Fri, 25 Sep 2026 05:58:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEBB61F000FF;
	Fri, 25 Sep 2026 05:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790315918;
	bh=LonwPXDbLWkLdOKb6x946d2eu5T8Ut26QLEtIaIBYSE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AcI6+tBSCYGU7UBEp/pTMvOkfGNspFIMlkwqbfojl+GMy1cwxgLFQpnGnMcVQXF/P
	 gSem5BJD3H/I+pfQj/+PfLW5YMNlnTgsF82A/1nnwFpz1pIb2meZ48wtxtK9R0zJIh
	 wBqjHPwMYT4Eoi20mHXxEdiNtXMJSTfKdSfdhL3qNnB/4gS4el0YNRoyyOEPQTV+1h
	 MrHKaV2DfF7ajASCQk7P/hw6wzbssLCYm7PS8ZuuvY+BnOzheLjGzY6RJBZ+N5opGW
	 Wgz+P0l38/xH6dGpf0D5z227SvdrTvRNSXuaiaaFmTVqlrwSTCwtB/S3eUW8u41rBR
	 FvxJ2GFXQoMlw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/3] dt-bindings: media: qcom,glymur-camss: Add
 Glymur CAMSS
To: "Nihal Kumar Gupta" <nihal.gupta@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, media-ci@linuxtv.org, robh@kernel.org
In-Reply-To: <20260925-glymur_camss-v4-2-d7c2983d6d7b@oss.qualcomm.com>
References: <20260925-glymur_camss-v4-0-d7c2983d6d7b@oss.qualcomm.com>
 <20260925-glymur_camss-v4-2-d7c2983d6d7b@oss.qualcomm.com>
Date: Fri, 25 Sep 2026 05:58:37 +0000
Message-Id: <20260925055837.EEBB61F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gZHQtYmluZGluZ3M6
IHZhbGlkYXRpb24gZmFpbHVyZSBkdWUgdG8gbWlzc2luZyBwaHlAIGNoaWxkIG5vZGVzIGFuZCBj
ZWxsIHByb3BlcnRpZXMKLS0KCmNvbW1pdCAyYzEwMGRlNDJlYTFiYjhjMjI2N2RhMDUxMmUxNmVk
MGY1NmI1MzM0CkF1dGhvcjogTmloYWwgS3VtYXIgR3VwdGEgPG5paGFsLmd1cHRhQG9zcy5xdWFs
Y29tbS5jb20+CgpkdC1iaW5kaW5nczogbWVkaWE6IHFjb20sZ2x5bXVyLWNhbXNzOiBBZGQgR2x5
bXVyIENBTVNTCgpUaGlzIGNvbW1pdCBpbnRyb2R1Y2VzIHRoZSBkZXZpY2UgdHJlZSBiaW5kaW5n
IGZvciB0aGUgUXVhbGNvbW0gR2x5bXVyIENhbWVyYQpTdWJzeXN0ZW0gKENBTVNTKS4gSXQgc3Bl
Y2lmaWVzIHRoZSByZXF1aXJlZCByZXNvdXJjZXMgYW5kIHBvcnRzLiBUaGUgY29tbWl0Cm1lc3Nh
Z2UgaW5kaWNhdGVzIHRoYXQgR2x5bXVyIHVzZXMgdGhlIG5ldyBQSFkgQVBJIHZpYSBzdGFuZGFs
b25lIHBoeUAgY2hpbGQKbm9kZXMuCgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvbWVkaWEvcWNvbSxnbHltdXItY2Ftc3MueWFtbCBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9xY29tLGdseW11ci1jYW1zcy55YW1sCj4gbmV3
IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi5hMGI3N2VkYzIxMjMxCj4g
LS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9t
ZWRpYS9xY29tLGdseW11ci1jYW1zcy55YW1sClsgLi4uIF0KPiArcmVxdWlyZWQ6Cj4gKyAgLSBj
b21wYXRpYmxlCj4gKyAgLSByZWcKPiArICAtIHJlZy1uYW1lcwo+ICsgIC0gY2xvY2tzCj4gKyAg
LSBjbG9jay1uYW1lcwo+ICsgIC0gaW50ZXJydXB0cwo+ICsgIC0gaW50ZXJydXB0LW5hbWVzCj4g
KyAgLSBpbnRlcmNvbm5lY3RzCj4gKyAgLSBpbnRlcmNvbm5lY3QtbmFtZXMKPiArICAtIGlvbW11
cwo+ICsgIC0gcG93ZXItZG9tYWlucwo+ICsgIC0gcG93ZXItZG9tYWluLW5hbWVzCj4gKyAgLSBw
b3J0cwo+ICsKPiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCgpbU2V2ZXJpdHk6IE1lZGl1
bV0KVGhlIGNvbW1pdCBtZXNzYWdlIG1lbnRpb25zIHRoYXQgR2x5bXVyIHVzZXMgdGhlIG5ldyBQ
SFkgQVBJIHZpYSBzdGFuZGFsb25lCnBoeUAgY2hpbGQgbm9kZXMuIFNpbmNlIGFkZGl0aW9uYWxQ
cm9wZXJ0aWVzIGlzIHNldCB0byBmYWxzZSBoZXJlLCBhbmQgdGhlcmUKYXJlIG5vIGRlZmluaXRp
b25zIGZvciBwaHlAIGNoaWxkIG5vZGVzIG9yIHRoZWlyIGFzc29jaWF0ZWQgcHJvcGVydGllcyBs
aWtlCiNhZGRyZXNzLWNlbGxzLCAjc2l6ZS1jZWxscywgb3IgcmFuZ2VzLCB3aWxsIHRoaXMgY2F1
c2UgZHQtdmFsaWRhdGUgdG8gcmVqZWN0CmRldmljZSB0cmVlcyB0aGF0IGltcGxlbWVudCB0aGVz
ZSBjaGlsZCBub2Rlcz8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28u
ZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MjUtZ2x5bXVyX2NhbXNzLXY0LTAtZDdjMjk4M2Q2ZDdiQG9z
cy5xdWFsY29tbS5jb20/cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
