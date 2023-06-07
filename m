Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA6CCC77B7A
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jun 2023 07:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8op8R97vYIxhV9f7aMx4bUwlwCnhZPclQJHBRpkMZcQ=; b=b+G9tnCpCFKkN5
	SnzyttxjakkjZ9VnzNi/3KpBaq98pFyALcrPLsWU1Hi4PyB1ELSkIZGU3n/BazfjqKqsA0cgV4BQ9
	axPWje+g6fz1gmUSaqIh2k4BJ9ub72yL1SuiWwdBWKBfe2MRqYtdQDqaE1jJPlHJL74aeSrOq++7Y
	FT51M0uTEt2yyk3hovbtbkWUGZRBEiQW/V9NXbCpZU/yCrpsftWAItSCBKrpVAzUIN8L2lNY88fJ+
	zqRCM3Y/cYhpPaQUEuPpTxTynUSFm0V36g04ZgHbZnyuzA0x6Gla039boqIwTmyxFDQFodbOzpdEW
	LppXwAUqwewVygUU1ckQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6nmg-004mVX-1a;
	Wed, 07 Jun 2023 07:40:46 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6nme-004mUf-09
	for linux-phy@lists.infradead.org;
	Wed, 07 Jun 2023 07:40:46 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-973f78329e3so1138272966b.3
        for <linux-phy@lists.infradead.org>; Wed, 07 Jun 2023 00:40:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686123640; x=1688715640;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QzNzUxBgctT5U3+gB3td/wPDXx9tt+J9TkByw444vb4=;
        b=dpiv/lAao6jUqNRWIwDa/t6LO1tyPxkPWni1OUv3MwCcaBvBG9TZJWlQAsTwrpJG8z
         WiSLr3KTYWPNapPhFe4g/UQTjDvdv2Kh5m3vUHx2Uvn0qhMaWW7936pz4POvuJM/IQsq
         Nj5IuPvfSkJvvk2/lgKSqanZnlPWCLIWckttk5fd61hIvF0Cv5Sw1t5kE8iZvriviEW+
         In+gf5HZQY8yoXdiDm/zttqRTvXjVTxgNdcYNhuap4h3KffjSa1/I4wWvgR5nzhKYxNl
         ilEXGjb2B7MxuIK+KjltPks5gdQ0IXXIg2nLLmfmXMao4M6uuWPsgMMFy1+JhqAIHqER
         v4DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686123640; x=1688715640;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QzNzUxBgctT5U3+gB3td/wPDXx9tt+J9TkByw444vb4=;
        b=REQazXDrhTTw7qNpDQQ3GwylcN6gYCyEyqRXe7TCF+ymZTvZTj6fBacCWwJ8X6Lwpi
         OqFqCdraohATQ4dF7w9ooP1oR7yBRiFGZC6smD54bTDmcNXqDI0CrJHauPsC1zfV59MW
         3kGmacIzgDtAYTxUSr3NOhQ/EtOMe1x7953cUOUKXm5rHkWelrCXJLcaB+f9Ub3p7XVk
         HSnGQ2UvbRh/EXsw2M5Ko6hFSp/Ujw7AEFS89X/K3lnH4O6sneI4R6rY6GuPm3VmUyQd
         AG6fqR8BJR6wCk7tof/qC9zcjE+vP9SvYXkN5SrHd+uyyS0Q7EybZujaP3SDejOoHnc1
         RYwg==
X-Gm-Message-State: AC+VfDzuJGQ2VPUDH7XFEjN6/L7FUXHTEQIvN+Zg0mbguzZsZXU6xM9d
	Bdt+YJka2mlC9WnQxgVTEWodKQ==
X-Google-Smtp-Source: ACHHUZ6nIjpeIRlx7fPahFZ5gzxmNl29452UMvG6AuY1y9w+PrjwLC4zGKqXZHhvW+xhYzrUW9v6Ug==
X-Received: by 2002:a17:907:9403:b0:965:cc76:7716 with SMTP id dk3-20020a170907940300b00965cc767716mr4912526ejc.76.1686123640173;
        Wed, 07 Jun 2023 00:40:40 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id k16-20020a1709065fd000b00977db7d08cbsm3376124ejv.74.2023.06.07.00.40.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jun 2023 00:40:39 -0700 (PDT)
Message-ID: <f141a538-23b8-d10e-227c-5f0ad191c3a6@linaro.org>
Date: Wed, 7 Jun 2023 09:40:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH 2/7] dt-bindings: pwm: restrict node name suffixes
Content-Language: en-US
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Thierry Reding
 <thierry.reding@gmail.com>, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Mark Brown <broonie@kernel.org>, Dipen Patel <dipenp@nvidia.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck
 <linux@roeck-us.net>, Dilip Kota <eswara.kota@linux.intel.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-rtc@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-spi@vger.kernel.org, timestamp@lists.linux.dev,
 linux-watchdog@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Oleksij Rempel <o.rempel@pengutronix.de>
References: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
 <20230530144851.92059-3-krzysztof.kozlowski@linaro.org>
 <20230607073652.hoyrernfcuoryrqs@pengutronix.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230607073652.hoyrernfcuoryrqs@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_004044_090318_A2524D92 
X-CRM114-Status: GOOD (  20.22  )
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

T24gMDcvMDYvMjAyMyAwOTozNiwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4gT24gVHVlLCBN
YXkgMzAsIDIwMjMgYXQgMDQ6NDg6NDZQTSArMDIwMCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90
ZToKPj4gTWFrZSB0aGUgcGF0dGVybiBtYXRjaGluZyBub2RlIG5hbWVzIGEgYml0IHN0cmljdGVy
IHRvIGltcHJvdmUgRFRTCj4+IGNvbnNpc3RlbmN5LiAgVGhlIHBhdHRlcm4gaXMgcmVzdHJpY3Rl
ZCB0bzoKPj4gMS4gT25seSBvbmUgdW5pdCBhZGRyZXNzIG9yIG9uZSAtTiBzdWZmaXgsCj4+IDIu
IC1OIHN1ZmZpeGVzIHRvIGRlY2ltYWwgbnVtYmVycy4KPj4KPj4gU3VnZ2VzdGVkLWJ5OiBSb2Ig
SGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgo+PiBTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296
bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+Cj4gCj4+Cj4+IC0tLQo+Pgo+
PiBDYzogVG9ueSBMaW5kZ3JlbiA8dG9ueUBhdG9taWRlLmNvbT4KPj4gQ2M6IE9sZWtzaWogUmVt
cGVsIDxvLnJlbXBlbEBwZW5ndXRyb25peC5kZT4KPj4gLS0tCj4+ICBEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcHdtL3B3bS55YW1sIHwgMiArLQo+PiAgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcHdtL3B3bS55YW1sIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9wd20ueWFtbAo+PiBpbmRleCAzYzAxZjg1MDI5ZTUuLmFi
ZDlmYTg3MzM1NCAxMDA2NDQKPj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3B3bS9wd20ueWFtbAo+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcHdtL3B3bS55YW1sCj4+IEBAIC0xMyw3ICsxMyw3IEBAIHNlbGVjdDogZmFsc2UKPj4gIAo+
PiAgcHJvcGVydGllczoKPj4gICAgJG5vZGVuYW1lOgo+PiAtICAgIHBhdHRlcm46ICJecHdtKEAu
KnwtWzAtOWEtZl0pKiQiCj4+ICsgICAgcGF0dGVybjogIl5wd20oQC4qfC0oWzAtOV18WzEtOV1b
MC05XSspKT8kIgo+IAo+IFdpdGggdGhpcyBwYXRjaCB3ZSBmb3JiaWQgbm93IHRoZSBmb2xsb3dp
bmcgcGF0dGVybnM6Cj4gCj4gCXB3bS1bMC05YS1mXVtALV0uKgo+IAlwd20tMFswLTlhLWZdKwo+
IAlwd20tW2EtZl0oW0AtXS4qKT8KClllcywgdGhpcyB3YXMgZGlzY3Vzc2VkIGxhc3QgdGltZToK
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjIxMTI3MTgyMjMyLkdBMTI4OTc0LXJvYmhA
a2VybmVsLm9yZy8KCj4gCj4gQ2hlY2tpbmcgZm9yIHN1Y2ggbmFtZXM6Cj4gCj4gCSQgZ2l0IGdy
ZXAgLW9QICdcYnB3bS0oWzAtOWEtZl1bQC1dLip8MFswLTlhLWZdK3xbMC05XSpbYS1mXVswLTlh
LWZdKikoKnBsYTpccypceyknIGFyY2gvKi9ib290L2R0cwo+IAlhcmNoL2FybS9ib290L2R0cy9t
ZXNvbjguZHRzaTpwd20tZi1hbwo+IAlhcmNoL2FybS9ib290L2R0cy9tZXNvbjguZHRzaTpwd20t
ZQo+IAlhcmNoL2FybS9ib290L2R0cy9tZXNvbjhiLmR0c2k6cHdtLWQKPiAJYXJjaC9hcm02NC9i
b290L2R0cy9hbWxvZ2ljL21lc29uLWcxMi1jb21tb24uZHRzaTpwd20tYQo+IAlhcmNoL2FybTY0
L2Jvb3QvZHRzL2FtbG9naWMvbWVzb24tZzEyLWNvbW1vbi5kdHNpOnB3bS1iLXg3Cj4gCWFyY2gv
YXJtNjQvYm9vdC9kdHMvYW1sb2dpYy9tZXNvbi1nMTItY29tbW9uLmR0c2k6cHdtLWIteDE5Cj4g
CWFyY2gvYXJtNjQvYm9vdC9kdHMvYW1sb2dpYy9tZXNvbi1nMTItY29tbW9uLmR0c2k6cHdtLWMt
Ywo+IAlhcmNoL2FybTY0L2Jvb3QvZHRzL2FtbG9naWMvbWVzb24tZzEyLWNvbW1vbi5kdHNpOnB3
bS1jLXg1Cj4gCWFyY2gvYXJtNjQvYm9vdC9kdHMvYW1sb2dpYy9tZXNvbi1nMTItY29tbW9uLmR0
c2k6cHdtLWMteDgKPiAJYXJjaC9hcm02NC9ib290L2R0cy9hbWxvZ2ljL21lc29uLWcxMi1jb21t
b24uZHRzaTpwd20tZC14Mwo+IAlhcmNoL2FybTY0L2Jvb3QvZHRzL2FtbG9naWMvbWVzb24tZzEy
LWNvbW1vbi5kdHNpOnB3bS1kLXg2Cj4gCWFyY2gvYXJtNjQvYm9vdC9kdHMvYW1sb2dpYy9tZXNv
bi1nMTItY29tbW9uLmR0c2k6cHdtLWUKPiAJYXJjaC9hcm02NC9ib290L2R0cy9hbWxvZ2ljL21l
c29uLWcxMi1jb21tb24uZHRzaTpwd20tZi16Cj4gCWFyY2gvYXJtNjQvYm9vdC9kdHMvYW1sb2dp
Yy9tZXNvbi1nMTItY29tbW9uLmR0c2k6cHdtLWYtYQo+IAlhcmNoL2FybTY0L2Jvb3QvZHRzL2Ft
bG9naWMvbWVzb24tZzEyLWNvbW1vbi5kdHNpOnB3bS1mLXgKPiAJYXJjaC9hcm02NC9ib290L2R0
cy9hbWxvZ2ljL21lc29uLWcxMi1jb21tb24uZHRzaTpwd20tZi1oCj4gCWFyY2gvYXJtNjQvYm9v
dC9kdHMvYW1sb2dpYy9tZXNvbi1nMTItY29tbW9uLmR0c2k6cHdtLWEtZQoKQXJlIHlvdSBzdXJl
IHRoZXNlIGFyZSBwd21zLCBub3QgcGlucz8KCj4gCj4gVGhlc2UgYXJlIGFsbCBwaW5tdXgtc2V0
dGluZ3MgYW5kIG5vIHB3bSBub2Rlcywgc28gdGhlIGNoYW5nZSBpcyBmaW5lLgo+IChCdXQgYXJj
aC9hcm02NC9ib290L2R0cy9hbWxvZ2ljL21lc29uLWcxMi1jb21tb24uZHRzaSBpc24ndCBwcm9w
ZXJseQo+IHNvcnRlZCBhbHBoYWJldGljYWxseS4pCgpFeGFjdGx5Li4uCgo+IAo+IFJldmlld2Vk
LWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgoK
CkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
