Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD139FD4F16
	for <linux-phy@archiver.kernel.org>; Tue, 10 Mar 2026 18:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Zwm7s6xZTfmn0jFCnXspg6c3dFU5Z1MqIC4QJwGVGg=; b=1R3hw9XwA32srR
	CWFF+7NSdVv0VIgnf3A2CF+RT11HqtXGG5qIl+u2VRbKhEl15is2lQWRE2EjBR9CFsD89d2zckg03
	eBasPS625oO1fsW+/6UcrnwNhlNJVAJKADsmwXPMSbNfKkjpQdIrwvBBKGM8hvLyIDMuNV4iWddyY
	Sil7qR20dRdeLiDvsXK9qY20UnGNTODV/FZUT272DC3308gID6Z7ncoq8eAqScurNf28F93MSD5nQ
	bCINGBUyQQVuvpoPWKT5MVsfdHt5IIhb8oUinidcrGy7/S9xsw6B24A4+VMUS8/PW9le/iysRfwU2
	4OQue6i2YFGnj7m5ho9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w01XL-0000000A33i-1DaE;
	Tue, 10 Mar 2026 18:10:31 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w01XI-0000000A32a-3W0y
	for linux-phy@lists.infradead.org;
	Tue, 10 Mar 2026 18:10:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7079644514
	for <linux-phy@lists.infradead.org>; Tue, 10 Mar 2026 18:10:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5477FC2BCC9
	for <linux-phy@lists.infradead.org>; Tue, 10 Mar 2026 18:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773166228;
	bh=+BkbeGlWZU3HoPWqSJ4ZGWH/mYA1R9F66ZxBmJ6EvZk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=D20QBuJz20JGK1KlKAqOqZ98LZe96xXmFEvoFFgDEI0OK2C81PB7DoxY0y7AcHg/o
	 HEm7rQUPs9UaCUxzf/mfFjK7/pA8NpZmHCtAlWAIjFQK4yGD83W/Zzc1JtkYAp7HFr
	 YiTr+T+aGCNFnwhndRNOQg7x8Mn3oX0+YfX3CTWznLdEQiSnPnzf5xJfHwpaKo/ZTK
	 7TQ/FaHFs7+jOTrIyA4C/C++F+435/pK/LJXLLoMxHqmyRCgyYV1hLVPbdU9e0z0tp
	 XcHNxYA/Y6J5EhLiD21CNSpij8ernXpwojze9/tK04JR30/4OHbnKon/mwhECJ1tWr
	 6z2WzYHLie1ag==
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b941ec6a368so639168666b.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Mar 2026 11:10:28 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV5QUUsWNUTREwRVuyY9OUziWiEHgxIgFq1mN+nY6cuD1c0a3Ma/XegD7v5+hhH9lqyIYtHHoW3I18=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw8kQHRebHJCr9J5E0Si8NFhcftJ0Ys5r56dntlGAVERu7ZR/rY
	Ots0Ol4r0FnBCPorTRi4htoYBO9T+vqsV/ryqjsSbSRtkqnheUxih5rCj+KWFCOjCNg9ppUJ2HR
	2WcEqAeu0DFJFb0PMQjMsPxoDIWkqEA==
X-Received: by 2002:a17:906:2091:b0:b97:1d24:c015 with SMTP id
 a640c23a62f3a-b971d24fa35mr124911866b.40.1773166226421; Tue, 10 Mar 2026
 11:10:26 -0700 (PDT)
MIME-Version: 1.0
References: <20260306-mt8196-ufs-v9-0-55b073f7a830@collabora.com>
 <20260306-mt8196-ufs-v9-3-55b073f7a830@collabora.com> <20260306163305.GA2680515-robh@kernel.org>
 <4089450.ElGaqSPkdT@workhorse>
In-Reply-To: <4089450.ElGaqSPkdT@workhorse>
From: Rob Herring <robh@kernel.org>
Date: Tue, 10 Mar 2026 13:10:14 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+mF_Q7Ld8__ZTc5yDvWAT6uK5wxfBJM-YdFjOvdiDc-w@mail.gmail.com>
X-Gm-Features: AaiRm53tDdS80GaVjUeFGPThiibYh4p5Q5y90_XYQtN7oN_0_RN9C3azVe77kTU
Message-ID: <CAL_Jsq+mF_Q7Ld8__ZTc5yDvWAT6uK5wxfBJM-YdFjOvdiDc-w@mail.gmail.com>
Subject: Re: [PATCH v9 03/23] dt-bindings: ufs: mediatek,ufs: Add mt8196 variant
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
	Bart Van Assche <bvanassche@acm.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Peter Wang <peter.wang@mediatek.com>, 
	Stanley Jhu <chu.stanley@gmail.com>, 
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, 
	"Martin K. Petersen" <martin.petersen@oracle.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Chaotian Jing <Chaotian.Jing@mediatek.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>, kernel@collabora.com, 
	linux-scsi@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org, 
	Conor Dooley <conor.dooley@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_111028_917791_2DC2C754 
X-CRM114-Status: GOOD (  31.13  )
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

T24gRnJpLCBNYXIgNiwgMjAyNiBhdCAxMjozN+KAr1BNIE5pY29sYXMgRnJhdHRhcm9saQo8bmlj
b2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4gT24gRnJpZGF5LCA2IE1h
cmNoIDIwMjYgMTc6MzM6MDUgQ2VudHJhbCBFdXJvcGVhbiBTdGFuZGFyZCBUaW1lIFJvYiBIZXJy
aW5nIHdyb3RlOgo+ID4gT24gRnJpLCBNYXIgMDYsIDIwMjYgYXQgMDI6MjQ6NDRQTSArMDEwMCwg
Tmljb2xhcyBGcmF0dGFyb2xpIHdyb3RlOgo+ID4gPiBUaGUgTWVkaWFUZWsgTVQ4MTk2IFNvQydz
IFVGUyBjb250cm9sbGVyIHVzZXMgdGhyZWUgYWRkaXRpb25hbCBjbG9ja3MKPiA+ID4gY29tcGFy
ZWQgdG8gdGhlIE1UODE5NSwgYW5kIGEgZGlmZmVyZW50IHNldCBvZiBzdXBwbGllcy4gSXQgaXMg
dGhlcmVmb3JlCj4gPiA+IG5vdCBjb21wYXRpYmxlIHdpdGggdGhlIE1UODE5NS4KPiA+ID4KPiA+
ID4gV2hpbGUgaXQgZG9lcyBoYXZlIGEgQVZERDA5X1VGU18xIHBpbiBpbiBhZGRpdGlvbiB0byB0
aGUgQVZERDA5X1VGUyBwaW4sCj4gPiA+IGl0IGFwcGVhcnMgdGhhdCB0aGVzZSB0d28gcGlucyBh
cmUgY29tbW9uZWQgdG9nZXRoZXIsIGFzIHRoZSBib2FyZAo+ID4gPiBzY2hlbWF0aWMgSSBoYXZl
IGFjY2VzcyB0byB1c2VzIHRoZSBzYW1lIHN1cHBseSBmb3IgYm90aCwgYW5kIHRoZQo+ID4gPiBk
b3duc3RyZWFtIGRyaXZlciBkb2VzIG5vdCBkaXN0aW5ndWlzaCBiZXR3ZWVuIHRoZSB0d28gc3Vw
cGxpZXMgZWl0aGVyLgo+ID4gPgo+ID4gPiBBZGQgYSBjb21wYXRpYmxlIGZvciBpdCwgYW5kIG1v
ZGlmeSB0aGUgYmluZGluZyBjb3JyZXNwb25kaW5nbHkuCj4gPiA+Cj4gPiA+IFJldmlld2VkLWJ5
OiBDb25vciBEb29sZXkgPGNvbm9yLmRvb2xleUBtaWNyb2NoaXAuY29tPgo+ID4gPiBBY2tlZC1i
eTogVmlub2QgS291bCA8dmtvdWxAa2VybmVsLm9yZz4KPiA+ID4gQWNrZWQtYnk6IENvbm9yIERv
b2xleSA8Y29ub3IuZG9vbGV5QG1pY3JvY2hpcC5jb20+Cj4gPiA+IFJldmlld2VkLWJ5OiBBbmdl
bG9HaW9hY2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJv
cmEuY29tPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5pY29sYXMu
ZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPgo+ID4gPiAtLS0KPiA+ID4gIC4uLi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3Vmcy9tZWRpYXRlayx1ZnMueWFtbCAgICAgIHwgNTggKysrKysrKysrKysrKysr
KysrKysrLQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDU3IGluc2VydGlvbnMoKyksIDEgZGVsZXRp
b24oLSkKPiA+ID4KPiA+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy91ZnMvbWVkaWF0ZWssdWZzLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvdWZzL21lZGlhdGVrLHVmcy55YW1sCj4gPiA+IGluZGV4IGUwYWVmM2U1ZjU2Yi4u
YTgyMTE5ZWNiZmU4IDEwMDY0NAo+ID4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvdWZzL21lZGlhdGVrLHVmcy55YW1sCj4gPiA+ICsrKyBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy91ZnMvbWVkaWF0ZWssdWZzLnlhbWwKPiA+ID4gQEAgLTE2LDEw
ICsxNiwxMSBAQCBwcm9wZXJ0aWVzOgo+ID4gPiAgICAgICAgLSBtZWRpYXRlayxtdDgxODMtdWZz
aGNpCj4gPiA+ICAgICAgICAtIG1lZGlhdGVrLG10ODE5Mi11ZnNoY2kKPiA+ID4gICAgICAgIC0g
bWVkaWF0ZWssbXQ4MTk1LXVmc2hjaQo+ID4gPiArICAgICAgLSBtZWRpYXRlayxtdDgxOTYtdWZz
aGNpCj4gPiA+Cj4gPiA+ICAgIGNsb2NrczoKPiA+ID4gICAgICBtaW5JdGVtczogMQo+ID4gPiAt
ICAgIG1heEl0ZW1zOiAxMwo+ID4gPiArICAgIG1heEl0ZW1zOiAxNgo+ID4gPgo+ID4gPiAgICBj
bG9jay1uYW1lczoKPiA+ID4gICAgICBtaW5JdGVtczogMQo+ID4gPiBAQCAtMzcsNiArMzgsOSBA
QCBwcm9wZXJ0aWVzOgo+ID4gPiAgICAgICAgLSBjb25zdDogY3J5cHRfcGVyZgo+ID4gPiAgICAg
ICAgLSBjb25zdDogdWZzX3J4X3N5bWJvbDAKPiA+ID4gICAgICAgIC0gY29uc3Q6IHVmc19yeF9z
eW1ib2wxCj4gPiA+ICsgICAgICAtIGNvbnN0OiB1ZnNfc2VsCj4gPgo+ID4gInVmcyIgaXMgcmVk
dW5kYW50IGFzIGFsbCB0aGUgY2xvY2tzIGFyZSBmb3IgVUZTLiBTYW1lIGNvbW1lbnQgb24gcHJp
b3IKPiA+IHBhdGNoLgo+Cj4gSXMgdGhpcyBuYW1pbmcgYSBiaWcgZW5vdWdoIGNvbmNlcm4gdG8g
YmxvY2sgdGhpcyBzZXJpZXMgd2l0aCB0d28KPiBleHBsaWNpdCBhY2tzIG9uIHRoaXMgcGF0Y2gg
dGhhdCBmaXhlcyBhIHdob2xseSBicm9rZW4gYW5kIHVzZWxlc3MKPiBiaW5kaW5nPwoKU2hydWcu
Li4gSXMgY2hhbmdpbmcgaXQgcmVhbGx5IHRoYXQgaGFyZD8KCj4gPiA+ICsgICAgICAtIGNvbnN0
OiB1ZnNfc2VsX21pbl9zcmMKPiA+ID4gKyAgICAgIC0gY29uc3Q6IHVmc19zZWxfbWF4X3NyYwo+
ID4KPiA+ICJzcmMiIHNvdW5kcyBsaWtlIGEgcGFyZW50IGNsb2NrPyBJZiBzbywgcHJvYmFibHkg
c2hvdWxkbid0IGJlIGluIHRoZQo+ID4gY2xvY2tzIGxpc3QuICdhc3NpZ25lZC1jbG9ja3MnIGlz
IGZvciBkZWFsaW5nIHdpdGggcGFyZW50IGNsb2Nrcy4KPiA+Cj4KPiBJIGRvbid0IGtub3cgd2hh
dCBpdCBpcywgYW5kIEkgaGF2ZSBubyB3YXkgdG8gY29uc3VsdCBhbnkgZG9jdW1lbnRhdGlvbgo+
IHRoYXQgd291bGQgdGVsbCBtZSB3aGF0IGl0IGlzLiBJIGFtIHRyeWluZyB0byBwdXQgb3V0IHRo
aXMgZHVtcHN0ZXIgZmlyZQo+IG9mIGEgZG93bnN0cmVhbSB0dXJkIHRoYXQgbWFkZSBpdHMgd2F5
IGludG8gbWFpbmxpbmUgYXMgdGhlIHJldmlldyBwcm9jZXNzCj4gaGFzIGJlZW4gY29tcGxldGVs
eSBzdWJ2ZXJ0ZWQsIGFuZCBpcyBvbmx5IGdldHRpbmcgd29yc2Ugd2l0aCBlYWNoIHBhc3NpbmcK
PiBtb250aCB0aGF0IE1lZGlhVGVrIGlzIGFsbG93ZWQgdG8gYmxvY2sgdGhpcyBzZXJpZXMgZnJv
bSBwcm9ncmVzc2luZyB3aGlsZQo+IHNuZWFraW5nIGZ1cnRoZXIgY2hhbmdlcyB0aHJvdWdoLgoK
SXQncyBnb29kIE1lZGlhdGVrIGlzIGFjdGl2ZSwgdGhlbiB0aGV5IGNhbiB0ZWxsIHVzIHdoYXQg
dGhlIGNsb2NrcwphcmUgZm9yLiBJIHdvdWxkIHRoaW5rIHRoZSBkcml2ZXIgd291bGQgZ2l2ZSBz
b21lIGNsdWUuCgpJIGRvbid0IHNlZSBob3cgYWNjZXB0aW5nIHN1Yi1wYXIgYmluZGluZ3Mgb3Ig
bm90IGZpeGVzIHRoZSBpc3N1ZXMgaGVyZS4KClJvYgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
