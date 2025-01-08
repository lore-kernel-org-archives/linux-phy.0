Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FAE6E77188
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jan 2025 13:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E1lWi6JV6mFY9LoupyvXtOvcwX2UtZU+Ko7+RNIB63w=; b=4Thgz4pVxE5B3n
	chDCuOJtnzSBl1XL4pIUj3aQKA137mlSD98WRjBLJ6bPAXQ43nyTggk6zIX/7n6rGznDxzbwTKOM7
	SB1McOrDFbTWlRhiqYzSopGGZ/uMx1PznRdyruoc5bc46h5FAbvoAOHpNneWrQHGD5XHvHpk/dqnb
	dTRVAhcAPBd/Gy38gzDalITMzaONU5skW+uikfcAc8S4bunQmFHedkbR0rbdjKOivnaJRARo9TNq8
	ZeG81SobO1jAbSn8EATLQUAKeIqA7e8Y00nCOlJdTxtma8R4S0fOM7pOHH4q70cEQqydU/8XjBNWW
	o0QI3reZsII43/3JUH2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVWNI-00000008eiZ-0J8K;
	Wed, 08 Jan 2025 13:45:32 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVW1H-00000008bBt-3UG6
	for linux-phy@lists.infradead.org;
	Wed, 08 Jan 2025 13:22:49 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-2163b0c09afso246605155ad.0
        for <linux-phy@lists.infradead.org>; Wed, 08 Jan 2025 05:22:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736342566; x=1736947366; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uGQ6gTUaI3ZQFf1nCYXuOnJ+ZKOpQdsJP9iOpS9TOig=;
        b=PgmU64z0n1vftYYLa3/L15pwB5wcXG751Rp0SXcADhZ5DLC2r6zjF1F29eRuEZ3zRQ
         FaTXgi2eK36wWFedkP0ovr+R/Zxcn22MEQMyPKpWL4o0JK6wuEQGR9uJUwS0j0rPq6P7
         p+Cvjj4YqDMm8n2QsKgARGnjGjxVBHNPCzfCLAjAp32H9+vzEF92DoBr92AjPf08oAdu
         NdvSJsfyqLW0DHnT2dBSBbfMjURdXjsfoNsBn3LoKFI14UXAW0j3Cw5+hwKKxq+qjKCZ
         rflId6OvEc9qMCb1p8s+HPg3r0aj5os91iLx4X5aKjjV8SKSIKBi3Bgd2arwNwKWhlnA
         tN+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736342566; x=1736947366;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uGQ6gTUaI3ZQFf1nCYXuOnJ+ZKOpQdsJP9iOpS9TOig=;
        b=Zr2qwd6UuyEn0F7pkfKWKpYuQDCtrUWoVREwdoifNvRi15QJ63fi3SHho1htu6K+x0
         2CuNc4YNLGMZYo1vpUqgMq0kQV1hT6o5Nv9NhVhc7GVk6xIPnXGWSMuh3sjhBruupEnn
         EwbLxLsjaCHwUmaeL3k3uJS94AhtQA+dFHrHEAvRYuOG88qNWKdYIwW9FJiOcTzfGVOV
         ShoB1s00DHU4j5rpDJGqcnpbvlvZK5Astsujbk0oaYWqfzUErnftAhLmojcs0Y+BbHcR
         B8ECYT+HqiVliTIITUy5gfccyPkXhBbAFg7ThiuZhJac0z8WpzciTRq4Do48UQaxiZil
         dpAg==
X-Forwarded-Encrypted: i=1; AJvYcCVLuQcWOMImVhfed+Y8F8NQdHqXgk1sHT9LOkW+c8AWzWWUYwLGBn/y3tS5aEFGNVaxBw8B1h2vefc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy61DkEwEv8QkGBYrq0iAE7S9eT69ohoCulN/XYHyphjO6cjg/U
	Ks69Av/fl58us9S4KHkfZh85DEh9+S2iLRKjPBT4HrLgKURMhwd8rlcjYWA8Kg==
X-Gm-Gg: ASbGncujvbTXxGlJ7O0H0kMQShBjuS6zR33gQvCMJ/3ABVl5Zt01ZGmzXM/7lwFt5Sd
	6qZSl2EvTy0SJ2klHnBCY2d32XiG6GW2WhWFWT1vPuOFfDmEAj3QRQZlMWO1cBVCbCRGJQ2AX6a
	edWdxeKcbho/6eINlGYEbESE5Uak+SoHqHlqsWSdZlpCjH/+kI9Bgd40RTxg+hDo0lqwU70gPRG
	6BtiQ1avAuG60mDGU3ls9k41QZhWH9tbwMbL31FpYzAmD6KadiBa1OAdWBTVadriHQE
X-Google-Smtp-Source: AGHT+IECtsM/gRYWLFY3hTWl1Cc6HjpXQcF89x7voGNTV2OpqZVBPzam7oV8L4vtfZfa5pZdqlOIuA==
X-Received: by 2002:a17:903:2b08:b0:216:70b6:8723 with SMTP id d9443c01a7336-21a83fb5af8mr47573525ad.44.1736342566329;
        Wed, 08 Jan 2025 05:22:46 -0800 (PST)
Received: from thinkpad ([117.213.97.234])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-219dc970c8fsm327792835ad.60.2025.01.08.05.22.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 05:22:45 -0800 (PST)
Date: Wed, 8 Jan 2025 18:52:35 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
	konradybcio@kernel.org, p.zabel@pengutronix.de,
	quic_nsekar@quicinc.com, dmitry.baryshkov@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Praveenkumar I <quic_ipkumar@quicinc.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v5 4/5] arm64: dts: qcom: ipq5332: Add PCIe related nodes
Message-ID: <20250108132235.gh6p5d6t7wklzpm7@thinkpad>
References: <20250102113019.1347068-1-quic_varada@quicinc.com>
 <20250102113019.1347068-5-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250102113019.1347068-5-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_052247_879544_1AEBCA31 
X-CRM114-Status: GOOD (  21.08  )
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

T24gVGh1LCBKYW4gMDIsIDIwMjUgYXQgMDU6MDA6MThQTSArMDUzMCwgVmFyYWRhcmFqYW4gTmFy
YXlhbmFuIHdyb3RlOgo+IEZyb206IFByYXZlZW5rdW1hciBJIDxxdWljX2lwa3VtYXJAcXVpY2lu
Yy5jb20+Cj4gCj4gQWRkIHBoeSBhbmQgY29udHJvbGxlciBub2RlcyBmb3IgcGNpZTBfeDEgYW5k
IHBjaWUxX3gyLgo+IAo+IFJldmlld2VkLWJ5OiBLb25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lv
QG9zcy5xdWFsY29tbS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogUHJhdmVlbmt1bWFyIEkgPHF1aWNf
aXBrdW1hckBxdWljaW5jLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBWYXJhZGFyYWphbiBOYXJheWFu
YW4gPHF1aWNfdmFyYWRhQHF1aWNpbmMuY29tPgo+IC0tLQo+IHY1OiBBZGQgJ251bS1sYW5lcycg
dG8gInBjaWUxX3BoeTogcGh5QDRiMTAwMCIKPiAgICAgTWFrZSBpcHE1MzMyIGFzIG1haW4gYW5k
IGlwcTk1NzQgYXMgZmFsbGJhY2sgY29tcGF0aWJsZQo+ICAgICBNb3ZlIGNvbnRyb2xsZXIgbm9k
ZXMgcGVyIGFkZHJlc3MKPiAgICAgSGF2aW5nIEtvbnJhZCdzIFJldmlld2VkLUJ5Cj4gCj4gdjQ6
IFJlbW92ZSAncmVzZXQtbmFtZXMnIGFzIGRyaXZlciB1c2VzIGJ1bGsgQVBJcwo+ICAgICBSZW1v
dmUgJ2Nsb2NrLW91dHB1dC1uYW1lcycgYXMgZHJpdmVyIHVzZXMgYnVsayBBUElzCj4gICAgIEFk
ZCBtaXNzaW5nIHJlc2V0IGZvciBwY2llMV9waHkKPiAgICAgQ29udmVydCAncmVnLW5hbWVzJyB0
byBhIHZlcnRpY2FsIGxpc3QKPiAgICAgTW92ZSAnbXNpLW1hcCcgYmVmb3JlIGludGVycnVwdHMK
PiAKPiB2MzogRml4IGNvbXBhdGlibGUgc3RyaW5nIGZvciBwaHkgbm9kZXMKPiAgICAgVXNlIGlw
cTk1NzQgYXMgYmFja3VwIGNvbXBhdGlibGUgaW5zdGVhZCBvZiBuZXcgY29tcGF0aWJsZSBmb3Ig
aXBxNTMzMgo+ICAgICBGaXggbWl4ZWQgY2FzZSBoZXggYWRkcmVzc2VzCj4gICAgIEFkZCAibWhp
IiBzcGFjZQo+ICAgICBSZW1vdmVkIHVubmVjZXNzYXJ5IGNvbW1lbnRzIGFuZCBzdHJheSBibGFu
ayBsaW5lcwo+IAo+IHYyOiBGaXggbm9kZXMnIGxvY2F0aW9uIHBlciBhZGRyZXNzCj4gLS0tCj4g
IGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9pcHE1MzMyLmR0c2kgfCAyMjEgKysrKysrKysrKysr
KysrKysrKysrKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDIxOSBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vaXBx
NTMzMi5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2lwcTUzMzIuZHRzaQo+IGluZGV4
IGQzYzNlMjE1YTE1Yy4uODlkYWY5NTVlNGJkIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcWNvbS9pcHE1MzMyLmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20v
aXBxNTMzMi5kdHNpCj4gQEAgLTE4Niw2ICsxODYsNDMgQEAgcm5nOiBybmdAZTMwMDAgewo+ICAJ
CQljbG9jay1uYW1lcyA9ICJjb3JlIjsKPiAgCQl9Owo+ICAKPiArCQlwY2llMF9waHk6IHBoeUA0
YjAwMDAgewo+ICsJCQljb21wYXRpYmxlID0gInFjb20saXBxNTMzMi11bmlwaHktcGNpZS1waHki
Owo+ICsJCQlyZWcgPSA8MHgwMDRiMDAwMCAweDgwMD47Cj4gKwo+ICsJCQljbG9ja3MgPSA8Jmdj
YyBHQ0NfUENJRTNYMV8wX1BJUEVfQ0xLPiwKPiArCQkJCSA8JmdjYyBHQ0NfUENJRTNYMV9QSFlf
QUhCX0NMSz47Cj4gKwo+ICsJCQlyZXNldHMgPSA8JmdjYyBHQ0NfUENJRTNYMV8wX1BIWV9CQ1I+
LAo+ICsJCQkJIDwmZ2NjIEdDQ19QQ0lFM1gxX1BIWV9BSEJfQ0xLX0FSRVM+LAo+ICsJCQkJIDwm
Z2NjIEdDQ19QQ0lFM1gxXzBfUEhZX1BIWV9CQ1I+Owo+ICsKPiArCQkJI2Nsb2NrLWNlbGxzID0g
PDA+Owo+ICsKPiArCQkJI3BoeS1jZWxscyA9IDwwPjsKPiArCQkJc3RhdHVzID0gImRpc2FibGVk
IjsKPiArCQl9Owo+ICsKPiArCQlwY2llMV9waHk6IHBoeUA0YjEwMDAgewo+ICsJCQljb21wYXRp
YmxlID0gInFjb20saXBxNTMzMi11bmlwaHktcGNpZS1waHkiOwo+ICsJCQlyZWcgPSA8MHgwMDRi
MTAwMCAweDEwMDA+Owo+ICsKPiArCQkJY2xvY2tzID0gPCZnY2MgR0NDX1BDSUUzWDJfUElQRV9D
TEs+LAo+ICsJCQkJIDwmZ2NjIEdDQ19QQ0lFM1gyX1BIWV9BSEJfQ0xLPjsKPiArCj4gKwkJCXJl
c2V0cyA9IDwmZ2NjIEdDQ19QQ0lFM1gyX1BIWV9CQ1I+LAo+ICsJCQkJIDwmZ2NjIEdDQ19QQ0lF
M1gyX1BIWV9BSEJfQ0xLX0FSRVM+LAo+ICsJCQkJIDwmZ2NjIEdDQ19QQ0lFM1gyUEhZX1BIWV9C
Q1I+Owo+ICsKPiArCQkJI2Nsb2NrLWNlbGxzID0gPDA+Owo+ICsKPiArCQkJI3BoeS1jZWxscyA9
IDwwPjsKPiArCj4gKwkJCW51bS1sYW5lcyA9IDwyPjsKPiArCj4gKwkJCXN0YXR1cyA9ICJkaXNh
YmxlZCI7Cj4gKwkJfTsKPiArCj4gIAkJdGxtbTogcGluY3RybEAxMDAwMDAwIHsKPiAgCQkJY29t
cGF0aWJsZSA9ICJxY29tLGlwcTUzMzItdGxtbSI7Cj4gIAkJCXJlZyA9IDwweDAxMDAwMDAwIDB4
MzAwMDAwPjsKPiBAQCAtMjEyLDggKzI0OSw4IEBAIGdjYzogY2xvY2stY29udHJvbGxlckAxODAw
MDAwIHsKPiAgCQkJI2ludGVyY29ubmVjdC1jZWxscyA9IDwxPjsKPiAgCQkJY2xvY2tzID0gPCZ4
b19ib2FyZD4sCj4gIAkJCQkgPCZzbGVlcF9jbGs+LAo+IC0JCQkJIDwwPiwKPiAtCQkJCSA8MD4s
Cj4gKwkJCQkgPCZwY2llMV9waHk+LAo+ICsJCQkJIDwmcGNpZTBfcGh5PiwKPiAgCQkJCSA8MD47
Cj4gIAkJfTsKPiAgCj4gQEAgLTQ3OSw2ICs1MTYsMTg2IEBAIGZyYW1lQGIxMjgwMDAgewo+ICAJ
CQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiAgCQkJfTsKPiAgCQl9Owo+ICsKPiArCQlwY2llMTog
cGNpZUAxODAwMDAwMCB7CgpwY2llQAoKPiArCQkJY29tcGF0aWJsZSA9ICJxY29tLHBjaWUtaXBx
NTMzMiIsICJxY29tLHBjaWUtaXBxOTU3NCI7Cj4gKwkJCXJlZyA9IDwweDAwMDg4MDAwIDB4MzAw
MD4sCj4gKwkJCSAgICAgIDwweDE4MDAwMDAwIDB4ZjFkPiwKPiArCQkJICAgICAgPDB4MTgwMDBm
MjAgMHhhOD4sCj4gKwkJCSAgICAgIDwweDE4MDAxMDAwIDB4MTAwMD4sCj4gKwkJCSAgICAgIDww
eDE4MTAwMDAwIDB4MTAwMD4sCj4gKwkJCSAgICAgIDwweDAwMDhiMDAwIDB4MTAwMD47Cj4gKwkJ
CXJlZy1uYW1lcyA9ICJwYXJmIiwKPiArCQkJCSAgICAiZGJpIiwKPiArCQkJCSAgICAiZWxiaSIs
Cj4gKwkJCQkgICAgImF0dSIsCj4gKwkJCQkgICAgImNvbmZpZyIsCj4gKwkJCQkgICAgIm1oaSI7
Cj4gKwkJCWRldmljZV90eXBlID0gInBjaSI7Cj4gKwkJCWxpbnV4LHBjaS1kb21haW4gPSA8MT47
Cj4gKwkJCWJ1cy1yYW5nZSA9IDwweDAwIDB4ZmY+Owo+ICsJCQludW0tbGFuZXMgPSA8Mj47Cj4g
KwkJCSNhZGRyZXNzLWNlbGxzID0gPDM+Owo+ICsJCQkjc2l6ZS1jZWxscyA9IDwyPjsKPiArCj4g
KwkJCXJhbmdlcyA9IDwweDAxMDAwMDAwIDAgMHgxODIwMDAwMCAweDE4MjAwMDAwIDAgMHgwMDEw
MDAwMD4sCgpJL08gYWRkcmVzcyBzcGFjZSBzaG91bGQgc3RhcnQgZnJvbSAwLiBQbGVhc2UgcmVm
ZXIgb3RoZXIgU29Dcy4KCkFsc28sIHVzZSAweDAgZm9yIGNvbnNpc3RlbmN5LgoKPiArCQkJCSA8
MHgwMjAwMDAwMCAwIDB4MTgzMDAwMDAgMHgxODMwMDAwMCAwIDB4MDdkMDAwMDA+Owo+ICsKPiAr
CQkJbXNpLW1hcCA9IDwweDAgJnYybTAgMHgwIDB4ZmZkPjsKPiArCj4gKwkJCWludGVycnVwdHMg
PSA8R0lDX1NQSSA0MDMgSVJRX1RZUEVfTEVWRUxfSElHSD4sCj4gKwkJCQkgICAgIDxHSUNfU1BJ
IDQwNCBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKPiArCQkJCSAgICAgPEdJQ19TUEkgNDA1IElSUV9U
WVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkJICAgICA8R0lDX1NQSSA0MDYgSVJRX1RZUEVfTEVWRUxf
SElHSD4sCj4gKwkJCQkgICAgIDxHSUNfU1BJIDQwNyBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKPiAr
CQkJCSAgICAgPEdJQ19TUEkgNDA4IElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkJICAgICA8
R0lDX1NQSSA0MDkgSVJRX1RZUEVfTEVWRUxfSElHSD4sCj4gKwkJCQkgICAgIDxHSUNfU1BJIDQx
MCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPiArCQkJaW50ZXJydXB0LW5hbWVzID0gIm1zaTAiLAo+
ICsJCQkJCSAgIm1zaTEiLAo+ICsJCQkJCSAgIm1zaTIiLAo+ICsJCQkJCSAgIm1zaTMiLAo+ICsJ
CQkJCSAgIm1zaTQiLAo+ICsJCQkJCSAgIm1zaTUiLAo+ICsJCQkJCSAgIm1zaTYiLAo+ICsJCQkJ
CSAgIm1zaTciOwoKSXMgdGhlcmUgYSAnZ2xvYmFsJyBpbnRlcnJ1cHQ/IElmIHNvLCBwbGVhc2Ug
YWRkIGl0LgoKPiArCj4gKwkJCSNpbnRlcnJ1cHQtY2VsbHMgPSA8MT47Cj4gKwkJCWludGVycnVw
dC1tYXAtbWFzayA9IDwwIDAgMCAweDc+Owo+ICsJCQlpbnRlcnJ1cHQtbWFwID0gPDAgMCAwIDEg
JmludGMgMCAwIDQxMiBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKPiArCQkJCQk8MCAwIDAgMiAmaW50
YyAwIDAgNDEzIElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkJCTwwIDAgMCAzICZpbnRjIDAg
MCA0MTQgSVJRX1RZUEVfTEVWRUxfSElHSD4sCj4gKwkJCQkJPDAgMCAwIDQgJmludGMgMCAwIDQx
NSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPiArCj4gKwkJCWNsb2NrcyA9IDwmZ2NjIEdDQ19QQ0lF
M1gyX0FYSV9NX0NMSz4sCj4gKwkJCQkgPCZnY2MgR0NDX1BDSUUzWDJfQVhJX1NfQ0xLPiwKPiAr
CQkJCSA8JmdjYyBHQ0NfUENJRTNYMl9BWElfU19CUklER0VfQ0xLPiwKPiArCQkJCSA8JmdjYyBH
Q0NfUENJRTNYMl9SQ0hHX0NMSz4sCj4gKwkJCQkgPCZnY2MgR0NDX1BDSUUzWDJfQUhCX0NMSz4s
Cj4gKwkJCQkgPCZnY2MgR0NDX1BDSUUzWDJfQVVYX0NMSz47Cj4gKwkJCWNsb2NrLW5hbWVzID0g
ImF4aV9tIiwKPiArCQkJCSAgICAgICJheGlfcyIsCj4gKwkJCQkgICAgICAiYXhpX2JyaWRnZSIs
Cj4gKwkJCQkgICAgICAicmNobmciLAo+ICsJCQkJICAgICAgImFoYiIsCj4gKwkJCQkgICAgICAi
YXV4IjsKPiArCj4gKwkJCXJlc2V0cyA9IDwmZ2NjIEdDQ19QQ0lFM1gyX1BJUEVfQVJFUz4sCj4g
KwkJCQkgPCZnY2MgR0NDX1BDSUUzWDJfQ09SRV9TVElDS1lfQVJFUz4sCj4gKwkJCQkgPCZnY2Mg
R0NDX1BDSUUzWDJfQVhJX1NfU1RJQ0tZX0FSRVM+LAo+ICsJCQkJIDwmZ2NjIEdDQ19QQ0lFM1gy
X0FYSV9TX0NMS19BUkVTPiwKPiArCQkJCSA8JmdjYyBHQ0NfUENJRTNYMl9BWElfTV9TVElDS1lf
QVJFUz4sCj4gKwkJCQkgPCZnY2MgR0NDX1BDSUUzWDJfQVhJX01fQ0xLX0FSRVM+LAo+ICsJCQkJ
IDwmZ2NjIEdDQ19QQ0lFM1gyX0FVWF9DTEtfQVJFUz4sCj4gKwkJCQkgPCZnY2MgR0NDX1BDSUUz
WDJfQUhCX0NMS19BUkVTPjsKPiArCQkJcmVzZXQtbmFtZXMgPSAicGlwZSIsCj4gKwkJCQkgICAg
ICAic3RpY2t5IiwKPiArCQkJCSAgICAgICJheGlfc19zdGlja3kiLAo+ICsJCQkJICAgICAgImF4
aV9zIiwKPiArCQkJCSAgICAgICJheGlfbV9zdGlja3kiLAo+ICsJCQkJICAgICAgImF4aV9tIiwK
PiArCQkJCSAgICAgICJhdXgiLAo+ICsJCQkJICAgICAgImFoYiI7Cj4gKwo+ICsJCQlwaHlzID0g
PCZwY2llMV9waHk+Owo+ICsJCQlwaHktbmFtZXMgPSAicGNpZXBoeSI7Cj4gKwo+ICsJCQlpbnRl
cmNvbm5lY3RzID0gPCZnY2MgTUFTVEVSX1NOT0NfUENJRTNfMl9NICZnY2MgU0xBVkVfU05PQ19Q
Q0lFM18yX00+LAo+ICsJCQkJCTwmZ2NjIE1BU1RFUl9BTk9DX1BDSUUzXzJfUyAmZ2NjIFNMQVZF
X0FOT0NfUENJRTNfMl9TPjsKPiArCQkJaW50ZXJjb25uZWN0LW5hbWVzID0gInBjaWUtbWVtIiwg
ImNwdS1wY2llIjsKCkNhbiB5b3UgY2hlY2sgaWYgdGhlIGNvbnRyb2xsZXIgc3VwcG9ydHMgY2Fj
aGUgY29oZXJlbmN5PyBJZiBzbywgeW91IG5lZWQgdG8gYWRkCidkbWEtY29oZXJlbnQnLgoKPiAr
Cj4gKwkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CgpQbGVhc2UgZGVmaW5lIHRoZSByb290IHBvcnQg
bm9kZSBhcyB3ZWxsLgoKQWxsIHRoZSBhYm92ZSBjb21tZW50cyBhcHBsaWVzIHRvIDJuZCBjb250
cm9sbGVyIG5vZGUgYXMgd2VsbC4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+Cu
qeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
