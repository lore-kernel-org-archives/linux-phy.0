Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E2D9C433FE
	for <linux-phy@archiver.kernel.org>; Mon,  3 Jan 2022 14:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=inkFTg8PyeyImJFR35z8fpCbEkaE7ZLEDMAHTlKSwVk=; b=Bg2gIQ/zd6RiL0
	2LmLdVqJcJfrHpAvMEpiq78Vf1LLKeQIk7J5XZRhvmO7bcBIv5TLaFG79Dx6OdN+Sbqk/P6WWDtjp
	BpKSCLe8RGTkip6xQAykaycj0KNpVbZkkXJ9e5AFLthxtOCvN1GrXlYsVNtfxtt7+70C2iVEPoqjW
	Ic3UGgC133LFneagBVUk83dsgniGRjeA2vHTBfuF2cywSpEQW8PQsmfaoXFazluNfxR+zTjWkAwGF
	dkKFs9L9Pswn4Dn2pphwdzdveq7vZ203lCUihfU+SiZocqLhv/aPoNQ8EO7Ezan3edDEQQQ2D3RUI
	RsvVBKbJjjJnQ9SFaSOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4ONz-009CM2-QC; Mon, 03 Jan 2022 14:32:31 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4ONx-009CLK-A8
 for linux-phy@lists.infradead.org; Mon, 03 Jan 2022 14:32:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id B82836111C;
 Mon,  3 Jan 2022 14:32:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D681C36AED;
 Mon,  3 Jan 2022 14:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1641220346;
 bh=2R/vT5PYrv4pGEbU4bI6HlTM/+DhqVhkSRgEU+OeoMs=;
 h=From:To:Cc:Subject:Date:From;
 b=SA2gNcaawZovs14jKBM6BWwwznJnHJl+3mWDMbLA3/j/Ju/aDAi6uGlG8m6A1kEWI
 DCooiY19WYhJT0LtQMsmTmp30+LlJztbuCFIMXhAxt5A129txRDDebDzlzasJl9vnZ
 +bo+O8PEN9+Lgrc1s75l3fmos41E3wwUev3WFv6v6ItxquK8mcYoVVryUpQmBa64cX
 flZIQVe/NHF+/+3FCL4pF9RKSpEJB3GqCC2Mwv89ezDtXszXOA9wt1lH5mnmCn1mhX
 vkuAqwI90OAxJHiRcHpXLpx1y+xHLDt8BKeUDkLJbKPLUqQYSREWuyskIGl1DoOXMO
 1zqef53KN1SVg==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 pali@kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
Subject: [PATCH phy v3 0/5] Armada 3720 comphy native implementation
Date: Mon,  3 Jan 2022 15:32:15 +0100
Message-Id: <20220103143220.13070-1-kabel@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_063229_481651_96707640 
X-CRM114-Status: GOOD (  13.95  )
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

SGVsbG8gVmlub2QsCgp0aGlzIGlzIHYzIG9mIHNlcmllcyBjb252ZXJ0aW5nIEEzNzIwIGNvbXBo
eSB0byBuYXRpdmUga2VybmVsCmltcGxlbWVudGF0aW9uLgoKVGVzdGVkIG9uIFR1cnJpcyBNT1gg
YW5kIEVTUFJFU1NPYmluICh0ZXN0ZWQgYWxsIHN1cHBvcnRlZCBQSFkgbW9kZXM6CmV0aGVybmV0
LCBQQ0llLCBVU0IzLCBTQVRBKS4KCkNoYW5nZXMgc2luY2UgdjI6Ci0gcmVtb3ZlZCBkZXZpY2Ut
dHJlZSBjaGFuZ2luZyBwYXRjaCwgR3JlZ29yeSBhcHBsaWVkIGl0IG9uIG12ZWJ1L2R0NjQKLSBj
aGFuZ2VkIHJhdyBzcGluIGxvY2sgdG8gb3JkaW5hcnkgc3BpbiBsb2NrCi0gZml4ZWQgaW5kZW50
YXRpb24gb2YgZ2JlX3BoeV9pbml0X2ZpeAotIHVzZSBGSUVMRF9QUkVQKCkgbWFjcm8KCkNoYW5n
ZXMgc2luY2UgdjEgKGFsbCBjaGFuZ2VzIGluIHBhdGNoIDIvNik6Ci0gcmVmYWN0b3JlZCB0byB1
c2UgR0VOTUFTSygpCi0gZml4ZWQgdmFyaW91cyByZWdpc3RlciBuYW1lcyB0byBjb25mb3JtIHRv
IEZ1bmN0aW9uYWwgU3BlY2lmaWNhdGlvbgotIHJlZmFjdG9yZWQgdmFyaW91cyByZWdpc3RlciBu
YW1lcyB0byBoYXZlIHVuaWZvcm0gbmFtaW5nCi0gcmVmYWN0b3JlZCByZWdpc3RlciBhY2Nlc3Mg
aW50byBvbmUgZnVuY3Rpb24sIHdoaWNoIGRlY2lkZXMgd2hldGhlcgogIHRoZSBhY2Nlc3Mgc2hv
dWxkIGJlIGRpcmVjdCBvciBpbmRpcmVjdCwgc28gYXMgdG8gbm90IGhhdmUgYWxsIHRoZXNlCiAg
Y2hlY2tzIGRvbmUgZXZlcnl3aGVyZSBpbiB0aGUgY29kZQotIG1vdmVkIGFyb3VuZCBvbmUgcmVn
aXN0ZXIgZGVmaW5pdGlvbiB0byBoYXZlIHRoZSByZWdpc3RlcnMgc29ydGVkCiAgYWNjb3JkaW5n
IHRvIHRoZWlyIG9mZnNldAotIGFkZGVkIGNvbW1lbnRzIHRvIHNvbWUgcmVnaXN0ZXIgZGVmaW5p
dGlvbnMKLSBhZGRlZCBzdXBwb3J0IGZvciBQSFkgcmVzZXQoKSBtZXRob2QKLSB3aGVuIGNoYW5n
aW5nIFBIWSBtb2RlLCB0aGUgZHJpdmVyIG5vdyByZXNldHMgdGhlIFBIWSBhbmQgaXRzCiAgcmVn
aXN0ZXJzIHRvIHB1dCB0aGUgUEhZIGluIGtub3duIHN0YXRlCi0gZml4ZWQgdGhlIHBvd2VyX29m
ZigpIG1ldGhvZAotIGFkZGVkIHNwaW5sb2NrIGd1YXJkIHdoZW4gYWNjZXNzaW5nIFBIWSBTZWxl
Y3RvciByZWdpc3Rlciwgc2luY2UgaXQKICBpcyBzaGFyZWQgYmV0d2VlbiB0aGUgUEhZcyBhbmQg
c28gdGhlIFBIWSBtdXRleCBpcyBpbnN1ZmZpY2llbnQKLSB1cG9uIGRyaXZlciBwcm9iZSBjaGFu
Z2VkIHRoZSBjYWxscyB0byBwb3dlcl9vZmYoKSB0byByZXNldCgpCgoKVGhlIG9yaWdpbmFsIGNv
dmVyIGxldHRlciBzYWlkOgoKVGhlIFJQQyBjYWxsaW5nIHRvIEFSTSBUcnVzdGVkIEZpcm13YXJl
IGltcGxlbWVudGF0aW9uIG9mIEFybWFkYSAzNzIwCmNvbXBoeSBkcml2ZXIgY2F1c2VkIHF1aXRl
IGEgbnVtYmVyIG9mIGlzc3VlcyAoZXhwbGFpbmVkIG1vcmUgaW4gcGF0Y2ggMikuCgpUaGlzIHNl
cmllcyBmaXhlcyB0aG9zZSBpc3N1ZXMgYnkgcmVpbXBsZW1lbnRpbmcgdGhlIGRyaXZlciB0byBu
YXRpdmUKa2VybmVsIGltcGxlbWVudGF0aW9uLgoKVGhlIGxhc3QgMyBjb21taXRzIHJldmVydCBj
b21taXRzIGluIEFIQ0ksIFVTQiwgYW5kIFBDSSBkcml2ZXJzLCB0aGF0IHdlcmUKaW50cm9kdWNl
ZCB0aGVyZSBiZWNhdXNlIG9mIHRob3NlIGlzc3Vlcy4KClBhbGkgUm9ow6FyICg1KToKICBwaHk6
IG1hcnZlbGw6IHBoeS1tdmVidS1hMzcwMC1jb21waHk6IFJlbW92ZSBwb3J0IGZyb20gZHJpdmVy
CiAgICBjb25maWd1cmF0aW9uCiAgcGh5OiBtYXJ2ZWxsOiBwaHktbXZlYnUtYTM3MDAtY29tcGh5
OiBBZGQgbmF0aXZlIGtlcm5lbCBpbXBsZW1lbnRhdGlvbgogIFJldmVydCAiYXRhOiBhaGNpOiBt
dmVidTogTWFrZSBTQVRBIFBIWSBvcHRpb25hbCBmb3IgQXJtYWRhIDM3MjAiCiAgUmV2ZXJ0ICJ1
c2I6IGhvc3Q6IHhoY2k6IG12ZWJ1OiBtYWtlIFVTQiAzLjAgUEhZIG9wdGlvbmFsIGZvciBBcm1h
ZGEKICAgIDM3MjAiCiAgUmV2ZXJ0ICJQQ0k6IGFhcmR2YXJrOiBGaXggaW5pdGlhbGl6YXRpb24g
d2l0aCBvbGQgTWFydmVsbCdzIEFybQogICAgVHJ1c3RlZCBGaXJtd2FyZSIKCiBkcml2ZXJzL2F0
YS9haGNpLmggICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgIDIgLQogZHJpdmVycy9hdGEv
YWhjaV9tdmVidS5jICAgICAgICAgICAgICAgICAgICAgfCAgICAyICstCiBkcml2ZXJzL2F0YS9s
aWJhaGNpX3BsYXRmb3JtLmMgICAgICAgICAgICAgICB8ICAgIDIgKy0KIGRyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvcGNpLWFhcmR2YXJrLmMgICAgICAgIHwgICAgNCArLQogZHJpdmVycy9waHkvbWFy
dmVsbC9waHktbXZlYnUtYTM3MDAtY29tcGh5LmMgfCAxMzY5ICsrKysrKysrKysrKysrKystLQog
ZHJpdmVycy91c2IvaG9zdC94aGNpLW12ZWJ1LmMgICAgICAgICAgICAgICAgfCAgIDQyIC0KIGRy
aXZlcnMvdXNiL2hvc3QveGhjaS1tdmVidS5oICAgICAgICAgICAgICAgIHwgICAgNiAtCiBkcml2
ZXJzL3VzYi9ob3N0L3hoY2ktcGxhdC5jICAgICAgICAgICAgICAgICB8ICAgMjAgKy0KIGRyaXZl
cnMvdXNiL2hvc3QveGhjaS1wbGF0LmggICAgICAgICAgICAgICAgIHwgICAgMSAtCiA5IGZpbGVz
IGNoYW5nZWQsIDEyNDUgaW5zZXJ0aW9ucygrKSwgMjAzIGRlbGV0aW9ucygtKQoKLS0gCjIuMzQu
MQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
