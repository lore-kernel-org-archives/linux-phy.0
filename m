Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18521FEEF27
	for <linux-phy@archiver.kernel.org>; Tue,  7 Apr 2026 11:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cTgMKnnKhD9s6GDmLhZEP7UOEwz9YLafVyjlB7KqV3k=; b=TZdcjCV+aPPy27
	P96AP1c5LXiVKLfC+M+/zw5remKNixMZzmdGwvOEYwhvQ+KdhZcSlEAHbwziz9mclEEK/vz6RcLgj
	i23LmSv1snsRyfqwu1fYkkPiXx/5AZBfFYAHMvwl0jjtuH2/5cofvvCbBnTOrAPOkFphNg7MpgYMs
	kHQxcw/a/LcytcfVtpsaYvmvRHOj0VhXZXIf5PbkQRhkLuHmtkPaFFhMzXbTIlWUN4O+WmEUJL7r3
	7//dPhQeevKkTciqIItGOuvDKc86163sqSsdrapcT3N9J2RzRWDz1zHyZ8je/U8oUBi/F7O2tjbLL
	Zx21LTIxwdNEO2vKTNUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA4pv-00000006O7Y-3OYw;
	Tue, 07 Apr 2026 11:43:15 +0000
Received: from www537.your-server.de ([188.40.3.216])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA4pr-00000006O4V-2qNW;
	Tue, 07 Apr 2026 11:43:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=qO5k30uA69sxBqiJPUeQ9fi8jukxeSWoCcgtPscWoDM=; b=S5/QaV/tmmIuCaw4zyUPjf5Gp3
	bQ29FH/AX+UZxUt8Y7HcBWj644+V3zge/hXcis9rqSyhL5qvetxodx8G0gqi1Iu5Tnmx09gHCGnxX
	K2uPsQVpoHfJielC08hX/HKJh76lJL2Hg2mGHgjKkLBG3uvZRHrZLuL3jQBKrAAgpejg2LL7Pv8qI
	SaWydjesAOcRNJtLEVBfY9uVFTo7vdvIAHk9/ydHdqEAbxqpqOis1OaWxC/moROqkqa4Dleys9eFK
	v6vTIAvTr6NJBd+2ChS+mZhGMGfgJ4/hgQ9hXBLL6WimKqKZ1z0HMR6CL3Ly27F+f1YWfJK4xGkx/
	Z81FYWGw==;
Received: from sslproxy08.your-server.de ([78.47.166.52])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1wA4pp-000IJb-05;
	Tue, 07 Apr 2026 13:43:09 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy08.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1wA4pn-000PKA-1S;
	Tue, 07 Apr 2026 13:43:08 +0200
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
Subject: [PATCH v4 2/5] dt-bindings: phy: ti: phy-gmii-sel: Add ti,j722s-phy-gmii-sel compatible
Date: Tue,  7 Apr 2026 13:42:34 +0200
Message-ID: <b67c8b0bc9cc918667e9329d79f617d033d025d5.1775559102.git.nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1775559102.git.nora.schiffer@ew.tq-group.com>
References: <cover.1775559102.git.nora.schiffer@ew.tq-group.com>
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/27964/Tue Apr  7 08:24:40 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260407_044311_720244_5916706B 
X-CRM114-Status: UNSURE (   7.39  )
X-CRM114-Notice: Please train this message.
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

VGhlIEo3MjJTIGdtaWktc2VsIGlzIG1vc3RseSBpZGVudGljYWwgdG8gdGhlIEFNNjQncywgYnV0
IGFkZGl0aW9uYWxseQpzdXBwb3J0cyBTR01JSS4gVGhlIEFNNjQgY29tcGF0aWJsZSB0aSxhbTY1
NC1waHktZ21paS1zZWwgaXMgdXNlZCBhcyBhCmZhbGxiYWNrLgoKU2lnbmVkLW9mZi1ieTogTm9y
YSBTY2hpZmZlciA8bm9yYS5zY2hpZmZlckBldy50cS1ncm91cC5jb20+Ci0tLQogLi4uL2JpbmRp
bmdzL3BoeS90aSxwaHktZ21paS1zZWwueWFtbCAgICAgICAgIHwgMjMgKysrKysrKysrKystLS0t
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS90aSxwaHkt
Z21paS1zZWwueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvdGks
cGh5LWdtaWktc2VsLnlhbWwKaW5kZXggYmU0MWI0NTQ3ZWM2ZC4uNjBiNjQ0YTRjNjM5MCAxMDA2
NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS90aSxwaHktZ21p
aS1zZWwueWFtbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Rp
LHBoeS1nbWlpLXNlbC55YW1sCkBAIC00NywxNSArNDcsMjAgQEAgZGVzY3JpcHRpb246IHwKIAog
cHJvcGVydGllczoKICAgY29tcGF0aWJsZToKLSAgICBlbnVtOgotICAgICAgLSB0aSxhbTMzNTIt
cGh5LWdtaWktc2VsCi0gICAgICAtIHRpLGRyYTd4eC1waHktZ21paS1zZWwKLSAgICAgIC0gdGks
YW00M3h4LXBoeS1nbWlpLXNlbAotICAgICAgLSB0aSxkbTgxNC1waHktZ21paS1zZWwKLSAgICAg
IC0gdGksYW02NTQtcGh5LWdtaWktc2VsCi0gICAgICAtIHRpLGo3MjAwLWNwc3c1Zy1waHktZ21p
aS1zZWwKLSAgICAgIC0gdGksajcyMWUtY3BzdzlnLXBoeS1nbWlpLXNlbAotICAgICAgLSB0aSxq
Nzg0czQtY3BzdzlnLXBoeS1nbWlpLXNlbAorICAgIG9uZU9mOgorICAgICAgLSBlbnVtOgorICAg
ICAgICAgIC0gdGksYW0zMzUyLXBoeS1nbWlpLXNlbAorICAgICAgICAgIC0gdGksZHJhN3h4LXBo
eS1nbWlpLXNlbAorICAgICAgICAgIC0gdGksYW00M3h4LXBoeS1nbWlpLXNlbAorICAgICAgICAg
IC0gdGksZG04MTQtcGh5LWdtaWktc2VsCisgICAgICAgICAgLSB0aSxhbTY1NC1waHktZ21paS1z
ZWwKKyAgICAgICAgICAtIHRpLGo3MjAwLWNwc3c1Zy1waHktZ21paS1zZWwKKyAgICAgICAgICAt
IHRpLGo3MjFlLWNwc3c5Zy1waHktZ21paS1zZWwKKyAgICAgICAgICAtIHRpLGo3ODRzNC1jcHN3
OWctcGh5LWdtaWktc2VsCisgICAgICAtIGl0ZW1zOgorICAgICAgICAgIC0gZW51bToKKyAgICAg
ICAgICAgICAgLSB0aSxqNzIycy1waHktZ21paS1zZWwKKyAgICAgICAgICAtIGNvbnN0OiB0aSxh
bTY1NC1waHktZ21paS1zZWwKIAogICByZWc6CiAgICAgbWF4SXRlbXM6IDEKLS0gClRRLVN5c3Rl
bXMgR21iSCB8IE3DvGhsc3RyYcOfZSAyLCBHdXQgRGVsbGluZyB8IDgyMjI5IFNlZWZlbGQsIEdl
cm1hbnkKQW10c2dlcmljaHQgTcO8bmNoZW4sIEhSQiAxMDUwMTgKR2VzY2jDpGZ0c2bDvGhyZXI6
IERldGxlZiBTY2huZWlkZXIsIFLDvGRpZ2VyIFN0YWhsLCBTdGVmYW4gU2NobmVpZGVyCmh0dHBz
Oi8vd3d3LnRxLWdyb3VwLmNvbS8KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
