Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80099C44500
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 08:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AuSoM6r+P9OEXm6WauMCW1BtF9QTjc3awp+1Fe/03bA=; b=3FUKqlKmoHs0+x
	9LPHcNAbjAvCMzBE74HAHwTUynMvD0FK1+1gPUoZfr1x1QZxRlKn5UOVEmSnGf4IKpjv2ZP73p7XI
	vRAkqePzkP/agyayMyI3Tp4dOoIPMHUxJ+qKhvKL9wD0LyA6K9J5IQC8wv1PwxGAMMOB9cvKcralg
	X+b0Uk7vBK7dsU7zWfIhcTDXmA895X3yko9twok1qSIbw3ke8vlBmHTwCG4LlXrHw7FnavJKPZBHi
	9H72pBRoHI3jNlB+/7KE26A3l8ZCv0j6Jt7ce90nX7uw4fePN2lOnzUzemyHK7/Kwg+d7FMr1EnX8
	6+6na6VGYRDWibI/2Hpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh1al-0000000EY4M-1hU0;
	Tue, 07 Jul 2026 08:55:48 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh1ag-0000000EY3Z-3FEl
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 08:55:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6BC2340020;
	Tue,  7 Jul 2026 08:55:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 017B71F000E9;
	Tue,  7 Jul 2026 08:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783414542;
	bh=rKHyDZqScow4C0JDKOCfB1A3m5vAsgELWwZMlfcLcRo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AxvojmMepAMHwwa/355MDFK8y0jON3aiFfwnxOJyxcEQ+lPkbhrbVMDsQZZeG/WLI
	 Hgr3LpKgyvhmhUfWQTz9xyDWiN3iCynHGjf+L2sgBvrf3KmUvUikjqAE/rCjH9NpFz
	 RyXMhj9nycT6s92GGRIDYf0pr/oIskhTwrhqxwxf/vpfx8EPJ0M3EVv4airMNrIUn9
	 u/Rjkyd1/FKBqxT2VqUo81RHyJzLczPg7WAAe/pN+qG7Z6vSU97G+SBhH5S6iNc2Hu
	 msZ0Hmur2yaIMXBlEcTzkejfHAVbewwTAVT8o4SO7ZUbbN2nTZZ+GHOOO5fcJAPA/4
	 yrymirc/jC13Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 11/11] iio: adc: qcom-spmi-iadc: Remove regmap R/W
 wrapper functions
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, neil.armstrong@linaro.org
In-Reply-To: <20260707083730.33977-12-angelogioacchino.delregno@collabora.com>
References: <20260707083730.33977-1-angelogioacchino.delregno@collabora.com>
 <20260707083730.33977-12-angelogioacchino.delregno@collabora.com>
Date: Tue, 07 Jul 2026 08:55:41 +0000
Message-Id: <20260707085542.017B71F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSByZWZlcmVuY2Ug
Y291bnQgb2YgdGhlIHBhcmVudCBTUE1JIGRldmljZSBvYnRhaW5lZCB2aWEgYHNwbWlfZmluZF9k
ZXZpY2VfYnlfb2Zfbm9kZSgpYCBpcyBuZXZlciBkcm9wcGVkLCBjYXVzaW5nIGEgbWVtb3J5IGFu
ZCBkZXZpY2UgcmVmZXJlbmNlIGxlYWsuCi0gW0xvd10gVHlwZSBtaXNtYXRjaCBpbiBgaWFkY19w
cm9iZWA6IHJldHVybmluZyBgRVJSX1BUUigtRU5PREVWKWAgaW5zdGVhZCBvZiBgLUVOT0RFVmAu
Ci0tCgotLS0gUGF0Y2ggWzExXTogW1BBVENIIHYxMCAxMS8xMV0gaWlvOiBhZGM6IHFjb20tc3Bt
aS1pYWRjOiBSZW1vdmUgcmVnbWFwIFIvVyB3cmFwcGVyIGZ1bmN0aW9ucyAtLS0KY29tbWl0IDJj
YzI2NzhjZWM2ZDkyMzczMWEzOTMxMWRmZjFjMThlNmYwMjJhZGYKQXV0aG9yOiBBbmdlbG9HaW9h
Y2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29t
PgoKaWlvOiBhZGM6IHFjb20tc3BtaS1pYWRjOiBSZW1vdmUgcmVnbWFwIFIvVyB3cmFwcGVyIGZ1
bmN0aW9ucwoKVGhpcyBjb21taXQgc2ltcGxpZmllcyB0aGUgZHJpdmVyIGJ5IHJlbW92aW5nIGN1
c3RvbSByZWdtYXAgcmVhZC93cml0ZQp3cmFwcGVycyBhbmQgZGlyZWN0bHkgY2FsbGluZyB0aGUg
cmVnbWFwIEFQSXMuIEl0IGFsc28gbWlncmF0ZXMgdGhlIGRyaXZlcgp0byByZWdpc3RlciBhcyBh
IFNQTUkgc3ViZGV2aWNlIHRvIGhhbmRsZSB0aGUgYmFzZSBhZGRyZXNzIGludGVybmFsbHkuCgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lpby9hZGMvcWNvbS1zcG1pLWlhZGMuYyBiL2RyaXZlcnMv
aWlvL2FkYy9xY29tLXNwbWktaWFkYy5jCj4gaW5kZXggYWQ2NmJiOTJmZTE5Yy4uODRjMmJkMjcz
NjdmZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2lpby9hZGMvcWNvbS1zcG1pLWlhZGMuYwo+ICsr
KyBiL2RyaXZlcnMvaWlvL2FkYy9xY29tLXNwbWktaWFkYy5jCgpbIC4uLiBdCgo+IEBAIC01MTEs
NyArNDg4LDEwIEBAIHN0YXRpYyBpbnQgaWFkY19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQo+ICAJaWFkYyA9IGlpb19wcml2KGluZGlvX2Rldik7Cj4gIAlpYWRjLT5kZXYgPSBk
ZXY7Cj4gIAo+IC0Jc3BhcmVudCA9IHRvX3NwbWlfZGV2aWNlKGRldi0+cGFyZW50KTsKPiArCXNw
YXJlbnQgPSBzcG1pX2ZpbmRfZGV2aWNlX2J5X29mX25vZGUoZGV2LT5wYXJlbnQtPm9mX25vZGUp
OwoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRoaXMgbGVhayB0aGUgZGV2aWNlIHJlZmVyZW5jZT8K
CnNwbWlfZmluZF9kZXZpY2VfYnlfb2Zfbm9kZSgpIHJldHVybnMgYSBkZXZpY2Ugd2l0aCBpdHMg
cmVmZXJlbmNlIGNvdW50CmluY3JlbWVudGVkLCBidXQgaXQgZG9lc24ndCBhcHBlYXIgdGhhdCBw
dXRfZGV2aWNlKCkgaXMgZXZlciBjYWxsZWQgdG8KcmVsZWFzZSBpdCB3aXRoaW4gaWFkY19wcm9i
ZSgpIG9uIGVpdGhlciB0aGUgc3VjY2VzcyBvciBlcnJvciBwYXRocy4KCj4gKwlpZiAoIXNwYXJl
bnQpCj4gKwkJcmV0dXJuIEVSUl9QVFIoLUVOT0RFVik7CgpbU2V2ZXJpdHk6IExvd10KRG9lcyB0
aGlzIG5lZWQgdG8gcmV0dXJuIC1FTk9ERVYgZGlyZWN0bHkgaW5zdGVhZCBvZiB1c2luZyBFUlJf
UFRSKCk/CgpTaW5jZSBpYWRjX3Byb2JlKCkgcmV0dXJucyBhbiBpbnQsIHJldHVybmluZyBFUlJf
UFRSKC1FTk9ERVYpIGNhdXNlcyBhIHR5cGUKbWlzbWF0Y2ggYW5kIGEgY29tcGlsZXIgd2Fybmlu
Zy4KCj4gKwo+ICAJc3ViX3NkZXYgPSBkZXZtX3NwbWlfc3ViZGV2aWNlX2FsbG9jX2FuZF9hZGQo
ZGV2LCBzcGFyZW50KTsKPiAgCWlmIChJU19FUlIoc3ViX3NkZXYpKQo+ICAJCXJldHVybiBQVFJf
RVJSKHN1Yl9zZGV2KTsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28u
ZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MDcwODM3MzAuMzM5NzctMS1hbmdlbG9naW9hY2NoaW5vLmRl
bHJlZ25vQGNvbGxhYm9yYS5jb20/cGFydD0xMQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
