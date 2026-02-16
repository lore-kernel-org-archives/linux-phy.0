Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86D23E81A2B
	for <linux-phy@archiver.kernel.org>; Mon, 16 Feb 2026 14:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=csHUfkpyMv/a7cExzzzcGKu8xETIWegtLW4Xtav/fs8=; b=p/c3JG3g93rv6U
	GO3+NIUFmjOPcxGs1I+7e8Tr4I2FMnh48gXCHnYnf3mTq01uKnKVMI4gdt5fOLeo77XZ7AKsj7nav
	vh9oAdNYNhXMROpZweITdkxuu1YCi13eOm/0N5st3SBwzfaqFhfrExpGQ3yTMAhT4q5yqZ+S99+fM
	+n+C9+uDaEHcELvKeVtxxI5CLNnP7BktFFfYSD1wt42SeLQhbbYact1GnIYnH+XAEju69ZxPQz4wr
	WUgK+AGFHBaIkwO5zWpzR1VawlGLGxwcnVncGbmS/dzeE3WCgDW4Qlu4c1HEj5s3ObDKbS4E7S7ww
	h5HCfNVQ9RarZVc+Q6Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrzyr-00000006pKf-3pXr;
	Mon, 16 Feb 2026 14:53:45 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrzyp-00000006pKK-1lPn
	for linux-phy@lists.infradead.org;
	Mon, 16 Feb 2026 14:53:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 68DDD4440B;
	Mon, 16 Feb 2026 14:53:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D392C116C6;
	Mon, 16 Feb 2026 14:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771253621;
	bh=HZ6sQIcfz4i7aAUkGnkzO+bfJ830rmqltw2OdxrOaG8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XOky1iQ5CT292DEDIzdPeCetrTeuFgFisd2/R2giUzdZnXNG0rRStpFnbd6nC/C0g
	 4sLDBVOGJo6nFuFEP3FX3OxE4uESDsCO9m/nUvT8VPY430+VXqhXTpcm/Ru0pRseyP
	 kaQQ7lkykuEzQdcf7/fEWhmu4DZ86ggkGHUgNBni22Pg90zWO9RVcDCm4LGcyYb2uj
	 Ivmr5JdahKXPsz6pGEaTtK5p7DxuZHDT1AEx1tCYjmTJB/qttMnToPVCvbEkCwHlRS
	 d4UMVYraGKcVnp2+JpxTdYb5ttaZnjsoekeH9th7KRIhRHXT5XJ3rXyE3rod/nzrPx
	 1jRO7IHAaVRaA==
Date: Mon, 16 Feb 2026 20:23:25 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Jingoo Han <jingoohan1@gmail.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org
Subject: Re: [PATCH 1/5] phy: qcom: qmp-pcie: Skip PHY reset if already up
Message-ID: <aaqqdz2ssnetfgtybuerjfnkgr7r22xj2whaawaqhgm4y2ygom@jtkn5z2nw7aq>
References: <20260109-link_retain-v1-0-7e6782230f4b@oss.qualcomm.com>
 <20260109-link_retain-v1-1-7e6782230f4b@oss.qualcomm.com>
 <nmle3y6nb4kjcwstzqxkqzaokeyjoegg6lxtmji57kxwh5snxa@p76v6dr7rgsg>
 <53f0c45f-7f5c-4abd-af84-cbb82d509872@linaro.org>
 <cvxvq7f2ku6aq5gbbqav42ckqk2raesbxq2bx46mxvapcza5v4@5zuyjdtn5us2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cvxvq7f2ku6aq5gbbqav42ckqk2raesbxq2bx46mxvapcza5v4@5zuyjdtn5us2>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_065343_528601_93107EFB 
X-CRM114-Status: GOOD (  32.38  )
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

T24gRnJpLCBKYW4gMDksIDIwMjYgYXQgMDQ6MDM6MzdQTSArMDIwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBPbiBGcmksIEphbiAwOSwgMjAyNiBhdCAwMjoxMDo0OVBNICswMTAwLCBOZWls
IEFybXN0cm9uZyB3cm90ZToKPiA+IE9uIDEvOS8yNiAxNDowOCwgRG1pdHJ5IEJhcnlzaGtvdiB3
cm90ZToKPiA+ID4gT24gRnJpLCBKYW4gMDksIDIwMjYgYXQgMTI6NTE6MDZQTSArMDUzMCwgS3Jp
c2huYSBDaGFpdGFueWEgQ2h1bmRydSB3cm90ZToKPiA+ID4gPiBJZiB0aGUgYm9vdGxvYWRlciBo
YXMgYWxyZWFkeSBwb3dlcmVkIHVwIHRoZSBQQ0llIFBIWSwgZG9pbmcgYSBmdWxsCj4gPiA+ID4g
cmVzZXQgYW5kIHdhaXRpbmcgZm9yIGl0IHRvIGNvbWUgdXAgYWdhaW4gc2xvd3MgZG93biBib290
IHRpbWUuCj4gPiA+IAo+ID4gPiBIb3cgYmlnIGlzIHRoZSBkZWxheSBjYXVzZWQgYnkgaXQ/Cj4g
PiA+IAo+ID4gPiA+IAo+ID4gPiA+IEFkZCBhIGNoZWNrIGZvciBQSFkgc3RhdHVzIGFuZCBza2lw
IHRoZSByZXNldCBzdGVwcyB3aGVuIHRoZSBQSFkgaXMKPiA+ID4gPiBhbHJlYWR5IGFjdGl2ZS4g
SW4gdGhpcyBjYXNlLCBvbmx5IGVuYWJsZSB0aGUgcmVxdWlyZWQgcmVzb3VyY2VzIGR1cmluZwo+
ID4gPiA+IHBvd2VyLW9uLiBUaGlzIHdvcmtzIGFsb25nc2lkZSB0aGUgZXhpc3RpbmcgbG9naWMg
dGhhdCBza2lwcyB0aGUgaW5pdAo+ID4gPiA+IHNlcXVlbmNlLgo+ID4gPiAKPiA+ID4gQ2FuIHdl
IGVuZCB1cCBpbiBhIHN0YXRlIHdoZXJlIHRoZSBib290bG9hZGVyIGhhcyBtaXMtc2V0dXAgdGhl
IGxpbms/IE9yCj4gPiA+IHRoZSBsaW5rIGdvaW5nIGJhZCBiZWNhdXNlIG9mIGFueSBnbGl0Y2gg
ZHVyaW5nIHRoZSBib290dXA/Cj4gPiAKPiA+IEdvb2QgcXVlc3Rpb24sIGNhbiB3ZSBhZGQgYSBt
b2R1bGUgcGFyYW1ldGVyIHRvIGZvcmNlIGEgZnVsbCByZXNldCBvZiB0aGUgUEhZIGluIGNhc2UK
PiA+IHRoZSBib290bG9hZGVyIGlzIGJ1Z2d5ID8KPiAKPiBJJ2Qgc3VnZ2VzdCBhIHNpbXBsZXIg
dGhpbmc6IGlmIHRoZSByZXNldCB3YXMgc2tpcHBlZCwgcmVzZXQgdGhlIFBIWSBpbgo+IGNhc2Ug
b2YgYW4gZXJyb3IgYW5kIHJldHJ5LiBUaGF0J3MgYWxzbyBvbmUgb2YgdGhlIHJlYXNvbnMgd2h5
IEkgYXNrZWQKPiBmb3Igc2tpcF9yZXNldCBub3QgdG8gYmUgdGhlIHBlcnNpc3RlbnQgdmFsdWUu
Cj4gCgpJJ20gbm90IHN1cmUgd2hhdCB2YWx1ZSB3b3VsZCByZXNldHRpbmcgdGhlIFBIWSBwcm92
aWRlIGluIHRoZSBjYXNlIG9mIGZhaWx1cmUuCkFzIHBlciB0aGlzIHBhdGNoLCBza2lwX3Jlc2V0
IGlzIG9ubHkgZ29pbmcgdG8gYmUgc2V0IGZvciBwbGF0Zm9ybXMgd2hlcmUKYm9vdGxvYWRlciBo
YXMgYWxyZWFkeSBjb25maWd1cmVkIHRoZSBQSFkuIFNvIGluIHRoZSBjYXNlIG9mIFBIWSBsaW5r
IGZhaWx1cmUsCnNpbXBseSByZXNldHRpbmcgdGhlIFBIWSB3b24ndCBoZWxwIElNTyBhcyB0aGUg
UEhZIHJlZ2lzdGVyIGNvbnRlbnRzIGFyZSBnb2luZwp0byBiZSBwcmVzaXN0ZW50IGR1ZSB0byBu
b2Nzcl9yZXNldC4KCi0gTWFuaQoKPiA+IAo+ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBLcmlzaG5hIENoYWl0YW55YSBDaHVuZHJ1IDxrcmlzaG5hLmNodW5kcnVAb3NzLnF1
YWxjb21tLmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4gPiAgIGRyaXZlcnMvcGh5L3F1YWxjb21tL3Bo
eS1xY29tLXFtcC1wY2llLmMgfCAyOCArKysrKysrKysrKysrKysrKystLS0tLS0tLS0tCj4gPiA+
ID4gICAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCj4g
PiA+ID4gCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29t
LXFtcC1wY2llLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5jCj4g
PiA+ID4gaW5kZXggODZiMWI3ZTJkYTg2YTg2NzVlM2U0OGU5MGI3ODJhZmIyMWNhZmQ3Ny4uYzkz
ZTYxM2NmODBiMjYxMmYwZjIyNWZhMjEyNWY3OGRiZWMxYTMzZiAxMDA2NDQKPiA+ID4gPiAtLS0g
YS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5jCj4gPiA+ID4gKysrIGIv
ZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUuYwo+ID4gPiA+IEBAIC0zMTUz
LDYgKzMxNTMsNyBAQCBzdHJ1Y3QgcW1wX3BjaWUgewo+ID4gPiA+ICAgCWNvbnN0IHN0cnVjdCBx
bXBfcGh5X2NmZyAqY2ZnOwo+ID4gPiA+ICAgCWJvb2wgdGNzcl80bG5fY29uZmlnOwo+ID4gPiA+
ICAgCWJvb2wgc2tpcF9pbml0Owo+ID4gPiA+ICsJYm9vbCBza2lwX3Jlc2V0Owo+ID4gPiA+ICAg
CXZvaWQgX19pb21lbSAqc2VyZGVzOwo+ID4gPiA+ICAgCXZvaWQgX19pb21lbSAqcGNzOwo+ID4g
PiA+IEBAIC00NTM3LDYgKzQ1MzgsOSBAQCBzdGF0aWMgaW50IHFtcF9wY2llX2luaXQoc3RydWN0
IHBoeSAqcGh5KQo+ID4gPiA+ICAgCQlxcGh5X2NoZWNrYml0cyhwY3MsIGNmZy0+cmVnc1tRUEhZ
X1NUQVJUX0NUUkxdLCBTRVJERVNfU1RBUlQgfCBQQ1NfU1RBUlQpICYmCj4gPiA+ID4gICAJCXFw
aHlfY2hlY2tiaXRzKHBjcywgY2ZnLT5yZWdzW1FQSFlfUENTX1BPV0VSX0RPV05fQ09OVFJPTF0s
IGNmZy0+cHdyZG5fY3RybCk7Cj4gPiA+ID4gKwlxbXAtPnNraXBfcmVzZXQgPSBxbXAtPnNraXBf
aW5pdCAmJiAhcXBoeV9jaGVja2JpdHMocGNzLCBjZmctPnJlZ3NbUVBIWV9QQ1NfU1RBVFVTXSwK
PiA+ID4gCj4gPiA+IEl0IGlzIGRlZmluaXRlbHkgbm90IGEgbG9uZy10ZXJtIHN0YXRlLCB0aGVy
ZSBpcyBubyBuZWVkIHRvIHN0b3JlIGl0IGluCj4gPiA+IHFtcF9wY2llIHN0cnVjdC4KPiA+ID4g
Cj4gPiA+ID4gKwkJCQkJCQkgICAgY2ZnLT5waHlfc3RhdHVzKTsKPiA+ID4gPiArCj4gPiA+ID4g
ICAJaWYgKCFxbXAtPnNraXBfaW5pdCAmJiAhY2ZnLT50YmxzLnNlcmRlc19udW0pIHsKPiA+ID4g
PiAgIAkJZGV2X2VycihxbXAtPmRldiwgIkluaXQgc2VxdWVuY2Ugbm90IGF2YWlsYWJsZVxuIik7
Cj4gPiA+ID4gICAJCXJldHVybiAtRU5PREFUQTsKPiA+ID4gPiBAQCAtNDU2MCwxMyArNDU2NCwx
NSBAQCBzdGF0aWMgaW50IHFtcF9wY2llX2luaXQoc3RydWN0IHBoeSAqcGh5KQo+ID4gPiA+ICAg
CQl9Cj4gPiA+ID4gICAJfQo+ID4gPiA+IC0JcmV0ID0gcmVzZXRfY29udHJvbF9hc3NlcnQocW1w
LT5ub2Nzcl9yZXNldCk7Cj4gPiA+ID4gLQlpZiAocmV0KSB7Cj4gPiA+ID4gLQkJZGV2X2Vycihx
bXAtPmRldiwgIm5vLWNzciByZXNldCBhc3NlcnQgZmFpbGVkXG4iKTsKPiA+ID4gPiAtCQlnb3Rv
IGVycl9hc3NlcnRfcmVzZXQ7Cj4gPiA+ID4gLQl9Cj4gPiA+ID4gKwlpZiAoIXFtcC0+c2tpcF9y
ZXNldCkgewo+ID4gPiA+ICsJCXJldCA9IHJlc2V0X2NvbnRyb2xfYXNzZXJ0KHFtcC0+bm9jc3Jf
cmVzZXQpOwo+ID4gPiA+ICsJCWlmIChyZXQpIHsKPiA+ID4gPiArCQkJZGV2X2VycihxbXAtPmRl
diwgIm5vLWNzciByZXNldCBhc3NlcnQgZmFpbGVkXG4iKTsKPiA+ID4gPiArCQkJZ290byBlcnJf
YXNzZXJ0X3Jlc2V0Owo+ID4gPiA+ICsJCX0KPiA+ID4gPiAtCXVzbGVlcF9yYW5nZSgyMDAsIDMw
MCk7Cj4gPiA+ID4gKwkJdXNsZWVwX3JhbmdlKDIwMCwgMzAwKTsKPiA+ID4gPiArCX0KPiA+ID4g
PiAgIAlpZiAoIXFtcC0+c2tpcF9pbml0KSB7Cj4gPiA+ID4gICAJCXJldCA9IHJlc2V0X2NvbnRy
b2xfYnVsa19kZWFzc2VydChjZmctPm51bV9yZXNldHMsIHFtcC0+cmVzZXRzKTsKPiA+ID4gPiBA
QCAtNDY0MSwxMCArNDY0NywxMiBAQCBzdGF0aWMgaW50IHFtcF9wY2llX3Bvd2VyX29uKHN0cnVj
dCBwaHkgKnBoeSkKPiA+ID4gPiAgIAlpZiAocmV0KQo+ID4gPiA+ICAgCQlyZXR1cm4gcmV0Owo+
ID4gPiA+IC0JcmV0ID0gcmVzZXRfY29udHJvbF9kZWFzc2VydChxbXAtPm5vY3NyX3Jlc2V0KTsK
PiA+ID4gPiAtCWlmIChyZXQpIHsKPiA+ID4gPiAtCQlkZXZfZXJyKHFtcC0+ZGV2LCAibm8tY3Ny
IHJlc2V0IGRlYXNzZXJ0IGZhaWxlZFxuIik7Cj4gPiA+ID4gLQkJZ290byBlcnJfZGlzYWJsZV9w
aXBlX2NsazsKPiA+ID4gPiArCWlmICghcW1wLT5za2lwX3Jlc2V0KSB7Cj4gPiA+ID4gKwkJcmV0
ID0gcmVzZXRfY29udHJvbF9kZWFzc2VydChxbXAtPm5vY3NyX3Jlc2V0KTsKPiA+ID4gPiArCQlp
ZiAocmV0KSB7Cj4gPiA+ID4gKwkJCWRldl9lcnIocW1wLT5kZXYsICJuby1jc3IgcmVzZXQgZGVh
c3NlcnQgZmFpbGVkXG4iKTsKPiA+ID4gPiArCQkJZ290byBlcnJfZGlzYWJsZV9waXBlX2NsazsK
PiA+ID4gPiArCQl9Cj4gPiA+ID4gICAJfQo+ID4gPiA+ICAgCWlmIChxbXAtPnNraXBfaW5pdCkK
PiA+ID4gPiAKPiA+ID4gPiAtLSAKPiA+ID4gPiAyLjM0LjEKPiA+ID4gPiAKPiA+ID4gCj4gPiAK
PiAKPiAtLSAKPiBXaXRoIGJlc3Qgd2lzaGVzCj4gRG1pdHJ5CgotLSAK4K6u4K6j4K6/4K614K6j
4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
