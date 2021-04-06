Return-Path: <SRS0=WDaa=JD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C91CDC433ED
	for <linux-phy@archiver.kernel.org>; Tue,  6 Apr 2021 15:33:03 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 660AA6139C
	for <linux-phy@archiver.kernel.org>; Tue,  6 Apr 2021 15:33:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 660AA6139C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IVw+mo4IWGq1nV3ysvisNliQgt3E8HXWaCAsvb+3+sE=; b=DV5VmH2OllpFUmWz4Dtk26MBy
	KPEL4LJzwi9sZd5S2D8VQ9jmVpeejGHiUPe2YPTVOETkgci1qS+MheBV9+bpfaRRrsqSdSw6A8S8H
	+x6Q+cvEWRgbK+oixBCmm1cNJDs23KALaECo76TMjF3eZmFRFI6Xw/Ahm02hcCfESwBqSwke/jMs4
	QPW1bueqvPc8rKPDCJed+O2BNI0mCHbKorw2QEMYhg8RME08Wreo8yuWvmC5X6uGoUpvP64c60s6l
	yM9ufqy9tmqCJz5/ktvSgHuccG4gMAntxbyLJbG8Iq4mUCHkG6zmTGdQSszeQZBc1kPU72f+COaEa
	QHPkgiW1A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTnhN-002veK-Sf; Tue, 06 Apr 2021 15:33:01 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTnhI-002vdf-IN
 for linux-phy@lists.infradead.org; Tue, 06 Apr 2021 15:32:58 +0000
Received: by mail-lj1-x22f.google.com with SMTP id u20so16936323lja.13
 for <linux-phy@lists.infradead.org>; Tue, 06 Apr 2021 08:32:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ezZNk4sv/EZWbQ+FrDDVFe1cGPk81iOpvFjH5bRIvIE=;
 b=Q/fJsnOqdM/Luj+magEcEmdw1nOnRxNLtMR2wRRPmtFZmCufD35Qwr7VPofLH5GLNl
 SinibKnUJJQ5SBShGafaQx1pejB1wTZYNnQiN09XeAbGfBR/rzRHcXW3koJip580045T
 kYD5LjfwG687Hy1bPxNQ/R5QxGjBcfKmrM3Lvp8uI77ZPoHZYNHp3U1o6Vw8qbnY9bwf
 c4tqwUfvaXwLQYC7x1+XdG6JVhpcsE5YAQw78xx8lYE9VyDU7dJgXYf+j708F42/hBcG
 05dGvqvhTBPhdhF1VH3TWeFPNC1WsaqqK9ZUCeNpp4B40UQ33w0Ms6QMwlunMXH6Au8a
 9d3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ezZNk4sv/EZWbQ+FrDDVFe1cGPk81iOpvFjH5bRIvIE=;
 b=G+NlL+NFW+zdTUNSTnQGBQ2JODA59HHcYdAqDdNSKG5sjOJ1wufYoYJwTLA4w5zvBV
 k6Jv/5N08UaV1xIKTuuugVnQ8Ilmpq5BZtRMZh6JIetIbSct/uQwJRHRbCTlvMfmmrGh
 ZobGZMYf3CjDxNAQ6opB4xsctPU5SQH7ZSisL2Tg1/Qy8BLFncsGkN0SFrkazSuThMuA
 FS6S/j07ZIFMSIhlF8heECHKyHT7mJRKWoJtCt84rnGeFvZyNQmb0iZCqcILVYYLBfoP
 981ggsaQ7I6y+L8Rz1C9M/tlyLpx3Epo6dIUfP0lOjENA+KlAxQLr35wnLMzKUGEBQQX
 iPaA==
X-Gm-Message-State: AOAM5300mrSS/3x5sNkacBAEtUKxtM8LS3WVUFIgc1a+5utXnebb7PTG
 dofsnC+tbpp+H3gM45ejdWg=
X-Google-Smtp-Source: ABdhPJyFQnVLW01zqbivc9dqKMhXgYuxnkRmqSE5gT0eKQlOu9jOiBT2GBXa6Cu06NOk/lEW8XAefQ==
X-Received: by 2002:a2e:9143:: with SMTP id q3mr19804523ljg.378.1617723175021; 
 Tue, 06 Apr 2021 08:32:55 -0700 (PDT)
Received: from [10.0.0.42] (91-157-86-200.elisa-laajakaista.fi.
 [91.157.86.200])
 by smtp.gmail.com with ESMTPSA id f11sm2251868lfm.230.2021.04.06.08.32.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 06 Apr 2021 08:32:54 -0700 (PDT)
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
From: =?UTF-8?Q?P=c3=a9ter_Ujfalusi?= <peter.ujfalusi@gmail.com>
Message-ID: <54b0846e-d633-2a03-2c64-f1f0a85c2410@gmail.com>
Date: Tue, 6 Apr 2021 18:33:54 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210406150942.4kyjh2ehsvklupjr@ti.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210406_163256_787802_82C79C81 
X-CRM114-Status: GOOD (  26.29  )
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

CgpPbiA0LzYvMjEgNjowOSBQTSwgUHJhdHl1c2ggWWFkYXYgd3JvdGU6Cj4gT24gMDQvMDQvMjEg
MDQ6MjRQTSwgUMOpdGVyIFVqZmFsdXNpIHdyb3RlOgo+PiBIaSBQcmF0eXVzaCwKPj4KPj4gT24g
My8zMC8yMSA4OjMzIFBNLCBQcmF0eXVzaCBZYWRhdiB3cm90ZToKPj4+IFRoZSBDU0kyUlggc3Vi
c3lzdGVtIHVzZXMgUFNJLUwgRE1BIHRvIHRyYW5zZmVyIGZyYW1lcyB0byBtZW1vcnkuIEl0IGNh
bgo+Pj4gaGF2ZSB1cCB0byAzMiB0aHJlYWRzIGJ1dCB0aGUgY3VycmVudCBkcml2ZXIgb25seSBz
dXBwb3J0cyB1c2luZyBvbmUuIFNvCj4+PiBhZGQgYW4gZW50cnkgZm9yIHRoYXQgb25lIHRocmVh
ZC4KPj4KPj4gSWYgeW91IGFyZSBhYnNvbHV0ZWx5IHN1cmUgdGhhdCB0aGUgb3RoZXIgdGhyZWFk
cyBhcmUgbm90IGdvaW5nIHRvIGJlCj4+IHVzZWQsIHRoZW46Cj4gCj4gVGhlIG9wcG9zaXRlIGlu
IGZhY3QuIEkgZG8gZXhwZWN0IG90aGVyIHRocmVhZHMgdG8gYmUgdXNlZCBpbiB0aGUgCj4gZnV0
dXJlLiBCdXQgdGhlIGN1cnJlbnQgZHJpdmVyIGNhbiBvbmx5IHVzZSBvbmUgc28gSSBmaWd1cmVk
IGl0IGlzIAo+IGJldHRlciB0byBhZGQganVzdCB0aGUgdGhyZWFkIHRoYXQgaXMgY3VycmVudGx5
IG5lZWRlZCBhbmQgdGhlbiBJIGNhbiAKPiBhbHdheXMgYWRkIHRoZSByZXN0IGxhdGVyLgo+IAo+
IFdoeSBkb2VzIHRoaXMgaGF2ZSB0byBiZSBhIG9uZS1hbmQtZG9uZSBkZWFsPyBJcyB0aGVyZSBh
bnl0aGluZyB3cm9uZyAKPiB3aXRoIGFkZGluZyB0aGUgb3RoZXIgdGhyZWFkcyB3aGVuIHRoZSBk
cml2ZXIgY2FuIGFjdHVhbGx5IHVzZSB0aGVtPwoKWW91IGNhbiBza2lwIENDaW5nIERNQWVuZ2lu
ZSAoYW5kIG1lIDspICkuIExlc3Mgc3Vic3lzdGVtcyBpcyB0aGUgYmV0dGVyCndoZW4gc2VuZGlu
ZyBwYXRjaGVzLi4uCgo+IAo+PiBBY2tlZC1ieTogUGV0ZXIgVWpmYWx1c2kgPHBldGVyLnVqZmFs
dXNpQGdtYWlsLmNvbT4KPj4KPj4gYnV0IEkgd291bGQgY29uc2lkZXIgYWRkaW5nIHRoZSBvdGhl
ciB0aHJlYWRzIGlmIHRoZXJlIGlzIGEgY2hhbmNlIHRoYXQKPj4gdGhlIGNzMnJ4IHdpbGwgbmVl
ZCB0byBzdXBwb3J0IGl0IGluIHRoZSBmdXR1cmUuCj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBQcmF0
eXVzaCBZYWRhdiA8cC55YWRhdkB0aS5jb20+Cj4+PiAtLS0KPj4+ICBkcml2ZXJzL2RtYS90aS9r
My1wc2lsLWo3MjFlLmMgfCAxMCArKysrKysrKysrCj4+PiAgMSBmaWxlIGNoYW5nZWQsIDEwIGlu
c2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEvdGkvazMtcHNpbC1q
NzIxZS5jIGIvZHJpdmVycy9kbWEvdGkvazMtcHNpbC1qNzIxZS5jCj4+PiBpbmRleCA3NTgwODcw
ZWQ3NDYuLjE5ZmZhMzFlNmRjNiAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvZG1hL3RpL2szLXBz
aWwtajcyMWUuYwo+Pj4gKysrIGIvZHJpdmVycy9kbWEvdGkvazMtcHNpbC1qNzIxZS5jCj4+PiBA
QCAtNTgsNiArNTgsMTQgQEAKPj4+ICAJCX0sCQkJCQlcCj4+PiAgCX0KPj4+ICAKPj4+ICsjZGVm
aW5lIFBTSUxfQ1NJMlJYKHgpCQkJCQlcCj4+PiArCXsJCQkJCQlcCj4+PiArCQkudGhyZWFkX2lk
ID0geCwJCQkJXAo+Pj4gKwkJLmVwX2NvbmZpZyA9IHsJCQkJXAo+Pj4gKwkJCS5lcF90eXBlID0g
UFNJTF9FUF9OQVRJVkUsCVwKPj4+ICsJCX0sCQkJCQlcCj4+PiArCX0KPj4+ICsKPj4+ICAvKiBQ
U0ktTCBzb3VyY2UgdGhyZWFkIElEcywgdXNlZCBmb3IgUlggKERNQV9ERVZfVE9fTUVNKSAqLwo+
Pj4gIHN0YXRpYyBzdHJ1Y3QgcHNpbF9lcCBqNzIxZV9zcmNfZXBfbWFwW10gPSB7Cj4+PiAgCS8q
IFNBMlVMICovCj4+PiBAQCAtMTM4LDYgKzE0Niw4IEBAIHN0YXRpYyBzdHJ1Y3QgcHNpbF9lcCBq
NzIxZV9zcmNfZXBfbWFwW10gPSB7Cj4+PiAgCVBTSUxfUERNQV9YWV9QS1QoMHg0NzA3KSwKPj4+
ICAJUFNJTF9QRE1BX1hZX1BLVCgweDQ3MDgpLAo+Pj4gIAlQU0lMX1BETUFfWFlfUEtUKDB4NDcw
OSksCj4+PiArCS8qIENTSTJSWCAqLwo+Pj4gKwlQU0lMX0NTSTJSWCgweDQ5NDApLAo+Pj4gIAkv
KiBDUFNXOSAqLwo+Pj4gIAlQU0lMX0VUSEVSTkVUKDB4NGEwMCksCj4+PiAgCS8qIENQU1cwICov
Cj4+Pgo+Pgo+PiAtLSAKPj4gUMOpdGVyCj4gCgotLSAKUMOpdGVyCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
