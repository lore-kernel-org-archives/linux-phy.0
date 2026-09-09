Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CAD4C79FAD
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 11:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DKmPSn8yxeB09ZhI5JFKurAEP1eOSOHgyff3WalK7fQ=; b=hxDxMHDFAVgz0V
	NLgGSLxYQ9SHJvGu+DWanoh10jHaCsVO0VHviREnTcYSZ+lADJfCSPY7LNp/Lk6sKy59N0OfXwFOw
	MZYQMptFHNtlKaI7jrclF6cVwVO2ZHsmCMBH3DIErpw5VJ0jWDcV5qMYxc6Ns0WxAbokuaKn7A+vq
	ELKA5MfPZKxpRQMZAGMi+KLLhB9xiXmfnSJUANA0Qboq0GEpba0sDNy2rpywl8UPX677SrDSdF8j0
	UuddPuis2kLS9bvIoNnUX43Z3hFBD9yTzJZJo0GNZvSXZ2sz6lLGIe8+BPfLtFOQxB2nxDKEJiruz
	ZpwL2wjWV1V7ip/0bGqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4GsK-0000000Bd8Y-39qH;
	Wed, 09 Sep 2026 11:54:00 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4GsK-0000000Bd8Q-0zpn
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 11:54:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B93F5429F5;
	Wed,  9 Sep 2026 11:53:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2479F1F00A3A;
	Wed,  9 Sep 2026 11:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788954839;
	bh=xe5vpk0qXlrg0DlycFTJ8yEvyGn79PFWNHGf9MJxLO4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NuVA+m2EZXNsXcyACAiHP3V1/pBrPJTg9+HLP0+2ylHOZdubKxavva/EgIT4zNSqw
	 yAny04KUvgxcj0Qpjqrr+0T8uFqTRfKW/T0O4SJs7tNA5T82a7gcnP57Nm8wm07cHA
	 YYlcXLPCNWULI+iDUfouRoOAG2G2QQR+0u6B4O7j9AigCPkdZ92RalhfRN/jets9Uo
	 bts2s7k4gQp7Uf+Ck1/C3HS0lYU7UDb3wbhT5By6oIurhOEmksoiF21QtAtV3bNvgr
	 Y18SjmF6neTOmUz/e/4AULtEYFqk8rXhbTAJl+vGrDfEkJB0jhjSPay4FWFEq88xWF
	 hAEJjPzvjOALQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/5] dt-bindings: pci: qcom: add Nord PCIe controller
 compatible
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, vkoul@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-pci@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260909-nord-v3-2-b0a82721c547@oss.qualcomm.com>
References: <20260909-nord-v3-0-b0a82721c547@oss.qualcomm.com>
 <20260909-nord-v3-2-b0a82721c547@oss.qualcomm.com>
Date: Wed, 09 Sep 2026 11:53:58 +0000
Message-Id: <20260909115359.2479F1F00A3A@smtp.kernel.org>
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

PiBBZGQgdGhlIHFjb20sbm9yZC1wY2llIGNvbXBhdGlibGUgc3RyaW5nIHRvIHRoZSBRdWFsY29t
bSBQQ0llCj4gY29udHJvbGxlciBiaW5kaW5nLgo+IAo+IFRoZSBOb3JkIFBDSWUgY29udHJvbGxl
ciBpcyBjb21wYXRpYmxlIHdpdGggdGhlIFNBODc3NVAgUENJZQo+IGNvbnRyb2xsZXIgaW1wbGVt
ZW50YXRpb24gYW5kIHJldXNlcyB0aGUgc2FtZSBiaW5kaW5nIGRlZmluaXRpb24uCj4gCj4gQWNr
ZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAb3NzLnF1YWxj
b21tLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBLcmlzaG5hIENoYWl0YW55YSBDaHVuZHJ1IDxrcmlz
aG5hLmNodW5kcnVAb3NzLnF1YWxjb21tLmNvbT4KClNhc2hpa28gaGFzIHJldmlld2VkIHRoaXMg
cGF0Y2ggYW5kIGZvdW5kIG5vIGlzc3Vlcy4gSXQgbG9va3MgZ3JlYXQhCgotLSAKU2FzaGlrbyBB
SSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTA5LW5vcmQt
djMtMC1iMGE4MjcyMWM1NDdAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTIKCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
