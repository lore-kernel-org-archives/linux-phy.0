Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C15E6CED26B
	for <linux-phy@archiver.kernel.org>; Tue,  8 Oct 2024 05:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jcJObeJOwtsYXcNF4GilfXZDE1UQ8Ce2GlOuFz2MeMQ=; b=TJ9uYTguehNDTB
	4StWZtA1SUYlQcE7s422rfKd5TGxmua4Eh9fUXxpeLMr3vjoMA71oJrRL6FmR30ehy7t2guWzukq2
	XihdkjUu6axBRPKAw8M5PLxxQxJ2YL4TcHvsS9CVOjz4vTTQFp2o5tDIRiJwgdBRckWOeom5sXIzw
	k3UAxCRY4nN9GSpuoj7qquYWi8N6eS+TFbGgpnJ7yOWsGTs0TcpkJpgAfoYCuZbFVYVTvKqGaAbiY
	qN9y58aqSQCKTLHKqm6ktnCNcy9YlAYlVTf5vB1gb5symRW7NeYrJkEfWQ27brPy+USc4uwqKOVAr
	F8lJDGt/Arc4PjxRLMFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sy2wI-00000004Zco-280t;
	Tue, 08 Oct 2024 05:39:18 +0000
Received: from mout.gmx.net ([212.227.15.19])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sy2wF-00000004ZcM-0NWW
	for linux-phy@lists.infradead.org;
	Tue, 08 Oct 2024 05:39:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1728365932; x=1728970732;
	i=markus.stockhausen@gmx.de;
	bh=SKeA7RfR4J9+xtFtAAT8MJcALhd35xK5lwA2tQlHCr0=;
	h=X-UI-Sender-Class:From:To:References:In-Reply-To:Subject:Date:
	 Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=VGrI1aXqyiIOIGHvegCQBMWSyd2M4k9y/exKG0Ar3zweZPZywISp69jzqN3fz9FD
	 /dUinqi6jm+a3zk81rhrMRx1P29xofK8W6a9E95aGKcvAQD+RPHlTUrW9hNetyV6b
	 Xk5/FJgDmW+S2TFo5WMW15Y18vbGKSgUYmNNus9CaBvntdg0xb074j/LfwCdOPt3s
	 /IMfiuiC2P8/lJKyLBZcWFk/WQU9Ba0zzJ4YKo2Xgqk9QfKlBHHr8VVdqrxpa+2rg
	 28xf4sHmFrnQPkgiX+jkVe9OZaAqBZ+e2tkj4vXzhIF7fysem6YAaEV0faejAWcn8
	 9BWmcPQsLHAwpHU9TQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from colnote55 ([94.31.70.45]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MlNtP-1thJpe482n-00ikn7; Tue, 08
 Oct 2024 07:38:52 +0200
From: <markus.stockhausen@gmx.de>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>,
	<linux-phy@lists.infradead.org>,
	<chris.packham@alliedtelesis.co.nz>,
	<devicetree@vger.kernel.org>
References: <20241007163623.3274510-1-markus.stockhausen@gmx.de> <20241007163623.3274510-2-markus.stockhausen@gmx.de> <e0355f2b-9d77-4792-9405-14b0bf79ac32@kernel.org>
In-Reply-To: <e0355f2b-9d77-4792-9405-14b0bf79ac32@kernel.org>
Subject: AW: [PATCH v2 1/3] dt-bindings: phy: add realtek,otto-serdes PHY binding
Date: Tue, 8 Oct 2024 07:38:51 +0200
Message-ID: <000b01db1944$5bd444b0$137cce10$@gmx.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: de
Thread-Index: AQFmt424TDky7oOEBHAYnHfWLjuWPwFdE8X8Ac4j3w+zS7stEA==
X-Provags-ID: V03:K1:BD86Jxm+zif7uHM99wnZfdNic5d7tFVWO0J7EPkrjpGO+EzvuTx
 eg377ftigEK5IjG6KN4pFyqiyHf9P9btg8mE001hml8sAJbpJmLSaB+b1Pavi9mNF7847yk
 jIHjrd4Bulo9ZJ0stvKPSiWe6JWW+CJe/ovTSoXCH77VLuIEqPpcmtb3f+gR7nMj0lKdeJ7
 X7Vgm4R+b+iTk7RUrEj8Q==
UI-OutboundReport: notjunk:1;M01:P0:JAcUen3rVpY=;vRDpTDi0ps83f41qzdtDRs6Te95
 OyI1DfL+VTFp04iz7AmWG4FWgU9C0AkrBEneCVSTd6nwl35PjV/Dh5pNhI0VkUeBlIcm5p3eB
 2mDmDL/mBCIgZJUAN2RN+ahLotjAKo+r3TDKGm808/UkkjdXThStuS3SqEVmLI28Gudnj7adV
 oFgQti/q9JKbiP4Vawk8SrW/yKPVfKNJhrl29fPk/QZspRbBp52m1GoK6BzBioHfuLAqFU/qM
 1e6C0Qa48504p+zCXOslDtBumQwxcOpJ/4Ykh9JPC2we0oPDwBMRN0NBfdG3W6APe9ChrtEi3
 63LKM0UwuCL9k9Pbc1HcJzExrn0+V10e3Sg85TCYPF7dcmDiR85SXdju1B0Lb3B5iiMuSt0CY
 qpSs6Obob9m8DvS1paaY3ZBdKI6DWPs8YBUaqQ2ngM/SZVkjxzWAaZo3iS4Ih1BIFMMK/6Cmt
 4l0F/31etWZ1c4nNbKeZg5uwhM5ImrRvfnTPgxfYvMTrTuaM1cf9mo/smkfXi0OMfrBMFp6xa
 XQcSwhORODLHTsQ5NTeUC3u19h9euVi1aRI7sH/G9rifCplutWmGhhix0hy3U2ozZLlEfdD9p
 zgKHQYpGLHPhmBQWePi3QGTM0YvkdZ9gj28qetOKrcUM//gyAGHTaVibElMeo6WMKGjp1HaUx
 HfGaBBpnB34cq3xbfAaadDhW9g4+slQd/PlXpshOXwgmF9sHDj05yzFNDGjgTb2TGVVGUHAQR
 Zuuhk/TK6vHrCd7nw7SYRHzEVhoQ406Azo5TbMnUzeyDKRPDk94NVHKUYGfcAJ5FCXyba/4ux
 O+ip27PUMtZ5Ti0Dz94EVGdQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_223915_436329_9DB04A71 
X-CRM114-Status: UNSURE (   6.92  )
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

PiAtLS0tLVVyc3Byw7xuZ2xpY2hlIE5hY2hyaWNodC0tLS0tCj4gVm9uOiBLcnp5c3p0b2YgS296
bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+IAo+IEdlc2VuZGV0OiBNb250YWcsIDcuIE9rdG9iZXIg
MjAyNCAyMToyNgo+IEFuOiBNYXJrdXMgU3RvY2toYXVzZW4gPG1hcmt1cy5zdG9ja2hhdXNlbkBn
bXguZGU+OyBsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZzsgY2hyaXMucGFja2hhbUBhbGxp
ZWR0ZWxlc2lzLmNvLm56OyBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZwo+IEJldHJlZmY6IFJl
OiBbUEFUQ0ggdjIgMS8zXSBkdC1iaW5kaW5nczogcGh5OiBhZGQgcmVhbHRlayxvdHRvLXNlcmRl
cyBQSFkgYmluZGluZwo+Cj4gLi4uIGFuZCBzdGlsbCBub3QgdGVzdGVkLiBTZW5kaW5nIHVudGVz
dGVkIGNvZGUgaXMgd2FzdGUgb2Ygb3VyIHRpbWUuCgpIaSBLcnp5c3p0b2YsCgphcHByZWNpYXRl
IHlvdXIgZmVlZGJhY2sgYW5kIEkgZG8gbm90IHdhbnQgdG8gd2FzdGUgeW91ciB0aW1lLiBNeSBm
aXhlcyB3aGVyZSBhIG1peApvZiB5b3VyIGZlZWRiYWNrIGFuZCBzb21lIGhhbGYtYmFrZWQgIm1h
a2UgZHRfYmluZGluZ19jaGVjayIgZmVlZGJhY2tzIChiZWNhdXNlCnBhY2thZ2VzIHdoZXJlIG1p
c3NpbmcpLiBNeSBmYXVsdCBhbmQgc29ycnkgZm9ydCBoZSBub2lzZS4KClRvIGdldCBuZXh0IHZl
cnNpb24gaW4gYmV0dGVyIHNoYXBlIHR3byBxdWVzdGlvbnMgcmVnYXJkaW5nIHlvdXIgZmVlZGJh
Y2s6CgoxLiAiTWVzc2VkIHdyYXBwaW5nIjogQWNjb3JkaW5nIHRvIGNoZWNrcGF0Y2ggMTAwIGNo
YXJzL2xpbmUgYXJlIGFjY2VwdGVkLiAKU28gSSBkZXNpZ25lZCB0aGUgY29tbWVudHMgaW4gdGhl
IGRyaXZlci4gRG9lcyBkZXZpY2V0cmVlIGRpZmZlciBmcm9tIHRoYXQ/CgoyICJCaW5kaW5ncyB2
cyBkcml2ZXJzIi4gVGhlIGlkZWEgYWJvdXQgY29udHJvbGxlZCBwb3J0cyBjYW1lIGZyb20gb3Ro
ZXIgYmluZGluZ3MuCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwv
Z2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9zdCxzdGloNDA3LWlycS1zeXNjZmcueWFtbD9oPXY2
LjEyLXJjMgpFLmcuIHN0LGludmVydC1leHQuIFNvbWV0aGluZyBsaWtlIHRoaXMgd2lsbCBiZSBu
ZWVkZWQgaW4gdGhlIGZ1dHVyZSBiZWNhdXNlIHRoZQpTZXJEZXMgYWxsb3cgdG8gc3dhcCBwb2xh
cml0eSB3aGljaCBtdXN0IGJlIGNoYW5nZWQgZGVwZW5kaW5nIG9uIHRoZSBzd2l0Y2gKZGVzaWdu
LiBIb3cgdG8gZG8gdGhpcz8KCkJlc3QgcmVnYXJkcy4KCk1hcmt1cwoKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
