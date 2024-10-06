Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D0FFCFB424
	for <linux-phy@archiver.kernel.org>; Sun,  6 Oct 2024 10:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tVKl2iAkQqXF68QM5G+W9bvHRk0TZ5K8DtFeFU+/16s=; b=VG829y8dU9K0M0
	BNjN0bIUYAI1nqhBVevVS5nc8dedVoJGZXbx6dR+Z6QNNnIf5TZRS3cD6GI6aTIzQCMI4ZpImWzVy
	SVdXmtW+LpEmAr4IoC+1hOn22G3H6Mk8IoU+a/UwaK0k07ifQdwmUBEYCgDXIOENTeVmV3mom+6pB
	qjDJwnD1J4T0cbXni0zkLlnec+i0hI/C/qrC+5nN7Edh1zyHY/HsuTwXN0bAJ7nq465Jc5vAQ1lFk
	uWGdDTrMwpDEiJH9IaBR2oRUXvwqDGgKBHd9efob1BFHtg232xCLygxvi04Z6r4Z3meUcAMjy/Zc0
	MdLokDgbOr0Xi9RRwwog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxOlM-0000000HYBY-3SkA;
	Sun, 06 Oct 2024 10:45:20 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxOlJ-0000000HYAk-0u35
	for linux-phy@lists.infradead.org;
	Sun, 06 Oct 2024 10:45:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 6E124A40CB4;
	Sun,  6 Oct 2024 10:45:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 219A3C4CECC;
	Sun,  6 Oct 2024 10:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728211515;
	bh=Yq1fXDLLYhX1N8UFh6aMFh01kCDAXP7Sz7nAiGxyA30=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=L+jKbVO2QoYgqTVr6b9UGMQ3EQslj7uA8drCv7YQu7xOGKRsw2XUk9emFlvDf+YDB
	 it8VTX4ip13fNFE6zy5lDnjQ7vuYbVbYb7SsIPdkc/j6T4UkGfotaUV6ygEs0kd07u
	 ZpeINfcfeT6wTgfDtniqyyztSTu+49AciC6H5QL1iIjPF2hdC8vZCOI1LNC46Kanbj
	 IU0/+t7boL+z3pJ5OlYTEwW6cEZ+7Jmn03ecgsI8NGJV8w00hTozjg4DAb7IcerDHc
	 R1Jvnd7wbU5CJqeKHOg+SB646Ztpec7dz55N218sOjoljaz65Kn1CSox9/iji7Ypi2
	 xArHAWoH3Wk+g==
Message-ID: <909bcd90-1ea1-4184-a8bc-57adf333750c@kernel.org>
Date: Sun, 6 Oct 2024 12:45:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Aw: Re: Re: [PATCH 4/4] phy: Realtek Otto Serdes: add devicetree
 documentation
To: Markus Stockhausen <Markus.Stockhausen@gmx.de>
Cc: linux-phy@lists.infradead.org, chris.packham@alliedtelesis.co.nz
References: <20241004195712.1891488-1-markus.stockhausen@gmx.de>
 <20241004195712.1891488-5-markus.stockhausen@gmx.de>
 <085c03f4-8b1e-413a-a72e-0dd3ec60a667@kernel.org>
 <trinity-30f499cf-b454-4ee8-981b-51f950858c68-1728124094345@3c-app-gmx-bs38>
 <362ccc22-9f7d-43de-9670-380a1a57e886@kernel.org>
 <trinity-730b9987-1281-4589-af51-e4d85af3de66-1728208492437@3c-app-gmx-bap17>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <trinity-730b9987-1281-4589-af51-e4d85af3de66-1728208492437@3c-app-gmx-bap17>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_034517_412051_D91909B0 
X-CRM114-Status: GOOD (  11.72  )
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

T24gMDYvMTAvMjAyNCAxMTo1NCwgTWFya3VzIFN0b2NraGF1c2VuIHdyb3RlOgo+PiBHZXNlbmRl
dDrCoFNvbm50YWcsIDA2LiBPa3RvYmVyIDIwMjQgdW0gMTA6MTggVWhyCj4+IFZvbjrCoCJLcnp5
c3p0b2YgS296bG93c2tpIiA8a3J6a0BrZXJuZWwub3JnPgo+PiBBbjrCoCJNYXJrdXMgU3RvY2to
YXVzZW4iIDxNYXJrdXMuU3RvY2toYXVzZW5AZ214LmRlPgo+PiBDYzrCoGxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnLCBjaHJpcy5wYWNraGFtQGFsbGllZHRlbGVzaXMuY28ubnoKPj4gQmV0
cmVmZjrCoFJlOiBBdzogUmU6IFtQQVRDSCA0LzRdIHBoeTogUmVhbHRlayBPdHRvIFNlcmRlczog
YWRkIGRldmljZXRyZWUgZG9jdW1lbnRhdGlvbgo+PiBPbiAwNS8xMC8yMDI0IDEyOjI4LCBNYXJr
dXMgU3RvY2toYXVzZW4gd3JvdGU6Cj4+Pj4gLi4uCj4+Pj4gKyBjbWQtc2V0dXA6Cj4+Pj4gKyBk
ZXNjcmlwdGlvbjogfAo+Pj4+ICsgQSBmaWVsZCBvZiAxNiBiaXQgdmFsdWVzIHRoYXQgY29udGFp
biBhIHBhdGNoL2NvbW1hbmQgc2VxdWVuY2UgdG8gcnVuIG9uIHRoZQo+Pj4+ICsgU2VyRGVzIHJl
Z2lzdGVycyBkdXJpbmcgZHJpdmVyIHNldHVwLgo+Pj4KPj4+IE5vbmUgb2YgdGhlc2UgZmllbGRz
IG1hdGNoIERULiBEcm9wIGFsbCBvZiBkcml2ZXIgcmVsYXRlZCBzdHVmZi4KPj4KPj4gSG0sIHdo
YXQgd291bGQgYmUgdGhlIGJlc3Qgd2F5IHRvIHJ1biBtYWdpYyB2ZW5kb3IgcGF0Y2ggc2VxdWVu
Y2VzIHRoYXQgc2V0dXAKPj4gcmVnaXN0ZXJzIGFuZCBkbyBub3QgcG9sbHV0ZSBkcml2ZXI/Cj4+
Cj4+IFRoZXNlIGJlbG9uZyB0byBkcml2ZXIuIFdoYXQgZG8geW91IG1lYW4gInBvbGx1dGUiPyBU
aGUgZHJpdmVyIGlzIHRoZQo+PiBwbGFjZSBmb3IgdGhlc2UsIG5vdCBEVCEKPiAKPiBVbmRlcnN0
b29kLiBTbyBpZiBJIGNlcmF0ZSBhbm90aGVyIGluY2x1ZGUgLSBsZXQncyBzYXkgInBoeS1ydGwt
b3R0by1zZXJkZXMtc2VxIiAtIHRoYXQKPiBsb29rcyBzb21ldGhpbmcgbGlrZSB0aGUgZm9sbG93
aW5nIHdvdWxkIGJlIG9rPyBFdmVuIHdpdGggYSBsb3Qgb2YgIm1hZ2ljIiBpbnNpZGU/Cj4gCj4g
c3RydWN0IHJ0c2RzX3NlcXVlbmNlIHJ0c2RzXzgzOXhfY21kX2luaXQgPSB7Cj4gCXsgX01BU0tf
LCAweDAwLCAweDA4LCAweDAwLCAweDU4MDAsIDB4ZmZmZiB9LAo+IAl7IF9NQVNLXywgMHgwMCwg
MHgwOCwgMHgwMSwgMHg0MDAwLCAweGZmZmYgfSwKPiAJeyBfTUFTS18sIDB4MDAsIDB4MDgsIDB4
MDIsIDB4NTQwMCwgMHhmZmZmIH0sCj4gCXsgX01BU0tfLCAweDAwLCAweDA4LCAweDAzLCAweDAw
MDAsIDB4ZmZmZiB9LAo+IAl7IF9NQVNLXywgMHgwMCwgMHgwOCwgMHgwNiwgMHg0MDAwLCAweGZm
ZmYgfSwKPiDCoAkuLi4KPiB9OwoKWW91IHNob3VsZCBub3QgaGF2ZSBkYXRhIGRlZmluaXRpb25z
IGluIHRoZSBoZWFkZXJzLiBMb29rIGF0IG90aGVyIHBoeXMsCmxvb2sgYXQgSTJDIGNhbWVyYSBz
ZW5zb3JzIGhvdyB0aGV5IGRvIGl0LgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
