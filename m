Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E60FCD98CF
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 21:30:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F6JXFSJcuHJzXAn10v1mS9F1OXzllLKuElq4FHU4L4Y=; b=w2YE6PO+ld5zDh
	zav3rkf6vmohZvjpe0Umqas43tkTXWfFEGQNsesSBUKj8pUUyU9uVADbHXSbf8ubAA2i/ObNqVtuR
	lYYMIfc5P067c6RxM4xGlEAsxefehob64hwpaJj3FUKUMm423ucv61gibuKnBoEqLc4N/1POr3186
	+uKY2Q7Hi80LwrXdEDWnrzlvnOHZPDL8mq7vVh2vUDpudOpFrH7e+c2xwmzpxVqVUzXyZj6g6WQSC
	KVbVT8Yvm0tCnzAPPSIdQejWrhVPOUTw39HNZY2lpD+Zn4HAPd5m3DiKn9qgk/wS2jGkXUR5MH5Eq
	asi4wCMLght2io90aX9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY9Sh-0000000BbiH-0CZf;
	Fri, 12 Jun 2026 21:30:47 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY9Sf-0000000Bbi2-0zqE
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 21:30:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6339960008;
	Fri, 12 Jun 2026 21:30:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB98D1F000E9;
	Fri, 12 Jun 2026 21:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781299844;
	bh=O1v+VsJN+/v6V7SUw6+Zj+EpZ+iCIQUm3XCC3Iugdtk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OhbEmyI1J4d7IcbYMo8SmFF+kk0tm5R45w4djJXymAISwcxgMurvA3QbfpB13fRV7
	 0V/nIA2PG65acavYtrClC+mXhNNVUNyIUz6TXDTOdzKwYmUFAgu54GXpn0DFnv1UtA
	 1f7zwK/EsGPNI231VI5e+gH6htsNU4vzBR2RyePiGbgsOxTDL59J6DjOOach0e8UZI
	 SxnjYLQLkftUs6n2e9jkVg/paWEBmXNubeOPITY6zKGDJJATzR9cdEthzfUi0FOGk+
	 V8s5IGRkByi5/uc6q46AM3E3HPPlmYgMSCeOB/DL8RQR9yr7VzDTtu2N6MbYKCGZ/L
	 tW3NqjYvYyYlA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 phy-next 8/8] phy: lynx-10g: use RCW override
 procedure for dynamic protocol change
To: "Vladimir Oltean" <vladimir.oltean@nxp.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com
In-Reply-To: <20260612210859.266759-9-vladimir.oltean@nxp.com>
References: <20260612210859.266759-9-vladimir.oltean@nxp.com>
Date: Fri, 12 Jun 2026 21:30:43 +0000
Message-Id: <20260612213043.BB98D1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBSZWFkLW1vZGlmeS13cml0ZSBpbiBgZnNsX2d1dHNfcm13KClgIGRyb3BzIGR5bmFt
aWMgb3ZlcnJpZGVzIG9mIG90aGVyIGxhbmVzIHNoYXJpbmcgdGhlIHNhbWUgcmVnaXN0ZXIuCi0g
W0hpZ2hdIElmIGBmc2xfZ3V0c19pbml0KClgIGZhaWxzIGR1cmluZyBgc29jX2RldmljZV9yZWdp
c3RlcigpYCwgdGhlIG5ld2x5IGFkZGVkIGNhbGwgdG8gYGZzbF9ndXRzX2xhbmVfc2V0X21vZGUo
KWAgd2lsbCB0cmlnZ2VyIGFuIHVuaW5pdGlhbGl6ZWQgc3BpbmxvY2sgQlVHLgotLQoKY29tbWl0
IGI4ZjZiMWQzNTVkMzZhOTUxZDYyZWQzMmQwNmNiZDY5YWZlZjQwYzIKQXV0aG9yOiBWbGFkaW1p
ciBPbHRlYW4gPHZsYWRpbWlyLm9sdGVhbkBueHAuY29tPgoKcGh5OiBseW54LTEwZzogdXNlIFJD
VyBvdmVycmlkZSBwcm9jZWR1cmUgZm9yIGR5bmFtaWMgcHJvdG9jb2wgY2hhbmdlCgpUaGlzIHBh
dGNoIGVuYWJsZXMgZHluYW1pYyBwcm90b2NvbCBjaGFuZ2VzIGJleW9uZCAxMDAwQmFzZS1YL1NH
TUlJIGFuZAoyNTAwQmFzZS1YLiBJdCByZW1vdmVzIHRoZSBwcmV2aW91cyBsaW1pdGF0aW9ucyBi
eSB1dGlsaXppbmcgdGhlIFJDVwpvdmVycmlkZSBwcm9jZWR1cmUgcHJvdmlkZWQgYnkgdGhlIGd1
dHMgZHJpdmVyLgoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWx5
bngtMTBnLmMgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1seW54LTEwZy5jCmluZGV4
IDM4ZGVmMTYwZWYxYWEuLjVlY2U3ODg5YWVkN2IgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L2Zy
ZWVzY2FsZS9waHktZnNsLWx5bngtMTBnLmMKKysrIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3Bo
eS1mc2wtbHlueC0xMGcuYwoKWyAuLi4gXQoKQEAgLTEyMjUsNiArMTIyMywxMyBAQCBzdGF0aWMg
aW50IGx5bnhfMTBnX3NldF9tb2RlKHN0cnVjdCBwaHkgKnBoeSwgZW51bSBwaHlfbW9kZSBtb2Rl
LCBpbnQgc3VibW9kZSkKIAlpZiAocG93ZXJlZF91cCkKIAkJbHlueF8xMGdfbGFuZV9oYWx0KHBo
eSk7CiAKKwlpZiAobHlueF8xMGdfbGFuZV9tb2RlX25lZWRzX3Jjd19vdmVycmlkZShsYW5lLCBs
YW5lX21vZGUpKSB7CisJCWVyciA9IGZzbF9ndXRzX2xhbmVfc2V0X21vZGUocHJpdi0+aW5mby0+
aW5kZXgsIGxhbmUtPmlkLAorCQkJCQkgICAgIGxhbmVfbW9kZSk7CiAgICAgICAgICAgICAgICAg
Xl5eXl5eXl5eXl5eXl5eXl5eXl5eXgoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzbid0IGEgYnVn
IGludHJvZHVjZWQgYnkgdGhpcyBwYXRjaCwgYnV0IGRvZXMgY2FsbGluZwpmc2xfZ3V0c19sYW5l
X3NldF9tb2RlKCkgaGVyZSBleHBvc2UgYSBidWcgaW4gZnNsX2d1dHNfcm13KCkgd2hlcmUgZHlu
YW1pYwpvdmVycmlkZXMgb24gb3RoZXIgbGFuZXMgYXJlIGRyb3BwZWQ/CgpXaGVuIGZzbF9ndXRz
X2xhbmVfc2V0X21vZGUoKSBjYWxscyBmc2xfZ3V0c19ybXcoKSB0byB1cGRhdGUgdGhlIGhhcmR3
YXJlIG11eCwKaXQgaW5jb3JyZWN0bHkgcmVhZHMgZnJvbSB0aGUgYm9vdC10aW1lIHN0YXR1cyBy
ZWdpc3RlciAoUkNXU1IpIGluc3RlYWQgb2YgdGhlCmNvbnRyb2wgcmVnaXN0ZXIgKFJDV0NSKToK
CmRyaXZlcnMvc29jL2ZzbC9ndXRzLmM6ZnNsX2d1dHNfcm13KCkgewogICAgLi4uCiAgICB1MzIg
dG1wID0gZnNsX2d1dHNfcmVhZCgmc29jLmRjZmdfY2Nzci0+cmN3c3Jbb2Zmc2V0XSk7CgogICAg
dG1wICY9IH5tYXNrOwogICAgdG1wIHw9IHZhbDsKICAgIGZzbF9ndXRzX3dyaXRlKCZzb2MuZGNm
Z19kY3NyLT5yY3djcltvZmZzZXRdLCB0bXApOwogICAgLi4uCn0KCkJlY2F1c2UgUkNXU1IgaXMg
cmVhZC1vbmx5IGFuZCByZWZsZWN0cyB0aGUgYm9vdC10aW1lIGNvbmZpZ3VyYXRpb24sIGFuZApt
dWx0aXBsZSBsYW5lcyBzaGFyZSB0aGUgc2FtZSByZWdpc3Rlciwgd29uJ3QgZHluYW1pY2FsbHkg
Y2hhbmdpbmcgdGhlCnByb3RvY29sIG9mIG9uZSBsYW5lIHJldmVydCBhbnkgcHJldmlvdXMgZHlu
YW1pYyBjaGFuZ2VzIGFwcGxpZWQgdG8gdGhlIG90aGVyCmxhbmVzPwoKW1NldmVyaXR5OiBIaWdo
XQpUaGlzIGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgY291bGQgdGhpcyBhbHNvIHRyaWdn
ZXIgYW4gdW5pbml0aWFsaXplZApzcGlubG9jayBCVUcgaWYgZnNsX2d1dHNfaW5pdCgpIGZhaWxz
PwoKSW4gZHJpdmVycy9zb2MvZnNsL2d1dHMuYywgaWYgZnNsX2d1dHNfaW5pdCgpIGZhaWxzIGR1
cmluZwpzb2NfZGV2aWNlX3JlZ2lzdGVyKCksIHRoZSBlcnJvciBwYXRoIGRvZXNuJ3QgY2xlYW4g
dXAgdGhlIGdsb2JhbCBzb2MuZGF0YQphbmQgc2tpcHMgaW5pdGlhbGl6aW5nIHNvYy5yY3djcl9s
b2NrOgoKZHJpdmVycy9zb2MvZnNsL2d1dHMuYzpmc2xfZ3V0c19pbml0KCkgewogICAgLi4uCiAg
ICBzb2NfZGV2ID0gc29jX2RldmljZV9yZWdpc3Rlcihzb2NfZGV2X2F0dHIpOwogICAgaWYgKElT
X0VSUihzb2NfZGV2KSkgewogICAgICAgIHJldCA9IFBUUl9FUlIoc29jX2Rldik7CiAgICAgICAg
Z290byBlcnI7CiAgICB9CgogICAgc3Bpbl9sb2NrX2luaXQoJnNvYy5yY3djcl9sb2NrKTsKICAg
IC4uLgp9CgpTaW5jZSBzb2MuZGF0YSBpcyBsZWZ0IHBvcHVsYXRlZCwgdGhlIHJlYWRpbmVzcyBj
aGVjayBpbgpmc2xfZ3V0c19sYW5lX3NldF9tb2RlKCkgd2lsbCBwYXNzLiBXb24ndCB0aGlzIHRo
ZW4gcHJvY2VlZCB0byBhY3F1aXJlIHRoZQp1bmluaXRpYWxpemVkIHNvYy5yY3djcl9sb2NrLCB0
cmlnZ2VyaW5nIGEgU1BJTl9CVUdfT04/Cgo+ICsJCWlmIChlcnIpCj4gKwkJCWdvdG8gb3V0Owo+
ICsJfQo+ICsKPiAJZXJyID0gbHlueF8xMGdfbGFuZV9kaXNhYmxlX3BjdnQobGFuZSwgbGFuZS0+
bW9kZSk7Cj4gCWlmIChlcnIpCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNo
aWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjEyMjEwODU5LjI2Njc1OS0xLXZsYWRpbWlyLm9sdGVh
bkBueHAuY29tP3BhcnQ9OAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
