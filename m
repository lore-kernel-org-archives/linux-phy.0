Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2E98C43458
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 06:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mip7ezFnWsvfUGrL+DficLb1C5BsTS39S0GTnGgdBYg=; b=SGEsJ77XjJwcFW
	Dtrx5PFJLaSia5u2hkfFT+4uP/u1ypfP7fTdKEOW4diI1SZtnH5ZkKe7Q3YmSkbJHtGqNJKPa0gW9
	GXLgFPO67Zrwcso1RKRZzvUmSi+9c61RFlPQTuwvIfk7BvMoGn2TAV/13wp04yhd1OZZzCzjynrHa
	6i3Fn/MjZ5J3Yy80LMxf3EZs+LdeqasoHSVp/xHj5PF+NFfhiRm+0NpHuRocl1teHW2jT4H57Rvug
	b9p39nhKz4XxXCSa7eXrpVPLYwgqOKbnCPS7BDf9nsChOQj6Xqq90w9WLmNvqw4zRvg15VnK8yMlG
	TVWyVWMEnzRuz9gO/02g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whiV1-00000001DBm-2oD9;
	Thu, 09 Jul 2026 06:44:43 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whiV0-00000001DBf-0SPy
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 06:44:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 760B9601D9;
	Thu,  9 Jul 2026 06:44:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5C061F000E9;
	Thu,  9 Jul 2026 06:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783579481;
	bh=IUVWvhNPIaZ+7XtVmSCRJuMBGIhbUO0xM76uHWOqbo8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BxEquNZCvoZqpLZpKbvXaur1GosEBnQxB91VbJ5ruj8pF94Jl+E3PpZtW9Ti3kLCE
	 cnwNv6HLcSNtjRnhhE5kX6EQUIVDCleLEsKFv1kyPJoFXzNocJi+FGduVxC+A6tT4F
	 dynk71IQlnoNWfPyRap4HyPH05Spu2weF0y/yD5Ly5fIq43T8CK0KUs6eJYFIf36kR
	 VN6UV/Ltb/YfzDw38ySEQ3jH9UCCgFl99o/LZXk3dqMBUbdorRdLB3vTLBrm0gFXJy
	 hEUQZFWVpnssGSWZdQp6DETUdz69Xn7Kxpb+RJx42xLBIspDavS41kdeu6/zI/zViH
	 YeBWU+qI2tFGw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/4] PCI: qcom: Keep PERST# GPIO state as-is during
 probe
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, neil.armstrong@linaro.org, vkoul@kernel.org, linux-pci@vger.kernel.org, olteanv@gmail.com
In-Reply-To: <20260709-link_retain-v3-2-81a9d187bb61@oss.qualcomm.com>
References: <20260709-link_retain-v3-0-81a9d187bb61@oss.qualcomm.com>
 <20260709-link_retain-v3-2-81a9d187bb61@oss.qualcomm.com>
Date: Thu, 09 Jul 2026 06:44:40 +0000
Message-Id: <20260709064440.C5C061F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFJlcXVlc3RpbmcgdGhl
IFBFUlNUIyBHUElPIHdpdGggR1BJT0RfQVNJUyBsZWF2ZXMgaXQgYXMgYW4gaW5wdXQgaWYgbm90
IGNvbmZpZ3VyZWQgYnkgdGhlIGJvb3Rsb2FkZXIsIGNhdXNpbmcgc3Vic2VxdWVudCByZXNldCB0
b2dnbGVzIHRvIHNpbGVudGx5IGZhaWwuCi0tCgotLS0gUGF0Y2ggWzJdOiBbUEFUQ0ggdjMgMi80
XSBQQ0k6IHFjb206IEtlZXAgUEVSU1QjIEdQSU8gc3RhdGUgYXMtaXMgZHVyaW5nIHByb2JlIC0t
LQpjb21taXQgOWU3NGY0OGEzN2Q5M2FkMjJhMWVjNzE0NzBhZjU4YjA1YzA3YzkxMgpBdXRob3I6
IEtyaXNobmEgQ2hhaXRhbnlhIENodW5kcnUgPGtyaXNobmEuY2h1bmRydUBvc3MucXVhbGNvbW0u
Y29tPgoKUENJOiBxY29tOiBLZWVwIFBFUlNUIyBHUElPIHN0YXRlIGFzLWlzIGR1cmluZyBwcm9i
ZQoKVGhpcyBjb21taXQgY2hhbmdlcyB0aGUgUEVSU1QjIEdQSU8gcmVxdWVzdCBmcm9tIEdQSU9E
X09VVF9ISUdIIHRvIEdQSU9EX0FTSVMKaW4gb3JkZXIgdG8gcHJlc2VydmUgdGhlIGV4aXN0aW5n
IEdQSU8gc3RhdGUgY29uZmlndXJlZCBieSB0aGUgYm9vdGxvYWRlciBvcgpmaXJtd2FyZSBkdXJp
bmcgcHJvYmUuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ll
LXFjb20uYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4gLS0tIGEv
ZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMKPiArKysgYi9kcml2ZXJzL3Bj
aS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYwo+IEBAIC0xODQxLDcgKzE4NDEsNyBAQCBzdGF0
aWMgaW50IHFjb21fcGNpZV9wYXJzZV9wZXJzdChzdHJ1Y3QgcWNvbV9wY2llICpwY2llLAo+ICAJ
CWdvdG8gcGFyc2VfY2hpbGRfbm9kZTsKPiAgCj4gIAlyZXNldCA9IGRldm1fZndub2RlX2dwaW9k
X2dldChkZXYsIG9mX2Z3bm9kZV9oYW5kbGUobnApLCAicmVzZXQiLAo+IC0JCQkJICAgICAgR1BJ
T0RfT1VUX0hJR0gsICJQRVJTVCMiKTsKPiArCQkJCSAgICAgIEdQSU9EX0FTSVMsICJQRVJTVCMi
KTsKCltTZXZlcml0eTogSGlnaF0KSWYgdGhlIGJvb3Rsb2FkZXIgZG9lcyBub3QgY29uZmlndXJl
IHRoZSBQRVJTVCMgR1BJTyBhcyBhbiBvdXRwdXQsIGRvZXMKcmVxdWVzdGluZyBpdCB3aXRoIEdQ
SU9EX0FTSVMgbGVhdmUgdGhlIHBpbiBjb25maWd1cmVkIGFzIGFuIGlucHV0PwoKSWYgc28sIGxh
dGVyIHdoZW4gX19xY29tX3BjaWVfcGVyc3RfYXNzZXJ0KCkgYXR0ZW1wdHMgdG8gdG9nZ2xlIHRo
ZSByZXNldDoKCglncGlvZF9zZXRfdmFsdWVfY2Fuc2xlZXAocGVyc3QtPmRlc2MsIHZhbCk7CgpX
aWxsIGl0IHNpbGVudGx5IGZhaWwgdG8gZHJpdmUgdGhlIHBpbiwgcHJldmVudGluZyB0aGUgUENJ
ZSBsaW5rIGZyb20gYmVpbmcKZXN0YWJsaXNoZWQ/Cgo+ICAJaWYgKElTX0VSUihyZXNldCkpIHsK
PiAgCQkvKgo+ICAJCSAqIEZJWE1FOiBHUElPTElCIGN1cnJlbnRseSBzdXBwb3J0cyBleGNsdXNp
dmUgR1BJTyBhY2Nlc3Mgb25seS4KClsgLi4uIF0KCj4gQEAgLTE5MTgsNyArMTkxOCw3IEBAIHN0
YXRpYyBpbnQgcWNvbV9wY2llX3BhcnNlX3BvcnRzKHN0cnVjdCBxY29tX3BjaWUgKnBjaWUpCj4g
IAo+ICAJaWYgKG9mX2ZpbmRfcHJvcGVydHkoZGV2LT5vZl9ub2RlLCAicGVyc3QtZ3Bpb3MiLCBO
VUxMKSkgewo+ICAJCXBjaWUtPnJlc2V0ID0gZGV2bV9ncGlvZF9nZXRfb3B0aW9uYWwoZGV2LCAi
cGVyc3QiLAo+IC0JCQkJCQkgICAgICBHUElPRF9PVVRfSElHSCk7Cj4gKwkJCQkJCSAgICAgIEdQ
SU9EX0FTSVMpOwoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGFwcGVhcnMgdG8gaGF2ZSB0aGUgc2Ft
ZSBpc3N1ZS4gSWYgdGhlIEdQSU8gZGVmYXVsdHMgdG8gYW4gaW5wdXQgYW5kCmlzIG5vdCBjb25m
aWd1cmVkIGJ5IHRoZSBib290bG9hZGVyLCB3aWxsIGdwaW9kX3NldF92YWx1ZV9jYW5zbGVlcCgp
CnNpbGVudGx5IGZhaWwgdG8gZHJpdmUgdGhlIGxpbmUgbGF0ZXI/Cgo+ICAJCWlmIChJU19FUlIo
cGNpZS0+cmVzZXQpKQo+ICAJCQlyZXR1cm4gUFRSX0VSUihwY2llLT5yZXNldCk7Cj4gIAl9Cgot
LSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIw
MjYwNzA5LWxpbmtfcmV0YWluLXYzLTAtODFhOWQxODdiYjYxQG9zcy5xdWFsY29tbS5jb20/cGFy
dD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
