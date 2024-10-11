Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDD8ED0EE17
	for <linux-phy@archiver.kernel.org>; Fri, 11 Oct 2024 16:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aLLlXBliMuMPSx/FPVXH2mFbLo0rOsVnAVOqvC4YjAA=; b=nq6BK7AQMAlAVP
	/Nc3uKd/JT0wTcAMa2b5UwzGcGdCLqtadk2XsApiiQ+gnEI60OOYA31kGv6ncly3Zk3PWUsVFygVA
	QCDHb4fpc8PVNliys425zujJjr8Wuw0N6Gxu+BjBxKNvU7vGlpGYIYgq2pKj7V+diSNKnjsoTUyoJ
	O60gx1DExX4dQMTudGcr2dztoSmW/La27kyN8ov8lI5a6GOHnmq6srjy0oNZwknqGQ2sGiWbXZHEv
	ZyA24hLgApDvwyo45uxfw8zaHg9d1HvhgY1uK17XcKrLOXxDn04YKFFpnBlWV7DZ+An599BdH/e7T
	D9DsMrIlU+xBCmX/uVDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szIEW-0000000Gw7g-1u3b;
	Fri, 11 Oct 2024 16:11:16 +0000
Received: from mout.gmx.net ([212.227.15.19])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szIET-0000000Gw7D-2eWN
	for linux-phy@lists.infradead.org;
	Fri, 11 Oct 2024 16:11:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1728663048; x=1729267848;
	i=markus.stockhausen@gmx.de;
	bh=pc7/7LfhDUmwwP7Eb8q7Pp44we5Qm7Nizw23oUzdSNk=;
	h=X-UI-Sender-Class:From:To:References:In-Reply-To:Subject:Date:
	 Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=qKWlqDlKjdUxDPX/wOhJfC30VfO5ixts/TIxzWeWUNIODZbIqJQ583f5dXAp8Fo2
	 mbOJrlIrb8/s4IRgb+qyUBM8GKjewSXyQd6lX024Dam7fIcnbEKh63/8WSaa2iFSi
	 yw9SJNsx1PU/56mSe1BLlQhnIDezUaJyRQLGFfpPAbUn7FvcB9UeYAMGe5KVduQKn
	 Oku36/PXVHRFjCuBm8TZqT+nMpKvAJmaGmNdvgVUd+Nc4PVd2V1irFRIkU39gOrbK
	 gRQ651urWo/kgq3Q0eTVowr49DLskIymuKuL8V2BfXYy3bxaII+Nm6RG/MvrmzFDp
	 +XPALXA8UacCLBWBhQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from colnote55 ([94.31.70.17]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mw9Q6-1trFr94BNc-00u0a1; Fri, 11
 Oct 2024 18:10:48 +0200
From: <markus.stockhausen@gmx.de>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>,
	<linux-phy@lists.infradead.org>,
	<chris.packham@alliedtelesis.co.nz>
References: <20241007163623.3274510-1-markus.stockhausen@gmx.de> <20241007163623.3274510-3-markus.stockhausen@gmx.de> <e4ab7c7f-b5a1-4507-add7-862c18b09995@kernel.org>
In-Reply-To: <e4ab7c7f-b5a1-4507-add7-862c18b09995@kernel.org>
Subject: AW: [PATCH v2 2/3] phy: Realtek Otto SerDes driver
Date: Fri, 11 Oct 2024 18:10:48 +0200
Message-ID: <000a01db1bf8$232fb4d0$698f1e70$@gmx.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: de
Thread-Index: AQFmt424TDky7oOEBHAYnHfWLjuWPwGSJaiiAYuAmaqzUYtyAA==
X-Provags-ID: V03:K1:HpyHZqDW6N92b0Va0sgy33ylEGaTtOftH+UxH5OcE1WxBm1VumJ
 voVZO+rfD2/kilt8q3/224hGvyO/vbDtrwo243MkO1uMNkZILL3G2HfUKXVHgMaia9giD6I
 rWI7Ql9gdGevAbBeTUO7kferElcbPcoYTI/ffzZr8Gr/JhQ2NJF6zGOJAU6GXIo3Za8DWmT
 dYA4/sks2bFq6CbyoU9/A==
UI-OutboundReport: notjunk:1;M01:P0:sIA4SC7UM9I=;PwBQADOmzpdk3AqtP87/4TMZTFg
 x18yJ9g4uLwiRwHyc6Xx5LpW1C5fzkyf6/HCmTpevV5ab7nocmDTN6QVSmpOtxEocbcpCuoqF
 YeEGSBkXmRxfm1eJqS78taGavkQL1V97RwjoDr62+NDBi0cUocjyNe+W+72iaGZY7yCMs/6ff
 5bMfn36/ElOSi1aaKYenO8OjhY8/IiiqErmS6jcP98SKpHqI+WzsE1v+QIg/aW+1uYp1+Wbi0
 rKUMOvgRc+XkUDqMGdt9Cb504Ns6YjsfyM390hwgVmbiGsSbv6UN0UhZ2+aWBDzmrbyOU75FU
 sX3r5zcIhLSTk1/+E2nEhF0BPwnF2CRjnhSnpFNmasJY374wBeEc2vRL+eCSSSXadhj4+8fo6
 4knYOUCZUqTcvklkalEUiZlRc/c27kgrls81Q5D2AhhHdRC4G6ndlXEqT4g4XvPQfhByIot/X
 GkInjhFLNQCPEYfhqqPC9Vb8XFikS/GZdwvK1fBA9RsyD6qmSlCpZ/LG0uJcHXpp+PAgTejrb
 53iTTA7BbboEe9NwnQ2uJfiQslCMPt/3X6gih3cra2TDrT+d5OUeK7rULsOTomMztImPoVx5D
 X2vrTekC6ZKRz5xt2vssgYPN99b12IAjL6kdWEnLHZRsDYE3KI8eavwbYrOwjLUP2fkp/qR9k
 FlKwyvKHAe5eNpa0iwlCcQv+BhJ8dGaRmDxxM0x+pqxcjN12F3HEkd9604DQfVDkOQvtO1HZ1
 KwUSi+x7WqGSICy8SQyyNbu8k9bPwpAOdD9CKx+FleluFu2fcBlT7J2RxPrFbuC71Ag8eNDLM
 apN0kGi2gtdwXI5s4pr7B33g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_091113_982275_E53931D4 
X-CRM114-Status: GOOD (  11.01  )
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

PiAtLS0tLVVyc3Byw7xuZ2xpY2hlIE5hY2hyaWNodC0tLS0tCj4gVm9uOiBLcnp5c3p0b2YgS296
bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+IAo+IEdlc2VuZGV0OiBNb250YWcsIDcuIE9rdG9iZXIg
MjAyNCAyMTozMgo+IEFuOiBNYXJrdXMgU3RvY2toYXVzZW4gPG1hcmt1cy5zdG9ja2hhdXNlbkBn
bXguZGU+OyBsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZzsgY2hyaXMucGFja2hhbUBhbGxp
ZWR0ZWxlc2lzLmNvLm56OyBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZwo+IEJldHJlZmY6IFJl
OiBbUEFUQ0ggdjIgMi8zXSBwaHk6IFJlYWx0ZWsgT3R0byBTZXJEZXMgZHJpdmVyCj4gLi4KPiA+
ICtzdGF0aWMgc3NpemVfdCBydHNkc19kYmdfcmVzZXRfd3JpdGUoc3RydWN0IGZpbGUgKmZpbGUs
IGNvbnN0IGNoYXIgX191c2VyICp1c2VyYnVmLAo+ID4gKwkJCQlzaXplX3QgY291bnQsIGxvZmZf
dCAqcHBvcykKPiA+ICt7Cj4gPiArCXN0cnVjdCBzZXFfZmlsZSAqc2VxZiA9IGZpbGUtPnByaXZh
dGVfZGF0YTsKPiA+ICsJc3RydWN0IHJ0c2RzX21hY3JvICptYWNybyA9IGRldl9nZXRfZHJ2ZGF0
YShzZXFmLT5wcml2YXRlKTsKPiA+ICsJc3RydWN0IHJ0c2RzX2N0cmwgKmN0cmwgPSBtYWNyby0+
Y3RybDsKPiA+ICsJaW50IHJldCwgcmVzZXQsIHNpZCA9IG1hY3JvLT5zaWQ7Cj4gPiArCj4gPiAr
CXJldCA9IGtzdHJ0b3UzMl9mcm9tX3VzZXIodXNlcmJ1ZiwgY291bnQsIDEwLCAmcmVzZXQpOwo+
ID4gKwlpZiAocmV0IHx8IHJlc2V0ICE9IDEpCj4gPiArCQlyZXR1cm4gcmV0Owo+ID4gKwo+ID4g
KwlydHNkc19waHlfcmVzZXRfaW50KGN0cmwsIHNpZCk7Cj4gPiArCj4gPiArCXJldHVybiBjb3Vu
dDsKPiA+ICt9Cj4gPiArREVGSU5FX1NIT1dfU1RPUkVfQVRUUklCVVRFKHJ0c2RzX2RiZ19yZXNl
dCk7Cj4KPiBUaGF0J3Mgbm90IGEgZGVidWdmcyBpbnRlcmZhY2UuIERyb3AgcmVzZXQuCj4KCkhp
IEtyenlzenRvZiwKCnRoYW5rcyBmb3IgYWxsIHlvdXIgZmVlZGJhY2sgYW5kIGtpY2tzdGFydGlu
ZyBtZSBpbnRvIHRoaXMgYWxsLiBJIHdlbnQgYmFjayB0byAKdGhlIGRyYXdpbmcgYm9hcmQuIEEg
b3ZlcmhhdWxlZCB2ZXJzaW9uIHdpbGwgYmUgYXZhaWxhYmxlIG92ZXIgdGhlIHdlZWtlbmQuClJl
Z2FyZGluZyB0aGUgZGVidWcgaW50ZXJmYWNlIEkgaGF2ZSBhIHF1ZXN0aW9uIGxlZnQ6CgpUaGUg
Y3VycmVudCBzdGF0ZSBvZiBleHBsb3JhdGlvbiBhbmQgdW5kZXJzdGFuZGluZyBvZiB0aGUgZm91
ciBkaWZmZXJlbnQgU29Dcwpib2lscyBkb3duIHRoYXQgMyBkZWJ1ZyB3cml0aW5nIGZ1bmN0aW9u
cyB3aWxsIGltcHJvdmUgZnVydGhlciB0ZXN0aW5nIGFuZApkZXZlbG9wbWVudCB2ZXJ5IG11Y2gu
CgotIHJlc2V0IFNlckRlcyAtPiB1c2VkIHRvIGNvbXBlbnNhdGUgZm9yIGxpbmsgaGFuZ3MgKGJl
Y2F1c2Ugb2Ygd3JvbmcgZmlybXdhcmUpCi0gY2hhbmdlIG1vZGUgLT4gSSB3aWxsIGNoYW5nZSBp
dCBzbyBpdCB3aWxsIG9ubHkgYWNjZXB0IHN1cHBvcnRlZCBtb2RlcwotIG1vZGlmeSByZWdpc3Rl
cnMgLT4gSSBjYW4gZ28gd2l0aG91dCB0aGF0LgoKT25lIG1heSBhc2sgd2h5PyBUaGVyZSBhcmUg
YSBsb3Qgb2YgZGlmZmVyZW50IGRldmljZXMgb3V0IHRoZXJlIGFuZCBJIGhhdmUgb25seQpvbmUg
b2YgZWFjaCBzZXJpZXMuIFNvIGlmIHRoZSBkcml2ZXIgcHJvdmlkZXMgdGhpcyBkZWJ1Z2dpbmcg
ZmxleGliaWxpdHkgdXNlcnMKKGVzcGVjaWFsbHkgb2YgT3BlbldydCkgY2FuIGFzc2lzdCBpbiBh
bmFseXppbmcvdGVzdGluZyB3aXRob3V0IGNvbXBsZXRlIHJlYnVpbGRzLgoKV2hhdCB3aWxsIGJl
IHRoZSB3YXkgZm9yd2FyZCBoZXJlIHdpdGhvdXQgZHJvcHBpbmcgdGhlIGNvZGU/CgpMYXN0IGJ1
dCBub3QgbGVhc3Q6IEkgZXhwZWN0IHRoZSB2MyB2ZXJzaW9uIHRvIGhhdmUgfjEvMyBvZiB0aGUg
Y29kZSBjaGFuZ2VkLgpTaGFsbCBJIHN0aWxsIGdpdmUgdGhpcyBhIHYzIHRhZz8KCkJlc3QgcmVn
YXJkcy4KCk1hcmt1cwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
