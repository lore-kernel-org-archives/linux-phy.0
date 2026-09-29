Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A74ECA5FA1
	for <linux-phy@archiver.kernel.org>; Tue, 29 Sep 2026 06:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PsWxVBaP/6KqhlhGz4lLNfTDKHRSGdca8b2KI17fOHY=; b=NahrP9Jgz17Pk8
	QOmUWRqXGPmmFkM/nGv8Z227D3o0WhUMyo8xkMW5mUCkoilavzI+INblKJ9D0gL6T6p/7D5FKfGEu
	v4C3+f84uQUtau0jxAjEZQydm7P6lczfxGieHow9Ps4MsjNmIpAi7KHESE5GQGG4499BlgbLTWKiv
	PnfS9AkK7XLijK2fIeCrm8wYCjZ66kci1vapeNUFeWdDZ+mCnJG6CzmEw8/u9bc6e3rH6N4b2ZlIT
	v6+rW4QpVS0UEmd6XiaaS+71w0CFM8VLLwYORBJ5PI8cT+kTzEqhRW/g2Qlte553StgxOAsPFYnUI
	k1/jl4FiNgM7dKEiDiWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBR3b-00000002PbT-0Bnx;
	Tue, 29 Sep 2026 06:11:15 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBR3Z-00000002PbK-3085
	for linux-phy@lists.infradead.org;
	Tue, 29 Sep 2026 06:11:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1924360210;
	Tue, 29 Sep 2026 06:11:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51F2C1F000FF;
	Tue, 29 Sep 2026 06:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790662272;
	bh=mMe2lcCn1iOVvlO6YTwPLyl+ltNQj99ploKnE7D6LYs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=f8k/ylplZcR7AkfYZyOlIDl6Jle2hA3OXfii0VpOXSLLdtDGBhRimZZM9OoGXTsy+
	 HxDNC8U/AEkyW8vEFpEAtpuS6fX+K2H5/6L0abr6pfxXoqML7uAid9ToKyfyEgEknG
	 HprRc9bSVif38676MooI4slByBsKR6UedzZcblDYYS8pqF3E7EDLT2jU2E+alKTKJQ
	 RE1lXlUigIGZ0gNidp3UyKjCpRC1C5Xrs2ewXBwPjUQUUxR4twZZblRk6U7SXuiTEP
	 bfLsfuqLAupErJx6EUpj41nSb9QRYhjGpbJ7yeOAUya1emDpSNaFuZzgFYJ+kF1hm/
	 DLd8H6RNWNWnw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v17 09/11] arm64: dts: qcom: kaanapali: Add CAMSS and
 CSIPHY block definitions
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, olteanv@gmail.com
In-Reply-To: <20260928-kaanapali-camss-v17-9-dcf3fd37f76c@oss.qualcomm.com>
References: <20260928-kaanapali-camss-v17-0-dcf3fd37f76c@oss.qualcomm.com>
 <20260928-kaanapali-camss-v17-9-dcf3fd37f76c@oss.qualcomm.com>
Date: Tue, 29 Sep 2026 06:11:11 +0000
Message-Id: <20260929061112.51F2C1F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gZHRzOiBtaXNzaW5n
ICNwaHktY2VsbHMgaW4gQ1NJUEhZIG5vZGVzIGJyZWFrcyBwaHkgbG9va3VwCi0tCgpjb21taXQg
MGQ1ZGM5NDNkMmFjMjZjNjVlZmRmMTFhNTY5NzBkYjFiZDdmZjZmOQpBdXRob3I6IEhhbmd4aWFu
ZyBNYSA8aGFuZ3hpYW5nLm1hQG9zcy5xdWFsY29tbS5jb20+Cgphcm02NDogZHRzOiBxY29tOiBr
YWFuYXBhbGk6IEFkZCBDQU1TUyBhbmQgQ1NJUEhZIGJsb2NrIGRlZmluaXRpb25zCgpUaGlzIGNv
bW1pdCBhZGRzIGRldmljZSB0cmVlIG5vZGVzIGZvciB0aGUgQ0FNU1MgYW5kIENTSVBIWSBibG9j
a3Mgb24gdGhlCkthYW5hcGFsaSBwbGF0Zm9ybS4gVGhlc2UgZGVmaW5pdGlvbnMgZW5hYmxlIGNh
bWVyYSBwaXBlbGluZXMgdG8gYmUgY29uZmlndXJlZAphbmQgdXNlZCBieSBib2FyZC1zcGVjaWZp
YyBkZXZpY2UgdHJlZXMuCgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20v
a2FhbmFwYWxpLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20va2FhbmFwYWxpLmR0c2kK
PiBpbmRleCAzZTYzZTYyMjUxMDg5Li43YTgwNDM4YmRlNTcwIDEwMDY0NAo+IC0tLSBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcWNvbS9rYWFuYXBhbGkuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcWNvbS9rYWFuYXBhbGkuZHRzaQoKWyAuLi4gXQoKPiBAQCAtMzU5NSw2ICszNTk2LDMw
NyBAQCB1c2JfZHBfcW1wcGh5X2RwX2luOiBlbmRwb2ludCB7Cj4gIAkJCX07Cj4gIAkJfTsKPiAg
Cj4gKwkJY2Ftc3M6IGlzcEA5MjUzMDAwIHsKClsgLi4uIF0KCj4gKwkJY3NpcGh5MDogcGh5QDk1
MjMwMDAgewo+ICsJCQljb21wYXRpYmxlID0gInFjb20sa2FhbmFwYWxpLWNzaTItcGh5IjsKPiAr
CQkJcmVnID0gPDB4MCAweDA5NTIzMDAwIDB4MCAweDIwMDA+OwoKW1NldmVyaXR5OiBNZWRpdW1d
CkRvZXMgdGhpcyBub2RlIG5lZWQgYSAjcGh5LWNlbGxzIHByb3BlcnR5PyBUaGUgZ2VuZXJpYyBQ
SFkgZnJhbWV3b3JrIHJlcXVpcmVzCnRoaXMgZm9yIGNvbnN1bWVycyB0byBzdWNjZXNzZnVsbHkg
cHJvYmUuCgpUaGUgcWNvbSxrYWFuYXBhbGktY3NpMi1waHkgY29tcGF0aWJsZSBiaW5kcyB0byBh
IGdlbmVyaWMgUEhZIHByb3ZpZGVyIHZpYQpkZXZtX29mX3BoeV9wcm92aWRlcl9yZWdpc3Rlcihk
ZXYsIG9mX3BoeV9zaW1wbGVfeGxhdGUpLiBXaGVuIGEgY29uc3VtZXIKY2FsbHMgcGh5X2dldCgp
LCB0aGUgUEhZIGNvcmUgaW52b2tlcyBvZl9wYXJzZV9waGFuZGxlX3dpdGhfYXJncygpIHRvIHBh
cnNlCnRoZSByZWZlcmVuY2UuCgpXaXRob3V0ICNwaHktY2VsbHMgPSA8MD47IGluIHRoaXMgYW5k
IHRoZSBvdGhlciBjc2lwaHkgbm9kZXMgKGNzaXBoeTAgdGhyb3VnaApjc2lwaHk1KSBpbiBhcmNo
L2FybTY0L2Jvb3QvZHRzL3Fjb20va2FhbmFwYWxpLmR0c2ksIHRoZSB0cmFuc2xhdGlvbiB3aWxs
IGZhaWwsCmxlYXZpbmcgdGhlIGNvbnN1bWVyIGRldmljZXMgbm9uLWZ1bmN0aW9uYWwuCgo+ICsK
PiArCQkJY2xvY2tzID0gPCZjYW1jYyBDQU1fQ0NfQ1NJUEhZMF9DTEs+LAo+ICsJCQkJIDwmY2Ft
Y2MgQ0FNX0NDX0NTSTBQSFlUSU1FUl9DTEs+LAo+ICsJCQkJIDwmY2FtY2MgQ0FNX0NDX0NPUkVf
QUhCX0NMSz47CgpbIC4uLiBdCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNo
aWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTI4LWthYW5hcGFsaS1jYW1zcy12MTctMC1kY2YzZmQz
N2Y3NmNAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTkKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
