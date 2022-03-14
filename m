Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7966BC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 14 Mar 2022 02:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mO25Jb1/WhlYoB97EzVVqzTOTKteY06+ClTEpbWuWM4=; b=hQRsg9QNua7K1T
	4LzNfHAdpL5jmsvX8iwG0Lg8bMZBivDQ9u9gW1dvro0TFM3/i1Rn11ATufLIiHN8W0daP+/oh0t4M
	ADV9TKE+ioyMckuMLyazQaQjxAm/Rl4AFmW1oJgqgVn8jy5Xl32GwMf2whNDPHxm9Yk7TXO4PuzV8
	xA09dzxmne5aRl6SL0JGP7HfvQCbj08k1edtU7Mw6WqKOnos/4NyyKOvnhnM98ipA0rrWLMBaE9Lt
	rJlQFDK4KTjKok5LJNYGPWKMWi5enZUSThedEmDrSK5hpLazA1mJ4q6qK577U+gr/yO4OugWFnDZS
	2qSDN7ToBkjMM7bkqIRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTao6-003feO-W3; Mon, 14 Mar 2022 02:51:38 +0000
Received: from phobos.denx.de ([2a01:238:438b:c500:173d:9f52:ddab:ee01])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTanu-003fcB-Sf; Mon, 14 Mar 2022 02:51:28 +0000
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: marex@denx.de)
 by phobos.denx.de (Postfix) with ESMTPSA id 03F5883915;
 Mon, 14 Mar 2022 03:51:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
 s=phobos-20191101; t=1647226283;
 bh=KSQNibox4vR/BFhrKO6qxUP+IKliYxf0YRgln+pbFn0=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=f0hhcYCB+iUlCfEZUMA1qclYs7qZgOPITqxryBs8JfWxvKSG0zTNUo6R+YGwn0Mlq
 NzhQPvwcz+koZQbVNwHm8G94bhZjWAh6T1VpTAjBqklw4G/b4kjNirfTaAbHowPQRG
 rsOatrhuIp6r9gn/mL1JO7PJD3hyqnlJmiw0F8/RIQKhag90CtdJOvq9AqaKov3V5q
 PFNexIzFtsfqQ6a131h157K1PAdNalhhSJ2u8QuDlX83XAu6JFp87cNtbs4uhoAsac
 Ng6At8GjsGUhAwAz5ZPe5V/PdjBaA+8P+lXH/NS1126E9oPBbKgNMJJI2z445qvEEx
 ZNLcBM4vPpEOw==
Message-ID: <7ebd66d1-0b16-9b6b-ff0a-4901f054217a@denx.de>
Date: Mon, 14 Mar 2022 03:51:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH] phy: freescale: imx8m-pcie: Handle
 IMX8_PCIE_REFCLK_PAD_UNUSED
Content-Language: en-US
To: Hongxing Zhu <hongxing.zhu@nxp.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
Cc: Fabio Estevam <festevam@denx.de>, Kishon Vijay Abraham I <kishon@ti.com>, 
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 dl-linux-imx <linux-imx@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20220312013812.169671-1-marex@denx.de>
 <AS8PR04MB86766F6033FF0FDAB1E0693B8C0F9@AS8PR04MB8676.eurprd04.prod.outlook.com>
From: Marek Vasut <marex@denx.de>
In-Reply-To: <AS8PR04MB86766F6033FF0FDAB1E0693B8C0F9@AS8PR04MB8676.eurprd04.prod.outlook.com>
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220313_195127_169883_D6B8E16F 
X-CRM114-Status: GOOD (  14.29  )
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

T24gMy8xNC8yMiAwMjo1MSwgSG9uZ3hpbmcgWmh1IHdyb3RlOgo+PiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQo+PiBGcm9tOiBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5kZT4KPj4gU2VudDog
MjAyMuW5tDPmnIgxMuaXpSA5OjM4Cj4+IFRvOiBsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
Zwo+PiBDYzogTWFyZWsgVmFzdXQgPG1hcmV4QGRlbnguZGU+OyBGYWJpbyBFc3RldmFtIDxmZXN0
ZXZhbUBkZW54LmRlPjsKPj4gS2lzaG9uIFZpamF5IEFicmFoYW0gSSA8a2lzaG9uQHRpLmNvbT47
IE1hcmNlbCBaaXN3aWxlcgo+PiA8bWFyY2VsLnppc3dpbGVyQHRvcmFkZXguY29tPjsgZGwtbGlu
dXgtaW14IDxsaW51eC1pbXhAbnhwLmNvbT47IFBlbmcgRmFuCj4+IDxwZW5nLmZhbkBueHAuY29t
PjsgSG9uZ3hpbmcgWmh1IDxob25neGluZy56aHVAbnhwLmNvbT47IFNoYXduIEd1bwo+PiA8c2hh
d25ndW9Aa2VybmVsLm9yZz47IFZpbm9kIEtvdWwgPHZrb3VsQGtlcm5lbC5vcmc+Owo+PiBsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4gU3ViamVjdDogW1BBVENIXSBwaHk6
IGZyZWVzY2FsZTogaW14OG0tcGNpZTogSGFuZGxlCj4+IElNWDhfUENJRV9SRUZDTEtfUEFEX1VO
VVNFRAo+Pgo+PiBUaGUgJ2ZzbCxyZWZjbGstcGFkLW1vZGUnIERUIHByb3BlcnR5IHVzZWQgdG8g
c2VsZWN0IGNsb2NrIHNvdXJjZSBmb3IgUENJZSBQSFkKPj4gY2FuIGhhdmUgZWl0aGVyIG9mIHRo
cmVlIHZhbHVlcywgSU1YOF9QQ0lFX1JFRkNMS19QQURfSU5QVVQsCj4+IElNWDhfUENJRV9SRUZD
TEtfUEFEX09VVFBVVCwgSU1YOF9QQ0lFX1JFRkNMS19QQURfVU5VU0VELiBUaGUgZmlyc3QKPj4g
dHdvIG9wdGlvbnMgYXJlIGhhbmRsZWQgY29ycmVjdGx5IGJ5IHRoZSBkcml2ZXIsIHRoZSBsYXN0
IG9uZSBpcyBub3QsIHRoaXMgcGF0Y2gKPj4gaW1wbGVtZW50cyBzdXBwb3J0IGZvciB0aGUgbGFz
dCBvcHRpb24uCj4+Cj4+IFRoZSBJTVg4X1BDSUVfUkVGQ0xLX1BBRF9JTlBVVCBtZWFucyBQQ0lF
X1JFU1JFRiBpcyBQSFkgY2xvY2sgaW5wdXQsCj4+IHRoZSBJTVg4X1BDSUVfUkVGQ0xLX1BBRF9P
VVRQVVQgbWVhbnMgUEhZIGNsb2NrIGFyZSBzb3VyY2VkIGZyb20gU29DCj4+IGludGVybmFsIFBM
TCBhbmQgb3V0cHV0IHRvIFBDSUVfUkVTUkVGIGV4dGVybmFsIElPIHBpbi4gVGhlIGxhc3QKPj4g
SU1YOF9QQ0lFX1JFRkNMS19QQURfVU5VU0VEIGlzIGEgY29tYmluYXRpb24gb2YgcHJldmlvdXMg
dHdvLCBQSFkgY2xvY2sKPj4gYXJlIHNvdXJjZWQgZnJvbSBTb0MgaW50ZXJuYWwgUExMIGFuZCBu
b3Qgb3V0cHV0IGFueXdoZXJlLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBNYXJlayBWYXN1dCA8bWFy
ZXhAZGVueC5kZT4KPiBIaSBNYXJlazoKPiBUaGFua3MgZm9yIHlvdXIgcGF0Y2guCj4gSSBhc3N1
bWUgdGhhdCB5b3UgaGFkIHRlc3RlZCB0aGlzIElNWDhfUENJRV9SRUZDTEtfUEFEX1VOVVNFRCBv
cHRpb24uCgpZZXMKCj4gVGhlIENMS19OL1AgcGFkcyBhcmUgbm90IGNvbm5lY3RlZCBvbiB0aGUg
dGVzdGVkIGJvYXJkLCByaWdodD8KClRoZXkgYXJlIGNvbm5lY3RlZCBmcm9tIE1YOE1QIFNvQyB0
byBNaW5pUENJZSBzbG90LgpUaGVyZSBpcyBubyBleHRlcm5hbCBjbG9jayBzb3VyY2UgbGlrZSBv
biB0aGUgRVZLLCB0aGUgTVg4TVAgaW50ZXJuYWwgClBMTCBpcyB0aGUgY2xvY2sgc291cmNlLgoK
PiBCVFcsIGl0J3MgYmV0dGVyIHRvIGFkZCB0aGUgRml4ZXMgdGFnIGludG8gdGhlIGNvbW1pdCBs
b2cuCgpEbyB5b3UgdGhpbmsgdGhpcyBzaG91bGQgYmUgY29uc2lkZXJlZCBhIGJ1Z2ZpeCA/Cgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
