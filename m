Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94622C61DD6
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 20:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CF9Rccna/FZGsdGwca3Y0LxfS3uVQkdZnCXlwl5idaM=; b=AKba+HwaimKkDt
	4qyT6Sydu/M3yoak8+PfpV91TOujSkGevUBVlXHYfeKNtaqvM06iGEu8Wt1MJGXKbhZNaewJ8gUuA
	1OrUBJukMGNy3j2tldNzET7URZSA/g7N6hg5Fib3Dib5Qsgo/48so1RgF08VO4HDbVV2wPkQOTE/P
	7dEDkTk7f33nxW+C8zMl0Y80qia1TTTtSf/GsjPxzEtmloCqfO1qFfI265PKEbRScGmDrLNUTOGQ4
	wPxynpEAb7vRTj4UZJ9OMjKr76MkOI0BefYg8eYYb938D7T+S9RVPO2K7s+Ive8sKnptfvzNf7tm0
	mPbHeJskysg1RqV/ZuVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Uqe-0000000DIlj-1Vda;
	Tue, 01 Sep 2026 20:12:48 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Uqc-0000000DIlI-3VEg
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 20:12:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2A3E743D1A;
	Tue,  1 Sep 2026 20:12:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9B701F000E9;
	Tue,  1 Sep 2026 20:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788293566;
	bh=J6Jypjb96geaVzrdSgj1oXfm2Z17smAjG6LAyTA5atA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KDQH5PadF36Q2j4JCkAOXfmHf3kGVwvur/WsTHwULywQrqPNJSN9wpuAVZSfbPWvA
	 CgcCW+7QNnUMlCRy/BkLqDKfdI669X1Ts91A1PfGItYnDlpiYf4dGL5ZXd/wvOEDxi
	 NesEmCmakd3GmOoJJkqAKv9Uyp+2/ql/Vx8ZDGFPKuutlgbsgA/MyAZt9gLVXYi3c3
	 wl6dwYShPwAiHQvUCWLzn5tFR/9Hq92L5PjmFsO03Jea3V5zyphWjCungbkdP1Zupf
	 SMYB3ZSL+vPc66bJEy4UDWQDclU7BQyiV4KS9Za6K3iiXlj+DggzPSKPltE/y6hgO/
	 IBQwg7ntaxAwQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/3] phy: rockchip: samsung-hdptx: Add support for
 FRL TxFFE level control
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Cc: linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260901-hdptx-ffe-v2-3-3a5922c76fc5@collabora.com>
References: <20260901-hdptx-ffe-v2-0-3a5922c76fc5@collabora.com>
 <20260901-hdptx-ffe-v2-3-3a5922c76fc5@collabora.com>
Date: Tue, 01 Sep 2026 20:12:45 +0000
Message-Id: <20260901201245.C9B701F000E9@smtp.kernel.org>
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
IFtIaWdoXSBgcGh5X3ZhbGlkYXRlKClgIGlnbm9yZXMgdGhlIHByb3ZpZGVkIGBzdWJtb2RlYCBw
YXJhbWV0ZXIgYW5kIHJlbGllcyBvbiB0aGUgc3RhdGVmdWwgYGhkcHR4LT5oZG1pX2NmZy5tb2Rl
YCwgY2F1c2luZyB1bmlvbiBhbGlhc2luZyB2YWxpZGF0aW9uIGVycm9ycy4gV2l0aCB0aGUgbmV3
IEZGRSBsZXZlbCBjaGVjaywgdGhpcyBjYW4gaW5jb3JyZWN0bHkgdmFsaWRhdGUgYW4gaW52YWxp
ZCBUTURTIHJhdGUgYnkgaW50ZXJwcmV0aW5nIGl0IGFzIGFuIEZSTCBGRkUgbGV2ZWwgdXBkYXRl
LgotLQoKY29tbWl0IGJkNmYzZDA3MWEzNDk5Yjk1MjdiMjkyYTdiYzhkOGJhYWMzM2YzYTYKQXV0
aG9yOiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29t
PgoKcGh5OiByb2NrY2hpcDogc2Ftc3VuZy1oZHB0eDogQWRkIHN1cHBvcnQgZm9yIEZSTCBUeEZG
RSBsZXZlbCBjb250cm9sCiAgICAKVGhpcyBjb21taXQgd2lyZXMgdXAgb3B0aW9uYWwgRlJMIFR4
RkZFIGxldmVsIGNvbnRyb2wgaW4gdGhlIFNhbXN1bmcgSERQVFgKUEhZIGRyaXZlci4gSXQgZW5h
YmxlcyB0aGUgc291cmNlIHRvIGluY3JlbWVudGFsbHkgcmFpc2UgdGhlIFR4RkZFIGxldmVsIGlu
CnJlc3BvbnNlIHRvIHBlcnNpc3RlbnQgbGluayBmYWlsdXJlcyByZXBvcnRlZCBieSB0aGUgc2lu
ay4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1z
dW5nLWhkcHR4LmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1o
ZHB0eC5jCj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1bmct
aGRwdHguYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1zdW5n
LWhkcHR4LmMKWyAuLi4gXQo+IEBAIC0xNzM1LDYgKzE3ODUsMTMgQEAgc3RhdGljIGludCBya19o
ZHB0eF9waHlfdmVyaWZ5X2hkbWlfY29uZmlnKHN0cnVjdCBya19oZHB0eF9waHkgKmhkcHR4LAo+
ICAJCXVuc2lnbmVkIGxvbmcgbG9uZyBmcmxfcmF0ZSA9IDEwMDAwMDAwMFVMTCAqIGhkbWlfaW4t
PmZybC5sYW5lcyAqCj4gIAkJCQkJICAgICAgaGRtaV9pbi0+ZnJsLnJhdGVfcGVyX2xhbmU7Cj4g
IAo+ICsJCWlmIChoZG1pX2luLT5mcmwuc2V0X2ZmZV9sZXZlbCkgewo+ICsJCQlpZiAoaGRtaV9p
bi0+ZnJsLmZmZV9sZXZlbCA+IEZSTF9GRkVfTUFYX0xFVkVMKQo+ICsJCQkJcmV0dXJuIC1FSU5W
QUw7Cj4gKwo+ICsJCQlyZXR1cm4gMDsKPiArCQl9Cj4gKwoKW1NldmVyaXR5OiBIaWdoXQpUaGlz
IGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgZG9lcyB0aGlzIG5ldyBGRkUgY2hlY2sgaW5h
ZHZlcnRlbnRseQp2YWxpZGF0ZSBpbnZhbGlkIFRNRFMgcmF0ZXMgZHVlIHRvIHVuaW9uIGFsaWFz
aW5nIGFuZCBzdGF0ZWZ1bCBtb2RlIHRyYWNraW5nPwoKSW4gdGhlIGRyaXZlciwgcmtfaGRwdHhf
cGh5X3ZhbGlkYXRlKCkgaWdub3JlcyB0aGUgcHJvdmlkZWQgc3VibW9kZSBwYXJhbWV0ZXIKYW5k
IGluc3RlYWQgcmVsaWVzIG9uIHRoZSBzdGF0ZWZ1bCBoZHB0eC0+aGRtaV9jZmcubW9kZS4gSWYg
dGhlIFBIWSBpcwpjdXJyZW50bHkgaW4gRlJMIG1vZGUgKGZvciBleGFtcGxlLCBmcm9tIGEgcHJl
dmlvdXMgZGlzcGxheSBzdGF0ZSksIFRNRFMKbW9kZSB2YWxpZGF0aW9ucyB3aWxsIGluY29ycmVj
dGx5IHJvdXRlIHRvIHRoaXMgRlJMIGJyYW5jaC4KCkJlY2F1c2UgdG1kc19jaGFyX3JhdGUgYW5k
IHRoZSBmcmwgYml0ZmllbGRzIHNoYXJlIGEgdW5pb24gaW4Kc3RydWN0IHBoeV9jb25maWd1cmVf
b3B0c19oZG1pLCBhIFRNRFMgcmF0ZSBjYW4gYWxpYXMgaW50byB0aGUgZnJsIGZpZWxkcy4KU3Bl
Y2lmaWNhbGx5LCBzZXRfZmZlX2xldmVsIGFsaWFzZXMgdG8gYml0IDI0IG9mIHRoZSB1bmlvbi4g
Rm9yIGEgVE1EUyByYXRlCndoZXJlIGJpdCAyNCBpcyBzZXQgYW5kIHRoZSBhbGlhc2VkIGZmZV9s
ZXZlbCBieXRlIGlzIDw9IDMgKGUuZy4sIGFyb3VuZAo1MC4zMyBNSHopLCB0aGlzIGNoZWNrIHdp
bGwgcHJlbWF0dXJlbHkgcmV0dXJuIDAgKHN1Y2Nlc3MpLgoKV2lsbCB0aGlzIGNhdXNlIHRoZSBE
Uk0gZnJhbWV3b3JrIHRvIGZhbHNlbHkgYWNjZXB0IGFuIHVuc3VwcG9ydGVkIG1vZGUKZHVyaW5n
IHRoZSBhdG9taWMgY2hlY2sgcGhhc2UsIHdoaWNoIHRoZW4gZmFpbHMgaW4gcGh5X2NvbmZpZ3Vy
ZSgpIGR1cmluZwp0aGUgYXRvbWljIGNvbW1pdCBwaGFzZT8KCi0tIApTYXNoaWtvIEFJIHJldmll
dyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MDEtaGRwdHgtZmZlLXYy
LTAtM2E1OTIyYzc2ZmM1QGNvbGxhYm9yYS5jb20/cGFydD0zCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
