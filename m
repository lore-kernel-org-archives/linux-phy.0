Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3001EB64DA
	for <linux-phy@archiver.kernel.org>; Wed,  5 Jul 2023 08:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=prJCt5T67whQmZbmMOdUkTHZC7k12mdmxF/xk2vFRiQ=; b=AUPuSscmatjBs3
	5MSZHPo2Mzldt0arbFHkGuHcPUH2XF78sy93ow805n4MxusQGlfNrq5PU4oBNlXroiMeapkRfE7+Q
	IvsgELEv8zKsjf3WRDzp7+y3CkqRMg7vG+VOmqG+VDZE+crOw0QQgS3z1HuCiDTbk8qr+wF7IKBAR
	z5PO+oadFa4MGUMrNBVOsodou5RldsjkBc3QKjhXO37LQF4Q5IE/89pXXFk5dn/is+9p+c25Kewx1
	RqUfE5uBU7Vgl3u3y8W1x7cb4ut+qUetuUQtbHdyXxktC+OnvJ1jsy/vdGuISXBrQrHKbresOt2UQ
	xSYdPpvmIPcgtlZB+Kfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGxsU-00FDJJ-1c;
	Wed, 05 Jul 2023 08:28:46 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGxsS-00FDIQ-0r
	for linux-phy@lists.infradead.org;
	Wed, 05 Jul 2023 08:28:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8D70E61483;
	Wed,  5 Jul 2023 08:28:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F8BAC433C7;
	Wed,  5 Jul 2023 08:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688545723;
	bh=cHGda5V9pCsTD1y90nW+7+XhO6NjjTFPn6JL/uh9/QQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a9QoCJ6HBYGoU35mzpGaJGjN5PZX4OhgXcW6j125fWzLg/p53rilSADbcEv5wdkoq
	 fpdUd4X+A2pY47BICfAQMEY1MVUtUc9V1SMtzRG8YgOlabaho/q4OE/xM+S2GStRbc
	 KgUH9wfxb9Ymtsl2K1oAou3FoWSjlliCanIflFzbTcpEX8VsWLCb9ftrWzztPd2zx+
	 2Ddy+yDSGZzBWxcUh+oDeAL4EaeL2Eb39e3fHfoSeq8OUhdJjkU+1eQnTLlfxqdKMg
	 hQjSaHHV4+YyYHpzSxhXpCpmYPeXEsraa0ICvfPBn1uJA2gEdBFFqUJNdfyK7KcZDz
	 AZmsRxsKo5QGw==
Date: Wed, 5 Jul 2023 13:58:26 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	konrad.dybcio@linaro.org, quic_shazhuss@quicinc.com,
	quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com,
	quic_nayiluri@quicinc.com, Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v1 3/6] PCI: qcom: Add support for sa8775p SoC
Message-ID: <20230705082826.GC11854@thinkpad>
References: <1688545032-17748-1-git-send-email-quic_msarkar@quicinc.com>
 <1688545032-17748-4-git-send-email-quic_msarkar@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1688545032-17748-4-git-send-email-quic_msarkar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_012844_348303_182B255A 
X-CRM114-Status: GOOD (  14.57  )
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

T24gV2VkLCBKdWwgMDUsIDIwMjMgYXQgMDE6NDc6MDhQTSArMDUzMCwgTXJpbm1heSBTYXJrYXIg
d3JvdGU6Cj4gQWRkIHN1cHBvcnQgZm9yIHNhODc3NXAgU29DIHJldXNpbmcgdGhlIDEuOS4wIGNv
bmZpZy4KPiAKCkFkZCBpbmZvcm1hdGlvbiBhYm91dCB0aGUgY29udHJvbGxlciB2ZXJzaW9uLCBE
V0MgdmVyc2lvbiBpbiBjb21taXQgbWVzc2FnZS4KCj4gU2lnbmVkLW9mZi1ieTogTXJpbm1heSBT
YXJrYXIgPHF1aWNfbXNhcmthckBxdWljaW5jLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9wY2kvY29u
dHJvbGxlci9kd2MvcGNpZS1xY29tLmMgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUt
cWNvbS5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMKPiBpbmRleCA3
YTg3YTQ3ZWI3ZWQuLjU5Y2MwMjhkM2EzZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL2R3Yy9wY2llLXFjb20uYwo+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdj
L3BjaWUtcWNvbS5jCj4gQEAgLTE2MjQsNiArMTYyNCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
b2ZfZGV2aWNlX2lkIHFjb21fcGNpZV9tYXRjaFtdID0gewo+ICAJeyAuY29tcGF0aWJsZSA9ICJx
Y29tLHBjaWUtc204NDUwLXBjaWUwIiwgLmRhdGEgPSAmY2ZnXzFfOV8wIH0sCj4gIAl7IC5jb21w
YXRpYmxlID0gInFjb20scGNpZS1zbTg0NTAtcGNpZTEiLCAuZGF0YSA9ICZjZmdfMV85XzAgfSwK
PiAgCXsgLmNvbXBhdGlibGUgPSAicWNvbSxwY2llLXNtODU1MCIsIC5kYXRhID0gJmNmZ18xXzlf
MCB9LAo+ICsJeyAuY29tcGF0aWJsZSA9ICJxY29tLHBjaWUtc2E4Nzc1cCIsIC5kYXRhID0gJmNm
Z18xXzlfMH0sCgpTYW1lIGNvbW1lbnQgYXMgcGF0Y2ggMS4KCi0gTWFuaQoKPiAgCXsgfQo+ICB9
Owo+ICAKPiAtLSAKPiAyLjM5LjIKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g
4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
