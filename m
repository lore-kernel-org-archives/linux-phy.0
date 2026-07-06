Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1EBCC43458
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jul 2026 21:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5mcDvqDgK2VwrUbIw5PjAmaD4F0lerHwyEsa/tlKOkk=; b=vAXfxIqFDoUQPX
	ftRv0o7kGPVMzfkX0yvVOmL3JSsGLzcKPVH5rNAdUWi4a34aKTMrfOpyDmZjyBRi3v9795Q//J+AB
	w96rwulbAS11EEwp+0GoPFdrJYg4687zNw1vt8Br/g1S7ipXtuOyolUZSmf/gCGixILQENg88IO4G
	lLptb4iIiW30GCaphlLnnzIxbcr2+x/f6dBbdUCkUd5AOGrqmAayzFXSslMPZd1NNZP4qL2YXeHgo
	i5d3UpP8zIUfoWbf9LyoGd1iHgNpWi9ZQfzUPEm+v8dBB7hBmA0TQJ3TpqnfTYKHrhQckGq9JBXrQ
	2tZ46m6SdeBPehYgu6XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgqpM-0000000Dd97-2XO8;
	Mon, 06 Jul 2026 21:26:08 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgqpI-0000000Dd7K-0dGl
	for linux-phy@lists.infradead.org;
	Mon, 06 Jul 2026 21:26:07 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-493c2c0b9a8so31224155e9.1
        for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 14:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783373162; x=1783977962; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ihP68MSIVTxfpMWP1SL0q+2pdJ2V1J6RQAuUgDHhRvQ=;
        b=pFEBM0kWT6Tog99JcIcHzdVGVWH9LO3OFqFHFPS+ExTorZv8CDK/87mRHnDRO24IQe
         zKmr++8we5j61Imd52beRW4Wg8TSOOPvVuyZgDlZBXaA5SVT0+LJaL7ZaVa9pqnWrudU
         jRZ8prHBkfvx3rNCwT0+er88gDD6jEeLj8ZhAuanwbSKf27hw0+iRTnrZKlJ3lhlgJL6
         1TIJjmiu+AMrTO9BfJy0qdvZTfYVtAA1iSkd4/wjbxn4raF7flgYTsccc0lgquZ87O9E
         TVguv6LyapXJKHUkURAMt+TGUkmP2U0jwdJ83qt3TebTIiFhQgYgQVQxfJ8+gBrtmCjm
         MMww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783373162; x=1783977962;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ihP68MSIVTxfpMWP1SL0q+2pdJ2V1J6RQAuUgDHhRvQ=;
        b=aMSDuiDJ9iQDBIS6ZLlvu6+JsJ9plsdI4e9ki+WJCS9nPdsbUgHk+6r3MXBjy5/x1F
         aqPOrMTAq0+TCbdULR46mKrb7iEIC4UKJcJAuaD1jdQAE7GghF7g7A3TQ3VVn+XUxszQ
         uJy9FZ87BWyAxTsKTKwYKBt5Dfz0n/xMJwnU9Krvwnfrm09d6ST2LEAJuutP9BqZN4XW
         mJq04xhewA6O7ZqLBMu9t4nNir8+1u9wfakjtmXl51T8V1Ky3jNMqmajQ+h5FWwq3cni
         ZRZi4BraXVn1m4dys11oUdEtcuwR1qCJmC2qjONWQYNuCoj01jOsgkNcXeADujgTPdMp
         qv2A==
X-Forwarded-Encrypted: i=1; AHgh+Rok3UI6lzuPyXvFBR400tYUiI67ykT5ZYHDysum+5GyiAJ5wjeAUnquMiBMq+TypWn2mKnZujJp4Ws=@lists.infradead.org
X-Gm-Message-State: AOJu0YxDAWL6fV7rXDT+B6t/cbwdiKRrvgV5h55eHk42Y7zc2mFjDQlK
	MVnA0PNdAjancV6AnfUCIFPrt7KEOrvcjWEJLpHeDbqaJziJ3JMcYj3+
X-Gm-Gg: AfdE7cmJrGVyYrlcq1tdDe0p2CCTmWn3myQOvxO5G+ElvndPFx6qFS1Edv5y5N2Ot6f
	pV9zyBAjXwS4loiXCxlJ/yB+BpdeqfgRjaz65O/Dj/FEi1MSGDWqImcBbUNe4q7Ul1r2QEz1XvG
	GD3Ns51QT9dOrupWgs1ZcewDYI76vPcjHM5ootHXibEK+5NZnhiQ8Ne1rsZRvz/khkxGh9SAB3G
	Yfm5TQcs2HflCnR4NjpYQLA+MBRAtgPBj4enPfs3Ax/o0DikAQWfJMDbYppNnNxlRYa0v4OXceq
	K0lpsPDGt3S2K3kLZUxE16CTlx0JRxrDEnk1bfed+6CATy/UBjNg/xaWhk89Ajk9EfpRlQoG/LM
	7Ar+zDwZOJnIWsUM0wFqLPkPMpm1r/tPrl96eJpDJ9QdGjGMhdpN1daZeU4SnSOSxpnfh6YCmP/
	NTdZEk/ZXTwmJqnKnERhdqrMTC
X-Received: by 2002:a05:600c:1d0c:b0:493:bed9:b53d with SMTP id 5b1f17b1804b1-493df09b330mr24203455e9.31.1783373161558;
        Mon, 06 Jul 2026 14:26:01 -0700 (PDT)
Received: from [192.168.1.10] ([95.43.220.235])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-493e01c8159sm12334715e9.1.2026.07.06.14.25.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2026 14:26:01 -0700 (PDT)
Message-ID: <2b192691-54d8-4449-a18c-b87266c6c73c@gmail.com>
Date: Tue, 7 Jul 2026 00:25:58 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/4] dt-bindings: phy: motorola,cpcap-usb: add chrg_det
 interrupt
To: Conor Dooley <conor@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>,
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
 Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-gpio@vger.kernel.org
References: <20260705101105.1798069-1-ivo.g.dimitrov.75@gmail.com>
 <20260705101105.1798069-2-ivo.g.dimitrov.75@gmail.com>
 <20260706-visitor-calorie-b805ac5af970@spud>
Content-Language: en-GB
From: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
In-Reply-To: <20260706-visitor-calorie-b805ac5af970@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_142604_208596_0E1DA8CD 
X-CRM114-Status: GOOD (  21.21  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SGksCgpPbiA2LjA3LjI2INCzLiAyMDoxNCDRhy4sIENvbm9yIERvb2xleSB3cm90ZToKPiBPbiBT
dW4sIEp1bCAwNSwgMjAyNiBhdCAwMToxMTowMlBNICswMzAwLCBJdmF5bG8gRGltaXRyb3Ygd3Jv
dGU6Cj4+IFRoZSBDUENBUCBVU0IgUEhZIGRyaXZlciB1c2VzIHRoZSBDUENBUCBjaGFyZ2VyIGRl
dGVjdGlvbiBpbnRlcnJ1cHQKPj4gZm9yIERDUCBkZXRlY3Rpb24uCj4gCj4gVGhpcyBpcyBub3Qg
Y3VycmVudGx5IHRydWUsIHRoZSBkcml2ZXIgZG9lcyBub3QgbG9vayBmb3IgdGhpcyBpbnRlcnJ1
cHQKPiBhdCB0aGUgdGltZSBvZiB0aGlzIHBhdGNoLgo+IAoKUmlnaHQsIHRoaXMgaXMgYmFkIHdv
cmRpbmcgY2F1c2VkIGJ5IHRoZSBmYWN0IHRoYXQgaW5pdGlhbGx5IHRoZSBkcml2ZXIgCnBhdGNo
IGNhbWUgYmVmb3JlIHRoZSBiaW5kaW5nIHBhdGNoLgoKPj4gVXBkYXRlIHRoZSBiaW5kaW5nIGFu
ZCBleGFtcGxlIERUUyB0byB1c2UgdGhlIGNvcnJlc3BvbmRpbmcKPj4gImNocmdfZGV0IiBpbnRl
cnJ1cHQgbmFtZS4KPiAKPiBTb3VuZHMgdG8gbWUgbGlrZSB0aGlzIG5ldyBpbnRlcnJ1cHQgaXMg
b3B0aW9uYWwsIHNpbmNlIHVudGlsIG5vdyBpdCBoYXMKPiBub3QgYmVlbiBuZWVkZWQ/IFRoZSBw
YXRjaCBob3dldmVyIG1ha2VzIGl0IG1hbmRhdG9yeS4gSSB0aGluayB5b3VyCj4gZHJpdmVyIHBh
dGNoIGFsc28gbWFrZXMgaXQgbWFuZGF0b3J5LCB3aGljaCB3aWxsIGJyZWFrIG9sZGVyCj4gZGV2
aWNldHJlZXMuCj4gCgpPaCwgaXQgaXMgaW5kZWVkIG5vdCBuZWVkZWQgZm9yIHByb3BlciBEQ1Av
U0RQIGRldGVjdGlvbiwgYWZ0ZXIgc29tZSAKZXhwZXJpbWVudHMgSSB3YXMgYWJsZSB0byB0ZWFj
aCB0aGUgZHJpdmVyIHRvIGRvIHByb3BlciBkZXRlY3Rpb24gYnkgCnVzaW5nIGN1cnJlbnQgaW50
ZXJydXB0cyBvbmx5LgoKPiBXaGF0IG1ha2VzIHRoaXMgQUJJIGJyZWFrIG9rYXk/Cj4gCgpXaWxs
IHNlbmQgbmV3IHNlcmllcyB3aXRoIHNjaGVtYS9EVCBwYXRjaGVzIGRyb3BwZWQuCgpUaGFua3Mg
YW5kIHJlZ2FyZHMsCkl2bwoKPiBUaGFua3MsCj4gQ29ub3IuCj4gCj4+Cj4+IFNpZ25lZC1vZmYt
Ynk6IEl2YXlsbyBEaW1pdHJvdiA8aXZvLmcuZGltaXRyb3YuNzVAZ21haWwuY29tPgo+PiAtLS0K
Pj4gICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbW90b3JvbGEsY3BjYXAtdXNiLXBoeS55
YW1sICAgICB8IDYgKysrKy0tCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9waHkvbW90b3JvbGEsY3BjYXAtdXNiLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tb3Rvcm9sYSxjcGNhcC11c2ItcGh5LnlhbWwKPj4g
aW5kZXggMGZlYmQwNGE2MWY0Li41MjNhOGY4NDgwZDAgMTAwNjQ0Cj4+IC0tLSBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbW90b3JvbGEsY3BjYXAtdXNiLXBoeS55YW1s
Cj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbW90b3JvbGEs
Y3BjYXAtdXNiLXBoeS55YW1sCj4+IEBAIC0zMCw2ICszMCw3IEBAIHByb3BlcnRpZXM6Cj4+ICAg
ICAgICAgLSBkZXNjcmlwdGlvbjogc2UxIGludGVycnVwdAo+PiAgICAgICAgIC0gZGVzY3JpcHRp
b246IGRtIGludGVycnVwdAo+PiAgICAgICAgIC0gZGVzY3JpcHRpb246IGRwIGludGVycnVwdAo+
PiArICAgICAgLSBkZXNjcmlwdGlvbjogY2hhcmdlciBkZXRlY3Rpb24gaW50ZXJydXB0Cj4+ICAg
Cj4+ICAgICBpbnRlcnJ1cHQtbmFtZXM6Cj4+ICAgICAgIGRlc2NyaXB0aW9uOiBJbnRlcnJ1cHQg
bmFtZXMKPj4gQEAgLTQzLDYgKzQ0LDcgQEAgcHJvcGVydGllczoKPj4gICAgICAgICAtIGNvbnN0
OiBzZTEKPj4gICAgICAgICAtIGNvbnN0OiBkbQo+PiAgICAgICAgIC0gY29uc3Q6IGRwCj4+ICsg
ICAgICAtIGNvbnN0OiBjaHJnX2RldAo+PiAgIAo+PiAgICAgaW8tY2hhbm5lbHM6Cj4+ICAgICAg
IGRlc2NyaXB0aW9uOiBJSU8gQURDIGNoYW5uZWxzIHVzZWQgYnkgdGhlIFVTQiBQSFkKPj4gQEAg
LTkxLDEwICs5MywxMCBAQCBleGFtcGxlczoKPj4gICAgICAgICAgIGludGVycnVwdHMtZXh0ZW5k
ZWQgPSA8Cj4+ICAgICAgICAgICAgICAgJmNwY2FwIDE1IDAgJmNwY2FwIDE0IDAgJmNwY2FwIDI4
IDAgJmNwY2FwIDE5IDAKPj4gICAgICAgICAgICAgICAmY3BjYXAgMTggMCAmY3BjYXAgMTcgMCAm
Y3BjYXAgMTYgMCAmY3BjYXAgNDkgMAo+PiAtICAgICAgICAgICAgJmNwY2FwIDQ4IDEKPj4gKyAg
ICAgICAgICAgICZjcGNhcCA0OCAxICZjcGNhcCAxMyAwCj4+ICAgICAgICAgICA+Owo+PiAgICAg
ICAgICAgaW50ZXJydXB0LW5hbWVzID0gImlkX2dyb3VuZCIsICJpZF9mbG9hdCIsICJzZTBjb25u
IiwgInZidXN2bGQiLAo+PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAic2Vzc3ZsZCIsICJz
ZXNzZW5kIiwgInNlMSIsICJkbSIsICJkcCI7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICJzZXNzdmxkIiwgInNlc3NlbmQiLCAic2UxIiwgImRtIiwgImRwIiwgImNocmdfZGV0IjsKPj4g
ICAgICAgICAgIGlvLWNoYW5uZWxzID0gPCZjcGNhcF9hZGMgMj4sIDwmY3BjYXBfYWRjIDc+Owo+
PiAgICAgICAgICAgaW8tY2hhbm5lbC1uYW1lcyA9ICJ2YnVzIiwgImlkIjsKPj4gICAgICAgICAg
IHZ1c2Itc3VwcGx5ID0gPCZ2dXNiPjsKPj4gLS0gCj4+IDIuMzkuNQo+PgoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
