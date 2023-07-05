Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8FD2EB64DA
	for <linux-phy@archiver.kernel.org>; Wed,  5 Jul 2023 08:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wk7UL73dm9+F1vg0GMVQynQzI5RwTeaK9H/DWqt597E=; b=VJ1ZLqICALXG9s
	NNdTOz/I6BIhJptn/MqPhCqJP9eUcWiUvVn4VGRqYe9INhW9kcK6ZSZCEEpMPzp3vYGBKPUZnUeoY
	PMo74KmuVv6BqIfjddNDFqtj0w1CfRNZAwYL2YNJls7ZTUPKVXlk3r7uqXEdbbCha2xN8wFArlTzF
	heCseanKvW7jIx6zdypMxrnKnkHorsjCBfiroOtgZXoOhWaKIpXfngTmtOKRWSsn+jPbRiybadoQy
	4xAq3DTlwk1svau1FHK2H+Y9WqpgZE2+3C6XSKer9IJGI0eIqylZOYAx6NgbF/8Vl9ehVB3sFceiG
	6ccV7k8tksDvLBbs58IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGxpu-00FCmU-1i;
	Wed, 05 Jul 2023 08:26:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGxps-00FCls-0D
	for linux-phy@lists.infradead.org;
	Wed, 05 Jul 2023 08:26:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 34CB461472;
	Wed,  5 Jul 2023 08:26:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03F4EC433C8;
	Wed,  5 Jul 2023 08:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688545562;
	bh=tnfwjRMNeY+xXNQJk4GOEiAkLnVkej3s88TiU3bpGJI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qQMNW6qQrijO8TlFMenDOUD58UaStiBga7SYuwgTgDDIEDYLYYQTJYP5JWtvWl+ts
	 /PaxWoBrzbqx5Vpm3UgSazGtUJbMxQnqDdNWVLYrh0F1m6TaUmgIHXk2tU6Wgxp7LP
	 AloORPn3Afq6N6JfS8ueNcmppnAS87z/p5Oc5OZTpYz1HGilnulqit7ZyEbwA9JkPL
	 aHTaQmOP/i8nQiG6xuItzfgMR7NI84k/830UC6flj8jvgBothNtgDG+qecOOOnPsrp
	 y5guk+cSyWsCmNKQlk4CwVsXZbEawh8xRDK+QapYXZ7XoME+6yWHT5ppmzZbYZdaw5
	 GSMwOy09YehcA==
Date: Wed, 5 Jul 2023 13:55:45 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	konrad.dybcio@linaro.org, quic_shazhuss@quicinc.com,
	quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com,
	quic_nayiluri@quicinc.com,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v1 1/6] dt-bindings: PCI: qcom: Add sa8775p compatible
Message-ID: <20230705082545.GA11854@thinkpad>
References: <1688545032-17748-1-git-send-email-quic_msarkar@quicinc.com>
 <1688545032-17748-2-git-send-email-quic_msarkar@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1688545032-17748-2-git-send-email-quic_msarkar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_012604_205106_122F6082 
X-CRM114-Status: GOOD (  13.38  )
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

T24gV2VkLCBKdWwgMDUsIDIwMjMgYXQgMDE6NDc6MDZQTSArMDUzMCwgTXJpbm1heSBTYXJrYXIg
d3JvdGU6Cj4gQWRkIHNhODc3NXAgcGxhdGZvcm0gdG8gdGhlIGJpbmRpbmcuCj4gCj4gU2lnbmVk
LW9mZi1ieTogTXJpbm1heSBTYXJrYXIgPHF1aWNfbXNhcmthckBxdWljaW5jLmNvbT4KPiAtLS0K
PiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS55YW1sICAgIHwgMjggKysr
KysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKQo+IAo+
IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20s
cGNpZS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9xY29tLHBj
aWUueWFtbAo+IGluZGV4IDgxOTcxYmU0ZTU1NC4uMmM3OTU4NWEyZDFlIDEwMDY0NAo+IC0tLSBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLnlhbWwKPiAr
KysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS55YW1s
Cj4gQEAgLTQwLDYgKzQwLDcgQEAgcHJvcGVydGllczoKPiAgICAgICAgICAgIC0gcWNvbSxwY2ll
LXNtODQ1MC1wY2llMAo+ICAgICAgICAgICAgLSBxY29tLHBjaWUtc204NDUwLXBjaWUxCj4gICAg
ICAgICAgICAtIHFjb20scGNpZS1zbTg1NTAKPiArICAgICAgICAgIC0gcWNvbSxwY2llLXNhODc3
NXAKClNvcnQgdGhlIGNvbXBhdGlibGUgYWxwaGFiZXRpY2FsbHkgaGVyZSBhbmQgYmVsb3cuCgot
IE1hbmkKCj4gICAgICAgIC0gaXRlbXM6Cj4gICAgICAgICAgICAtIGNvbnN0OiBxY29tLHBjaWUt
bXNtODk5OAo+ICAgICAgICAgICAgLSBjb25zdDogcWNvbSxwY2llLW1zbTg5OTYKPiBAQCAtMjIw
LDYgKzIyMSw3IEBAIGFsbE9mOgo+ICAgICAgICAgICAgICAgIC0gcWNvbSxwY2llLXNtODQ1MC1w
Y2llMAo+ICAgICAgICAgICAgICAgIC0gcWNvbSxwY2llLXNtODQ1MC1wY2llMQo+ICAgICAgICAg
ICAgICAgIC0gcWNvbSxwY2llLXNtODU1MAo+ICsgICAgICAgICAgICAgIC0gcWNvbSxwY2llLXNh
ODc3NXAKPiAgICAgIHRoZW46Cj4gICAgICAgIHByb3BlcnRpZXM6Cj4gICAgICAgICAgcmVnOgo+
IEBAIC03NDMsNiArNzQ1LDMwIEBAIGFsbE9mOgo+ICAgICAgICAgICAgaXRlbXM6Cj4gICAgICAg
ICAgICAgIC0gY29uc3Q6IHBjaSAjIFBDSWUgY29yZSByZXNldAo+ICAKPiArICAtIGlmOgo+ICsg
ICAgICBwcm9wZXJ0aWVzOgo+ICsgICAgICAgIGNvbXBhdGlibGU6Cj4gKyAgICAgICAgICBjb250
YWluczoKPiArICAgICAgICAgICAgZW51bToKPiArICAgICAgICAgICAgICAgIC0gcWNvbSxwY2ll
LXNhODc3NXAKPiArICAgIHRoZW46Cj4gKyAgICAgIHByb3BlcnRpZXM6Cj4gKyAgICAgICAgY2xv
Y2tzOgo+ICsgICAgICAgICAgbWluSXRlbXM6IDUKPiArICAgICAgICAgIG1heEl0ZW1zOiA1Cj4g
KyAgICAgICAgY2xvY2stbmFtZXM6Cj4gKyAgICAgICAgICBpdGVtczoKPiArICAgICAgICAgICAg
LSBjb25zdDogYXV4ICMgQXV4aWxpYXJ5IGNsb2NrCj4gKyAgICAgICAgICAgIC0gY29uc3Q6IGNm
ZyAjIENvbmZpZ3VyYXRpb24gY2xvY2sKPiArICAgICAgICAgICAgLSBjb25zdDogYnVzX21hc3Rl
ciAjIE1hc3RlciBBWEkgY2xvY2sKPiArICAgICAgICAgICAgLSBjb25zdDogYnVzX3NsYXZlICMg
U2xhdmUgQVhJIGNsb2NrCj4gKyAgICAgICAgICAgIC0gY29uc3Q6IHNsYXZlX3EyYSAjIFNsYXZl
IFEyQSBjbG9jawo+ICsgICAgICAgIHJlc2V0czoKPiArICAgICAgICAgIG1heEl0ZW1zOiAxCj4g
KyAgICAgICAgcmVzZXQtbmFtZXM6Cj4gKyAgICAgICAgICBpdGVtczoKPiArICAgICAgICAgICAg
LSBjb25zdDogcGNpICMgUENJZSBjb3JlIHJlc2V0Cj4gKwo+ICAgIC0gaWY6Cj4gICAgICAgIHBy
b3BlcnRpZXM6Cj4gICAgICAgICAgY29tcGF0aWJsZToKPiBAQCAtNzUwLDYgKzc3Niw3IEBAIGFs
bE9mOgo+ICAgICAgICAgICAgICBlbnVtOgo+ICAgICAgICAgICAgICAgIC0gcWNvbSxwY2llLXNh
ODU0MHAKPiAgICAgICAgICAgICAgICAtIHFjb20scGNpZS1zYzgyODB4cAo+ICsgICAgICAgICAg
ICAgIC0gcWNvbSxwY2llLXNhODc3NXAKPiAgICAgIHRoZW46Cj4gICAgICAgIHJlcXVpcmVkOgo+
ICAgICAgICAgIC0gaW50ZXJjb25uZWN0cwo+IEBAIC04NTQsNiArODgxLDcgQEAgYWxsT2Y6Cj4g
ICAgICAgICAgICAgICAgLSBxY29tLHBjaWUtaXBxODA3NC1nZW4zCj4gICAgICAgICAgICAgICAg
LSBxY29tLHBjaWUtcWNzNDA0Cj4gICAgICAgICAgICAgICAgLSBxY29tLHBjaWUtc2E4NTQwcAo+
ICsgICAgICAgICAgICAgIC0gcWNvbSxwY2llLXNhODc3NXAKPiAgICAgIHRoZW46Cj4gICAgICAg
IHByb3BlcnRpZXM6Cj4gICAgICAgICAgaW50ZXJydXB0czoKPiAtLSAKPiAyLjM5LjIKPiAKCi0t
IArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
