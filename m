Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEAB0C433F5
	for <linux-phy@archiver.kernel.org>; Thu,  7 Apr 2022 09:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BIbJRbUNBfQZMNr/6E4m08rXEPoe2TzfT3q2xKUBIHA=; b=p2BdDUI8+PWKkb
	azg86h8HCuQpuKmwLcvAgxGeBfwz+sLSLjbTpG/TDrETQHB5ezwJdIpw2dqD33rQHJTFMQ+yNsBte
	6j3Q1q51rHCZ6ag9O/HEy2XIGQrG6ti2CuuknBnoMZgW+z7GOFqZxYWxplnz7QcF+A7apTR+00B4c
	6Lp5g2HmGflw+dHJ1+vuPGsF7LVOj4x44L4ZsATNsh/MTysPepH1zNMnvBmPc+WQJyc9rbNoYbyg9
	pJXAg8byNNpRjzy+28o/2SGN9lWTIFkbjTZGbmdIWWG9b1UNTYMdjrceEDwm/metKcN85BFrmyd4C
	f2YZ/6QqYm01CuTnMkvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncOUj-00AsaF-SK; Thu, 07 Apr 2022 09:32:01 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncODa-00AkM4-7Q
 for linux-phy@lists.infradead.org; Thu, 07 Apr 2022 09:14:20 +0000
Received: by mail-ej1-x630.google.com with SMTP id bh17so9469066ejb.8
 for <linux-phy@lists.infradead.org>; Thu, 07 Apr 2022 02:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=T9hbqxWr3I36mglxxaMPa10oONO0MCgwf6BD0FLzWtw=;
 b=eO4MUCyyGxX9SOB5z9Lont0uzM3DcZSWLOusZOuj8rzTIb6Fp2yFzTdSQDIpCWauqS
 vtK2nv1Um/l7zzyAQFdfYN8jhZM2BxO2cM3X4HvKKNAEBZZ8kEaqGR9buc2NadHdFLtV
 1rw7v0SPt1GAerhe6wVNUOxjln43HXUZXXes5AG/QwahrnirdDcE7w5Xn0CMJ4X9ZEk0
 SQsypivARX3TBNAp7cqf5R1dbbCCMX5sACcACcf8tXCYfWbPIVmlcNJzo6u4iOMgP+kz
 Sg18cqif/zI9ejI2zGIHfJMmB1Zb8zW7JVigRNnLWzFX1Mc/0H0SlCHzZgd4F7hFB3jL
 lY0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=T9hbqxWr3I36mglxxaMPa10oONO0MCgwf6BD0FLzWtw=;
 b=DgJG3hY9ICYyjyZ6Y8lL58sBpnqdtoqwWXGn4Ppr1PnyGk/CMh68PY2bavgTTfi3qA
 LxXVH2w9Q+qn04ClwRoyiGbs0ABel2m75iK8d2qYqTZ+wDEisRmYF81a94Qa8VOV6QxM
 NXlINUaKX1yf0iEU0Y+FFW1j0u4rupxVlxyoZsyu3tG1kz0zM9kTd9uM+etWYMdWAuPL
 esfiMD3RFaOD/P68Ev0GXrc0sEuRL8LDYJbTn+x705IUWjc+8r9FUeMCFF5jqbuvklJY
 ZDe84JtiWPqhBimFN73NHcwUczKB/1OPL8FzcF/vQMaWWYk9JdLjwJ0miNeL3eZl5zkh
 nCKA==
X-Gm-Message-State: AOAM530QV+gblzb2n5MFX/NrJ0rMZup/IFdHySDspk/XABH8jbOVDj6W
 fn1fMgK8qvrUxWzXwq3qBntL+g==
X-Google-Smtp-Source: ABdhPJwWNaQ5itZKFjdK/emZRoqIvnB/M7RMtAvxJPctGsYKAbriUxk7937cvCqFjNX/RfsRsgbTaw==
X-Received: by 2002:a17:907:97c5:b0:6da:c285:44f5 with SMTP id
 js5-20020a17090797c500b006dac28544f5mr12375007ejc.208.1649322854974; 
 Thu, 07 Apr 2022 02:14:14 -0700 (PDT)
Received: from [192.168.0.185] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 k14-20020a170906128e00b006e4b67514a1sm7515638ejb.179.2022.04.07.02.14.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 Apr 2022 02:14:14 -0700 (PDT)
Message-ID: <ee0439ca-cf95-909c-3a9b-38dceac2daab@linaro.org>
Date: Thu, 7 Apr 2022 11:14:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] phy: samsung: fix missing of_node_put()
Content-Language: en-US
To: cgel.zte@gmail.com, kishon@ti.com, vkoul@kernel.org
Cc: alim.akhtar@samsung.com, lv.ruyi@zte.com.cn,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Zeal Robot <zealci@zte.com.cn>
References: <20220407085958.2491783-1-lv.ruyi@zte.com.cn>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220407085958.2491783-1-lv.ruyi@zte.com.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_021418_363862_D450C87C 
X-CRM114-Status: GOOD (  11.78  )
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

T24gMDcvMDQvMjAyMiAxMDo1OSwgY2dlbC56dGVAZ21haWwuY29tIHdyb3RlOgo+IEZyb206IEx2
IFJ1eWkgPGx2LnJ1eWlAenRlLmNvbS5jbj4KPiAKPiBvZl9wYXJzZV9waGFuZGxlIHJldHVybnMg
bm9kZSBwb2ludGVyIHdpdGggcmVmY291bnQgaW5jcmVtZW50ZWQsCj4gdXNlIG9mX25vZGVfcHV0
KCkgb24gaXQgd2hlbiBkb25lLgo+IAoKUGxlYXNlIGFkZCBmaXhlcyB0YWcgYW5kIHJlYmFzZSBv
biB0aGlzOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMjAzMDkxNzAwMjguNTE5MTMt
MS1rcnp5c3p0b2Yua296bG93c2tpQGNhbm9uaWNhbC5jb20vCgpJJ2xsIHJlc2VuZCBpdCBiZWNh
dXNlIGl0IG1pZ2h0IGJlIGZvcmdvdHRlbi4KCj4gUmVwb3J0ZWQtYnk6IFplYWwgUm9ib3QgPHpl
YWxjaUB6dGUuY29tLmNuPgoKSSBjYW5ub3QgZmluZCB0aGlzIHJlcG9ydC4gVGhpcyBpcyBhbiBv
cGVuIHNvdXJjZSB3b3JrIGFuZCBwdWJsaWMKY29sbGFib3JhdGlvbi4gVGhlIOKAnFJlcG9ydGVk
LWJ54oCdIHVzdWFsbHkgbWVhbnMgdGhhdCB0aGUgaXNzdWUgd2FzCnJlcG9ydGVkLiBVc3VhbGx5
IGluIHB1YmxpYy4gQ2FuIHdlIHNlZSB0aGUgcmVwb3J0PwoKPiBTaWduZWQtb2ZmLWJ5OiBMdiBS
dXlpIDxsdi5ydXlpQHp0ZS5jb20uY24+Cj4gLS0tCj4gIGRyaXZlcnMvcGh5L3NhbXN1bmcvcGh5
LWV4eW5vczUyNTAtc2F0YS5jIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KQo+IAoKCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
