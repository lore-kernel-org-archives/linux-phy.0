Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70B9606A32D
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 18:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4Cly/3Zu;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=ady0plQI
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Vd2TCeQOjNz09qOwH6Gq/Stfbcl2lDKBs9BPrNPquhY=; b=4Cly/3ZuGYiUEvBsQXkU0iUqAJ
	gD0xIstiqT7raBFgSO2QcI1YbzdtHdsfmd2tZiq4sPzXske6ki7kNnwbnNnNVrEOAbh0/igcw1ZxD
	d8iWCs3EhK/HZAc3MUsB8u3QKA+jguT/ZFlx/67NY8btDiXXi8GwEPxVD3Y+Ndxgfc8GGcFOp+Nlo
	2tWxYMPtovnr46smyh/mm3eXzUoTPOmTxqF+5e6CFoFRXEkihJII5269MwX9bv/AxMlwloxiOD3qt
	5tZ2cXRAmutlKDoxhh6GcbVNw8fZuQMkQfZ+U+nZ4fp4Mu+FxqS2Hlq8Zes1WW+eClV6L3LDGmBwk
	WGwdXTRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVZ6Y-00000004a04-2ZwY;
	Mon, 23 Nov 2026 18:49:30 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVZ6X-00000004Zzs-1qxK
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 18:49:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5FE0360F13;
	Mon, 23 Nov 2026 18:49:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23B951F000C6;
	Mon, 23 Nov 2026 18:49:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795459767;
	bh=qdOirH751T6yc5stWtVH4gVrsmB09EyvutyaMmR4CTw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ady0plQIBLuWfhEFPx00lOIjz3zchA4MWxao94lM1PamShUVP6YduZZQsc4/RBatX
	 7IWMZ6UEaCkiFAuRMFfNU4rpVsptTi6SvC1RJDxjsDUKUCNdBrEhWrwT2Yenx85qWn
	 8ByZIhTMrDupwrLoHOwoe2YSVHdcuEVRcU1UiiRBSrIyfKZwmQaJFCc8kKtViWPBbk
	 YzSYBmWM9MILxkLVsdfBZbnvT9s80UJT4STBd7ZcFiwn2i5CPgFWFevo9sz9EPe9pN
	 YcBlhySIxhsj4D/6DKZr+LRKkIBgVMEQ0jefSnYSfbiQYXEBNwHO/LAsp8fjZUrB7D
	 jnp3f8E9Wp2/g==
Message-ID: <sashiko-outbox-229877@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/8] dt-bindings: clock: Describe CS7542 PCIe gates and
 resets
To: "Fil Dunsky" <filipp.dunsky@gmail.com>
Cc: linux-pci@vger.kernel.org, linux-clk@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261123-b4-cs7542-pcie-v1-2-4cde5201d404@gmail.com>
References: <20261123-b4-cs7542-pcie-v1-0-4cde5201d404@gmail.com>
 <20261123-b4-cs7542-pcie-v1-2-4cde5201d404@gmail.com>
Date: Mon, 23 Nov 2026 18:49:26 +0000
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
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gZHQtYmluZGluZ3M6IGNs
b2NrOiB2aXJ0dWFsIGNoaWxkIG5vZGUgZm9yIHBhcmVudCBzeXNjb24KICBjbG9ja3MgYW5kIHJl
c2V0cwotLQoKY29tbWl0IDlkNTJkMjY1MGZlMzVkZDlhNDIyYzk5YmI3MDVhMzZhOTljMWVkOWYK
QXV0aG9yOiBGaWwgRHVuc2t5IDxmaWxpcHAuZHVuc2t5QGdtYWlsLmNvbT4KCmR0LWJpbmRpbmdz
OiBjbG9jazogRGVzY3JpYmUgQ1M3NTQyIFBDSWUgZ2F0ZXMgYW5kIHJlc2V0cwoKVGhpcyBjb21t
aXQgYWRkcyBhIERldmljZXRyZWUgYmluZGluZyBmb3IgdGhlIENvcnRpbmEgU3lzdGVtcyBDUzc1
NDIgUENJZQpjbG9jayBnYXRlcyBhbmQgcmVzZXRzIGFzIGEgY2hpbGQgbm9kZSBvZiB0aGUgZ2xv
YmFsIGNvbnRyb2wgc3lzY29uLgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2Nsb2NrL2NvcnRpbmEsY3M3NTQyLXBjaWUtY29udHJvbC55YW1sIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL2NvcnRpbmEsY3M3NTQyLXBjaWUt
Y29udHJvbC55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAw
Li4wOGUwMjE0ZDJiYjIyCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9jbG9jay9jb3J0aW5hLGNzNzU0Mi1wY2llLWNvbnRyb2wueWFtbAo+
IEBAIC0wLDAgKzEsNDcgQEAKWyAuLi4gXQo+ICtwcm9wZXJ0aWVzOgo+ICsgIGNvbXBhdGlibGU6
Cj4gKyAgICBjb25zdDogY29ydGluYSxjczc1NDItcGNpZS1jb250cm9sCj4gKwo+ICsgICIjY2xv
Y2stY2VsbHMiOgo+ICsgICAgY29uc3Q6IDEKPiArCj4gKyAgIiNyZXNldC1jZWxscyI6Cj4gKyAg
ICBjb25zdDogMQpbIC4uLiBdCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9zb2MvY29ydGluYS9jb3J0aW5hLGNzNzU0Mi1zeXNjb24ueWFtbCBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2MvY29ydGluYS9jb3J0aW5hLGNzNzU0Mi1z
eXNjb24ueWFtbAo+IGluZGV4IGZiMDc0ZGU4NzBiZDQuLjUyNTk3YzRlODRkMjAgMTAwNjQ0Cj4g
LS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9jb3J0aW5hL2NvcnRp
bmEsY3M3NTQyLXN5c2Nvbi55YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3NvYy9jb3J0aW5hL2NvcnRpbmEsY3M3NTQyLXN5c2Nvbi55YW1sCj4gQEAgLTI5LDYg
KzI5LDEwIEBAIHByb3BlcnRpZXM6Cj4gICAgIiNjbG9jay1jZWxscyI6Cj4gICAgICBjb25zdDog
MQo+ICAKPiArICBwY2llLWNvbnRyb2w6Cj4gKyAgICB0eXBlOiBvYmplY3QKPiArICAgICRyZWY6
IC9zY2hlbWFzL2Nsb2NrL2NvcnRpbmEsY3M3NTQyLXBjaWUtY29udHJvbC55YW1sIwoKW1NldmVy
aXR5OiBNZWRpdW1dClNob3VsZCB0aGUgUENJZSBnYXRlIGNsb2NrcyBhbmQgY29udHJvbGxlciBy
ZXNldHMgYmUgcHJvdmlkZWQgZGlyZWN0bHkgYnkKdGhlIHBhcmVudCBjb3J0aW5hLGNzNzU0Mi1z
eXNjb24gbm9kZSBpbnN0ZWFkIG9mIGEgcmVzb3VyY2UtbGVzcwpwY2llLWNvbnRyb2wgY2hpbGQg
bm9kZT8KClRoZSBwYXJlbnQgbm9kZSBhbHJlYWR5IG1hcHMgdGhlIDB4MTAwLWJ5dGUgZ2xvYmFs
IGNvbnRyb2wgcmVnaXN0ZXIgYmxvY2sKYW5kIGFjdHMgYXMgYSBjbG9jayBwcm92aWRlciB3aXRo
ICNjbG9jay1jZWxscyA9IDwxPi4gIENyZWF0aW5nIGEgY2hpbGQKbm9kZSB3aXRoIG5vIHJlZyBw
cm9wZXJ0eSBvciBEZXZpY2V0cmVlIHJlc291cmNlcyBvZiBpdHMgb3duIHB1dHMgYQpkcml2ZXIg
c3BsaXQgaW50byB0aGUgRGV2aWNldHJlZSBBQkksIGNvbnRyYXJ5IHRvCkRvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy93cml0aW5nLWJpbmRpbmdzLnJzdC4KCi0tIApTYXNoaWtvIEFJ
IHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjExMjMtYjQtY3M3
NTQyLXBjaWUtdjEtMC00Y2RlNTIwMWQ0MDRAZ21haWwuY29tP3BhcnQ9MgoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
