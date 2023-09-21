Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3294E706F0
	for <linux-phy@archiver.kernel.org>; Thu, 21 Sep 2023 08:39:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/zjc7XCXIEX3q0Ayubl87YKC3FLrlcoKloS9KLjqZu8=; b=41qHLljwHYquTQ
	37kbOzCGXdfGhaS2ex03JhcKc406tWYWn63/PQ9g5/LFeYoDx0SdWgLeV5QSjXC45F71olpE9fhXg
	jqtgqQD4TkawfJEkYBgHNjbm/oQ75utddWFN8f/rPie4R4YwshM/TbmBQuwk9q0Gn5/P0+FDgI0Zv
	0NR01UJ7GtuAWXgGdRrQjkDi3h0r9fOrFAKfVpWflYpYOqsRYo4H3IRlAXtaENyQSvSsSLcHAJBb6
	YthLqITNiIlR6BMCqDTHzlHwNcUOMh8HC4zIkJIWmbdzXiwgxKTVPY3XIrSrBER5ztByLP0pC78Fi
	BPqe/1WFZmopXY96aXFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjFDO-005VUI-2B;
	Thu, 21 Sep 2023 08:39:14 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjFDL-005VTt-2p
	for linux-phy@lists.infradead.org;
	Thu, 21 Sep 2023 08:39:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E999661E88;
	Thu, 21 Sep 2023 08:39:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7D23C116CB;
	Thu, 21 Sep 2023 08:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695285550;
	bh=SRktlw97rAUxXvmGZYe3/jusIyIMFE7ZdMCiBS5jEGw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=crg4JG5LjedFtliw5QRvtI7SuUOmrrTBU+sHkBFQwYAKW8BwtVoP7z2ZeOOKtHjP7
	 1tCR0qfp2JfJ1IqYaY7uOBsOiTPTFP0I6ptfLB1BtsOZ1RPvio2SzKn7ueQona0vTj
	 WCcngKA0W+mDqjk30/xRyTNQFN80zqTumpd6YfSeEHlntqWw4CIipoM+j0dxDHPujl
	 NUKxajPOP7KzwemqUufWx4FlS/JXCg8xABT5xtQRUBeHWc8fFYH+LV7fYfoh7XUbgD
	 hW4/uMKVDOKp5KVyRlZouLkIZTcnEi99l4G3rR1Ryqa++3Lkls8uA5Ku3heJh5zPlb
	 JcM0+hhDpddiQ==
Date: Thu, 21 Sep 2023 10:39:01 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	konrad.dybcio@linaro.org, quic_shazhuss@quicinc.com,
	quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com,
	quic_nayiluri@quicinc.com, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com, quic_parass@quicinc.com,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, mhi@lists.linux.dev,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v1 3/5] phy: qcom-qmp-pcie: add endpoint support for
 sa8775p
Message-ID: <20230921083901.GC2891@thinkpad>
References: <1695218113-31198-1-git-send-email-quic_msarkar@quicinc.com>
 <1695218113-31198-4-git-send-email-quic_msarkar@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1695218113-31198-4-git-send-email-quic_msarkar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_013912_019113_2475F37C 
X-CRM114-Status: GOOD (  16.86  )
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

T24gV2VkLCBTZXAgMjAsIDIwMjMgYXQgMDc6MjU6MTBQTSArMDUzMCwgTXJpbm1heSBTYXJrYXIg
d3JvdGU6Cj4gQWRkIHN1cHBvcnQgZm9yIGR1YWwgbGFuZSBlbmQgcG9pbnQgbW9kZSBQSFkgZm91
bmQgb24gc2E4NzU1cCBwbGF0Zm9ybS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNcmlubWF5IFNhcmth
ciA8cXVpY19tc2Fya2FyQHF1aWNpbmMuY29tPgo+IC0tLQo+ICBkcml2ZXJzL3BoeS9xdWFsY29t
bS9waHktcWNvbS1xbXAtcGNpZS5jICAgICAgICAgICB8IDQxICsrKysrKysrKysrKysrKysrKysr
KysKPiAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjcy12NS5oICAgICAgICAg
fCAgMiArKwo+ICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcXNlcmRlcy1jb20t
djUuaCB8ICAxICsKPiAgMyBmaWxlcyBjaGFuZ2VkLCA0NCBpbnNlcnRpb25zKCspCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmMgYi9kcml2
ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5jCj4gaW5kZXggYTYzY2E3NC4uMzUx
MDQ3YyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNp
ZS5jCj4gKysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUuYwo+IEBA
IC0yMTQ3LDYgKzIxNDcsMzggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2luaXRfdGJs
IHNhODc3NXBfcW1wX2dlbjR4NF9wY2llX3JjX3NlcmRlc19hbHRfdGJsW10KPiAgCVFNUF9QSFlf
SU5JVF9DRkcoUVNFUkRFU19WNV9DT01fQ0xLX1NFTEVDVCwgMHgzNCksCj4gIH07Cj4gIAo+ICtz
dGF0aWMgY29uc3Qgc3RydWN0IHFtcF9waHlfaW5pdF90Ymwgc2E4Nzc1cF9xbXBfZ2VuNHgyX3Bj
aWVfZXBfc2VyZGVzX2FsdF90YmxbXSA9IHsKPiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19W
NV9DT01fQkdfVElNRVIsIDB4MDIpLAo+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y1X0NP
TV9TWVNfQ0xLX0NUUkwsIDB4MDcpLAo+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y1X0NP
TV9DUF9DVFJMX01PREUwLCAweDI3KSwKPiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19WNV9D
T01fQ1BfQ1RSTF9NT0RFMSwgMHgwYSksCj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjVf
Q09NX1BMTF9SQ1RSTF9NT0RFMCwgMHgxNyksCj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNf
VjVfQ09NX1BMTF9SQ1RSTF9NT0RFMSwgMHgxOSksCj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJE
RVNfVjVfQ09NX1BMTF9DQ1RSTF9NT0RFMCwgMHgwMCksCj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFT
RVJERVNfVjVfQ09NX1BMTF9DQ1RSTF9NT0RFMSwgMHgwMyksCj4gKwlRTVBfUEhZX0lOSVRfQ0ZH
KFFTRVJERVNfVjVfQ09NX1NZU0NMS19FTl9TRUwsIDB4MDApLAo+ICsJUU1QX1BIWV9JTklUX0NG
RyhRU0VSREVTX1Y1X0NPTV9JTlRFR0xPT1BfR0FJTjBfTU9ERTAsIDB4ZmIpLAo+ICsJUU1QX1BI
WV9JTklUX0NGRyhRU0VSREVTX1Y1X0NPTV9JTlRFR0xPT1BfR0FJTjFfTU9ERTAsIDB4MDEpLAo+
ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y1X0NPTV9JTlRFR0xPT1BfR0FJTjBfTU9ERTEs
IDB4ZmIpLAo+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y1X0NPTV9JTlRFR0xPT1BfR0FJ
TjFfTU9ERTEsIDB4MDEpLAo+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y1X0NPTV9QTExf
Q01OX01PREUsIDB4MTQpLAo+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y1X0NPTV9MT0NL
X0NNUDFfTU9ERTAsIDB4ZmYpLAo+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y1X0NPTV9M
T0NLX0NNUDJfTU9ERTAsIDB4MDQpLAo+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y1X0NP
TV9MT0NLX0NNUDFfTU9ERTEsIDB4ZmYpLAo+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y1
X0NPTV9MT0NLX0NNUDJfTU9ERTEsIDB4MDkpLAo+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVT
X1Y1X0NPTV9ERUNfU1RBUlRfTU9ERTAsIDB4MTkpLAo+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VS
REVTX1Y1X0NPTV9ERUNfU1RBUlRfTU9ERTEsIDB4MjgpLAo+ICt9Owo+ICsKPiArc3RhdGljIGNv
bnN0IHN0cnVjdCBxbXBfcGh5X2luaXRfdGJsIHNhODc3NXBfcW1wX2dlbjRfcGNpZV9lcF9wY3Nf
bWlzY190YmxbXSA9IHsKPiArCVFNUF9QSFlfSU5JVF9DRkcoUVBIWV9WNV8yMF9QQ1NfUENJRV9P
U0NfRFRDVF9NT0RFMl9DT05GSUc1LCAweDA4KSwKPiArfTsKPiArCj4gK3N0YXRpYyBjb25zdCBz
dHJ1Y3QgcW1wX3BoeV9pbml0X3RibCBzYTg3NzVwX3FtcF9nZW40eDJfcGNpZV9lcF9wY3NfYWx0
X3RibFtdID0gewo+ICsJUU1QX1BIWV9JTklUX0NGRyhRUEhZX1Y1X1BDU19JTlNJR19NWF9DVFJM
NywgMHgwMCksCj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFQSFlfVjVfUENTX0lOU0lHX1NXX0NUUkw3
LCAweDAwKSwKPiArfTsKPiArCj4gIHN0cnVjdCBxbXBfcGNpZV9vZmZzZXRzIHsKPiAgCXUxNiBz
ZXJkZXM7Cj4gIAl1MTYgcGNzOwo+IEBAIC0zMDQzLDYgKzMwNzUsMTUgQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCBxbXBfcGh5X2NmZyBzYTg3NzVwX3FtcF9nZW40eDJfcGNpZXBoeV9jZmcgPSB7Cj4g
IAkJLnBjc19taXNjX251bQk9IEFSUkFZX1NJWkUoc2E4Nzc1cF9xbXBfZ2VuNF9wY2llX3JjX3Bj
c19taXNjX3RibCksCj4gIAl9LAo+ICAKPiArCS50YmxzX2VwID0gJihjb25zdCBzdHJ1Y3QgcW1w
X3BoeV9jZmdfdGJscykgewo+ICsJCS5zZXJkZXMJCT0gc2E4Nzc1cF9xbXBfZ2VuNHgyX3BjaWVf
ZXBfc2VyZGVzX2FsdF90YmwsCj4gKwkJLnNlcmRlc19udW0JPSBBUlJBWV9TSVpFKHNhODc3NXBf
cW1wX2dlbjR4Ml9wY2llX2VwX3NlcmRlc19hbHRfdGJsKSwKPiArCQkucGNzX21pc2MJPSBzYTg3
NzVwX3FtcF9nZW40X3BjaWVfZXBfcGNzX21pc2NfdGJsLAo+ICsJCS5wY3NfbWlzY19udW0JPSBB
UlJBWV9TSVpFKHNhODc3NXBfcW1wX2dlbjRfcGNpZV9lcF9wY3NfbWlzY190YmwpLAo+ICsJCS5w
Y3MJCT0gc2E4Nzc1cF9xbXBfZ2VuNHgyX3BjaWVfZXBfcGNzX2FsdF90YmwsCj4gKwkJLnBjc19u
dW0JPSBBUlJBWV9TSVpFKHNhODc3NXBfcW1wX2dlbjR4Ml9wY2llX2VwX3Bjc19hbHRfdGJsKSwK
PiArCX0sCj4gKwo+ICAJLnJlc2V0X2xpc3QJCT0gc2RtODQ1X3BjaWVwaHlfcmVzZXRfbCwKPiAg
CS5udW1fcmVzZXRzCQk9IEFSUkFZX1NJWkUoc2RtODQ1X3BjaWVwaHlfcmVzZXRfbCksCj4gIAku
dnJlZ19saXN0CQk9IHFtcF9waHlfdnJlZ19sLAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9x
dWFsY29tbS9waHktcWNvbS1xbXAtcGNzLXY1LmggYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHkt
cWNvbS1xbXAtcGNzLXY1LmgKPiBpbmRleCAzNmNjODBiLi4yYjMzZGM3IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY3MtdjUuaAo+ICsrKyBiL2RyaXZl
cnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY3MtdjUuaAo+IEBAIC0zMCw1ICszMCw3IEBA
Cj4gICNkZWZpbmUgUVBIWV9WNV9QQ1NfRVFfQ09ORklHMgkJCQkweDFlMAo+ICAjZGVmaW5lIFFQ
SFlfVjVfUENTX0VRX0NPTkZJRzMJCQkJMHgxZTQKPiAgI2RlZmluZSBRUEhZX1Y1X1BDU19FUV9D
T05GSUc1CQkJCTB4MWVjCj4gKyNkZWZpbmUgUVBIWV9WNV9QQ1NfSU5TSUdfTVhfQ1RSTDcJCQkw
eDA3Ywo+ICsjZGVmaW5lIFFQSFlfVjVfUENTX0lOU0lHX1NXX0NUUkw3CQkJMHgwNjAKClNvcnQg
dGhlIGRlZmluZXMgcGxlYXNlLCBoZXJlIGFuZCBiZWxvdy4KCi0gTWFuaQoKPiAgCj4gICNlbmRp
Zgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcXNlcmRl
cy1jb20tdjUuaCBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1xc2VyZGVzLWNv
bS12NS5oCj4gaW5kZXggYzhhZmRmNy4uYWQ1ODdjOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3Bo
eS9xdWFsY29tbS9waHktcWNvbS1xbXAtcXNlcmRlcy1jb20tdjUuaAo+ICsrKyBiL2RyaXZlcnMv
cGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1xc2VyZGVzLWNvbS12NS5oCj4gQEAgLTEyMCw1ICsx
MjAsNiBAQAo+ICAjZGVmaW5lIFFTRVJERVNfVjVfQ09NX0JJTl9WQ09DQUxfQ01QX0NPREUyX01P
REUxCTB4MWI4Cj4gICNkZWZpbmUgUVNFUkRFU19WNV9DT01fQklOX1ZDT0NBTF9IU0NMS19TRUwJ
CTB4MWJjCj4gICNkZWZpbmUgUVNFUkRFU19WNV9DT01fUkVTRVJWRURfMQkJCTB4MWMwCj4gKyNk
ZWZpbmUgUVNFUkRFU19WNV9DT01fUExMX0NNTl9NT0RFCQkJMHgxYTAKPiAgCj4gICNlbmRpZgo+
IC0tIAo+IDIuNy40Cj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCu
vuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
