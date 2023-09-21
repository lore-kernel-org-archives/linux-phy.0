Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A049CE706E3
	for <linux-phy@archiver.kernel.org>; Thu, 21 Sep 2023 08:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I975eTTZR0IAcKSK1d5v3pGEI/jtldGjx3zQZsgZl8w=; b=jqBzgxGFL21eTt
	spZCNJRXO7Si5iRFNhDz04LiCda1TVPv364iDQ15sXq5dDoZ/0E7WbWsKDJ09i7y08xIKLiMMZx8M
	NUtnVKHYHCo8j20DYj9VctM4uWfEZdI7L0F48/Z6rr1+GvvOJmMbazIsbXK8f33Mc2uxK/yhSmAq5
	KM2B7M+UYW/KCYhtUzbsr5buhdqwKUuJWUiaRlq/JBzu2jWf1IQckGI7G/w1cYh6T16XIR95oGxH5
	frEgUz/IFkqFSj//wY0UqSGzzUzpKynAXg4gvYy0HTTzwlXAtKBtjlCqW70DZHX0bm2/B9uWSZHkK
	GxsVJNvM/1So7glsNS4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjEmp-005T5D-1K;
	Thu, 21 Sep 2023 08:11:47 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjEmm-005T4V-0U
	for linux-phy@lists.infradead.org;
	Thu, 21 Sep 2023 08:11:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 51239B81F9F;
	Thu, 21 Sep 2023 08:11:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA915C116B1;
	Thu, 21 Sep 2023 08:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695283900;
	bh=Gewh+X/afwnYE29YDMBBSxcYouKp+J6pI9o/VDPi61s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OOA97oSA87QUXG8tkGzL4e+OSoo31vbKdlGVmS82Rki1F6e6aK/ISRu3oFg3WttHU
	 hzASotkvmkEWgGL97btIXv1zY0ngfxmtdLZBbCPkYelDLUT7JFSaLbzD4C9di3BSRa
	 15TTx1vPfe5HUOO2e6VENo6GqHKp4RgPcCW6zSDK69bYfQrPm02bNtZZapQMWRCw7b
	 c5yYrG9EmjRXx3OWJ5D/VwlH3ZO4UVCOC7E/R9M6WC78qrfh1h9I4vP47H1w9YT55m
	 9fy/q6WY3fczWq9OLQN+8Dqyxfk6PWf12G6xLK69kEifZm3iUQR1hZ7HflCin9DRbO
	 NLGEIL3TcplMw==
Date: Thu, 21 Sep 2023 10:11:32 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	konrad.dybcio@linaro.org, mani@kernel.org,
	quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
	quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
	quic_parass@quicinc.com, Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, linux-pci@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, mhi@lists.linux.dev,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v1 1/5] dt-bindings: PCI: qcom-ep: Add support for
 SA8775P SoC
Message-ID: <20230921081132.GA2891@thinkpad>
References: <1695218113-31198-1-git-send-email-quic_msarkar@quicinc.com>
 <1695218113-31198-2-git-send-email-quic_msarkar@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1695218113-31198-2-git-send-email-quic_msarkar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_011144_487157_584DA4F3 
X-CRM114-Status: GOOD (  12.66  )
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

T24gV2VkLCBTZXAgMjAsIDIwMjMgYXQgMDc6MjU6MDhQTSArMDUzMCwgTXJpbm1heSBTYXJrYXIg
d3JvdGU6Cj4gQWRkIGRldmljZXRyZWUgYmluZGluZ3Mgc3VwcG9ydCBmb3IgU0E4Nzc1UCBTb0Mu
Cj4gRGVmaW5lIHJlZyBhbmQgaW50ZXJydXB0IHBlciBwbGF0Zm9ybS4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBNcmlubWF5IFNhcmthciA8cXVpY19tc2Fya2FyQHF1aWNpbmMuY29tPgo+IC0tLQo+ICAu
Li4vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLWVwLnlhbWwgICAgICB8IDEzMCAr
KysrKysrKysrKysrKysrKy0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEwOCBpbnNlcnRpb25zKCsp
LCAyMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3BjaS9xY29tLHBjaWUtZXAueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLWVwLnlhbWwKPiBpbmRleCBhMjIzY2UwLi5lODYw
ZThmIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kv
cWNvbSxwY2llLWVwLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGNpL3Fjb20scGNpZS1lcC55YW1sCj4gQEAgLTEzLDYgKzEzLDcgQEAgcHJvcGVydGllczoK
PiAgICBjb21wYXRpYmxlOgo+ICAgICAgb25lT2Y6Cj4gICAgICAgIC0gZW51bToKPiArICAgICAg
ICAgIC0gcWNvbSxzYTg3NzVwLXBjaWUtZXAKPiAgICAgICAgICAgIC0gcWNvbSxzZHg1NS1wY2ll
LWVwCj4gICAgICAgICAgICAtIHFjb20sc204NDUwLXBjaWUtZXAKPiAgICAgICAgLSBpdGVtczoK
PiBAQCAtMjAsMjkgKzIxLDE5IEBAIHByb3BlcnRpZXM6Cj4gICAgICAgICAgICAtIGNvbnN0OiBx
Y29tLHNkeDU1LXBjaWUtZXAKPiAgCj4gICAgcmVnOgo+IC0gICAgaXRlbXM6Cj4gLSAgICAgIC0g
ZGVzY3JpcHRpb246IFF1YWxjb21tLXNwZWNpZmljIFBBUkYgY29uZmlndXJhdGlvbiByZWdpc3Rl
cnMKPiAtICAgICAgLSBkZXNjcmlwdGlvbjogRGVzaWduV2FyZSBQQ0llIHJlZ2lzdGVycwo+IC0g
ICAgICAtIGRlc2NyaXB0aW9uOiBFeHRlcm5hbCBsb2NhbCBidXMgaW50ZXJmYWNlIHJlZ2lzdGVy
cwo+IC0gICAgICAtIGRlc2NyaXB0aW9uOiBBZGRyZXNzIFRyYW5zbGF0aW9uIFVuaXQgKEFUVSkg
cmVnaXN0ZXJzCj4gLSAgICAgIC0gZGVzY3JpcHRpb246IE1lbW9yeSByZWdpb24gdXNlZCB0byBt
YXAgcmVtb3RlIFJDIGFkZHJlc3Mgc3BhY2UKPiAtICAgICAgLSBkZXNjcmlwdGlvbjogQkFSIG1l
bW9yeSByZWdpb24KPiArICAgIG1pbkl0ZW1zOiA2Cj4gKyAgICBtYXhJdGVtczogNwo+ICAKPiAg
ICByZWctbmFtZXM6Cj4gLSAgICBpdGVtczoKPiAtICAgICAgLSBjb25zdDogcGFyZgo+IC0gICAg
ICAtIGNvbnN0OiBkYmkKPiAtICAgICAgLSBjb25zdDogZWxiaQo+IC0gICAgICAtIGNvbnN0OiBh
dHUKPiAtICAgICAgLSBjb25zdDogYWRkcl9zcGFjZQo+IC0gICAgICAtIGNvbnN0OiBtbWlvCj4g
KyAgICBtaW5JdGVtczogNgo+ICsgICAgbWF4SXRlbXM6IDcKPiAgCj4gICAgY2xvY2tzOgo+IC0g
ICAgbWluSXRlbXM6IDcKPiArICAgIG1pbkl0ZW1zOiA1Cj4gICAgICBtYXhJdGVtczogOAo+ICAK
PiAgICBjbG9jay1uYW1lczoKPiAtICAgIG1pbkl0ZW1zOiA3Cj4gKyAgICBtaW5JdGVtczogNQo+
ICAgICAgbWF4SXRlbXM6IDgKPiAgCj4gICAgcWNvbSxwZXJzdC1yZWdzOgo+IEBAIC01NywxNCAr
NDgsMTIgQEAgcHJvcGVydGllczoKPiAgICAgICAgICAgIC0gZGVzY3JpcHRpb246IFBlcnN0IHNl
cGFyYXRpb24gZW5hYmxlIG9mZnNldAo+ICAKPiAgICBpbnRlcnJ1cHRzOgo+IC0gICAgaXRlbXM6
Cj4gLSAgICAgIC0gZGVzY3JpcHRpb246IFBDSWUgR2xvYmFsIGludGVycnVwdAo+IC0gICAgICAt
IGRlc2NyaXB0aW9uOiBQQ0llIERvb3JiZWxsIGludGVycnVwdAo+ICsgICAgbWluSXRlbXM6IDIK
PiArICAgIG1heEl0ZW1zOiAzCj4gIAo+ICAgIGludGVycnVwdC1uYW1lczoKPiAtICAgIGl0ZW1z
Ogo+IC0gICAgICAtIGNvbnN0OiBnbG9iYWwKPiAtICAgICAgLSBjb25zdDogZG9vcmJlbGwKPiAr
ICAgIG1pbkl0ZW1zOiAyCj4gKyAgICBtYXhJdGVtczogMwo+ICAKPiAgICByZXNldC1ncGlvczoK
PiAgICAgIGRlc2NyaXB0aW9uOiBHUElPIHVzZWQgYXMgUEVSU1QjIGlucHV0IHNpZ25hbAo+IEBA
IC0xMjIsNiArMTExLDUxIEBAIGFsbE9mOgo+ICAgICAgICAgIGNvbXBhdGlibGU6Cj4gICAgICAg
ICAgICBjb250YWluczoKPiAgICAgICAgICAgICAgZW51bToKPiArICAgICAgICAgICAgICAtIHFj
b20sc2E4Nzc1cC1wY2llLWVwCj4gKyAgICB0aGVuOgo+ICsgICAgICBwcm9wZXJ0aWVzOgo+ICsg
ICAgICAgIHJlZzoKPiArICAgICAgICAgIGl0ZW1zOgo+ICsgICAgICAgICAgICAtIGRlc2NyaXB0
aW9uOiBRdWFsY29tbS1zcGVjaWZpYyBQQVJGIGNvbmZpZ3VyYXRpb24gcmVnaXN0ZXJzCj4gKyAg
ICAgICAgICAgIC0gZGVzY3JpcHRpb246IERlc2lnbldhcmUgUENJZSByZWdpc3RlcnMKPiArICAg
ICAgICAgICAgLSBkZXNjcmlwdGlvbjogRXh0ZXJuYWwgbG9jYWwgYnVzIGludGVyZmFjZSByZWdp
c3RlcnMKPiArICAgICAgICAgICAgLSBkZXNjcmlwdGlvbjogQWRkcmVzcyBUcmFuc2xhdGlvbiBV
bml0IChBVFUpIHJlZ2lzdGVycwo+ICsgICAgICAgICAgICAtIGRlc2NyaXB0aW9uOiBNZW1vcnkg
cmVnaW9uIHVzZWQgdG8gbWFwIHJlbW90ZSBSQyBhZGRyZXNzIHNwYWNlCj4gKyAgICAgICAgICAg
IC0gZGVzY3JpcHRpb246IEJBUiBtZW1vcnkgcmVnaW9uCj4gKyAgICAgICAgICAgIC0gZGVzY3Jp
cHRpb246IERNQSBtZW1vcnkgcmVnaW9uCgpJdCBzaG91bGQgYmUgZGVzY3JpYmVkIGFzICJETUEg
cmVnaXN0ZXIgc3BhY2UiIG9yIHNvbWV0aGluZywgYmVjYXVzZSB0aGlzIGNvdWxkCmJlIG1pc2lu
dGVycHJldGVkIGFzIG1lbW9yeSByZWdpb24gZm9yIGRvaW5nIERNQS4KCi0gTWFuaQoKLS0gCuCu
ruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
