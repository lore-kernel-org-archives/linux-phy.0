Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7D82C02181
	for <linux-phy@archiver.kernel.org>; Sun, 26 Jan 2025 11:39:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SmplnaL7SLSi2/awAoa3AYr5Ig1Mc/stTId+doNlQ1M=; b=VyCYcFbR2Bk0+7
	f2V1jgQS9HO+rkyFbJqBYNlAY2GrHyF12G0ogZPTe4jfQin0c78ouHEs95mViIZHoMfMfkxOV5bYR
	ZTYf77V8zqqUuSAxywBTiSbmClIDfYa+AyX29btdZ9gymNMZPJ41pNiX1flUKIwWkbc5AZtaEubPQ
	32zoRiWv9Mh8WnwthCs8gSnlrwW6irZgYfg1S6mL1JCsbpDWas+MTCTcB5UIyHVuT5/Gdpn1CtMVk
	mClvAGZTaaiX8b8Sgb1TVSmAGZJMxyHrT+5sJA8CI10KFw4Re5Mq8AVpsAEuq/A2Rg806Pk5DCft9
	33fCUvL624KMwgtnWFzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tc0yv-0000000HMdD-3c9q;
	Sun, 26 Jan 2025 11:39:13 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tc0yt-0000000HMcs-1MLY
	for linux-phy@lists.infradead.org;
	Sun, 26 Jan 2025 11:39:12 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-5401e6efffcso3940847e87.3
        for <linux-phy@lists.infradead.org>; Sun, 26 Jan 2025 03:39:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737891549; x=1738496349; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=m3Z4T8xpTA0ju5YKhedGkcsXKqlbXo5WcnVj25PggZw=;
        b=cGfzUqqF+oiYT2/tW9Lhqzdc4zMiOO9ZGna5e1PcBQNIR/rzKeVoq5Y0gmev9UPBuM
         6RNlwCayqIK3S9p6QnvD+EXYT+tg9ZT0OHMBsrXouS1zSbATcCKjWbn6rxO1yKyj6D0p
         +PGRz7LdlRGVAIPTRVh4O/VMRKcMTQNGRPE1B9CLyzDLKWJodBE9jR49ObA+NpwxybrK
         bjkPkXJjvcsJ1eEYpexk799UFAk2V+E6fPc2KTiL3gORkrNAsSbn73JgOZGRF0Ev3uTZ
         6XJ2tb4ONPMEGpoVQaN4gE5yRRzKdLvuBsr6jPaQn6Q4YGfkv4QNzon3BSjsG5aFk8VL
         MQhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737891549; x=1738496349;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m3Z4T8xpTA0ju5YKhedGkcsXKqlbXo5WcnVj25PggZw=;
        b=JlBVKoBPiW+rsaOH8SNMiJ54tnxV7rk2F3wGY7XzTk/USUfcX4ne2Ks4bB/wE2RpNk
         kLXK69qfG3U4lQO02dBXzXGEdxHAVSfGz7ft/UPny4gGuly3CBXUlT+uu++z2tVWac7G
         t49mUecf3O03QJfC3gP5WpLsuTC2C9dD4n8if3ZUjFA8iF2T0Opdw7mF6XeQqP8/gyJS
         pLtvoJ2IHWFqX6JbwHeOB8DqpmhuXxHud8rEsHdv/6Qtpu2EmCY6MIX3DzoXV+7XOrik
         Rjew3xpyg3JbCvUAMPstnI3ihFhbzhCDK0Ui8uOEagYHPE1MobGd8x0Kl3ZiqRTc56cn
         /b1Q==
X-Forwarded-Encrypted: i=1; AJvYcCU1UW9RQmTtYN9EaUGZqgCIaCqgnHmHnSwO9vB4Y1JHEBXDdKBcHjgMKaPF0hpNU9i2RkXn0TnF4II=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz+DIPaETaYBaIj8Rb/81D5BAdwYEBazKKfpCBqq6J6jXKERlRB
	C2qcZ4+dyCe1WExg8xqXdUu4P03++3ypAwgkfAyaKlN41yTrr+VvuB/o+rKuslU=
X-Gm-Gg: ASbGncsKlChw0cUlN1l9cgdJwccme+TRAYgb29gNR0uu2BD+kK81C8G6RKttvfBt1cN
	bQjK+2cLp6iKb8Th5vycnekpHisKuweOGsgTlu7dI/3G65CqCAAYv+1ODvUVxTX/7dITEnHWRiU
	3H4a5EFwdcmAp0Xv/OB7+GC52m0aMLPM4OJMVKKBQiEW9dcobwIMa0iNlm6hyQvPNSXu33dX+n6
	nEr3Uol7e2Sl5GCe5eoYTzWSpvdi9xmG+EfckQV0K5JxRQEDcHgJPjLrNn2lr92d20nfR+Twh8R
	qtM/fF+gOYF9B63A8gWGkeZTlQ5+jrUHxbTT3iX6knZZzylSnnJvMSoZO32YuooB+N4y3CQ=
X-Google-Smtp-Source: AGHT+IGMHz3yK8zw+JbmUqjlC1MUV7n1Bow+QOgrcHWxA5uT+4qGx15AKrfg0wrgyvIOzYzTx823pA==
X-Received: by 2002:ac2:5225:0:b0:542:241e:75ae with SMTP id 2adb3069b0e04-5439c22d82emr10805896e87.9.1737891549075;
        Sun, 26 Jan 2025 03:39:09 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543c822f785sm910462e87.75.2025.01.26.03.39.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Jan 2025 03:39:07 -0800 (PST)
Date: Sun, 26 Jan 2025 13:39:05 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Marijn Suijten <marijn.suijten@somainline.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 3/6] phy: qcom: qmp-pcie: Add X1P42100 Gen4x4 PHY
Message-ID: <cy3x35h4id3gegwb23j6rwblx2pecpw7ffjpri5ddqdd35kzrt@bxdmaumb6bbp>
References: <20250125-topic-x1p4_dts-v1-0-02659a08b044@oss.qualcomm.com>
 <20250125-topic-x1p4_dts-v1-3-02659a08b044@oss.qualcomm.com>
 <h6zfhxkc4dj2ueaxipha6prbvmv7pnqglghtjs7vkhlc2s7ndi@vhbj4uojlzwd>
 <A64B8332-78F2-4B76-908E-4119E4A54BAE@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <A64B8332-78F2-4B76-908E-4119E4A54BAE@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250126_033911_384421_AD0D1195 
X-CRM114-Status: GOOD (  22.12  )
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

T24gU3VuLCBKYW4gMjYsIDIwMjUgYXQgMTI6NTk6NTJQTSArMDUzMCwgTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIHdyb3RlOgo+IAo+IAo+IE9uIEphbnVhcnkgMjUsIDIwMjUgMTE6MDA6MjMgUE0gR01U
KzA1OjMwLCBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QGxpbmFyby5vcmc+IHdy
b3RlOgo+ID5PbiBTYXQsIEphbiAyNSwgMjAyNSBhdCAwNDozMToxOUFNICswMTAwLCBLb25yYWQg
RHliY2lvIHdyb3RlOgo+ID4+IEZyb206IEtvbnJhZCBEeWJjaW8gPGtvbnJhZC5keWJjaW9Ab3Nz
LnF1YWxjb21tLmNvbT4KPiA+PiAKPiA+PiBBZGQgYSBuZXcsIGNvbW1vbiBjb25maWd1cmF0aW9u
IGZvciBHZW40eDQgVjYgUEhZcyB3aXRob3V0IGFuIGluaXQKPiA+PiBzZXF1ZW5jZS4KPiA+PiAK
PiA+PiBUaGUgYm9vdGxvYWRlciBjb25maWd1cmVzIHRoZSBoYXJkd2FyZSBvbmNlIGFuZCB0aGUg
T1MgcmV0YWlucyB0aGF0Cj4gPj4gY29uZmlndXJhdGlvbiBieSB1c2luZyB0aGUgTk9DU1IgcmVz
ZXQgbGluZSAod2hpY2ggZG9lc24ndCBkcm9wCj4gPj4gcmVnaXN0ZXIgc3RhdGUgb24gYXNzZXJ0
KSBpbiBwbGFjZSBvZiB0aGUgImZ1bGwgcmVzZXQiIG9uZS4KPiA+Cj4gPkkga25vdyB5b3VyIG9w
aW5pb24sIGJ1dCBteSAyYyB3b3VsZCBzdGlsbCBiZSBmb3Igbm90IGRlcGVuZGluZyBvbiB0aGUK
PiA+Ym9vdGxvYWRlci4gSSB0aGluayB0aGF0IHdhcyB0aGUgcnVsZSBmb3IgYWdlcyBmb3IgbWFu
eSBwb3NzaWJsZQo+ID5yZWFzb25zLgo+ID4KPiAKPiBCdXQgaWYgTGludXggb3Igb3RoZXIgT1Mg
Y2FuIHRydXN0IHRoZSBib290bG9hZGVyLCB0aGVuIGl0IG1ha2VzIHBlcmZlY3Qgc2Vuc2UgdG8g
cmVseSBvbiB0aGVtLiBPYnZpb3VzbHksIHRoZSBxdWVzdGlvbiBoZXJlIGlzIHRoYXQgb24gd2hp
Y2ggcGxhdGZvcm1zIHRoaXMgbGV2ZWwgb2YgdHJ1c3Qgc2hvdWxkIGJlIGVzdGFibGlzaGVkLiBB
bmQgdGhlIGFuc3dlciBJIGdvdCB3YXMgc3RhcnRpbmcgZnJvbSB0aGUgY29tcHV0ZSBwbGF0Zm9y
bXMgKGF0bGVhc3QgWDFFKS4KCklzIHRoZXJlIGFueSB3YXkgaG93IHRob3NlIHZhbHVlcyBjYW4g
YmUgbG9zdCB0aGF0IHdlIHN0aWxsIG1pZ2h0IHdhbnQKdG8gc3VwcG9ydCA/IFRoZSBHRFNDIGdv
aW5nIHRvIHRoZSBPRkYgc3RhdGU/IFNvbWUgZGVlcCBzbGVlcCBzdGF0ZSBvciBhCnBvd2VyIGNv
bGxhcHNlPyBBY3R1YWwgc3VzcGVuZCB0byBSQU0gKGluc3RlYWQgb2YgY3VycmVudCBTMklkbGUp
PwoKPiAKPiBTbyBsZXQncyB0YWtlIGl0IG9uIGFuIGV4cGVyaW1lbnRhbCBiYXNpcyBhbmQgc2Vl
IGhvdyBpdCBnb2VzPyBJZiBhdCBhbGwgYW55IHByb2JsZW0gYXJpc2VzLCB3ZSBjYW4gYWx3YXlz
IHJlc29ydCB0byBpbiBrZXJuZWwgc2VxdWVuY2VzLgoKU291bmRzIGxpa2UgYSBnb29kIHByb3Bv
c2FsLiBDYW4gcG9zc2libHkgaGF2ZSBhIGNvcnJlc3BvbmRpbmcgJ2RvIG5vdAptZXJnZScgcGF0
Y2ggd2l0aCBhY3R1YWwgaW5pdCB0YWJsZXM/Cgo+IAo+IC0gTWFuaQo+IAo+ID4+IAo+ID4+IFVz
ZSB0aGlzIG5ldyBjb25maWd1cmF0aW9uIGZvciBYMVA0MjEwMCdzIEdlbjR4NCBQSFkuCj4gPj4g
Cj4gPj4gU2lnbmVkLW9mZi1ieTogS29ucmFkIER5YmNpbyA8a29ucmFkLmR5YmNpb0Bvc3MucXVh
bGNvbW0uY29tPgo+ID4+IC0tLQo+ID4+ICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1x
bXAtcGNpZS5jIHwgMTggKysrKysrKysrKysrKysrKysrCj4gPj4gIDEgZmlsZSBjaGFuZ2VkLCAx
OCBpbnNlcnRpb25zKCspCj4gPgo+IAo+IOCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprg
rqTgrr7grprgrr/grrXgrq7gr40KCi0tIApXaXRoIGJlc3Qgd2lzaGVzCkRtaXRyeQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
