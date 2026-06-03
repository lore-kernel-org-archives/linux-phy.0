Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C30F2CD6E4A
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 05:43:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=35OmQV/vsY8BnqLThAxaRba61ahacmhWJWfPHqqawK8=; b=ngiTo3DcwkFTHd
	tH9VBnvYZkVTZSpSKghB8sx/OfK+cNoaJVWNdheHE3WEJKw1gsyY+/tftSytgSa61DyofuBXmcndP
	PMOKlm7zcW0Afbnp/C+OtxU3t5bgovh3YPRPPt4g+xKy/OGgQ1GIWuqq5sN18oVO4AZLZEKXpWrqv
	XryPto7niASuW1SSvT4FJc76EIp2YApCwZIeXuAH6++yHqKBzYIW3V0XEMaM5lca0iQyPkw5royA3
	EmZLAuy3yIHvm+rH1JtxbuTVEhDnbrljTrck9dnLrSRrQcZgCzdkUiIqJsylrJow0kCsU4liQJWcM
	V8TpP9KqYzEDH/JUv7bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUeNs-0000000EIp7-2JEa;
	Wed, 03 Jun 2026 05:43:20 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUeNr-0000000EIoy-43bG
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 05:43:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D8D1060222;
	Wed,  3 Jun 2026 05:43:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A8971F00893;
	Wed,  3 Jun 2026 05:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780465398;
	bh=3LTD+XJkKGd5IErJKBFCejDTlCFHWVDxbcdMQLn50Aw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=W+NtiAfIjRF5VCLdw4kn7mMyDpL40dJTSDy/cj/8p92WGyvsP9P0NdkSWpbRmYnxX
	 1r3K3sb64vC2v7k68ls+2yQyLj+KX5gE/Cc0PmOEVEsuXkcMnAWKpA0CoumsHiDUdj
	 yrdt66O0zhsAF7FaayTnbzz/bQx8GTDzZeW812gDQF7RN7p66vWZ/3tHkTct2gnpLg
	 QePvli6ciAjWAcSb67vwOa8eXZB2D7vIKkJ7OqdxVePpUx+od4I9gKC8x73/xH/NM9
	 tUOB3luO5YNoFX9bDjgrlk39jv16PyOk+JMRVeBANVa2JWmEZ566E6Sz741EJkTOOi
	 CQYJ8F6pzIvGw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/5] phy: fsl-imx8mq-usb: fix typec switch leak on
 probe error path
To: "Xu Yang" <xu.yang_2@oss.nxp.com>
Cc: imx@lists.linux.dev, vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, Frank.Li@kernel.org
In-Reply-To: <20260603-imx8mp-usb-phy-improvement-v3-1-7afb8f89abc6@nxp.com>
References: <20260603-imx8mp-usb-phy-improvement-v3-1-7afb8f89abc6@nxp.com>
Date: Wed, 03 Jun 2026 05:43:17 +0000
Message-Id: <20260603054318.3A8971F00893@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBBIGNvbmN1cnJlbnQgY29uc3VtZXIgY2FuIGludm9rZSB0aGUgVHlwZS1DIHN3aXRj
aCBgLnNldGAgY2FsbGJhY2sgYmVmb3JlIGBpbXhfcGh5LT50Y2FgIGlzIGZ1bGx5IGluaXRpYWxp
emVkLCBjYXVzaW5nIGEgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlLgotLQoKY29tbWl0IDBiMjBm
ODI0YTllOWE5YzYxM2IxYmNjNjYxNjdmMDAzODJjOWE1YTEKQXV0aG9yOiBGZWxpeCBHdSA8dXN0
Yy5ndUBnbWFpbC5jb20+CgpwaHk6IGZzbC1pbXg4bXEtdXNiOiBmaXggdHlwZWMgc3dpdGNoIGxl
YWsgb24gcHJvYmUgZXJyb3IgcGF0aAoKVGhpcyBwYXRjaCBmaXhlcyBhIHR5cGVjIHN3aXRjaCBs
ZWFrIG9uIHRoZSBwcm9iZSBlcnJvciBwYXRoIGJ5IHVzaW5nCmRldm1fYWRkX2FjdGlvbl9vcl9y
ZXNldC4gVGhpcyBhbGxvd3MgY2xlYW5pbmcgdXAgdGhlIHN3aXRjaCBvbiBib3RoCnByb2JlIGZh
aWx1cmUgYW5kIGRyaXZlciByZW1vdmFsLCBlbGltaW5hdGluZyB0aGUgbmVlZCBmb3IgYSBzZXBh
cmF0ZQpyZW1vdmUgY2FsbGJhY2suCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9mcmVlc2Nh
bGUvcGh5LWZzbC1pbXg4bXEtdXNiLmMgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1p
bXg4bXEtdXNiLmMKPiAtLS0gYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4bXEt
dXNiLmMKPiArKysgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4bXEtdXNiLmMK
WyAuLi4gXQo+IEBAIC0yNDgsNiArMjQ4LDcgQEAgc3RhdGljIHN0cnVjdCB0Y2FfYmxrICppbXg5
NV91c2JfcGh5X2dldF90Y2Eoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiwKPiAgCXN0cnVj
dCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4gIAlzdHJ1Y3QgcmVzb3VyY2UgKnJlczsKPiAg
CXN0cnVjdCB0Y2FfYmxrICp0Y2E7Cj4gKwlpbnQgcmV0Owo+ICAKPiAgCXJlcyA9IHBsYXRmb3Jt
X2dldF9yZXNvdXJjZShwZGV2LCBJT1JFU09VUkNFX01FTSwgMSk7Cj4gIAlpZiAoIXJlcykKPiBA
QCAtMjY2LDE3ICsyNjcsMTEgQEAgc3RhdGljIHN0cnVjdCB0Y2FfYmxrICppbXg5NV91c2JfcGh5
X2dldF90Y2Eoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiwKPiAgCXRjYS0+b3JpZW50YXRp
b24gPSBUWVBFQ19PUklFTlRBVElPTl9OT1JNQUw7Cj4gIAl0Y2EtPnN3ID0gdGNhX2Jsa19nZXRf
dHlwZWNfc3dpdGNoKHBkZXYsIGlteF9waHkpOwoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzIGEg
cHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgaXMgaXQgcG9zc2libGUgZm9yIGEgY29uY3VycmVudCBj
b25zdW1lcgp0byBpbnZva2UgdGhlIFR5cGUtQyBzd2l0Y2ggLnNldCBjYWxsYmFjayBiZWZvcmUg
aW14X3BoeS0+dGNhIGlzIGZ1bGx5CmluaXRpYWxpemVkPwoKSW4gdGNhX2Jsa19nZXRfdHlwZWNf
c3dpdGNoKCksIHdlIGNhbGwgdHlwZWNfc3dpdGNoX3JlZ2lzdGVyKCkgd2hpY2ggbWFrZXMKdGhl
IHN3aXRjaCB2aXNpYmxlIHRvIHRoZSBzeXN0ZW0uIE9uY2UgcmVnaXN0ZXJlZCwgYSBjb25zdW1l
ciBjb3VsZAppbW1lZGlhdGVseSByZXNvbHZlIGl0IGFuZCBpbnZva2UgaXRzIC5zZXQgY2FsbGJh
Y2ssIHdoaWNoIGlzCnRjYV9ibGtfdHlwZWNfc3dpdGNoX3NldCgpLgoKSWYgdGhhdCBoYXBwZW5z
LCB0Y2FfYmxrX3R5cGVjX3N3aXRjaF9zZXQoKSBkb2VzOgoKdGNhX2Jsa190eXBlY19zd2l0Y2hf
c2V0KCkgewogICAgc3RydWN0IHRjYV9ibGsgKnRjYSA9IGlteF9waHktPnRjYTsKICAgIAogICAg
aWYgKHRjYS0+b3JpZW50YXRpb24gPT0gb3JpZW50YXRpb24pCiAgICAgICAgLi4uCn0KCkhvd2V2
ZXIsIGlteF9waHktPnRjYSBpcyBhc3NpZ25lZCB1c2luZyB0aGUgcmV0dXJuIHZhbHVlIG9mIHRo
aXMgZnVuY3Rpb24KbGF0ZXIgaW4gaW14OG1xX3VzYl9waHlfcHJvYmUoKToKCmlteDhtcV91c2Jf
cGh5X3Byb2JlKCkgewogICAgLi4uCiAgICBpbXhfcGh5LT50Y2EgPSBpbXg5NV91c2JfcGh5X2dl
dF90Y2EocGRldiwgaW14X3BoeSk7CiAgICAuLi4KfQoKQ291bGQgdGhpcyByYWNlIGNvbmRpdGlv
biByZXN1bHQgaW4gYSBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2UgaWYgdGhlCmNhbGxiYWNrIGZp
cmVzIGJlZm9yZSBwcm9iZSBmaW5pc2hlcyBhc3NpZ25pbmcgaW14X3BoeS0+dGNhPwoKPiAtCXJl
dHVybiB0Y2E7Cj4gLX0KPiAtCj4gLXN0YXRpYyB2b2lkIGlteDk1X3VzYl9waHlfcHV0X3RjYShz
dHJ1Y3QgaW14OG1xX3VzYl9waHkgKmlteF9waHkpCj4gLXsKPiAtCXN0cnVjdCB0Y2FfYmxrICp0
Y2EgPSBpbXhfcGh5LT50Y2E7Cj4gLQo+IC0JaWYgKCF0Y2EpCj4gLQkJcmV0dXJuOwo+ICsJcmV0
ID0gZGV2bV9hZGRfYWN0aW9uX29yX3Jlc2V0KCZwZGV2LT5kZXYsIHRjYV9ibGtfcHV0X3R5cGVj
X3N3aXRjaCwgdGNhLT5zdyk7Cj4gKwlpZiAocmV0KQo+ICsJCXJldHVybiBFUlJfUFRSKHJldCk7
Cj4gIAo+IC0JdGNhX2Jsa19wdXRfdHlwZWNfc3dpdGNoKHRjYS0+c3cpOwo+ICsJcmV0dXJuIHRj
YTsKPiAgfQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9w
YXRjaHNldC8yMDI2MDYwMy1pbXg4bXAtdXNiLXBoeS1pbXByb3ZlbWVudC12My0wLTdhZmI4Zjg5
YWJjNkBueHAuY29tP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
