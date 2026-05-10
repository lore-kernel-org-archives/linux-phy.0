Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 815E3CD37AF
	for <linux-phy@archiver.kernel.org>; Sun, 10 May 2026 12:23:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tbPiA7/Idf3nicGuI1h+FgoYEURnxpsax79K5K3fwWY=; b=DopnyK6fTQdzMM
	hKf5hGw8aW/Rp6V5Pmuw0JnhxHJkBFIp7ad27QNBNcJt8WrHjOyuil4hklvikSg9NkiXTu/zMldvH
	7YVKvLuS9SUtvno6p7xatl+ZN+RDXMW6ViGJikgCCFryBQNLqmt69KrYrm5JqTTzQblYRfNPsqiBx
	T6C9zDfxccc+gnvTfnOz6sKU3/yGWMQxAXwXljnfTpvN7s3zQ7N/uIZ47XkCcdiQmSTWgjwTJaO0c
	Z4S9LlQjQw+VUwpD76orqXBFWIPQX/CXosbgLaNb7fJJA9sSjjXvAO/zy7wWr9vmrp2MM9SLv5g30
	JcSfP2YhWN9wJMWenelg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3CF-0000000AhU3-1CoU;
	Sun, 10 May 2026 12:23:47 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3CE-0000000AhTm-12qv
	for linux-phy@lists.infradead.org;
	Sun, 10 May 2026 12:23:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 48E696001A;
	Sun, 10 May 2026 12:23:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78EE0C2BCB8;
	Sun, 10 May 2026 12:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778415824;
	bh=JRZ6kenYshiprUC0l6BGPDc6PZh14j8aJoryTH4ydpU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=kH+n+H0psskCoMcfZetGi+Lpr57BSDb7rOA85FdlgO53ldE5QzgGjX4c10m6dfE+0
	 4SDRHr1yUxawELAJPOqi7p25gKbMvyz7yUJsGb6aRJoxlSJi4YVqozYn/KMTscG454
	 vvZoMx4iC2NfpT2uHj9Y0qixmL8XAm+uirNJmda1jvax435jpGH7ILA0NGshAcgtwK
	 uqNJ17Jzh0lwtuP/bm/nlDCvFsiYR8QyTPqAhzsCQc/QVrXERQasNyM90Pp1P/LyNa
	 GmeArJCBmuZO6NFKd9q5CS4nuCxwyzC3TUo7Qe9eRO80Pwq6Mh3fywGNDAn9S616kG
	 ybJE0Zfn1/8SQ==
From: Vinod Koul <vkoul@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Igal Liberman <igall@marvell.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Gabor Juhos <j4g8y7@gmail.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260321-a3700-utmi-fix-usb2_phy_ctrl-access-v1-1-6005ff4b5058@gmail.com>
References: <20260321-a3700-utmi-fix-usb2_phy_ctrl-access-v1-1-6005ff4b5058@gmail.com>
Subject: Re: [PATCH phy-fixes] phy: marvell: mvebu-a3700-utmi: fix
 incorrect USB2_PHY_CTRL register access
Message-Id: <177841582201.420676.8151752263414556886.b4-ty@kernel.org>
Date: Sun, 10 May 2026 17:53:42 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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

Ck9uIFNhdCwgMjEgTWFyIDIwMjYgMTU6NDI6MzIgKzAxMDAsIEdhYm9yIEp1aG9zIHdyb3RlOgo+
IFRoZSBtdmVidV9hMzcwMF91dG1pX3BoeV9wb3dlcl9vZmYoKSBmdW5jdGlvbiB0cmllcyB0byBt
b2RpZnkgdGhlCj4gVVNCMl9QSFlfQ1RSTCByZWdpc3RlciBieSB1c2luZyB0aGUgSU8gYWRkcmVz
cyBvZiB0aGUgUEhZIElQIGJsb2NrIGFsb25nCj4gd2l0aCB0aGUgcmVhZGwvd3JpdGVsIElPIGFj
Y2Vzc29ycy4gSG93ZXZlciwgdGhlIHJlZ2lzdGVyIGV4aXN0IGluIHRoZQo+IFVTQiBtaXNjZWxs
YW5lb3VzIHJlZ2lzdGVyIHNwYWNlLCBhbmQgYXMgc3VjaCBpdCBtdXN0IGJlIGFjY2Vzc2VkIHZp
YQo+IHJlZ21hcCBsaWtlIGl0IGlzIGRvbmUgaW4gdGhlIG12ZWJ1X2EzNzAwX3V0bWlfcGh5X3Bv
d2VyX29uKCkgZnVuY3Rpb24uCj4gCj4gQ2hhbmdlIHRoZSBjb2RlIHRvIHVzZSByZWdtYXBfdXBk
YXRlX2JpdHMoKSBmb3IgbW9kw61meWluZyB0aGUgcmVnaXN0ZXIKPiB0byBmaXggdGhpcy4KPiAK
PiBbLi4uXQoKQXBwbGllZCwgdGhhbmtzIQoKWzEvMV0gcGh5OiBtYXJ2ZWxsOiBtdmVidS1hMzcw
MC11dG1pOiBmaXggaW5jb3JyZWN0IFVTQjJfUEhZX0NUUkwgcmVnaXN0ZXIgYWNjZXNzCiAgICAg
IGNvbW1pdDogOTFkZGY2ZjcyMjA4NDM4M2ZiMDViZTczMWMwMTA3ODE0YjA1NWMwYwoKQmVzdCBy
ZWdhcmRzLAotLSAKflZpbm9kCgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
