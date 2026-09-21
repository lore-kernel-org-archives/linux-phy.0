Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0C2AC982DE
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 05:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sdxv24Jy8zbSE5ZgjzqDKn41mDc/z2LhM7b8TcGJX9Q=; b=fWk8eJuWyPCb+a
	aVqxGfyH4r71bFxYWere69ymyvhcF9k29HM4+z+qz58PWRi0heF1Nlnko/nHvXmKDC9Vm/V7S3fDw
	LHUYZp7ARzw1jaUw54KzgaoJHI0h+wkiS27otX953Whk18vhch4vk+e/nDVOi6lyDfTHnpfGb0h05
	jyMmmZdz6hUjDkJ/VmPOLZk6HWY8j5roYNEoU41g00s93m13XvT7L/ri7nYRv7LFxd2RR3c5GrSqh
	yxmp3U1sGyceL05LG561P0XQxt8UUeqQLVetuihz+sKUcR/xmASLo7FDG6VkvTbXTAlKTe4QHVS64
	gtzEqhebI4M1/leM8UAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8WnH-00000000xK3-2UeN;
	Mon, 21 Sep 2026 05:42:23 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8WnG-00000000xJk-2bWi
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 05:42:22 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1109D6020F;
	Mon, 21 Sep 2026 05:42:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FB5D1F000FF;
	Mon, 21 Sep 2026 05:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789969341;
	bh=ifkfFmu2QBf+jZP1+mBp3c6faJPPhcNCLDks/R2Jucc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LhfYU5ZwIYa1GdmZFDrhhbpcLlNU8vPS2+xQK5V4bZ1ZiwBwTtEis7cMNHR8ph9Yi
	 N3Of6+4igEaGkTeTjZKnOtGh3RNbY9ddib+5RPGSUH4wiguw6kot6d9Bl+NJhfYTvc
	 IyQi4o+hQA62DwNBdLbFWE8q7aHP4vCoosIKv5l7PntC8G7DMGMvauz0C00YtX9FBT
	 Rmb8XOVUxuAsv75Sqg7oA3Hs+flM2+qQZtR6kxomOzSKEfGFr50JjILMYZZqCk8f6Y
	 k1N1UU/KYabDjWI8DMiAHzt5OA+a386W6wGXCMGKa09juMU36EH4TOhnsI9Asp7aKY
	 RUKQfEWLD8o5g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/6] dt-bindings: pci: qcom: add Nord PCIe controller
 compatible
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: conor+dt@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, vkoul@kernel.org, robh@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, linux-pci@vger.kernel.org
In-Reply-To: <20260921-nord-v4-2-ed05c6e09240@oss.qualcomm.com>
References: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
 <20260921-nord-v4-2-ed05c6e09240@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 05:42:20 +0000
Message-Id: <20260921054221.3FB5D1F000FF@smtp.kernel.org>
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
b21tLmNvbT4KPiBSZXZpZXdlZC1ieTogU2hhd24gR3VvIDxzaGVuZ2NoYW8uZ3VvQG9zcy5xdWFs
Y29tbS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogS3Jpc2huYSBDaGFpdGFueWEgQ2h1bmRydSA8a3Jp
c2huYS5jaHVuZHJ1QG9zcy5xdWFsY29tbS5jb20+CgpTYXNoaWtvIGhhcyByZXZpZXdlZCB0aGlz
IHBhdGNoIGFuZCBmb3VuZCBubyBpc3N1ZXMuIEl0IGxvb2tzIGdyZWF0IQoKLS0gClNhc2hpa28g
QUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkyMS1ub3Jk
LXY0LTAtZWQwNWM2ZTA5MjQwQG9zcy5xdWFsY29tbS5jb20/cGFydD0yCgoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
