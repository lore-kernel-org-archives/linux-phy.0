Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8878BC55177
	for <linux-phy@archiver.kernel.org>; Sun,  2 Aug 2026 14:25:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pmpCENcaA9nQKugn/gQynHdDn1+zRQ6l8TNt5MVGHAc=; b=iEJj3uIQyCyGos
	/Yxq++xnGeNaDUQ+Na2XiQMaCO+HFBsdMsnVyvinvqzuJvEXNjC3jfr792+9iVnW/MdoaGezDiU96
	leXRePa3/ndR8fF6JzVLms1FOl7pIUCPzFAMIqNEbaxDU/0Uqb4HVfDxwYkPpfGHgQD+4RMEZ/BbQ
	mvWoo0YPzOlB5va7ypikbjAAEl78t4WXoukalVNAYTmgs3/4Lb/Pzr5KcnU/wr0ujqX6eoEZhuPim
	wlu1Ip8idTy5y5v/KciCZ0jZdIMPKm5yX67nzWPj8Wio+luTqMNkDj/zMrHsZUij9D1HokuTXY+qI
	S+uJOYp1a9+DVgMRjgFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqX8L-0000000FiD8-1GjD;
	Sun, 02 Aug 2026 14:25:45 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqX8J-0000000FiBy-1zhm
	for linux-phy@lists.infradead.org;
	Sun, 02 Aug 2026 14:25:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3A04F4010F;
	Sun,  2 Aug 2026 14:25:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A26DA1F00A3D;
	Sun,  2 Aug 2026 14:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785680743;
	bh=SkbzWR0sFsjZ3Aq+wP68kkn9EMw/5h3rshkV4z/0Or8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=H0sbJohGZyS4Bg0Aazal7SHaSGlgD1ShDqn0bSzZ8KZZ3YIwQI3uCehiPLInl/uo3
	 qLCF4EmUJZoRtNceo6GGZIKpe8Ao1cmw9/o3vXb0IGc51Vl3GUh75wtmKPU43sfVsb
	 PNGwm6HFMktDCj2zSaVQoPTbvG8yoQNtcEjVGTYru3X0kwS+oh5Bdgh5i52EENEa81
	 AVLYpMJ+vCPONU/54VPqeU6FN1dZc1i0g4YypW/JDdyfV+9n2wu6dZUg3KqclTYKD5
	 HGMa8IuLNHftSpuxxFj82Fm+MUGjBU6krcFOgBMnA46AcEyNvTBAiGnmf40PGnWlu5
	 rOjcT/zrRfjpA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 08/10] net: stmmac: dwmac-rk: add SGMII support for
 RK3568
To: "Coia Prant" <coiaprant@gmail.com>
Cc: vkoul@kernel.org, wsa+renesas@sang-engineering.com, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, robh@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org
In-Reply-To: <20260801142244.679437-10-coiaprant@gmail.com>
References: <20260801142244.679437-2-coiaprant@gmail.com>
 <20260801142244.679437-10-coiaprant@gmail.com>
Date: Sun, 02 Aug 2026 14:25:42 +0000
Message-Id: <20260802142542.A26DA1F00A3D@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHJrMzU2OF9zZXRfdG9f
c2dtaWkgZmFpbHMgdG8gY2xlYXIgaW50ZXJmYWNlIHNlbGVjdGlvbiBiaXRzIDQ6NiwgbGVhZGlu
ZyB0byBwb3RlbnRpYWwgaGFyZHdhcmUgbWlzY29uZmlndXJhdGlvbi4KLSBbTG93XSBEV01BQ19S
T0NLQ0hJUCBzZWxlY3RzIFBDU19YUENTX1JPQ0tDSElQIHdpdGhvdXQgaW5oZXJpdGluZyBpdHMg
UE0gZGVwZW5kZW5jeS4KLS0KCi0tLSBQYXRjaCBbOF06IFtQQVRDSCB2MiAwOC8xMF0gbmV0OiBz
dG1tYWM6IGR3bWFjLXJrOiBhZGQgU0dNSUkgc3VwcG9ydCBmb3IgUkszNTY4IC0tLQpjb21taXQg
NTNlMTNiZTAwYWQ3MGE1MzhlNWFhZjJkNDIyMDBjMWFlMjdkM2VlZgpBdXRob3I6IENvaWEgUHJh
bnQgPGNvaWFwcmFudEBnbWFpbC5jb20+CgpuZXQ6IHN0bW1hYzogZHdtYWMtcms6IGFkZCBTR01J
SSBzdXBwb3J0IGZvciBSSzM1NjgKICAgIApUaGUgUkszNTY4IFNvQyBpbnRlZ3JhdGVzIGEgU3lu
b3BzeXMgRGVzaWduV2FyZSBYUENTIHRoYXQgY2FuIGJlCmNvbm5lY3RlZCB0byBHTUFDMCBvciBH
TUFDMSBpbiBTR01JSSBtb2RlLiBBZGQgdGhlIG5lY2Vzc2FyeSBnbHVlCmxvZ2ljIHRvIHN1cHBv
cnQgdGhpcyBjb25maWd1cmF0aW9uLgoKTGluazogaHR0cHM6Ly9kbC5yYWR4YS5jb20vcm9jazMv
ZG9jcy9ody9kYXRhc2hlZXQvUm9ja2NoaXAlMjBSSzM1NjglMjBUUk0lMjBQYXJ0MSUyMFYxLjEt
MjAyMTAzMDEucGRmIChQYWdlIDM4NikKCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L3N0bWljcm8vc3RtbWFjL0tjb25maWcgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3Jv
L3N0bW1hYy9LY29uZmlnCj4gaW5kZXggZTNkZDVhZGRhNWFjYS4uNTA4OGFjYzA2OTgyZSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9LY29uZmlnCj4g
KysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvS2NvbmZpZwo+IEBAIC0x
NzAsNiArMTcwLDcgQEAgY29uZmlnIERXTUFDX1JPQ0tDSElQCj4gIAlkZWZhdWx0IEFSQ0hfUk9D
S0NISVAKPiAgCWRlcGVuZHMgb24gT0YgJiYgKEFSQ0hfUk9DS0NISVAgfHwgQ09NUElMRV9URVNU
KQo+ICAJc2VsZWN0IE1GRF9TWVNDT04KPiArCXNlbGVjdCBQQ1NfWFBDU19ST0NLQ0hJUAoKW1Nl
dmVyaXR5OiBMb3ddCkNvdWxkIHNlbGVjdGluZyBQQ1NfWFBDU19ST0NLQ0hJUCBoZXJlIGNhdXNl
IGEgS2NvbmZpZyB1bm1ldCBkZXBlbmRlbmN5Cndhcm5pbmcgb3IgYnVpbGQgZmFpbHVyZSBpZiBQ
TSBpcyBkaXNhYmxlZD8gCgpQQ1NfWFBDU19ST0NLQ0hJUCBkZXBlbmRzIG9uIFBNIHx8IENPTVBJ
TEVfVEVTVCwgYnV0IERXTUFDX1JPQ0tDSElQIGxhY2tzCnRoaXMgZGVwZW5kZW5jeS4KCj4gIAlo
ZWxwCj4gIAkgIFN1cHBvcnQgZm9yIEV0aGVybmV0IGNvbnRyb2xsZXIgb24gUm9ja2NoaXAgUksz
Mjg4IFNvQy4KPiAgCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3Jv
L3N0bW1hYy9kd21hYy1yay5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMv
ZHdtYWMtcmsuYwo+IGluZGV4IDhkNzA0MmU2ODkyNjEuLmU0N2NhMWJlYzViOGIgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtcmsuYwo+ICsr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXJrLmMKWyAuLi4g
XQo+IEBAIC04NTEsMTggKzg1NywzMiBAQCBzdGF0aWMgdm9pZCByazM1Njhfc2V0X3RvX3JnbWlp
KHN0cnVjdCBya19wcml2X2RhdGEgKmJzcF9wcml2LAo+ICAJCSAgICAgUkszNTY4X0dNQUNfQ0xL
X1RYX0RMX0NGRyh0eF9kZWxheSkpOwo+ICAKPiAgCXJlZ21hcF93cml0ZShic3BfcHJpdi0+Z3Jm
LCBjb24xLAo+ICsJCSAgICAgUkszNTY4X0dNQUNfTU9ERV9STUlJX1JHTUlJIHwKPiAgCQkgICAg
IFJLMzU2OF9HTUFDX1JYQ0xLX0RMWV9FTkFCTEUgfAo+ICAJCSAgICAgUkszNTY4X0dNQUNfVFhD
TEtfRExZX0VOQUJMRSk7Cj4gIH0KPiAgCj4gK3N0YXRpYyB2b2lkIHJrMzU2OF9zZXRfdG9fc2dt
aWkoc3RydWN0IHJrX3ByaXZfZGF0YSAqYnNwX3ByaXYpCj4gK3sKPiArCXUzMiBjb24xOwo+ICsK
PiArCWNvbjEgPSAoYnNwX3ByaXYtPmlkID09IDEpID8gUkszNTY4X0dSRl9HTUFDMV9DT04xIDoK
PiArCQkJCSAgICAgUkszNTY4X0dSRl9HTUFDMF9DT04xOwo+ICsKPiArCXJlZ21hcF93cml0ZShi
c3BfcHJpdi0+Z3JmLCBjb24xLCBSSzM1NjhfR01BQ19NT0RFX1NHTUlJX1FTR01JSSk7Cj4gK30K
CltTZXZlcml0eTogSGlnaF0KRG9lcyB0aGlzIGFjdHVhbGx5IGNsZWFyIHRoZSBpbnRlcmZhY2Ug
c2VsZWN0aW9uIGJpdHMgNDo2IGFzIG1lbnRpb25lZCBpbiB0aGUKY29tbWl0IG1lc3NhZ2U/IAoK
SXQgbG9va3MgbGlrZSB0aGlzIG9ubHkgd3JpdGVzIFJLMzU2OF9HTUFDX01PREVfU0dNSUlfUVNH
TUlJICh3aGljaCBzZXRzCmJpdCA3KSBidXQgZG9lc24ndCBzdXBwbHkgYSB3cml0ZSBtYXNrIG9y
IGRhdGEgdG8gY2xlYXIgYml0cyA0OjYuIElmIHRoZQpib290bG9hZGVyIGxlZnQgYml0cyA0OjYg
c2V0IHRvIGEgbm9uLXplcm8gdmFsdWUsIGNvdWxkIHRoaXMgbGVhZCB0byBhbgppbmNvcnJlY3Qg
aGFyZHdhcmUgY29uZmlndXJhdGlvbj8KClsgLi4uIF0KPiBAQCAtMTM3OSwxNiArMTQ0MSwxOSBA
QCBzdGF0aWMgaW50IHJrX2dtYWNfcG93ZXJ1cChzdHJ1Y3QgcmtfcHJpdl9kYXRhICpic3BfcHJp
dikKPiAgCWlmIChyZXQpCj4gIAkJcmV0dXJuIHJldDsKPiAgCj4gKwlyZXQgPSBnbWFjX2Nsa19l
bmFibGUoYnNwX3ByaXYsIHRydWUpOwo+ICsJaWYgKHJldCkKPiArCQlyZXR1cm4gcmV0Owo+ICsK
PiArCWlmIChic3BfcHJpdi0+cGh5X2lmYWNlID09IFBIWV9JTlRFUkZBQ0VfTU9ERV9TR01JSSkK
PiArCQlnb3RvIHNldF9tb2RlOwo+ICsKCltTZXZlcml0eTogSGlnaF0KQmVjYXVzZSBvZiB0aGUg
Z290byBoZXJlLCB0aGUgc3RhbmRhcmQgY2xlYXJpbmcgb2YgaW50ZXJmYWNlIHNlbGVjdGlvbiBi
aXRzCnVzaW5nIGJzcF9wcml2LT5nbWFjX3BoeV9pbnRmX3NlbF9tYXNrIHRoYXQgaGFwcGVucyBi
ZWxvdyBpcyBieXBhc3NlZCBmb3IKU0dNSUkgbW9kZS4gCgpTaG91bGQgcmszNTY4X3NldF90b19z
Z21paSgpIGhhbmRsZSBjbGVhcmluZyB0aG9zZSBiaXRzIGluc3RlYWQ/Cgo+ICAJcmV0ID0gcmtf
Z2V0X3BoeV9pbnRmX3NlbChic3BfcHJpdi0+cGh5X2lmYWNlKTsKPiAgCWlmIChyZXQgPCAwKQo+
IC0JCXJldHVybiByZXQ7Cj4gKwkJZ290byBjbGtfZGlzYWJsZTsKCi0tIApTYXNoaWtvIEFJIHJl
dmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA4MDExNDIyNDQuNjc5
NDM3LTItY29pYXByYW50QGdtYWlsLmNvbT9wYXJ0PTgKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
