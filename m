Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C72EC88E41
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 05:15:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ySgYmYCyukWDO/RLczkBv6DkkOSoJVi7oaLJ/sqMWDA=; b=3AaydpPwyzYyNw
	KbQ4p24t/bAalyKIlVyGAK4s5k33SraRR4mu8glNXWPL0FRkTltfNwNH/KyX/wMYXYPa/+bzMiPw+
	6XIEAlB6QTol1W61jTZv+dFjL3wxotwJC2aucAZX17cgIBlMIpHG8P6eMcTu47hQ/EuYtYU/Nd8O0
	le90mnu+Gj6e1MX3eeyoaa82hypKCp2y9oPnTExzGyeyeh2SFByd1gXm8/r9xsEw15LrQN7TV7RnG
	2lkZuERSxF8aSkHeLvLoOUvwR0rzuZxzVy4Y3962KDbP8yv67+kcnfpJMaroPYes4sdjqAM9mKUWK
	TadsP58TEvfUBsoMXOAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4tbt-0000000Fqhf-2re2;
	Fri, 11 Sep 2026 05:15:37 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4tbs-0000000Fqh3-3N3C;
	Fri, 11 Sep 2026 05:15:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D612A409FE;
	Fri, 11 Sep 2026 05:15:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4014D1F000FF;
	Fri, 11 Sep 2026 05:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789103735;
	bh=Re4OuRwLxErTc9uR7CpD1jNt1FFENy/RKFyXLL/LfjI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=IJUV/GsKHHvt9HrUKFv1KLSB1qHKzOiUQX8PYVGxYjP+6GKODDx7yyMP2zHhC8/SW
	 pczlz20cM18LzibHOMKTJJ8JMfBfaa2hBQDetiD/d6mwq3/zOQ0fxw0D++FV7Ln9r6
	 +/8mdx3vSyGNbwTtqZIV30bThMaYlkK3LpH8vX7btR4mqJJwU53jOgnmFNMp0CyvlY
	 cPS5nP6kVuu7BGd5lWQx+YM8Ou8zQUPN0jwZ7XBBXaxFJ51Q/JLhf+QKzF4MpDWD2k
	 zTnR69WtvBkinYcgt51aN5lJ87ZtRqhRwjJM3oyJeM4UOvtEXGa+bkzfnH+AAMXdzb
	 6A53O1yu12W8Q==
Date: Fri, 11 Sep 2026 07:15:26 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunfeng.yun@mediatek.com, vkoul@kernel.org, neil.armstrong@linaro.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	chunkuang.hu@kernel.org, p.zabel@pengutronix.de, justin.yeh@mediatek.com, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, kernel@collabora.com
Subject: Re: [PATCH v3 11/12] phy: phy-mtk-dp: Add PHYD Lane EN register mask
 to SoC data
Message-ID: <m3fpa2igwmsnsxhhxtg5hubsmxbn2vmzcpo4hwacs66z52x5ll@xrl5kac2qmtk>
References: <20260707154245.198361-1-angelogioacchino.delregno@collabora.com>
 <20260707154245.198361-12-angelogioacchino.delregno@collabora.com>
 <cydeh263kd5o2un27oeplqx2phe7vzhxvk53kr7dbvtplazafv@rs37qtkhguhj>
 <4e658914-7a17-444b-b20b-8d8b647238b5@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4e658914-7a17-444b-b20b-8d8b647238b5@collabora.com>
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

T24gVGh1LCBTZXAgMTAsIDIwMjYgYXQgMTE6MDU6MzlBTSArMDIwMCwgQW5nZWxvR2lvYWNjaGlu
byBEZWwgUmVnbm8gd3JvdGU6Cj4gT24gOS85LzI2IDE5OjI1LCBNYW5pdmFubmFuIFNhZGhhc2l2
YW0gd3JvdGU6Cj4gPiBPbiBUdWUsIEp1bCAwNywgMjAyNiBhdCAwNTo0Mjo0NFBNICswMjAwLCBB
bmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyB3cm90ZToKPiA+ID4gSW4gcHJlcGFyYXRpb24gZm9y
IGFkZGluZyBzdXBwb3J0IGZvciB0aGUgZURQIFBIWSBmb3VuZCBpbiBuZXdlcgo+ID4gPiBTb0Nz
LCB0cmFuc2ZlciB0aGUgcmVnaXN0ZXIgbWFzayBmb3IgUEhZRF9UWF9MTl9FTiB0byBTb0Mgc3Bl
Y2lmaWMKPiA+ID4gZGF0YS4KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEFuZ2Vsb0dpb2Fj
Y2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+
Cj4gPiA+IC0tLQo+ID4gPiAgIGRyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstZHAuYyB8IDEz
ICsrKysrKysrKy0tLS0KPiA+ID4gICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA0
IGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L21lZGlh
dGVrL3BoeS1tdGstZHAuYyBiL2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstZHAuYwo+ID4g
PiBpbmRleCA0NjAzZjI4ZDE0NjYuLmY1YWFkYzVmZGM0MiAxMDA2NDQKPiA+ID4gLS0tIGEvZHJp
dmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1kcC5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvcGh5L21l
ZGlhdGVrL3BoeS1tdGstZHAuYwo+ID4gPiBAQCAtMjIwLDYgKzIyMCw3IEBAIHN0cnVjdCBtdGtf
ZHBfcGh5YV9pbXBfc2VsIHsKPiA+ID4gICAgKiBAcmVnc19hbmFfbGFuZTogIFJlZ2lzdGVyIChs
YXlvdXQpIG9mZnNldHMgZm9yIGFuYV9sYW4KPiA+ID4gICAgKiBAcmVnc19kaWdfZ2xiOiAgIFJl
Z2lzdGVyIChsYXlvdXQpIG9mZnNldHMgZm9yIGRpZ19nbGIKPiA+ID4gICAgKiBAcmVnc19kaWdf
bGFuZTogIFJlZ2lzdGVyIChsYXlvdXQpIG9mZnNldHMgZm9yIGRpZ19sYW4KPiA+ID4gKyAqIEBt
YXNrX2RpZ190eF9sbjogUmVnaXN0ZXIgbWFzayBmb3IgUEhZRF9UWF9MTl9FTiBmaWVsZAo+ID4g
PiAgICAqIEB2YWxfZGlnX2JpdHJhdGU6SVAgVmVyc2lvbiBzcGVjaWZpYyByZWdpc3RlciB2YWx1
ZXMgZm9yIEJpdCBSYXRlIHNldHRpbmcKPiA+ID4gICAgKiBAYW5hX2JpYXNfcjogICAgIEludGVy
bmFsIHJlc2lzdGFuY2UgIlIiIFNlbGVjdGlvbiBTZXR0aW5ncyAoZ2xvYmFsKQo+ID4gPiAgICAq
IEBhbmFfY2t0eF9pbXA6ICAgVFggQ2xvY2sgSW1wZWRhbmNlIFNlbGVjdGlvbiBTZXR0aW5ncyAo
Z2xvYmFsKQo+ID4gPiBAQCAtMjM5LDYgKzI0MCw5IEBAIHN0cnVjdCBtdGtfZHBfcGh5X3BkYXRh
IHsKPiA+ID4gICAJY29uc3QgdTggKnJlZ3NfZGlnX2dsYjsKPiA+ID4gICAJY29uc3QgdTggKnJl
Z3NfZGlnX2xhbmU7Cj4gPiA+ICsJLyogUmVnaXN0ZXIgbWFza3MgKi8KPiA+IAo+ID4gRHVwbGlj
YXRlIGNvbW1lbnQuIFdpdGggdGhpcyByZW1vdmVkLAo+ID4gCj4gCj4gU29ycnkgYnV0IEkgdGhp
bmsgeW91IGRpZG4ndCB1bmRlcnN0YW5kIHdoYXQgdGhlIGNvbW1lbnRzIGFyZSB0aGVyZTogdGhl
IGtlcm5lbGRvYwo+IGlzIHVzZWQgdG8gZGVzY3JpYmUgdGhlIHN0cnVjdHVyZSwgb2YgY291cnNl
LCBidXQgdGhlIGNvbW1lbnRzIGluIGJldHdlZW4gYXJlIHVzZWQKPiBhcyBhIHdheSB0byBkZXNj
cmliZSAoYW5kIGtpbmQgb2YgZW5mb3JjZSkgdGhlIG9yZGVyIG9mIG1lbWJlcnMuCj4gCj4gLyog
UmVnaXN0ZXIgb2Zmc2V0cyAqLwo+IHUxNiBtZW1iZXIxOwo+IHUxNiBtZW1iZXIyOwo+IC4uLi4K
PiAKPiAvKiBSZWdpc3RlciBtYXBzICovCj4gY29uc3QgdTggKnJlZ3MxOwo+IGNvbnN0IHU4ICpy
ZWdzMjsKPiAuLi4KPiAKPiAvKiBSZWdpc3RlciBtYXNrcyAqLwo+IHUzMiBtYXNrMTsKPiB1MzIg
bWFzazI7Cj4gLi4uLgo+IAo+IGV0Yy4KPiAKPiBEb2VzIHRoYXQgbWFrZSBzZW5zZSBub3c/IDot
KQo+IAoKWWVzIGl0IGRvZXMuIFNvcnJ5IGZvciB0aGUgb3ZlcnNpZ2h0CgotIE1hbmkKCi0tIArg
rq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
