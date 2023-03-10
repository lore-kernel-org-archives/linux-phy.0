Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA626C64EC4
	for <linux-phy@archiver.kernel.org>; Fri, 10 Mar 2023 09:53:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HT8YphDWciVCsnjRjvAuWoaplJd1T85PqHZJLdzrirs=; b=FIhJMrGCwYidCf
	v+VdG4W4QV2EQdmQE43Tg1uTEzjBCoiryX57RaORJ6jv/bmaQUD8wBZQsQPS7b/t0P46YfkvucoB5
	1MKC5zfaqzeKiJw4wb/GWEg/VMwC9ImY8+m5As6H9nON6PtaWjMCxZXjKvykUEd8yZhEipb4Onw1r
	8tTaDxRdfjRC6QjjV0QcyXxo2TW11wcIZ56vnhz1dRarq+pqn4mEdtCgnKwE3Cv1uFn3yKP1ZBYBS
	eyJ+ZfTrSwcoE14e7vuxHulfov1eN9cA3o/YbkBqz6fwi4YyCL+hz/zV1AN6kzAKSbT9SHNFHQHZ9
	xKA9/XgTF0jXsEnh3ktQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paZRO-00E40T-4u
	for linux-phy@archiver.kernel.org; Fri, 10 Mar 2023 09:53:34 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paZRB-00E3vJ-HZ; Fri, 10 Mar 2023 09:53:22 +0000
Received: from [192.168.86.246] (cpc87451-finc19-2-0-cust61.4-2.cable.virginm.net [82.11.51.62])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: tanureal)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 27FED660305B;
	Fri, 10 Mar 2023 09:53:19 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1678441999;
	bh=yTOKzUGzEBdFLHPokAIe0S9LUwi4oC8dcd7Rms8wGGE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=edTm25Ezw29SJrUN31+J6cyYULJUxBgIMwZ9dJFyVd4onZOYT+3tLFjuf+HPlZH7k
	 luRaOP4miwxydIwZm1IdkpVWolXDNosYMBJrcoQyJTSiDM/jtxvGZ3z9ZWWPsQRpQv
	 c4hSayZbLAffR0x0+IAn5GkEwdLZ52+FesOHymfKPrA+IcKvk6VD5fyQm+mNAwznXz
	 TXvIv99kYtKPnpEZ6o/UNbeE6oVTgrnR97533VIgUHFVdRK3xFx6Y+TKrWtsFSeRI7
	 tDRIMKUrLWJABJaCiovqsxFKn2n9Bz/v26fL7QFPN3WZwH78za3Iy6HQrxpwKD2cTe
	 +2+ACL/I4EcBQ==
Message-ID: <37adba14-1add-187c-01b5-5109be38018e@collabora.com>
Date: Fri, 10 Mar 2023 09:53:16 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/7] irqchip/gic-v3: Add a DMA Non-Coherent flag
Content-Language: en-US
To: Marc Zyngier <maz@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Thomas Gleixner <tglx@linutronix.de>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof Wilczynski <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Qu Wenruo <wqu@suse.com>, Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 kernel@collabora.com, Robin Murphy <robin.murphy@arm.com>
References: <20230310080518.78054-1-lucas.tanure@collabora.com>
 <20230310080518.78054-2-lucas.tanure@collabora.com>
 <a43dee4ef0e72c393dea6ce924347f81@kernel.org>
From: Lucas Tanure <lucas.tanure@collabora.com>
In-Reply-To: <a43dee4ef0e72c393dea6ce924347f81@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_015321_732698_386953A2 
X-CRM114-Status: GOOD (  14.35  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMTAtMDMtMjAyMyAwODo1NiwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IE9uIDIwMjMtMDMtMTAg
MDg6MDUsIEx1Y2FzIFRhbnVyZSB3cm90ZToKPj4gVGhlIEdJQzYwMCBpbnRlZ3JhdGlvbiBpbiBS
SzM1NngsIHVzZWQgaW4gcmszNTg4LCBkb2Vzbid0IHN1cHBvcnQKPj4gYW55IG9mIHRoZSBzaGFy
ZWFiaWxpdHkgb3IgY2FjaGVhYmlsaXR5IGF0dHJpYnV0ZXMsIGFuZCByZXF1aXJlcwo+PiBib3Ro
IHZhbHVlcyB0byBiZSBzZXQgdG8gMGIwMCBmb3IgYWxsIHRoZSBJVFMgYW5kIFJlZGlzdHJpYnV0
b3IKPj4gdGFibGVzLgo+Pgo+PiBUaGlzIGlzIGxvb3NlbHkgYmFzZWQgb24gcHJpb3Igd29yayBm
cm9tIFhpYW9Eb25nIEh1YW5nIGFuZAo+PiBQZXRlciBHZWlzIGZpeGluZyB0aGlzIGlzc3VlIHNw
ZWNpZmljYWxseSBmb3IgUm9ja2NoaXAgMzU2eC4KPiAKPiBOby4KPiAKPiBJZiB3ZSBhcmUgZ29p
bmcgdG8gZG8gKmFueXRoaW5nKiBhYm91dCB0aGlzIHRoaW5nLCBpdCBpcyBieQo+IGRlc2NyaWJp
bmcgdGhlIGFjdHVhbCB0b3BvbG9neS4KV2hhdCBkbyB5b3UgbWVhbiBieSBkZXNjcmliZSB0aGUg
dG9wb2xvZ3k/CldoYXQga2luZCBvZiBpbmZvcm1hdGlvbiBhcmUgeW91IGV4cGVjdGluZz8KCgpB
bmQgaXQgaGFzIHRvIHdvcmsgZm9yIGJvdGggRFQKPiBhbmQgQUNQSS4KPiAKPiBBbHRlcm5hdGl2
ZWx5LCB0aGlzIGlzIGFuIGVycmF0dW0uCj4gCj4gIMKgwqDCoMKgwqDCoMKgIE0uCgoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
