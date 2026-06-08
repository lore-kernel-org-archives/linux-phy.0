Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57FB7CD8CA6
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ikIq9XJJL2er7ZdGnd4+NDW5mNCfIXuIxW7NxY4o7T4=; b=ULwcsgTGlP4hk9
	H0HsBMOzpJR1SUEUzjdCfsZovL4GUgeJf7PM5oJ9X/crU2PRWMtxEBMp3IQPqfbfPlA4tKHcOuj3f
	YmTOXvgJGHdCndghSPG8X21LkTF26lcF9qSvkVa07iRB9F5cD2aM/pc1Gnd4i+SVoP0yuBB/7/htk
	pY7RgSYH6YJ3TP46lZp/XAxpVPG+QWrALLEDN12FtR5PcyRAPC2VVgzzcunPRDBxdcpoHn6tIW84M
	uWkC60RD/k+CTgWgS2tVl4LmXEB252KIaomkdMzci+riN3eErBGnRF/v3Jzmz/931KPz3ADUh9M66
	7+BQtMkebZveEHnkT/NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWUEm-00000002y11-3aGa;
	Mon, 08 Jun 2026 07:17:32 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWUEl-00000002y0v-1OAv
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 07:17:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1A939600AE;
	Mon,  8 Jun 2026 07:17:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F12911F00898;
	Mon,  8 Jun 2026 07:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780903049;
	bh=qkwwLnOCKE+A1gdvjXF1qeS2vXC+2jnKOFu+V0Uz5UQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=B10j8/WbgHUCyRSLpENIvzg2mrU4QUq8M1fSI0o9LYE2TdhiIfY3aeZ4y2hRogzct
	 lhQyjY+sF5IBWrAmZ7jI1xfdy34exUihb6KY3VTvXkyXcXgkdEDnfzMsYKzvmTY8ES
	 NhBOdWg2bcZ9AeghBBM+84wqEHbVNPUcElDwkd6mWnF3td5gqFSrPUVXxyb8xivCYo
	 InFemCH+fITIVSs+XfxyQ5CJecOGyIfWcZ/AIygxj49HCaNhfHaxj/ADAPYgg0bDQV
	 9RE56JlZzmA4BjaxQZ2jaslWIXkb8DZmmII9U3p1ZQrKyMG6tpsto5Xka7bSObfQkD
	 lhsvJVaeSMdwg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/5] drm/bridge: aux: Add
 drm_aux_bridge_register_from_node()
To: "Chaoyi Chen" <kernel@airkyi.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, dri-devel@lists.freedesktop.org, olteanv@gmail.com
In-Reply-To: <20260608070805.88-3-kernel@airkyi.com>
References: <20260608070805.88-3-kernel@airkyi.com>
Date: Mon, 08 Jun 2026 07:17:28 +0000
Message-Id: <20260608071728.F12911F00898@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIE1pc3NpbmcgYG9mX25v
ZGVfZ2V0KClgIG9uIGBucGAgY2F1c2VzIGFuIE9GIG5vZGUgcmVmZXJlbmNlIGNvdW50IHVuZGVy
ZmxvdyB3aGVuIHRoZSBkZXZpY2UgaXMgdW5yZWdpc3RlcmVkIG9yIGZhaWxzIGluaXRpYWxpemF0
aW9uLgotLQoKY29tbWl0IGNiMzZmOGNjMDQ0YThlNGRjZWNiZDNkZDk2N2E1ZWUzZDk0ZTYwYWEK
QXV0aG9yOiBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5Acm9jay1jaGlwcy5jb20+Cgpkcm0vYnJp
ZGdlOiBhdXg6IEFkZCBkcm1fYXV4X2JyaWRnZV9yZWdpc3Rlcl9mcm9tX25vZGUoKQoKVGhpcyBw
YXRjaCBpbnRyb2R1Y2VzIGRybV9hdXhfYnJpZGdlX3JlZ2lzdGVyX2Zyb21fbm9kZSgpIHRvIGFs
bG93CnJlZ2lzdGVyaW5nIGFuIGF1eCBicmlkZ2Ugd2l0aCBhIHNwZWNpZmljIGRldmljZSBub2Rl
IHBvaW50ZXIuIEl0IHJlZmFjdG9ycwpkcm1fYXV4X2JyaWRnZV9yZWdpc3RlcigpIHRvIGNhbGwg
dGhpcyBuZXcgZnVuY3Rpb24uCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdl
L2F1eC1icmlkZ2UuYyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYXV4LWJyaWRnZS5jCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hdXgtYnJpZGdlLmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vYnJpZGdlL2F1eC1icmlkZ2UuYwoKWyAuLi4gXQoKPiBAQCAtNjIsNyArNjMsMTAgQEAg
aW50IGRybV9hdXhfYnJpZGdlX3JlZ2lzdGVyKHN0cnVjdCBkZXZpY2UgKnBhcmVudCkKPiAgCWFk
ZXYtPmRldi5wYXJlbnQgPSBwYXJlbnQ7Cj4gIAlhZGV2LT5kZXYucmVsZWFzZSA9IGRybV9hdXhf
YnJpZGdlX3JlbGVhc2U7Cj4gIAo+IC0JZGV2aWNlX3NldF9vZl9ub2RlX2Zyb21fZGV2KCZhZGV2
LT5kZXYsIHBhcmVudCk7Cj4gKwlpZiAobnApCj4gKwkJZGV2aWNlX3NldF9ub2RlKCZhZGV2LT5k
ZXYsIG9mX2Z3bm9kZV9oYW5kbGUobnApKTsKPiArCWVsc2UKPiArCQlkZXZpY2Vfc2V0X29mX25v
ZGVfZnJvbV9kZXYoJmFkZXYtPmRldiwgcGFyZW50KTsKPiAgCj4gIAlyZXQgPSBhdXhpbGlhcnlf
ZGV2aWNlX2luaXQoYWRldik7Cj4gIAlpZiAocmV0KSB7Cj4gIAkJb2Zfbm9kZV9wdXQoYWRldi0+
ZGV2Lm9mX25vZGUpOwoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRoaXMgY29kZSBpbnRyb2R1Y2Ug
YW4gT0Ygbm9kZSByZWZjb3VudCB1bmRlcmZsb3cgd2hlbiBucCBpcyBwcm92aWRlZD8KCldoZW4g
bnAgaXMgbm90IE5VTEwsIGRldmljZV9zZXRfbm9kZSgpIGlzIGNhbGxlZCwgd2hpY2ggc2ltcGx5
IGFzc2lnbnMgdGhlCnBvaW50ZXIgd2l0aG91dCBhY3F1aXJpbmcgYSByZWZlcmVuY2UuIEhvd2V2
ZXIsIHRoZSBlbHNlIGJyYW5jaCBjYWxscwpkZXZpY2Vfc2V0X29mX25vZGVfZnJvbV9kZXYoKSwg
d2hpY2ggZXhwbGljaXRseSBjYWxscyBvZl9ub2RlX2dldCgpLgoKSWYgYXV4aWxpYXJ5X2Rldmlj
ZV9pbml0KCkgZmFpbHMsIHRoZSBlcnJvciBwYXRoIHNob3duIGFib3ZlIHVuY29uZGl0aW9uYWxs
eQpjYWxscyBvZl9ub2RlX3B1dChhZGV2LT5kZXYub2Zfbm9kZSkuCgpTaW1pbGFybHksIHdoZW4g
dGhlIGRldmljZSBpcyBkZXN0cm95ZWQsIGRybV9hdXhfYnJpZGdlX3JlbGVhc2UoKSBwZXJmb3Jt
czoKCmRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYXV4LWJyaWRnZS5jOmRybV9hdXhfYnJpZGdlX3Jl
bGVhc2UoKSB7CglzdHJ1Y3QgYXV4aWxpYXJ5X2RldmljZSAqYWRldiA9IHRvX2F1eGlsaWFyeV9k
ZXYoZGV2KTsKCglvZl9ub2RlX3B1dChkZXYtPm9mX25vZGUpOwoJLi4uCn0KCldpbGwgdGhpcyBs
ZWFkIHRvIGFuIHVuYmFsYW5jZWQgb2Zfbm9kZV9wdXQoKSBkcm9wcGluZyBhIHJlZmVyZW5jZSB0
aGF0IHdhcwpuZXZlciBhY3F1aXJlZCB3aGVuIGEgc3BlY2lmaWMgZGV2aWNlIG5vZGUgcG9pbnRl
ciBpcyBwYXNzZWQ/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRl
di8jL3BhdGNoc2V0LzIwMjYwNjA4MDcwODA1Ljg4LTEta2VybmVsQGFpcmt5aS5jb20/cGFydD0y
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
