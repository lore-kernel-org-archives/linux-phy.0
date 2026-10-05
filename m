Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A2B6CA5FF0
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 22:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uAVI+SRJa09RjEE5ONmjH4ZivceyBOBr2hTYMOiFw1E=; b=oONGR+YISx9UnI
	pDB5BEVUPhz0oynMrpTSgxfht3vhEMOJ50Gz5knPpXoT8hfUh3lJ68YzW8Sbxnrvd7SwbUwKS/eNi
	QKRHFnbb+eEeLasdmych0BnikECiFZLmtE/tXQk+0IElt4Xd7CNNIrIaqieBDBsfmp9LcuA2RKZeV
	QpclpO+URLgtOonfotraxOJjkM/mgw8Z//Pb3E/uH3mkxXsPkQHsBczcdcu+fxLP6aWFDq2J4AEk8
	IzMKULfn/yEsvsIq6+65ZBxctDRKykzQcBicGD2hRCKMlO9uQ2dbmUTVVmLMh+mL3/p8FPIwntWxR
	XHgVkkdxYisTJNZz0kKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDr1g-0000000HFTV-3iCq;
	Mon, 05 Oct 2026 22:19:16 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDr1f-0000000HFTN-1i59
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 22:19:15 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 861E660008;
	Mon,  5 Oct 2026 22:19:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D20A51F000FF;
	Mon,  5 Oct 2026 22:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791238754;
	bh=9V+Voe+BN23Z4CMadXnt0HkrJYx2YpQ/zBzSl6egvVk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=aDaWt2JLvC65oueYRsauLAZDjpqB+SrGFEw3v2GgLnLKBGi4PQKytOCr91n6YU64G
	 6hjGGweXuMFAL5q6ab2A+tF0vJjBfv2Qo6yWT/nMybmN9viMNCSZ5kHLWxItVcai6x
	 hYJ1IAGsOIUN1Xu7gM0s1l2SBQhDCpWLhkpcDEkhq78qrdyjjeOJW/HzXhNT4F1vMt
	 4PZm8FsIZB3ER1uFUnBBZ0lkUvn6qEKRz0pjKD3f+5pPUWCzVUkh3RbmZTHGHrb4eN
	 PseshbFepC6g7gr+8bl0DPWBzBWDngu5bQmczOWHKyeL0KeDN0i4aqyVgEHKB2cDX3
	 qiKmAU4CHHcww==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 1/2] dt-bindings: phy: rockchip: naneng-combphy: add
 rockchip,sgmii-mac-sel property
To: "Coia Prant" <coiaprant@gmail.com>
Cc: devicetree@vger.kernel.org, vkoul@kernel.org, conor+dt@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, robh@kernel.org
In-Reply-To: <20261005221229.1095843-2-coiaprant@gmail.com>
References: <20261005221229.1095843-1-coiaprant@gmail.com>
 <20261005221229.1095843-2-coiaprant@gmail.com>
Date: Mon, 05 Oct 2026 22:19:13 +0000
Message-Id: <20261005221913.D20A51F000FF@smtp.kernel.org>
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
IHNjaGVtYSB2YWxpZGF0aW9uIGZhaWxzIGZvciBub24tUkszNTY4IHZhcmlhbnRzIGR1ZSB0byBk
ZWZhdWx0IGluamVjdGlvbgotLQoKY29tbWl0IGYzMGMyNDUwNTI4MDkyYjk3NWM4ODk5YWQ2MTdm
NGZhMjBkYWI0MjIKQXV0aG9yOiBDb2lhIFByYW50IDxjb2lhcHJhbnRAZ21haWwuY29tPgoKZHQt
YmluZGluZ3M6IHBoeTogcm9ja2NoaXA6IG5hbmVuZy1jb21icGh5OiBhZGQgcm9ja2NoaXAsc2dt
aWktbWFjLXNlbCBwcm9wZXJ0eQoKT24gUkszNTY4LCB0aGUgU0dNSUkgaW50ZXJmYWNlIGNhbiBi
ZSByb3V0ZWQgdG8gZWl0aGVyIEdNQUMwIG9yCkdNQUMxIHZpYSB0aGUgcGlwZV9zZ21paV9tYWNf
c2VsIGJpdCBpbiB0aGUgcGlwZSBHUkYgcmVnaXN0ZXJzLgpBZGQgdGhlIG9wdGlvbmFsICJyb2Nr
Y2hpcCxzZ21paS1tYWMtc2VsIiBwcm9wZXJ0eSB0byBhbGxvdyB0aGUKZGV2aWNlIHRyZWUgdG8g
c2VsZWN0IHdoaWNoIEdNQUMgY29udHJvbGxlciBpcyB1c2VkIGZvciBTR01JSS4KCj4gZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcGh5LXJvY2tjaGlw
LW5hbmVuZy1jb21icGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGh5L3BoeS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS55YW1sCj4gaW5kZXggMzc5YjA4YmQ5ZTk3
YS4uOGU4OThiY2U5YWY3MyAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGh5L3BoeS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS55YW1sCj4gKysrIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktcm9ja2NoaXAtbmFuZW5nLWNv
bWJwaHkueWFtbAo+IEBAIC04MCw2ICs4MCwxNSBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgZGVzY3Jp
cHRpb246Cj4gICAgICAgIFNvbWUgYWRkaXRpb25hbCBwaXBlIHNldHRpbmdzIGFyZSBhY2Nlc3Nl
ZCB0aHJvdWdoIEdSRiByZWdzLgo+ICAKPiArICByb2NrY2hpcCxzZ21paS1tYWMtc2VsOgo+ICsg
ICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvdWludDMyCj4gKyAgICBl
bnVtOiBbMCwgMV0KPiArICAgIGRlZmF1bHQ6IDEKPiArICAgIGRlc2NyaXB0aW9uOgo+ICsgICAg
ICBTZWxlY3QgZ21hYzAgb3IgZ21hYzEgdG8gYmUgdXNlZCBhcyBTR01JSSBjb250cm9sbGVyLgo+
ICsgICAgICBUaGUgaGFyZHdhcmUgcmVzZXQgdmFsdWUgaXMgR01BQzEgKDEpLiBTZXQgdGhpcyB0
byAwIHRvIHJvdXRlCj4gKyAgICAgIFNHTUlJIHRvIEdNQUMwLgo+ICsKPiAgICAiI3BoeS1jZWxs
cyI6Cj4gICAgICBjb25zdDogMQoKWyAuLi4gXQoKPiBAQCAtMTA1LDYgKzExNCwxMCBAQCBhbGxP
ZjoKPiAgICAgICAgICAgIG1heEl0ZW1zOiAxCj4gICAgICAgICAgcmVzZXQtbmFtZXM6Cj4gICAg
ICAgICAgICBtYXhJdGVtczogMQo+ICsgICAgICAgIHJvY2tjaGlwLHNnbWlpLW1hYy1zZWw6IHRy
dWUKPiArICAgIGVsc2U6Cj4gKyAgICAgIHByb3BlcnRpZXM6Cj4gKyAgICAgICAgcm9ja2NoaXAs
c2dtaWktbWFjLXNlbDogZmFsc2UKCltTZXZlcml0eTogTWVkaXVtXQpXaWxsIHRoaXMgYnJlYWsg
ZHRic19jaGVjayBmb3Igbm9uLVJLMzU2OCBwbGF0Zm9ybXM/CgpXaGVuIHRoZSBkdHNjaGVtYSB0
b29saW5nIHByb2Nlc3NlcyBhIGRldmljZSBub2RlIGZvciBhIG5vbi1SSzM1NjggY29tcGF0aWJs
ZQoobGlrZSByb2NrY2hpcCxyazM1ODgtbmFuZW5nLWNvbWJwaHkpLCBpdCBpbmplY3RzIHRoZSB0
b3AtbGV2ZWwgZGVmYXVsdCB2YWx1ZQpvZiAxIGludG8gdGhlIG5vZGUgZGF0YS4KClRoZW4gdGhl
IGFsbE9mIGV2YWx1YXRpb24gYXBwbGllcyB0aGlzIGVsc2UgYnJhbmNoLCB3aGljaCBlbmZvcmNl
cwpyb2NrY2hpcCxzZ21paS1tYWMtc2VsOiBmYWxzZSAobWVhbmluZyB0aGUgcHJvcGVydHkgbXVz
dCBub3QgZXhpc3QpLgoKVGhlIHByZXNlbmNlIG9mIHRoZSBpbmplY3RlZCBkZWZhdWx0IHZhbHVl
IHZpb2xhdGVzIHRoaXMgY29uc3RyYWludCwgY2F1c2luZwp2YWxpZGF0aW9uIHRvIGZhaWwuCgot
LSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIw
MjYxMDA1MjIxMjI5LjEwOTU4NDMtMS1jb2lhcHJhbnRAZ21haWwuY29tP3BhcnQ9MQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
