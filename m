Return-Path: <SRS0=BSok=K2=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C82DCC47082
	for <linux-phy@archiver.kernel.org>; Mon, 31 May 2021 06:51:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7DFE461248
	for <linux-phy@archiver.kernel.org>; Mon, 31 May 2021 06:51:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7DFE461248
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8JzDPjNo8tGGXDO/h4Dl+/1AfD+6xQbHQgrmMdzejEk=; b=MQNkTDlFXLFbGqaloFFnCDf6Cx
	tZDUXMKIaP5ZNnilQlkzagNuYEHBOWHHchF3Q7tjn4wiSHzM00P7Dl+iopcwbfVQoZx616acqSx3i
	6eRqRaOFVHCrTu7nI+K5Bm6gP2foc7BzTTXsdOff8vnKMpaPQoVneKfcG578NSZMH3pLEVveRjaDF
	RNJpz5Hn/Ks/rPWnlGGo86jeYFCkfuMebFu9s6isQlZnTm3b0UjHGlCHgtyRWYSaLQFqOC/cNvw3H
	+B8i3xfHhDQn05ZiONfh9e/OAk0yxJE+nV/o95ylYr/MIA2M7BF6Sr9Wi/hxEgZEF8JXM7sdRqfqa
	87qcU/QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnblq-00B09z-1R; Mon, 31 May 2021 06:51:30 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnblm-00B08G-Ph
 for linux-phy@lists.infradead.org; Mon, 31 May 2021 06:51:28 +0000
Received: by mail-lj1-x22f.google.com with SMTP id w15so13637820ljo.10
 for <linux-phy@lists.infradead.org>; Sun, 30 May 2021 23:51:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=pGbvjsQ37+jhwoTwXSRVtiv0VjHlEBl/iAsUrS7UtXI=;
 b=hXg5TLxR35V+P8DOvRVcEG4fZVvvgkMDgSuSOBMcnTn80GvFnFcgszCDhOxSY77mw/
 LUSPlemcexvlbiNL1snPeDN9CvhQXvvrHzVgt79+eJNG8hgV8M8qETubw6zHUNny+pAu
 xFHMP0u5g6C6hsq77JSYrj+99H6ZLvxNrY41Kw5Ak3ooMouzL4KFS1wprWhfU9wZ2FE2
 2z+deGsQm+N65n1+0wqxNEmg8sCDq8Fzo8w8oHVUP7jDRPkPGUpgSqmeBd5Z6uZrfvzF
 GyxJPIuBIccSc0P1C6S1Z5Q3qAZAIvXdGSVXloijnHOGft7zD5mwe69o70ifUlIg1eQt
 yW3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pGbvjsQ37+jhwoTwXSRVtiv0VjHlEBl/iAsUrS7UtXI=;
 b=WkBJFdzhne+azteJLf7pEReqwvVnitMGHtqZlMV3ayW+QRoTtsCta8j1gN/opN4IJs
 IfkmZ8Euxi/BCN21TDKVQQH3hfyfYLRwdxC73yFan1Pkxw409e+lROgBtevPlzZ5qvkO
 i4uRto8SrNaqAORghslBYnMlkZqaCV4ngTiA0G6yan5YzrYgEbmahGKcuyGJwW/Zj7xz
 NVqOVboMHjBUnerFeqvjh1r9uI/2FEIcAAivSJUkrjMJ/rodwIs+Ke46OEjD/0rxkqBb
 hPbkuKO0W+O31AEHWqwORHumex4dM0ll+goe3BRibB66WO+FmKRZ0vMNdz4zQoDlBY/P
 ILMA==
X-Gm-Message-State: AOAM533cDKQwM8RBwSiOT4h2An91uKf2RQVQCBfbtUgPwQenyL3tApQW
 rt2qPCh/q81JVa7CE6OM0qc=
X-Google-Smtp-Source: ABdhPJxjBVD5611rqLkegv8AKexDzJznggK21Mrdxoh24WU8L/02VVAqivz6BhHz4YuOiypc0whS5A==
X-Received: by 2002:a2e:b0d6:: with SMTP id g22mr15634459ljl.349.1622443882778; 
 Sun, 30 May 2021 23:51:22 -0700 (PDT)
Received: from [10.0.0.40] (91-155-111-71.elisa-laajakaista.fi.
 [91.155.111.71])
 by smtp.gmail.com with ESMTPSA id 12sm1477053lju.41.2021.05.30.23.51.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 30 May 2021 23:51:22 -0700 (PDT)
Subject: Re: [PATCH v2 11/18] dmaengine: ti: k3-psil-j721e: Add entry for
 CSI2RX
To: Pratyush Yadav <p.yadav@ti.com>, Maxime Ripard <mripard@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Steve Longerbeam <slongerbeam@gmail.com>,
 Benoit Parrot <bparrot@ti.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, dmaengine@vger.kernel.org
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20210526152308.16525-1-p.yadav@ti.com>
 <20210526152308.16525-12-p.yadav@ti.com>
From: =?UTF-8?Q?P=c3=a9ter_Ujfalusi?= <peter.ujfalusi@gmail.com>
Message-ID: <916ef8c9-e444-afa4-d544-8fa672690fdb@gmail.com>
Date: Mon, 31 May 2021 09:51:21 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210526152308.16525-12-p.yadav@ti.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210530_235126_846001_A9062297 
X-CRM114-Status: GOOD (  21.61  )
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

CgpPbiAyNi8wNS8yMDIxIDE4OjIzLCBQcmF0eXVzaCBZYWRhdiB3cm90ZToKPiBUaGUgQ1NJMlJY
IHN1YnN5c3RlbSB1c2VzIFBTSS1MIERNQSB0byB0cmFuc2ZlciBmcmFtZXMgdG8gbWVtb3J5LiBJ
dCBjYW4KPiBoYXZlIHVwIHRvIDMyIHRocmVhZHMgYnV0IHRoZSBjdXJyZW50IGRyaXZlciBvbmx5
IHN1cHBvcnRzIHVzaW5nIG9uZS4gU28KPiBhZGQgYW4gZW50cnkgZm9yIHRoYXQgb25lIHRocmVh
ZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBQcmF0eXVzaCBZYWRhdiA8cC55YWRhdkB0aS5jb20+Cj4g
Cj4gLS0tCj4gCj4gQ2hhbmdlcyBpbiB2MjoKPiAtIEFkZCBhbGwgNjQgdGhyZWFkcywgaW5zdGVh
ZCBvZiBoYXZpbmcgb25seSB0aGUgb25lIHRocmVhZCBiZWluZwo+ICAgY3VycmVudGx5IHVzZWQg
YnkgdGhlIGRyaXZlci4KCkhvdyBtYW55IHRocmVhZHMgQ1NJMlJYIGhhdmU/IDMyIChhcyBwZXIg
Y29tbWl0IG1lc3NhZ2UpIG9yIDY0PyBJZiBJCnJlY2FsbCByaWdodCwgaXQgaXMgMzIuCgo+IAo+
ICBkcml2ZXJzL2RtYS90aS9rMy1wc2lsLWo3MjFlLmMgfCA3MyArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA3MyBpbnNlcnRpb25zKCspCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hL3RpL2szLXBzaWwtajcyMWUuYyBiL2RyaXZlcnMvZG1h
L3RpL2szLXBzaWwtajcyMWUuYwo+IGluZGV4IDc1ODA4NzBlZDc0Ni4uMzRlM2ZjNTY1YTM3IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZG1hL3RpL2szLXBzaWwtajcyMWUuYwo+ICsrKyBiL2RyaXZl
cnMvZG1hL3RpL2szLXBzaWwtajcyMWUuYwo+IEBAIC01OCw2ICs1OCwxNCBAQAo+ICAJCX0sCQkJ
CQlcCj4gIAl9Cj4gIAo+ICsjZGVmaW5lIFBTSUxfQ1NJMlJYKHgpCQkJCQlcCj4gKwl7CQkJCQkJ
XAo+ICsJCS50aHJlYWRfaWQgPSB4LAkJCQlcCj4gKwkJLmVwX2NvbmZpZyA9IHsJCQkJXAo+ICsJ
CQkuZXBfdHlwZSA9IFBTSUxfRVBfTkFUSVZFLAlcCj4gKwkJfSwJCQkJCVwKPiArCX0KPiArCj4g
IC8qIFBTSS1MIHNvdXJjZSB0aHJlYWQgSURzLCB1c2VkIGZvciBSWCAoRE1BX0RFVl9UT19NRU0p
ICovCj4gIHN0YXRpYyBzdHJ1Y3QgcHNpbF9lcCBqNzIxZV9zcmNfZXBfbWFwW10gPSB7Cj4gIAkv
KiBTQTJVTCAqLwo+IEBAIC0xMzgsNiArMTQ2LDcxIEBAIHN0YXRpYyBzdHJ1Y3QgcHNpbF9lcCBq
NzIxZV9zcmNfZXBfbWFwW10gPSB7Cj4gIAlQU0lMX1BETUFfWFlfUEtUKDB4NDcwNyksCj4gIAlQ
U0lMX1BETUFfWFlfUEtUKDB4NDcwOCksCj4gIAlQU0lMX1BETUFfWFlfUEtUKDB4NDcwOSksCj4g
KwkvKiBDU0kyUlggKi8KPiArCVBTSUxfQ1NJMlJYKDB4NDk0MCksCj4gKwlQU0lMX0NTSTJSWCgw
eDQ5NDEpLAo+ICsJUFNJTF9DU0kyUlgoMHg0OTQyKSwKPiArCVBTSUxfQ1NJMlJYKDB4NDk0Myks
Cj4gKwlQU0lMX0NTSTJSWCgweDQ5NDQpLAo+ICsJUFNJTF9DU0kyUlgoMHg0OTQ1KSwKPiArCVBT
SUxfQ1NJMlJYKDB4NDk0NiksCj4gKwlQU0lMX0NTSTJSWCgweDQ5NDcpLAo+ICsJUFNJTF9DU0ky
UlgoMHg0OTQ4KSwKPiArCVBTSUxfQ1NJMlJYKDB4NDk0OSksCj4gKwlQU0lMX0NTSTJSWCgweDQ5
NGEpLAo+ICsJUFNJTF9DU0kyUlgoMHg0OTRiKSwKPiArCVBTSUxfQ1NJMlJYKDB4NDk0YyksCj4g
KwlQU0lMX0NTSTJSWCgweDQ5NGQpLAo+ICsJUFNJTF9DU0kyUlgoMHg0OTRlKSwKPiArCVBTSUxf
Q1NJMlJYKDB4NDk0ZiksCj4gKwlQU0lMX0NTSTJSWCgweDQ5NTApLAo+ICsJUFNJTF9DU0kyUlgo
MHg0OTUxKSwKPiArCVBTSUxfQ1NJMlJYKDB4NDk1MiksCj4gKwlQU0lMX0NTSTJSWCgweDQ5NTMp
LAo+ICsJUFNJTF9DU0kyUlgoMHg0OTU0KSwKPiArCVBTSUxfQ1NJMlJYKDB4NDk1NSksCj4gKwlQ
U0lMX0NTSTJSWCgweDQ5NTYpLAo+ICsJUFNJTF9DU0kyUlgoMHg0OTU3KSwKPiArCVBTSUxfQ1NJ
MlJYKDB4NDk1OCksCj4gKwlQU0lMX0NTSTJSWCgweDQ5NTkpLAo+ICsJUFNJTF9DU0kyUlgoMHg0
OTVhKSwKPiArCVBTSUxfQ1NJMlJYKDB4NDk1YiksCj4gKwlQU0lMX0NTSTJSWCgweDQ5NWMpLAo+
ICsJUFNJTF9DU0kyUlgoMHg0OTVkKSwKPiArCVBTSUxfQ1NJMlJYKDB4NDk1ZSksCj4gKwlQU0lM
X0NTSTJSWCgweDQ5NWYpLAo+ICsJUFNJTF9DU0kyUlgoMHg0OTYwKSwKPiArCVBTSUxfQ1NJMlJY
KDB4NDk2MSksCj4gKwlQU0lMX0NTSTJSWCgweDQ5NjIpLAo+ICsJUFNJTF9DU0kyUlgoMHg0OTYz
KSwKPiArCVBTSUxfQ1NJMlJYKDB4NDk2NCksCj4gKwlQU0lMX0NTSTJSWCgweDQ5NjUpLAo+ICsJ
UFNJTF9DU0kyUlgoMHg0OTY2KSwKPiArCVBTSUxfQ1NJMlJYKDB4NDk2NyksCj4gKwlQU0lMX0NT
STJSWCgweDQ5NjgpLAo+ICsJUFNJTF9DU0kyUlgoMHg0OTY5KSwKPiArCVBTSUxfQ1NJMlJYKDB4
NDk2YSksCj4gKwlQU0lMX0NTSTJSWCgweDQ5NmIpLAo+ICsJUFNJTF9DU0kyUlgoMHg0OTZjKSwK
PiArCVBTSUxfQ1NJMlJYKDB4NDk2ZCksCj4gKwlQU0lMX0NTSTJSWCgweDQ5NmUpLAo+ICsJUFNJ
TF9DU0kyUlgoMHg0OTZmKSwKPiArCVBTSUxfQ1NJMlJYKDB4NDk3MCksCj4gKwlQU0lMX0NTSTJS
WCgweDQ5NzEpLAo+ICsJUFNJTF9DU0kyUlgoMHg0OTcyKSwKPiArCVBTSUxfQ1NJMlJYKDB4NDk3
MyksCj4gKwlQU0lMX0NTSTJSWCgweDQ5NzQpLAo+ICsJUFNJTF9DU0kyUlgoMHg0OTc1KSwKPiAr
CVBTSUxfQ1NJMlJYKDB4NDk3NiksCj4gKwlQU0lMX0NTSTJSWCgweDQ5NzcpLAo+ICsJUFNJTF9D
U0kyUlgoMHg0OTc4KSwKPiArCVBTSUxfQ1NJMlJYKDB4NDk3OSksCj4gKwlQU0lMX0NTSTJSWCgw
eDQ5N2EpLAo+ICsJUFNJTF9DU0kyUlgoMHg0OTdiKSwKPiArCVBTSUxfQ1NJMlJYKDB4NDk3Yyks
Cj4gKwlQU0lMX0NTSTJSWCgweDQ5N2QpLAo+ICsJUFNJTF9DU0kyUlgoMHg0OTdlKSwKPiArCVBT
SUxfQ1NJMlJYKDB4NDk3ZiksCj4gIAkvKiBDUFNXOSAqLwo+ICAJUFNJTF9FVEhFUk5FVCgweDRh
MDApLAo+ICAJLyogQ1BTVzAgKi8KPiAKCi0tIApQw6l0ZXIKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
