Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BFF3C7EE25
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jun 2023 06:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KTBbICzXm1ieBDh9YaNO30/U6Idw316nL06PRIyztUk=; b=v7cd6uzYkvuGAG
	QQ9uovmPuVnFsYf45tWc7zr9bXVzsvJSIOCd4g0+cy7pR9AjSWlE/32XBELs2LywVIqBWCWmQTMRw
	+bkp097wI2R39v9+O1NBvHAULDJKqRI2deKVIGb4E7U/HmnAEJ9JPgNF4ON1pvOqJRqX/n27bFSAl
	6gIjI+o7uJPOs71CFEC0B8c9jG3MyqIMxwNMRjXWviVxvsjPM1USQW7Td6PntAOqIYsbWQMktv4tF
	34c933791r7svDX0SiQDtf6pEAzu2p5nH6HfEvlv3eOWr2SryJSILwecxNPGez3Cth0rA4hwfBt+Q
	8X8K/tNiB19DKQLHWPWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q79Ye-008K3Z-0h;
	Thu, 08 Jun 2023 06:55:44 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q79Yb-008K2V-1n
	for linux-phy@lists.infradead.org;
	Thu, 08 Jun 2023 06:55:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C2BB060D3A;
	Thu,  8 Jun 2023 06:55:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCD5EC433D2;
	Thu,  8 Jun 2023 06:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686207340;
	bh=tmC0JvlkXc0YDH3wEj4riXVeHJFjJuQ3P/QMfxnJTnY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=uLxux5y/J+241Ipaq23GUjH/N6pW3LVuldmj0HgOYZGj5x6xsOlyXO8CyE6BKyZrl
	 Pta16gpgP4K50GY/u0U6juTGBNHndwaiVuxZZxbjqtxfVP/tKAa3/qk+PwepqHCizN
	 YykGrfx2ZmAOVfafO4TAgZmkh6UZfM8QwJE5Lx8l+85J4hJvI6rTm95LYFhrbtZ6x8
	 cGBjszSvEX+1FInA7TLEmpAFl5D8Dz/tG27IrVWfuI+f1kCilUVDyMACQSg+9oj6sS
	 bwj8bsZ6IDhYkectj1Gg+pWEM59Q6qf5MWsK7FOvj3Que2AZqdLn32mVVLJOr0FPuT
	 7eDUmN7Sv3BPA==
Message-ID: <1069d6fa-7b17-00de-ad0b-e91794fae9f2@kernel.org>
Date: Thu, 8 Jun 2023 08:55:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v3 2/5] phy: realtek: usb: Add driver for the Realtek SoC
 USB 2.0 PHY
Content-Language: en-US
To: =?UTF-8?B?U3RhbmxleSBDaGFuZ1vmmIzogrLlvrdd?= <stanley_chang@realtek.com>,
 kernel test robot <lkp@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: "oe-kbuild-all@lists.linux.dev" <oe-kbuild-all@lists.linux.dev>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Alan Stern <stern@rowland.harvard.edu>,
 Michael Grzeschik <m.grzeschik@pengutronix.de>,
 Mathias Nyman <mathias.nyman@linux.intel.com>,
 Bagas Sanjaya <bagasdotme@gmail.com>, Matthias Kaehlcke <mka@chromium.org>,
 Ray Chi <raychi@google.com>, Flavio Suligoi <f.suligoi@asem.it>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>
References: <20230607062500.24669-2-stanley_chang@realtek.com>
 <202306080128.Gh3c2H1O-lkp@intel.com>
 <2444f4875f484cc4bf2ff9c52815fa0c@realtek.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <2444f4875f484cc4bf2ff9c52815fa0c@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_235541_657652_A718BBA7 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
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

T24gMDgvMDYvMjAyMyAwNDoxOCwgU3RhbmxleSBDaGFuZ1vmmIzogrLlvrddIHdyb3RlOgo+PiBF
UlJPUjogbW9kcG9zdDogImRldm1fdXNiX2dldF9waHlfYnlfcGhhbmRsZSIKPj4gW2RyaXZlcnMv
cG93ZXIvc3VwcGx5L3dtODMxeF9wb3dlci5rb10gdW5kZWZpbmVkIQo+Pj4+IEVSUk9SOiBtb2Rw
b3N0OiAiZGV2bV91c2JfZ2V0X3BoeSIKPj4gW2RyaXZlcnMvcG93ZXIvc3VwcGx5L2RhOTE1MC1j
aGFyZ2VyLmtvXSB1bmRlZmluZWQhCj4+Cj4+IEtjb25maWcgd2FybmluZ3M6IChmb3IgcmVmZXJl
bmNlIG9ubHkpCj4+ICAgIFdBUk5JTkc6IHVubWV0IGRpcmVjdCBkZXBlbmRlbmNpZXMgZGV0ZWN0
ZWQgZm9yIFVTQl9QSFkKPj4gICAgRGVwZW5kcyBvbiBbbl06IFVTQl9TVVBQT1JUIFs9bl0KPj4g
ICAgU2VsZWN0ZWQgYnkgW3ldOgo+PiAgICAtIFBIWV9SVEtfUlREX1VTQjJQSFkgWz15XQo+Pgo+
IAo+IEkgd2lsbCBhZGQgVVNCX1NVVVBSVCBkZXBlbmRlbmN5IHRvIEtjb25maWcuCgpXaHk/IERv
IHlvdSBzZWUgb3RoZXIgcGh5IGRyaXZlcnMgbmVlZGluZyBpdD8gRmV3IGhhdmUgaXQgYnV0IG1h
bnkKZG9uJ3QsIHNvIHlvdSBzaG91bGQgcmVhbGx5IGludmVzdGlnYXRlIHRoZSByb290IGNhdXNl
LCBub3QganVzdCBhZGQKc29tZSBkZXBlbmRlbmNpZXMuCgpCdWlsZCB0ZXN0IHlvdXIgcGF0Y2hl
cyBsb2NhbGx5IGJlZm9yZSBzZW5kaW5nIGFuZCBpbnZlc3RpZ2F0ZSB0aGUgaXNzdWVzLgoKQmVz
dCByZWdhcmRzLApLcnp5c3p0b2YKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
