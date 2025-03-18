Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A0A5C282EC
	for <linux-phy@archiver.kernel.org>; Tue, 18 Mar 2025 05:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lq+wloA5Jot88z6eEQPrZ3b2f/FsqlC38AoAKTYQixY=; b=fbm1fPRWa0oA3k
	VLHiphJ7ErpBdborvaltyLe4iogci27kyxm2E8VIrM6L/QuFlNHm13Z0Mw2llURI9d4Kbnsbz8DgR
	xLPSv+OMZu6hMRC0dUEd0V9vUUF1CJoSFGm+c9r9di6XWpLo/8SEr90AW8vSID8DCvpPcpEVdIJwY
	LoZuJz1y2QvaSTRH6w5nAsiOhlPNKA2bOhwpYQgWaUWgQiLqLG5WXPxU2rHQ1ppg0HdUvxt7PSiyt
	l2H1LIXeM04b1YiDEAcQBp2tlSVI6S9AqRw2svi7sbmu7Jd0e+Pe8y3QLbMoWfUKNSgingi6wo2VJ
	vNnDAhwr98UHE2UXHV5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuPXg-00000004id2-3x3H;
	Tue, 18 Mar 2025 05:31:08 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuPXe-00000004ica-4BrC
	for linux-phy@lists.infradead.org;
	Tue, 18 Mar 2025 05:31:08 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-225a28a511eso86503475ad.1
        for <linux-phy@lists.infradead.org>; Mon, 17 Mar 2025 22:31:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742275866; x=1742880666; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WZOO6fXLUM5QQ6l+FSRSueHWGfAmK/qcP1DtlCjY8Js=;
        b=THrfC11uVnXqCHPqt7DpJ7teJl6jiyKIwWwUgRfRRuhPkg4n7R7NJKLRt54hcTjhAz
         xFijyvZmRjp5+5lBtGnrNTQKsjc21O2g3BHu+7Jel65FWIGP43m2wf6b+n21OAfQxmOm
         AgkaeT1sLgbCHqpgpIIbmhlDxUKm/NZwT/mXodKtLzx1qWgq906TuD41XKMKGEYakqe/
         ya3mkJ8zb4jevBMWRaVZea7DUloNqLleQPwtlhE7ILal3+74zK36lvltAqh69E0lM6y9
         QGSklQ9r7BufY2ISCHwE5/I+R20BqSrwmDveaJl8knMPjSt3NJohphjRjDQXcHLsx6JA
         bADA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742275866; x=1742880666;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WZOO6fXLUM5QQ6l+FSRSueHWGfAmK/qcP1DtlCjY8Js=;
        b=SaMrVheryYJ/CzzMeeh3wZnmg+lwnHyCV3wvd2B/eM+OJCBZYmgYPFuB78KBPlbIIh
         lxXxhlPOVBh9/yV3AgF0aj00edB54Sb/er0ozienDjzUyZgA88AZiCgyg9PKel5+Si81
         i2I2d/FM+BqQN98NpyvikNPAapUlhbRYgj4gWlCfu42BgYlCWOHmnAhbZ7meDyN4wEBG
         UjL6YwR7rQo1o0muQhh3UgrHgg74Cg6822NlE8rDVvrWPe44VE3CquWPswmEPX4KvZ8L
         WCQX3BE90FvrN/cQNxPqbUxeiY8wNaCkSiNYFBZtQitXItMB432L2WiF+Hj9Ja+mCYl8
         0i8Q==
X-Forwarded-Encrypted: i=1; AJvYcCWWoiJxcryV8FJt28xfGDtKlJBwbRpbRjZfdchSspHrMiwCe3AHQA7VJlcUSF+P09u2G5JssTZEPkw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxAuD5998V90a5jEAGcgfhQdTATgYc+5BsaXhZOPe8xt/v1Y/ku
	Lpkb4HXa0VEft/1heMlXNHedBZ+6CG7MCZIHV1rAddI4LlDvlTwUSqzQKMssGg==
X-Gm-Gg: ASbGncvks1LazfZP90MqcyBxjmp8qab0JHsfAAUytic8QIwfPxVucwSc11HLJEXfPcX
	ybyGpS+ae+KGa7l2drL4Y+crKXVog1ZYNn3IvYIUhP8eM5dwsWuTCuMCoI4BWeGAhKMW89+4JJN
	7Odn1OZl6knYa0WQg46Rv2A7FjGoNPxQryML4Tn/f8Fxqkg0KFYMdsSQZ1+pc2rlWLhslEr7mxH
	8jatlheEPVSyURYO3s4aYiUUCLHYZwaPpxJ+ox+0zVODqyrZtE3FJbulKQ1eMG0ELXmGYxcVBev
	O6wr4r/dDognt6ifFYKzcsF7gys2GxdepC4gxkwvjOhqjv1ESETWKKPr
X-Google-Smtp-Source: AGHT+IHLYD5fTKzDENoVI+mnh+1/mTxdSkdiF0on8Wov7vEkkGeSNfMXP1QSWphdwBuAx/8LoGtLHg==
X-Received: by 2002:a17:902:ce84:b0:220:ca08:8986 with SMTP id d9443c01a7336-225e0a6c2ddmr176694025ad.22.1742275866087;
        Mon, 17 Mar 2025 22:31:06 -0700 (PDT)
Received: from thinkpad ([120.56.195.170])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-225c6bbe5a2sm85314025ad.196.2025.03.17.22.31.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 22:31:05 -0700 (PDT)
Date: Tue, 18 Mar 2025 11:00:58 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
	Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	Nitin Rawat <quic_nitirawa@quicinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Manish Pandey <quic_mapa@quicinc.com>
Subject: Re: [PATCH v2 6/6] arm64: dts: qcom: sm8750: Add UFS nodes for
 SM8750 QRD board
Message-ID: <20250318053058.ddhzbilbtenglfy4@thinkpad>
References: <20250310-sm8750_ufs_master-v2-0-0dfdd6823161@quicinc.com>
 <20250310-sm8750_ufs_master-v2-6-0dfdd6823161@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250310-sm8750_ufs_master-v2-6-0dfdd6823161@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_223107_037355_6E95F0B7 
X-CRM114-Status: GOOD (  13.13  )
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

T24gTW9uLCBNYXIgMTAsIDIwMjUgYXQgMDI6MTI6MzRQTSAtMDcwMCwgTWVsb2R5IE9sdmVyYSB3
cm90ZToKPiBGcm9tOiBOaXRpbiBSYXdhdCA8cXVpY19uaXRpcmF3YUBxdWljaW5jLmNvbT4KPiAK
PiBBZGQgVUZTIGhvc3QgY29udHJvbGxlciBhbmQgUEhZIG5vZGVzIGZvciBTTTg3NTAgUVJEIGJv
YXJkLgo+IAo+IFJldmlld2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296
bG93c2tpQGxpbmFyby5vcmc+Cj4gUmV2aWV3ZWQtYnk6IEtvbnJhZCBEeWJjaW8gPGtvbnJhZC5k
eWJjaW9Ab3NzLnF1YWxjb21tLmNvbT4KPiBDby1kZXZlbG9wZWQtYnk6IE1hbmlzaCBQYW5kZXkg
PHF1aWNfbWFwYUBxdWljaW5jLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNYW5pc2ggUGFuZGV5IDxx
dWljX21hcGFAcXVpY2luYy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTml0aW4gUmF3YXQgPHF1aWNf
bml0aXJhd2FAcXVpY2luYy5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFt
IDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KCi0gTWFuaQoKPiAtLS0KPiAgYXJj
aC9hcm02NC9ib290L2R0cy9xY29tL3NtODc1MC1xcmQuZHRzIHwgMTggKysrKysrKysrKysrKysr
KysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zbTg3NTAtcXJkLmR0cyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcWNvbS9zbTg3NTAtcXJkLmR0cwo+IGluZGV4IGY3N2VmYWIwYWVmOWJhYjc1MWE5NDcx
NzNiY2RjYzI3ZGY3Mjk1YTguLjhkZDgyNDk0YmE1YWVhNmU2YjVkZGFmYzkyOTllYzY4ZGZiODRi
Y2QgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NtODc1MC1xcmQuZHRz
Cj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NtODc1MC1xcmQuZHRzCj4gQEAgLTc5
MCwzICs3OTAsMjEgQEAgJnRsbW0gewo+ICAmdWFydDcgewo+ICAJc3RhdHVzID0gIm9rYXkiOwo+
ICB9Owo+ICsKPiArJnVmc19tZW1fcGh5IHsKPiArCXZkZGEtcGh5LXN1cHBseSA9IDwmdnJlZ19s
MWpfMHA5MT47Cj4gKwl2ZGRhLXBsbC1zdXBwbHkgPSA8JnZyZWdfbDNnXzFwMj47Cj4gKwo+ICsJ
c3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+ICsKPiArJnVmc19tZW1faGMgewo+ICsJcmVzZXQtZ3Bp
b3MgPSA8JnRsbW0gMjE1IEdQSU9fQUNUSVZFX0xPVz47Cj4gKwo+ICsJdmNjLXN1cHBseSA9IDwm
dnJlZ19sMTdiXzJwNT47Cj4gKwl2Y2MtbWF4LW1pY3JvYW1wID0gPDEzMDAwMDA+Owo+ICsJdmNj
cS1zdXBwbHkgPSA8JnZyZWdfbDFkXzFwMj47Cj4gKwl2Y2NxLW1heC1taWNyb2FtcCA9IDwxMjAw
MDAwPjsKPiArCj4gKwlzdGF0dXMgPSAib2theSI7Cj4gK307Cj4gCj4gLS0gCj4gMi40Ni4xCj4g
CgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCv
jQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
