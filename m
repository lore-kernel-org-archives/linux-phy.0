Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C6D6C77B70
	for <linux-phy@archiver.kernel.org>; Mon, 17 Apr 2023 12:22:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OkVzmU1XgxaXOq2wzWJkPpU0YElBwqKKGipLFBkyCIM=; b=rfO5n6919r48oECIRemvGTfwEX
	JtYXkUbe1LBX5XA6fOZS8tZG2UenA4MWWvKdHNLjzmhaNP1sHF0a3chdo9LXhzGS5AsWGVEJkoopa
	yLFB88hpgKrKezkarX1J/Hsp8AUeUplPGPM3Lyy7kDbW04KFMRkevuTEDTAhdhgZVub5I7jb6iPXd
	AM5Xgw5GK/3TzqwkdsVE7hest1vQNhw/KqUnp62uwgtUEamH2dxEX4rI7NBb0damb0SfD94IsOCza
	QU9EE5UoiphkfWQ4AcS7nsvqMq6QpQhHmKxoy5PH9AdCsAMOWWVtwCH2T7PPxMN2MWB7RNdvRLLwa
	ELqrGoXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poNsS-00G7yM-01;
	Mon, 17 Apr 2023 12:22:36 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poNsO-00G7v2-1J
	for linux-phy@lists.infradead.org;
	Mon, 17 Apr 2023 12:22:34 +0000
Received: by mail-wm1-x333.google.com with SMTP id v20-20020a05600c471400b003ed8826253aso7419111wmo.0
        for <linux-phy@lists.infradead.org>; Mon, 17 Apr 2023 05:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681734148; x=1684326148;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=GpPv8TbW/XqQuqppUwW1L792LLCC3Tsu8M2+sdbbC7s=;
        b=vpSs4v+IA0RiYibodoWmmDArq/vqtfaPxJ4BDYmNiGZ/DyU1/jQtU2MIudsgjEbpkP
         vmm5p38CVTb1XujeTL10+G2LSP47XQwPQ1fMNYGRMu35oty5IGAyKxsTJBMp2oB1Om0t
         3CuQD2RuHjIFUvXTz4xWfLg+Z2KqbKNfirW9rebsKzYIwyR+ef4zZIAxM+jcLnDEVLze
         MfL31J4IQYwXj5VjLppcu2K/eamStsfbhu60trHQHvXEYPm02W/2cQSP19+P+L06CcYh
         dR+kVPqcZBcWgX/0dpuAY1gYFP7JOpx/ghcd/ofoKnOB6UxO0QehB1b67g2bubMajjgJ
         7GfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681734148; x=1684326148;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GpPv8TbW/XqQuqppUwW1L792LLCC3Tsu8M2+sdbbC7s=;
        b=h2iCboC3xSHGMLVR2vFNz4o0UxkvPsKFxA3PTsODzZBG09EC+xpt06wo33e87liIqj
         JeDE46HmkAMa8ACaKVIDlI0+Gykw1GPb0Eog3+iY0UFkY2xKDnImo1y6rkVngTgteCTZ
         6jCHdcfU3uSbZ75/ypy+aeWfRZ5VUfiMQusvMh1Plmcr7bAjK3Z3rtDCGCXvX6PgZ6kP
         YKfQm/J112l3lFx8ZtS+TMXK/GgNALwXAwjCYrTT3PWvwVylSHHnArj/n9+CP9S4p81r
         O16/uXrHGjD4WAVCIXLOMIIxPCyf4/J7/Q0LOvbqX2gWDuM2YG08vpUYe/vwFfj8KaCt
         koXg==
X-Gm-Message-State: AAQBX9fSbq1sNz5W+asa/QhkZw+s8tdr7nQfZWzDqydJRH55drlF1ExL
	LwG9NwRq6XJ7X+2QVEhjP+HelA==
X-Google-Smtp-Source: AKy350YXplpLiXH1U/KWH1eLlC26VmSY78UY7wMpyE9cn9n4QPI+RTov28Xcm2JKaX4/y00ORb3uQw==
X-Received: by 2002:a7b:c5c8:0:b0:3f1:6b26:68b7 with SMTP id n8-20020a7bc5c8000000b003f16b2668b7mr4938232wmk.4.1681734148630;
        Mon, 17 Apr 2023 05:22:28 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:a1e1:81a8:1acc:2b91? ([2a01:e0a:982:cbb0:a1e1:81a8:1acc:2b91])
        by smtp.gmail.com with ESMTPSA id w16-20020a05600c475000b003f092f0e0a0sm19645415wmo.3.2023.04.17.05.22.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Apr 2023 05:22:28 -0700 (PDT)
Message-ID: <3381d124-1049-16da-bcdb-1cbbec379154@linaro.org>
Date: Mon, 17 Apr 2023 14:22:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v1 4/5] usb: dwc3-meson-g12a: support OTG switch
Content-Language: en-US
To: Dmitry Rokosov <ddrokosov@sberdevices.ru>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: gregkh@linuxfoundation.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, khilman@baylibre.com,
 jbrunet@baylibre.com, mturquette@baylibre.com, vkoul@kernel.org,
 kishon@kernel.org, hminas@synopsys.com, Thinh.Nguyen@synopsys.com,
 yue.wang@amlogic.com, hanjie.lin@amlogic.com, kernel@sberdevices.ru,
 rockosov@gmail.com, linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-phy@lists.infradead.org
References: <20230414152423.19842-1-ddrokosov@sberdevices.ru>
 <20230414152423.19842-5-ddrokosov@sberdevices.ru>
 <CAFBinCDyUBWd-V0mDy_edzH=3JM5SAuX=vtT4MG9Fb62Rcv=mA@mail.gmail.com>
 <20230417114739.r7aoiodqybalbn4o@CAB-WSD-L081021>
Organization: Linaro Developer Services
In-Reply-To: <20230417114739.r7aoiodqybalbn4o@CAB-WSD-L081021>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_052232_456234_65501030 
X-CRM114-Status: GOOD (  15.97  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMTcvMDQvMjAyMyAxMzo0NywgRG1pdHJ5IFJva29zb3Ygd3JvdGU6Cj4gSGVsbG8gTWFydGlu
LAo+IAo+IFRoYW5rIHlvdSBmb3IgcXVpY2sgcmV2aWV3LCBhcHByZWNpYXRlIGl0IQo+IFBsZWFz
ZSBmaW5kIG15IGNvbW1lbnRzIGJlbG93IGFuZCBpbiB0aGUgb3RoZXIgcmVwbGllcy4KPiAKPiBP
biBTdW4sIEFwciAxNiwgMjAyMyBhdCAxMDo1NjozNlBNICswMjAwLCBNYXJ0aW4gQmx1bWVuc3Rp
bmdsIHdyb3RlOgo+PiBPbiBGcmksIEFwciAxNCwgMjAyMyBhdCA1OjI04oCvUE0gRG1pdHJ5IFJv
a29zb3YgPGRkcm9rb3NvdkBzYmVyZGV2aWNlcy5ydT4gd3JvdGU6Cj4+IFsuLi5dCj4+PiAgIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgZHdjM19tZXNvbl9nMTJhX2RydmRhdGEgYTFfZHJ2ZGF0YSA9IHsK
Pj4+IC0gICAgICAgLm90Z19zd2l0Y2hfc3VwcG9ydGVkID0gZmFsc2UsCj4+PiArICAgICAgIC5v
dGdfc3dpdGNoX3N1cHBvcnRlZCA9IHRydWUsCj4+IGl0IHdvdWxkIGJlIGdyZWF0IGlmIHlvdSBj
b3VsZCBhbHNvIGZvbGxvdyB1cCB3aXRoIGEgcGF0Y2ggdGhhdAo+PiByZW1vdmVzIG90Z19zd2l0
Y2hfc3VwcG9ydGVkLgo+PiBBMSB3YXMgdGhlIG9ubHkgdmFyaWFudCB0aGF0IG5lZWRlZCBpdCBh
bmQgYWZ0ZXIgdGhpcyBwYXRjaCBpdCdzIGp1c3QgZGVhZCBjb2RlLgo+IAo+IEl0IG1ha2VzIHNl
bnNlLiBJIHRob3VnaHQgYWJvdXQgaXQgYmVmb3JlIHNlbmRpbmcgdGhlIGZpcnN0IHZlcnNpb24s
IGJ1dAo+IEkgZm91bmQgYSBjb3VudGVyLWFyZ3VtZW50OiBmdXR1cmUgU29DcyBtYXkgdXNlIHRo
aXMgcGFyYW1ldGVyLgo+IEJ1dCBpZiB5b3UgYXNrLCBJIHdpbGwgcmVtb3ZlICdvdGdfc3dpdGNo
X3N1cHBvcnRlZCcgaW4gdGhlIG5leHQgdmVyc2lvbgo+IAoKUGxlYXNlIHJlbW92ZSBpdCwgaXQn
cyBlYXN5IHRvIGFkZCBpdCBhZ2FpbiBpZiBuZWVkZWQuCgpOZWlsCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
