Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53BC3C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 23 Nov 2021 22:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mvrWRmjwczh2egciSsUSB/1yU59gJDUt49nX92p0djo=; b=3X7hUgGd7aNwHMn0v/uo/4LWSi
	94yuOiOPs2LolQzzKgIdfEMs+94W0UkG9KThceZDCDichUS+VCGQli/FQ9aK48VP7HaeY5OPv0G54
	j3a1UE7dSgEmDj+/YZiIyhW+Uv+1OB67eqwa5fAXTYhVIeFqJmlm9s7bYm9pa9xVz3cKYg4SiV9wS
	+czyqFoBong2Z1yaPeHR+PyGFYgoJualdMoI/c8VEEh4xBXYfaGfauMABpdyY+5Abwlh9jC0td9c9
	ZLqTeErwdGA2KYU3yOYEVe20rmXb8U0CckKjM4ryHl6Gsg+HbRjs4wDo5Y+zLabese/AxSiSoEtYO
	cU06Nftg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpe7H-003ZjV-R6; Tue, 23 Nov 2021 22:18:19 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpe7F-003Ziw-A1
 for linux-phy@lists.infradead.org; Tue, 23 Nov 2021 22:18:18 +0000
Received: by mail-pj1-x1032.google.com with SMTP id
 nh10-20020a17090b364a00b001a69adad5ebso595364pjb.2
 for <linux-phy@lists.infradead.org>; Tue, 23 Nov 2021 14:18:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=RvDcjOyTMcWBvv3Wv0Ug9e+O52/bTAMQKnrDSBN0Oow=;
 b=DgT6NvhWbbPD9v9EdGOxpi5eXlZ7K4CQgN/9bIkun4k6yHuSEuiNUZO/97wr4uFAys
 b3d+Im9F93WrjB1yUEfqYMGeMtfORL8cFUhYbdOLLplLPNRkTC3zhY+iysqlEyBsI05o
 /6oK7cWORmiKQVMtay2ZaQ0aj+mMwjSt77Z2XguHlMzyTYOIFVSAKg0lFRQAgwhODajK
 6ZIz1pOSjoNsXBJIOYUSjEExbpuKOiOfSyq0iT5YmDerxe9exj8rmFHEQgSIEy641Wle
 prsLC7ulA/rnZIYPKOlWQK/qZ6l0Wxnzo1OH3Xn0tUwcz8bYVVMeDibljZLSSaXjzGZg
 LmJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RvDcjOyTMcWBvv3Wv0Ug9e+O52/bTAMQKnrDSBN0Oow=;
 b=oyh/AUdWfrYsPnr0heTkfrhqjr2iuLBRr37rZT9r8Nnjb5l2ufCR1lNkUMqzrtuFee
 huK1oIxD9gjdWkoInCVaF1FWsqkneLmU+LCkLpxUPfvxvu9GKJei9zCSkoQbHBzvfGlD
 A5rHuN+DvUrwr5sEHpQjIJyonESuSZ88lt934y9MbmpXD7ckLqK7yy2EOqYI2phehcoe
 gZJg+TQyD9le6kDpM3QYCZfIk6zVFfDTV2S+w9YHjZQvYDiJhG95hxS2nb4E3V7Kfi0h
 zKeEpxHCYAHdoXrDLHIJff9raNLKDqQn2tNm3sxFEepwGGwY2JCAjKupQIJuWQBFeMXm
 zjtQ==
X-Gm-Message-State: AOAM5313QRhk37XZljGFvXLdv9b7C34/ZzrYMXScx1cKzzPJSgL1Swjq
 yNOJxQv8GjoZtw0gb4jXOk/N2J7H1AQ=
X-Google-Smtp-Source: ABdhPJyfRFvK7wTPntruyKgRV3yx4jQvjv6pu0OS/XADqSU0TdBETIrr783Lz0W1kOlv7Akp04otMw==
X-Received: by 2002:a17:90a:e395:: with SMTP id
 b21mr1036625pjz.103.1637705896244; 
 Tue, 23 Nov 2021 14:18:16 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id s30sm14734680pfg.17.2021.11.23.14.18.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 23 Nov 2021 14:18:15 -0800 (PST)
Subject: Re: [PATCH V2] phy: bcm-ns-usb2: improve printing ref clk errors
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20211123094823.25445-1-zajec5@gmail.com>
 <20211123221521.25323-1-zajec5@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <c9945244-3a5b-8e67-e33b-73d667c35698@gmail.com>
Date: Tue, 23 Nov 2021 14:18:14 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211123221521.25323-1-zajec5@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211123_141817_367451_9AAB3F25 
X-CRM114-Status: UNSURE (   8.18  )
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

T24gMTEvMjMvMjEgMjoxNSBQTSwgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgo+IEZyb206IFJhZmHF
giBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiAKPiBJbXByb3ZlIG1lc3NhZ2UgJiB1c2Ug
ZGV2X2Vycl9wcm9iZSgpIGhlbHBlciB3aGljaCBwcmludHMgYWN0dWFsIGVycm9yCj4gKGhlbHBm
dWwgZm9yIGRlYnVnZ2luZykgYW5kIGRlYWxzIHdpdGggLUVQUk9CRV9ERUZFUi4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBSYWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+CgpSZXZpZXdlZC1i
eTogRmxvcmlhbiBGYWluZWxsaSA8Zi5mYWluZWxsaUBnbWFpbC5jb20+Ci0tIApGbG9yaWFuCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
