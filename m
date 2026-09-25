Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83AFAC98306
	for <linux-phy@archiver.kernel.org>; Fri, 25 Sep 2026 06:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xiqQVf3HSWh8kqP1EBSQw5GVKhdZ66Nbj1IoqN1+uaI=; b=xpFxKeAhIFug5U
	M1R5tAcQqRq0UAyPdbQsoyqQFt6+qW7yYsWpzzGMvDWY+H0PxVSdqJgYRswkj987vFZtAgo9loUAW
	ZYzsaXHsgOqhsTYXllt5u6Sqju0WxgVGDavin+eKixcXiJKyr1dKEXBrN0nG0W1iWxHo1A7frdsIl
	1AFTFsa/4A/KZZoI67DUCcUofkBgBiJKiY2dsBMO6ARXVZXVKwf2ugcQ3xu/aqmrKzYsZ3lo0XMfg
	xpouEADmVZDh5Cx/PEr7Iw843KrRiH52K5GHQH6jp/WsOudguByfZGBKktyc4viiLVZGcgwil+S5T
	ThipiGT4G2W3c5fegx9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9z0C-0000000CjLS-0GYa;
	Fri, 25 Sep 2026 06:01:44 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9z09-0000000CjLL-3NqB
	for linux-phy@lists.infradead.org;
	Fri, 25 Sep 2026 06:01:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D5AD76022E;
	Fri, 25 Sep 2026 06:01:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 154E21F000FF;
	Fri, 25 Sep 2026 06:01:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790316100;
	bh=QPXGKPr9hn/dwplM+tc+lJNLm6kQfonUAc4Ik1Qhd1c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LATZXVZM9+hDHCKdiLIMIuijuJzJDq/eU0Ku0VFremiTBgDGJPXb6rBEaYrNa4ROx
	 FdeImP7by2JYO+5VJB02GHAqPoGkYWmY7ZL6BWzdj4+5KtmFgzPIsaSkdUqzZaXCPD
	 5xMs/96vzbF5L7lBE/rL4k6tWMw9QCYLZ8sQdWC11a+Vz1BAziETu/cATpcR1Xmvsl
	 gp7jWnnMS3napSyYMMa5oM4bE7tqhL1JSJ9s+Ezw92paRHFKRn9VQToF0EVvGgOXw1
	 Jh5HovZsrT2vUMwd71dZoQ0YtAmQot5t1k8NlPpP4Jd93g2UhC4lIOQvtTmwkaevij
	 XvTl2elsPUJJg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 3/3] media: qcom: camss: Add Glymur compatible
To: "Nihal Kumar Gupta" <nihal.gupta@oss.qualcomm.com>
Cc: conor+dt@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, media-ci@linuxtv.org, vkoul@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260925-glymur_camss-v4-3-d7c2983d6d7b@oss.qualcomm.com>
References: <20260925-glymur_camss-v4-0-d7c2983d6d7b@oss.qualcomm.com>
 <20260925-glymur_camss-v4-3-d7c2983d6d7b@oss.qualcomm.com>
Date: Fri, 25 Sep 2026 06:01:39 +0000
Message-Id: <20260925060140.154E21F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIG1lZGlhOiBxY29tOiBj
YW1zczogcHJvYmUgZmFpbHVyZSBvbiBHbHltdXIgZHVlIHRvIGhhcmRjb2RlZCBDU0lQSFkgcmVz
b3VyY2VzCi0tCgpjb21taXQgNzM5YjAwYmVkMDdiNTE5ZTFkYzIyYmZkZmFmMjE0NzYyMGNiOWRk
ZQpBdXRob3I6IE5paGFsIEt1bWFyIEd1cHRhIDxuaWhhbC5ndXB0YUBvc3MucXVhbGNvbW0uY29t
PgoKbWVkaWE6IHFjb206IGNhbXNzOiBBZGQgR2x5bXVyIGNvbXBhdGlibGUKClRoaXMgY29tbWl0
IGFkZHMgYSBuZXcgY29tcGF0aWJsZSBzdHJpbmcgInFjb20sZ2x5bXVyLWNhbXNzIiBmb3IgdGhl
IEdseW11cgpwbGF0Zm9ybS4gSXQgbWFwcyB0aGlzIGNvbXBhdGlibGUgdG8geDFlODAxMDBfcmVz
b3VyY2VzLCBzaW5jZSBHbHltdXIncwpjYW1lcmEgc3Vic3lzdGVtIGlzIGEgZnVuY3Rpb25hbCBz
dWJzZXQgb2YgWDFFODAxMDAuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3Fjb20vY2Ftc3MvY2Ftc3MuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9j
YW1zcy5jCj4gaW5kZXggMjNmM2NjMzBhMTVhNS4uOTk1NGE5OTk4MTAwNCAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MuYwo+ICsrKyBiL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5jCj4gQEAgLTU3NTEsNiArNTc1MSw3
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGNhbXNzX2R0X21hdGNoW10gPSB7
Cj4gIAl7IC5jb21wYXRpYmxlID0gInFjb20sc204NTUwLWNhbXNzIiwgLmRhdGEgPSAmc204NTUw
X3Jlc291cmNlcyB9LAo+ICAJeyAuY29tcGF0aWJsZSA9ICJxY29tLHNtODY1MC1jYW1zcyIsIC5k
YXRhID0gJnNtODY1MF9yZXNvdXJjZXMgfSwKPiAgCXsgLmNvbXBhdGlibGUgPSAicWNvbSx4MWU4
MDEwMC1jYW1zcyIsIC5kYXRhID0gJngxZTgwMTAwX3Jlc291cmNlcyB9LAo+ICsJeyAuY29tcGF0
aWJsZSA9ICJxY29tLGdseW11ci1jYW1zcyIsIC5kYXRhID0gJngxZTgwMTAwX3Jlc291cmNlcyB9
LAoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRoaXMgaGFyZGNvZGVkIHJlc291cmNlIG1hcHBpbmcg
Y2F1c2UgdGhlIHByb2JlIHRvIGZhaWwgb24gR2x5bXVyIGhhcmR3YXJlPwoKVGhlIGNvbW1pdCBt
ZXNzYWdlIG5vdGVzIHRoYXQgR2x5bXVyIG9ubHkgaGFzIHRocmVlIENTSVBIWSBpbnN0YW5jZXMs
CndoaWxlIFgxRTgwMTAwIGhhcyBmb3VyLiBCZWNhdXNlIHgxZTgwMTAwX3Jlc291cmNlcyBzcGVj
aWZpZXMgNCBDU0lQSFkKaW5zdGFuY2VzLCBjYW1zc19wcm9iZSgpIC0+IGNhbXNzX2luaXRfc3Vi
ZGV2aWNlcygpIHdpbGwgdW5jb25kaXRpb25hbGx5CmV4ZWN1dGUgaXRzIGluaXRpYWxpemF0aW9u
IGxvb3AgNCB0aW1lczoKCmNhbXNzX2luaXRfc3ViZGV2aWNlcygpIHsKICAgIC4uLgogICAgZm9y
IChpID0gMDsgaSA8IGNhbXNzLT5yZXMtPmNzaXBoeV9udW07IGkrKykgewogICAgICAgIHJldCA9
IG1zbV9jc2lwaHlfc3ViZGV2X2luaXQoY2Ftc3MsICZjYW1zcy0+Y3NpcGh5W2ldLAogICAgLi4u
Cn0KCkR1cmluZyB0aGUgaXRlcmF0aW9uIGZvciB0aGUgbWlzc2luZyBpbnN0YW5jZSwgbXNtX2Nz
aXBoeV9zdWJkZXZfaW5pdCgpIHdpbGwKYXR0ZW1wdCB0byBhY3F1aXJlIG1lbW9yeSBhbmQgaW50
ZXJydXB0IHJlc291cmNlcyB2aWEKZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlX2J5bmFt
ZSgpOgoKbXNtX2NzaXBoeV9zdWJkZXZfaW5pdCgpIHsKICAgIC4uLgogICAgY3NpcGh5LT5iYXNl
ID0gZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlX2J5bmFtZShwZGV2LCByZXMtPnJlZ1sw
XSk7CiAgICBpZiAoSVNfRVJSKGNzaXBoeS0+YmFzZSkpCiAgICAgICAgcmV0dXJuIFBUUl9FUlIo
Y3NpcGh5LT5iYXNlKTsKICAgIC4uLgp9CgpXaGVuIHRoaXMgbG9va3VwIGZhaWxzIG9uIEdseW11
ciBkdWUgdG8gdGhlIG1pc3NpbmcgImNzaXBoeTIiIGluc3RhbmNlLAp3b24ndCBpdCBwcm9wYWdh
dGUgYW4gLUVJTlZBTCBlcnJvciBiYWNrIHRvIGNhbXNzX3Byb2JlKCksIGNhdXNpbmcgdGhlCmVu
dGlyZSBkcml2ZXIgaW5pdGlhbGl6YXRpb24gdG8gYWJvcnQ/Cgo+ICAJeyB9Cj4gIH07Cj4KCi0t
IApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAy
NjA5MjUtZ2x5bXVyX2NhbXNzLXY0LTAtZDdjMjk4M2Q2ZDdiQG9zcy5xdWFsY29tbS5jb20/cGFy
dD0zCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
