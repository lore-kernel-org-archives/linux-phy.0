Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1511DC43458
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 12:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qZGzdEygbXbC9dxU4AtXTetbJWi4ZsOyV8oHnUmjigQ=; b=d0dEve9c1XK3FV
	i49xJ0ochqckpuGkkYQ8bGCuica0XvHjMa+TR6nkDtCPmd+yOysrUGJcjz3PwgjjUQhVTM9DjPWrM
	4aCgWn5ENkJP4RPlEiqCy6Fc9RMULIrEGlUIwNrcivlpu9CRMTDkHa50X3ktrNAewxA2mnSfUMiKg
	mNlu6mDitPDjogO3eJoqKukiBghlgy5878GqmF1c/zreZB0lI/KRga+MuN/cyUlIbS+FAL7S265WE
	4GTJbqEFhJKiS2Z0lS/SE/9Wn2BArucTmzfatUe1VHAJHfMGSDoPVqU4B+L1zaHc9DpUNLTN9VEms
	GMJh4vEZtCEjalan0XLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whRMd-0000000H7XL-3Xyd;
	Wed, 08 Jul 2026 12:26:55 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whRMc-0000000H7Wz-0k97
	for linux-phy@lists.infradead.org;
	Wed, 08 Jul 2026 12:26:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4967A60008;
	Wed,  8 Jul 2026 12:26:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CB6F1F00A3D;
	Wed,  8 Jul 2026 12:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783513613;
	bh=lmRsPf9VEqFuwdGL0N01ygoQ0sNBqVgckzefpy6MbHg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=D45Ua00PVrHaWvDFhewpeQ207QIm9Bgqf/DgwlOcV2fzIUYdkizGPqLCtEv3/z0ye
	 dzZqItSfuaZkfwWygiA9ZtpCLteCeSFtxPp1zxg51wqptLHEiwv86kKSydCoSznyOX
	 /ikOlMwEqPBPCA26NbZzWKjKjf77XJ3H0KukpA+LrtZCKSUGfeYMJ4Fmnz7sQShtu+
	 G9NL6Tvz/NM6s5A55jQd5ChSMncv4xB8jXXSPJBfA+w2SQnNTdeYv09/cXDL1vK/u+
	 owxSOPCSTLvBB8xu7FcY5YDjVyM5uJsHlIQor4RAgwqDxqMw381j8RtOoLHO4qwm9j
	 LDrHmiz413GSQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 5/5] arm64: dts: qcom: Add Shikra EVK boards
To: "Komal Bajaj" <komal.bajaj@oss.qualcomm.com>
Cc: neil.armstrong@linaro.org, robh@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org
In-Reply-To: <20260708-shikra-dt-v7-5-977b65a300c1@oss.qualcomm.com>
References: <20260708-shikra-dt-v7-0-977b65a300c1@oss.qualcomm.com>
 <20260708-shikra-dt-v7-5-977b65a300c1@oss.qualcomm.com>
Date: Wed, 08 Jul 2026 12:26:52 +0000
Message-Id: <20260708122652.8CB6F1F00A3D@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIENRUyBFVksgYm9h
cmQgaW5jb3JyZWN0bHkgaW5jbHVkZXMgdGhlIFNvTSBkZXZpY2UgdHJlZSBmb3IgdGhlIENRTSB2
YXJpYW50LCBsb2dpY2FsbHkgY291cGxpbmcgYSBtb2RlbS1sZXNzIHBsYXRmb3JtIHRvIGEgbW9k
ZW0tZXF1aXBwZWQgcGxhdGZvcm0uCi0tCgotLS0gUGF0Y2ggWzVdOiBbUEFUQ0ggdjcgNS81XSBh
cm02NDogZHRzOiBxY29tOiBBZGQgU2hpa3JhIEVWSyBib2FyZHMgLS0tCmNvbW1pdCA0ZmNhZjI3
ZTQ0OTcyZjJlZGQxNjc3ZDM4YzVlZGQzOTA2ZmQzZDFhCkF1dGhvcjogS29tYWwgQmFqYWogPGtv
bWFsLmJhamFqQG9zcy5xdWFsY29tbS5jb20+Cgphcm02NDogZHRzOiBxY29tOiBBZGQgU2hpa3Jh
IEVWSyBib2FyZHMKClRoaXMgY29tbWl0IGFkZHMgZGV2aWNlIHRyZWVzIGZvciB0aGUgU2hpa3Jh
IEVWSyBwbGF0Zm9ybSwgY292ZXJpbmcgdGhlCkNRMjM5ME0sIENRMjM5MFMsIGFuZCBJUTIzOTBT
IFNvTSB2YXJpYW50cy4gSXQgYWxzbyBpbnRyb2R1Y2VzIGEgY29tbW9uCmNhcnJpZXItYm9hcmQg
Y29uZmlndXJhdGlvbiBzaGFyZWQgYWNyb3NzIGFsbCB2YXJpYW50cy4KCj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zaGlrcmEtY3FzLWV2ay5kdHMgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3Fjb20vc2hpa3JhLWNxcy1ldmsuZHRzCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQK
PiBpbmRleCAwMDAwMDAwMDAwMDAwLi5iM2YxOWE2NGQ3YWVkCj4gLS0tIC9kZXYvbnVsbAo+ICsr
KyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zaGlrcmEtY3FzLWV2ay5kdHMKPiBAQCAtMCww
ICsxLDQwIEBACj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBCU0QtMy1DbGF1c2UKPiAr
LyoKPiArICogQ29weXJpZ2h0IChjKSBRdWFsY29tbSBUZWNobm9sb2dpZXMsIEluYy4gYW5kL29y
IGl0cyBzdWJzaWRpYXJpZXMuCj4gKyAqLwo+ICsKPiArL2R0cy12MS87Cj4gKwo+ICsjaW5jbHVk
ZSAic2hpa3JhLWNxbS1zb20uZHRzaSIKCltTZXZlcml0eTogTG93XQpJcyB0aGlzIHRoZSBpbnRl
bmRlZCBTb00gaW5jbHVkZSBmb3IgdGhlIENRUyBFVksgYm9hcmQ/CgpUaGlzIGZpbGUgYXBwZWFy
cyB0byBpbmNsdWRlIHRoZSBkZXZpY2UgdHJlZSBmb3IgdGhlIENRTSAod2l0aCBtb2RlbSkKdmFy
aWFudCBpbnN0ZWFkIG9mIHRoZSBDUVMgdmFyaWFudC4gV2hpbGUgaXQgbWlnaHQgY3VycmVudGx5
IG9ubHkgZGVmaW5lIHNoYXJlZApjb25maWd1cmF0aW9ucywgZnV0dXJlIENRTS1zcGVjaWZpYyBh
ZGRpdGlvbnMgY291bGQgaW5hZHZlcnRlbnRseSBwcm9wYWdhdGUgdG8KdGhlIENRUyBwbGF0Zm9y
bS4KClNob3VsZCB0aGlzIGluY2x1ZGUgYSBDUVMtc3BlY2lmaWMgb3Igc2hhcmVkIGJhc2UgLmR0
c2kgaW5zdGVhZD8KCj4gKyNpbmNsdWRlICJzaGlrcmEtZXZrLmR0c2kiCj4gKwo+ICsvIHsKPiAr
CW1vZGVsID0gIlF1YWxjb21tIFRlY2hub2xvZ2llcywgSW5jLiBTaGlrcmEgQ1FTIEVWSyI7Cgot
LSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIw
MjYwNzA4LXNoaWtyYS1kdC12Ny0wLTk3N2I2NWEzMDBjMUBvc3MucXVhbGNvbW0uY29tP3BhcnQ9
NQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
