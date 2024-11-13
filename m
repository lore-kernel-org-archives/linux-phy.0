Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53B32D41C23
	for <linux-phy@archiver.kernel.org>; Wed, 13 Nov 2024 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=emVXjx6VQMIvMHY/w3jYunLeDnuUIeoevPBWo6l5TU8=; b=1+0A9vKpYKbfax
	Ev5kWvan3vQl/8AkyXwag1c0u7bU4CTro9BSdtObugb19Kxr8SKtEM6BlUxJ9h8je1YT77lYnU8Al
	Rr7iU1Yco50HvtcYwOtBddQycruhayfd/an/KKwG6BjrMgkrm5cRUffrLbyt0TtxSKh+/MCfsV5mD
	5lXWQAxjW9Ne8IInE1fXKFaorCykw5mcwzFj71CtZ5gfbhkJLoGUjGSShiwIwS1fQjuu5RV0d0I1f
	J2X3RjnhgFvZVaPwtr994v7bl8RX5jFWXKfuf/Zt4BeK0SwEzzBTgNa81hZAp43urj9zp0bcHux7m
	374LX38bTN7fFQXIRZwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tB9fc-00000006FBe-06yr;
	Wed, 13 Nov 2024 09:28:16 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tB9eo-00000006F2F-2fhU
	for linux-phy@lists.infradead.org;
	Wed, 13 Nov 2024 09:27:28 +0000
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-3e5fbc40239so3453670b6e.3
        for <linux-phy@lists.infradead.org>; Wed, 13 Nov 2024 01:27:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731490046; x=1732094846; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BvbMB4wNwdVnYSjLQzzIJ1JPopQ50W3YrXVI3V03iEQ=;
        b=gRhfXZBwtnYyEkJ8+v9DLfFvhbKVBITaVpx5rl94JREqUPDl8ppyG7WKPUAFeLi2Je
         DyglWXUN7LKNK+3vvRhX0wP5IGNuRqoivrKwirUGxsCvCIFZqgeOiYk/GjmvfM7inLzx
         3bRC2HIVpR+V/6jnvFM2obpsWebvKgMKBKrzlanPnQwhZtjAHe3tUMDjytCabgtxojp4
         W21yjDyCUROit/6q/8Wb8zWdG6ORFc8af39nC5L7oaR8ker/qTVq3BqWMWQskjmpz3+u
         w5QVZ8sWvpA9dY0tiwj58/qzDgdeKMtCxCi1i0M7K5lBT12AnSzSdNqoP56CkkYLa9+Y
         JZ+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731490046; x=1732094846;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BvbMB4wNwdVnYSjLQzzIJ1JPopQ50W3YrXVI3V03iEQ=;
        b=S80g/TDarvxU2QvQjIv7EMTpT7/pQe4KPDfiFpykLJ1O+dqlOQU324ZDQpgbu1c+np
         pUT+a8SNgoCCvr2SL8YFSP5y4+qwNxYAGCA/opl027xWu9z9wH+D0Xh/KjZ/z9huJA2Q
         eXeIBTQBRVt0+dyFOeBtWpWZyGU/jKEm423hR9txg620UTqzLIxwOF8m/At9j82n16SB
         KKSi0t+08QAY/Hz6C3+j68dcDWipntnKNicvlRKzEUuRy061SyBRh0ppa1B1q0bClj3p
         NXQeMXuXYrx2l7XzhYbHmIb7MhEiM2mwJkYcMOfOx18D5hXIiQ6o0AqgcrZ0qKxT0sQY
         xx+g==
X-Forwarded-Encrypted: i=1; AJvYcCXs8K7/hj+0oA4URCPU7ocUZr3KTokE/4WrI8YaV1ZWFSWEkw7QVymtl+FsB2eNXkOCvB5OOW6nVfc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+fJHqA/thvsZf2znGBJH90gDPqx6q/3R8JXc1CCalrofcti3/
	83/L2BCu1IvURBK74GGrwsJ/ZaLPifIiZxSxE63GLZOGi+wEtNEdvKXoq7JJoA==
X-Google-Smtp-Source: AGHT+IEx4uAAxtCoiiBH+++NqpeCtgOYTj3kESrEXYNyqknD9YqnWM0YpRT+Ci+UYLhuuKE7MSjOzg==
X-Received: by 2002:a05:6808:219f:b0:3e6:366f:8e3b with SMTP id 5614622812f47-3e79475a747mr16256490b6e.39.1731490045743;
        Wed, 13 Nov 2024 01:27:25 -0800 (PST)
Received: from thinkpad ([117.213.103.244])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7f41f643e9asm11986600a12.59.2024.11.13.01.27.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 01:27:25 -0800 (PST)
Date: Wed, 13 Nov 2024 14:57:16 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Xin Liu <quic_liuxin@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	quic_jiegan@quicinc.com, quic_aiquny@quicinc.com,
	quic_tingweiz@quicinc.com, quic_sayalil@quicinc.com
Subject: Re: [PATCH v1 3/4] arm64: dts: qcom: qcs615: add UFS node
Message-ID: <20241113092716.h3mabw4bzgc5gcha@thinkpad>
References: <20241017042300.872963-1-quic_liuxin@quicinc.com>
 <20241017042300.872963-4-quic_liuxin@quicinc.com>
 <5fe37609-ed58-4617-bd5f-90edc90f5d8b@oss.qualcomm.com>
 <28069114-9893-486b-a8d8-4c8b9ada1b0c@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <28069114-9893-486b-a8d8-4c8b9ada1b0c@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_012726_744121_A7875249 
X-CRM114-Status: GOOD (  23.11  )
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

T24gV2VkLCBOb3YgMTMsIDIwMjQgYXQgMDU6MTk6NDlQTSArMDgwMCwgWGluIExpdSB3cm90ZToK
PiAKPiAKPiDlnKggMjAyNC8xMC8yNiAzOjI0LCBLb25yYWQgRHliY2lvIOWGmemBkzoKPiA+IE9u
IDE3LjEwLjIwMjQgNjoyMiBBTSwgWGluIExpdSB3cm90ZToKPiA+ID4gRnJvbTogU2F5YWxpIExv
a2hhbmRlIDxxdWljX3NheWFsaWxAcXVpY2luYy5jb20+CQo+ID4gPiAJCj4gPiA+IEFkZCB0aGUg
VUZTIEhvc3QgQ29udHJvbGxlciBub2RlIGFuZCBpdHMgUEhZIGZvciBRQ1M2MTUgU29DLgo+ID4g
PiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogU2F5YWxpIExva2hhbmRlIDxxdWljX3NheWFsaWxAcXVp
Y2luYy5jb20+Cj4gPiA+IENvLWRldmVsb3BlZC1ieTogWGluIExpdSA8cXVpY19saXV4aW5AcXVp
Y2luYy5jb20+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IFhpbiBMaXUgPHF1aWNfbGl1eGluQHF1aWNp
bmMuY29tPgo+ID4gPiAtLS0KPiA+IAo+ID4gKyBUYW5peWEgKHNlZSBiZWxvdykKPiA+IAo+ID4g
PiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9xY3M2MTUuZHRzaSB8IDc0ICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysKPiA+ID4gICAxIGZpbGUgY2hhbmdlZCwgNzQgaW5zZXJ0aW9ucygr
KQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9xY3M2
MTUuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9xY3M2MTUuZHRzaQo+ID4gPiBpbmRl
eCBmY2JhODNmY2E3Y2YuLjY4OTQxODQ2NmRjMiAxMDA2NDQKPiA+ID4gLS0tIGEvYXJjaC9hcm02
NC9ib290L2R0cy9xY29tL3FjczYxNS5kdHNpCj4gPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcWNvbS9xY3M2MTUuZHRzaQo+ID4gPiBAQCAtNDU4LDYgKzQ1OCw4MCBAQCBtbXNzX25vYzog
aW50ZXJjb25uZWN0QDE3NDAwMDAgewo+ID4gPiAgIAkJCXFjb20sYmNtLXZvdGVycyA9IDwmYXBw
c19iY21fdm90ZXI+Owo+ID4gPiAgIAkJfTsKPiA+ID4gKwkJdWZzX21lbV9oYzogdWZzQDFkODQw
MDAgewo+ID4gCj4gPiB1ZnNoY0Agd291bGQgYmUgY29uc2lzdGVudCB3aXRoIG90aGVyIGZpbGVz
IGluIGR0cy9xY29tCj4gPiAKPiBJIHJlZmVycmVkIHRvIHFjb20gZmlsZXMgc3VjaCBhcyBzYTg3
NzVwL3NtODU1MC9zbTg2NTAgZXRjLkFsbCB1c2UgdWZzQAoKVGhhdCdzIGFuIG9kZGl0eS4gQnV0
ICd1ZnNoYycgaXMgZG9jdW1lbnRlZCBpbiB0aGUgZGV2aWNldHJlZSBzcGVjLiBTbyB5b3UKc2hv
dWxkIHVzZSBpdCBmb3IgVUZTSEMgbm9kZXMuCgotIE1hbmkKCj4gPiAKPiA+ID4gKwkJCWNvbXBh
dGlibGUgPSAicWNvbSxxY3M2MTUtdWZzaGMiLCAicWNvbSx1ZnNoYyIsICJqZWRlYyx1ZnMtMi4w
IjsKPiA+ID4gKwkJCXJlZyA9IDwweDAgMHgwMWQ4NDAwMCAweDAgMHgzMDAwPiwgPDB4MCAweDAx
ZDkwMDAwIDB4MCAweDgwMDA+Owo+ID4gPiArCQkJcmVnLW5hbWVzID0gInN0ZCIsICJpY2UiOwo+
ID4gCj4gPiBPbmUgcGVyIGxpbmUsIHBsZWFzZQo+IFRoYW5rIHlvdSwgSSB3aWxsIGZpeCBpdCBu
ZXh0IHZlcnNpb24uCj4gPiAKPiA+ID4gKwkJCWludGVycnVwdHMgPSA8R0lDX1NQSSAyNjUgSVJR
X1RZUEVfTEVWRUxfSElHSD47Cj4gPiA+ICsJCQlwaHlzID0gPCZ1ZnNfbWVtX3BoeT47Cj4gPiA+
ICsJCQlwaHktbmFtZXMgPSAidWZzcGh5IjsKPiA+ID4gKwkJCWxhbmVzLXBlci1kaXJlY3Rpb24g
PSA8MT47Cj4gPiA+ICsJCQkjcmVzZXQtY2VsbHMgPSA8MT47Cj4gPiA+ICsJCQlyZXNldHMgPSA8
JmdjYyBHQ0NfVUZTX1BIWV9CQ1I+Owo+ID4gPiArCQkJcmVzZXQtbmFtZXMgPSAicnN0IjsKPiA+
ID4gKwo+ID4gPiArCQkJcG93ZXItZG9tYWlucyA9IDwmZ2NjIFVGU19QSFlfR0RTQz47Cj4gPiA+
ICsJCQlyZXF1aXJlZC1vcHBzID0gPCZycG1ocGRfb3BwX25vbT47Cj4gPiA+ICsKPiA+ID4gKwkJ
CWlvbW11cyA9IDwmYXBwc19zbW11IDB4MzAwIDB4MD47Cj4gPiA+ICsJCQlkbWEtY29oZXJlbnQ7
Cj4gPiA+ICsKPiA+ID4gKwkJCWludGVyY29ubmVjdHMgPSA8JmFnZ3JlMV9ub2MgTUFTVEVSX1VG
U19NRU0gUUNPTV9JQ0NfVEFHX0FMV0FZUwo+ID4gPiArCQkJCQkgJm1jX3ZpcnQgU0xBVkVfRUJJ
MSBRQ09NX0lDQ19UQUdfQUxXQVlTPiwKPiA+ID4gKwkJCQkJPCZnZW1fbm9jIE1BU1RFUl9BUFBT
U19QUk9DIFFDT01fSUNDX1RBR19BTFdBWVMKPiA+ID4gKwkJCQkJICZjb25maWdfbm9jIFNMQVZF
X1VGU19NRU1fQ0ZHIFFDT01fSUNDX1RBR19BTFdBWVM+Owo+ID4gPiArCQkJaW50ZXJjb25uZWN0
LW5hbWVzID0gInVmcy1kZHIiLAo+ID4gPiArCQkJCQkgICAgICJjcHUtdWZzIjsKPiA+ID4gKwo+
ID4gPiArCQkJY2xvY2tzID0gPCZnY2MgR0NDX1VGU19QSFlfQVhJX0NMSz4sCj4gPiA+ICsJCQkJ
IDwmZ2NjIEdDQ19BR0dSRV9VRlNfUEhZX0FYSV9DTEs+LAo+ID4gPiArCQkJCSA8JmdjYyBHQ0Nf
VUZTX1BIWV9BSEJfQ0xLPiwKPiA+ID4gKwkJCQkgPCZnY2MgR0NDX1VGU19QSFlfVU5JUFJPX0NP
UkVfQ0xLPiwKPiA+ID4gKwkJCQkgPCZycG1oY2MgUlBNSF9DWE9fQ0xLPiwKPiA+ID4gKwkJCQkg
PCZnY2MgR0NDX1VGU19QSFlfVFhfU1lNQk9MXzBfQ0xLPiwKPiA+ID4gKwkJCQkgPCZnY2MgR0ND
X1VGU19QSFlfUlhfU1lNQk9MXzBfQ0xLPiwKPiA+ID4gKwkJCQkgPCZnY2MgR0NDX1VGU19QSFlf
SUNFX0NPUkVfQ0xLPjsKPiA+ID4gKwkJCWNsb2NrLW5hbWVzID0gImNvcmVfY2xrIiwKPiA+ID4g
KwkJCQkgICAgICAiYnVzX2FnZ3JfY2xrIiwKPiA+ID4gKwkJCQkgICAgICAiaWZhY2VfY2xrIiwK
PiA+ID4gKwkJCQkgICAgICAiY29yZV9jbGtfdW5pcHJvIiwKPiA+ID4gKwkJCQkgICAgICAicmVm
X2NsayIsCj4gPiA+ICsJCQkJICAgICAgInR4X2xhbmUwX3N5bmNfY2xrIiwKPiA+ID4gKwkJCQkg
ICAgICAicnhfbGFuZTBfc3luY19jbGsiLAo+ID4gPiArCQkJCSAgICAgICJpY2VfY29yZV9jbGsi
Owo+ID4gPiArCQkJZnJlcS10YWJsZS1oeiA9IDw1MDAwMDAwMCAyMDAwMDAwMDA+LAo+ID4gPiAr
CQkJCQk8MCAwPiwKPiA+ID4gKwkJCQkJPDAgMD4sCj4gPiA+ICsJCQkJCTwzNzUwMDAwMCAxNTAw
MDAwMDA+LAo+ID4gPiArCQkJCQk8MCAwPiwKPiA+ID4gKwkJCQkJPDAgMD4sCj4gPiA+ICsJCQkJ
CTwwIDA+LAo+ID4gPiArCQkJCQk8NzUwMDAwMDAgMzAwMDAwMDAwPjsKPiA+IAo+ID4gUGxlYXNl
IHRyeSB0byBtYXRjaCB0aGUgb3JkZXIgb2YgcHJvcGVydGllcyBwcmVzZW50IGluIHNtODY1MC5k
dHNpCj4gVGhhbmsgeW91LCBJIHdpbGwgZml4IGl0IG5leHQgdmVyc2lvbi4KPiA+IAo+ID4gQW5k
IHBsZWFzZSB1c2UgYW4gT1BQIHRhYmxlIGluc3RlYWQgb2YgZnJlcS10YWJsZS1oeiAoc2VlIHNt
OCo1KjUwLmR0c2kpCj4gVGhhbmsgeW91LCBJIHdpbGwgZml4IGl0IG5leHQgdmVyc2lvbi4KPiA+
IAo+ID4gPiArCj4gPiA+ICsJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ID4gPiArCQl9Owo+ID4g
PiArCj4gPiA+ICsJCXVmc19tZW1fcGh5OiBwaHlAMWQ4NzAwMCB7Cj4gPiA+ICsJCQljb21wYXRp
YmxlID0gInFjb20scWNzNjE1LXFtcC11ZnMtcGh5IiwgInFjb20sc202MTE1LXFtcC11ZnMtcGh5
IjsKPiA+ID4gKwkJCXJlZyA9IDwweDAgMHgwMWQ4NzAwMCAweDAgMHhlMDA+Owo+ID4gCj4gPiBU
aGlzIHJlZ2lzdGVyIHJlZ2lvbiBpcyBhIGJpdCBsb25nZXIKPiBJIGp1c3QgY29uZmlybWVkIGFn
YWluLCB0aGVyZSdzIG5vIHByb2JsZW0gaGVyZS4KPiA+IAo+ID4gPiArCQkJY2xvY2tzID0gPCZy
cG1oY2MgUlBNSF9DWE9fQ0xLPiwKPiA+ID4gKwkJCQkgPCZnY2MgR0NDX1VGU19QSFlfUEhZX0FV
WF9DTEs+LAo+ID4gPiArCQkJCSA8JmdjYyBHQ0NfVUZTX01FTV9DTEtSRUZfQ0xLPjsKPiA+ID4g
KwkJCWNsb2NrLW5hbWVzID0gInJlZiIsCj4gPiA+ICsJCQkJICAgICAgInJlZl9hdXgiLAo+ID4g
PiArCQkJCSAgICAgICJxcmVmIjsKPiA+ID4gKwo+ID4gPiArCQkJcG93ZXItZG9tYWlucyA9IDwm
Z2NjIFVGU19QSFlfR0RTQz47Cj4gPiA+ICsKPiA+ID4gKwkJCXJlc2V0cyA9IDwmdWZzX21lbV9o
YyAwPjsKPiA+ID4gKwkJCXJlc2V0LW5hbWVzID0gInVmc3BoeSI7Cj4gPiA+ICsKPiA+ID4gKwkJ
CSNjbG9jay1jZWxscyA9IDwxPjsKPiA+IAo+ID4gVGhlIFBIWSBpcyBhIGNsb2NrIHByb3ZpZGVy
LiBOb3JtYWxseSwgaXQncyBhIHBhcmVudCBvZgo+ID4gZ2NjX3Vmc19waHlfW3J0XXhfc3ltYm9s
X24gY2xvY2tzLgo+ID4gCj4gPiBUYW5peWEsIGNvdWxkIHlvdSBwbGVhc2Ugd2lyZSB0aGF0IHVw
IGluIHlvdXIgcGF0Y2hzZXQ/Cj4gPiAKPiA+IEtvbnJhZAo+IAoKLS0gCuCuruCuo+Cuv+CuteCu
o+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
