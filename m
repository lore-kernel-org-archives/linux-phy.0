Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C05F7C79FB6
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 16:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I8JKsfFNK2jNOEkPDblXxMtFvg0Qj0DVLMUm3euykDA=; b=aUdVYwrzklOWh3
	MXWYYOr+v+XCJ77q74N1gZ1xnn0CFAiOBu6R4bS+OqFvGsPZO6KWjrGavDjxDZryV9f6v+UyNc6RT
	6Hhku+VBSoDDUY13nWFRsaWcJD/EQANAPXtKXAxNozKH2X2cWhAZyRG4lfUOb9HI5gplDMzKVVaqV
	hkeT4lDEs3X5upE3mtlmLd/QKBP9do+tpnU+W+bexmROhCwwANElmxjAwhqojMgnCRIL5dWINg3ea
	wtuvBrhlKbpZ+zdnG2BHuq4hqq94AAtbGd39DdC0w0pwxLGBiaIuyE/b80hE1kGIsbRGCmQOPW+5T
	TZvgmdzJhrTNRvJ6Beog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4KzQ-0000000CHig-1l7Y;
	Wed, 09 Sep 2026 16:17:36 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4KzO-0000000CHiX-2yNW
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 16:17:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4FC46432AB;
	Wed,  9 Sep 2026 16:17:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D8431F000FF;
	Wed,  9 Sep 2026 16:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788970654;
	bh=Qhe2qNXetlQqkFY1S6O8BoiQ9ETn0fwLz5nwk41DypA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=VUCYhhacUnIeH3MGrESrRcuKjnLBgv8kOx5gW6pTTwhEFKoDEAIQ9cEK5mXzghuf/
	 78Ly+C0CMaXb2F/x43rRNd6eqO4DrHYvyAMQ9NgwaOwXM+iewa1rCGJDI6vFgVh3xB
	 JmBGxSs0geyg9jrGtrcV7q+1KrJcBkGA/NMbu+Vem/4W1pdfX7b1pVTey+HY3M/jaZ
	 tsFcOLYJxIzIGR1QIIseWmJ7qeRAnN3fX0PxUN/iV4svUUbXbMAgT4H3woizr68HKg
	 ChsB4xwNSEapEwwgyKJQD22MaJe7AvqjORFKttPf6JSC0rRjejD2j0fA4TiSqFaGsd
	 yA6bUOX1f9DXA==
Date: Wed, 9 Sep 2026 18:17:26 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kathiravan T <quic_kathirav@quicinc.com>, 
	Baruch Siach <baruch@tkos.co.il>, Dmitry Baryshkov <lumag@kernel.org>, 
	Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>, Manu Gautam <mgautam@codeaurora.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH v2 0/3] phy: qcom-qusb2: sort out register layouts
Message-ID: <oudk5kc7htbuodfuszus4wqxcbfbrhn2meuk35cz5bms34i23j@jywq3lb3q5db>
References: <20260706-fix-qusb2-v2-0-8d9cd73b1db7@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260706-fix-qusb2-v2-0-8d9cd73b1db7@oss.qualcomm.com>
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

T24gTW9uLCBKdWwgMDYsIDIwMjYgYXQgMDQ6NTM6MTNQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBJUFE2MDE4IGFuZCBNU004OTk2IHVzZSB0aGUgc2FtZSByZWdpc3RlciBsYXlv
dXQsIGhvd2V2ZXIgZm9yIGhpc3RvcmljYWwKPiByZWFzb25zIGlwcTYwMThfcmVnc19sYXlvdXQg
ZW5kZWQgdXAgY29ycmVjdGx5IGRlZmluaWcgVEVTVDEgcmVnaXN0ZXIgYXQKPiAweDk4IChiZWNh
dXNlIHBsYXRmb3JtcyB1c2luZyB0aGF0IGxheW91dCBkaWRuJ3QgdXNlIGF1dG9yZXN1bWUpLCB3
aGlsZQo+IG1zbTg5OTZfcmVnc19sYXlvdXQgdXNlZCBURVNUX0NUUkwgb2Zmc2V0ICgweGI4KSBm
b3IgdGhlIFRFU1QxIGxheW91dAo+IGVudHJ5LiBGaXggaGFuZGxpbmcgb2YgdGhlIGF1dG9yZXN1
bWUgcmVnaXN0ZXIgYW5kIGRlZmluaXRpb25zIG9mIHRob3NlCj4gcmVncyBsYXlvdXRzLgo+IAo+
IFNpZ25lZC1vZmYtYnk6IERtaXRyeSBCYXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZAb3NzLnF1
YWxjb21tLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5u
YW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K61
4K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
