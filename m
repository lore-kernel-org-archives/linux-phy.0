Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E23AEC25B47
	for <linux-phy@archiver.kernel.org>; Fri, 27 Oct 2023 12:27:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yHpKAA5tBrsmN30OpP30H0CFlOJRQaZTX/dAX7cPWio=; b=yCzdcyI/wUcFp8
	HsKFuSN6lq2clZznRUu8/AKER8Z4AKml6zty8jlwVEyPBzmbpp+/t3EXsqOe7l79684pqmpdOsUT3
	qme1tgxl3+aCVwTyhtw2Q45EeSUxXKDOaTzVrkOHR9B+GYV/8b4DsJckQZQo/eJU4pheamQyhZ5zo
	2h2zDLNsVxF4WuhzAwtR/rhfybHEyH+/Zbv9XPlgiymSeHbU5q2q2TMR5PsI3chKCZbLrZtY/Ptsa
	IDusBIkky8+IYv6xp1qiqJqhdbKsN6V4EvhMOYIvzTTnbhlhCv7ueYKToklzvsr7bPKvhZC9hsfip
	Gz056C4jYDqL9XX1vv7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qwLwB-00GNlH-22;
	Fri, 27 Oct 2023 12:27:39 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qwLw8-00GNig-2G
	for linux-phy@lists.infradead.org;
	Fri, 27 Oct 2023 12:27:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 9C13CCE383A;
	Fri, 27 Oct 2023 12:27:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C11E8C433CA;
	Fri, 27 Oct 2023 12:27:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698409645;
	bh=erg1rYgP74To6KDDM1KXYV8FQqFk+IL93d/OT4RF8Iw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ta10opSzgCPzK+RJbeKtJ7EMbjSh54GhTiZuuIcrhdyLroX493IECvCcpfvb7tmQG
	 qk2JfMz57us1lj28G4ln6dH9FnssPpgunuDN12rQl541JYJdJL2J87Wkvyc9DyBvrm
	 7fVfO7+iYSNcJSfOkcWnpglQISSkfjmlfD/P3VRyobo2OqU3tcsz0Zjh/Uhv3Fb/Uq
	 IK1Q0KN3Y3cvlCHKKU70/zP6YqhdndEkKNAS4WkdynltFe0fVootg5Bg+pIi5xVlCK
	 2xvXBkcDqJkOCkpPrjaENfuPjqgnmZpe2ebi1jrMhwU3z0p/S8rhl9UPtgh1VTj2/4
	 prrA0FqagnZMw==
Date: Fri, 27 Oct 2023 17:57:11 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Mrinmay Sarkar <quic_msarkar@quicinc.com>,
	Manivannan Sadhasivam <mani@kernel.org>, agross@kernel.org,
	andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, quic_shazhuss@quicinc.com,
	quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com,
	quic_nayiluri@quicinc.com, dmitry.baryshkov@linaro.org,
	robh@kernel.org, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com, quic_parass@quicinc.com,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, mhi@lists.linux.dev,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 4/5] PCI: epf-mhi: Add support for SA8775P
Message-ID: <20231027122711.GB17527@thinkpad>
References: <1697715430-30820-1-git-send-email-quic_msarkar@quicinc.com>
 <1697715430-30820-5-git-send-email-quic_msarkar@quicinc.com>
 <20231025075603.GD3648@thinkpad>
 <610b0621-b140-ee9b-c450-0fec6862c4fc@quicinc.com>
 <fb0647b5-67c4-4558-ac41-ee2b21446ee2@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fb0647b5-67c4-4558-ac41-ee2b21446ee2@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231027_052736_953875_A8FB7F9B 
X-CRM114-Status: GOOD (  14.90  )
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

T24gVGh1LCBPY3QgMjYsIDIwMjMgYXQgMDE6MTA6MDBQTSArMDIwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiAKPiAKPiBPbiAxMC8yNi8yMyAwNzozMCwgTXJpbm1heSBTYXJrYXIgd3JvdGU6Cj4g
PiAKPiA+IE9uIDEwLzI1LzIwMjMgMToyNiBQTSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3Rl
Ogo+ID4gPiBPbiBUaHUsIE9jdCAxOSwgMjAyMyBhdCAwNTowNzowOVBNICswNTMwLCBNcmlubWF5
IFNhcmthciB3cm90ZToKPiA+ID4gPiBBZGQgc3VwcG9ydCBmb3IgUXVhbGNvbW0gU25hcGRyYWdv
biBTQTg3NzVQIFNvQyB0byB0aGUgRVBGIGRyaXZlci4KPiA+ID4gPiBTQTg3NzVQIGhhcyB0aGUg
UElEICgweDAzMDYpIGFuZCBzdXBwb3J0cyBIRE1BLiBDdXJyZW50bHksIGl0IGhhcwo+ID4gPiBJ
cyB0aGUgUElEIGZpeGVkPyBJIHRob3VnaHQgeW91IGp1c3Qgd2FudCB0byByZXVzZSB0aGUgU0RY
eHggUElEIGluIHRoZQo+ID4gPiBtZWFudGltZS4KPiA+ID4gCj4gPiA+IC0gTWFuaQo+ID4gCj4g
PiBUaGUgUElEIGZvciBTQTg3NzVwIEVQIGlzIG5vdCBkZWNpZGVkIHlldC4gU28gdXNpbmcgMHgw
MzA2IFBJRCBtZWFudGltZS4KPiBJZiBpdCdzIG5vdCBkZWNpZGVkLCB3aHkgc2hvdWxkIGl0IGdv
IHVwc3RyZWFtIHRoZW4/IFdvdWxkIHRoYXQKPiBub3QgYnJlYWsgdGhlIGhvc3RzJyBleHBlY3Rh
dGlvbnMgd2hlbiB0aGUgRVAgZGV2aWNlIGlzIHVwZGF0ZWQ/Cj4gCgpObywgaXQgd29uJ3QuIElm
IHRoZSBkZXZpY2UgdXNlcyBleGlzdGluZyBQSUQsIHRoZW4gdGhlIGV4aXN0aW5nIGhvc3QgZHJp
dmVycwptYXRjaGluZyB0aGUgUElEIHdpbGwgYmUgdXNlZCBmb3IgdGhpcyBkZXZpY2UuIFdoZW4g
dGhlIFBJRCBnZXRzIGNoYW5nZWQsIHRoZW4KdGhlIGhvc3QgZHJpdmVycyBuZWVkIHRvIGJlIHVw
ZGF0ZWQgdG9vLgoKLSBNYW5pCgo+IEtvbnJhZAoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+Cu
qeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
