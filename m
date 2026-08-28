Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C609AC61DBD
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 13:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SP5cruH83FC2XRAma7hGGp3DCvHW9m6x/LLW09uqh1c=; b=Q077ErJS0jGNWN
	EJdfVcr+8DCjPfVmWycIr7MptBz1ldHFzPdWs85MXbOWICHl57WdbeIX6zweLNa4gnp3xnWCwBml1
	/Chbc+W41kn8KSzLCHOwR7syPy4JV1yy+hcmy/je13g1cscri4uV0oxvyaXqFRvVA8sq42f7tMToc
	Vh2C2oB3XoNWFQ3AGi1PEahtZjlkZwwlCU/57nUUhnf5HH40sYZVsGKPw+9VlnRO4EVj5viPBD9co
	x1tFwFmheEkCMF9kVTIvqCAMazfGqhL8tXui8QMWnscdvOLrJb8I6vbqFQQCw70lGtvFAZejSfsBY
	zQgbbw8nSzuTqDTrlnhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzx0U-00000005ugx-2AiH;
	Fri, 28 Aug 2026 13:52:34 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzx0U-00000005ugr-10Jk
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 13:52:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 90E35601FD;
	Fri, 28 Aug 2026 13:52:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A50281F000E9;
	Fri, 28 Aug 2026 13:52:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787925153;
	bh=v5B/fiOqedgCBxcCieptb7KGyc9EvkPc2fTNjN6aglI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=DpkrMTykW2r8Pzk9IvIE3hcAJtoRhIwOvD96MRnYZI1pTXm4WfTbyGmvO4D74VcVt
	 58gtXRg5zdJoh4b/oiUT3kaVb3W93Pn4lg9HLCkiXFgUIA7TRdSHta4nUXE6SeeU23
	 ZM6xkOa64XUL3Zrn39v1QkfuTqvOF6gzWQHpZE64XcEv0nZLOHCY+E/z/0xBq8ydOj
	 QnabfkHLd5h7nVmKpB3zcC/E7tPVjXxokrQjtUXBhD5T2/CQUK5pGCpJZ640qubwoE
	 3wDQV141E9M+D3gjvWKlXOtv3Ga1SEral+cn9hw4CSpKKsNv2qRN950Ya6sz6uiRMp
	 d/wBlFPEmxpcw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 07/15] drm/bridge: inno-hdmi: Add .mode_valid
 platform operation
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: robh@kernel.org, conor+dt@kernel.org, lee@kernel.org, mfd@lists.linux.dev, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org, olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org
In-Reply-To: <20260828-jh7110-clean-send-v2-7-331680c8b9d1@samsung.com>
References: <20260828-jh7110-clean-send-v2-0-331680c8b9d1@samsung.com>
 <CGME20260828134826eucas1p1ed3a0c4a3207dc01d1ccb33e45ae462e@eucas1p1.samsung.com>
 <20260828-jh7110-clean-send-v2-7-331680c8b9d1@samsung.com>
Date: Fri, 28 Aug 2026 13:52:32 +0000
Message-Id: <20260828135232.A50281F000E9@smtp.kernel.org>
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

PiBpbm5vX2hkbWlfYnJpZGdlX21vZGVfdmFsaWQoKSB2YWxpZGF0ZXMgdGhlIHBpeGVsIGNsb2Nr
IGFnYWluc3QKPiBoZG1pLT5yZWZjbGssIGJ1dCB0aGF0IGNsb2NrIGlzIG9wdGlvbmFsIGFuZCBp
cyBvbmx5IHByZXNlbnQgb24KPiBwbGF0Zm9ybXMgdGhhdCBkZXNjcmliZSBhICJyZWYiIGNsb2Nr
LiBQbGF0Zm9ybXMgd2hlcmUgdGhlIHBpeGVsIGNsb2NrCj4gaXMgcHJvZHVjZWQgYnkgYSBzZXBh
cmF0ZSBkZXZpY2UgLSBzdWNoIGFzIHRoZSBTdGFyRml2ZSBKSDcxMTAsIHdob3NlCj4gUEhZIGlz
IGJvdGggdGhlIGNsb2NrIGFuZCB0aGUgUEhZIHByb3ZpZGVyIC0gaGF2ZSBubyAicmVmIiBjbG9j
aywgc28KPiB0aGUgY2hlY2sgaXMgc2tpcHBlZCBlbnRpcmVseSBhbmQgZXZlcnkgbW9kZSBpcyBy
ZXBvcnRlZCBhcyB2YWxpZC4KPiAKPiBBIG1vZGUgdGhlIHBsYXRmb3JtIGNhbm5vdCBnZW5lcmF0
ZSBpcyB0aGVuIGFkdmVydGlzZWQgdG8gdXNlcnNwYWNlLgo+IFRoZSBzdWJzZXF1ZW50IG1vZGVz
ZXQgYXBwZWFycyB0byBzdWNjZWVkLCBzaW5jZSB0aGUgYXRvbWljIGVuYWJsZSBwYXRoCj4gY2Fu
bm90IGZhaWwsIGFuZCB0aGUgZGlzcGxheSBzaWxlbnRseSBzdGF5cyBibGFuay4KPiAKPiBBZGQg
YSAubW9kZV92YWxpZCBwbGF0Zm9ybSBvcGVyYXRpb24gc28gcGxhdGZvcm1zIGNhbiByZWplY3Qg
bW9kZXMgdGhleQo+IGFyZSB1bmFibGUgdG8gZHJpdmUuIFBsYXRmb3JtcyB0aGF0IGRvIG5vdCBp
bXBsZW1lbnQgaXQgYXJlIHVuYWZmZWN0ZWQuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWljaGFsIFdp
bGN6eW5za2kgPG0ud2lsY3p5bnNraUBzYW1zdW5nLmNvbT4KClNhc2hpa28gaGFzIHJldmlld2Vk
IHRoaXMgcGF0Y2ggYW5kIGZvdW5kIG5vIGlzc3Vlcy4gSXQgbG9va3MgZ3JlYXQhCgotLSAKU2Fz
aGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODI4
LWpoNzExMC1jbGVhbi1zZW5kLXYyLTAtMzMxNjgwYzhiOWQxQHNhbXN1bmcuY29tP3BhcnQ9NwoK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
