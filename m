Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECF30CA5FD9
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 16:31:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zZvgsXilOwClcRz3PUafrK/+YwsShDkNg2AwKeCu8tg=; b=4NLwVsjzsOHJx1
	EwzGOBxjt0pQsTwJjvM9kJzGsYbold1bqoByF1FVXTTkJNV2JP0OMn79/8KkyuM4QyvAJsi7QYa4n
	cNXM7jX34qiK1a6RKkHZUKedfc/lOUr1BwTAwLdZ5zsCPxTGgEqHSMpGSZ3ckOgCIa7sc/BVaJcvL
	ahLUkyqkY2DJsEmcdEG3HnlmgYNphlAEt2kva9b9bLqmdVKtTX802tq++MGMzyll7l9R4Yv3U5E7Z
	8zpt61FPDSzyFe1yaanOl80FbnPQ7V/ykEJHwTTFsJmH0NInYg4uqWm5lg+Dn6rM0aqIi6omVDwUm
	OYKcWBFN/zIyPGnzSI2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCJgh-00000009iUl-2iGK;
	Thu, 01 Oct 2026 16:31:15 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCJgX-00000009iRa-2q8p
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 16:31:08 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id A8D161A138F;
	Thu,  1 Oct 2026 16:31:02 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 7AEB260343;
	Thu,  1 Oct 2026 16:31:02 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 8D2A9103282E5;
	Thu,  1 Oct 2026 18:30:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1790872258; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=kYWx5RpivyoZBMxCN5MZurIlKNZ0UC6vnLrCOyUUef0=;
	b=pM0hHJswliRx31sgRkdLbtvJKvRmXuVd78Ui4BoqxLc06jY73JtJ8nCgEbjMspt2Gwf/g/
	vMJEDep25cZCjtSsiWkxPOyVsGBdhLjVr4xZpQ/wxrTGClbTZYCiDILpFrJxYzu7F0+CO+
	LePh6Qd2rP627rlriaUJCotUoy+44jtNvrVApBApRvwkncMPUtZcr0aK6VVPvBEzL5SNVk
	VINtr7tSMZkcZ9WAFqThTh75KEpQ7oZrlMl0so/WRb9BszunI543FoDbri3Yue9YFmNVvW
	7AucLc5wl3DTyAKO7c/UGp275MD/dtDTN04X+ED1gNqI+/3V5gc1wxE2b9JxtA==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: =?utf-8?B?xaB0xJtww6FuIERhbGVja8O9?= <daleckystepan@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,  Neil Armstrong
 <neil.armstrong@linaro.org>,  Manivannan Sadhasivam <mani@kernel.org>,
  linux-phy@lists.infradead.org,  linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: marvell: a3700-comphy: Guard missing polarity
 argument
In-Reply-To: <20261001151939.23658-1-daleckystepan@gmail.com>
 (=?utf-8?B?IsWgdMSbcMOhbglEYWxlY2vDvSIncw==?= message of "Thu, 1 Oct 2026
 17:19:38 +0200")
References: <20261001151939.23658-1-daleckystepan@gmail.com>
User-Agent: mu4e 1.12.12; emacs 30.2
Date: Thu, 01 Oct 2026 18:30:55 +0200
Message-ID: <87ik3lmlhc.fsf@bootlin.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_093106_321045_4C64A84B 
X-CRM114-Status: UNSURE (   8.37  )
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

T24gMDEvMTAvMjAyNiBhdCAxNzoxOTozOCArMDIsIMWgdMSbcMOhbiBEYWxlY2vDvSA8ZGFsZWNr
eXN0ZXBhbkBnbWFpbC5jb20+IHdyb3RlOgoKPiBUaGUgQXJtYWRhIDM3MDAgQ09NUEhZIGJpbmRp
bmcgc3BlY2lmaWVzICNwaHktY2VsbHMgPSA8MT4sIHNvIFBIWQo+IHJlZmVyZW5jZXMgc3VwcGx5
IG9ubHkgdGhlIHBvcnQgYXJndW1lbnQuIEhvd2V2ZXIsCj4gbXZlYnVfYTM3MDBfY29tcGh5X3hs
YXRlKCkgdW5jb25kaXRpb25hbGx5IHJlYWRzIGFyZ3NbMV0gdG8gc2VsZWN0IFRYCj4gYW5kIFJY
IHBvbGFyaXR5IGludmVyc2lvbi4gVGhlIFBIWSBjb3JlIGRvZXMgbm90IGluaXRpYWxpemUgaXRz
Cj4gb2ZfcGhhbmRsZV9hcmdzIHN0cnVjdHVyZSwgYW5kIHRoZSBwaGFuZGxlIHBhcnNlciBmaWxs
cyBvbmx5IHRoZQo+IHN1cHBsaWVkIGNlbGxzLCBsZWF2aW5nIGFyZ3NbMV0gdW5pbml0aWFsaXpl
ZC4KPgo+IFVzaW5nIHRoZSB1bnVzZWQgY2VsbCBjYW4gcHJvZ3JhbSB1bmludGVuZGVkIFNlckRl
cyBwb2xhcml0eS4gT24gYQo+IFR1cnJpcyBNT1ggd2l0aCBhIFBlcmlkb3Qgc3dpdGNoIHJ1bm5p
bmcgT3BlbldydCB3aXRoIExpbnV4IDYuMTguNTQsCj4gdGhlIENQVSBsaW5rIHJlcG9ydHMgUlgg
Q1JDIGVycm9ycyBhbmQgZmFpbHMgdG8gcGFzcyB0cmFmZmljLiBUaGUKPiBzd2l0Y2ggUENTIGRv
ZXMgbm90IHJlY29yZCBhIHBhcnRuZXIgYWR2ZXJ0aXNlbWVudCBkZXNwaXRlIGxpbmstdXAuCj4K
PiBDaGVjayBhcmdzX2NvdW50IGJlZm9yZSByZWFkaW5nIGFyZ3NbMV0sIGxlYXZpbmcgcG9sYXJp
dHkgaW52ZXJzaW9uCj4gZGlzYWJsZWQgd2hlbiB0aGUgc2Vjb25kIGFyZ3VtZW50IHdhcyBub3Qg
c3VwcGxpZWQuIFRoaXMgZG9lcyBub3QKPiBjaGFuZ2UgdGhlIGJpbmRpbmcgb3IgaW50cm9kdWNl
IGEgc3VwcG9ydGVkIHR3by1jZWxsIGludGVyZmFjZS4KPgo+IFRoZSBzYW1lIGNoYW5nZSByZXN0
b3JlcyAyNTAwQkFTRS1YIGNvbW11bmljYXRpb24gb24gdGhlIGFmZmVjdGVkCj4gTU9YIHdpdGgg
bm8gQ1JDIGVycm9ycy4gQ29sZCBib290cywgcmVib290cyBhbmQgaW50ZXJmYWNlIGRvd24vdXAK
PiBjeWNsZXMgd2VyZSBhbHNvIHRlc3RlZCBzdWNjZXNzZnVsbHkgb24gTGludXggNi4xOC41NC4K
Pgo+IEZpeGVzOiA5MzQzMzcwODBjNmMgKCJwaHk6IG1hcnZlbGw6IHBoeS1tdmVidS1hMzcwMC1j
b21waHk6IEFkZCBuYXRpdmUga2VybmVsIGltcGxlbWVudGF0aW9uIikKPiBDYzogc3RhYmxlQHZn
ZXIua2VybmVsLm9yZwo+IENsb3NlczogaHR0cHM6Ly9naXRodWIuY29tL29wZW53cnQvb3Blbndy
dC9pc3N1ZXMvMjQwNjkKPiBBc3Npc3RlZC1ieTogTExNCj4gU2lnbmVkLW9mZi1ieTogxaB0xJtw
w6FuIERhbGVja8O9IDxkYWxlY2t5c3RlcGFuQGdtYWlsLmNvbT4KClJldmlld2VkLWJ5OiBNaXF1
ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
