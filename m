Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC3E4C79F82
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 14:30:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AxHZs/96EwAAGUiPVMfzzI/9ZM/9ozWcdqqfYxlXDTs=; b=BqjfnC0cYAXUsD
	jyNELdqhitXI3ZI1DawNlrDSuDFqhPpskpukVKeTfNtKZcGm7ENHxCDSOyJAt4nqjRPvlQy7eVDba
	hfVtqAMPEfKSyqG8+Y8x1rPwzPyljvxchjsT6C0HHNjcJBzET7vf8s+BMlfaHh/LCF6y3TZwkV+Gd
	xKUxXS8LJ0SeC35YikLIma8WrFKHjleCiK0dsFVTHr5vu+HMk8MFUNn54rA/3p9D31aryLN10c9xi
	P3ycC4mMIOHxiYsrjwDQsrU7TrEG1Wt4+PP4mVI8k30+ecnd6dakOM4TqFcdzoUhgYnWRbXC9UJZo
	CKUOdetxZN7Hg3qjw2kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3wq0-00000009HQv-25zm;
	Tue, 08 Sep 2026 14:30:16 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3wpy-00000009HQe-3mYY
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 14:30:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 56D7342A6E;
	Tue,  8 Sep 2026 14:30:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAF1D1F00A3A;
	Tue,  8 Sep 2026 14:30:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788877814;
	bh=RSNyF0ETSnMVd4KqeCfjt8I8mJEL0lRcGD0W1+RvkRs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OeJuQpFVx0TKSmHZ6+CLS+8gtC+jiVag6ohXqX/KHuhT6tGhQL9RQbupQGuMchuFf
	 ZgIyNuPNde8YXHqMCO7iOtWNhDhwYgnVWHK3cPeiqCELS7R1KOn3t1Rzqi+FZC1ZKO
	 YpUQLJXdXrmKsV3+N8QwQoUDDQXbwqh3woZxV7EgX6uG3XpnbLzez4Rwkq6rFyotYa
	 zSqypgiXccMGzK3Waa3p+3uy588U413pWiQjuwWlZyICOmdD/1pnWBYM1YzcZdSW8S
	 CerD91IA8CY0DQcPVu15PuJwnMjLwmqB3BPSZX4WsDLIOT1sJrXI3hD2vHD3Ai43xA
	 KFsENrl7nzGzw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/9] phy: qualcomm: qmp-combo: Add DP COM v8 header
 and fix register layout
To: "Nabige Aala" <nabige.aala@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260908-glymur-phy-v3-v4-1-ff22e5150538@oss.qualcomm.com>
References: <20260908-glymur-phy-v3-v4-0-ff22e5150538@oss.qualcomm.com>
 <20260908-glymur-phy-v3-v4-1-ff22e5150538@oss.qualcomm.com>
Date: Tue, 08 Sep 2026 14:30:13 +0000
Message-Id: <20260908143013.EAF1D1F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gSW5jb21wbGV0ZSBtaWdy
YXRpb24gdG8gRFAgQ09NIHY4IG1hY3JvcyBpbiBgcW1wX3Y4X24zX3VzYjQzZHBwaHlfcmVnc19s
YXlvdXRgLgotLQoKY29tbWl0IDcxNDU1NDdjOWM4MTU2ZTliZDZiNDA0YzhhMzkyZWVjYTcyMWZi
OTUKQXV0aG9yOiBSaXRlc2ggS3VtYXIgPHJpdGVzaC5rdW1hckBvc3MucXVhbGNvbW0uY29tPgoK
cGh5OiBxdWFsY29tbTogcW1wLWNvbWJvOiBBZGQgRFAgQ09NIHY4IGhlYWRlciBhbmQgZml4IHJl
Z2lzdGVyIGxheW91dAoKQWRkIHRoZSBuZXcgRFAtc3BlY2lmaWMgUVNFUkRFUyBDT00gdjggaGVh
ZGVyIGZpbGUgYW5kIHVwZGF0ZSB0aGUKcmVnaXN0ZXIgbGF5b3V0IHRvIHVzZSBEUC1zcGVjaWZp
YyBzdGF0dXMgcmVnaXN0ZXIgb2Zmc2V0cyBmb3IKQ19SRUFEWV9TVEFUVVMgYW5kIENNTl9TVEFU
VVMgcmVnaXN0ZXJzLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFj
b20tcW1wLWNvbWJvLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8u
Ywo+IGluZGV4IGMzOWNlZDE2OGQwMzUuLjRkMzE2MzdmMWRjZTYgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMKPiArKysgYi9kcml2ZXJzL3Bo
eS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYwoKWyAuLi4gXQoKPiBAQCAtMzE4LDggKzMx
OSw4IEBAIHN0YXRpYyBjb25zdCB1bnNpZ25lZCBpbnQgcW1wX3Y4X24zX3VzYjQzZHBwaHlfcmVn
c19sYXlvdXRbUVBIWV9MQVlPVVRfU0laRV0gPSB7Cj4gIAlbUVBIWV9EUF9BT05fVE9HR0xFX0VO
QUJMRV0JCT0gUVBIWV9WOF9QQ1NfQU9OX0RQX0FPTl9UT0dHTEVfRU5BQkxFLAo+ICAKPiAgCVtR
UEhZX0NPTV9SRVNFVFNNX0NOVFJMXQkJPSBRU0VSREVTX1Y4X0NPTV9SRVNFVFNNX0NOVFJMLAoK
W1NldmVyaXR5OiBMb3ddClNob3VsZCB0aGlzIGFsc28gYmUgdXBkYXRlZCB0byB0aGUgbmV3IERQ
IG1hY3JvIERQX1FTRVJERVNfVjhfQ09NX1JFU0VUU01fQ05UUkw/CgpJdCBsb29rcyBsaWtlIHdl
J3JlIG1peGluZyBVU0IgYW5kIERQIENPTSBtYWNyb3MgZm9yIERQIFNlcmRlcyBjb25maWd1cmF0
aW9uCnJlZ2lzdGVycyBoZXJlIGluIHFtcF92OF9uM191c2I0M2RwcGh5X3JlZ3NfbGF5b3V0LgoK
PiAtCVtRUEhZX0NPTV9DX1JFQURZX1NUQVRVU10JCT0gUVNFUkRFU19WOF9DT01fQ19SRUFEWV9T
VEFUVVMsCj4gLQlbUVBIWV9DT01fQ01OX1NUQVRVU10JCQk9IFFTRVJERVNfVjhfQ09NX0NNTl9T
VEFUVVMsCj4gKwlbUVBIWV9DT01fQ19SRUFEWV9TVEFUVVNdCQk9IERQX1FTRVJERVNfVjhfQ09N
X0NfUkVBRFlfU1RBVFVTLAo+ICsJW1FQSFlfQ09NX0NNTl9TVEFUVVNdCQkJPSBEUF9RU0VSREVT
X1Y4X0NPTV9DTU5fU1RBVFVTLAo+ICAJW1FQSFlfQ09NX0JJQVNfRU5fQ0xLQlVGTFJfRU5dCT0g
UVNFUkRFU19WOF9DT01fQklBU19FTl9DTEtCVUZMUl9FTiwKCltTZXZlcml0eTogTG93XQpEb2Vz
IFFQSFlfQ09NX0JJQVNfRU5fQ0xLQlVGTFJfRU4gYWxzbyBuZWVkIHVwZGF0aW5nIHRvCkRQX1FT
RVJERVNfVjhfQ09NX0JJQVNfRU5fQ0xLQlVGTFJfRU4gdG8gYmUgY29uc2lzdGVudCB3aXRoIHRo
ZSBjaGFuZ2VzIGFib3ZlPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlr
by5kZXYvIy9wYXRjaHNldC8yMDI2MDkwOC1nbHltdXItcGh5LXYzLXY0LTAtZmYyMmU1MTUwNTM4
QG9zcy5xdWFsY29tbS5jb20/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
