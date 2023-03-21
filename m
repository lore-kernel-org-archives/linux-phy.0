Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB0B8C6FD1D
	for <linux-phy@archiver.kernel.org>; Tue, 21 Mar 2023 01:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N17YYXWntkPkfrLwW3rO1fYscLsu7LPcysY8gxV05LA=; b=rlSCMlEYXhcTJS
	H2e7lipQUq3tASAvyGORI9RRtfEvSEQd9PZkt6dT6O/P4o7JfzQem18+MnbBv9riSqipx8idvmtbJ
	gLn4M6wcGKf67wms7s7pempmD3rqe07BSDTnd7YO3V4WtSSD7TTAp3g1Px0wPwWr/dsGQNpVIlmEk
	ZlyHVwNRBTTSU3BKjinMuUCOeLL1WVex+Ati7Qde2CBhWiUbYNa17l5e4fcU6rUgvo/c9n/MUG1At
	GsKjji5RW8l8oanpX4KneouoNxbYoW26OboB31qZ+tFYQbBn8j7ZDbX9qwC7AhVWibEMM/aXdDPRK
	d3KOSs6SZbvY1QkPohhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peRFZ-00AyWn-0n;
	Tue, 21 Mar 2023 01:57:21 +0000
Received: from ex01.ufhost.com ([61.152.239.75])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peRFV-00AyU5-2v;
	Tue, 21 Mar 2023 01:57:20 +0000
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 7830324E231;
	Tue, 21 Mar 2023 09:56:42 +0800 (CST)
Received: from EXMBX162.cuchost.com (172.16.6.72) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 21 Mar
 2023 09:56:42 +0800
Received: from [192.168.125.82] (183.27.97.64) by EXMBX162.cuchost.com
 (172.16.6.72) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 21 Mar
 2023 09:56:41 +0800
Message-ID: <c2a42311-1e26-f2be-6945-df45b1d81b70@starfivetech.com>
Date: Tue, 21 Mar 2023 09:56:39 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: Add starfive,jh7110-dphy-rx
Content-Language: en-US
To: Rob Herring <robh@kernel.org>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Emil Renner Berthing
	<kernel@esmil.dk>, Conor Dooley <conor@kernel.org>, Paul Walmsley
	<paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
	<aou@eecs.berkeley.edu>, Philipp Zabel <p.zabel@pengutronix.de>, Jack Zhu
	<jack.zhu@starfivetech.com>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>
References: <20230315100421.133428-1-changhuang.liang@starfivetech.com>
 <20230315100421.133428-2-changhuang.liang@starfivetech.com>
 <20230320151437.GA1709620-robh@kernel.org>
From: Changhuang Liang <changhuang.liang@starfivetech.com>
In-Reply-To: <20230320151437.GA1709620-robh@kernel.org>
X-Originating-IP: [183.27.97.64]
X-ClientProxiedBy: EXCAS064.cuchost.com (172.16.6.24) To EXMBX162.cuchost.com
 (172.16.6.72)
X-YovoleRuleAgent: yovoleflag
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_185718_234694_FB4ED868 
X-CRM114-Status: UNSURE (   7.07  )
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

CgpPbiAyMDIzLzMvMjAgMjM6MTQsIFJvYiBIZXJyaW5nIHdyb3RlOgo+IE9uIFdlZCwgTWFyIDE1
LCAyMDIzIGF0IDAzOjA0OjE5QU0gLTA3MDAsIENoYW5naHVhbmcgTGlhbmcgd3JvdGU6Cj4+IFsu
Li5dCj4+ICsgIHJlc2V0czoKPj4gKyAgICBpdGVtczoKPj4gKyAgICAgIC0gZGVzY3JpcHRpb246
IERQSFlfSFcgcmVzZXQKPj4gKyAgICAgIC0gZGVzY3JpcHRpb246IERQSFlfQjA5X0FMV0FZU19P
TiByZXNldAo+PiArCj4+ICsgIHN0YXJmaXZlLGFvbi1zeXNjb246Cj4+ICsgICAgJHJlZjogL3Nj
aGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvcGhhbmRsZS1hcnJheQo+PiArICAgIGl0ZW1z
Ogo+PiArICAgICAgLSBpdGVtczoKPj4gKyAgICAgICAgICAtIGRlc2NyaXB0aW9uOiBwaGFuZGxl
IG9mIEFPTiBTWVNDT04KPj4gKyAgICAgICAgICAtIGRlc2NyaXB0aW9uOiByZWdpc3RlciBvZmZz
ZXQKPj4gKyAgICBkZXNjcmlwdGlvbjogVGhlIHBvd2VyIG9mIGRwaHkgcnggaXMgY29uZmlndXJl
ZCBieSBBT04gU1lTQ09OCj4+ICsgICAgICBpbiB0aGlzIHByb3BlcnR5Lgo+IAo+IFNvdW5kcyBs
aWtlIEFPTiBTWVNDT04gc2hvdWxkIGJlIGEgcG93ZXItZG9tYWlucyBwcm92aWRlci4gQ3VzdG9t
IAo+IHBoYW5kbGUgbGlua3MgYXJlIGZvciB0aGluZ3Mgd2hpY2ggZG9uJ3QgZml0IHN0YW5kYXJk
IGJpbmRpbmdzLgo+IApIaSwgUm9iCgpJbiBzdGFyZml2ZSBqaDcxMTAgU29D77yMd2UgaGF2ZSBh
Y2hpZXZlZCB0aGUgcG93ZXItZG9tYWlucyBwcm92aWRlciBhcyBmb2xsb3c6Cmh0dHBzOi8vcGF0
Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1wbS9jb3Zlci8yMDIzMDExOTA5NDQ0Ny4y
MTkzOS0xLXdhbGtlci5jaGVuQHN0YXJmaXZldGVjaC5jb20vCgpCdXQgdGhpcyBBT04gU1lTQ09O
IGlzIGEgbWlzY2VsbGFuZW91cyByZWdpc3Rlci4gSXQgZGlmZmVyZW50IG9mZnNldHMgY29uZmln
dXJlIHRoZSBkaWZmZXJlbnQgZnVuY3Rpb25zIApvZiB0aGUgZGlmZmVyZW50IG1vZHVsZXMuIFNv
IHdlIGRvbid0IG1ha2UgYSBmcmFtZXdvcmsgZm90IGl0LiBXaGF0IGRvIHlvdSB0aGluaz8KClRo
YW5rcwoKPj4gKwo+PiArICAiI3BoeS1jZWxscyI6Cj4+ICsgICAgY29uc3Q6IDAKPj4gKwo+PiAr
cmVxdWlyZWQ6Cj4+ICsgIC0gY29tcGF0aWJsZQo+PiArICAtIHJlZwo+PiArICAtIGNsb2Nrcwo+
PiArICAtIGNsb2NrLW5hbWVzCj4+ICsgIC0gcmVzZXRzCj4+ICsgIC0gc3RhcmZpdmUsYW9uLXN5
c2Nvbgo+PiArICAtICIjcGh5LWNlbGxzIgo+PiBbLi4uXQo+PgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
