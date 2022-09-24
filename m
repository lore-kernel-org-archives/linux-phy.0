Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFB1CC32771
	for <linux-phy@archiver.kernel.org>; Sat, 24 Sep 2022 08:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3QuD4BUAM134JNBQ7Ukf+xVWaA2j8axTzL+Nx16RVrg=; b=SU3bRjQ3kxicWO
	qpSFCnUxjN19wpho592IUKN0ZRvZu0B/0MewX1v2KVlqOpNhU9DEzBspS+foS5FriaVRE93g2IWz1
	zAQ3QxgdD+hWkId3mnD6wSDrdG+AaW/o3KZayDrvopuS3zY1wQHjhLjkib5tbCMG4gDzyDDqtLMiZ
	85Sbjp9gEu7xhswqVKKK0Fl3r0xSma1BjntHsSK9jLhz7bXwWiQvhIgn+XPg+LtI/pMTWOmx075ro
	++R/c5ROXlIvnsx/X4is772YJQw4IoYHV28gkqSpCVdehoTJuiSMHWlIDcv74kr4d62pLaXIp4LO1
	LxTD4Yg8gg0xsIt6C9HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc0ZW-006hTK-1x; Sat, 24 Sep 2022 08:31:38 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc0ZS-006hSd-Dq
	for linux-phy@lists.infradead.org; Sat, 24 Sep 2022 08:31:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 0613AB80DCF;
	Sat, 24 Sep 2022 08:31:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 978E1C433C1;
	Sat, 24 Sep 2022 08:31:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664008290;
	bh=hdBxf6v0OSLy9sbVlJe1DITjukq2kCo1ke7IxJ/KVxA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Wd7qGvMZ6+xWFoHuMIfl8JISngFIV1P4SYndk98fkc6cwgOP28lCc+TP6o8VdW6am
	 aUFQpT9USkQdjgI7o+HgNdANPSpq4s2fgfU2vR/Tx6tlaqkhfNUOIMUwGIK5VcwOoL
	 CbCRZHs2UZM+D6IC6TkuKf3uS2RJTlHzcFREMPYrCwunyO4wSd0TlYZ5QrznlkICFw
	 YTQZ4cSF/OWEHSOtrBk6zVab0isD01mz+TfOAS4mIL5SHt2lEqhByTiFbfdn6i5YHd
	 6UtJQiu3jHj0Dvcld2rnnyxO1jgKIU/tKwGXslTE98oreRCtw85+BX6G98pnJAMxu9
	 k1BZoVANDaC+A==
Received: by pali.im (Postfix)
	id A03108A2; Sat, 24 Sep 2022 10:31:27 +0200 (CEST)
Date: Sat, 24 Sep 2022 10:31:27 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] phy: marvell: phy-mvebu-a3700-comphy: Reset COMPHY
 registers before USB 3.0 power on
Message-ID: <20220924083127.oht57ivvsr4obrjr@pali>
References: <20220920121154.30115-1-pali@kernel.org>
 <20220921050300.riwyofdncxscrwe3@shindev>
 <20220921080557.jdg5wywpa5qxcyo2@pali>
 <Yy6uaaZUbZsBSqrw@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yy6uaaZUbZsBSqrw@matsya>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_013134_809866_63AF28C1 
X-CRM114-Status: GOOD (  32.32  )
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

T24gU2F0dXJkYXkgMjQgU2VwdGVtYmVyIDIwMjIgMTI6NDQ6NDkgVmlub2QgS291bCB3cm90ZToK
PiBPbiAyMS0wOS0yMiwgMTA6MDUsIFBhbGkgUm9ow6FyIHdyb3RlOgo+ID4gT24gV2VkbmVzZGF5
IDIxIFNlcHRlbWJlciAyMDIyIDA1OjAzOjAxIFNoaW5pY2hpcm8gS2F3YXNha2kgd3JvdGU6Cj4g
PiA+IE9uIFNlcCAyMCwgMjAyMiAvIDE0OjExLCBQYWxpIFJvaMOhciB3cm90ZToKPiA+ID4gPiBU
dXJyaXMgTU9YIGJvYXJkIHdpdGggb2xkZXIgQVJNIFRydXN0ZWQgRmlybXdhcmUgdmVyc2lvbiB2
MS41IGlzIG5vdCBhYmxlCj4gPiA+ID4gdG8gZGV0ZWN0IGFueSBVU0IgMy4wIGRldmljZSBjb25u
ZWN0ZWQgdG8gVVNCLUEgcG9ydCBvbiBNb3gtQSBtb2R1bGUgYWZ0ZXIKPiA+ID4gPiBjb21taXQg
MGE2ZmM3MGQ3NmJkICgicGh5OiBtYXJ2ZWxsOiBwaHktbXZlYnUtYTM3MDAtY29tcGh5OiBSZW1v
dmUgYnJva2VuCj4gPiA+ID4gcmVzZXQgc3VwcG9ydCIpLiBPbiB0aGUgb3RoZXIgaGFuZCBVU0Ig
Mi4wIGRldmljZXMgY29ubmVjdGVkIHRvIHRoZSBzYW1lCj4gPiA+ID4gVVNCLUEgcG9ydCBhcmUg
d29ya2luZyBmaW5lLgo+ID4gPiA+IAo+ID4gPiA+IEl0IGxvb2tzIGFzIGlmIHRoZSBvbGRlciBm
aXJtd2FyZSBjb25maWd1cmVzIENPTVBIWSByZWdpc3RlcnMgZm9yIFVTQiAzLjAKPiA+ID4gPiBz
b21laG93IGluY29tcGF0aWJseSBmb3Iga2VybmVsIGRyaXZlci4gRXhwZXJpbWVudHMgc2hvdyB0
aGF0IHJlc2V0dGluZwo+ID4gPiA+IENPTVBIWSByZWdpc3RlcnMgdmlhIHNldHRpbmcgU0ZUX1JT
VCBhdXRvLWNsZWFyaW5nIGJpdCBpbiBDT01QSFlfU0ZUX1JFU0VUCj4gPiA+ID4gcmVnaXN0ZXIg
Zml4ZXMgdGhpcyBpc3N1ZS4KPiA+ID4gPiAKPiA+ID4gPiBSZXNldCB0aGUgQ09NUEhZIGluIG12
ZWJ1X2EzNzAwX2NvbXBoeV91c2IzX3Bvd2VyX29uKCkgZnVuY3Rpb24gYXMgYSBmaXJzdAo+ID4g
PiA+IHN0ZXAgYWZ0ZXIgc2VsZWN0aW5nIENPTVBIWSBsYW5lIGFuZCBVU0IgMy4wIGZ1bmN0aW9u
LiBXaXRoIHRoaXMgY2hhbmdlCj4gPiA+ID4gVHVycmlzIE1PWCBib2FyZCBjYW4gc3VjY2Vzc2Z1
bGx5IGRldGVjdCBVU0IgMy4wIGRldmljZXMgYWdhaW4uCj4gPiA+ID4gCj4gPiA+ID4gQmVmb3Jl
IHRoZSBhYm92ZSBtZW50aW9uZWQgY29tbWl0IHRoaXMgcmVzZXQgd2FzIGltcGxlbWVudGVkIGlu
IFBIWSByZXNldAo+ID4gPiA+IG1ldGhvZCwgc28gdGhpcyBpcyB0aGUgcmVhc29uIHdoeSB0aGVy
ZSB3YXMgbm8gaXNzdWUgd2l0aCBvbGRlciBmaXJtd2FyZQo+ID4gPiA+IHZlcnNpb24gdGhlbi4K
PiA+ID4gPiAKPiA+ID4gPiBGaXhlczogMGE2ZmM3MGQ3NmJkICgicGh5OiBtYXJ2ZWxsOiBwaHkt
bXZlYnUtYTM3MDAtY29tcGh5OiBSZW1vdmUgYnJva2VuIHJlc2V0IHN1cHBvcnQiKQo+ID4gPiA+
IFJlcG9ydGVkLWJ5OiBNYXJlayBCZWjDum4gPGthYmVsQGtlcm5lbC5vcmc+Cj4gPiA+ID4gU2ln
bmVkLW9mZi1ieTogUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4KPiA+ID4gPiAtLS0KPiA+
ID4gPiBTaGluaWNoaXJvLCBjb3VsZCB5b3UgcGxlYXNlIGNoZWNrIHRoYXQgYWxsIFVTQiBmdW5j
dGlvbmFsaXR5IHN0aWxsCj4gPiA+ID4gd29ya3MgY29ycmVjdGx5IG9uIHlvdXIgYm9hcmQ/Cj4g
PiA+ID4gLS0tCj4gPiA+IAo+ID4gPiBTdXJlLiBUTDtEUiwgdGhpcyBwYXRjaCB3b3JrcyBvayBm
b3IgbXkgZXNwcmVzc29iaW4gdjcgYm9hcmQuCj4gPiA+IAo+ID4gPiBUZXN0ZWQtYnk6IFNoaW4n
aWNoaXJvIEthd2FzYWtpIDxzaGluaWNoaXJvLmthd2FzYWtpQHdkYy5jb20+Cj4gPiA+IAo+ID4g
PiBJIHByZXBhcmVkIGJhc2Uga2VybmVsIHY1LjE5LjEwIGFwcGx5aW5nIHRoZSBjb21taXQgMGE2
ZmM3MGQ3NmJkLiBSZWdhcmRsZXNzCj4gPiA+IHdoZXRoZXIgdGhpcyBmaXggcGF0Y2ggZm9yIFR1
cnJpeCBNT1ggYm9hcmQgaXMgYXBwbGllZCBvciBub3QsIHR3byBVU0IgcG9ydHMgb24KPiA+ID4g
bXkgZXNwcnNzb2JpbiB2NyBib2FyZCB3b3JrZWQgYXMgZXhwZWN0ZWQuIEkgY29uZmlybWVkIGl0
IGJ5IHVzaW5nIFVTQiB0aHVtYgo+ID4gPiBkcml2ZS4gVGhlIGRyaXZlIHdhcyBkZXRlY3RlZCBh
bmQgaXRzIHBhcnRpdGlvbiB3YXMgbW91bnRlZCBzdWNjZXNzZnVsbHkgdXNpbmcKPiA+ID4gZWl0
aGVyIG9mIHRoZSB0d28gVVNCIHBvcnRzLgo+ID4gCj4gPiBUaGFuayB5b3UgZm9yIHRlc3Rpbmch
IEFueXdheSwgcGxlYXNlIGNoZWNrIHRoYXQgVVNCIDMuMCBkZXZpY2UgaXMKPiA+IHdvcmtpbmcg
ZmluZS4gQmVjYXVzZSBhcyBJIHdyb3RlIGluIGNvbW1pdCBtZXNzYWdlLCBvbiBUdXJyaXMgTW94
IHdhcwo+ID4gVVNCIDIuMCBkZXZpY2Ugd29ya2luZyBmaW5lLCBidXQgVVNCIDMuMCBub3QuIEFu
ZCBtYXliZSBjaGVjayBpbiBzeXN0ZW0KPiAKPiB1cGRhdGUgdGhlIGxvZyBub3c/CgpXaGF0IGRv
IHlvdSB3YW50IHRvIHVwZGF0ZT8KCj4gPiAobHN1c2IpIHRoYXQgVVNCIDMuMCBkZXZpY2Ugd2Fz
IHJlYWxseSBkZXRlY3RlZCBhcyBVU0IgMy4wIGJlY2F1c2UgVVNCCj4gPiAzLjAgZGV2aWNlcyBo
YXZlIHN1cHBvcnRlZCBhbHNvIGZhbGxiYWNrIFVTQiAyLjAvMS54IGxlZ2FjeSBtb2RlLgo+ID4g
Cj4gPiA+IEkgYWxzbyBjb25maXJtZWQgU0FUQSBwb3J0IGlzIG9rIChteSBTU0QgY2FyZCB3YXMg
ZGV0ZWN0ZWQgd2l0aG91dCBlcnJvcgo+ID4gPiBtZXNzYWdlKSBhbmQgdGhyZWUgbmV0d29yayBw
b3J0cyB3b3JrcyBvayAoIkxpbmsgaXMgVXAiIG1lc3NhZ2Ugb24gbmV0d29yayBjYWJsZQo+ID4g
PiBjb25uZWN0aW9uKS4gSSBkaWQgc2FtZSBjb25maXJtYXRpb25zIHdpdGggdGhlIGxhdGVzdCBm
aXJtd2FyZSAoVEYtQSBhbmQgVS1ib290KQo+ID4gPiBhbmQgb2xkIGZpcm13YXJlICh3aXRoIHZl
cnNpb24gZGF0ZSBpbiAyMDE3KS4gQWxsIGxvb2tzIGdvb2QgZm9yIG1lLgo+ID4gPiAKPiA+ID4g
LS0gCj4gPiA+IFNoaW4naWNoaXJvIEthd2FzYWtpCj4gCj4gLS0gCj4gflZpbm9kCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
