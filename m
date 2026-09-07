Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2306C79F89
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 07:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4P2+FQ2sDIH3XGu33ZqFlzKKiMXNbK1BXTNHLgBX8ns=; b=25mDS1ovwP4slQ
	j+KBckUgajNPvuwK9/wPk5Sd0guCI/dwk7ueGND/Tr7Xlxdpyqjf9iuxjpIIWOF9vmUP+Hv54l/MP
	0DLhinqh8YBWnAtmypESsGZPLPx+eGdoDhk13XZG/zM5do6hnyX9wHnTbbdV0QXIjW0eTP84eqDQC
	2djpQckH8DD4p+vUMUzLpKZysvsS93erfV08FSsWQ8y3YjzkvP5X7VxT8kFDmrd/HaTFGGsfleO06
	Vj0YoCvvNBav26kyDuxhv4ves4JhZchPm+dssLV6rUzsiCPzjenKfyelHL/F6ocZoBaxZvoV97+SQ
	P6A3oGKsTlVE99ZG+4jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Tx2-00000006Aso-1Bwa;
	Mon, 07 Sep 2026 07:39:36 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Tx0-00000006Asc-315R
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 07:39:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1197643310;
	Mon,  7 Sep 2026 07:39:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A286F1F00A3A;
	Mon,  7 Sep 2026 07:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788766774;
	bh=Lqb7O/xgArFhbuT2l7tCRuiWSY7vb0n3vYqqKV7eQQs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=n21QY4fKs43oTf108gS6eGxoflN6Gv7srLEleF/hy7K5ydvd02xRPe8e/h+BxEz5k
	 ljRJTNcq7cG3YdfO+aALCis8gxd77trzUFfP1b68J9sMpj5VoKzIHlwcQXTHov9MCE
	 G324o026UqEnNwh65s8o502HmN1TnfXC0xa2PCcV1NpdO7H0xsP5Pr1PW6z/dzfu51
	 arubJuSLR5bKgpE5wuk66fyX742SHZvjti9iYexSyvqqyNwMQc/6x9NYCiuC7bg8jz
	 lZj7AJmCWZC3ZK1JxV6IkaBPQZL8a0ceMrTaPUq+n1SLrEpbaXIFTgl83YrbA/V/U1
	 Eh1/OHRryU8zQ==
Date: Mon, 7 Sep 2026 09:39:26 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 Maili PCIe PHY compatibles
Message-ID: <ty4nwjn72q7iilztwihisg3hf6tiva7jpbudzhlyfawupwpouq@2sp5agbce3cd>
References: <20260903-vdev_next-20260902_new_post-v3-1-108223cbcc10@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260903-vdev_next-20260902_new_post-v3-1-108223cbcc10@oss.qualcomm.com>
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

T24gVGh1LCBTZXAgMDMsIDIwMjYgYXQgMTA6NTY6MDBBTSArMDUzMCwgVml2ZWsgUGVybmFtaXR0
YSB3cm90ZToKPiBBZGQgcWNvbSxtYWlsaS1xbXAtZ2VuM3gyLXBjaWUtcGh5IGFuZCBxY29tLG1h
aWxpLXFtcC1nZW40eDEtcGNpZS1waHkKPiBjb21wYXRpYmxlIHN0cmluZ3MgZm9yIHRoZSBNYWls
aSBTb0MgUENJZSBRTVAgUEhZLgo+IAo+IE1haWxpIHJldXNlcyB0aGUgSGF3aSBRTVAgUENJZSBQ
SFkgaGFyZHdhcmUsIHNvIHRoZSBjb21wYXRpYmxlcyB1c2UKPiB0aGUgdHdvLWl0ZW0gZmFsbGJh
Y2sgZm9ybWF0IHdpdGggSGF3aSBhcyB0aGUgZmFsbGJhY2s6Cj4gCj4gICBxY29tLG1haWxpLXFt
cC1nZW4zeDItcGNpZS1waHkgLT4gcWNvbSxoYXdpLXFtcC1nZW4zeDItcGNpZS1waHkKPiAgIHFj
b20sbWFpbGktcW1wLWdlbjR4MS1wY2llLXBoeSAtPiBxY29tLGhhd2ktcW1wLWdlbjR4MS1wY2ll
LXBoeQo+IAo+IFNpbmNlIHRoZSBhbGxPZiBjb25kaXRpb25zIHVzZSAnY29udGFpbnM6JyB0byBt
YXRjaCBhZ2FpbnN0IHRoZQo+IGNvbXBhdGlibGUgYXJyYXksIGFuZCBNYWlsaSBub2RlcyBhbHdh
eXMgY2FycnkgdGhlIEhhd2kgZmFsbGJhY2sKPiBzdHJpbmcgYXMgdGhlIHNlY29uZCBjb21wYXRp
YmxlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpdmVrIFBlcm5hbWl0dGEgPHZpdmVrLnBlcm5hbWl0
dGFAb3NzLnF1YWxjb21tLmNvbT4KCkFja2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1h
bml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u4K6j
4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
