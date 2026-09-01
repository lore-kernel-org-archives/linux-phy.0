Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0ABEEC624D2
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 12:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pNg62qtVhsBiT6I+FoMUtCI+8uU716O3zpWQtnS3/+0=; b=BdTa/QVkfRHOAt
	cGPuSXK4FDTN2kgYWMgxwnXRMhXgL+woOesNUngXRh1aU8aQxCRtrIWOGH+Lz662yanXhwaX0UYsw
	8NKuYFJLquCdWaO0VFcYJK8SHgGT4cNkVIkmXYgZwUmGg8hpy2odSLKpdvwW1Euhn/CdVy47ssEOL
	PqPaUauTzFl1ok0Ce8oosa04lBlX7K3pUxNCX9uQn7afabxPJeDhLBnEDcJdOngnO8fwVOFcvYJLg
	FgQm0gvKneiB0H8ZjSzAs2+eiVN+Pd+lni+V9jHaFxxJALi7IWq0owI+ZXDaKvaeGeO61E3TGP77Z
	LnoAdBDXDm4MyFvQRljA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1NsH-0000000C8QF-31JJ;
	Tue, 01 Sep 2026 12:46:01 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1NsF-0000000C8Q5-3ZbM
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 12:45:59 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5387440379;
	Tue,  1 Sep 2026 12:45:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 214431F000E9;
	Tue,  1 Sep 2026 12:45:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788266759;
	bh=RazYKUpdfpPz7uZDCd2IAM5cS0JehNuksA95BlTXXuc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=V+YyZM/9th644UkgJhS0rwA1eOOguyJl/Tw6IS39JJv59oidGUPG4T0wKhj+d+Emn
	 us/8pJFRJy3nhL5wCaCb6ceTXHaZEkPiKvLJ/G5Pls18N2jlxSbDIyP1I11Jk64jM8
	 fRtIlpJxZNsdo6EwbJgav/sPrJjUzUL5inXm7GCtSioxGN4JeiT2qsv0mdjIwjEFoZ
	 oa9vBhdnZdeJz22V3QLoFfNPDhl72YB/r3h/QkXA6YplT39J4m5mkjV257VfjILosC
	 6bNJiu5MRFE0ELYQI8wy9aMfVr6YuEN4y72e8VszPBGHTgPy7KhRLt+mvyaBLdLJEP
	 56bOhW9aru3tg==
Date: Tue, 1 Sep 2026 14:45:42 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, usb4-upstream@oss.qualcomm.com, 
	Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>, Mika Westerberg <westeri@kernel.org>, 
	Sven Peter <sven@kernel.org>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH v4 4/5] phy: qualcomm: qmp-combo: Add USB4/TBT3
 configuration data for Hamoa
Message-ID: <ltdod75qfvs5mvuwx5wvqezj4nzwt76joszjksxjiejfg5qka2@drotnkjgrcui>
References: <20260820-topic-usb4phy-v4-0-aec9d2cb31f6@oss.qualcomm.com>
 <20260820-topic-usb4phy-v4-4-aec9d2cb31f6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260820-topic-usb4phy-v4-4-aec9d2cb31f6@oss.qualcomm.com>
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

T24gVGh1LCBBdWcgMjAsIDIwMjYgYXQgMDQ6MjQ6MTNQTSArMDIwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiBGcm9tOiBLb25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lvQG9zcy5xdWFsY29tbS5j
b20+Cj4gCj4gQWRkIHRoZSBvZmZzZXRzIGFuZCBjb25maWd1cmF0aW9uIHRhYmxlcyB0byBzdXBw
b3J0IFVTQjQgYW5kCj4gVGh1bmRlcmJvbHQgMyBvcGVyYXRpb24gb24gdGhlIFVTQjQtY2FwYWJs
ZSBQSFlzIGZvdW5kIG9uIEhhbW9hIGNoaXBzLgo+IAo+IFJldmlld2VkLWJ5OiBEbWl0cnkgQmFy
eXNoa292IDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+Cj4gUmV2aWV3ZWQtYnk6
IEFiZWwgVmVzYSA8YWJlbC52ZXNhQG9zcy5xdWFsY29tbS5jb20+Cj4gU2lnbmVkLW9mZi1ieTog
S29ucmFkIER5YmNpbyA8a29ucmFkLmR5YmNpb0Bvc3MucXVhbGNvbW0uY29tPgoKUmV2aWV3ZWQt
Ynk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFs
Y29tbS5jb20+CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k
4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
