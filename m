Return-Path: <SRS0=Nzjq=OL=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8054C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 21 Sep 2021 20:19:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6268461165
	for <linux-phy@archiver.kernel.org>; Tue, 21 Sep 2021 20:19:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6268461165
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GV0JJAHOqL4OaoscqC/rcUPIZDAhxyiXjhwSnxlQ8O4=; b=l9hY51go0C7fQK
	X4H1feuUqQ91OM3LSqZvLLFHT8XPAq04MUXaoiEvPrBUOa6NSj+vfDNLs98udA8tYT7NALGGntHLO
	3W1BvLfkQDhp/d0zHkSsBDY/r50ekPUwH6YuA1clTLmepciz0ZQoL1suNzc13c9lnJFxDjNPFNkqN
	FbmPxlkNvgJ5yb37sEi/O3Ypo79RrH/4adeqsiBaL6y3tHcMLCLzHZurFG1hBw/UB4AGifUieoCIb
	IASE9xTPRUfPKLmTiHpQFzOnCdbUCft5+Nw6WUdNsqjE30k/UQvy7X2eZha5/+OMPRZKCnwoTDe9C
	YDjKXUDSJuliZplCtVDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSmEu-005hAn-Tq; Tue, 21 Sep 2021 20:19:40 +0000
Received: from mail-oi1-f177.google.com ([209.85.167.177])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSmEs-005hAQ-T5
 for linux-phy@lists.infradead.org; Tue, 21 Sep 2021 20:19:40 +0000
Received: by mail-oi1-f177.google.com with SMTP id 6so917277oiy.8
 for <linux-phy@lists.infradead.org>; Tue, 21 Sep 2021 13:19:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=wtdzPeFFuh0gwpeXMWbzGz7iIlMKdoUJF4jnFh3Iuso=;
 b=tY8stvUsQpRC/C1KedMFivGdmid4q8FqG2vV+ScZIbbElF1gVSGyiTxaZa/jOsMmfg
 Ohc7PQPBVg0nERUPWZ2GHs/G56M+8rYyQnd8NeTTm4koYIbIAFu95wB2SuYhKvcgJ9/8
 /ykT9FiaCUWrkR9m1fKZqS8UkEHo87ENJ4kl94Us/siJfS9+IEmziyZTsahfEcqnHedU
 iQJB0E8ICetShpLI+c4nW/v1R8Wzr74cQ8H96kok3dxruh31OBehtSEsNtt9PdqNah4Q
 O5aNQ9zwgbBF1eki3Gsl493h04IK4klJ8k6OPA+IiGplWGHsHpWHY/DtXAW9PHh7MxKt
 iZ+w==
X-Gm-Message-State: AOAM530HEZ3JTSG3CK9+zio3/Xo0Lp0+Q3LHTnouE2IPMSldBiZwCK9d
 WaCrLC71zt6AK+Hua/OJAg==
X-Google-Smtp-Source: ABdhPJyQaz7j6iheSPexlbp1r5PyD+pT4Y70SHhBnVukKtq2Dy8v4eVnHIFls4zuwxVWAikryGsJ+w==
X-Received: by 2002:a05:6808:1513:: with SMTP id
 u19mr5174867oiw.109.1632255577537; 
 Tue, 21 Sep 2021 13:19:37 -0700 (PDT)
Received: from robh.at.kernel.org (rrcs-192-154-179-36.sw.biz.rr.com.
 [192.154.179.36])
 by smtp.gmail.com with ESMTPSA id y11sm19816oof.32.2021.09.21.13.19.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Sep 2021 13:19:37 -0700 (PDT)
Received: (nullmailer pid 3262470 invoked by uid 1000);
 Tue, 21 Sep 2021 20:19:35 -0000
Date: Tue, 21 Sep 2021 15:19:35 -0500
From: Rob Herring <robh@kernel.org>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-phy@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Lee Jones <lee.jones@linaro.org>, devicetree@vger.kernel.org,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH 2/4] dt-bindings: phy: brcm,ns-usb2-phy: bind just a PHY
 block
Message-ID: <YUo+V6yItABkQI1S@robh.at.kernel.org>
References: <20210913080024.6951-1-zajec5@gmail.com>
 <20210913080024.6951-2-zajec5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210913080024.6951-2-zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210921_131938_982908_2C5DF86E 
X-CRM114-Status: GOOD (  12.33  )
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

T24gTW9uLCAxMyBTZXAgMjAyMSAxMDowMDoyMiArMDIwMCwgUmFmYcWCIE1pxYJlY2tpIHdyb3Rl
Ogo+IEZyb206IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiAKPiBUaGUgb2xk
IGJpbmRpbmcgd2FzIGNvdmVyaW5nIHRoZSB3aG9sZSBETVUgYmxvY2sgc3BhY2UgKERNVSBibG9j
awo+IGNvbnRhaW5zIENSVSBibG9jayB3aGljaCBjb250YWlucyBVU0IgUEhZKS4gSXQgd2FzIGEg
YmFkIGRlc2lnbiwKPiBvdmVya2lsbCBhbmQgYSBub24tZ2VuZXJpYyBzb2x1dGlvbi4KPiAKPiBO
b3J0aHN0YXIncyBVU0IgMi4wIFBIWSBpcyBhIHNtYWxsIGJsb2NrIChwYXJ0IG9mIHRoZSBDUlUg
TUZEKSBhbmQKPiBiaW5kaW5nIHNob3VsZCBiZSBkZXNpZ25lZCB0byByZXByZXNlbnQgdGhhdCBw
cm9wZXJseS4gUmV3b3JrIHRoZQo+IGJpbmRpbmcgdG8gbWFwIGp1c3QgUEhZIHdpdGggdGhlICJy
ZWciIHByb3BlcnR5IGFuZCB1c2Ugc3lzY29uIHRvCj4gcmVmZXJlbmNlIHNoYXJlZCByZWdpc3Rl
ciB0aGF0IGNvbnRyb2xzIGJsb2NrIGFjY2Vzcy4KPiAKPiBUaGUgb2xkIGJpbmRpbmcgaXMgZGVw
cmVjYXRlZCBub3cuCj4gCj4gU2lnbmVkLW9mZi1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBt
aWxlY2tpLnBsPgo+IC0tLQo+ICAuLi4vYmluZGluZ3MvcGh5L2JjbS1ucy11c2IyLXBoeS55YW1s
ICAgICAgICAgfCAyNSArKysrKysrKysrKysrKy0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxOSBp
bnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+IAoKUmV2aWV3ZWQtYnk6IFJvYiBIZXJyaW5n
IDxyb2JoQGtlcm5lbC5vcmc+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
