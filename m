Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B9FAC83F25
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 20:43:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+x1pks1IOvi2TNjcz4anJkfYPK7vPJk45Rkg9CBJVXg=; b=q1VvMkTyXJGFqP
	xi2FTnIsaagZ9t/jD11KapwGRXFzUlhyRHRB3l1oj7Q8V6aIffnObkW0wRmVIZbmotwa4jwenouAb
	dM08rVjrxukkgx4/zd25eHEcimJs4v1IyGJowRFaDYyaQLAlRoSyw/tosnerUEWc6gvE8L3HJeKQD
	PjPCblFEVZZax4lPfLSOU6V6prYMdzrQNcPTjmgvMAUkJv/l4+h0XTTIn4C6wCpZwD3WndVwE0VMf
	Z0Ijknd/gQLAYQk6t3GvWqyAQVK6lzIR96+3sbUsI7yAzdscig+XAn6IhQmTgxDe1g3dUq0BqHLiB
	Afjo6gFFLG32w/HqWfug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udxLt-00000000exV-1CYy;
	Mon, 21 Jul 2025 20:43:13 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udwxC-00000000bU6-1QoQ
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 20:17:43 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-3a5257748e1so2649367f8f.2
        for <linux-phy@lists.infradead.org>; Mon, 21 Jul 2025 13:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753129061; x=1753733861; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dM8V1L459ePaBP5oquLpSUwSE8BaJwvLWNciMOJOtaY=;
        b=wTy19GngCjocHYN2eevR2UOPLrV+0AW0bD3sZfHMfgaAM/IELX9Jl9dLF44EhT3iVr
         hvt3o8T1FIVXcw7WMcQ0HgItFhAVuAEDQjuV63Bk2jrbhyOLHjf/4PFPTppKlVgdUmTL
         AHc0uAsakrHHXPfLxQq8kX+fUws2asn3JPwmseEf/zdYQZyCXoaKkQqDY+YNkS8cf1Zu
         ycDwUA4tF31iLKtFLuRqRxnB9gRRITUjBUWML7GuJI3hJDVCKX2U07ovOFhrUVz9kQZw
         Z/lGXG1zl4fhSP0MEsmHT+JB2ODvLAfQuxWG7WuChbZRdmwYBQ39CktRUWwO6eCmMLau
         0B0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753129061; x=1753733861;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dM8V1L459ePaBP5oquLpSUwSE8BaJwvLWNciMOJOtaY=;
        b=RzD3fw2KSnqLvhHeheMS6WniA/Md77jMwlALh+PtWIWOO8WTIXt7kqsstApV25EIsC
         zxwNKWIjYNOVpZC9jplxqs+uiWmJ8MCAsyzY3VF78Y4g3phtKGtI5E2rrMOcIWgE/2ai
         vAfFruIT+ZPjix7eucrmtTCR/q/r7+WMwppj/8+UJ6+s+YW4TPSep4t4fH3DalbgwlHt
         +Ksd5fNe9NFc89p+YqifSJvwIz2cvZHzaJTjXuISJtLACFxtoD7dkPDbaz9EtM8T7O/t
         bhSBCXdOl3qSubgtXV2fmHGqjELx2Z4Z48td9gYDVVZFi1Qflh/rs6uUa4J/CUYJ3Ge8
         xxZA==
X-Forwarded-Encrypted: i=1; AJvYcCViQxAZWrF+ZISztrBFtBJGh/EbjjkJjynNFLI140O3bxLQYYBclA3XQkWzwEEN6TuwP6a3d0jyE5I=@lists.infradead.org
X-Gm-Message-State: AOJu0YzYpOMuv3lBsFjZlW1hGZVgQF7o5DtwGvU9Ylvy9BBUdVh300F1
	+8n1uaSRvIPt8HrpOLPC7p2OArM2EroR7Z5ji1rZS0pswC7qejtM7tevkCei7BFQkLM=
X-Gm-Gg: ASbGncsvJdc+mO3m4r1c1NYECxbBrzzYEoC3G4JoTCfP4iH51MnTlg1CPl6hXGSNvTl
	U6Xi7pH9GFWZ4ePh3Nqcjwnzgg9Oa9kjYxE5Sdyl5qNx/UJ+nObOPk8PC/TIH2by76pdqWB2HvV
	26yZZaAvYe1k1OtNuMr8ajjPM2xQ3Zbw75wloH97Q2Gc0GRwNeZDfzu85VoqcbQ5sOqWgm3Vcdy
	PcCpU0txDPvbm+4QW0wofbBd335Yl6h4jzs98JaZFCL7bKTU2RD4UWSvP41Vx7pC4lJ03Vz/hGH
	vAlK6T9ABbqNFaLCXX/tIOvhz5yEwq1lLT1ucB+8hUpc/XW+VoQr0vsA5kRLcFZLJbjtkTJu0WW
	KaL7H5LnIasxd/dfcIH+k6Ynd6Fh+NDIAK8Z9hs8aRe1HPGjvg5IssaxXDzYrTqTKuEAz3dUDPM
	wg+cY=
X-Google-Smtp-Source: AGHT+IF62Mz23f/3FxKSXRlhY6X69Vv1j/s22nJAkdHPupT9WjDcJMNWjSNh7x1kPOXtrItb7cZ4Dg==
X-Received: by 2002:a5d:64e8:0:b0:3a5:8a68:b839 with SMTP id ffacd0b85a97d-3b60e53ee0amr17139819f8f.45.1753129060690;
        Mon, 21 Jul 2025 13:17:40 -0700 (PDT)
Received: from ?IPV6:2a0d:e487:135f:abd:1f99:991c:5b07:cd28? ([2a0d:e487:135f:abd:1f99:991c:5b07:cd28])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3b61ca4894asm11444490f8f.49.2025.07.21.13.17.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jul 2025 13:17:40 -0700 (PDT)
Message-ID: <8792778e-1fe6-4eff-9328-767ed38a1583@linaro.org>
Date: Mon, 21 Jul 2025 22:17:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/17] dt-bindings: thermal: tegra: Document Tegra210B01
To: webgeek1234@gmail.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nagarjuna Kristam <nkristam@nvidia.com>, JC Kuo <jckuo@nvidia.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Mathias Nyman <mathias.nyman@intel.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 Prashant Gaikwad <pgaikwad@nvidia.com>
Cc: devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, Thierry Reding <treding@nvidia.com>,
 linux-pm@vger.kernel.org, linux-clk@vger.kernel.org
References: <20250714-t210b01-v1-0-e3f5f7de5dce@gmail.com>
 <20250714-t210b01-v1-5-e3f5f7de5dce@gmail.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20250714-t210b01-v1-5-e3f5f7de5dce@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_131742_382002_FFC81678 
X-CRM114-Status: GOOD (  11.64  )
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

T24gNy8xNS8yNSAwNjowMiwgQWFyb24gS2xpbmcgdmlhIEI0IFJlbGF5IHdyb3RlOgo+IEZyb206
IEFhcm9uIEtsaW5nIDx3ZWJnZWVrMTIzNEBnbWFpbC5jb20+Cj4gCj4gQWRkIHRoZSBjb21wYXRp
YmxlIHN0cmluZyBmb3IgVGVncmEyMTBCMDEgU09DX1RIRVJNCj4gCj4gU2lnbmVkLW9mZi1ieTog
QWFyb24gS2xpbmcgPHdlYmdlZWsxMjM0QGdtYWlsLmNvbT4KCkFwcGxpZWQgcGF0Y2ggNS8xNwoK
VGhhbmtzCgo+IC0tLQo+ICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJt
YWwvbnZpZGlhLHRlZ3JhMTI0LXNvY3RoZXJtLnlhbWwgfCAyICsrCj4gICAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy90aGVybWFsL252aWRpYSx0ZWdyYTEyNC1zb2N0aGVybS55YW1sIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJtYWwvbnZpZGlhLHRlZ3JhMTI0LXNv
Y3RoZXJtLnlhbWwKPiBpbmRleCAxOWJiMWYzMjQxODNiYjIyYmM3NTYzMDc5OGRhNjdmYzgzNDky
MGI4Li5jZjQ3YTFmM2IzODQ3ZDRhMDM3MWQwYmM3MTE2MzhmYzVlM2I2Y2QzIDEwMDY0NAo+IC0t
LSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy90aGVybWFsL252aWRpYSx0ZWdy
YTEyNC1zb2N0aGVybS55YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3RoZXJtYWwvbnZpZGlhLHRlZ3JhMTI0LXNvY3RoZXJtLnlhbWwKPiBAQCAtMjEsNiArMjEs
NyBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgICAgLSBudmlkaWEsdGVncmExMjQtc29jdGhlcm0KPiAg
ICAgICAgIC0gbnZpZGlhLHRlZ3JhMTMyLXNvY3RoZXJtCj4gICAgICAgICAtIG52aWRpYSx0ZWdy
YTIxMC1zb2N0aGVybQo+ICsgICAgICAtIG52aWRpYSx0ZWdyYTIxMGIwMS1zb2N0aGVybQo+ICAg
Cj4gICAgIHJlZzoKPiAgICAgICBtYXhJdGVtczogMgo+IEBAIC0yMDcsNiArMjA4LDcgQEAgYWxs
T2Y6Cj4gICAgICAgICAgICAgICBlbnVtOgo+ICAgICAgICAgICAgICAgICAtIG52aWRpYSx0ZWdy
YTEyNC1zb2N0aGVybQo+ICAgICAgICAgICAgICAgICAtIG52aWRpYSx0ZWdyYTIxMC1zb2N0aGVy
bQo+ICsgICAgICAgICAgICAgIC0gbnZpZGlhLHRlZ3JhMjEwYjAxLXNvY3RoZXJtCj4gICAgICAg
dGhlbjoKPiAgICAgICAgIHByb3BlcnRpZXM6Cj4gICAgICAgICAgIHJlZzoKPiAKCgotLSAKPGh0
dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJl
IGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9w
YWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+
IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
