Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B06ED3517D
	for <linux-phy@archiver.kernel.org>; Wed,  1 Apr 2026 12:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vy4q7dUuKJII9Pn4/6M6BGZttdN8De3jDrqHdk461e4=; b=UPXiX9km8YeI63
	gs71ZFVUtOW0iXmMrbSKP+/SaAcxgNLYX0NY0ZJlNUtbppvIAWXHY859tz5VGP5cgjNju1shIgfmv
	1C4nzAtBC0oW7ZLm274cKrnDpBQklu2ohtIXKLjT60rTHy563dqvedT0qKpvuY11/IEjY9qiY+Swg
	Ulx4qPnLP2kl3mly5b4Io0QAbRE2Qqa2cr2Rx6wBjEVwsSJtj8ka0vzOiUUBkgV5L56aFYlPMoUcd
	W5acFrP+Nyp+IlRBpKIZYGyFKmks4dMUUUHDFrizIsOXJICuaPepq8UBcTNSgLroycoIJ2J0eikne
	krmPGfjop+f1bS8h+neg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7upl-0000000FCbj-0aWs;
	Wed, 01 Apr 2026 12:38:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7ueA-0000000F3o2-1p9w;
	Wed, 01 Apr 2026 12:26:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Ri29mMECTRLPmj/f28VKUr01MxVHN14NYrO0oRv5ApA=; b=lKxiby4m25UBk/HEC8lcqjsFXs
	nCFR7VSkefWypi7f0r0ETOhpQJuDcpYkRjpI26Brs3/BK1JOOjzkmNIcbMpRM8eJZLt2A1quJWhrW
	js0V06HtEDX8sU0VE+GroupYnjSXDsXv1E5TCMvCf7+cMg05JLgOT9V6qHfnBQLczY+DTGefeIQNu
	PuFKh/svxs3hGeKkPykqEAHbckmCAVRpyvt99gqUtRxhQxKrcHoZUgDli+mw0bZC9CNn0smxprDjX
	KEMpQme/ZcX7yn/I2rENRRnFqKNNHtkyJ0tR7bMcKn/QG6H5UNvIpwG6hD7LhREaBMT1k7c9VTcFd
	ZrP/nKvQ==;
Received: from www537.your-server.de ([188.40.3.216])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7ue7-00000000Ktt-1NpB;
	Wed, 01 Apr 2026 12:26:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=Ri29mMECTRLPmj/f28VKUr01MxVHN14NYrO0oRv5ApA=; b=HZ2L4lL7AGedirOqb9tjtBdAlV
	1qJiVnnR+Yi01Pq4ofNg0n9DUg4j5WAldI9fdZdPGYA/gvzdaDF9VJF24lSWA1zFhRYwzyu9C11PP
	NwglrqTzTIxGd2/fwobjTI0i/BTxUfqi+nHYtczInCJok2TQd7k4UFcC1KwpAMcSxvRo/vXAa/iSe
	zW5vR7bYYoWOFx44AijBiBBkCf29z9wYD9+AjmiskBJ4qhG75etHcuW9OHcTGjqEk3Lir0hcMdNIV
	/ja3zYgNngwI0ORPqr/U7edKYst61l3GpFO+R+4Gsw02LQySL9vRQsgva+BDc0LVWrKtevRhLhQvv
	AB93wUrA==;
Received: from sslproxy07.your-server.de ([78.47.199.104])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w7ue4-000IQz-0t;
	Wed, 01 Apr 2026 14:26:04 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy07.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w7ue3-00089b-2W;
	Wed, 01 Apr 2026 14:26:03 +0200
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
Subject: [PATCH v3 3/5] phy: ti: phy-j721e-wiz: add support for J722S SoC family
Date: Wed,  1 Apr 2026 14:25:23 +0200
Message-ID: <feb36d4077a57767572b72d8a47c0e582d3e358f.1775045279.git.nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1775045279.git.nora.schiffer@ew.tq-group.com>
References: <cover.1775045279.git.nora.schiffer@ew.tq-group.com>
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/27958/Wed Apr  1 08:24:34 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_132607_497006_87BE3175 
X-CRM114-Status: GOOD (  13.29  )
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

VGhlIEo3MjJTIFdJWiBpcyBtb3N0bHkgaWRlbnRpY2FsIHRvIHRoZSBBTTY0J3MsIGJ1dCBhZGRp
dGlvbmFsbHkgc3VwcG9ydHMKU0dNSUkuCgpTaWduZWQtb2ZmLWJ5OiBOb3JhIFNjaGlmZmVyIDxu
b3JhLnNjaGlmZmVyQGV3LnRxLWdyb3VwLmNvbT4KLS0tCiBkcml2ZXJzL3BoeS90aS9waHktajcy
MWUtd2l6LmMgfCAyNCArKysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAy
NCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvdGkvcGh5LWo3MjFlLXdp
ei5jIGIvZHJpdmVycy9waHkvdGkvcGh5LWo3MjFlLXdpei5jCmluZGV4IDZlOWVjYjg4ZGM4Yjcu
Ljk5YTgwNzQwY2RjNmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L3RpL3BoeS1qNzIxZS13aXou
YworKysgYi9kcml2ZXJzL3BoeS90aS9waHktajcyMWUtd2l6LmMKQEAgLTMzMSw2ICszMzEsNyBA
QCBlbnVtIHdpel90eXBlIHsKIAlKNzIxRV9XSVpfMTZHLAogCUo3MjFFX1dJWl8xMEcsCS8qIEFs
c28gZm9yIEo3MjAwIFNSMS4wICovCiAJQU02NF9XSVpfMTBHLAorCUo3MjJTX1dJWl8xMEcsCiAJ
SjcyMDBfV0laXzEwRywgIC8qIEo3MjAwIFNSMi4wICovCiAJSjc4NFM0X1dJWl8xMEcsCiAJSjcy
MVMyX1dJWl8xMEcsCkBAIC0xMDIwLDYgKzEwMjEsNyBAQCBzdGF0aWMgdm9pZCB3aXpfY2xvY2tf
Y2xlYW51cChzdHJ1Y3Qgd2l6ICp3aXosIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbm9kZSkKIAogCXN3
aXRjaCAod2l6LT50eXBlKSB7CiAJY2FzZSBBTTY0X1dJWl8xMEc6CisJY2FzZSBKNzIyU19XSVpf
MTBHOgogCWNhc2UgSjcyMDBfV0laXzEwRzoKIAljYXNlIEo3ODRTNF9XSVpfMTBHOgogCWNhc2Ug
SjcyMVMyX1dJWl8xMEc6CkBAIC0xMDg5LDYgKzEwOTEsNyBAQCBzdGF0aWMgdm9pZCB3aXpfY2xv
Y2tfaW5pdChzdHJ1Y3Qgd2l6ICp3aXopCiAKIAlzd2l0Y2ggKHdpei0+dHlwZSkgewogCWNhc2Ug
QU02NF9XSVpfMTBHOgorCWNhc2UgSjcyMlNfV0laXzEwRzoKIAljYXNlIEo3MjAwX1dJWl8xMEc6
CiAJCXN3aXRjaCAocmF0ZSkgewogCQljYXNlIFJFRl9DTEtfMTAwTUhaOgpAQCAtMTE1OCw2ICsx
MTYxLDcgQEAgc3RhdGljIGludCB3aXpfY2xvY2tfcHJvYmUoc3RydWN0IHdpeiAqd2l6LCBzdHJ1
Y3QgZGV2aWNlX25vZGUgKm5vZGUpCiAKIAlzd2l0Y2ggKHdpei0+dHlwZSkgewogCWNhc2UgQU02
NF9XSVpfMTBHOgorCWNhc2UgSjcyMlNfV0laXzEwRzoKIAljYXNlIEo3MjAwX1dJWl8xMEc6CiAJ
Y2FzZSBKNzg0UzRfV0laXzEwRzoKIAljYXNlIEo3MjFTMl9XSVpfMTBHOgpAQCAtMTI0Niw2ICsx
MjUwLDE0IEBAIHN0YXRpYyBpbnQgd2l6X3BoeV9mdWxscnRfZGl2KHN0cnVjdCB3aXogKndpeiwg
aW50IGxhbmUpCiAJCWlmICh3aXotPmxhbmVfcGh5X3R5cGVbbGFuZV0gPT0gUEhZX1RZUEVfU0dN
SUkpCiAJCQlyZXR1cm4gcmVnbWFwX2ZpZWxkX3dyaXRlKHdpei0+cDBfZnVsbHJ0X2RpdltsYW5l
XSwgMHgyKTsKIAkJYnJlYWs7CisKKwljYXNlIEo3MjJTX1dJWl8xMEc6CisJCWlmICh3aXotPmxh
bmVfcGh5X3R5cGVbbGFuZV0gPT0gUEhZX1RZUEVfUENJRSkKKwkJCXJldHVybiByZWdtYXBfZmll
bGRfd3JpdGUod2l6LT5wMF9mdWxscnRfZGl2W2xhbmVdLCAweDEpOworCQlpZiAod2l6LT5sYW5l
X3BoeV90eXBlW2xhbmVdID09IFBIWV9UWVBFX1NHTUlJKQorCQkJcmV0dXJuIHJlZ21hcF9maWVs
ZF93cml0ZSh3aXotPnAwX2Z1bGxydF9kaXZbbGFuZV0sIDB4Mik7CisJCWJyZWFrOworCiAJZGVm
YXVsdDoKIAkJcmV0dXJuIDA7CiAJfQpAQCAtMTM1MCw2ICsxMzYyLDE1IEBAIHN0YXRpYyBzdHJ1
Y3Qgd2l6X2RhdGEgYW02NF8xMGdfZGF0YSA9IHsKIAkuY2xrX2Rpdl9zZWxfbnVtID0gV0laX0RJ
Vl9OVU1fQ0xPQ0tTXzEwRywKIH07CiAKK3N0YXRpYyBzdHJ1Y3Qgd2l6X2RhdGEgajcyMnNfMTBn
X2RhdGEgPSB7CisJLnR5cGUgPSBKNzIyU19XSVpfMTBHLAorCS5wbGwwX3JlZmNsa19tdXhfc2Vs
ID0gJnBsbDBfcmVmY2xrX211eF9zZWwsCisJLnBsbDFfcmVmY2xrX211eF9zZWwgPSAmcGxsMV9y
ZWZjbGtfbXV4X3NlbCwKKwkucmVmY2xrX2RpZ19zZWwgPSAmcmVmY2xrX2RpZ19zZWxfMTBnLAor
CS5jbGtfbXV4X3NlbCA9IGNsa19tdXhfc2VsXzEwZywKKwkuY2xrX2Rpdl9zZWxfbnVtID0gV0la
X0RJVl9OVU1fQ0xPQ0tTXzEwRywKK307CisKIHN0YXRpYyBzdHJ1Y3Qgd2l6X2RhdGEgajcyMDBf
cGcyXzEwZ19kYXRhID0gewogCS50eXBlID0gSjcyMDBfV0laXzEwRywKIAkucGxsMF9yZWZjbGtf
bXV4X3NlbCA9ICZzdXBfcGxsMF9yZWZjbGtfbXV4X3NlbCwKQEAgLTEzODksNiArMTQxMCw5IEBA
IHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHdpel9pZF90YWJsZVtdID0gewogCXsK
IAkJLmNvbXBhdGlibGUgPSAidGksYW02NC13aXotMTBnIiwgLmRhdGEgPSAmYW02NF8xMGdfZGF0
YSwKIAl9LAorCXsKKwkJLmNvbXBhdGlibGUgPSAidGksajcyMnMtd2l6LTEwZyIsIC5kYXRhID0g
Jmo3MjJzXzEwZ19kYXRhLAorCX0sCiAJewogCQkuY29tcGF0aWJsZSA9ICJ0aSxqNzIwMC13aXot
MTBnIiwgLmRhdGEgPSAmajcyMDBfcGcyXzEwZ19kYXRhLAogCX0sCi0tIApUUS1TeXN0ZW1zIEdt
YkggfCBNw7xobHN0cmHDn2UgMiwgR3V0IERlbGxpbmcgfCA4MjIyOSBTZWVmZWxkLCBHZXJtYW55
CkFtdHNnZXJpY2h0IE3DvG5jaGVuLCBIUkIgMTA1MDE4Ckdlc2Now6RmdHNmw7xocmVyOiBEZXRs
ZWYgU2NobmVpZGVyLCBSw7xkaWdlciBTdGFobCwgU3RlZmFuIFNjaG5laWRlcgpodHRwczovL3d3
dy50cS1ncm91cC5jb20vCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
