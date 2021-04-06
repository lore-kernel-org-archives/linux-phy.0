Return-Path: <SRS0=WDaa=JD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC19AC433ED
	for <linux-phy@archiver.kernel.org>; Tue,  6 Apr 2021 19:13:34 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 92286613E5
	for <linux-phy@archiver.kernel.org>; Tue,  6 Apr 2021 19:13:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 92286613E5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+nTgBTOd88+l+UZ//WgyHQItC1is7CBNW4zyxCNjZhY=; b=JY8S53xBrdh131SzfSCLFXIdW
	u5+NnGH3/nMOplseTzEtKgFUTyWF9fjQoXAuSAg81+CTa5J0Y0Vpdhxf78TtQI1YgJpOUymQ9TWEf
	PI4SuQd1o4Mq4jYMYDZMQCcakNkUrDA5uwL0Yfiw8QWu4u2J3JhKKXZ68CtkF4+wXaCu6O1IAP17j
	djbjEgCsUdjG3bAjrQNCa/lcWccR5wV3CX7KsjxBJtO0J5R1/G/Ba7ei6+QXW6QM8+h/gQoSdvOCd
	d/hYEtxUYD9+AWUYUoSirWy8ZdJS+gLiAYw2A7Xxe2rS43sY6gi0F7kJT6piJlsG6dPJtYgG0ioXj
	okRzrGzRQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTr8m-003JBu-RY; Tue, 06 Apr 2021 19:13:32 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTr8j-003JBV-7Q
 for linux-phy@lists.infradead.org; Tue, 06 Apr 2021 19:13:31 +0000
Received: by mail-lf1-x12c.google.com with SMTP id b4so24472842lfi.6
 for <linux-phy@lists.infradead.org>; Tue, 06 Apr 2021 12:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=FhFTdFDdGwtDL8WY3HaGkOD3A8VWyO84+61OymRMX6I=;
 b=WIB6XW/TiJRxHSNFzvZ89RPfRmdEtET5o80KxRx1DZ4VN1BtYk1JplyRzZSYu8ROSd
 i7k1kNwKkoRSKRyBvarg8CZNNxcz0Q38byR3zYlIGZuZc7Bi+oMgCpvfyDYg0lRdtFxh
 PXNiH0Pvkz9Lh8rISYecHCBbKQbHRzL0z52zOZCA51beXvABDhSek1JzrTXLpRJjsboO
 mT4Wlr4XdKrSOPa7nellz0tTKuqNkxsBTvUNiej0cCcZrlYOHmv7pSU9s586aatbfOft
 ywaLW1b1MuCiEXZ6RapvjMxaPKmAMoLAUa8C1zg+4SznYZgZNBqMiTQPqTHbl4BuLyJm
 dJtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FhFTdFDdGwtDL8WY3HaGkOD3A8VWyO84+61OymRMX6I=;
 b=IYthGEet3/X0lHuiKea9KQGDET21FPDAPlayHcY23wwP32O8Hzqm+2BpRbNj0Lc0sP
 vaJVeoEPXOm/AnLXhflkNgXycjTLGxR29vdKd4+fodwq/64SCRthe7yjSX7DHSwO2d4V
 ItfKAiXTQY25rCLVwudb08jO84xL7Q1lXvu+DpVtP9Ztq69r20ioyac7kX2zjDro9XDT
 Mth0k/LeIgmkSoPLvtXetZWv55As1H7FuvXMi2FJnt2tUow5P7HedUoWqBfBVAqKoAMT
 a9XkPTIHBy4xrJ0slWW9mqBmr26KAbsFeD1buG7qIzYBu7J4PmODE1ZmncnVAhSpEF4m
 iiKQ==
X-Gm-Message-State: AOAM53065mpwwTVvGT6PiW0bApVxiqQ1dhBvJOzUNubgZWd9PtiSvtMI
 ALeyM+4WFpiUw2nMJzP+lR8=
X-Google-Smtp-Source: ABdhPJy8SprgTYVC07ZYxq7KFVBM738NYdUpa/R4brmPLEBRaVtsE39u4bAX874SyJSO5VoObxpC1Q==
X-Received: by 2002:a05:6512:2388:: with SMTP id
 c8mr21291336lfv.262.1617736408327; 
 Tue, 06 Apr 2021 12:13:28 -0700 (PDT)
Received: from [10.0.0.113] (91-157-86-200.elisa-laajakaista.fi.
 [91.157.86.200])
 by smtp.gmail.com with ESMTPSA id z30sm46687lfg.162.2021.04.06.12.13.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 06 Apr 2021 12:13:27 -0700 (PDT)
Subject: Re: [PATCH 11/16] dmaengine: ti: k3-psil-j721e: Add entry for CSI2RX
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Benoit Parrot <bparrot@ti.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Alexandre Courbot <acourbot@chromium.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>,
 Helen Koike <helen.koike@collabora.com>,
 Michael Tretter <m.tretter@pengutronix.de>, Peter Chen <peter.chen@nxp.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, dmaengine@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
References: <20210330173348.30135-1-p.yadav@ti.com>
 <20210330173348.30135-12-p.yadav@ti.com>
 <78a5983c-04c8-4a4c-04fe-bb1f31e87375@gmail.com>
 <20210406150942.4kyjh2ehsvklupjr@ti.com>
 <54b0846e-d633-2a03-2c64-f1f0a85c2410@gmail.com>
 <20210406165554.5mhn4u5enbf2tvaz@ti.com>
 <20210406171029.nku6hrmw7pohr5ri@ti.com>
From: =?UTF-8?Q?P=c3=a9ter_Ujfalusi?= <peter.ujfalusi@gmail.com>
Message-ID: <81cce247-b06c-1aef-0dc0-3c592f6ef393@gmail.com>
Date: Tue, 6 Apr 2021 22:13:29 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210406171029.nku6hrmw7pohr5ri@ti.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210406_201329_477637_7CEFAC1D 
X-CRM114-Status: GOOD (  20.77  )
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

CgpPbiA0LzYvMjEgODoxMCBQTSwgUHJhdHl1c2ggWWFkYXYgd3JvdGU6Cj4gT24gMDYvMDQvMjEg
MTA6MjVQTSwgUHJhdHl1c2ggWWFkYXYgd3JvdGU6Cj4+IE9uIDA2LzA0LzIxIDA2OjMzUE0sIFDD
qXRlciBVamZhbHVzaSB3cm90ZToKPj4+Cj4+Pgo+Pj4gT24gNC82LzIxIDY6MDkgUE0sIFByYXR5
dXNoIFlhZGF2IHdyb3RlOgo+Pj4+IE9uIDA0LzA0LzIxIDA0OjI0UE0sIFDDqXRlciBVamZhbHVz
aSB3cm90ZToKPj4+Pj4gSGkgUHJhdHl1c2gsCj4+Pj4+Cj4+Pj4+IE9uIDMvMzAvMjEgODozMyBQ
TSwgUHJhdHl1c2ggWWFkYXYgd3JvdGU6Cj4+Pj4+PiBUaGUgQ1NJMlJYIHN1YnN5c3RlbSB1c2Vz
IFBTSS1MIERNQSB0byB0cmFuc2ZlciBmcmFtZXMgdG8gbWVtb3J5LiBJdCBjYW4KPj4+Pj4+IGhh
dmUgdXAgdG8gMzIgdGhyZWFkcyBidXQgdGhlIGN1cnJlbnQgZHJpdmVyIG9ubHkgc3VwcG9ydHMg
dXNpbmcgb25lLiBTbwo+Pj4+Pj4gYWRkIGFuIGVudHJ5IGZvciB0aGF0IG9uZSB0aHJlYWQuCj4+
Pj4+Cj4+Pj4+IElmIHlvdSBhcmUgYWJzb2x1dGVseSBzdXJlIHRoYXQgdGhlIG90aGVyIHRocmVh
ZHMgYXJlIG5vdCBnb2luZyB0byBiZQo+Pj4+PiB1c2VkLCB0aGVuOgo+Pj4+Cj4+Pj4gVGhlIG9w
cG9zaXRlIGluIGZhY3QuIEkgZG8gZXhwZWN0IG90aGVyIHRocmVhZHMgdG8gYmUgdXNlZCBpbiB0
aGUgCj4+Pj4gZnV0dXJlLiBCdXQgdGhlIGN1cnJlbnQgZHJpdmVyIGNhbiBvbmx5IHVzZSBvbmUg
c28gSSBmaWd1cmVkIGl0IGlzIAo+Pj4+IGJldHRlciB0byBhZGQganVzdCB0aGUgdGhyZWFkIHRo
YXQgaXMgY3VycmVudGx5IG5lZWRlZCBhbmQgdGhlbiBJIGNhbiAKPj4+PiBhbHdheXMgYWRkIHRo
ZSByZXN0IGxhdGVyLgo+Pj4+Cj4+Pj4gV2h5IGRvZXMgdGhpcyBoYXZlIHRvIGJlIGEgb25lLWFu
ZC1kb25lIGRlYWw/IElzIHRoZXJlIGFueXRoaW5nIHdyb25nIAo+Pj4+IHdpdGggYWRkaW5nIHRo
ZSBvdGhlciB0aHJlYWRzIHdoZW4gdGhlIGRyaXZlciBjYW4gYWN0dWFsbHkgdXNlIHRoZW0/Cj4+
Pgo+Pj4gWW91IGNhbiBza2lwIENDaW5nIERNQWVuZ2luZSAoYW5kIG1lIDspICkuIExlc3Mgc3Vi
c3lzdGVtcyBpcyB0aGUgYmV0dGVyCj4+PiB3aGVuIHNlbmRpbmcgcGF0Y2hlcy4uLgo+Pgo+PiBJ
J20gYSBiaXQgY29uZnVzZWQgaGVyZS4gSWYgeW91IGFyZSBubyBsb25nZXIgaW50ZXJlc3RlZCBp
biBtYWludGFpbmluZyAKPj4gdGhlIFRJIERNQSBkcml2ZXJzIHRoZW4gdGhhdCdzIGZpbmUsIEkg
Y2FuIHNraXAgQ0NpbmcgeW91LiBCdXQgdGhlIHBhdGNoIAo+PiBpcyBzdGlsbCByZWxldmFudCB0
byB0aGUgZG1hZW5naW5lIGxpc3Qgc28gd2h5IHNob3VsZCBJIHNraXAgQ0NpbmcgaXQ/IAo+PiBB
bmQgaWYgSSBkb24ndCBDQyB0aGUgZG1hZW5naW5lIGxpc3QgdGhlbiBvbiB3aGljaCBsaXN0IHdv
dWxkIEkgZ2V0IAo+PiBjb21tZW50cy9yZXZpZXdzIGZvciB0aGUgcGF0Y2g/Cj4gCj4gSWdub3Jl
IHRoaXMuIEdvdCB5b3VyIHBvaW50LiBXaWxsIGRvIGl0IGluIHYyLgoKSWYgeW91IGtub3cgdGhh
dCB5b3Ugd2lsbCBiZSBhZGRpbmcgdGhlIG90aGVyIHRocmVhZHMgaW4gdGhlIG5lYXIgZnV0dXJl
CnRoZW4gZG8gaXQgd2l0aCBvbmUgcGF0Y2guIFdoZW4geW91IGFkZCB0aGUgc3VwcG9ydCBpbiB0
aGUgY3NpMnJ4IGRyaXZlcgp0aGVuIHlvdSBkb24ndCBuZWVkIHRvIGNoYW5nZSB0aGUgRE1BZW5n
aW5lIGZpbGVzLCB0aHVzIG5vIG5lZWQgdG8gQ0MKZG1hZW5naW5lIG9yIG1lLCB0aHVzIHlvdSBu
ZWVkIHRvIGdhdGhlciBsZXNzIGFja2VkLWJ5cywgdGh1cyB0aGUgdGltZQp0byBtYWlubGluZSBt
aWdodCBiZSBzaG9ydGVyLgoKLS0gClDDqXRlcgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
