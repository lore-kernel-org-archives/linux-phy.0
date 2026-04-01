Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90DD4D3517F
	for <linux-phy@archiver.kernel.org>; Wed,  1 Apr 2026 12:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7W1Wvvde41pPYNaeIXoa1WEy2UgBUJldAhPSUO1ZuBM=; b=bA1LfQPFiqApTh
	+q15zgkTNxoV4Y6tkmqK0GlmPq+2DjnqbhvsJpkpNasOngCM5mVfRQqe7bEDh2aZDfBIFobbDLB31
	XxK+skN8Q2sWIJxV/kTmybD0M20yqIm/aTp1sf9mBgP/V4f75Mksx/aiR72K657zoe980PzHjkwdA
	vUH7J+VqR83uUtJAq2PrTZ7rSnLfmcUBgf0t7nlcjmhByV2hzNtRBjLXgq4vISFDq7Qh2LMU9DXt9
	S90YjPZGuo8Cluew5nRscVWAYu6wiBUWroXJ/4luq2M7As22hxPsZrk6h4D5TYPJaSWbYNj/Fu5VN
	KZ8EqA1WOlAu1XVSw36Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7upn-0000000FCf9-1JiB;
	Wed, 01 Apr 2026 12:38:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7ueC-0000000F3pf-1Ajw;
	Wed, 01 Apr 2026 12:26:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=l0q4mDPNZn9d2zngjDTeDMoVQBeBADZn5IY9XJjSkRU=; b=iEGHgMgeYqPh0A64moQzGLm9TN
	DCzmKsewhjd+Hku2KIjdTMNjrNMFSe3fbF2LxKXyWbjiBIgEOYn/AlNr1NCCjVYxzwGJ66Yn9TECj
	ZDogHalWRZRsS/SxjKCZDnTQLm0crOP1dakikYEj3gckcAeBaq6HqPMWbDHU9/2JjGp/+96EMeetW
	PPfEuLvOxkG2VutOJZiqzcvcZSMF3a1VseRq66w9LFuN+g1FFZ/eN0AeoUZ0D8LFwFVEVJ0y7BGCz
	+btObLj+odMZzo3FayecUmY8IpNK6vcnYOKA+SrAklfVfYfMkp1ohOddHwzg6+eoe0DidMvfkJOBj
	40dttiCw==;
Received: from www537.your-server.de ([188.40.3.216])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7ue7-00000000Ktq-1NUp;
	Wed, 01 Apr 2026 12:26:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=l0q4mDPNZn9d2zngjDTeDMoVQBeBADZn5IY9XJjSkRU=; b=Voah0Piiz36h8FePLR/6Apla9L
	94vZXyylBhu3oMrpPw+a+M6YSjVWi7/ls26IleNSIgkTg0Jt821RJg9voO/mWuj8z5ZEjrKr+WsLp
	/qieh7YXXxuCbBrhWDrAWJM+Wj2mMiCxFC3PzciBOF6iFhzAGjXDkgT9jOFgB+Zwf9tFKv/dAEJLV
	oQ12t9MB6tJZBUMUb6MTlJVxzbayjES0Yx1d/by0nrpU+OUxe+mEEQtbq/4+elbj9nP+H8V/ftVTh
	eUz8zzrGRBgg2/VY5eDFYvUo9sr9+vkXdv6iOpE34p38j/PrTFTAlNQYKQ+ZXvMNYBpL43xmy68cb
	FKmJOEpw==;
Received: from sslproxy07.your-server.de ([78.47.199.104])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w7ue2-000IQS-1Z;
	Wed, 01 Apr 2026 14:26:02 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy07.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w7ue1-00089b-38;
	Wed, 01 Apr 2026 14:26:01 +0200
From: Nora Schiffer <nora.schiffer@ew.tq-group.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Roger Quadros <rogerq@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com,
	Nora Schiffer <nora.schiffer@ew.tq-group.com>
Subject: [PATCH v3 0/5] J722S SGMII support
Date: Wed,  1 Apr 2026 14:25:20 +0200
Message-ID: <cover.1775045279.git.nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/27958/Wed Apr  1 08:24:34 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_132607_506247_CC0C56B6 
X-CRM114-Status: GOOD (  12.06  )
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

VGhlIEo3MjJTIENQU1cgYW5kIFNFUkRFUyBhcmUgdmVyeSBzaW1pbGFyIHRvIHRoZSB2YXJpYW50
cyBmb3VuZCBvbiB0aGUKQU02NCwgYnV0IHRoZXkgYWRkaXRpb25hbGx5IHN1cHBvcnQgU0dNSUku
IEludHJvZHVjZSBuZXcgY29tcGF0aWJsZQpzdHJpbmdzIGZvciB0aGUgSjcyMlMgdG8gYWRkIHRo
aXMgc3VwcG9ydCB0byB0aGUgZHJpdmVycy4KClRoaXMgaXMgYSBwcmVyZXF1aXNpdGUgZm9yIHRo
ZSBTaW5nbGUtUGFpciBFdGhlcm5ldCBpbnRlcmZhY2Ugb2YgdGhlClRRLVN5c3RlbXMgTUJhNjd4
eCBiYXNlYm9hcmQgZm9yIHRoZSBUUU1hNjd4eCBTb00sIHdoaWNoIHdpbGwgYmUKc3VibWl0dGVk
IHNlcGFyYXRlbHkuCgpGb3IgU0dNSUkgdG8gYWN0dWFsbHkgd29yayBvbiB0aGUgSjcyMlMsIHRo
ZSBhbTY1LWNwc3cgbmVlZHMgdG8gYmUgZXh0ZW5kZWQKYXMgd2VsbCwgd2hpY2ggaGFzIGJlZW4g
c3VibWl0dGVkIGZvciBuZXQtbmV4dDoKaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9q
ZWN0L25ldGRldmJwZi9saXN0Lz9zZXJpZXM9MTA3NTgwNgoKRmFsbGJhY2sgY29tcGF0aWJsZSBz
dHJpbmdzIGFsbG93IGZvciB0aGUgcGF0Y2hlcyB0byBiZSBhcHBsaWVkIGluIGFueQpvcmRlciBh
bmQgdG8gZ28gdGhyb3VnaCBkaWZmZXJlbnQgdHJlZXMgd2l0aG91dCBicmVha2luZyBleGlzdGlu
ZwpmdW5jdGlvbmFsaXR5LgoKdjM6Ci0gRHJvcCBhbTY1LWNwc3cgY2hhbmdlcyBmcm9tIHRoaXMg
c2VyaWVzLCB0aGV5IG5lZWQgdG8gZ28gdGhyb3VnaCBuZXQtbmV4dAotIEZpeCBtaXNzaW5nIFBI
WV9HTUlJX1NFTF9SR01JSV9JRF9NT0RFIGFuZCBQSFlfR01JSV9TRUxfRklYRURfVFhfREVMQVkg
aW4KICBnbWlpLXNlbCBkcml2ZXIgZm9yIFJHTUlJIGRlbGF5IG1vZGUgY29uZmlndXJhdGlvbgoK
djI6Ci0gS2VlcCBzdXBwb3J0IGZvciB0aGUgQU02NCBjb21wYXRpYmxlIHN0cmluZ3MgYXMgYSBm
YWxsYmFjaywgYWRqdXN0IGNvbW1pdAogIG1lc3NhZ2VzCi0gRHJvcCByZWZlcmVuY2UgdG8gQU02
NF9DUFNXX1FVSVJLX0NVVF9USFJVIGZsYWcsIHdoaWNoIG9ubHkgZXhpc3RzIGluIHRoZQogIFRJ
IHZlbmRvciBrZXJuZWwKCk5vcmEgU2NoaWZmZXIgKDUpOgogIGR0LWJpbmRpbmdzOiBwaHk6IHRp
OiBwaHktajcyMWUtd2l6OiBBZGQgdGksajcyMnMtd2l6LTEwZyBjb21wYXRpYmxlCiAgZHQtYmlu
ZGluZ3M6IHBoeTogdGk6IHBoeS1nbWlpLXNlbDogQWRkIHRpLGo3MjJzLXBoeS1nbWlpLXNlbAog
ICAgY29tcGF0aWJsZQogIHBoeTogdGk6IHBoeS1qNzIxZS13aXo6IGFkZCBzdXBwb3J0IGZvciBK
NzIyUyBTb0MgZmFtaWx5CiAgcGh5OiB0aTogZ21paS1zZWw6IGFkZCBzdXBwb3J0IGZvciBKNzIy
UyBTb0MgZmFtaWx5CiAgYXJtNjQ6IGR0czogdGk6IGszLWo3MjJzLW1haW46IHVzZSBKNzIyUyBj
b21wYXRpYmxlcyBmb3IgV0laLCBnbWlpLXNlbAogICAgYW5kIENQU1czRwoKIC4uLi9iaW5kaW5n
cy9waHkvdGkscGh5LWdtaWktc2VsLnlhbWwgICAgICAgICB8IDI0ICsrKysrKysrKysrKy0tLS0t
LS0KIC4uLi9iaW5kaW5ncy9waHkvdGkscGh5LWo3MjFlLXdpei55YW1sICAgICAgICB8IDIwICsr
KysrKysrKystLS0tLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtajcyMnMtbWFpbi5kdHNp
ICAgICB8IDEyICsrKysrKysrLS0KIGRyaXZlcnMvcGh5L3RpL3BoeS1nbWlpLXNlbC5jICAgICAg
ICAgICAgICAgICB8IDEzICsrKysrKysrKysKIGRyaXZlcnMvcGh5L3RpL3BoeS1qNzIxZS13aXou
YyAgICAgICAgICAgICAgICB8IDI0ICsrKysrKysrKysrKysrKysrKysKIDUgZmlsZXMgY2hhbmdl
ZCwgNzUgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pCgotLSAKVFEtU3lzdGVtcyBHbWJI
IHwgTcO8aGxzdHJhw59lIDIsIEd1dCBEZWxsaW5nIHwgODIyMjkgU2VlZmVsZCwgR2VybWFueQpB
bXRzZ2VyaWNodCBNw7xuY2hlbiwgSFJCIDEwNTAxOApHZXNjaMOkZnRzZsO8aHJlcjogRGV0bGVm
IFNjaG5laWRlciwgUsO8ZGlnZXIgU3RhaGwsIFN0ZWZhbiBTY2huZWlkZXIKaHR0cHM6Ly93d3cu
dHEtZ3JvdXAuY29tLwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
