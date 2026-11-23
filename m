Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0406606A31A
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 18:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=oPCZ0SRi;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=lpAURQOo
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=KTyy/0j0JZ7Wj+WrJy8uV8edolzOu9G5keHK6w8T7Bk=; b=oPCZ0SRiMtYuL6dWraTAjtMo56
	X8zIOE3TMnG/I9JIR+QJ7pmVibdjM5u1d3pwhtjq0h5nonn2qKHA53Pf62tEyDgsfCiao+Am9Jsh7
	0IkjTjmDcE9AnGHdZNi3DLED8GHtQ5rtOd1+PdTuEtFaR8i1MJzONn4B+iIuhjL6zznDtbwduAyvG
	bWtJSPkbaBjZ1Kxv/s4orS9sxqDL59WEwYon5+3kRD1cTwlKM6umZknalGa932TF0GM+xkSDwMO2W
	zXPJZkiHksgaWRYve3B/H3ebHeJDisu0d1m9uxBbl8IsiaYCboHMIqCctq9a45c0Dtzou/zLg1eLO
	vR2/iEdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVZ5Q-00000004Zwa-0ipt;
	Mon, 23 Nov 2026 18:48:20 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVZ5M-00000004ZwP-3I0y
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 18:48:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 22B6F60F0F;
	Mon, 23 Nov 2026 18:48:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2DA31F000C0;
	Mon, 23 Nov 2026 18:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795459695;
	bh=qGqJMqBNSEIrXUkPGXlYgp70+bRooqpf5MsmH7CyCl4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=lpAURQOoGAeb67wRO0gSaKTdZ9oWRpxlEAFayQqEDTvWZ8NoFDZDOwGzKJuV2dPdb
	 Ri4vrRwhta8nb4jwq+kt690HKNmkcTvysw6mYB+XakFarrUHgnXeeD70LOh8Y5jdyz
	 mjUUPrO/8HsixDr3oCtvkqsB3Zy0pli8QrXD74fDQkPNJjIvk+UKGLii/25/NvpawX
	 g8OuWNxsKqmovhj7udfkeiuBnZzivOjaMP11fzssgY/Zi8yVC9eMhfe640vNUOV6WL
	 AyEqmVNHyRjUkr4dIPkPs1CTHkLhIzH0SHffqH3Rqhtz2Ca9pwThUF6OeqI4W16nAL
	 RByFfYHAn24qA==
Message-ID: <sashiko-outbox-229870@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 6/8] dt-bindings: PCI: Describe the CS7542 host
 controller
To: "Fil Dunsky" <filipp.dunsky@gmail.com>
Cc: linux-pci@vger.kernel.org, linux-clk@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261123-b4-cs7542-pcie-v1-6-4cde5201d404@gmail.com>
References: <20261123-b4-cs7542-pcie-v1-0-4cde5201d404@gmail.com>
 <20261123-b4-cs7542-pcie-v1-6-4cde5201d404@gmail.com>
Date: Mon, 23 Nov 2026 18:48:14 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0xvd10gZHQtYmluZGluZ3M6IFBDSTog
aW50ZXJydXB0cyBsaXN0ZWQgYmVmb3JlIGNsb2NrcyBpbgogIGNvcnRpbmEsY3M3NTQyLXBjaWUu
eWFtbAotLQoKY29tbWl0IDdmNjZhOTMxZDNhOTY4MjQ5NWM5ZWU2MDQ5ZjM2ZGYwZDI2MTVhMWYK
QXV0aG9yOiBGaWwgRHVuc2t5IDxmaWxpcHAuZHVuc2t5QGdtYWlsLmNvbT4KCmR0LWJpbmRpbmdz
OiBQQ0k6IERlc2NyaWJlIHRoZSBDUzc1NDIgaG9zdCBjb250cm9sbGVyCgpUaGlzIGNvbW1pdCBh
ZGRzIHRoZSBEZXZpY2UgVHJlZSBiaW5kaW5nIHNjaGVtYSBmb3IgdGhlIENvcnRpbmEgU3lzdGVt
cwpDUzc1NDIgUENJZSBob3N0IGNvbnRyb2xsZXIuCgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL2NvcnRpbmEsY3M3NTQyLXBjaWUueWFtbCBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvY29ydGluYSxjczc1NDItcGNpZS55
YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi44ODgzYjhk
MDkxMzk4Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9wY2kvY29ydGluYSxjczc1NDItcGNpZS55YW1sCj4gQEAgLTAsMCArMSwxMjcgQEAK
ClsgLi4uIF0KCj4gK3Byb3BlcnRpZXM6Cj4gKyAgY29tcGF0aWJsZToKPiArICAgIGNvbnN0OiBj
b3J0aW5hLGNzNzU0Mi1wY2llCj4gKwo+ICsgIHJlZzoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAt
IGRlc2NyaXB0aW9uOiBEQkkgcmVnaXN0ZXJzIGluY2x1ZGluZyB0aGUgdmlld3BvcnQgaUFUVQo+
ICsgICAgICAtIGRlc2NyaXB0aW9uOiBEb3duc3RyZWFtIGNvbmZpZ3VyYXRpb24gd2luZG93Cj4g
KyAgICAgIC0gZGVzY3JpcHRpb246IEFwcGxpY2F0aW9uIHdyYXBwZXIgcmVnaXN0ZXJzCj4gKwo+
ICsgIHJlZy1uYW1lczoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiBkYmkKPiArICAg
ICAgLSBjb25zdDogY29uZmlnCj4gKyAgICAgIC0gY29uc3Q6IGFwcAo+ICsKPiArICBpbnRlcnJ1
cHRzOgo+ICsgICAgbWF4SXRlbXM6IDEKPiArCj4gKyAgaW50ZXJydXB0LW5hbWVzOgo+ICsgICAg
Y29uc3Q6IG1zaQo+ICsKPiArICBjbG9ja3M6Cj4gKyAgICBtYXhJdGVtczogMQoKWyAuLi4gXQoK
PiArcmVxdWlyZWQ6Cj4gKyAgLSBjb21wYXRpYmxlCj4gKyAgLSByZWcKPiArICAtIHJlZy1uYW1l
cwo+ICsgIC0gaW50ZXJydXB0cwo+ICsgIC0gaW50ZXJydXB0LW5hbWVzCj4gKyAgLSBjbG9ja3MK
ClsgLi4uIF0KCj4gKyAgICAgICAgaW50ZXJydXB0LXBhcmVudCA9IDwmZ2ljPjsKPiArICAgICAg
ICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMzMgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4gKyAgICAg
ICAgaW50ZXJydXB0LW5hbWVzID0gIm1zaSI7Cj4gKyAgICAgICAgY2xvY2tzID0gPCZwY2llX2Nv
bnRyb2wgMD47CgpbU2V2ZXJpdHk6IExvd10KVGhpcyBpc24ndCBhIGJ1ZywgYnV0IERUIGJpbmRp
bmcgc2NoZW1hcyBhbmQgZXhhbXBsZSBub2RlcyBwbGFjZSBjbG9ja3MKYmVmb3JlIGludGVycnVw
dHMgYW5kIGludGVycnVwdC1uYW1lcyBmb2xsb3dpbmcgdGhlIGNhbm9uaWNhbCBwcm9wZXJ0eQpv
cmRlciAoY29tcGF0aWJsZSwgcmVnLCByZWctbmFtZXMsIGNsb2NrcywgaW50ZXJydXB0cywgaW50
ZXJydXB0LW5hbWVzKSBpbgpwcm9wZXJ0aWVzLCByZXF1aXJlZCwgYW5kIGV4YW1wbGVzLgoKLS0g
ClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2
MTEyMy1iNC1jczc1NDItcGNpZS12MS0wLTRjZGU1MjAxZDQwNEBnbWFpbC5jb20/cGFydD02Cgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
