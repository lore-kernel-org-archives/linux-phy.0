Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78B81D78321
	for <linux-phy@archiver.kernel.org>; Mon,  2 Dec 2024 14:46:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tOyzQ0uGyGyLlxJQ4RVg2WoFnNbiLtEkLOmSiLpip/w=; b=wCW7lalqwTOkew
	xmk/AKTaY3SEpWeqIDvfP4LEADzm03ikD6hyeGzkx3nA+HI/rSBxecXndbsXrGYZZoqLEWsszkKKQ
	DPYpSa+cdoWQOdvZqAfgROruCsm/LSj5urjXQekdCmrzldg6yhO7WuggMObN4ZEISU6FHfTIThxA9
	/Az8Y55DToLc5LUCWpCS8ldpLuBkNa6PR5S2X7JljyN4oOqXQMU0F+VsQSV4D8xPi56hOHpc4/+M1
	QM5gkFmdN68gJev8Qcp1/N9jAgQwOU60IQ/gbguTZ9FVge4ol8JDJ3q+EUoy5qIdovDR2NJu8l/60
	/7qQMdrury/VQOM4gVPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI7h2-00000006VtH-0z5Y;
	Mon, 02 Dec 2024 14:46:32 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI7ff-00000006Va5-2qRU
	for linux-phy@lists.infradead.org;
	Mon, 02 Dec 2024 14:45:08 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-21561af95c3so16485245ad.3
        for <linux-phy@lists.infradead.org>; Mon, 02 Dec 2024 06:45:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733150706; x=1733755506; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZPr+rqxrsBrYoMzAPXWAODr8cERzCFOtYTMVsGmGlwM=;
        b=oKtcUMUuQp8ohp6nUwhr1wjaj6d85Zxg4ed8qlJt6Xn2PivPYn4yud0GflNV3o4pUe
         /QASQdCA6bygvnKCnDje/dp36k47kpvpAHW39g34Sc41YtLT5vo0pGVqDJ//U/mbbTDt
         ynYgIITIZqsJitGBqiKyMAtKQk+OUxoGT0CHmVXUuMTpgG2cNGs5qa3PV6YJy2cp6CCr
         RWi5e4b3STJc69Zp1edmNybPM64K2wgGtQlCZURh9TdLGDrXJ+eGNepXgXUihD/iG3fO
         aQbm/RDyO5ZUuaWBGY91myrrAcK5l8WCIGwbqi8lmGFh5vq3lUnaKUVC90TX9eO3z4/E
         h20A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733150706; x=1733755506;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZPr+rqxrsBrYoMzAPXWAODr8cERzCFOtYTMVsGmGlwM=;
        b=fhYKTSMiSVcBO/J1bYc88PzVYy7+8NAFHL8W0wkHA69kqF9XqdKV17W+JljhHnHNlr
         RfEhuRr4mcpEaYtd9Qq4fV5lqUe22XekL1w2oRc71oC7lemMaXw4LsJiP9DzNRAtknV7
         ykCKcUfW9brUzmnGtgSjsPtZIomNBaWKZOli+GeJUG6o9MEAS5zfXZeWD71R60plNEbs
         K8PP1brva+AsKIu4f+th6ueUBL/1A2IpuZtgzZcAX+R4dKqRLhuKPK5K+uZLWFSi+YWN
         PcG4wtEb8rCpzRtXGA8wFph0oVpNypHVcpPeml/vr7AqKJzn/XxNDeiTH4j0N80a8FQb
         QukA==
X-Forwarded-Encrypted: i=1; AJvYcCU2q7VYnRW6HoeC24wz/xlf6iOAvZir8en3RXIFJHYZ6MB6axsjHx16KKw4ly1iHZT6i8IJil7D1gg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz7Gw60JdcJywtd00DLwvVq9+cTaEHlNsy9BQ+ggmZB5WCY76JR
	1QbanQq9lCKrQPja8PiPm4rSD8eqoWQ+HuV0yIBy98AUR2uu2Bq6cEkttgm0Ow==
X-Gm-Gg: ASbGncvavaNbVYxXQhwKTpSZ6JRMbgdzULVLcNQoXovWa00xBdjHtQULwu6O9MpQfGL
	iXbSsYIjesFpqCbAuyd7LWJzGOQ7XpBinKVIKqljdJsCx382EJU2ohUXZ1xRj/FnwtAn+/Y2e4p
	3lG3GashDxwdY2Dle+DTUP6/5z412ZMgvRtA+s58RRBqCqIY6ZwbsS8IXFqXx/HQupNJG3M2NA2
	m1l8HlEfGCidnjW/PvJX7wU/uRRq20mV7blJHnq4UMdlY6AgfLV3xmvcHwCyA==
X-Google-Smtp-Source: AGHT+IFVCODuAccsYt/2/80+IXDxhd60+2Yn4zsceONDv9zG3hdrKNerpQeL5Z00zmSVyrmEYMEANw==
X-Received: by 2002:a17:902:ce92:b0:215:7ce8:1363 with SMTP id d9443c01a7336-2157ce815f5mr100011155ad.19.1733150706219;
        Mon, 02 Dec 2024 06:45:06 -0800 (PST)
Received: from thinkpad ([120.60.140.110])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21530f1d769sm71106335ad.81.2024.12.02.06.45.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 06:45:05 -0800 (PST)
Date: Mon, 2 Dec 2024 20:14:56 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Xin Liu <quic_liuxin@quicinc.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
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
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: qcs615: add UFS node
Message-ID: <20241202144456.scq5d2orw4d3dbxg@thinkpad>
References: <20241122064428.278752-1-quic_liuxin@quicinc.com>
 <20241122064428.278752-3-quic_liuxin@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241122064428.278752-3-quic_liuxin@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_064507_725092_79E7D856 
X-CRM114-Status: GOOD (  14.17  )
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

T24gRnJpLCBOb3YgMjIsIDIwMjQgYXQgMDI6NDQ6MjdQTSArMDgwMCwgWGluIExpdSB3cm90ZToK
PiBGcm9tOiBTYXlhbGkgTG9raGFuZGUgPHF1aWNfc2F5YWxpbEBxdWljaW5jLmNvbT4KPiAKPiBB
ZGQgdGhlIFVGUyBIb3N0IENvbnRyb2xsZXIgbm9kZSBhbmQgaXRzIFBIWSBmb3IgUUNTNjE1IFNv
Qy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTYXlhbGkgTG9raGFuZGUgPHF1aWNfc2F5YWxpbEBxdWlj
aW5jLmNvbT4KPiBDby1kZXZlbG9wZWQtYnk6IFhpbiBMaXUgPHF1aWNfbGl1eGluQHF1aWNpbmMu
Y29tPgo+IFNpZ25lZC1vZmYtYnk6IFhpbiBMaXUgPHF1aWNfbGl1eGluQHF1aWNpbmMuY29tPgoK
UmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFt
QGxpbmFyby5vcmc+CgotIE1hbmkKCj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9x
Y3M2MTUuZHRzaSB8IDExNCArKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNo
YW5nZWQsIDExNCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcWNvbS9xY3M2MTUuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9xY3M2MTUu
ZHRzaQo+IGluZGV4IDU5MGJlYjM3ZjQ0MS4uNWU1MDE1MTFlNmRiIDEwMDY0NAo+IC0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9xY3M2MTUuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcWNvbS9xY3M2MTUuZHRzaQo+IEBAIC00NTgsNiArNDU4LDEyMCBAQCBtbXNzX25vYzog
aW50ZXJjb25uZWN0QDE3NDAwMDAgewo+ICAJCQlxY29tLGJjbS12b3RlcnMgPSA8JmFwcHNfYmNt
X3ZvdGVyPjsKPiAgCQl9Owo+ICAKPiArCQl1ZnNfbWVtX2hjOiB1ZnNoY0AxZDg0MDAwIHsKPiAr
CQkJY29tcGF0aWJsZSA9ICJxY29tLHFjczYxNS11ZnNoYyIsICJxY29tLHVmc2hjIiwgImplZGVj
LHVmcy0yLjAiOwo+ICsJCQlyZWcgPSA8MHgwIDB4MDFkODQwMDAgMHgwIDB4MzAwMD4sCj4gKwkJ
CSAgICAgIDwweDAgMHgwMWQ5MDAwMCAweDAgMHg4MDAwPjsKPiArCQkJcmVnLW5hbWVzID0gInN0
ZCIsCj4gKwkJCQkgICAgImljZSI7Cj4gKwo+ICsJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMjY1
IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+ICsKPiArCQkJY2xvY2tzID0gPCZnY2MgR0NDX1VGU19Q
SFlfQVhJX0NMSz4sCj4gKwkJCQkgPCZnY2MgR0NDX0FHR1JFX1VGU19QSFlfQVhJX0NMSz4sCj4g
KwkJCQkgPCZnY2MgR0NDX1VGU19QSFlfQUhCX0NMSz4sCj4gKwkJCQkgPCZnY2MgR0NDX1VGU19Q
SFlfVU5JUFJPX0NPUkVfQ0xLPiwKPiArCQkJCSA8JmdjYyBHQ0NfVUZTX1BIWV9JQ0VfQ09SRV9D
TEs+LAo+ICsJCQkJIDwmcnBtaGNjIFJQTUhfQ1hPX0NMSz4sCj4gKwkJCQkgPCZnY2MgR0NDX1VG
U19QSFlfVFhfU1lNQk9MXzBfQ0xLPiwKPiArCQkJCSA8JmdjYyBHQ0NfVUZTX1BIWV9SWF9TWU1C
T0xfMF9DTEs+Owo+ICsJCQljbG9jay1uYW1lcyA9ICJjb3JlX2NsayIsCj4gKwkJCQkgICAgICAi
YnVzX2FnZ3JfY2xrIiwKPiArCQkJCSAgICAgICJpZmFjZV9jbGsiLAo+ICsJCQkJICAgICAgImNv
cmVfY2xrX3VuaXBybyIsCj4gKwkJCQkgICAgICAiY29yZV9jbGtfaWNlIiwKPiArCQkJCSAgICAg
ICJyZWZfY2xrIiwKPiArCQkJCSAgICAgICJ0eF9sYW5lMF9zeW5jX2NsayIsCj4gKwkJCQkgICAg
ICAicnhfbGFuZTBfc3luY19jbGsiOwo+ICsKPiArCQkJcmVzZXRzID0gPCZnY2MgR0NDX1VGU19Q
SFlfQkNSPjsKPiArCQkJcmVzZXQtbmFtZXMgPSAicnN0IjsKPiArCj4gKwkJCW9wZXJhdGluZy1w
b2ludHMtdjIgPSA8JnVmc19vcHBfdGFibGU+Owo+ICsJCQlpbnRlcmNvbm5lY3RzID0gPCZhZ2dy
ZTFfbm9jIE1BU1RFUl9VRlNfTUVNIFFDT01fSUNDX1RBR19BTFdBWVMKPiArCQkJCQkgJm1jX3Zp
cnQgU0xBVkVfRUJJMSBRQ09NX0lDQ19UQUdfQUxXQVlTPiwKPiArCQkJCQk8JmdlbV9ub2MgTUFT
VEVSX0FQUFNTX1BST0MgUUNPTV9JQ0NfVEFHX0FMV0FZUwo+ICsJCQkJCSAmY29uZmlnX25vYyBT
TEFWRV9VRlNfTUVNX0NGRyBRQ09NX0lDQ19UQUdfQUxXQVlTPjsKPiArCQkJaW50ZXJjb25uZWN0
LW5hbWVzID0gInVmcy1kZHIiLAo+ICsJCQkJCSAgICAgImNwdS11ZnMiOwo+ICsKPiArCQkJcG93
ZXItZG9tYWlucyA9IDwmZ2NjIFVGU19QSFlfR0RTQz47Cj4gKwkJCXJlcXVpcmVkLW9wcHMgPSA8
JnJwbWhwZF9vcHBfbm9tPjsKPiArCj4gKwkJCWlvbW11cyA9IDwmYXBwc19zbW11IDB4MzAwIDB4
MD47Cj4gKwkJCWRtYS1jb2hlcmVudDsKPiArCj4gKwkJCWxhbmVzLXBlci1kaXJlY3Rpb24gPSA8
MT47Cj4gKwo+ICsJCQlwaHlzID0gPCZ1ZnNfbWVtX3BoeT47Cj4gKwkJCXBoeS1uYW1lcyA9ICJ1
ZnNwaHkiOwo+ICsKPiArCQkJI3Jlc2V0LWNlbGxzID0gPDE+Owo+ICsKPiArCQkJc3RhdHVzID0g
ImRpc2FibGVkIjsKPiArCj4gKwkJCXVmc19vcHBfdGFibGU6IG9wcC10YWJsZSB7Cj4gKwkJCQlj
b21wYXRpYmxlID0gIm9wZXJhdGluZy1wb2ludHMtdjIiOwo+ICsKPiArCQkJCW9wcC01MDAwMDAw
MCB7Cj4gKwkJCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDw1MDAwMDAwMD4sCj4gKwkJCQkJCSAvYml0
cy8gNjQgPDA+LAo+ICsJCQkJCQkgL2JpdHMvIDY0IDwwPiwKPiArCQkJCQkJIC9iaXRzLyA2NCA8
Mzc1MDAwMDA+LAo+ICsJCQkJCQkgL2JpdHMvIDY0IDw3NTAwMDAwMD4sCj4gKwkJCQkJCSAvYml0
cy8gNjQgPDA+LAo+ICsJCQkJCQkgL2JpdHMvIDY0IDwwPiwKPiArCQkJCQkJIC9iaXRzLyA2NCA8
MD47Cj4gKwkJCQkJcmVxdWlyZWQtb3BwcyA9IDwmcnBtaHBkX29wcF9sb3dfc3ZzPjsKPiArCQkJ
CX07Cj4gKwo+ICsJCQkJb3BwLTEwMDAwMDAwMCB7Cj4gKwkJCQkJb3BwLWh6ID0gL2JpdHMvIDY0
IDwxMDAwMDAwMDA+LAo+ICsJCQkJCQkgL2JpdHMvIDY0IDwwPiwKPiArCQkJCQkJIC9iaXRzLyA2
NCA8MD4sCj4gKwkJCQkJCSAvYml0cy8gNjQgPDc1MDAwMDAwPiwKPiArCQkJCQkJIC9iaXRzLyA2
NCA8MTUwMDAwMDAwPiwKPiArCQkJCQkJIC9iaXRzLyA2NCA8MD4sCj4gKwkJCQkJCSAvYml0cy8g
NjQgPDA+LAo+ICsJCQkJCQkgL2JpdHMvIDY0IDwwPjsKPiArCQkJCQlyZXF1aXJlZC1vcHBzID0g
PCZycG1ocGRfb3BwX3N2cz47Cj4gKwkJCQl9Owo+ICsKPiArCQkJCW9wcC0yMDAwMDAwMDAgewo+
ICsJCQkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8MjAwMDAwMDAwPiwKPiArCQkJCQkJIC9iaXRzLyA2
NCA8MD4sCj4gKwkJCQkJCSAvYml0cy8gNjQgPDA+LAo+ICsJCQkJCQkgL2JpdHMvIDY0IDwxNTAw
MDAwMDA+LAo+ICsJCQkJCQkgL2JpdHMvIDY0IDwzMDAwMDAwMDA+LAo+ICsJCQkJCQkgL2JpdHMv
IDY0IDwwPiwKPiArCQkJCQkJIC9iaXRzLyA2NCA8MD4sCj4gKwkJCQkJCSAvYml0cy8gNjQgPDA+
Owo+ICsJCQkJCXJlcXVpcmVkLW9wcHMgPSA8JnJwbWhwZF9vcHBfbm9tPjsKPiArCQkJCX07Cj4g
KwkJCX07Cj4gKwkJfTsKPiArCj4gKwkJdWZzX21lbV9waHk6IHBoeUAxZDg3MDAwIHsKPiArCQkJ
Y29tcGF0aWJsZSA9ICJxY29tLHFjczYxNS1xbXAtdWZzLXBoeSIsICJxY29tLHNtNjExNS1xbXAt
dWZzLXBoeSI7Cj4gKwkJCXJlZyA9IDwweDAgMHgwMWQ4NzAwMCAweDAgMHhlMDA+Owo+ICsJCQlj
bG9ja3MgPSA8JnJwbWhjYyBSUE1IX0NYT19DTEs+LAo+ICsJCQkJIDwmZ2NjIEdDQ19VRlNfUEhZ
X1BIWV9BVVhfQ0xLPiwKPiArCQkJCSA8JmdjYyBHQ0NfVUZTX01FTV9DTEtSRUZfQ0xLPjsKPiAr
CQkJY2xvY2stbmFtZXMgPSAicmVmIiwKPiArCQkJCSAgICAgICJyZWZfYXV4IiwKPiArCQkJCSAg
ICAgICJxcmVmIjsKPiArCj4gKwkJCXBvd2VyLWRvbWFpbnMgPSA8JmdjYyBVRlNfUEhZX0dEU0M+
Owo+ICsKPiArCQkJcmVzZXRzID0gPCZ1ZnNfbWVtX2hjIDA+Owo+ICsJCQlyZXNldC1uYW1lcyA9
ICJ1ZnNwaHkiOwo+ICsKPiArCQkJI2Nsb2NrLWNlbGxzID0gPDE+Owo+ICsJCQkjcGh5LWNlbGxz
ID0gPDA+Owo+ICsKPiArCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiArCQl9Owo+ICsKPiAgCQl0
Y3NyX211dGV4OiBod2xvY2tAMWY0MDAwMCB7Cj4gIAkJCWNvbXBhdGlibGUgPSAicWNvbSx0Y3Ny
LW11dGV4IjsKPiAgCQkJcmVnID0gPDB4MCAweDAxZjQwMDAwIDB4MCAweDIwMDAwPjsKPiAtLSAK
PiAyLjM0LjEKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a
4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
