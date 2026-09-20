Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48EC1C982DA
	for <linux-phy@archiver.kernel.org>; Sun, 20 Sep 2026 12:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WEVjhP+9s46sDddWKIlmuPaejMJroEdDDlPCr8FWjEA=; b=dZ8Cg0UjibKSdf
	Pcd+sGiyAV1IAiJiMcXgQ1879w6r/6DkhWsK0/ljmK9D2G9D2qkJIdbBCvBKQvekquA6l8P1B8hPQ
	oU4fUJErpDyiBeV9amvUujx2vacaTi6um7TITPwW6ZyswGJTTLRNm+U2L59vXGpjlatUtbeR5sl7w
	XSRT943jILlgTYUmz173489e6h48FzfBxZiHMnaRUa297US807KU/YFyVQpVOx5uCDAsUmPjmnlpF
	HuCV9DXcmTUxhvKHwgBHG64iXSudpEKTaQ2VOVaK8nq+C4ZKAc7s09f6K43qQe993agQhbhBa8n2b
	YBBDigqSMOwwH+cxo8DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8H2o-0000000HTCU-0CXh;
	Sun, 20 Sep 2026 12:53:22 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8H2n-0000000HTC2-0eKF
	for linux-phy@lists.infradead.org;
	Sun, 20 Sep 2026 12:53:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3BB4C601FF;
	Sun, 20 Sep 2026 12:53:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D9001F00893;
	Sun, 20 Sep 2026 12:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789908799;
	bh=v2l60P4XbYSqxLiNQ8qMCT/wM2wFsRk4MS6VFdhfcT8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=aY6ZDoRuX5g8Q/4j1I9SAc4qGTr7860RAN/xeYOYo+gu3Rap5/2T3zmNv6ICaVRhR
	 xJRoA3FjUvBtCtwrcMM0L91UzN9gJdDCKxge7r2uHeFD4b7wCbjWdtU4xPVV5Dkacp
	 OfpuLpAQAVPZT1spzrL0pVeDIwgiOvXe5m9l4PS9eA5D2kaDf/ceUpBnLUioCT99In
	 pscJU3xTvnlID9ljUMm7f9F0ZNBS00pevyK0z4NRRwZM3dFF91BcRMF+0Us928tYUQ
	 /Vn9n1SCIrVkEFVRWP+4zgFa6RUXYNoo4Xt4hfLGDwGmvU2y+aPtNI0vSxtcmv3/aw
	 51IiYUpY7h79Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v8 07/11] net: pcs: xpcs: add Rockchip RK3568
 platform glue driver
To: "Coia Prant" <coiaprant@gmail.com>
Cc: conor+dt@kernel.org, wsa+renesas@sang-engineering.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, robh@kernel.org, vkoul@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org
In-Reply-To: <20260919125119.2107089-8-coiaprant@gmail.com>
References: <20260919125119.2107089-1-coiaprant@gmail.com>
 <20260919125119.2107089-8-coiaprant@gmail.com>
Date: Sun, 20 Sep 2026 12:53:19 +0000
Message-Id: <20260920125319.8D9001F00893@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIG5ldDogcGNzOiB4cGNz
LXJrOiBVQUYgaW4geHBjc19ya19jcmVhdGUgZHVlIHRvIFRPQ1RPVSBhbmQgdW5wcm90ZWN0ZWQg
ZGV2cmVzIGFjY2VzcwotLQoKY29tbWl0IDJlN2Y0OTA5MDdlODM3ODg0ODEzNjliZjQzYWQzNWFi
ZTBkNTY1MDQKQXV0aG9yOiBDb2lhIFByYW50IDxjb2lhcHJhbnRAZ21haWwuY29tPgoKbmV0OiBw
Y3M6IHhwY3M6IGFkZCBSb2NrY2hpcCBSSzM1NjggcGxhdGZvcm0gZ2x1ZSBkcml2ZXIKClRoaXMg
Y29tbWl0IGludHJvZHVjZXMgYSBnZW5lcmljIHBsYXRmb3JtIGdsdWUgZHJpdmVyIGZvciB0aGUg
U3lub3BzeXMKRGVzaWduV2FyZSBYUENTIG9uIFJvY2tjaGlwIFJLMzU2OCBTb0NzLiBJdCB0cmFu
c2xhdGVzIHN0YW5kYXJkIE1ESU8Kb3BlcmF0aW9ucyBpbnRvIEFQQjMgbWVtb3J5LW1hcHBlZCBy
ZWdpc3RlciBhY2Nlc3NlcyBieSBjcmVhdGluZyBhCnZpcnR1YWwgTURJTyBidXMuCgpMaW5rOiBo
dHRwczovL2RsLnJhZHhhLmNvbS9yb2NrMy9kb2NzL2h3L2RhdGFzaGVldC9Sb2NrY2hpcCUyMFJL
MzU2OCUyMFRSTSUyMFBhcnQxJTIwVjEuMS0yMDIxMDMwMS5wZGYKTGluazogaHR0cHM6Ly9kbC5y
YWR4YS5jb20vcm9jazMvZG9jcy9ody9kYXRhc2hlZXQvUm9ja2NoaXAlMjBSSzM1NjglMjBUUk0l
MjBQYXJ0MiUyMFYxLjEtMjAyMTAzMDEucGRmCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9w
Y3MvcGNzLXhwY3MtcmsuYyBiL2RyaXZlcnMvbmV0L3Bjcy9wY3MteHBjcy1yay5jCj4gbmV3IGZp
bGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi44NGY4ZWE3ZmE1N2U4Cj4gLS0t
IC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvbmV0L3Bjcy9wY3MteHBjcy1yay5jCgpbIC4uLiBd
Cgo+ICtzdHJ1Y3QgZHdfeHBjcyAqeHBjc19ya19jcmVhdGUoc3RydWN0IGRldmljZSAqZGV2LCBz
dHJ1Y3QgZGV2aWNlX25vZGUgKm5wKQo+ICt7Cj4gKwlzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpw
ZGV2OwoKWyAuLi4gXQoKPiArCWlmICghZGV2aWNlX2xpbmtfYWRkKGRldiwgJnBkZXYtPmRldiwg
RExfRkxBR19BVVRPUkVNT1ZFX0NPTlNVTUVSKSkgewo+ICsJCXB1dF9kZXZpY2UoJnBkZXYtPmRl
dik7Cj4gKwkJcmV0dXJuIEVSUl9QVFIoLUVQUk9CRV9ERUZFUik7Cj4gKwl9Cj4gKwo+ICsJZGV2
aWNlX2xvY2soJnBkZXYtPmRldik7Cj4gKwlpZiAoIWRldmljZV9pc19ib3VuZCgmcGRldi0+ZGV2
KSkgewo+ICsJCWRldmljZV91bmxvY2soJnBkZXYtPmRldik7Cj4gKwkJcHV0X2RldmljZSgmcGRl
di0+ZGV2KTsKPiArCQlyZXR1cm4gRVJSX1BUUigtRVBST0JFX0RFRkVSKTsKPiArCX0KPiArCWRl
dmljZV91bmxvY2soJnBkZXYtPmRldik7Cj4gKwo+ICsJcHhwY3MgPSBwbGF0Zm9ybV9nZXRfZHJ2
ZGF0YShwZGV2KTsKPiArCWlmICghcHhwY3MgfHwgIXB4cGNzLT5idXMpIHsKCltTZXZlcml0eTog
SGlnaF0KQ2FuIHRoaXMgcmVzdWx0IGluIGEgdXNlLWFmdGVyLWZyZWUgb2YgdGhlIHN1cHBsaWVy
IGRldnJlcyBkYXRhPwoKSWYgdGhlIFhQQ1MgZHJpdmVyIHVuYmluZHMgd2hpbGUgYSBzZWNvbmQg
TUFDIGNvbnN1bWVyIHByb2JlcywgdGhlIG5ld2x5CmNyZWF0ZWQgZGV2aWNlIGxpbmsgd2lsbCBi
ZSBpbiB0aGUgRExfU1RBVEVfU1VQUExJRVJfVU5CSU5EIHN0YXRlLiBCZWNhdXNlCm9mIHRoaXMg
c3RhdGUsIGRldmljZV9saW5rc191bmJpbmRfY29uc3VtZXJzKCkgaWdub3JlcyBpdCBhbmQgZG9l
cyBub3Qgd2FpdC4KClNpbmNlIHRoZSBkZXZpY2VfbG9jaygpIGlzIGRyb3BwZWQgYmVmb3JlIGNh
bGxpbmcgcGxhdGZvcm1fZ2V0X2RydmRhdGEoKSwKY291bGQgdGhlIHVuYmluZCBmaW5pc2ggYW5k
IGZyZWUgdGhlIHB4cGNzIGRldnJlcyBhbGxvY2F0aW9uIGJlZm9yZSB3ZQpkZXJlZmVyZW5jZSBw
eHBjcy0+YnVzIGJlbG93PwoKQ1BVMSAoU3VwcGxpZXIgVW5iaW5kaW5nKSAgICAgICAgICAgICBD
UFUyIChDb25zdW1lciBQcm9iaW5nKQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGRldmljZV9saW5rX2FkZCgpCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgZGV2aWNlX2xvY2soKQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRl
dmljZV9pc19ib3VuZCgpIHJldHVybnMgdHJ1ZQogICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGRldmljZV91bmxvY2soKQp1bmJpbmQgY29tcGxldGVzCmRldnJlcyBmcmVlcyBw
eHBjcwogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHB4cGNzID0gcGxhdGZv
cm1fZ2V0X2RydmRhdGEocGRldik7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgeHBjc19jcmVhdGVfbWRpb2RldihweHBjcy0+YnVzLCAuLi4pCgo+ICsJCXB1dF9kZXZpY2Uo
JnBkZXYtPmRldik7Cj4gKwkJcmV0dXJuIEVSUl9QVFIoLUVQUk9CRV9ERUZFUik7Cj4gKwl9Cj4g
Kwo+ICsJeHBjcyA9IHhwY3NfY3JlYXRlX21kaW9kZXYocHhwY3MtPmJ1cywgKGludClwb3J0KTsK
PiArCWlmIChJU19FUlIoeHBjcykpIHsKPiArCQlwdXRfZGV2aWNlKCZwZGV2LT5kZXYpOwo+ICsJ
CXJldHVybiB4cGNzOwo+ICsJfQoKWyAuLi4gXQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0
dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkxOTEyNTExOS4yMTA3MDg5LTEtY29p
YXByYW50QGdtYWlsLmNvbT9wYXJ0PTcKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
