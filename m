Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05314C982D0
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 01:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4PY/FPCThXvHshjfgYVPvCo/5IPaPkj7wAidRur0XOg=; b=Odv5kj5+iHNzja
	wZWmSdJqAYmqM95GtKdeHBXZRj/lKAeQQV7nYteBBUXMqP/AUakuYSkzTJCexpO8dnoBuGsAoEmeI
	MqDKVsYMyysoLeOuELBhyLxF0occKhi66H2Dh3hYV+yHh8ikFPL0WUNfwV1Fmy/BIwhoWV8Q71g+B
	5B+U1/bQudwp0tgDOMhacRl+aikxgc87oEwbeGSGSNf0Vqf4Im0ryh4w+0wCN6nWFKtL4hYcrBRW6
	USoJOk3pbIGyewAdbC7CPZa5qHTn/3VJkzl3YxaIIB/2JSt6Ex298UGwkuLkgSU9Bm3MK7YWeOMXV
	pC9gbxcHE5cVvI/tqT0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7NWh-0000000DAVS-1MZg;
	Fri, 18 Sep 2026 01:36:31 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7NWf-0000000DAUH-47ds
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 01:36:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 20943601EF;
	Fri, 18 Sep 2026 01:36:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 094971F000FF;
	Fri, 18 Sep 2026 01:36:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789695388;
	bh=6IaAWEaBiOKUnROTpq0L5Ofe2m/RZ5CV/7s5WMrgEQc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Zf+ry3KqTl5J/hsN3Wse1/Fla8guEupSU5Ey4/qM2FcS50i3QCmnovNNbKbomSfLj
	 9wIrPW/1G7tPeB0S6zpvJcR277uqmDQd74JiPfarN4lg6BI+1SqwndJCCPI8swGM/4
	 dLjUkL8qP0IYwfgXcN8eZyHvL3SpRVKvL3QX9SjoPoViH/eyhKi9keRGg15F9AScBh
	 eepP9CCmxo2/bI5SmoTTLZYUZOBSxK9exgQA6yYkU4s5q+OVmdfNjDzms7IPYUR8ma
	 0aV1Zf8cuOAz0nl35JoJb8fOQsuHJIxw/FJ9jZXRB8SZrypLhNDGi/Y1Y2/2cvqtP6
	 byOeGpQZIRTRw==
Date: Fri, 18 Sep 2026 03:36:09 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Bryan O'Donoghue <bod@kernel.org>, 
	Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>, linux-arm-msm@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-phy@lists.infradead.org, 
	Krzysztof Kozlowski <krzk@kernel.org>, stable@vger.kernel.org
Subject: Re: [PATCH v19 0/5] Add phy_get_by_of_node and devm helper
Message-ID: <cqoquu7hzclx54km763745dupaxahv7y4xbzq7vxg23isptgqz@j6los24mhnnn>
References: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v19-0-21ad8a76e941@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v19-0-21ad8a76e941@linaro.org>
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

T24gVGh1LCBTZXAgMTcsIDIwMjYgYXQgMDQ6MjU6MDVQTSArMDEwMCwgQnJ5YW4gTydEb25vZ2h1
ZSB3cm90ZToKPiBUaGlzIHNlcmllcyBoYXMgZXZvbHZlZCBmcm9tIGEgQ0FNU1Mgc3RhbmRhbG9u
ZSBzZXJpZXMgdG8gYSBzZXJpZXMgdGhhdCBpcwo+IG1vc3RseSBvbiB0aGUgUEhZIHNpZGUgbm93
LCBzbyBJJ3ZlIHNwbGl0IHRoZSBzZXJpZXMgdXAgdG8gcmVmbGVjdCB0aGF0Cj4gZmFjdC4KPiAK
PiBTdGFydGluZyBvZmYgYnkgZml4aW5nIGEgbG9uZy1zdGFuZGluZyB1c2UtYWZ0ZXItZnJlZSBy
YWNlLWNvbmRpdGlvbiBpbiB0aGUKPiBwaHkgY29yZSBmbGFnZ2VkIGJ5IFNhc2hpa28gaW4gdjEz
LiBXaGlsZSBteSBzZXJpZXMgZG9lc24ndCBpbnRyb2R1Y2UgdGhlCj4gYnVnIGl0IHNlZW1zIGFw
cHJvcHJpYXRlIHRvIGFkZHJlc3MgaXQgYW55d2F5IG9uY2UgZmxhZ2dlZC4KPiAKPiBPbmNlIGFk
ZHJlc3NlZCB0d28gbmV3IGhlbHBlciBmdW5jdGlvbnMgYXJlIGludHJvZHVjZWQgdG8gdGhlIFBI
WSBjb3JlIHRvCj4gZW5hYmxlIGZpbmRpbmcgb2YgYSBQSFkgdXNpbmcgdGhlIG1lZGlhIGdyYXBo
Lgo+IAo+IEZpbmFsbHkgdGhlIHVzYWdlIG9mIHRoYXQgbmV3IEFQSSBpcyBzaG93biB3aXRoIENB
TVNTLgo+IAoKTG9va3MgbGlrZSB5b3UgY29tcGxldGVseSBtaXNzZWQgYWxsIG15IGNvbW1lbnRz
IGdpdmVuIGluIHYxNyA6LwoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+N
IOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
