Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D523C48BC4
	for <linux-phy@archiver.kernel.org>; Wed, 14 Feb 2024 08:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RWRCX2BZ0Q3XKwPp7MNikqhGm+H34J/geGaBSSnCdi8=; b=3xB62gL93MhoFa
	JUH6cCF3LWjybsMKYyHRZYJh8MSOnqt1dSiLs2B62m9/XumXIzNLZsI0SNeUkQ6ymtHxVWH48NNQZ
	Xtw5RC2eoDCikM9xkT7ONrubAu8djkMHb/hRXcpaGYEcFH5GNREAzdPYtFn8t5ANcaMTj7sspMGwT
	o3P38BHF/Yrr0slE0l0Wfb+dv/mLT/WZWrIDAoLmu1vKNfIoPu+4aYI5F3S5QfRePGrio97EY/GLr
	jUp5WgmvJ+RkjxhXIlgw61YF1aKEY2jU19hpRfOsnfOwI7IgU+tsum+15spJfnRYkcDO8d/6lXitT
	8FJBBJP7ZZa38ISShDBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raB3n-0000000CC6X-3qu8;
	Wed, 14 Feb 2024 08:56:07 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raB3l-0000000CC66-0W5q
	for linux-phy@lists.infradead.org;
	Wed, 14 Feb 2024 08:56:06 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-a38271c0bd5so660315966b.0
        for <linux-phy@lists.infradead.org>; Wed, 14 Feb 2024 00:56:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707900963; x=1708505763; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=t6CpUTvlMcNqRo8XepyQNVrnC/CoT51gZejZ28v0Jlc=;
        b=Z40XDg74O+TNxZxVHdH88Jk1/dxlAYZnmw3ZLuT7+V35LkO3XJUNbfEab+3Jk1IWdv
         h7bq5YXINxglSxUf5mdugfR4yKIMGDmpiTE5G07cfvzRJsEDPM7fBg94seKxKLP52n3a
         qJSGIA3j2fdlCdSpCGA6eilu19206nhcKgCR1ssztOWwinZ5kg4ajfGZUJGNaeANNrP4
         JVKJVuR7WHVqvZ4Ij2Emin3UiwJG4aTCn7HspcCxW8kAKbzbGqRXNDB8eONzW9PqfoMy
         kTDPBYI91yk2RAvOnCKivAdP39oWjULdQ+GY0kJR+7Ys7Qk6AArtnr3+AxE0D1zpFmUH
         4MEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707900963; x=1708505763;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t6CpUTvlMcNqRo8XepyQNVrnC/CoT51gZejZ28v0Jlc=;
        b=eU05CoTYbWl6TxEgHP1Ab9OzbMrEG8T7rFeSyxNtQ/SrfqErlLHDXf3VkYhkkWsCwn
         YFsFfhUWUQSMRwHRk6pqDYLwgiPvTiZLvtUR3saceV/aApgY1A+73F5GI5rlF/QMdNaa
         t5a6l1L+JcVNSqHlJEAGU3muYSLu4Ca2y/exmtCbu7DQdu/weCwjg/zM6aMOnTsnV82O
         LgG20cvAFYWpS+zt9YiVSPOK1bAm7pODOH0id23II+XSlGYRxUNNJHCAubBT7aPVt95Y
         nxEtCO0iFPodjRepGZFcVRJWVMe3PNRKJM82+8xb0I3PvPJYmETcTwSaXv51ZgkXYCS4
         f7Bg==
X-Forwarded-Encrypted: i=1; AJvYcCWlPiN/7UJaOKccsItU45l8E7/4f+0e4qZGKRaWZNiOczupd2EEf6UI88hKbpDjmbv3qDNjrp6QgNs/iSUWjrRzg1kw+atHlHkHfExE4g==
X-Gm-Message-State: AOJu0YxtKF3zVyhmicUNLm5bDQEuBv2I690gZbDYjxFv0JVYxcRIvadm
	lT18N++rDDWgOoXDpd2AeW0N3iS57fjaHdycxIvgkpPZ1+8Am39qe/GXXBKV32c=
X-Google-Smtp-Source: AGHT+IFv53OqyKfCS2AyE5QoKSqZ4vvx8TNNN5nJHOC0yja0St3b4kFIh57OSkH4RJa89iWyy8q47g==
X-Received: by 2002:a17:906:fa06:b0:a3d:1214:90d with SMTP id lo6-20020a170906fa0600b00a3d1214090dmr1221446ejb.16.1707900963109;
        Wed, 14 Feb 2024 00:56:03 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXMtxAmcF6e+TOX5s+TM0JUdrisWtAAxtai7TwdZG2HspeeM/DulbdXVS9f0+kOgJyo4ulwvQXBB4oH5GVSVVCj2Ht//HpnWPK2LHMnIyvw/lfnjpRWK5foPTEn4f8T36yGXqlwarpGJj5cVSOQ1jOAwCNt9zUnMBD1i9GD/2Jn8E6niScnhqkoAStzZzUl+3TGC6u5Vjdk0CdW/Cybs0UedQlDXHX46z6sN1IO1zrI0OYbBk5Q8TP0Y7Q59r8YmImIhsH97GcJPtbVWY+E5xg0ht4ZSv7yLrvay51PXgqrg895ohgCxL/rb8mg9hoN2ZD33+PmOtqBrrOgh7MaNGa8ZiFLLMGK6hKmLn2DsNSjioXaZrK64g78Ddv0wgAspXkdT7GqV4NYiS0dLwb2UA4oLqUzfhl6/7E/2LeXGlyHyjlGRR3oJm9/d1Z1aiID8nJFAj9eUcErrq3CQABv/ZCpBKUDUE8V3x3ZGrkxV9jqsIJs7PaJw5lz/Wg4PPPzvDvG6a5A4n7SLgDQfcmKX4a7HeOfMAKkyCCRuwXgUGXIjLs+kpaVPktRwY0OShkLQPunsn/h8BQO4kdcBu1O1+RseRUWH834PAIzJb1cXZ8bgK6s8trKclaUVHopvedBDzi/MA78kFQO+GChKW6Z3+2pM2lU/JA0ViBck/IgUV0EhxrFJu7zsC1okufliwDq7Cs0Eqwt10vqnnuNpOdjkH4GbDW0k2+cloaCtPf35E9NYis+P1FX8aC+ezCYuy95go4VARuiNvvMNqLPgU+sVrYT6d7GClZFbfr+qD1Ls8tp3ZE44M1MbL+8/ZUqAmxCx8f+rQWlTBew8mckyG8U5cs=
Received: from [192.168.0.22] ([78.10.207.130])
        by smtp.gmail.com with ESMTPSA id vu6-20020a170907a64600b00a3d19aed4cesm1082935ejc.21.2024.02.14.00.56.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Feb 2024 00:56:02 -0800 (PST)
Message-ID: <9dcca70b-2c34-4b5b-8b8a-18bd9b4e6e5b@linaro.org>
Date: Wed, 14 Feb 2024 09:56:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/8] dt-bindings: ufs: qcom: Add SC7180 compatible
 string
To: Rob Herring <robh@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: David Wronek <davidwronek@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
 linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-phy@lists.infradead.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20240121-sm7125-upstream-v4-0-f7d1212c8ebb@gmail.com>
 <20240121-sm7125-upstream-v4-2-f7d1212c8ebb@gmail.com>
 <20240212222232.GB2655166-robh@kernel.org>
 <CAA8EJpoymmOBc3CfNHJKBT8BNje_s2a5uGPde3QHYv3vQ97=-Q@mail.gmail.com>
 <CAL_JsqLGVBjiYt5tG0GFxxeHmNDD1PgJx3ab-n2x0nHPEaX9iQ@mail.gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CAL_JsqLGVBjiYt5tG0GFxxeHmNDD1PgJx3ab-n2x0nHPEaX9iQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_005605_194706_BA8FB715 
X-CRM114-Status: GOOD (  21.39  )
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

T24gMTMvMDIvMjAyNCAxOToxMSwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gT24gVHVlLCBGZWIgMTMs
IDIwMjQgYXQgNDozMOKAr0FNIERtaXRyeSBCYXJ5c2hrb3YKPiA8ZG1pdHJ5LmJhcnlzaGtvdkBs
aW5hcm8ub3JnPiB3cm90ZToKPj4KPj4gT24gVHVlLCAxMyBGZWIgMjAyNCBhdCAwMDoyMiwgUm9i
IEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4gd3JvdGU6Cj4+Pgo+Pj4gT24gU3VuLCBKYW4gMjEs
IDIwMjQgYXQgMDU6NTc6NDJQTSArMDEwMCwgRGF2aWQgV3JvbmVrIHdyb3RlOgo+Pj4+IERvY3Vt
ZW50IHRoZSBjb21wYXRpYmxlIGZvciB0aGUgVUZTIGZvdW5kIG9uIFNDNzE4MC4KPj4+Pgo+Pj4+
IFJldmlld2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxp
bmFyby5vcmc+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogRGF2aWQgV3JvbmVrIDxkYXZpZHdyb25la0Bn
bWFpbC5jb20+Cj4+Pj4gLS0tCj4+Pj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy91ZnMvcWNvbSx1ZnMueWFtbCB8IDIgKysKPj4+PiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKQo+Pj4KPj4+IFNob3VsZCBoYXZlIGJlZW4gcGlja2VkIHVwIGJ5IFNDU0kvVUZTIG1h
aW50YWluZXJzLCBidXQgaXQKPj4+IGhhc24ndCwgc28gSSBhcHBsaWVkIGl0Lgo+Pgo+PiBBbmQg
aXQgbm93IHRyaWdnZXJzIHNjaGVtYSB3YXJuaW5ncywgYmVjYXVzZSBzYzcxODAtdWZzaGMgaGFz
IDcgY2xvY2tzCj4+IGFuZCAxIHJlZyBlbnRyaWVzLgo+IAo+IEFuZCBub3cgZHJvcHBlZC4uLiBQ
ZXJoYXBzIHRoZSBkdHMgY2hhbmdlcyBzaG91bGQgYmUgdG9vLgo+IAo+IE1heWJlIFFDb20gbWFp
bnRhaW5lcnMgc2hvdWxkIHJlcXVpcmUgYSByZXBvcnQgb2YgZHRic19jaGVjayBvbiBuZXcKPiBi
b2FyZHMuIE15IGNvbXBhcmlzb25zIG9mIExpbnVzIHZzLiBuZXh0IHdhcm5pbmdzIG9mdGVuIHNo
b3cgYW4KPiBpbmNyZWFzZSBpbiBRQ29tIHdhcm5pbmdzLiBMaWtlIHJpZ2h0IG5vdzoKPiAKPiBs
aW51czogYXJjaC9hcm02NC9ib290L2R0cy9xY29tOjE5OTA6MjY1Cj4gbmV4dDogYXJjaC9hcm02
NC9ib290L2R0cy9xY29tOjE2MTA6Mjk4CgpJIHdhcyB0cmFja2luZyBuZXcgZHRic19jaGVjayB3
YXJuaW5ncyBvbiBRdWFsY29tbSBmb3Igc2VsZWN0ZWQKc3Vic3lzdGVtcyBhbmQgZm9yIHNlbGVj
dGVkIGJvYXJkcywgYnV0IHRoYXQgZ3JldyBmYXN0ZXIgdGhhbiBJIHdhcyBhYmxlCnRvIGZpeCBp
dCBzbyBJIGdhdmUgdXAuLi4KCkFmdGVyIGFsbCB0aGVzZSBtb250aHMgYW5kIGFsbCB0aGVzZSBy
ZXZpZXcgZmVlZGJhY2tzIG1hbnkgcGVvcGxlIHN0aWxsCmRvIG5vdCB0ZXN0IHRoZWlyIERUUyB3
aXRoIGR0YnNfY2hlY2ssIHNvIG1heWJlIHRoZSBzb2x1dGlvbiBpcyB0byBzdGFydApkcm9wcGlu
ZyBwZW9wbGUncyBwYXRjaGVzPyBEZXRlY3QgbmV3IHdhcm5pbmdzIGFuZCBkcm9wIHRoZSBwYXRj
aCBmcm9tClF1YWxjb21tIHRyZWU/Cgo+IAo+IEZpcnN0IG51bWJlciBpcyB0b3RhbCB3YXJuaW5n
cy4gU2Vjb25kIG51bWJlciBpcyB1bmlxdWUgd2FybmluZ3MKPiAoc3RyaXBwaW5nIGR0YiBuYW1l
KS4gU29tZSBvZiB0aGlzIGlzIGp1c3QgbWlzbWF0Y2ggYmV0d2VlbiBzY2hlbWFzCj4gYW5kIGR0
cyBjaGFuZ2VzIHNob3dpbmcgdXAgaW4gbmV4dCwgYnV0IGl0IGRvZXNuJ3QgdGVuZCB0byBnbyB0
byAwIGFzCj4gdGhlIG1lcmdlIHdpbmRvdyBhcHByb2FjaGVzLiBJJ3ZlIHNlZW4gdGhpcyBzZXZl
cmFsIGN5Y2xlcy4gQWxsIHRoZQo+IGRhdGEgaXMgYXZhaWxhYmxlIGZyb20gbXkgQ0kgam9icywg
YW5kIEkgcmVndWxhcmx5IGxvb2sgYXQgdGhlIGRpZmYKPiB3aXRoIHRoaXM6Cj4gCj4gJCBsZXNz
IH4vYmluL2dsLWRpZmYtZHRiLXdhcm5pbmdzCj4gIyEvYmluL3NoCj4gCj4gWyAteiAiJDEiIF0g
JiYgeyBlY2hvICJNaXNzaW5nIGFyY2ghIjsgZXhpdCAxOyB9Cj4gCj4gYXJjaD0iJDEiCj4gCj4g
am9iPSJqb2ItZHRicy1jaGVjayIKPiBsb2dmaWxlPSJwbGF0Zm9ybS13YXJuaW5ncy5sb2ciCj4g
Cj4gIyB1cmwgPGJyYW5jaD4gPGFyY2g+Cj4gdXJsKCkgewo+ICAgICAgICAgbG9jYWwgYnJhbmNo
PSIkMSIKPiAgICAgICAgIGxvY2FsIGFyY2g9IiQyIgo+ICAgICAgICAgZWNobyAiaHR0cHM6Ly9n
aXRsYWIuY29tL3JvYmhlcnJpbmcvbGludXgtZHQvLS9qb2JzL2FydGlmYWN0cy8ke2JyYW5jaH0v
cmF3LyR7bG9nZmlsZX0/am9iPSR7am9ifSUzQSslNUIke2FyY2h9JTVEIgo+IAo+IH0KPiAKPiBj
dXJsIC1McyAtbyBvcmlnLmxvZyAkKHVybCBsaW51cyAke2FyY2h9KQo+IGN1cmwgLUxzIC1vIG5l
eHQubG9nICQodXJsIG5leHQgJHthcmNofSkKPiBtZWxkIG9yaWcubG9nIG5leHQubG9nCgpUaGF0
J3MgdXNlZnVsLCB0aGFua3MhCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
