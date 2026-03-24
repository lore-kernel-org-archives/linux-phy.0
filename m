Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF768E9A77D
	for <linux-phy@archiver.kernel.org>; Tue, 24 Mar 2026 12:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zVbChlENBVNQF2RxlbRgVP8k2X+Urh6FJERzH8saWVg=; b=P148TCTjJWZxlg
	H1aSTMV4WQttZN0QNyoN91AfrkbhbpBdX3hUrf4sUV2gq1bGmf0zBWmuKXmElHV7xrmOjq1gqum7+
	mmUL5sjMdUUpjhwl+n0mOSKqo6X2Ua8XJu9yotYyI4lpJaI8J6bzISfqLkznkfiS789WEn5aDhzr1
	9AT6+2nzSzXqG6x61PqSRMe+JkFYsgGvQHHJG1mYAkgFjInJPzZuGbrQL4V6zSsua5H92qHmJ4ZuI
	XSu6a3zqUQ7Ju1CPnk2Q3640hUGcKKmRoV07YYuoy045LgbXml2toXTttClhuLCktX3jmpq+aQbtN
	pZFKCPhN+UofRza3vsQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w50u9-00000001NcR-31vR;
	Tue, 24 Mar 2026 12:30:41 +0000
Received: from www537.your-server.de ([188.40.3.216])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w50ty-00000001NWp-3gTl;
	Tue, 24 Mar 2026 12:30:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=YYZDaFWbRwD+Y6m8tmBwPFr2FatMkna546OJAPMNkgU=; b=kPkvszrtAcNA1Duv6MZr4nGqSN
	59MyxnLWvTrZ0BWGTWrR1pg+V1IDXJEAE/JMiRCBGGd/hNIj143J58e22lfBR+EgqkHZcwxyhv6Hi
	eeG86Pmi76UFq+FvbxnCUPOoW9dvSXEj+TCquWn/UhoZaF//dSmGU4q81SZf+MLVdj2B4LdeFyt0t
	yFLvwpWg3pAEb6psJxLrsiyzESw5Ly32TwSVgOjoU5GE7S2X0/yIiYXEIoLNHsa3FhMda0MNWR/lE
	PSKuRa42kLyKLo2l0hbz/vqJvvGgJqWia8UxSgpirx3hZMhCYZvaS/TDkZsmVlbsj2jNnGF5S8rHJ
	WNy0dfGw==;
Received: from sslproxy05.your-server.de ([78.46.172.2])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w50tr-0005qJ-13;
	Tue, 24 Mar 2026 13:30:23 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy05.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w50tr-000Pna-0V;
	Tue, 24 Mar 2026 13:30:22 +0100
From: Nora Schiffer <nora.schiffer@ew.tq-group.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>
Cc: Siddharth Vadapalli <s-vadapalli@ti.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com,
	Nora Schiffer <nora.schiffer@ew.tq-group.com>
Subject: [PATCH v2 3/7] dt-bindings: net: ti: k3-am654-cpsw-nuss: Add ti,j722s-cpsw-nuss compatible
Date: Tue, 24 Mar 2026 13:29:39 +0100
Message-ID: <f0aab212828fb4cad774de6b88fe6d24dfa96833.1774354734.git.nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1774354734.git.nora.schiffer@ew.tq-group.com>
References: <cover.1774354734.git.nora.schiffer@ew.tq-group.com>
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/27950/Tue Mar 24 07:24:19 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_053031_034431_1FB5D65B 
X-CRM114-Status: UNSURE (   8.06  )
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

VGhlIEo3MjJTIENQU1czRyBpcyBtb3N0bHkgaWRlbnRpY2FsIHRvIHRoZSBBTTY0J3MsIGJ1dCBh
ZGRpdGlvbmFsbHkKc3VwcG9ydHMgU0dNSUkuIFRoZSBBTTY0IGNvbXBhdGlibGUgdGksYW02NDIt
Y3Bzdy1udXNzIGlzIHVzZWQgYXMgYQpmYWxsYmFjay4KClNpZ25lZC1vZmYtYnk6IE5vcmEgU2No
aWZmZXIgPG5vcmEuc2NoaWZmZXJAZXcudHEtZ3JvdXAuY29tPgotLS0KIC4uLi9iaW5kaW5ncy9u
ZXQvdGksazMtYW02NTQtY3Bzdy1udXNzLnlhbWwgICB8IDIwICsrKysrKysrKysrKy0tLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvdGksazMtYW02NTQt
Y3Bzdy1udXNzLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3Rp
LGszLWFtNjU0LWNwc3ctbnVzcy55YW1sCmluZGV4IGE5NTljMWQ3ZTY0M2EuLjcwZDI1ZjVmZjFj
ZmUgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvdGks
azMtYW02NTQtY3Bzdy1udXNzLnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL25ldC90aSxrMy1hbTY1NC1jcHN3LW51c3MueWFtbApAQCAtNTMsMTMgKzUzLDE5IEBA
IHByb3BlcnRpZXM6CiAgICIjc2l6ZS1jZWxscyI6IHRydWUKIAogICBjb21wYXRpYmxlOgotICAg
IGVudW06Ci0gICAgICAtIHRpLGFtNjQyLWNwc3ctbnVzcwotICAgICAgLSB0aSxhbTY1NC1jcHN3
LW51c3MKLSAgICAgIC0gdGksajcyMDAtY3Bzd3hnLW51c3MKLSAgICAgIC0gdGksajcyMWUtY3Bz
dy1udXNzCi0gICAgICAtIHRpLGo3MjFlLWNwc3d4Zy1udXNzCi0gICAgICAtIHRpLGo3ODRzNC1j
cHN3eGctbnVzcworICAgIG9uZU9mOgorICAgICAgLSBpdGVtczoKKyAgICAgICAgICAtIGVudW06
CisgICAgICAgICAgICAgIC0gdGksYW02NDItY3Bzdy1udXNzCisgICAgICAgICAgICAgIC0gdGks
YW02NTQtY3Bzdy1udXNzCisgICAgICAgICAgICAgIC0gdGksajcyMDAtY3Bzd3hnLW51c3MKKyAg
ICAgICAgICAgICAgLSB0aSxqNzIxZS1jcHN3LW51c3MKKyAgICAgICAgICAgICAgLSB0aSxqNzIx
ZS1jcHN3eGctbnVzcworICAgICAgICAgICAgICAtIHRpLGo3ODRzNC1jcHN3eGctbnVzcworICAg
ICAgLSBpdGVtczoKKyAgICAgICAgICAtIGVudW06CisgICAgICAgICAgICAgIC0gdGksajcyMnMt
Y3Bzdy1udXNzCisgICAgICAgICAgLSBjb25zdDogdGksYW02NDItY3Bzdy1udXNzCiAKICAgcmVn
OgogICAgIG1heEl0ZW1zOiAxCi0tIApUUS1TeXN0ZW1zIEdtYkggfCBNw7xobHN0cmHDn2UgMiwg
R3V0IERlbGxpbmcgfCA4MjIyOSBTZWVmZWxkLCBHZXJtYW55CkFtdHNnZXJpY2h0IE3DvG5jaGVu
LCBIUkIgMTA1MDE4Ckdlc2Now6RmdHNmw7xocmVyOiBEZXRsZWYgU2NobmVpZGVyLCBSw7xkaWdl
ciBTdGFobCwgU3RlZmFuIFNjaG5laWRlcgpodHRwczovL3d3dy50cS1ncm91cC5jb20vCgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
