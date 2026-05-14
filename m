Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E25BCD4851
	for <linux-phy@archiver.kernel.org>; Thu, 14 May 2026 10:23:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mB9ANcTBa1ulsqq0NPDEvkekqDaOwmRqIvhx0WhTbT4=; b=1hzOL6o7W7trXP
	25xa+tw6ZLeCNrjL3VD6RmNzx0VkfjxqOOr1kJKNJJtQXnRjVmNuHkDA0fKM2XtPQL3IlaJKhkroS
	TW9/Aj+R8k/r4lt5bHtsZ4OFhJrj1HxAIUJyLw/VTboeKjTvbF/+/EX+zUUfNo1XfCZAlq9YFX0O3
	HHXeucR/iatdkofYw/tTqt7P4Fy9lKlWuyddORLvU1hz0witTOsmc+h3tj0bmLqe/cgFZgEr7hPbZ
	7h8cyk9PigowwFWc7xztXD2thnyVWl5IWSziaQ9aIa7SH1nJI7SuoCyrh+EtvBazLKzU4OL95YAaV
	6ztld1PmWBiO3ASkYFBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNTDx-00000005Bpm-0JJv;
	Thu, 14 May 2026 10:23:25 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNTDu-00000005BpF-3js4
	for linux-phy@lists.infradead.org;
	Thu, 14 May 2026 10:23:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 76EFE43613;
	Thu, 14 May 2026 10:23:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2500C2BCB3;
	Thu, 14 May 2026 10:23:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778754202;
	bh=OfK+Z34Oc2gEasISvoEPqEYB/RwG/UHed8tXw3xlFEY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=jw4jFN957gApU68aw+UTicZYz/0hqtCw1Jq9j9iK1paVvfbrqrG3MvdL2TaLYyamX
	 JqETcOzn/Yatz/NjfZ8qj/p5zf4gdzpxZYulAbF/Q5+iIhfcOIKj7nXYdCnl3+R2BN
	 xDbRVKzEpCOBldKOWwNQsXygf1GeR+e9HRUbGM09CaF86sDFLE/yZTwvhVRtN4U0vw
	 CaGt73zGXsJe/K62xdEUCl4mejgSErXxwaFls/MiJ2/JcJ4qjlegtrcFhCIRk3Y0KW
	 OPK6i+K9uEFVf0+PKl0TBI+53X0p476J++ZEG9GMMDdMWreQprkfAiXCEHfr1y4ECJ
	 nImDglDRPwodA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 3/5] phy: qcom: apq8064-sata: extract UNI PLL
 register defines
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, olteanv@gmail.com, neil.armstrong@linaro.org, vkoul@kernel.org
In-Reply-To: <20260513-fd-hdmi-phy-v9-3-ca98c72f1f9f@oss.qualcomm.com>
References: <20260513-fd-hdmi-phy-v9-3-ca98c72f1f9f@oss.qualcomm.com>
Date: Thu, 14 May 2026 10:23:21 +0000
Message-Id: <20260514102321.C2500C2BCB3@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260514_032322_951437_F09F4FBA 
X-CRM114-Status: GOOD (  11.23  )
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIG5ld2x5IGFkZGVk
IGhlYWRlciBmaWxlIGBwaHktcWNvbS11bmlwaHkuaGAgdXNlcyB0aGUgYEJJVCgpYCBtYWNybyBi
dXQgZG9lcyBub3QgaW5jbHVkZSBgPGxpbnV4L2JpdHMuaD5gLgotLQoKY29tbWl0IGE1ZGE1ODA3
MGE0NDI4ZTI3YmE1MjFlMmVkNTJkNmMxZDBkZTk3YjUKQXV0aG9yOiBEbWl0cnkgQmFyeXNoa292
IDxsdW1hZ0BrZXJuZWwub3JnPgoKcGh5OiBxY29tOiBhcHE4MDY0LXNhdGE6IGV4dHJhY3QgVU5J
IFBMTCByZWdpc3RlciBkZWZpbmVzCgpUaGUgInVuaSIgUExMIGlzIHNoYXJlZCBiZXR3ZWVuIHNl
dmVyYWwgUEhZUy4gRXh0cmFjdCB0aGUgY29tbW9uIHJlZ2lzdGVyCm5hbWVzIHRvIGEgc2VwYXJh
dGUgaGVhZGVyIHdpdGggdGhlIGhvcGUgb2YgbGF0ZXIgaGF2aW5nIHRoZSBjb21tb24gY29kZQp0
byBoYW5kbGUgUExMIGluIHRob3NlIFBIWXMuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9x
dWFsY29tbS9waHktcWNvbS11bmlwaHkuaCBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29t
LXVuaXBoeS5oCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi41
ZjE4Zjk1OTNjZGE3Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21t
L3BoeS1xY29tLXVuaXBoeS5oCj4gQEAgLTAsMCArMSwzMyBAQAo+ICsvKiBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogR1BMLTIuMC1vbmx5ICovCj4gKy8qCj4gKyAqIENvcHlyaWdodCAoYykgMjAx
NCwgVGhlIExpbnV4IEZvdW5kYXRpb24uIEFsbCByaWdodHMgcmVzZXJ2ZWQuCj4gKyAqLwo+ICsK
PiArI2lmbmRlZiBQSFlfUUNPTV9VTklQSFlfSAo+ICsjZGVmaW5lIFBIWV9RQ09NX1VOSVBIWV9I
CgpbIC4uLiBdCgo+ICsjZGVmaW5lIFVOSVBIWV9QTExfU1RBVFVTCQkweDBjMAo+ICsjZGVmaW5l
IFVOSVBIWV9QTExfTE9DSwkJCQlCSVQoMCkKClNpbmNlIHRoaXMgaGVhZGVyIGZpbGUgdXNlcyB0
aGUgQklUKCkgbWFjcm8sIHNob3VsZCBpdCBpbmNsdWRlCjxsaW51eC9iaXRzLmg+IHRvIGVuc3Vy
ZSBpdCBpcyBzZWxmLWNvbnRhaW5lZD8KClJlbHlpbmcgb24gaW1wbGljaXQgaW5jbHVzaW9ucyBm
cm9tIHRoZSBDIGZpbGVzIHRoYXQgaW5jbHVkZSB0aGlzIGhlYWRlcgptaWdodCBjYXVzZSBjb21w
aWxhdGlvbiBlcnJvcnMgaW4gdGhlIGZ1dHVyZSBpZiB0aG9zZSBmaWxlcyBkbyBub3QgYWxyZWFk
eQpoYXZlIHRoZSBtYWNybyBkZWZpbmVkIGluIHRoZWlyIGluY2x1ZGUgY2hhaW4uCgo+ICsKPiAr
I2VuZGlmCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3Bh
dGNoc2V0LzIwMjYwNTEzLWZkLWhkbWktcGh5LXY5LTAtY2E5OGM3MmYxZjlmQG9zcy5xdWFsY29t
bS5jb20/cGFydD0zCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
