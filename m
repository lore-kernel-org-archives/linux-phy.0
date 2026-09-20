Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D261C982E6
	for <linux-phy@archiver.kernel.org>; Sun, 20 Sep 2026 06:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i/0V1XKaJkxn6plScZtZsoNxEIB4cpcHjEfIQqChrbU=; b=S9ijQw19mooh/5
	5llK/EqvaeXNLut1piATs9bKfHc1ZaopUlYR5UcoVafzDXfnyHO9H6BFFS4OeQ2bsh9cM1Lm/IccP
	wS8CPpDvcS29rKMGPUJxJBern0Lmvop84TBGTdFDlDS3YGMobsFsOhY8eCJPCXJ4fnOeecmF3i5lw
	jZ+xjrrBUzHWDZEd29N5WXz7zBlx2LLExbmdf5dzqZrknv6poEx5z25bL81ULntRuPrijCnf8CQVG
	lSyyjkqG2XuETr6Sz4yKOG2DYkFyptcCGPAEF3lbhCjQMs+sb/4pvLky0ru0iXaU3s92Tfn9bGgUs
	BvYrYWB+/SIHBW1k4P/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8BS3-0000000H0UR-3tZL;
	Sun, 20 Sep 2026 06:55:03 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8BS2-0000000H0Tq-10xV
	for linux-phy@lists.infradead.org;
	Sun, 20 Sep 2026 06:55:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 05AFE41223;
	Sun, 20 Sep 2026 06:55:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 447851F0089A;
	Sun, 20 Sep 2026 06:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789887301;
	bh=6JZYwxuSQcwk3MClJGMHPbrLkG1DrLiadFNbDUxdabQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kMga302FTM4GU/rTlncThiwbrrpj27bTCSFHR2edXyN780mUmv4S0r+Z3JbF9FkC7
	 p+ETMeP5OuQWKbMA1qisKFRd96h4fInjzCRzXFfKDcya9BbgRU5JIXCBuTPDOPYkON
	 JEhYUq5XOEqXWfJBNyu4SS8dGXixHK1h5bUzY6qoLbiea/gzV3kGS5i+Z6BASqpy91
	 Y2QVh0IWPCKWeHN6HrNUH+4fEpwwua0aBrNEB0shx0BZO5uFCY5fj7+RopEUbsjnB3
	 ohSVAxFfW147VMpHAtQzW88sug+buTKXlQEzsXr2oEhUfzhPTkmW/uC2tEwaS1lWF6
	 yq1YY4W7xiy6g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v3 10/12] arm64: dts: s32g: Add SerDes controller
 nodes
To: =?utf-8?b?SmFuIFBldHJvdXMgKE9TUyk=?= <jan.petrous@oss.nxp.com>
Cc: vkoul@kernel.org, wsa+renesas@sang-engineering.com, olteanv@gmail.com, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-pci@vger.kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260919-s32g_serdes-v3-10-9d68868c1e89@oss.nxp.com>
References: <20260919-s32g_serdes-v3-0-9d68868c1e89@oss.nxp.com>
 <20260919-s32g_serdes-v3-10-9d68868c1e89@oss.nxp.com>
Date: Sun, 20 Sep 2026 06:55:00 +0000
Message-Id: <20260920065501.447851F0089A@smtp.kernel.org>
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

PiBGcm9tOiAiSmFuIFBldHJvdXMgKE9TUykiIDxqYW4ucGV0cm91c0Bvc3MubnhwLmNvbT4KPiAK
PiBBZGQgdGhlIFNlckRlcy9QQ0llIGNvbWJvLVBIWSBjb250cm9sbGVyIG5vZGVzIGZvciBTMzJH
MiBhbmQgUzMyRzMgaW4KPiB0aGUgZGlzYWJsZWQgc3RhdGUuIEVhY2ggU29DIGludGVncmF0ZXMg
dHdvIFNlckRlcyBpbnN0YW5jZXMgKFNlckRlc18wCj4gYW5kIFNlckRlc18xKSB3aXRoIGlkZW50
aWNhbCByZWdpc3RlciBsYXlvdXQ7IGV2ZXJ5IGluc3RhbmNlIGV4cG9zZXMKPiB0aGUgUENJZSBQ
SFkgYW5kIHRoZSB0d28gWFBDUyBpbnN0YW5jZXMgdXNlZCBmb3IgU0dNSUkuIEJvYXJkIGRldmlj
ZQo+IHRyZWVzIGVuYWJsZSB0aGUgcmVxdWlyZWQgaW5zdGFuY2UgYW5kIGFkZCB0aGUgbGFuZSBQ
SFkgY2hpbGQgbm9kZXMKPiBtYXRjaGluZyB0aGUgd2FudGVkIFNlckRlcyBzdWJzeXN0ZW0gbW9k
ZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKYW4gUGV0cm91cyAoT1NTKSA8amFuLnBldHJvdXNAb3Nz
Lm54cC5jb20+CgpTYXNoaWtvIGhhcyByZXZpZXdlZCB0aGlzIHBhdGNoIGFuZCBmb3VuZCBubyBp
c3N1ZXMuIEl0IGxvb2tzIGdyZWF0IQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8v
c2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkxOS1zMzJnX3NlcmRlcy12My0wLTlkNjg4Njhj
MWU4OUBvc3MubnhwLmNvbT9wYXJ0PTEwCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
