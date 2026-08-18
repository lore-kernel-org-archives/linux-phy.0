Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 269C8C5DF7D
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 14:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6PyJUPVwR6pDv5ZoGF4Bh0OGUomJdM5zRqo+KCfam0M=; b=szACkuw4JBmabE
	JsFliXZKJXQGMl2ZmC75a7U8QTYLEABfhuWrzPnZGXA2vCAbCyFCKM4NNrd94/i6BJ8juQCXo2X6z
	4ULio8LQTMeUDF8QBiFmN3HUcZMt5UumIExOmHaXTGegKWAoH8ESW1CyPDxPqHQzHMOj/gXNEEU6R
	BEmAE649eZuyrfXUZVDCIEJuZKRGzNPUHS+vSboyCCOnfSCzvtLsFejXLDPkeBVvL5aOjeDY9vglX
	x7G1aor69t4LIE37c8XRps44C5Z0tuV+8ukQN4jDxQuM99Z/7lyhRyAVUmD/wBGiZUTYRSsHu8swv
	DGTpe92A+e6m5OPr/JMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwKyu-00000008Bps-2zpS;
	Tue, 18 Aug 2026 14:40:00 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwKyt-00000008BpG-1M6K
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 14:39:59 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 351B5601DE;
	Tue, 18 Aug 2026 14:39:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62EDD1F000E9;
	Tue, 18 Aug 2026 14:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787063997;
	bh=er/0nV7w+oGeRHh6AqEbsRwMsWqcUWi2VR+u+1xufFo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BVr6at1ZWynlzycbyMfW5uRRkUD2T6Rm0TBEyd8rxIIqqw74GzM2QQxPWnjjuXHTu
	 ZHTIjbYy4gnz72PsVGGziqzbtbVtPeUm3EHiqkaIqnMZ9KTz7cF2+1SuMIgtkdMKm5
	 U1X5y1frj6Kmww7FuXXz6eCx17cpoUzoZVC4sH6sMk5rjbVViMvbeh1srqjbekWIq2
	 TCdy1Mw/4TEH60cCCOt7fmi9SFWPMFxVUjbnnPs+nBHsazKUFL1ZDdXDiEfAAUko6y
	 HwOitv1LstV/zXB9d/yu6JpQcnqFum9e0toO10DM27J8VsFOnYR4ftBCaKNceQIdmc
	 pEVBT19WTsBKw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/7] dt-bindings: usb: ti,musb-am33xx: Convert to DT
 schema
To: "Bhargav Joshi" <j.bhargav.u@gmail.com>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, robh@kernel.org, conor+dt@kernel.org, dmaengine@vger.kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, Frank.Li@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260818-ti-am33-usb-v2-4-66fd44d66824@gmail.com>
References: <20260818-ti-am33-usb-v2-0-66fd44d66824@gmail.com>
 <20260818-ti-am33-usb-v2-4-66fd44d66824@gmail.com>
Date: Tue, 18 Aug 2026 14:39:56 +0000
Message-Id: <20260818143957.62EDD1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gTWlzc2luZyB0eXBlIHJl
ZmVyZW5jZSBmb3IgYG1lbnRvcixyYW0tYml0c2AgdmVuZG9yIHByb3BlcnR5IGluIERUIHNjaGVt
YS4KLS0KCi0tLSBQYXRjaCBbNF06IFtQQVRDSCB2MiA0LzddIGR0LWJpbmRpbmdzOiB1c2I6IHRp
LG11c2ItYW0zM3h4OiBDb252ZXJ0IHRvIERUIHNjaGVtYSAtLS0KY29tbWl0IGNmMzUyOWNkNjc5
NWNiOTllYmE1ZmM2MjRiOTk3MmUyNDU0OGI0ZTgKQXV0aG9yOiBCaGFyZ2F2IEpvc2hpIDxqLmJo
YXJnYXYudUBnbWFpbC5jb20+CgpkdC1iaW5kaW5nczogdXNiOiB0aSxtdXNiLWFtMzN4eDogQ29u
dmVydCB0byBEVCBzY2hlbWEKClRoaXMgY29tbWl0IGNvbnZlcnRzIHRoZSBUSSBBTTMzeHggTVVT
QiB0ZXh0IGJpbmRpbmdzIHRvIERUIHNjaGVtYS4gSXQKYWxzbyBpbnRyb2R1Y2VzIHNldmVyYWwg
dXBkYXRlcyBkdXJpbmcgdGhlIGNvbnZlcnNpb24sIHN1Y2ggYXMgYWxsb3dpbmcgYW4Kb3B0aW9u
YWwgdmJ1cyBpbnRlcnJ1cHQgYW5kIGFkZGluZyBpbnRlcmZhY2UtdHlwZSBhbmQgcGh5LW5hbWVz
IHByb3BlcnRpZXMKbmF0aXZlbHkgdXNlZCBieSB0aGUgZG04MTZ4IGhhcmR3YXJlLgoKPiBkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi90aSxtdXNiLWFt
MzN4eC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi90aSxtdXNi
LWFtMzN4eC55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAw
Li5jYzAxZWRjNzVkMTFlCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy91c2IvdGksbXVzYi1hbTMzeHgueWFtbApbIC4uLiBdCj4gKyAgbWVu
dG9yLG51bS1lcHM6Cj4gKyAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9u
cy91aW50MzIKPiArICAgIGRlc2NyaXB0aW9uOiBTcGVjaWZpZXMgdGhlIG51bWJlciBvZiBlbmRw
b2ludHMuCj4gKyAgICBjb25zdDogMTYKPiArCj4gKyAgbWVudG9yLHJhbS1iaXRzOgo+ICsgICAg
ZGVzY3JpcHRpb246IFNwZWNpZmllcyB0aGUgcmFtIGFkZHJlc3Mgc2l6ZS4KPiArICAgIGNvbnN0
OiAxMgoKW1NldmVyaXR5OiBMb3ddCldpbGwgdGhpcyBjYXVzZSBzY2hlbWEgdmFsaWRhdGlvbiB0
byBmYWlsIGR1cmluZyBtYWtlIGR0X2JpbmRpbmdfY2hlY2s/CgpXaXRob3V0IGEgdHlwZSByZWZl
cmVuY2UsIHRoZSBhcnJheSA8MTI+IGluIGRldmljZSB0cmVlcyBtaWdodCBiZSB2YWxpZGF0ZWQK
YXMgYSBtYXRyaXggYWdhaW5zdCBjb25zdDogMTIgaW5zdGVhZCBvZiBhIHNjYWxhciBpbnRlZ2Vy
LCBjYXVzaW5nIGEgdHlwZQptaXNtYXRjaCBlcnJvci4gCgpTaG91bGQgdGhpcyBpbmNsdWRlIGEg
JHJlZiB0byAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzIKc2ltaWxhciB0
byBtZW50b3IsbnVtLWVwcz8KCj4gKwo+ICsgIG1lbnRvcixwb3dlcjoKPiArICAgICRyZWY6IC9z
Y2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3VpbnQzMgo+ICsgICAgZGVzY3JpcHRpb246
IENvbnRyb2xsZXIgc3VwcGx5IGNhcGFjaXR5IChpbiBtQSkgd2hlbiBvcGVyYXRpbmcgaW4gaG9z
dCBtb2RlLgo+ICsgICAgY29uc3Q6IDUwMAoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBz
Oi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgxOC10aS1hbTMzLXVzYi12Mi0wLTY2ZmQ0
NGQ2NjgyNEBnbWFpbC5jb20/cGFydD00CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
