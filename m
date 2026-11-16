Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5227606A329
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 21:40:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0n7owQcd;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=aOdOeyel
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Oz+SdzrDKRYQeH2Fq7EZBQiVcYD9TUf9L1wxxa96G34=; b=0n7owQcdcxA7209C6pc9fDYlPi
	BM8RuFZCAmuaCInHkgdOwUcViOCxP0x904kbh5i9xBfP6dB7Wse5TcI345XD0hbz+vHhPoW5GFDRa
	gDM1G2yUT9Iz+sKUZbF/Vzgr71tQRG6LhfaKl3xHmOFHf/wfpjdKfCcrdwbqKRwHy69BjH1caoTDx
	NuVCDtQk5uxD9SWC1hqRQ2w2to8gzGym9cbKfbwaZGFTtRFY6E8TzEcQiJ6pniVWmko26z/2umA1/
	3MmHBbtAkq7WG0YXMwr/kjeJqpXkzl7no54NOQcBWvsCxD2qT7EGV4KwH7dECoZ3mvEPIVAcEp1z/
	HmjDn9pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4R8-000000040eP-1Pvt;
	Mon, 16 Nov 2026 21:40:26 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4R6-000000040e9-3NSD
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 21:40:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id F005F628E3;
	Mon, 16 Nov 2026 21:40:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6C421F000C4;
	Mon, 16 Nov 2026 21:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794865223;
	bh=4RYV0U5y2gEEfaOBMXxvhBpKDkAMS/N8y4I/IouMi+s=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=aOdOeyelYAfPwz2W+YstEJYH+kSp4WUrsFnukZQ75OlIR6peWJ3YdH4ZCgRnxv1mC
	 La3GGIy6SB7RGI8/qaFXt+vhn+gBonqG1uHAbQuOKcg2IsHxrsHS7geYYw5na3piMb
	 QJksPmKozqTMGe3mFH7+x8/IY/4e63gqvmsX8DeAkdl2GJtdyTjVQowshrYdup0ypp
	 /r815KDInYrHPcvWf+g4rTJrE8yHhlQvienYjc9Ul0M/6GLZHl0PJXn2wmyUPL/Hdh
	 WkdwDzP90OXI4N5N/qH+txNrie5XbDgwGBipJ7hYOd7zaAzQV2XcFli80gZnOfVINi
	 HsVRlTxzpEhBg==
Message-ID: <sashiko-outbox-217738@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 16/16] arm64: dts: qcom: Add Samsung Galaxy XR
To: "Stanislav Aleksandrov" <lightofmysoul@gmail.com>, "Bjorn Andersson" <andersson@kernel.org>, "Konrad
 Dybcio" <konradybcio@kernel.org>, "Abel Vesa" <abelvesa@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Robert Marko" <robimarko@gmail.com>, "Guru
 Das Srinagesh" <linux@gurudas.dev>, "Thomas Gleixner" <tglx@kernel.org>, "Radu
 Rendec" <radu@rendec.net>, "Lee Jones" <lee@kernel.org>, "Will Deacon" <will@kernel.org>, "Robin
 Murphy" <robin.murphy@arm.com>, =?utf-8?b?Sm9lcmcgUm9lZGVsIChBTUQp?= <joro@8bytes.org>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>, "Wesley Cheng" <wesley.cheng@oss.qualcomm.com>, "Vinod
 Koul" <vkoul@kernel.org>, "Neil Armstrong" <neil.armstrong@linaro.org>, "Manivannan
 Sadhasivam" <mani@kernel.org>, "Alim Akhtar" <alim.akhtar@samsung.com>, "Bart
 Van Assche" <bvanassche@acm.org>, "Bean Huo" <beanhuo@micron.com>, "Stanley
 Jhu" <stanleyjhu@google.com>, "Herbert Xu" <herbert@gondor.apana.org.au>, "David
 S. Miller" <davem@davemloft.net>, "Rafael J. Wysocki" <rafael@kernel.org>, "Viresh
 Kumar" <viresh.kumar@linaro.org>, "Amit Kucheria" <amitk@kernel.org>, "Thara
 Gopinath" <thara.gopinath@gmail.com>, "Daniel Lezcano" <daniel.lezcano@kernel.org>, "Zhang
 Rui" <rui.zhang@intel.com>, "Lukasz Luba" <lukasz.luba@arm.com>, "Georgi
 Djakov" <djakov@kernel.org>, "Sibi Sankar" <sibi.sankar@oss.qualcomm.com>, "Ulf
 Hansson" <ulfh@kernel.org>
Cc: devicetree@vger.kernel.org, mfd@lists.linux.dev, linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org, linux-crypto@vger.kernel.org, olteanv@gmail.com
In-Reply-To: <20261116-halliday-dts-v2-16-2c92438c6c46@gmail.com>
References: <20261116-halliday-dts-v2-0-2c92438c6c46@gmail.com>
 <20261116-halliday-dts-v2-16-2c92438c6c46@gmail.com>
Date: Mon, 16 Nov 2026 21:40:21 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0xvd10gYXJtNjQ6IGR0czogcWNvbTog
aGFsbGlkYXktc2Ftc3VuZy14cnZzdDI6IGludmFsaWQgY2hhc3Npcy10eXBlCiAgdmFsdWUgaGVh
ZHNldAotLQoKY29tbWl0IGE4OGNhNjVkMWY2ZDE3ZDRjZmUwY2U5MDdjNTIzZjg2OThlNDY1YTgK
QXV0aG9yOiBTdGFuaXNsYXYgQWxla3NhbmRyb3YgPGxpZ2h0b2ZteXNvdWxAZ21haWwuY29tPgoK
YXJtNjQ6IGR0czogcWNvbTogQWRkIFNhbXN1bmcgR2FsYXh5IFhSCgpUaGlzIGNvbW1pdCBhZGRz
IHRoZSBkZXZpY2UgdHJlZSBmb3IgdGhlIFF1YWxjb21tIEhhbGxpZGF5LWJhc2VkIFNhbXN1bmcK
R2FsYXh5IFhSIGhlYWRzZXQsIHdpdGggaW5pdGlhbCBzdXBwb3J0IGZvciBQTUlDcywga2V5cywg
VVNCIHBlcmlwaGVyYWwgbW9kZSwKYW5kIFVGUyBzdG9yYWdlLgoKPiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm02NC9ib290L2R0cy9xY29tL2hhbGxpZGF5LXNhbXN1bmcteHJ2c3QyLmR0cyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcWNvbS9oYWxsaWRheS1zYW1zdW5nLXhydnN0Mi5kdHMKPiBuZXcgZmls
ZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLjZmY2MxYWFhZmQ1OWMKPiAtLS0g
L2Rldi9udWxsCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2hhbGxpZGF5LXNhbXN1
bmcteHJ2c3QyLmR0cwo+IEBAIC0wLDAgKzEsMjE4IEBACgpbIC4uLiBdCgo+ICsvIHsKPiArCW1v
ZGVsID0gIlNhbXN1bmcgR2FsYXh5IFhSIjsKPiArCWNvbXBhdGlibGUgPSAic2Ftc3VuZyx4cnZz
dDIiLCAicWNvbSxoYWxsaWRheSI7Cj4gKwljaGFzc2lzLXR5cGUgPSAiaGVhZHNldCI7CgpbU2V2
ZXJpdHk6IExvd10KRG9lcyBjaGFzc2lzLXR5cGUgPSAiaGVhZHNldCIgZmFpbCBkdGJzX2NoZWNr
IHZhbGlkYXRpb24/CgpUaGUgRGV2aWNldHJlZSBTcGVjaWZpY2F0aW9uIGFuZCBkdHNjaGVtYSAo
c2NoZW1hcy9yb290LW5vZGUueWFtbCkgcmVzdHJpY3QKY2hhc3Npcy10eXBlIHRvIGRlc2t0b3As
IGxhcHRvcCwgY29udmVydGlibGUsIHNlcnZlciwgdGFibGV0LCBoYW5kc2V0LCB3YXRjaCwKZW1i
ZWRkZWQsIHRlbGV2aXNpb24sIGFuZCBhbGwtaW4tb25lLiAgT3RoZXIgUXVhbGNvbW0gaGVhZHNl
dCBkZXZpY2UgdHJlZXMKZWl0aGVyIG9taXQgY2hhc3Npcy10eXBlIChzbTg2NTAtdmFsdmUtZGVj
a2FyZC5kdHMpIG9yIHVzZSAiZW1iZWRkZWQiCihzYXIyMTMwcC1xYXIyMTMwcC5kdHMpLgoKLS0g
ClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2
MTExNi1oYWxsaWRheS1kdHMtdjItMC0yYzkyNDM4YzZjNDZAZ21haWwuY29tP3BhcnQ9MTYKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
