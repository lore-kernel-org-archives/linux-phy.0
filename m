Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B817D60A2616
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 09:03:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=diQiatTL;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=oO/wsfao
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=9YiioNW3vjw2wPhWAWVg5QhcSBfdMHRZYM1r06o2H68=; b=diQiatTL9puebJnrhqxJ64qjgA
	JXq+o48QYJUcYLXHP5XZuoCyCOBHIGGZ1nWehWn5WiyovZpxyG/TCPO9ozTugY6i+A3TwpOmFslEc
	IbsfSx5fHGre+upd0BndOMmSq8QntTd1hJWxqEeWKQZwH9HQSNcNxa/E4G7SIOoB1h4vS1qzNE+Q/
	CEW5ADJzmUt8Fi+yOZg6K56MXn2i8pfMygtkxikxBpVmKVoJ2kMWrDirL7FuEH7GrVwcLJOQ/Ovqq
	IHZHoFSh3lRXGQhflGEV9oZylBGVr8U2GXmUjS4pTP50I9c6Ma6nKZswoNs/XbCeKb3X5tIpEMzVa
	8r/8EQLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQii-00000009HLE-20vP;
	Thu, 12 Nov 2026 09:03:48 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQig-00000009HKd-472y
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 09:03:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id AC3AF41FCD;
	Thu, 12 Nov 2026 09:03:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3C271F00A09;
	Thu, 12 Nov 2026 09:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794474226;
	bh=vXl5m73IC1Qj9DQkgemcl355Soy8bxLPr8ADXHnlPs0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=oO/wsfaoYIUlyNJL3r5/8ieWCg1w9lIqjxjxPPbrU4kRaY7gEweaXTBdQKwjVsmOt
	 4f2Trpu/65POQguNuQK178OyPiCKuuN2HEf/q0sMfyC9N6nLaKnD4IokeQGbDFvTus
	 lWePLSyaOS8F4M9YUmF7Wzx0J/K9XTCU4sZ6r9gwRfrpogppH5EtVuRJLoeQJCVpSD
	 6BfcN7eyc/KO/JUkr8eMYtTsG9GJ79j1TbeHPK5sMHYwZ4aIEvPrXx5Dc3Quj0ozPq
	 h67r49bx6RQhLOh7SHExZdGhnR4nhxcrWXCPY2B6T7dz1DBQAs+w8sU7UXbeOo57YV
	 LyiCAAWPdGBqA==
From: Vinod Koul <vkoul@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 =?utf-8?q?=C5=A0t=C4=9Bp=C3=A1n_Daleck=C3=BD?= <daleckystepan@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20261001151939.23658-1-daleckystepan@gmail.com>
References: <20261001151939.23658-1-daleckystepan@gmail.com>
Subject: Re: [PATCH] phy: marvell: a3700-comphy: Guard missing polarity
 argument
Message-Id: <179447422457.428158.9677225220979087471.b4-ty@kernel.org>
Date: Thu, 12 Nov 2026 14:33:44 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Mailer: b4 0.14.3
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Ck9uIFRodSwgMDEgT2N0IDIwMjYgMTc6MTk6MzggKzAyMDAsIMWgdMSbcMOhbiBEYWxlY2vDvSB3
cm90ZToKPiBUaGUgQXJtYWRhIDM3MDAgQ09NUEhZIGJpbmRpbmcgc3BlY2lmaWVzICNwaHktY2Vs
bHMgPSA8MT4sIHNvIFBIWQo+IHJlZmVyZW5jZXMgc3VwcGx5IG9ubHkgdGhlIHBvcnQgYXJndW1l
bnQuIEhvd2V2ZXIsCj4gbXZlYnVfYTM3MDBfY29tcGh5X3hsYXRlKCkgdW5jb25kaXRpb25hbGx5
IHJlYWRzIGFyZ3NbMV0gdG8gc2VsZWN0IFRYCj4gYW5kIFJYIHBvbGFyaXR5IGludmVyc2lvbi4g
VGhlIFBIWSBjb3JlIGRvZXMgbm90IGluaXRpYWxpemUgaXRzCj4gb2ZfcGhhbmRsZV9hcmdzIHN0
cnVjdHVyZSwgYW5kIHRoZSBwaGFuZGxlIHBhcnNlciBmaWxscyBvbmx5IHRoZQo+IHN1cHBsaWVk
IGNlbGxzLCBsZWF2aW5nIGFyZ3NbMV0gdW5pbml0aWFsaXplZC4KPiAKPiBbLi4uXQoKQXBwbGll
ZCwgdGhhbmtzIQoKWzEvMV0gcGh5OiBtYXJ2ZWxsOiBhMzcwMC1jb21waHk6IEd1YXJkIG1pc3Np
bmcgcG9sYXJpdHkgYXJndW1lbnQKICAgICAgY29tbWl0OiAyNDMxNDQ0MGE4MmJkMmJiNjYwNDlh
ZjRkZThmODk5MzlhMWZkNzdmCgpCZXN0IHJlZ2FyZHMsCi0tIAp+Vmlub2QKCgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
