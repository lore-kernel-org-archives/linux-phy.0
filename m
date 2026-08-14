Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 806B5C5CFCF
	for <linux-phy@archiver.kernel.org>; Fri, 14 Aug 2026 01:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ao08OiNSJueuSijvAsdiBDJNevxwJsAQWn5HV26KCTg=; b=tqS5GCnWOd8Z+t
	xwbzla+ppy3lctmmMKV5y+zcTGoonK/KzvuParDMUmHxcHsyEm37adUMogGuUnScCdRke7R7Fp+kN
	KrwZ1H9bqkggeIriJqCDHsGVTEsbhDUeOC8+Xhc9WpvoL/pIXzDCLhgVbDg3WSh/cB5w6m59+NKPv
	2u8UBlCd9ZDZgxVpD7daM9hMhmWQuQ6Gh0ihj89i/zLj3SSqdHAGAl3h/Q7jeIx8tRJAO0sQ7Efz5
	1RQPb5146oL7XmZHnJXsl1PH4yyiJtN8OQn3zWw44Jm9q61Ngw/BX9CU9S5s5oxMM6KdutxjdRA0B
	O34Qjac1Q3sSDBWNImaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wugnM-00000001oPI-4BzT;
	Fri, 14 Aug 2026 01:33:17 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wugnK-00000001oPC-2CBU
	for linux-phy@lists.infradead.org;
	Fri, 14 Aug 2026 01:33:15 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id DA15A600BB;
	Fri, 14 Aug 2026 01:33:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 085C81F000E9;
	Fri, 14 Aug 2026 01:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786671193;
	bh=SWbVjrVGbggzvrNgH67lWzgSbB7jYj9A+xpsN/KiGp8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Jm+y3HVmp5aoal7r1BW7yXp+BwAevzxtzzPIF19x04JcUdzzMMw3M3n6PElVbGrQ/
	 UqraezRQNPmloZdTWNz6eow5afRnyHDy8nS2eZ7vPS1sZOAwqT2UDqLNF12m/wtf4F
	 8u3mSEmUJ9u+UsXsfNKeerUUtxPFHp+fBOkF2WQpDj47G7nFnPXhJAgtNrkYXabIS5
	 jznJJm87vlzSGwiUBece/9o/yHfFSBqS9YpTC/tIg8Cc28q7EcVwxgIYkKtXr4HzYy
	 YsQmxMli5f6VzW9ABQDPsEuIq4BhVhmJA0U4EIfdXxjhs1qiRCT8BWSqoHOf0OERVT
	 7vFjDga6b88oQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v14 03/38] phy: rockchip: usbdp: Do not lose USB3 PHY
 status
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260813-rockchip-usbdp-cleanup-v14-3-b5ad9c68fa11@collabora.com>
References: <20260813-rockchip-usbdp-cleanup-v14-0-b5ad9c68fa11@collabora.com>
 <20260813-rockchip-usbdp-cleanup-v14-3-b5ad9c68fa11@collabora.com>
Date: Fri, 14 Aug 2026 01:33:12 +0000
Message-Id: <20260814013313.085C81F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpOZXcgaXNzdWVzOgotIFtIaWdoXSBS
ZW1vdmluZyB0aGUgY2xlYXJpbmcgb2YgYHVkcGh5LT5zdGF0dXNgIGNhdXNlcyB1bmJhbGFuY2Vk
IGNsb2NrIGRpc2FibGVzIChkb3VibGUgZGlzYWJsZSkgYW5kIHN0YXRlIGRlc3luY2hyb25pemF0
aW9uIGlmIGBya191ZHBoeV9zZXR1cCgpYCBmYWlscyBkdXJpbmcgYSBtb2RlIGNoYW5nZS4KClBy
ZS1leGlzdGluZyBpc3N1ZXM6Ci0gW0hpZ2hdIER1cmluZyBhIG1vZGUgY2hhbmdlIHRvIERQK1VT
QiwgdGhlIGRyaXZlciBwaHlzaWNhbGx5IGRpc2FibGVzIHRoZSBQSFkgY2xvY2tzIHdpdGhvdXQg
Zmlyc3QgaXNvbGF0aW5nIHRoZSBhY3RpdmUgVVNCIGNvbnRyb2xsZXIsIGNhdXNpbmcgc3lzdGVt
IGNyYXNoZXMuCi0tCgotLS0gUGF0Y2ggWzNdOiBbUEFUQ0ggdjE0IDAzLzM4XSBwaHk6IHJvY2tj
aGlwOiB1c2JkcDogRG8gbm90IGxvc2UgVVNCMyBQSFkgc3RhdHVzIC0tLQpjb21taXQgYTA4MTYy
ZmFmZjU3Yzc5NjBkYWQ4ZDBiZjExOGM1NTdiOWZhOWRiOQpBdXRob3I6IFNlYmFzdGlhbiBSZWlj
aGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgoKcGh5OiByb2NrY2hpcDogdXNi
ZHA6IERvIG5vdCBsb3NlIFVTQjMgUEhZIHN0YXR1cwoKQnkgZGVmYXVsdCAoaS5lLiB3aXRob3V0
IG1hbnVhbGx5IGVuYWJsaW5nIHJ1bnRpbWUgUE0pIERXQzMgcmVxdWVzdHMgdGhlClVTQjMgUEhZ
IG9uY2UgYW5kIGtlZXBzIGl0IGVuYWJsZWQgYWxsIHRoZSB0aW1lLiBXaGVuIERpc3BsYXlQb3J0
IGlzCmJlaW5nIHJlcXVlc3RlZCBsYXRlciBvbiwgYSBtb2RlIGNoYW5nZSBpcyBuZWVkZWQuIFRo
aXMgcmUtaW5pdGlhbGl6ZXMKdGhlIFBIWS4gRHVyaW5nIHJlLWluaXRpYWxpemF0aW9uIHRoZSBz
dGF0dXMgdmFyaWFibGUgaGFzIGluY29ycmVjdGx5CmJlZW4gY2xlYXJlZCwgd2hpY2ggbWVhbnMg
dGhlIHRyYWNraW5nIGluZm9ybWF0aW9uIGZvciBVU0IzIGlzIGxvc3QuCgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYyBiL2RyaXZlcnMvcGh5
L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gaW5kZXggYTVmZmRmN2E2ZTc2Yi4uMTJk
ZmRkNDcwYTc4MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2No
aXAtdXNiZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2Jk
cC5jCj4gQEAgLTEwMDgsNyArMTAwOCw2IEBAIHN0YXRpYyBpbnQgcmtfdWRwaHlfcG93ZXJfb24o
c3RydWN0IHJrX3VkcGh5ICp1ZHBoeSwgdTggbW9kZSkKPiAgCQkJcmtfdWRwaHlfdTNfcG9ydF9k
aXNhYmxlKHVkcGh5LCBmYWxzZSk7Cj4gIAkJdWRwaHktPm1vZGVfY2hhbmdlID0gZmFsc2U7Cj4g
IAl9IGVsc2UgaWYgKHVkcGh5LT5tb2RlX2NoYW5nZSkgewo+IC0JCXVkcGh5LT5zdGF0dXMgPSBV
RFBIWV9NT0RFX05PTkU7CgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMgcmVtb3ZpbmcgdGhpcyBjbGVh
cmluZyBvZiB0aGUgc3RhdHVzIGNhdXNlIGlzc3VlcyBpZiBya191ZHBoeV9zZXR1cCgpCmZhaWxz
IGR1cmluZyBhIG1vZGUgY2hhbmdlPwoKSWYgaW5pdGlhbGl6YXRpb24gZmFpbHMsIHJrX3VkcGh5
X3Bvd2VyX29uKCkgcmV0dXJucyBhbiBlcnJvciB3aGlsZSB0aGUKaGFyZHdhcmUgaXMgbGVmdCBk
aXNhYmxlZCBieSB0aGUgcHJlY2VkaW5nIHJrX3VkcGh5X2Rpc2FibGUoKS4gQmVjYXVzZSB0aGUK
c29mdHdhcmUgc3RhdHVzIGlzIG5vIGxvbmdlciBjbGVhcmVkLCBpdCByZXRhaW5zIGl0cyBwcmlv
ciBhY3RpdmUgbW9kZS4KCkxhdGVyLCB3aGVuIHRoZSBVU0IgY29uc3VtZXIgZXZlbnR1YWxseSBw
b3dlcnMgb2ZmIHRoZSBQSFksCnJrX3VkcGh5X3Bvd2VyX29mZigpIG9ic2VydmVzIHRoZSBzdGFs
ZSBhY3RpdmUgc3RhdHVzLCBkcm9wcyB0bwpVRFBIWV9NT0RFX05PTkUsIGFuZCBpc3N1ZXMgYSBy
ZWR1bmRhbnQgcmtfdWRwaHlfZGlzYWJsZSgpLiBUaGlzCmRvdWJsZS1kaXNhYmxlcyB0aGUgY2xv
Y2tzLgoKQ291bGQgd2UgaW5zdGVhZCBjbGVhciB1ZHBoeS0+c3RhdHVzIG9ubHkgaW4gdGhlIGVy
cm9yIHBhdGggb2YKcmtfdWRwaHlfc2V0dXAoKT8KCj4gIAkJaWYgKHVkcGh5LT5tb2RlID09IFVE
UEhZX01PREVfRFApCj4gIAkJCXJrX3VkcGh5X3UzX3BvcnRfZGlzYWJsZSh1ZHBoeSwgdHJ1ZSk7
CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXMgYSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1dCBkb2Vz
IHRoaXMgY29uZGl0aW9uYWwgaXNvbGF0aW9uIGxlYWQgdG8Kc3lzdGVtIGNyYXNoZXMgd2hlbiB0
aGUgbW9kZSBpcyBVRFBIWV9NT0RFX0RQX1VTQj8KCkR1cmluZyBhIG1vZGUgY2hhbmdlIHRvIERQ
K1VTQiwgdGhlIFBIWSBjbG9ja3MgYXJlIHBoeXNpY2FsbHkgZGlzYWJsZWQgdmlhCnJrX3VkcGh5
X2Rpc2FibGUoKSBzaG9ydGx5IGFmdGVyIHRoaXMgY2hlY2suIEJ5IG9ubHkgaXNvbGF0aW5nIHRo
ZSBVU0IgcG9ydAp3aGVuIHRoZSBtb2RlIGlzIGV4YWN0bHkgVURQSFlfTU9ERV9EUCwgYSB0cmFu
c2l0aW9uIHRvIFVEUEhZX01PREVfRFBfVVNCCnNraXBzIHRoZSBpc29sYXRpb24uCgpEaXNhYmxp
bmcgdGhlIFBIWSBjbG9ja3Mgd2hpbGUgdGhlIERXQzMgY29udHJvbGxlciBpcyBzdGlsbCBhY3Rp
dmVseSBydW5uaW5nCmFuZCBhY2Nlc3NpbmcgaXRzIHJlZ2lzdGVycyBjYW4gY2F1c2UgYSBzeW5j
aHJvbm91cyBleHRlcm5hbCBhYm9ydC4gU2hvdWxkCnRoaXMgaXNvbGF0aW9uIGFsc28gaGFwcGVu
IGZvciBVRFBIWV9NT0RFX0RQX1VTQj8KCj4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRw
czovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA4MTMtcm9ja2NoaXAtdXNiZHAtY2xlYW51
cC12MTQtMC1iNWFkOWM2OGZhMTFAY29sbGFib3JhLmNvbT9wYXJ0PTMKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
