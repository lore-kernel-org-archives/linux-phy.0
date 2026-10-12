Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7184ACA9ED0
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 08:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vvr0/vsjeBl52kNr5Fpn0cGod0+ROOv5Rojj0SQ+iII=; b=MXyK/AA5vcLxDM
	FQVQuPBqHd6kUZ4N2jmgPKC5dX6hHKIRToWw9/xORFufEw0jcuzCbUaEba1uidX6EfnRdbmyGuQqV
	HbXmc2eRO9KtbU70STXrfFu+ikXVmfxGbH6Y3AFPIbiyuIKGrTfjjJDMr5XWTk+mcqQapV+sBpwJ1
	5BR4VAVhTkROBN8koL7jkMEejTyN60ftzwwm55BYldLEHSSLEonD/xrUGcH+9P5NJQpyHU1QnFeLV
	YBa51B/IsFCznb7p1tNCY7KtCcdXb0/S91CnOAYhuXKJo+DtX4vgpc/dLYv7wrRFXyGDNVCfBW70N
	qQYGb8IEQeJvUpT9qvJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGBVI-00000009x13-3yxT;
	Mon, 12 Oct 2026 08:35:28 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGBVI-00000009x0p-1xnO
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 08:35:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 89CE460DAC;
	Mon, 12 Oct 2026 08:35:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED8721F0089B;
	Mon, 12 Oct 2026 08:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791794127;
	bh=DaE/ux2Y0gwxFVPnyRYtU9HcRApd/zjO6wXFG/Z4XA8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=AEXN6J0rMO+atMJUjcW+1/xyq8sQAeMCPdWE2TD+x6X9azVZp60nWbQMDxPT4S4pY
	 tsPjP3s5ICPS+9xtTEpYQF2ArnIflnIgX3PBjJXyIU9xD7+9CJOGzZUIkUr28tRllU
	 OpgWdmFr4XHryBP5ceuO7AbclnGr+nzoYeXex5FL+trwrEEVMLUo6aZpHPsyyYkHvD
	 Knjx6J2aPnt/cy1uDb8Rd8k+B8vDydIW9WeG+ub4hctoxkX9iP/piD32pi7NFejRRh
	 yBPfuJNjSFy8SbQn2eo1BTl5+mvUyS/lK7jzIpncgKIBZyu9lIcMHwJNHaESqLJjSd
	 jv93D1uMjA85Q==
Date: Mon, 12 Oct 2026 14:05:14 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bartosz Golaszewski <brgl@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Xu Yang <xu.yang_2@nxp.com>, Peng Fan <peng.fan@nxp.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Peter Chen <peter.chen@kernel.org>, Pavankumar Kondeti <quic_pkondeti@quicinc.com>, 
	Stephen Boyd <stephen.boyd@linaro.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-phy@lists.infradead.org, Greg Kroah-Hartman <gregkh@suse.de>, 
	Peter Chen <peter.chen@nxp.com>
Subject: Re: [PATCH 03/10] phy: qcom-usb-hsic: do not run the sleep
 calibration clock
Message-ID: <asyZZ-3pl4dpCQog@debian>
References: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
 <20260810-msm8974-usb-hsic-v1-3-e5f93ea76ffa@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260810-msm8974-usb-hsic-v1-3-e5f93ea76ffa@oss.qualcomm.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gTW9uLCBBdWcgMTAsIDIwMjYgYXQgMDY6NDI6MDdQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBXaXRoIHRoZSBjYWxfc2xlZXAgKDMyIGtIeiBJTyBjYWxpYnJhdGlvbiBzbGVl
cCkgY2xvY2sgcnVubmluZywgdGhlCj4gSFNJQyBQSFkgZW5nYWdlcyBpdHMgc2xlZXAgY2FsaWJy
YXRpb246IHRoZSBzdHJvYmUvZGF0YSBwYWQKPiBjYWxpYnJhdGlvbiBjb252ZXJnZXMgdG8gZGlm
ZmVyZW50IHZhbHVlcyB0aGFuIHdpdGggdGhlIGFjdGl2ZQo+IGNhbGlicmF0aW9uIGFsb25lLCBI
U0lDX0NGRyByZXBvcnRzIHRoZSBzbGVlcCBjYWxpYnJhdGlvbiBzdGF0ZSwgYW5kCj4gdGhlIHBv
cnQgbm8gbG9uZ2VyIGRldGVjdHMgYSBkZXZpY2UgY29ubmVjdCAtIGFuIG9uYm9hcmQgSFNJQyBo
dWIKPiBzaWduYWxsaW5nIGl0cyBhdHRhY2ggYWZ0ZXIgcmVzZXQgaXMgbmV2ZXIgc2VlbiAob2Jz
ZXJ2ZWQgb24gdGhlCj4gQVBRODA3NCBEcmFnb25ib2FyZCBhZ2FpbnN0IGl0cyBVU0I0NjA0IGh1
YiwgYnkgY29tcGFyaW5nIHRoZSBVTFBJCj4gcmVnaXN0ZXIgc3RhdGUgYWdhaW5zdCB0aGUgdmVu
ZG9yIGtlcm5lbCwgd2hpY2ggbmV2ZXIgZW5hYmxlcyB0aGlzCj4gY2xvY2s6IHdpdGggY2FsX3Ns
ZWVwIGVuYWJsZWQgVUxQSSBIU0lDX0NGRyByZWFkcyAweGFiIGFuZCB0aGUgcGFkCj4gcmVnaXN0
ZXJzIDB4MGYvMHgwZCwgd2l0aG91dCBpdCAweGE5IGFuZCAweDEwLzB4MTAsIG1hdGNoaW5nIHRo
ZQo+IHdvcmtpbmcgdmVuZG9yIGNvbmZpZ3VyYXRpb24pLgo+IAo+IFN0b3AgcmVxdWVzdGluZyBh
bmQgZW5hYmxpbmcgdGhlIGNhbF9zbGVlcCBjbG9jay4KPiAKPiBBc3Npc3RlZC1ieTogQ2xhdWRl
OmNsYXVkZS1mYWJsZS01Cj4gU2lnbmVkLW9mZi1ieTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5
LmJhcnlzaGtvdkBvc3MucXVhbGNvbW0uY29tPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2Fk
aGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+CgotIE1hbmkK
Ci0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+N
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
