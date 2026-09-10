Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05A81C79F9F
	for <linux-phy@archiver.kernel.org>; Thu, 10 Sep 2026 15:56:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sN4VTyT8DukiNNhwoSvCy3iaudZed/1xdfVzMjzqh2U=; b=BoSub9dCEiE29j
	wn6mgLpqNWOC5kwRh8LGlV/SMk5VLUwITW9nDjXJW22HB7tvOgueEr7udyb1Go0OEBnSbwat46lKm
	vOVSeRRthDHJRD6QL8tL9jOq+zJdJM1BzJxde6kgauKCacfUMTyIpINv6uZ6IpFzdHwWmc3It9MUm
	B3zDXk6+pcUPIqUNwh7N25t9P1vnH+DyuEsYj68uKzqNa4oK2GSHPKAjqqdhYhz89DNf2QTvUMFSx
	NQGWQwnunfBIUQ9mGQBnpjDLuXbSUKtZX0vh07u67z33+rcpHVG9FkzZLj4+BlLCpZabX9nxTbNrU
	nuSUT+t7o4f6ngo9kTZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4h8W-0000000Esqx-32lW;
	Thu, 10 Sep 2026 15:56:28 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4h8V-0000000EsqZ-3hFs
	for linux-phy@lists.infradead.org;
	Thu, 10 Sep 2026 15:56:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 49CCD400E4;
	Thu, 10 Sep 2026 15:56:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A0C61F000FF;
	Thu, 10 Sep 2026 15:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789055787;
	bh=T0xOV2XeqOE1Qmp8JpFgC8m+9TTqK0Rb0vPMhfpsMmI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=WN2nasbJLrjKzbp+V4Q2gFjZkZhqtUqNA7JzY923WT4+pC5Rhy+8o2AuHb+IsLVl7
	 lDYnNgSi6F3XJmcFQzAYmkrZb2Q7YRDuUnnX78xhExdNPPbtwpXlAWwD0Sr/jVAyCp
	 Alzfpxd6rG/5Ds7PKIBzASRgs9055rLevso2px4hdX5C2nFbgm1/8HnnxwmFjh0AeJ
	 AKmnBfMuSd3eEBbznDUOAerlRsSixpnU8uT68PE2fYauSuxL6VTRDiq2nkYTnwno2Q
	 h+4ilMZfvJlFaFCem+gD5IolN+DELILMltgM8Xl/xAAqtL1/0k4Fry6jEFCXJ0dV0M
	 PBqtxn9dttPrA==
Date: Thu, 10 Sep 2026 17:56:18 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v7 4/5] phy: qcom: m31-eusb2: Set phy type to EUSB2
Message-ID: <zog5ubweep57jr6dokjuzr6eupd5uj3yb6pjyextx72bls2dbo@v2j4nwuigixt>
References: <20260905-eusb2-interrupt-v7-v7-0-820cf5377a70@oss.qualcomm.com>
 <20260905-eusb2-interrupt-v7-v7-4-820cf5377a70@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260905-eusb2-interrupt-v7-v7-4-820cf5377a70@oss.qualcomm.com>
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

T24gU2F0LCBTZXAgMDUsIDIwMjYgYXQgMDg6NTk6MDhQTSArMDUzMCwgS3Jpc2huYSBLdXJhcGF0
aSB3cm90ZToKPiBVU0IgY29udHJvbGxlcnMgbGlrZSBEV0MzIGFyZSBhZ25vc3RpYyBvZiB0aGUg
a2luZCBvZiBwaHkgKFVTQjIvZVVTQjIpCj4gY29ubmVjdGVkIHRvIGl0LiBTZXQgdGhlIHBoeSB0
eXBlIHRvIEVVU0IyIHRvIGxldCB0aGUgY29udHJvbGxlciBrbm93Cj4gdGhlIHBoeSB0eXBlIHdo
ZW4gcXVlcmllZCBkdXJpbmcgaXRzIHByb2JlLgo+IAo+IFJldmlld2VkLWJ5OiBUaGluaCBOZ3V5
ZW4gPFRoaW5oLk5ndXllbkBzeW5vcHN5cy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogS3Jpc2huYSBL
dXJhcGF0aSA8a3Jpc2huYS5rdXJhcGF0aUBvc3MucXVhbGNvbW0uY29tPgoKUmV2aWV3ZWQtYnk6
IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29t
bS5jb20+CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+
4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
