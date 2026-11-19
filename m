Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8474606A320
	for <linux-phy@archiver.kernel.org>; Thu, 19 Nov 2026 15:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=OD8yA4xQ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Mo4y319x
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=JQqSOhhqKju6HLW0khaA4CGP0Kwu/33v13J4o3maTn8=; b=OD8yA4xQXcw4G3OgaA41E5GPJ0
	ogihd2yiDh/nGaiLBz4JC/XYR82EW/gyvWzILJ8uMpH8ISBeER1w+EvzaaVHyI/mfFLl/+R9zdxDg
	A6/5NXHrkyUFjRbBlsZAiHEzIXfAJGyNWTwj7DHVloqwqSMJlCn+JPz01DzP5mcQrYB7HrNeKtRFp
	aNJQMFxSlHLtomQmSurT46mgrGM40BNEPoebBehrtcPucai5xCEUhdGw2ZoTMFy/YaVBzhNk+kM5v
	IuJJdwNdb7bKiB4CBGvwSkjlsM1eY0o3QWo3lJBs491k0bA9asoqYsqGpVbrgAn/fcFGX1/bnEeda
	Om43ju2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU40z-0000000CRQl-2ETK;
	Thu, 19 Nov 2026 15:25:33 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU40y-0000000CRQR-0dEh
	for linux-phy@lists.infradead.org;
	Thu, 19 Nov 2026 15:25:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8F88C45D77;
	Thu, 19 Nov 2026 15:25:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B6CF1F000C6;
	Thu, 19 Nov 2026 15:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795101931;
	bh=FD3RnR70DS7Vh56jSG2faYGsDQ14YnTWsdAxJXK9pMU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Mo4y319xiEI+SrY8JcTnFeEnDM8QFDu9zXwN6rehRD5cfXHZJNGjTkM4F0PIsIiGa
	 oUEoBlWwKoq6u+c06IvEjPBx0mNN1VBDwS+Ae5LwNV7TiujzMChw47+CivsAuJB/E1
	 /Pn/Ppe7rSr64jWx+FXuRUDuu0RFq8W9hZ34plZKhTpjgk8BuIaIF4L7qJ7MTWF+Na
	 HqEbLI41B1AhwMDZ77RcyUwLKUt9M68PTtkzJliNYQYvxoWmvbrjoVbaOM5qQB8wba
	 aVkf9vqrihYfrWzyWwTzzBLNP0Fyzgo58+Md9+6bPSP0pU1NwdAyWTlvCvf+cJ7cTt
	 3gRerxqsjx5tQ==
Message-ID: <sashiko-outbox-223380@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v15 02/23] dt-bindings: ufs: mediatek,ufs: Complete the
 binding
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-scsi@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261119-mt8196-ufs-v15-2-aae1eb0382e8@collabora.com>
References: <20261119-mt8196-ufs-v15-0-aae1eb0382e8@collabora.com>
 <20261119-mt8196-ufs-v15-2-aae1eb0382e8@collabora.com>
Date: Thu, 19 Nov 2026 15:25:30 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gZHQtYmluZGluZ3M6IHVm
czogbWVkaWF0ZWs6IGluY29tcGF0aWJsZSBzY2hlbWEgYnJlYWtzCiAgaW4tdHJlZSBtdDgxOTUu
ZHRzaQotLQoKY29tbWl0IDg5N2Y2NzI2ZjE3YjYyMjdlZjk2MWNmY2M3MWM5YzMxM2MxNGEzZGYK
QXV0aG9yOiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEu
Y29tPgoKZHQtYmluZGluZ3M6IHVmczogbWVkaWF0ZWssdWZzOiBDb21wbGV0ZSB0aGUgYmluZGlu
ZwoKVGhpcyBjb21taXQgdXBkYXRlcyB0aGUgTWVkaWFUZWsgVUZTIGRldmljZXRyZWUgYmluZGlu
ZyBzY2hlbWEgdG8gYWRkCnJlc2V0cywgY29udHJvbGxlciBwb3dlciBzdXBwbGllcywgb3BlcmF0
aW5nLXBvaW50cy12MiwgYW5kIHVwZGF0ZWQKcGVyLVNvQyBjbG9jayBkZWZpbml0aW9ucyB3aGls
ZSBkaXNhbGxvd2luZyBmcmVxLXRhYmxlLWh6LgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9tZWRpYXRlayx1ZnMueWFtbCBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy91ZnMvbWVkaWF0ZWssdWZzLnlhbWwKPiBpbmRleCAxNWMz
NDdmNWU2NjA0Li45NDVjYjk4NmIwNmI3IDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy91ZnMvbWVkaWF0ZWssdWZzLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdWZzL21lZGlhdGVrLHVmcy55YW1sCj4gQEAgLTE5LDEx
ICsxOSwyNSBAQCBwcm9wZXJ0aWVzOgo+ICAKPiAgICBjbG9ja3M6Cj4gICAgICBtaW5JdGVtczog
MQo+IC0gICAgbWF4SXRlbXM6IDgKPiArICAgIG1heEl0ZW1zOiAxMAo+ICAKPiAgICBjbG9jay1u
YW1lczoKPiAgICAgIG1pbkl0ZW1zOiAxCj4gLSAgICBtYXhJdGVtczogOAo+ICsgICAgaXRlbXM6
Cj4gKyAgICAgIC0gY29uc3Q6IG1haW4KPiArICAgICAgLSBjb25zdDogYWVzCj4gKyAgICAgIC0g
Y29uc3Q6IHRpY2sKPiArICAgICAgLSBjb25zdDogdW5pcHJvX3N5c2Nsawo+ICsgICAgICAtIGNv
bnN0OiB1bmlwcm9fdGljawo+ICsgICAgICAtIGNvbnN0OiB1bmlwcm9fbXBfYmNsawo+ICsgICAg
ICAtIGNvbnN0OiB0eF9zeW1ib2wKPiArICAgICAgLSBjb25zdDogbWVtX3N1Ygo+ICsgICAgICAt
IGNvbnN0OiByeF9zeW1ib2wwCj4gKyAgICAgIC0gY29uc3Q6IHJ4X3N5bWJvbDEKPiArCj4gKyAg
b3BlcmF0aW5nLXBvaW50cy12MjogdHJ1ZQo+ICsKPiArICBmcmVxLXRhYmxlLWh6OiBmYWxzZQoK
WyAuLi4gXQoKPiBAQCAtNTQsMjkgKzk2LDQxIEBAIGFsbE9mOgo+ICAgICAgICBwcm9wZXJ0aWVz
Ogo+ICAgICAgICAgIGNvbXBhdGlibGU6Cj4gICAgICAgICAgICBjb250YWluczoKPiAtICAgICAg
ICAgICAgZW51bToKPiAtICAgICAgICAgICAgICAtIG1lZGlhdGVrLG10ODE5NS11ZnNoY2kKPiAr
ICAgICAgICAgICAgY29uc3Q6IG1lZGlhdGVrLG10ODE4My11ZnNoY2kKPiAgICAgIHRoZW46Cj4g
ICAgICAgIHByb3BlcnRpZXM6Cj4gICAgICAgICAgY2xvY2tzOgo+IC0gICAgICAgICAgbWluSXRl
bXM6IDgKPiArICAgICAgICAgIG1heEl0ZW1zOiAxCj4gICAgICAgICAgY2xvY2stbmFtZXM6Cj4g
ICAgICAgICAgICBpdGVtczoKPiAtICAgICAgICAgICAgLSBjb25zdDogdWZzCj4gLSAgICAgICAg
ICAgIC0gY29uc3Q6IHVmc19hZXMKPiAtICAgICAgICAgICAgLSBjb25zdDogdWZzX3RpY2sKPiAt
ICAgICAgICAgICAgLSBjb25zdDogdW5pcHJvX3N5c2Nsawo+IC0gICAgICAgICAgICAtIGNvbnN0
OiB1bmlwcm9fdGljawo+IC0gICAgICAgICAgICAtIGNvbnN0OiB1bmlwcm9fbXBfYmNsawo+IC0g
ICAgICAgICAgICAtIGNvbnN0OiB1ZnNfdHhfc3ltYm9sCj4gLSAgICAgICAgICAgIC0gY29uc3Q6
IHVmc19tZW1fc3ViCj4gLSAgICBlbHNlOgo+ICsgICAgICAgICAgICAtIGNvbnN0OiBtYWluCj4g
KyAgICAgICAgYXZkZDEyLWNrYnVmLXN1cHBseTogZmFsc2UKPiArICAtIGlmOgo+ICsgICAgICBw
cm9wZXJ0aWVzOgo+ICsgICAgICAgIGNvbXBhdGlibGU6Cj4gKyAgICAgICAgICBjb250YWluczoK
PiArICAgICAgICAgICAgY29uc3Q6IG1lZGlhdGVrLG10ODE5Mi11ZnNoY2kKPiArICAgIHRoZW46
Cj4gICAgICAgIHByb3BlcnRpZXM6Cj4gICAgICAgICAgY2xvY2tzOgo+IC0gICAgICAgICAgbWF4
SXRlbXM6IDEKPiArICAgICAgICAgIG1pbkl0ZW1zOiAzCj4gKyAgICAgICAgICBtYXhJdGVtczog
Mwo+ICAgICAgICAgIGNsb2NrLW5hbWVzOgo+IC0gICAgICAgICAgaXRlbXM6Cj4gLSAgICAgICAg
ICAgIC0gY29uc3Q6IHVmcwo+ICsgICAgICAgICAgbWluSXRlbXM6IDMKPiArICAgICAgICAgIG1h
eEl0ZW1zOiAzCj4gKyAgICAgICAgYXZkZDA5LXN1cHBseTogZmFsc2UKPiArICAtIGlmOgo+ICsg
ICAgICBwcm9wZXJ0aWVzOgo+ICsgICAgICAgIGNvbXBhdGlibGU6Cj4gKyAgICAgICAgICBjb250
YWluczoKPiArICAgICAgICAgICAgY29uc3Q6IG1lZGlhdGVrLG10ODE5NS11ZnNoY2kKPiArICAg
IHRoZW46Cj4gKyAgICAgIHByb3BlcnRpZXM6Cj4gKyAgICAgICAgY2xvY2tzOgo+ICsgICAgICAg
ICAgbWluSXRlbXM6IDEwCj4gKyAgICAgICAgY2xvY2stbmFtZXM6Cj4gKyAgICAgICAgICBtaW5J
dGVtczogMTAKPiArICAgICAgICBhdmRkMDktc3VwcGx5OiBmYWxzZQoKW1NldmVyaXR5OiBNZWRp
dW1dCkRvZXMgcmVuYW1pbmcgY2xvY2stbmFtZXMsIHNldHRpbmcgZnJlcS10YWJsZS1oejogZmFs
c2UsIGFuZCByZXF1aXJpbmcgMTAKY2xvY2tzIGZvciBtZWRpYXRlayxtdDgxOTUtdWZzaGNpIGJy
ZWFrIERUIEFCSSBjb21wYXRpYmlsaXR5IGFuZApkdGJzX2NoZWNrIGZvciB0aGUgZXhpc3Rpbmcg
aW4tdHJlZSB1ZnNoY2lAMTEyNzAwMDAgbm9kZSBpbgphcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlh
dGVrL210ODE5NS5kdHNpPwoKQ29udHJhcnkgdG8gdGhlIGNvbW1pdCBtZXNzYWdlLCBtZWRpYXRl
ayxtdDgxOTUtdWZzaGNpIGlzIGFscmVhZHkgdXNlZCBpbgptYWlubGluZSAoYW5kIGVuYWJsZWQg
YnkgbXQ4Mzk1LWdlbmlvLTEyMDAtZXZrLXVmcy5kdHMgYW5kCm10ODM5NS1yYWR4YS1uaW8tMTJs
LmR0cykgd2l0aCB0aGUgOCBwcmV2aW91c2x5IGRvY3VtZW50ZWQgY2xvY2sgbmFtZXMgYW5kCmZy
ZXEtdGFibGUtaHo6CgphcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210ODE5NS5kdHNpIHsK
ICAgIC4uLgoJCXVmc2hjaTogdWZzaGNpQDExMjcwMDAwIHsKCQkJY29tcGF0aWJsZSA9ICJtZWRp
YXRlayxtdDgxOTUtdWZzaGNpIjsKICAgIC4uLgoJCQljbG9jay1uYW1lcyA9ICJ1ZnMiLCAidWZz
X2FlcyIsICJ1ZnNfdGljayIsCgkJCQkJInVuaXByb19zeXNjbGsiLCAidW5pcHJvX3RpY2siLAoJ
CQkJCSJ1bmlwcm9fbXBfYmNsayIsICJ1ZnNfdHhfc3ltYm9sIiwKCQkJCQkidWZzX21lbV9zdWIi
OwoJCQlmcmVxLXRhYmxlLWh6ID0gPDAgMD4sIDwwIDA+LCA8MCAwPiwKCQkJCQk8MCAwPiwgPDAg
MD4sIDwwIDA+LAoJCQkJCTwwIDA+LCA8MCAwPjsKICAgIC4uLgp9CgpCZWNhdXNlIHRob3NlIGNo
YW5nZXMgYXJlIG5vdCBiYWNrd2FyZHMtY29tcGF0aWJsZSB3aXRoIHRoZSBleGlzdGluZyBEVFMs
CnJ1bm5pbmcgbWFrZSBkdGJzX2NoZWNrIGZhaWxzIG9uIHRoZSBNVDgxOTUgYW5kIE1UODM5NSBi
b2FyZHMuCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3Bh
dGNoc2V0LzIwMjYxMTE5LW10ODE5Ni11ZnMtdjE1LTAtYWFlMWViMDM4MmU4QGNvbGxhYm9yYS5j
b20/cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
