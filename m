Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D095FEEF2A
	for <linux-phy@archiver.kernel.org>; Tue,  7 Apr 2026 11:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGM/ZPgSJlsZf8/XNqaGPH0ZbT7CfYnB4IRroomJs0E=; b=SNPSN0Grz5EPF+
	NVZGMGmjbOsEG/3A3qoFhBf9fNRbHaejlJ6UD0M2gVeSIssazC7djFhymxFu/vHq3i4Tl+Pf1/vXA
	zAPea3HqPRmbQm3DZCUWymh0tbcfsPOQwUPdSEiP3MHRP2ELzOn87dYnMj5biwIWoqSn2blxomspS
	UeRLdcwTwCLAVd7HLhzqn/MadcxaGWoWgcP6lRVhQGO+/qs8+ZclTYM5GWesDITW056JqcD6hT+vS
	Le5R/Op46MPM3CwN1COc19t7lrCjzzG157LBgdGqcFai7zVKUzwJMHHGjsdMdXRK2BguJtY3tLAbu
	LlkToK7eD04HJNmkWlxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA4pw-00000006O8Q-1UiR;
	Tue, 07 Apr 2026 11:43:16 +0000
Received: from www537.your-server.de ([188.40.3.216])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA4ps-00000006O4W-01Ls;
	Tue, 07 Apr 2026 11:43:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=KqcLRKudHgKSmtkMDFCAvoKWKKoLB9Rc1nid7QyUgsk=; b=ZQMAIW06WFwC6TCvlHx/o4QL4L
	ODT71KRlCXZXffBkox00Ze6KySpdr3z/rc6soWF3hiDlReo9bIHoMBakgWZ7wWIXiC0VYNzvosFSz
	KQcJxrxrBVJqoJYDL2XaUZ0dYPMUbFKNm1CIHxpQbuos6Af3P88wHyCZluY4g0f1CThWZ/0qnGpte
	Vb/kHQCXeLSC3UhOFOqUgjnNtpzuA/8GHrHBzTxV31ZXrtXShFIyl58t4p0nl9Euq6STvfxwQ0VD0
	Mvz0QJEPkY+U08HNSh442Dhyc3MS5HcSYYmjKV7paL0cjjbLz3HFRejBQcu2SIovBas6K8ZiOG+0N
	i9vtlTJQ==;
Received: from sslproxy08.your-server.de ([78.47.166.52])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1wA4pp-000IJf-2r;
	Tue, 07 Apr 2026 13:43:09 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy08.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1wA4po-000PKA-14;
	Tue, 07 Apr 2026 13:43:09 +0200
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
Subject: [PATCH v4 3/5] phy: ti: phy-j721e-wiz: add support for J722S SoC family
Date: Tue,  7 Apr 2026 13:42:35 +0200
Message-ID: <85e9f67f8673dc7039ab87c34cfc9e4de1c7447c.1775559102.git.nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1775559102.git.nora.schiffer@ew.tq-group.com>
References: <cover.1775559102.git.nora.schiffer@ew.tq-group.com>
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/27964/Tue Apr  7 08:24:40 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260407_044312_682228_D4469603 
X-CRM114-Status: GOOD (  12.68  )
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
ei5jIGIvZHJpdmVycy9waHkvdGkvcGh5LWo3MjFlLXdpei5jCmluZGV4IDZiNTg0NzA2YjkxM2Eu
Ljc1MzFhOGEwNDkxMjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L3RpL3BoeS1qNzIxZS13aXou
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
