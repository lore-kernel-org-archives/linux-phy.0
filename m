Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0728CF6497
	for <linux-phy@archiver.kernel.org>; Mon, 30 Sep 2024 11:09:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nYy34eWb+IKmO5swKc62oSDGO7O/Gdx610XiEL1QCBQ=; b=tv5tD38AML0IXr
	7Oi0IFMqTjGplbohl2qFpevw3iE+BA1XdiQbeWO2zl7Edc9QY9tjCAifsppORn8gkiwxRTr/lUZRt
	6/v3djN/z1vL9+ybIZHNjHPvIBkLO6KA5WCFDOROHBj02cHeD/ar2QBg42d7EojkdkriHshCV0400
	BnUsDZCrouJgehp3UVHr6SMZeA2C7JQ5di6AYXV3TDrjuYVNTemju9G+PF9pfkgt4NqHO20RmXfwY
	BeTGsODmL97HhntS00s1n8yxKiIASN77M+lm2VHxIaCzIqUAPTmI5byxq7Ojf6WxKPqSPdPZCsLK7
	uVi0/QxdyZG08yx5WJ5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svEHa-0000000Gngx-1fp4;
	Mon, 30 Sep 2024 11:09:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svEF1-0000000GnQd-2ywM
	for linux-phy@bombadil.infradead.org;
	Mon, 30 Sep 2024 11:06:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=zBKF/Q5plvlDGU81ob4r8l8he+xXYko9fL5kB04WgpM=; b=Bo+sm+CpPUsjn61CQql++bRcX2
	QReeuWcmC9BbYpoWcBxTAyoRBC7hdq82wXWYly/XpvjxcsMcCPOJuZesL8jBjGRLYYC/m3J7zISll
	USQUnq0PXXGdOYq0vA/Sa4AXKANqDr7sq7EwXAZRWbll1M70xmMJDKsRkSjn81pG2kViXUin7a9fE
	lYodhEvoAD7dnahfJAmXZS6Ir7uxVBhcSG9zppUItjhJHBcBCHU1zND2Gynw02D/7XkNL0qwn4RA5
	uFztmbwQwKGqPgSFX/5yunj1NebiwaqhzmqUo+s/dtrow9LudLMlVXNVQjGxwtmb35Ei0JS3WHgXQ
	HZ5wdoww==;
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svEEx-00000002nnn-2TYJ
	for linux-phy@lists.infradead.org;
	Mon, 30 Sep 2024 11:06:58 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-42ca5447142so6266225e9.2
        for <linux-phy@lists.infradead.org>; Mon, 30 Sep 2024 04:06:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727694413; x=1728299213; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=zBKF/Q5plvlDGU81ob4r8l8he+xXYko9fL5kB04WgpM=;
        b=s7ck/Q+RXWIvlmBGGlVUBJwzQDElg7hKyelxtHzvhBHInlFrqO9vRzpQKxBxwumwHU
         RKJmGI70/9mHWZoglbS1xEkoG0hOwY6/jopuPYyQ114odGQS6XyjFjE99XrX9b+bAEPY
         CVpIbKpv7qIJV/V5KGQzrHq7PmMxUx31Unc1ePEXpYTj/bYJvUaT3WeUu8N/mnIyeKG0
         XHEgBA8Fitt5yKrvR4rvIzDuuOHpxN+wDIp/M0/Cd1exZyLunK3h2+YQq4qtQIYVQlxF
         6tZT3kZF/MUp9Md68ErPobgpECu2EdjpZXF0jZJHhVUkmrzrtJRgqHgrUyvQG04ITPTu
         DNqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727694413; x=1728299213;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zBKF/Q5plvlDGU81ob4r8l8he+xXYko9fL5kB04WgpM=;
        b=dHoB4osbw2R6Ye1MfzmY03eTlc6+mkTqRvScqSfm9i7gdea8zDlRDI4oI9x1if8OYJ
         vDwtjv40j5MlC8gFGNu+1+oREBZ2PNiUC2/NRajUvWFyoEQ+GIHendDAp5JGXI8N+q1M
         u24y26YGH6GPPznKcixMWxBHhehoZAUjv+Z2nJJiWB91ODpno1v/txOzFgxZ1orho/9s
         T9Y6agxvg/mbCxvPNASwv6xpdarbxoi9pELx2S+J7Bli9CHq48Gg0K//xpWgNCTEbCaM
         JUqs3+5GtqqFbPYLiITBHwtOZKuAgCUTNnUpbIVmN1ph06c773s13D/Xj8Kyy2pOFyuu
         Encg==
X-Forwarded-Encrypted: i=1; AJvYcCXThicQHADPrzNFU92bOA8RbJxfsTL7Z3sOG1TRC3LKhu60/qnu5aFv2aPHqJ8YdbMizRbZKSOS/vs=@lists.infradead.org
X-Gm-Message-State: AOJu0YwcVDzXIeCX3+xQL6G/nuF2gG4qmOKZqgfki+rwKy240cABk+m/
	Wg8sTT83sIENHS3uW7xRtxUe1l5xJAvhdbRn//caGHFqDtmn2s5qKHyymRfPHdw=
X-Google-Smtp-Source: AGHT+IEjv4W2c/ytROEtNGOg10FuHJYFR6UwENYEgZ5Jt76Iu2gR1jEsl3wLQk2R5zgoKJiy9vbDrQ==
X-Received: by 2002:a05:600c:190c:b0:42c:b55f:f4f with SMTP id 5b1f17b1804b1-42f584981bdmr38686215e9.6.1727694412778;
        Mon, 30 Sep 2024 04:06:52 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42e969f1a76sm146697805e9.12.2024.09.30.04.06.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Sep 2024 04:06:52 -0700 (PDT)
Message-ID: <e235f275-b9ef-40b8-929d-faddd58c17aa@linaro.org>
Date: Mon, 30 Sep 2024 13:06:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v17 3/8] dt-bindings: display: bridge: Add Cadence
 MHDP8501
To: Sandor Yu <sandor.yu@nxp.com>
Cc: "dmitry.baryshkov@linaro.org" <dmitry.baryshkov@linaro.org>,
 "andrzej.hajda@intel.com" <andrzej.hajda@intel.com>,
 "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 "jonas@kwiboo.se" <jonas@kwiboo.se>,
 "jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>,
 "airlied@gmail.com" <airlied@gmail.com>, "daniel@ffwll.ch"
 <daniel@ffwll.ch>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>, Oliver Brown <oliver.brown@nxp.com>,
 "alexander.stein@ew.tq-group.com" <alexander.stein@ew.tq-group.com>,
 "sam@ravnborg.org" <sam@ravnborg.org>
References: <cover.1727159906.git.Sandor.yu@nxp.com>
 <b2e1d26f964a03163ec7a1ba6ac8d7c88d6cb111.1727159906.git.Sandor.yu@nxp.com>
 <wfdanj6ibwybx2puqvi6xjy6h5t4yagnb2mod7ln3zca4dl5wz@4mvbe6wjavb6>
 <DB9PR04MB94529379E1947D66848B7BE2F4752@DB9PR04MB9452.eurprd04.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <DB9PR04MB94529379E1947D66848B7BE2F4752@DB9PR04MB9452.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_120655_879705_DF9A4425 
X-CRM114-Status: GOOD (  15.73  )
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

T24gMjkvMDkvMjAyNCAwNDozNiwgU2FuZG9yIFl1IHdyb3RlOgo+IEhpIEtyenlzenRvZu+8jAo+
IAo+IFRoYW5rcyBmb3IgeW91ciBjb21tZW50cywKPiAKPj4KPj4KPj4gT24gVHVlLCBTZXAgMjQs
IDIwMjQgYXQgMDM6MzY6NDhQTSArMDgwMCwgU2FuZG9yIFl1IHdyb3RlOgo+Pj4gQWRkIGJpbmRp
bmdzIGZvciBDYWRlbmNlIE1IRFA4NTAxIERpc3BsYXlQb3J0L0hETUkgYnJpZGdlLgo+Pj4KPj4+
IFNpZ25lZC1vZmYtYnk6IFNhbmRvciBZdSA8U2FuZG9yLnl1QG54cC5jb20+Cj4+PiBSZXZpZXdl
ZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3Jn
Pgo+Pgo+PiBEcm9wCj4gT0ssIEkgd2lsbCByZW1vdmUgaXQgaW4gdGhlIG5leHQgdmVyc2lvbi4K
PiAKPj4KPj4+IC0tLQo+Pj4gdjE2LT52MTc6Cj4+PiAtIEFkZCBsYW5lLW1hcHBpbmcgcHJvcGVy
dHkKPj4KPj4gVGhhdCdzIGEgc2lnbmlmaWNhbnQgY2hhbmdlLgo+IE9LLgo+IAo+Pgo+Pj4KPj4+
IHY5LT52MTY6Cj4+PiAgKk5vIGNoYW5nZQo+Pj4KPj4+IC4uLi9kaXNwbGF5L2JyaWRnZS9jZG5z
LG1oZHA4NTAxLnlhbWwgICAgICAgICB8IDEwOQo+PiArKysrKysrKysrKysrKysrKysKPj4+ICAx
IGZpbGUgY2hhbmdlZCwgMTA5IGluc2VydGlvbnMoKykKPj4+ICBjcmVhdGUgbW9kZSAxMDA2NDQK
Pj4+IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9jZG5z
LG1oZHA4NTAxLnlhbWwKPj4+Cj4+PiBkaWZmIC0tZ2l0Cj4+PiBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9jZG5zLG1oZHA4NTAxLnlhbWwKPj4+IGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdlL2NkbnMsbWhk
cDg1MDEueWFtbAo+Pj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4+IGluZGV4IDAwMDAwMDAwMDAw
MDAuLjNmNzlmMzI4Yzc0MjUKPj4+IC0tLSAvZGV2L251bGwKPj4+ICsrKyBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9jZG5zLG1oZHA4NTAxLnkKPj4+
ICsrKyBhbWwKPj4KPj4+IEBAIC0wLDAgKzEsMTA5IEBACj4+PiArIyBTUERYLUxpY2Vuc2UtSWRl
bnRpZmllcjogKEdQTC0yLjAgT1IgQlNELTItQ2xhdXNlKSAlWUFNTCAxLjIKPj4+ICstLS0KPj4+
ICskaWQ6Cj4+PiAraHR0cHM6Ly9ldXIwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNv
bS8/dXJsPWh0dHAlM0ElMkYlMkZkZXZpCj4+Pgo+PiArY2V0cmVlLm9yZyUyRnNjaGVtYXMlMkZk
aXNwbGF5JTJGYnJpZGdlJTJGY2RucyUyQ21oZHA4NTAxLnlhbWwlMgo+PiAzJmRhdAo+Pj4KPj4g
K2E9MDUlN0MwMiU3Q1NhbmRvci55dSU0MG54cC5jb20lN0M0MGE2YmQ0ZmYxY2Q0ZDkzNGRhMDA4
ZGNkYzcyCj4+IDlmZDAlN0MKPj4+Cj4+ICs2ODZlYTFkM2JjMmI0YzZmYTkyY2Q5OWM1YzMwMTYz
NSU3QzAlN0MwJTdDNjM4NjI3NjMyMDc5OTg2NjAKPj4gOCU3Q1Vua25vCj4+Pgo+PiArd24lN0NU
V0ZwYkdac2IzZDhleUpXSWpvaU1DNHdMakF3TURBaUxDSlFJam9pVjJsdU16SWlMQ0pCVGlJNklr
MWgKPj4gYVd3aQo+Pj4KPj4gK0xDSlhWQ0k2TW4wJTNEJTdDMCU3QyU3QyU3QyZzZGF0YT1VdyUy
RlFRMFFnMzZZOFE2d0ZQQzdaZwo+PiBMekxIdk9qOEdqSDEKPj4+ICtrOE1jZ2NqcnFJJTNEJnJl
c2VydmVkPTAKPj4+ICskc2NoZW1hOgo+Pj4gK2h0dHBzOi8vZXVyMDEuc2FmZWxpbmtzLnByb3Rl
Y3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwJTNBJTJGJTJGZGV2aQo+Pj4KPj4gK2NldHJlZS5v
cmclMkZtZXRhLXNjaGVtYXMlMkZjb3JlLnlhbWwlMjMmZGF0YT0wNSU3QzAyJTdDU2FuZG9yLnkK
Pj4gdSU0MG4KPj4+Cj4+ICt4cC5jb20lN0M0MGE2YmQ0ZmYxY2Q0ZDkzNGRhMDA4ZGNkYzcyOWZk
MCU3QzY4NmVhMWQzYmMyYjRjNmZhOTIKPj4gY2Q5OWM1Cj4+Pgo+PiArYzMwMTYzNSU3QzAlN0Mw
JTdDNjM4NjI3NjMyMDgwMDMxMTI0JTdDVW5rbm93biU3Q1RXRnBiR1pzCj4+IGIzZDhleUpXSWpv
aQo+Pj4KPj4gK01DNHdMakF3TURBaUxDSlFJam9pVjJsdU16SWlMQ0pCVGlJNklrMWhhV3dpTENK
WFZDSTZNbjAlM0QlN0MwJQo+PiA3QyU3QyUKPj4+Cj4+ICs3QyZzZGF0YT1JRzlFbTNBV093emxw
UjFXazBWdyUyRkYxNjFZY094dU1IYkE0WSUyRnpmdGdZQSUzRAo+PiAmcmVzZXJ2ZWQ9Cj4+PiAr
MAo+Pj4gKwo+Pj4gK3RpdGxlOiBDYWRlbmNlIE1IRFA4NTAxIERQL0hETUkgYnJpZGdlCj4+PiAr
Cj4+PiArbWFpbnRhaW5lcnM6Cj4+PiArICAtIFNhbmRvciBZdSA8U2FuZG9yLnl1QG54cC5jb20+
Cj4+PiArCj4+PiArZGVzY3JpcHRpb246Cj4+PiArICBDYWRlbmNlIE1IRFA4NTAxIERpc3BsYXlQ
b3J0L0hETUkgaW50ZXJmYWNlLgo+Pj4gKwo+Pj4gK3Byb3BlcnRpZXM6Cj4+PiArICBjb21wYXRp
YmxlOgo+Pj4gKyAgICBlbnVtOgo+Pj4gKyAgICAgIC0gZnNsLGlteDhtcS1taGRwODUwMQo+Pj4g
Kwo+Pj4gKyAgcmVnOgo+Pj4gKyAgICBtYXhJdGVtczogMQo+Pj4gKwo+Pj4gKyAgY2xvY2tzOgo+
Pj4gKyAgICBtYXhJdGVtczogMQo+Pj4gKyAgICBkZXNjcmlwdGlvbjogTUhEUDg1MDEgRFAvSERN
SSBBUEIgY2xvY2suCj4+PiArCj4+PiArICBwaHlzOgo+Pj4gKyAgICBtYXhJdGVtczogMQo+Pj4g
KyAgICBkZXNjcmlwdGlvbjoKPj4+ICsgICAgICBwaGFuZGxlIHRvIHRoZSBEUC9IRE1JIFBIWQo+
Pj4gKwo+Pj4gKyAgaW50ZXJydXB0czoKPj4+ICsgICAgaXRlbXM6Cj4+PiArICAgICAgLSBkZXNj
cmlwdGlvbjogSG90cGx1ZyBjYWJsZSBwbHVnaW4uCj4+PiArICAgICAgLSBkZXNjcmlwdGlvbjog
SG90cGx1ZyBjYWJsZSBwbHVnb3V0Lgo+Pj4gKwo+Pj4gKyAgaW50ZXJydXB0LW5hbWVzOgo+Pj4g
KyAgICBpdGVtczoKPj4+ICsgICAgICAtIGNvbnN0OiBwbHVnX2luCj4+PiArICAgICAgLSBjb25z
dDogcGx1Z19vdXQKPj4+ICsKPj4+ICsgIGxhbmUtbWFwcGluZzoKPj4+ICsgICAgZGVzY3JpcHRp
b246IGxhbmUgbWFwcGluZyBmb3IgSERNSSBvciBEaXNwbGF5UG9ydCBpbnRlcmZhY2UuCj4+Cj4+
IFdoZXJlIGlzIHRoZSBkZWZpbml0aW9uIG9mIHRoaXMgcHJvcGVydHk/IEkgZG8gbm90IHNlZSBh
bnkgJHJlZiBoZXJlLCBzbyBkaWQgeW91Cj4+IGFkZCBpdCB0byBkdHNjaGVtYT8KPiAKPiBNeSBh
cG9sb2dpZXMsIHRoZSAkcmVmIGlzIG1pc3NpbmcsIHdpbGwgYWRkIGl0IGluIHRoZSBuZXh0IHZl
cnNpb24uLgoKQW5kIHRoYXQncyBkaWZmZXJlbnQgdGhhbiBleGlzdGluZyBwcm9wZXJ0aWVzLCBl
LmcuIGRhdGEtbGFuZXMgb3IKbGFuZS1wb2xhcml0aWVzPyBUaGVyZSBpcyBubyBkZXNjcmlwdGlv
biBoZXJlIGV4Y2VwdCBjb3B5aW5nIHByb3BlcnR5Cm5hbWUsIHdoaWNoIGlzIG5vdCB1c2VmdWwg
YXQgYWxsLgoKQ29tZSB3aXRoIHNvbHV0aW9uIG1hdGNoaW5nIG90aGVyIGJyaWRnZXMgYW5kIG1l
ZGlhIGRldmljZXMuCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
