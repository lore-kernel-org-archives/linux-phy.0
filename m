Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DC73C79FB6
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 11:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CkegggfZKUcPBQ9Zw2IBBoTtucbB+TAW6gBw6qSY4/s=; b=amMiGJwZy15GPT
	8gylGh3GuDaUNJ9tiwgNwKY/t6sit0lXKQLVHIFnZtha+ObPSQgF6Xkbc3aNUu77Hn/9gsv/b932/
	GKYYMHeRqc5hSRlc5qdTs8eUUDYIl8S7fPBM+VG5JtzxvG4bjlC7Fw510P6LdKGVHVWQyyhW1ODcu
	csRUDtTt9tdHeuS5hOxPotnyvPROHu1S3PbeILvIjrOJypzugLzskGa0oww/xm0Ke2sF3KC5uFQs6
	3E/V2+mipwBYMW4QULMeFysOZS04L+cMPdMCHi7NQNFxK0/2wX/0GPT/I6tSVEoF+fLiipGGfiN5Z
	dseRR3ZA6zg+gJxirhTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4GsO-0000000Bd94-3b1I;
	Wed, 09 Sep 2026 11:54:04 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4GsK-0000000Bd8X-3WgN
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 11:54:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 979E8403AB;
	Wed,  9 Sep 2026 11:54:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 129931F00A3D;
	Wed,  9 Sep 2026 11:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788954840;
	bh=bppV9sZYQPJ832aMUqwuuqcPZt+50nokbdiWaISMnTQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CEHL/abomsEgW1h4eW0xxBCiNW9NVpGB18MH1QrRaaTeoRIZLX+72NiX61U36jGxh
	 Y3CYLfvU+PovQRu3ZxzPQZp/xlxEMpnrgZWdshR9o3BPtJ/2vBp4CLluKDsP1Nq7e1
	 vu9zOgCfsYpawcFpls2ppxzGBmlTVSW17PhCIdSpoLh6x6WdVUe7L1N2OUa3ZNP26Z
	 ByrJNtuZO6OoOGlLWy6qJvcEBtTg63GcO3feE+ix+ApXnBtf2tLOZl7eEh4ejN51l1
	 TJxVxAeSl/D3XgZXiZlov/J3dHU5L2Njd4vHBSKgejJRuBUtaUqgOaGRCILquI/6Ff
	 Yym0yUyAe5EWg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/5] dt-bindings: phy: qcom: add Nord QMP PCIe PHY
 binding
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, neil.armstrong@linaro.org, linux-pci@vger.kernel.org
In-Reply-To: <20260909-nord-v3-1-b0a82721c547@oss.qualcomm.com>
References: <20260909-nord-v3-0-b0a82721c547@oss.qualcomm.com>
 <20260909-nord-v3-1-b0a82721c547@oss.qualcomm.com>
Date: Wed, 09 Sep 2026 11:53:59 +0000
Message-Id: <20260909115400.129931F00A3D@smtp.kernel.org>
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

PiBEb2N1bWVudCB0aGUgUENJZSBQSFkgZm91bmQgb24gdGhlIFF1YWxjb21tIE5vcmQgcGxhdGZv
cm0uCj4gCj4gTm9yZCBoYXMgYSBHZW41LWNhcGFibGUgUU1QIFBDSWUgUEhZIHRoYXQgY2FuIG9w
ZXJhdGUgaW4gbXVsdGlwbGUKPiBsYW5lIGNvbmZpZ3VyYXRpb25zIHVzaW5nIGZvdXIgUEhZIHNl
Z21lbnRzIChBL0IvQy9EKS4gVGhlIGFjdGl2ZQo+IHRvcG9sb2d5IGlzIHNlbGVjdGVkIGJ5IGZp
cm13YXJlIHRocm91Z2ggYSBUQ1NSIGNvbmZpZ3VyYXRpb24KPiByZWdpc3RlciBhbmQgbWF5IGJl
IGNvbmZpZ3VyZWQgYXMgeDE2LCB4OCt4OCwgeDgreDQreDQsIG9yCj4geDgreDQreDIreDIuCj4g
Cj4gVGhlIGJpbmRpbmcgZGVzY3JpYmVzIHRoZSByZWdpc3RlciByZWdpb25zLCBjbG9ja3MsIHJl
c2V0cywgcG93ZXIKPiBkb21haW5zLCByZWd1bGF0b3JzLCBQSFkgcHJvdmlkZXIgaW50ZXJmYWNl
LCBjbG9jayBwcm92aWRlciBpbnRlcmZhY2UsCj4gYW5kIHRoZSBxY29tLGxpbmstbW9kZSBwcm9w
ZXJ0eSB1c2VkIGJ5IHRoZSBkcml2ZXIgdG8gZGlzY292ZXIgdGhlCj4gYWN0aXZlIGxhbmUgY29u
ZmlndXJhdGlvbiBwcm9ncmFtbWVkIGJ5IGZpcm13YXJlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEty
aXNobmEgQ2hhaXRhbnlhIENodW5kcnUgPGtyaXNobmEuY2h1bmRydUBvc3MucXVhbGNvbW0uY29t
PgoKU2FzaGlrbyBoYXMgcmV2aWV3ZWQgdGhpcyBwYXRjaCBhbmQgZm91bmQgbm8gaXNzdWVzLiBJ
dCBsb29rcyBncmVhdCEKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28u
ZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MDktbm9yZC12My0wLWIwYTgyNzIxYzU0N0Bvc3MucXVhbGNv
bW0uY29tP3BhcnQ9MQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
