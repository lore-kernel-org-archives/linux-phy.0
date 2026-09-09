Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F4E8C79FAD
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 11:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DxatF+lCFsbQUEJ+5hLPVQe6CylhOY12RdmvwqwvGTw=; b=CArw6uV9+TiJ72
	ckWDhenRBBOXlUMk46ZOvh9T9J88ofs6v9fGZzttqLaRlm9nQ2NY2VZyzw4SIAiBkW4HX29CWelZD
	LOJlKNY7Dxcx5inRvDdfRumYpxjnJytXVlf8MzBLylFUrWt1HmiiaC5uJeOx5RKRatfBnAbnm8akE
	kdaNx6CMSj7VSbOUdIoG3i8/2dEjcrLGxhgURHYmi5hExPMIEqDTDM4PdZsLofICC8gQ1hf2bqXs5
	LPXSZQj5optxhedsFRSSsF92ju7Mzoe/sv8LxO5dT7sQiSJoiL7x2PpHP8n3wXAKoLW9deiYUtyQR
	1VyIfiu4kaAJSXyKPk4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Gsm-0000000BdAV-41vS;
	Wed, 09 Sep 2026 11:54:29 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Gsl-0000000BdAH-2FaN
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 11:54:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D90416020A;
	Wed,  9 Sep 2026 11:54:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17A201F00A3A;
	Wed,  9 Sep 2026 11:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788954866;
	bh=0sSM5tGta9YKYIHJMpKBGcXZ/flhD7hOb/68yT6eR00=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HaYnstPjPhPHVf8gK4Rlu91dbrPlQdsnJEjytqf1Auxug8z3EG1GIy/aL3f3Kes+N
	 b/4odyoHOyKCM6VWvbrB0iOwQoQ73rxzT5vfCQFoqlEQR2DfphKN0igp1P3icO8aQX
	 efFpHUiyyaDG1CJjuPoNtSjPQ9thnIFNLnoPa0xjqmpyY2u/sPPJJ8K4B/h6tBCVu3
	 zVfOTTCUgRir2bgvnKEH9OAmTXwezkn60K5jkmH4nsfo1F/oSh7mk68L2FmNsnvH/z
	 jFMGw6+C0ZT0moC3bCm24/8V2yqS4c4Fr6n0f69jmreADr5pOpjvADaC9XZHHAN81k
	 zaWImeJ10wZ1g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/5] PCI: qcom: Add CGC disable workaround for Nord
 PCIe
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: robh@kernel.org, vkoul@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-pci@vger.kernel.org
In-Reply-To: <20260909-nord-v3-3-b0a82721c547@oss.qualcomm.com>
References: <20260909-nord-v3-0-b0a82721c547@oss.qualcomm.com>
 <20260909-nord-v3-3-b0a82721c547@oss.qualcomm.com>
Date: Wed, 09 Sep 2026 11:54:25 +0000
Message-Id: <20260909115426.17A201F00A3A@smtp.kernel.org>
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

PiBOb3JkIHJlcXVpcmVzIGEgd29ya2Fyb3VuZCB0byBhZGRyZXNzIGEgdGltaW5nIGNvbnZlcmdl
bmNlIGlzc3VlIGluIHRoZQo+IFBDSWUgcG93ZXIgZG9tYWluLiBUbyBhdm9pZCB0aGUgaXNzdWUs
IHNldCB0aGUgQ09SRV9DTEtfQ0dDX0RJUyBhbmQKPiBBVVhfUFdSX0RFVCBiaXRzIGluIFBBUkZf
U1lTX0NUUkwgYWZ0ZXIgY29udHJvbGxlciBpbml0aWFsaXphdGlvbi4KPiAKPiBUaGUgU0xWX0FD
TEtfQ0dDX0RJUyBiaXQgaXMgYWxyZWFkeSBjb25maWd1cmVkIGJ5IGhhcmR3YXJlIHJlc2V0LiBU
aGlzCj4gY2hhbmdlIGFkZHMgdGhlIHJlbWFpbmluZyByZXF1aXJlZCBzZXR0aW5ncyBhcyBkb2N1
bWVudGVkIGluCj4gUUNUREQxMTk3MjQ0Ni4KPiAKPiBSZXZpZXdlZC1ieTogS29ucmFkIER5YmNp
byA8a29ucmFkLmR5YmNpb0Bvc3MucXVhbGNvbW0uY29tPgo+IFNpZ25lZC1vZmYtYnk6IEtyaXNo
bmEgQ2hhaXRhbnlhIENodW5kcnUgPGtyaXNobmEuY2h1bmRydUBvc3MucXVhbGNvbW0uY29tPgoK
U2FzaGlrbyBoYXMgcmV2aWV3ZWQgdGhpcyBwYXRjaCBhbmQgZm91bmQgbm8gaXNzdWVzLiBJdCBs
b29rcyBncmVhdCEKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2
LyMvcGF0Y2hzZXQvMjAyNjA5MDktbm9yZC12My0wLWIwYTgyNzIxYzU0N0Bvc3MucXVhbGNvbW0u
Y29tP3BhcnQ9MwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
