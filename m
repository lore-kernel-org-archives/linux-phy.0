Return-Path: <SRS0=C3a/=JB=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BE9BC433B4
	for <linux-phy@archiver.kernel.org>; Sun,  4 Apr 2021 13:24:03 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A4E6061358
	for <linux-phy@archiver.kernel.org>; Sun,  4 Apr 2021 13:24:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A4E6061358
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XvLd79p2nHfH4HM2FJueJT59s8xIrTnnADO1NauuP0k=; b=SuS1czaLFPMAx0f2jR0L4QxBb
	4xIotfmMu5I+cVYgzwkYtpGEFyQr0n+zGT5ZZNPCcQtJ/HwV3bye421dBRFvVg+RxxdfCEMgVM7Zz
	pS0j8SFmPngC/RZSJ+W9rrvZ87bttlsMdTGQan9jKNJkOfmxN3ANU1ZymnOMMPzoQ4ooHwTagUrkJ
	RHvxZbQVoPGknBPJ2TDk8u9/aaQ1irFvJa3j4QD0Zo8tn6hTCH7koLqZrjGuGpliTSU7WbtKU42nH
	qKcrlon/G/mpESgkuFyed9UUb4+QCJyC6PAOusacaGmOyjMJWviD3qWA1RzYZcpURC5+J9op3AArP
	pYgM/O9Rg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lT2jM-00FlVP-DY; Sun, 04 Apr 2021 13:24:00 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lT2jI-00FlUV-EH
 for linux-phy@lists.infradead.org; Sun, 04 Apr 2021 13:23:54 +0000
Received: by mail-lf1-x132.google.com with SMTP id m12so13863288lfq.10
 for <linux-phy@lists.infradead.org>; Sun, 04 Apr 2021 06:23:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Nzpd4Vuf3kote7U8VoWNZRV+1cO2k+CwPl3bjJUX7L4=;
 b=jTGiv/ltH6tXMRh1sa9l53S3rlQ36ZEyoAOJ0OFYDQD4lcg1DYLAt4HMH2OfaFb3Ks
 7WfrNF6HtYqm80fkl2TWUk8vMxTKf3Ar7OO2WTIkf6XTIX6NdezwR+8/Os8zSc1DN2EV
 bYcOlHYmIxM1LcR2Ea36+G8e4oscGJLSsCMsqrxki62wsaz2fGRAbdmtdeMjcn2TRzUQ
 4cnNPvo+xch76Yu/9jPc7rRBVEj8ZWJUUYnmEyvVPr1MPtuwSSIwpCodv2MSpoIM+ut0
 yoC5XaNHHYwZ2+W963Jq4TgMSvAyN3dEYO/S0jydgxJrGnMBw6fe28dpCLbnhPPkqE2o
 nZ9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Nzpd4Vuf3kote7U8VoWNZRV+1cO2k+CwPl3bjJUX7L4=;
 b=rQSvueLVQEhqFUzJCzIAqKkW+ym4S90hSZ90PnbAGyvZeLgvGYuock5Nj6ve+Kujjd
 7qAvIlApX4ChdIAFwEHGD4rW1OSyH5ggt+qELKZD+nKgrfypmLK5HCGChfcY3U7uiUtJ
 4orJQdY0hNBa80uOL4NPToCfe8+whlNB6wq1qJn+KkylWgXncfXMaBgFPmUKRrNFn6Tp
 kf0J8In+vKPFLbfTXsuphvlw41ltxb6wYW4JSVBVWMtXYTSP+Ffum9RzFrQJ8o7mU0Dl
 Q2rZKulb0gn2QZTFUFLuK1uEh8JdR+DgPiDD3vwLtEtfCldLS+/i9CkxVL29j5RpZK1j
 tIZA==
X-Gm-Message-State: AOAM5307BG1jxqLeDO+LPlwI44/YNW2BKXS7uv1tcfsXEXEaHYnYMGE9
 vM3oOEmet9vP4qYwqHwUUE0=
X-Google-Smtp-Source: ABdhPJwHUBVB8eEUjrJWD4onehy9Mey9+WSE1xcAdji3JR12pymm1dFCr3aamwRwRGniVZLgXGLsOQ==
X-Received: by 2002:ac2:4471:: with SMTP id y17mr14574843lfl.307.1617542630157; 
 Sun, 04 Apr 2021 06:23:50 -0700 (PDT)
Received: from [10.0.0.42] (91-157-86-200.elisa-laajakaista.fi.
 [91.157.86.200])
 by smtp.gmail.com with ESMTPSA id y22sm1441965lfg.133.2021.04.04.06.23.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 04 Apr 2021 06:23:49 -0700 (PDT)
Subject: Re: [PATCH 11/16] dmaengine: ti: k3-psil-j721e: Add entry for CSI2RX
To: Pratyush Yadav <p.yadav@ti.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Benoit Parrot <bparrot@ti.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Alexandre Courbot <acourbot@chromium.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>,
 Helen Koike <helen.koike@collabora.com>,
 Michael Tretter <m.tretter@pengutronix.de>, Peter Chen <peter.chen@nxp.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, dmaengine@vger.kernel.org
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
References: <20210330173348.30135-1-p.yadav@ti.com>
 <20210330173348.30135-12-p.yadav@ti.com>
From: =?UTF-8?Q?P=c3=a9ter_Ujfalusi?= <peter.ujfalusi@gmail.com>
Message-ID: <78a5983c-04c8-4a4c-04fe-bb1f31e87375@gmail.com>
Date: Sun, 4 Apr 2021 16:24:47 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210330173348.30135-12-p.yadav@ti.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210404_142352_599862_8BC9978C 
X-CRM114-Status: GOOD (  21.31  )
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

SGkgUHJhdHl1c2gsCgpPbiAzLzMwLzIxIDg6MzMgUE0sIFByYXR5dXNoIFlhZGF2IHdyb3RlOgo+
IFRoZSBDU0kyUlggc3Vic3lzdGVtIHVzZXMgUFNJLUwgRE1BIHRvIHRyYW5zZmVyIGZyYW1lcyB0
byBtZW1vcnkuIEl0IGNhbgo+IGhhdmUgdXAgdG8gMzIgdGhyZWFkcyBidXQgdGhlIGN1cnJlbnQg
ZHJpdmVyIG9ubHkgc3VwcG9ydHMgdXNpbmcgb25lLiBTbwo+IGFkZCBhbiBlbnRyeSBmb3IgdGhh
dCBvbmUgdGhyZWFkLgoKSWYgeW91IGFyZSBhYnNvbHV0ZWx5IHN1cmUgdGhhdCB0aGUgb3RoZXIg
dGhyZWFkcyBhcmUgbm90IGdvaW5nIHRvIGJlCnVzZWQsIHRoZW46CkFja2VkLWJ5OiBQZXRlciBV
amZhbHVzaSA8cGV0ZXIudWpmYWx1c2lAZ21haWwuY29tPgoKYnV0IEkgd291bGQgY29uc2lkZXIg
YWRkaW5nIHRoZSBvdGhlciB0aHJlYWRzIGlmIHRoZXJlIGlzIGEgY2hhbmNlIHRoYXQKdGhlIGNz
MnJ4IHdpbGwgbmVlZCB0byBzdXBwb3J0IGl0IGluIHRoZSBmdXR1cmUuCgo+IFNpZ25lZC1vZmYt
Ynk6IFByYXR5dXNoIFlhZGF2IDxwLnlhZGF2QHRpLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9kbWEv
dGkvazMtcHNpbC1qNzIxZS5jIHwgMTAgKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMTAg
aW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS90aS9rMy1wc2lsLWo3
MjFlLmMgYi9kcml2ZXJzL2RtYS90aS9rMy1wc2lsLWo3MjFlLmMKPiBpbmRleCA3NTgwODcwZWQ3
NDYuLjE5ZmZhMzFlNmRjNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2RtYS90aS9rMy1wc2lsLWo3
MjFlLmMKPiArKysgYi9kcml2ZXJzL2RtYS90aS9rMy1wc2lsLWo3MjFlLmMKPiBAQCAtNTgsNiAr
NTgsMTQgQEAKPiAgCQl9LAkJCQkJXAo+ICAJfQo+ICAKPiArI2RlZmluZSBQU0lMX0NTSTJSWCh4
KQkJCQkJXAo+ICsJewkJCQkJCVwKPiArCQkudGhyZWFkX2lkID0geCwJCQkJXAo+ICsJCS5lcF9j
b25maWcgPSB7CQkJCVwKPiArCQkJLmVwX3R5cGUgPSBQU0lMX0VQX05BVElWRSwJXAo+ICsJCX0s
CQkJCQlcCj4gKwl9Cj4gKwo+ICAvKiBQU0ktTCBzb3VyY2UgdGhyZWFkIElEcywgdXNlZCBmb3Ig
UlggKERNQV9ERVZfVE9fTUVNKSAqLwo+ICBzdGF0aWMgc3RydWN0IHBzaWxfZXAgajcyMWVfc3Jj
X2VwX21hcFtdID0gewo+ICAJLyogU0EyVUwgKi8KPiBAQCAtMTM4LDYgKzE0Niw4IEBAIHN0YXRp
YyBzdHJ1Y3QgcHNpbF9lcCBqNzIxZV9zcmNfZXBfbWFwW10gPSB7Cj4gIAlQU0lMX1BETUFfWFlf
UEtUKDB4NDcwNyksCj4gIAlQU0lMX1BETUFfWFlfUEtUKDB4NDcwOCksCj4gIAlQU0lMX1BETUFf
WFlfUEtUKDB4NDcwOSksCj4gKwkvKiBDU0kyUlggKi8KPiArCVBTSUxfQ1NJMlJYKDB4NDk0MCks
Cj4gIAkvKiBDUFNXOSAqLwo+ICAJUFNJTF9FVEhFUk5FVCgweDRhMDApLAo+ICAJLyogQ1BTVzAg
Ki8KPiAKCi0tIApQw6l0ZXIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
